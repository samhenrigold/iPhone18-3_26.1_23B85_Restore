const void *ANECCreateCompilerPlistDictionaryFromANECIR(char *a1, CFArrayRef *a2)
{
  v3 = a1;
  v4 = a1 + 23;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  DictFromPlist = ZinCreateDictFromPlist(a1);
  if (!DictFromPlist)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANECCreateCompilerPlistDictionaryFromANECIR(v4, v3);
    }

    goto LABEL_8;
  }

  v6 = DictFromPlist;
  v7 = CFGetTypeID(DictFromPlist);
  if (v7 != CFDictionaryGetTypeID())
  {
    CFRelease(v6);
LABEL_8:
    ZinIrPlistCompilationStatus::SetError(a2, @"InvalidNetworkSourceFileName");
    return 0;
  }

  return v6;
}

void ANECCreatePrepareInfoFromANECIR(uint64_t *__return_ptr a1@<X8>, const ZinIrCompilerParameters *a2@<X0>, CFArrayRef *a3@<X1>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v6);
  v7 = ANECCreateCompilerPlistDictionaryFromANECIR(&__p, a3);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (CFArrayGetCount(a3[4]) >= 1)
  {
    if (v7)
    {
      CFRelease(v7);
    }

    a1[8] = 0;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    return;
  }

  v41 = 0;
  ProcedureCount = ZinAnePlistGetProcedureCount(v7, &v41);
  v35 = 0uLL;
  v36 = 0;
  ZinIdentStrings::ZinIdentStrings(&v37, v7, a2);
  if (ProcedureCount)
  {
    memset(v14, 0, sizeof(v14));
    if (v41)
    {
      LODWORD(v9) = 0;
      while (1)
      {
        v17 = 0;
        v18 = 0;
        __p = 0;
        v16 = &v17;
        v20 = 0;
        v21 = 0;
        v23 = 0;
        v24 = 0;
        v19 = &v20;
        v22 = &v23;
        v25 = 0;
        v26 = 0;
        v28 = 0;
        v29 = 0;
        v31 = 0;
        v32 = 0;
        v27 = &v28;
        v30 = &v31;
        v33 = 0;
        v34 = 0;
        if ((ANECCreateProcedureInfoForMultiProcedureNetwork(v7, v9, &__p, a3) & 1) == 0)
        {
          break;
        }

        v10 = *(&v35 + 1);
        if (*(&v35 + 1) >= v36)
        {
          v11 = std::vector<ANECProcedureInfo>::__emplace_back_slow_path<ANECProcedureInfo>(&v35, &__p);
        }

        else
        {
          ANECProcedureInfo::ANECProcedureInfo(*(&v35 + 1), &__p);
          v11 = v10 + 168;
        }

        *(&v35 + 1) = v11;
        ANECProcedureInfo::~ANECProcedureInfo(&__p);
        v9 = (v9 + 1);
        if (v41 <= v9)
        {
          goto LABEL_18;
        }
      }

      if (v7)
      {
        CFRelease(v7);
      }

      a1[8] = 0;
      *(a1 + 2) = 0u;
      *(a1 + 3) = 0u;
      *a1 = 0u;
      *(a1 + 1) = 0u;
      ANECProcedureInfo::~ANECProcedureInfo(&__p);
      __p = v14;
      std::vector<ANECProcedureInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
      goto LABEL_31;
    }

LABEL_18:
    __p = v14;
    std::vector<ANECProcedureInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    v17 = 0;
    v18 = 0;
    __p = 0;
    v16 = &v17;
    v19 = &v20;
    v20 = 0;
    v23 = 0;
    v24 = 0;
    v21 = 0;
    v22 = &v23;
    v25 = 0;
    v26 = 0;
    v27 = &v28;
    v28 = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = &v31;
    v33 = 0;
    v34 = 0;
    if ((ANECCreateProcedureInfoForSingleProcedureNetwork(v7, &__p, a3, 0) & 1) == 0)
    {
      if (v7)
      {
        CFRelease(v7);
      }

      a1[8] = 0;
      *(a1 + 2) = 0u;
      *(a1 + 3) = 0u;
      *a1 = 0u;
      *(a1 + 1) = 0u;
      ANECProcedureInfo::~ANECProcedureInfo(&__p);
      goto LABEL_31;
    }

    v12 = *(&v35 + 1);
    if (*(&v35 + 1) >= v36)
    {
      v13 = std::vector<ANECProcedureInfo>::__emplace_back_slow_path<ANECProcedureInfo>(&v35, &__p);
    }

    else
    {
      ANECProcedureInfo::ANECProcedureInfo(*(&v35 + 1), &__p);
      v13 = v12 + 168;
    }

    *(&v35 + 1) = v13;
    ANECProcedureInfo::~ANECProcedureInfo(&__p);
  }

  CFRelease(v7);
  *a1 = v35;
  a1[2] = v36;
  v35 = 0uLL;
  *(a1 + 3) = v37;
  a1[5] = v38;
  v37 = 0uLL;
  v38 = 0;
  *(a1 + 3) = v39;
  a1[8] = v40;
  v36 = 0;
  v39 = 0uLL;
  v40 = 0;
LABEL_31:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  __p = &v35;
  std::vector<ANECProcedureInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1A69DA69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  ANECProcedureInfo::~ANECProcedureInfo(&__p);
  __p = &a9;
  std::vector<ANECProcedureInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  ANECPrepareInfo::~ANECPrepareInfo((v17 - 176));
  _Unwind_Resume(a1);
}

uint64_t ANECCreateFileBacking(uint64_t a1, uint64_t (***a2)(void, std::string *), CFArrayRef *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&__p, 0, sizeof(__p));
  v5 = *(a1 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 8);
  }

  if (v5)
  {
    ZinDirectoryName(a1, __s);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __s[0];
    if ((SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (!*(&__s[0].__r_.__value_.__s + 23))
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (__p.__r_.__value_.__l.__size_)
    {
LABEL_14:
      std::string::append(&__p, "/", 1uLL);
    }
  }

  else
  {
    bzero(__s, 0x400uLL);
    if (!confstr(65537, __s, 0x400uLL))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = *__error();
        v9 = __error();
        v10 = strerror(*v9);
        ANECCreateFileBacking(v10, &buf, v8);
      }

      goto LABEL_18;
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, __s);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = buf;
  }

LABEL_15:
  if ((**a2)(a2, &__p))
  {
    details::ZinIrMappedDataBase_Impl::SetBackingFile(a2);
    details::ZinIrMappedDataBase_Impl::SetBackingFile(a2);
    details::ZinIrMappedDataBase_Impl::SetBackingFile(a2);
    details::ZinIrMappedDataBase_Impl::SetBackingFile(a2);
    details::ZinIrMappedDataBase_Impl::SetBackingFile(a2);
    details::ZinIrMappedDataBase_Impl::SetBackingFile(a2);
    details::ZinIrMappedDataBase_Impl::SetBackingFile(a2);
    v6 = 0;
    goto LABEL_19;
  }

  ZinIrPlistCompilationStatus::SetError(a3, @"InvalidMachOFileName");
LABEL_18:
  v6 = 1;
LABEL_19:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

__n128 ANECGetAdditionalWeightFileName@<Q0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v13.__pn_, a1);
  std::__fs::filesystem::__status(&v13, 0);
  v4 = 0;
  if (v12.__pn_.__r_.__value_.__s.__data_[0])
  {
    if (v12.__pn_.__r_.__value_.__s.__data_[0] != 255)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v12.__pn_, a1);
      std::__fs::filesystem::__status(&v12, 0);
      v4 = v14 == 2;
      if (SHIBYTE(v12.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__pn_.__r_.__value_.__l.__data_);
      }
    }
  }

  if (SHIBYTE(v13.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__pn_.__r_.__value_.__l.__data_);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
LABEL_7:
    if (*(a1 + 23) >= 0)
    {
      v5 = *(a1 + 23);
    }

    else
    {
      v5 = *(a1 + 8);
    }

    std::string::basic_string[abi:ne200100](a2, v5 + 23);
    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    if (v5)
    {
      if (*(a1 + 23) >= 0)
      {
        v6 = a1;
      }

      else
      {
        v6 = *a1;
      }

      memmove(a2, v6, v5);
    }

    v7 = &a2[v5];
    v8 = "/additional_weights.bin";
    goto LABEL_30;
  }

  if (*(a1 + 23) >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  std::string::basic_string[abi:ne200100](a2, v9 + 23);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (v9)
  {
    if (*(a1 + 23) >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    memmove(a2, v10, v9);
  }

  v7 = &a2[v9];
  v8 = ".additional_weights.bin";
LABEL_30:
  result = *v8;
  *v7 = *v8;
  *(v7 + 15) = *(v8 + 15);
  v7[23] = 0;
  return result;
}

void sub_1A69DAAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

float ANECDescToUnitInfo<ANECNeuronLayerDesc,ZinIrNeuronUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 6;
  *(a4 + 68) = a5;
  if (!CFStringToZinIrNeuronType(*a1, (a4 + 80)))
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    if (ZinGetString(*a1, v10))
    {
      v9 = v10;
      if (v11 < 0)
      {
        v9 = v10[0];
      }

      ZinAssertImpl("Could not convert neuron type %s to ZinIrNeuronType.", v9);
    }

    ZinAssertImpl("Could not retrieve neuron type from neuron unit");
  }

  ZinF16CheckInBounds(*(a1 + 8));
  ZinF16CheckInBounds(*(a1 + 12));
  ZinF16CheckInBounds(*(a1 + 16));
  ZinF16CheckInBounds(*(a1 + 20));
  ZinF16CheckInBounds(*(a1 + 24));
  ZinF16CheckInBounds(*(a1 + 28));
  ZinF16CheckInBounds(*(a1 + 32));
  *&v7 = vrev64q_s32(*(a1 + 8)).u64[0];
  *(&v7 + 1) = *(a1 + 16);
  *(a4 + 84) = v7;
  *(a4 + 100) = *(a1 + 24);
  result = *(a1 + 32);
  *(a4 + 108) = result;
  return result;
}

void sub_1A69DAC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t ANECDescToUnitInfo<ANECSpaceToChannelLayerDesc,ZinIrSpaceToChannelUnitInfo>(int64x2_t *a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __int32 a5)
{
  a4[4].i32[0] = 36;
  a4[8].i32[1] = a5;
  a4[11].i32[0] = a1[1].i64[0];
  result = vmovn_s64(*a1);
  a4[10] = result;
  return result;
}

float ANECDescToUnitInfo<ANECPoolLayerDesc,ZinIrPoolUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 2;
  *(a4 + 68) = a5;
  if (!CFStringToZinIrPoolingType(*a1, (a4 + 80)))
  {
    v11 = 0uLL;
    v12 = 0;
    if (ZinGetString(*a1, &v11))
    {
      v9 = &v11;
      if (v12 < 0)
      {
        v9 = v11.n128_u64[0];
      }

      ZinAssertImpl("Could not convert pooling type %s to ZinIrPoolingType.", v9);
    }

    ZinAssertImpl("Could not retrieve pooling type from pool unit");
  }

  if ((CFStringToZinIrPaddingMode(*(a1 + 8), (a4 + 152)) & 1) == 0)
  {
    v11 = 0uLL;
    v12 = 0;
    if (ZinGetString(*(a1 + 8), &v11))
    {
      v10 = &v11;
      if (v12 < 0)
      {
        v10 = v11.n128_u64[0];
      }

      ZinAssertImpl("Could not convert padding mode %s to ZinIrPaddingMode.", v10);
    }

    ZinAssertImpl("Could not retrieve padding mode from pool unit");
  }

  if (*(a4 + 80) == 2)
  {
    *(a4 + 152) = 2;
  }

  ANECKernelSizeToZinIrKernelSize((a1 + 16), &v11);
  *(a4 + 88) = v11;
  *(a4 + 104) = v12;
  *(a4 + 112) = ANECStepToZinIrDims3D(a1 + 40);
  *(a4 + 120) = v7;
  ANECPaddingToZinIrPadding(a1 + 52, &v11);
  *(a4 + 124) = v11;
  *(a4 + 140) = v12;
  *(a4 + 148) = *(a1 + 76);
  *(a4 + 72) = *(a1 + 80);
  result = *(a1 + 88);
  *(a4 + 156) = result;
  return result;
}

void sub_1A69DADB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *ANECDescToUnitInfo<ANECInstanceNormLayerDesc,ZinIrInstanceNormUnitInfo>(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 25;
  *(a4 + 68) = a5;
  *(a4 + 120) = *(result + 12);
  if (*result)
  {
    v6 = result;
    v7 = 1;
    do
    {
      v14 = 0;
      if ((CFStringToZinIrDimension(v6[v7], &v14) & 1) == 0)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        if (ZinGetString(v6[v7], &v11))
        {
          v10 = &v11;
          if (v13 < 0)
          {
            v10 = v11;
          }

          ZinAssertImpl("Error: Invalid dimension:%s setting in the instance norm layer descriptor", v10);
        }

        ZinAssertImpl("Error: cannot extract the instance_norm dimension string from the InstanceNorm Layer Descriptor");
      }

      if (std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>((a4 + 80), &v14))
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        if (ZinGetString(v6[v7], &v11))
        {
          v9 = &v11;
          if (v13 < 0)
          {
            v9 = v11;
          }

          ZinAssertImpl("Error: duplicated dimension setting, %s, in InstanceNorm", v9);
        }

        ZinAssertImpl("Error: cannot extract the instance_norm dimension string from the InstanceNorm Layer Descriptor");
      }

      result = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension const&>((a4 + 80), &v14, &v14);
    }

    while (*v6 > v7++);
  }

  return result;
}

void sub_1A69DAF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t ANECDescToUnitInfo<ANECChannelToSpaceLayerDesc,ZinIrChannelToSpaceUnitInfo>(int64x2_t *a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __int32 a5)
{
  a4[4].i32[0] = 37;
  a4[8].i32[1] = a5;
  a4[11].i32[0] = a1[1].i64[0];
  result = vmovn_s64(*a1);
  a4[10] = result;
  return result;
}

uint64_t ANECDescToUnitInfo<ANECDynamicSliceLayerDesc,ZinIrDynamicSliceUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  *(a4 + 32) = 47;
  *(a4 + 68) = a5;
  ANECTextureInfoToZin(a1 + 128, *a1, a4 + 104);
  ANECTextureInfoToZin(a1 + 8, *a1, (a4 + 80));
  v7 = (a4 + 184);
  *(a4 + 192) = *(a4 + 184);
  v8 = (a4 + 160);
  *(a4 + 168) = *(a4 + 160);
  if (*a1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v44 = 0;
      if (!CFStringToZinIrCoordinate(*(a1 + v9 + 248), &v44))
      {
        ZinAssertImpl("Invalid slice size information");
      }

      v11 = *(a1 + v9 + 256);
      v12 = *(a4 + 168);
      v13 = *(a4 + 176);
      if (v12 >= v13)
      {
        v15 = (v12 - *v8) >> 4;
        v16 = v15 + 1;
        if ((v15 + 1) >> 60)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v17 = v13 - *v8;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrIOFourccPlaneInfo>>(a4 + 160, v18);
        }

        v19 = 16 * v15;
        *v19 = v44;
        *(v19 + 4) = 0;
        *(v19 + 8) = v11;
        v14 = 16 * v15 + 16;
        v20 = *(a4 + 160);
        v21 = *(a4 + 168) - v20;
        v22 = (16 * v15 - v21);
        memcpy(v22, v20, v21);
        v23 = *(a4 + 160);
        *(a4 + 160) = v22;
        *(a4 + 168) = v14;
        *(a4 + 176) = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v12 = v44;
        *(v12 + 4) = 0;
        v14 = v12 + 16;
        *(v12 + 8) = v11;
      }

      *(a4 + 168) = v14;
      v43 = 0;
      if (!CFStringToZinIrCoordinate(*(a1 + 8 * v10 + 208), &v43))
      {
        ZinAssertImpl("Invalid offset order information");
      }

      v24 = *(a4 + 192);
      v25 = *(a4 + 200);
      if (v24 >= v25)
      {
        v27 = (v24 - *v7) >> 4;
        v28 = v27 + 1;
        if ((v27 + 1) >> 60)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v29 = v25 - *v7;
        if (v29 >> 3 > v28)
        {
          v28 = v29 >> 3;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF0)
        {
          v30 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v28;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrIOFourccPlaneInfo>>(a4 + 184, v30);
        }

        v31 = 16 * v27;
        *v31 = v43;
        *(v31 + 4) = 0;
        *(v31 + 8) = v10;
        v26 = 16 * v27 + 16;
        v32 = *(a4 + 184);
        v33 = *(a4 + 192) - v32;
        v34 = 16 * v27 - v33;
        memcpy((v31 - v33), v32, v33);
        v35 = *(a4 + 184);
        *(a4 + 184) = v34;
        *(a4 + 192) = v26;
        *(a4 + 200) = 0;
        if (v35)
        {
          operator delete(v35);
        }
      }

      else
      {
        *v24 = v43;
        *(v24 + 4) = 0;
        v26 = v24 + 16;
        *(v24 + 8) = v10;
      }

      *(a4 + 192) = v26;
      ++v10;
      v9 += 16;
    }

    while (v10 < *a1);
  }

  _S0 = *(a1 + 328);
  __asm { FCVT            H0, S0 }

  *(a4 + 152) = _S0;
  return ZinLayerValidationUtils::ValidateBackgroundPadding(a4, a5);
}

uint64_t ANECDescToUnitInfo<ANECInputViewLayerDesc,ZinIrInputViewUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 17;
  *(a4 + 68) = a5;
  *(a4 + 80) = *a1;
  *(a4 + 88) = *(a1 + 8);
  result = CFStringToZinIrDimension(*(a1 + 16), (a4 + 92));
  if ((result & 1) == 0)
  {
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    if (ZinGetString(*(a1 + 16), v8))
    {
      v7 = v8;
      if (v9 < 0)
      {
        v7 = v8[0];
      }

      ZinAssertImpl("Error: cannot parse InputView dimension %s", v7);
    }

    ZinAssertImpl("Error: cannot extract the view dimension string from the InputView Layer Descriptor");
  }

  return result;
}

void sub_1A69DB26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t ANECDescToUnitInfo<ANECPixelShuffleLayerDesc,ZinIrPixelShuffleUnitInfo>(int64x2_t *a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __int32 a5)
{
  result = vmovn_s64(*a1);
  a4[10] = result;
  a4[11].i32[0] = a1[1].i64[0];
  a4[8].i32[1] = a5;
  return result;
}

void *ANECDescToUnitInfo<ANECSoftmaxLayerDesc,ZinIrSoftmaxUnitInfo>(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 24;
  *(a4 + 68) = a5;
  result = std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::clear((a4 + 80));
  if (*a1)
  {
    v8 = 0;
    do
    {
      v9 = a1[v8 + 1];
      v10 = 0;
      if ((CFStringToZinIrDimension(v9, &v10) & 1) == 0)
      {
        ZinAssertImpl("Failed to get ZinIrDimension from CFString");
      }

      result = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension const&>((a4 + 80), &v10, &v10);
      ++v8;
    }

    while (v8 < *a1);
  }

  *(a4 + 120) = 0;
  return result;
}

BOOL ANECDescToUnitInfo<ANECElementWiseLayerDesc,ZinIrEWUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5)
{
  a4[8] = 4;
  a4[17] = a5;
  result = CFStringToZinIrEWType(*(a1 + 8), a4 + 20);
  if (!result)
  {
    ZinAssertImpl("Unknown element wise type.");
  }

  return result;
}

BOOL ANECDescToUnitInfo<ANECScaledElementWiseLayerDesc,ZinIrScaledEWUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 5;
  *(a4 + 68) = a5;
  *(a4 + 84) = *a1;
  *(a4 + 92) = *(a1 + 8);
  *(a4 + 96) = *(a1 + 12);
  result = CFStringToZinIrScaledEWType(*(a1 + 16), (a4 + 80));
  if (!result)
  {
    ZinAssertImpl("Unknown scaled element wise type.");
  }

  return result;
}

void *ANECDescToUnitInfo<ANECTensorDesc,ZinIrBroadcastUnitInfo>(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
    ZinAssertImpl("One tensor descriptor is needed for broadcast layer", a2, a3, a4, a5);
  }

  *(a4 + 32) = 19;
  *(a4 + 68) = a5;
  result = std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::clear((a4 + 80));
  v9 = a2[1];
  v10 = a1[1];
  v19 = 0;
  if (v9 != v10)
  {
    v20 = &v19;
    result = std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>((a4 + 80), &v19, &std::piecewise_construct, &v20);
    result[3] = v10;
  }

  v11 = a2[5];
  v12 = a1[5];
  v19 = 1;
  if (v11 != v12)
  {
    v20 = &v19;
    result = std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>((a4 + 80), &v19, &std::piecewise_construct, &v20);
    result[3] = v12;
  }

  v13 = a2[2];
  v14 = a1[2];
  v19 = 2;
  if (v13 != v14)
  {
    v20 = &v19;
    result = std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>((a4 + 80), &v19, &std::piecewise_construct, &v20);
    result[3] = v14;
  }

  v15 = a2[3];
  v16 = a1[3];
  v19 = 3;
  if (v15 != v16)
  {
    v20 = &v19;
    result = std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>((a4 + 80), &v19, &std::piecewise_construct, &v20);
    result[3] = v16;
  }

  v17 = a2[4];
  v18 = a1[4];
  v19 = 4;
  if (v17 != v18)
  {
    v20 = &v19;
    result = std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>((a4 + 80), &v19, &std::piecewise_construct, &v20);
    result[3] = v18;
  }

  return result;
}

__int16 ANECDescToUnitInfo<ANECCropResizeLayerDesc,ZinIrCropResizeUnitInfo>@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>)
{
  *(a4 + 32) = 46;
  *(a4 + 184) = *(a1 + 156);
  CFStringToZinIrCropResizeBoxMode(*a1, (a4 + 156));
  ANECTextureInfoToZin(a1 + 8, 2, a4 + 160);
  ANECTextureInfoToZin(a1 + 40, 2, a4 + 128);
  ANECTextureInfoToZin(a1 + 72, 2, a4 + 104);
  ANECTextureInfoToZin(a1 + 104, 2, (a4 + 80));
  _S0 = *(a1 + 152);
  __asm { FCVT            H0, S0 }

  *(a4 + 152) = result;
  *(a4 + 68) = a5;
  return result;
}

int32x2_t ANECDescToUnitInfo<ANECBatchToSpaceLayerDesc,ZinIrBatchToSpaceUnitInfo>(int64x2_t *a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __int32 a5)
{
  a4[4].i32[0] = 35;
  a4[8].i32[1] = a5;
  result = vmovn_s64(*a1);
  a4[10] = result;
  a4[11].i32[0] = a1[1].i64[0];
  return result;
}

int32x2_t ANECDescToUnitInfo<ANECSpaceToBatchLayerDesc,ZinIrSpaceToBatchUnitInfo>(int64x2_t *a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __int32 a5)
{
  a4[4].i32[0] = 34;
  a4[8].i32[1] = a5;
  result = vmovn_s64(*a1);
  a4[10] = result;
  a4[11].i32[0] = a1[1].i64[0];
  return result;
}

unint64_t *ANECDescToUnitInfo<ANECLayerNormLayerDesc,ZinIrLayerNormUnitInfo>(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 28;
  *(a4 + 68) = a5;
  v5 = *result;
  *(a4 + 128) = result[1];
  if (v5)
  {
    v7 = result;
    v8 = 2;
    do
    {
      v13 = 0;
      if ((CFStringToZinIrDimension(v7[v8], &v13) & 1) == 0)
      {
        v11[0] = 0;
        v11[1] = 0;
        v12 = 0;
        if (ZinGetString(v7[v8], v11))
        {
          v10 = v11;
          if (v12 < 0)
          {
            v10 = v11[0];
          }

          ZinAssertImpl("Invalid LayerNorm dimension: %s", v10);
        }

        ZinAssertImpl("Invalid LayerNorm dimension");
      }

      result = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension const&>((a4 + 80), &v13, &v13);
      v9 = v8++ - 1;
    }

    while (*v7 > v9);
  }

  return result;
}

void sub_1A69DB728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ANECDescToUnitInfo<ANECRingBufferWriterLayerDesc,ZinIrRingBufferUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v48 = *MEMORY[0x1E69E9840];
  *(a4 + 32) = 61;
  *(a4 + 68) = a5;
  v6 = *(a1 + 176);
  v40 = *(a1 + 160);
  v41[0] = v6;
  v41[1] = *(a1 + 192);
  v42 = *(a1 + 208);
  v7 = *(a1 + 112);
  v37[3] = *(a1 + 96);
  v37[4] = v7;
  v8 = *(a1 + 144);
  v38 = *(a1 + 128);
  v39 = v8;
  v9 = *(a1 + 48);
  v36[2] = *(a1 + 32);
  v37[0] = v9;
  v10 = *(a1 + 80);
  v37[1] = *(a1 + 64);
  v37[2] = v10;
  v11 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v11;
  v12 = *&v36[0];
  v13 = MEMORY[0x1E695E4D0];
  if (*&v36[0])
  {
    v14 = v36 + 1;
    v15 = *MEMORY[0x1E695E4D0];
    v16 = v37 + 1;
    do
    {
      LODWORD(v46) = 0;
      v17 = *v14;
      if ((CFStringToZinIrDimension(*v14, &v46) & 1) == 0)
      {
        memset(&v44, 0, sizeof(v44));
        if (ZinGetString(v17, &v44))
        {
          v33 = &v44;
          if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v33 = v44.__r_.__value_.__r.__words[0];
          }

          ZinAssertImpl("Invalid dimension: %s", v33);
        }

        ZinAssertImpl("Failed to get the axis name");
      }

      v18 = *(v16 - 1);
      v44.__r_.__value_.__r.__words[0] = &v46;
      std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>((a4 + 120), &v46, &std::piecewise_construct, &v44)[3] = v18;
      LOBYTE(v18) = *v16 == v15;
      v44.__r_.__value_.__r.__words[0] = &v46;
      *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>((a4 + 120), &v46, &std::piecewise_construct, &v44) + 32) = v18;
      v16 += 2;
      ++v14;
      --v12;
    }

    while (v12);
  }

  v19 = v38;
  if (v38 >= 1)
  {
    v20 = 0;
    v21 = v41;
    v35 = *v13;
    do
    {
      v43 = 0;
      v22 = *(v21 - 5);
      if ((CFStringToZinIrDimension(v22, &v43) & 1) == 0)
      {
        memset(&v44, 0, sizeof(v44));
        if (ZinGetString(v22, &v44))
        {
          v34 = &v44;
          if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v34 = v44.__r_.__value_.__r.__words[0];
          }

          ZinAssertImpl("Invalid dimension: %s", v34);
        }

        ZinAssertImpl("Invalid dimension");
      }

      std::to_string(&v44, v20);
      v23 = std::string::insert(&v44, 0, "live_param", 0xAuLL);
      v25 = v23->__r_.__value_.__r.__words[0];
      size = v23->__r_.__value_.__l.__size_;
      v45 = &v43;
      *&v46 = size;
      *(&v46 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
      v26 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      v27 = std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>((a4 + 80), &v43, &std::piecewise_construct, &v45);
      v28 = v27;
      if (*(v27 + 47) < 0)
      {
        operator delete(v27[3]);
      }

      v29 = v46;
      v28[3] = v25;
      v28[4] = v29;
      *(v28 + 39) = *(&v46 + 7);
      *(v28 + 47) = v26;
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      v30 = *v21 == v35;
      v44.__r_.__value_.__r.__words[0] = &v43;
      *(std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrDynamicOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>((a4 + 80), &v43, &std::piecewise_construct, &v44) + 48) = v30;
      ++v21;
      ++v20;
      --v19;
    }

    while (v19);
  }

  GetAllZinIrDimensions(&v44.__r_.__value_.__l.__data_);
  v32 = v44.__r_.__value_.__l.__size_;
  v31 = v44.__r_.__value_.__r.__words[0];
  if (v44.__r_.__value_.__r.__words[0] != v44.__r_.__value_.__l.__size_)
  {
    do
    {
      if (!std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>((a4 + 120), v31) && !std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>((a4 + 80), v31))
      {
        LODWORD(v46) = *v31;
        *(&v46 + 1) = 0;
        v47 = 0;
        std::__hash_table<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,ZinIrStaticOffsetPerAxisInfo>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension const,ZinIrStaticOffsetPerAxisInfo> const&>((a4 + 120), &v46, &v46);
      }

      ++v31;
    }

    while (v31 != v32);
    v31 = v44.__r_.__value_.__r.__words[0];
  }

  if (v31)
  {
    v44.__r_.__value_.__l.__size_ = v31;
    operator delete(v31);
  }
}

void sub_1A69DBAD0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 168);
  if (v3)
  {
    *(v1 - 160) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__int16 ANECDescToUnitInfo<ANECPadLayerDesc,ZinIrPadUnitInfo>@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>)
{
  *(a4 + 32) = 44;
  *(a4 + 68) = a5;
  if (*a1)
  {
    v7 = 0;
    v33 = (a4 + 160);
    v34 = (a4 + 156);
    v39 = (a4 + 168);
    v40 = (a4 + 164);
    v37 = (a4 + 176);
    v38 = (a4 + 172);
    v35 = (a4 + 184);
    v36 = (a4 + 180);
    v8 = a1 + 16;
    do
    {
      v43 = 0;
      CFStringToZinIrDimension(*(v8 - 8), &v43 + 1);
      v9 = CFStringToZinIrPaddingMode(*v8, &v43);
      __p[0] = 0;
      __p[1] = 0;
      v42 = 0;
      ZinGetString(*v8, __p);
      if ((v9 & 1) == 0)
      {
        v32 = __p;
        if (v42 < 0)
        {
          v32 = __p[0];
        }

        ZinAssertImpl("Unknown padding mode: %s.", v32);
      }

      v10 = HIDWORD(v43);
      if (SHIDWORD(v43) <= 1)
      {
        v11 = (a4 + 188);
        v12 = (a4 + 192);
        if (HIDWORD(v43))
        {
          v12 = v37;
          v11 = v38;
          if (HIDWORD(v43) != 1)
          {
            goto LABEL_14;
          }
        }
      }

      else if (HIDWORD(v43) == 4)
      {
        v12 = v33;
        v11 = v34;
      }

      else
      {
        v12 = v39;
        v11 = v40;
        if (HIDWORD(v43) != 3)
        {
          v12 = v35;
          v11 = v36;
          if (HIDWORD(v43) != 2)
          {
            goto LABEL_14;
          }
        }
      }

      *v11 = *(v8 + 8);
      *v12 = *(v8 + 12);
LABEL_14:
      v14 = *(a4 + 208);
      v13 = *(a4 + 216);
      if (v14 >= v13)
      {
        v16 = *(a4 + 200);
        v17 = (v14 - v16) >> 3;
        if ((v17 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v18 = v13 - v16;
        v19 = v18 >> 2;
        if (v18 >> 2 <= (v17 + 1))
        {
          v19 = v17 + 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a4 + 200, v20);
        }

        v21 = (8 * v17);
        *v21 = v10 | (v43 << 32);
        v15 = 8 * v17 + 8;
        v22 = *(a4 + 200);
        v23 = *(a4 + 208) - v22;
        v24 = v21 - v23;
        memcpy(v21 - v23, v22, v23);
        v25 = *(a4 + 200);
        *(a4 + 200) = v24;
        *(a4 + 208) = v15;
        *(a4 + 216) = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v14 = v10 | (v43 << 32);
        v15 = (v14 + 1);
      }

      *(a4 + 208) = v15;
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
      }

      ++v7;
      v8 += 24;
    }

    while (v7 < *a1);
  }

  _S0 = *(a1 + 128);
  __asm { FCVT            H0, S0 }

  *(a4 + 224) = result;
  return result;
}

void sub_1A69DBD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 ANECDescToUnitInfo<ANECReshapeLayerDesc,ZinIrReshapeUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != 1)
  {
    ZinAssertImpl("Only one tensor descriptor is needed for reshape layer", a2, a3, a4, a5, v5, v6);
  }

  *(a4 + 32) = 22;
  *(a4 + 68) = a5;
  v7 = *(a1 + 32);
  result = *a1;
  v9 = *(a1 + 16);
  *(a4 + 80) = *a1;
  *(a4 + 96) = v9;
  *(a4 + 112) = v7;
  return result;
}

uint64_t ANECDescToUnitInfo<ANECTileLayerDesc,ZinIrTileUnitInfo>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 45;
  *(a4 + 68) = a5;
  v7 = *a1;
  v13 = 0;
  v14 = &v13;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,int>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,int>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((a4 + 80), &v13, &std::piecewise_construct, &v14) + 20) = v7;
  v8 = a1[4];
  v13 = 1;
  v14 = &v13;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,int>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,int>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((a4 + 80), &v13, &std::piecewise_construct, &v14) + 20) = v8;
  v9 = a1[1];
  v13 = 2;
  v14 = &v13;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,int>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,int>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((a4 + 80), &v13, &std::piecewise_construct, &v14) + 20) = v9;
  v10 = a1[2];
  v13 = 3;
  v14 = &v13;
  *(std::__hash_table<std::__hash_value_type<ZinIrDimension,int>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,int>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((a4 + 80), &v13, &std::piecewise_construct, &v14) + 20) = v10;
  v11 = a1[3];
  v13 = 4;
  v14 = &v13;
  result = std::__hash_table<std::__hash_value_type<ZinIrDimension,int>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,int>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,int>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension&&>,std::tuple<>>((a4 + 80), &v13, &std::piecewise_construct, &v14);
  *(result + 20) = v11;
  return result;
}

void ANECDescToUnitInfo<ANECTransposeLayerDesc,ZinIrTransposeUnitInfo>(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = (a4 + 80);
  v5 = *(a4 + 80);
  *(a4 + 32) = 21;
  *(a4 + 68) = a5;
  *(a4 + 88) = v5;
  if (*a1)
  {
    v9 = 0;
    v10 = (a1 + 2);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v30 = 0;
      if ((CFStringToZinIrDimension(v12, &v30 + 1) & 1) == 0)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        if (ZinGetString(v12, &v27))
        {
          v26 = &v27;
          if (v29 < 0)
          {
            v26 = v27;
          }

          ZinAssertImpl("Invalid transpose axis: %s", v26);
        }

        ZinAssertImpl("Cannot retrieve transpose axis");
      }

      if ((CFStringToZinIrDimension(v11, &v30) & 1) == 0)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        if (ZinGetString(v11, &v27))
        {
          v25 = &v27;
          if (v29 < 0)
          {
            v25 = v27;
          }

          ZinAssertImpl("Invalid transpose axis: %s", v25);
        }

        ZinAssertImpl("Cannot retrieve transpose axis");
      }

      v14 = *(a4 + 88);
      v13 = *(a4 + 96);
      if (v14 >= v13)
      {
        v16 = (v14 - *v6) >> 3;
        if ((v16 + 1) >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v17 = v13 - *v6;
        v18 = v17 >> 2;
        if (v17 >> 2 <= (v16 + 1))
        {
          v18 = v16 + 1;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(v6, v19);
        }

        v20 = (8 * v16);
        *v20 = HIDWORD(v30) | (v30 << 32);
        v15 = 8 * v16 + 8;
        v21 = *(a4 + 80);
        v22 = *(a4 + 88) - v21;
        v23 = v20 - v22;
        memcpy(v20 - v22, v21, v22);
        v24 = *(a4 + 80);
        *(a4 + 80) = v23;
        *(a4 + 88) = v15;
        *(a4 + 96) = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v14 = HIDWORD(v30) | (v30 << 32);
        v15 = (v14 + 1);
      }

      *(a4 + 88) = v15;
      ++v9;
      v10 += 2;
    }

    while (v9 < *a1);
  }
}

void sub_1A69DC0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANECDescToUnitInfo<ANECReductionLayerDesc,ZinIrReductionUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 20;
  *(a4 + 68) = a5;
  *(a4 + 80) = CFStringToZinIrReductionType(a1);
  result = CFStringToZinReductionPostOp((a1 + 8));
  *(a4 + 84) = result;
  *(a4 + 88) = *(a1 + 16);
  if (*(a1 + 24))
  {
    v8 = 0;
    v9 = a1 + 32;
    do
    {
      v13 = 0;
      result = CFStringToZinIrDimension(*(v9 + 8 * v8), &v13);
      if ((result & 1) == 0)
      {
        v11[0] = 0;
        v11[1] = 0;
        v12 = 0;
        if (ZinGetString(*(v9 + 8 * v8), v11))
        {
          v10 = v11;
          if (v12 < 0)
          {
            v10 = v11[0];
          }

          ZinAssertImpl("Unknown dimension for reduction: %s", v10);
        }

        ZinAssertImpl("Invalid reduction dimension");
      }

      if (v13 >= 5)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
      }

      *(a4 + 96) |= 1 << v13;
      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  return result;
}

void sub_1A69DC22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ANECDescToUnitInfo<ANECGatherLayerDesc,ZinIrGatherUnitInfo>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 39;
  *(a4 + 68) = a5;
  if (*a1)
  {
    v7 = 1;
    do
    {
      v25 = 0;
      if ((CFStringToZinIrDimension(a1[v7], &v25) & 1) == 0)
      {
        v23[0] = 0;
        v23[1] = 0;
        v24 = 0;
        if (ZinGetString(a1[v7], v23))
        {
          v22 = v23;
          if (v24 < 0)
          {
            v22 = v23[0];
          }

          ZinAssertImpl("Unknown dimension for gather: %s", v22);
        }

        ZinAssertImpl("Invalid gather dimension");
      }

      v9 = *(a4 + 168);
      v8 = *(a4 + 176);
      if (v9 >= v8)
      {
        v11 = *(a4 + 160);
        v12 = v9 - v11;
        v13 = (v9 - v11) >> 2;
        v14 = v13 + 1;
        if ((v13 + 1) >> 62)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(a4 + 160, v16);
        }

        v17 = (v9 - v11) >> 2;
        v18 = (4 * v13);
        v19 = (4 * v13 - 4 * v17);
        *v18 = v25;
        v10 = v18 + 1;
        memcpy(v19, v11, v12);
        v20 = *(a4 + 160);
        *(a4 + 160) = v19;
        *(a4 + 168) = v10;
        *(a4 + 176) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v9 = v25;
        v10 = v9 + 4;
      }

      *(a4 + 168) = v10;
    }

    while (v7++ < *a1);
  }
}

void sub_1A69DC3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANECDescToUnitInfo<ANECTopKLayerDesc,ZinIrTopKUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 51;
  *(a4 + 68) = a5;
  *(a4 + 80) = CFStringToZinIrTopKType(*a1);
  *(a4 + 88) = *(a1 + 8);
  if ((CFStringToZinIrDimension(*(a1 + 16), (a4 + 96)) & 1) == 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if (ZinGetString(*(a1 + 16), &v13))
    {
      v12 = &v13;
      if (v15 < 0)
      {
        v12 = v13;
      }

      ZinAssertImpl("Unknown sort_dimension for TopK: %s", v12);
    }

    ZinAssertImpl("Invalid TopK sort_dimension");
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    if ((CFStringToZinIrDimension(v7, (a4 + 100)) & 1) == 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if (ZinGetString(*(a1 + 24), &v13))
      {
        v8 = &v13;
        if (v15 < 0)
        {
          v8 = v13;
        }

        ZinAssertImpl("Unknown vector_dimension for TopK: %s", v8);
      }

      ZinAssertImpl("Invalid TopK vector_dimension");
    }
  }

  else
  {
    *(a4 + 100) = 5;
  }

  if (*(a1 + 32))
  {
    v9 = 0;
    v10 = (a1 + 40);
    do
    {
      std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a4 + 104, v10, v10);
      ++v9;
      ++v10;
    }

    while (*(a1 + 32) > v9);
  }

  result = CFBooleanGetValue(*(a1 + 552));
  *(a4 + 128) = result != 0;
  return result;
}

void sub_1A69DC554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t ANECDescToUnitInfo<ANECPixelUnshuffleLayerDesc,ZinIrPixelUnshuffleUnitInfo>(int64x2_t *a1, uint64_t a2, uint64_t a3, int32x2_t *a4, __int32 a5)
{
  a4[4].i32[0] = 32;
  a4[8].i32[1] = a5;
  result = vmovn_s64(*a1);
  a4[10] = result;
  a4[11].i32[0] = a1[1].i64[0];
  return result;
}

uint64_t ANECDescToUnitInfo<ANECMatrixMultLayerDesc,ZinIrMatrixMultUnitInfo>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 18;
  *(a4 + 68) = a5;
  *(a4 + 72) = *(result + 8);
  *(a4 + 80) = *result;
  return result;
}

uint64_t ANECDescToUnitInfo<ANECResampleLayerDesc,ZinIrResampleUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a4 + 32) = 43;
  *(a4 + 68) = a5;
  ANECTextureInfoToZin(a1 + 32, 2, a4 + 104);
  ANECTextureInfoToZin(a1 + 64, 2, (a4 + 80));
  ANECTextureInfoToZin(a1, 2, a4 + 128);
  ANECTextureInfoToZin(a1 + 112, 2, a4 + 160);
  *(a4 + 184) = 0;
  _S0 = *(a1 + 144);
  __asm { FCVT            H0, S0 }

  *(a4 + 152) = _S0;

  return ZinLayerValidationUtils::ValidateBackgroundPadding(a4, a5);
}

void ANECDescToUnitInfo<ANECResizeLayerDesc,ZinIrResizeUnitInfo>(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = 0;
  v7 = a1[1];
  *(a4 + 156) = vrev64_s32(*a1);
  *(a4 + 32) = 41;
  v8 = a1 + 2;
  v9 = a1 + 6;
  *(a4 + 68) = a5;
  *(a4 + 164) = v7;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = &v8[2 * v6];
    CFStringToZinIrDimension(*v12, &v39);
    CFStringToZinIrSamplingMethod(*&v12[1], &v39 + 1);
    v14 = *(a4 + 136);
    v13 = *(a4 + 144);
    if (v14 >= v13)
    {
      v16 = *(a4 + 128);
      v17 = (v14 - v16) >> 3;
      if ((v17 + 1) >> 61)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 2;
      if (v18 >> 2 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a4 + 128, v20);
      }

      *(8 * v17) = v39;
      v15 = 8 * v17 + 8;
      v21 = *(a4 + 128);
      v22 = *(a4 + 136) - v21;
      v23 = (8 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = *(a4 + 128);
      *(a4 + 128) = v23;
      *(a4 + 136) = v15;
      *(a4 + 144) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v39;
      v15 = (v14 + 1);
    }

    *(a4 + 136) = v15;
    v25 = &v9[2 * v6];
    CFStringToZinIrDimension(*v25, &v38);
    CFStringToZinIrSamplingGridMode(*&v25[1], &v38 + 1);
    v27 = *(a4 + 184);
    v26 = *(a4 + 192);
    if (v27 >= v26)
    {
      v29 = *(a4 + 176);
      v30 = (v27 - v29) >> 3;
      if ((v30 + 1) >> 61)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v31 = v26 - v29;
      v32 = v31 >> 2;
      if (v31 >> 2 <= (v30 + 1))
      {
        v32 = v30 + 1;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a4 + 176, v33);
      }

      *(8 * v30) = v38;
      v28 = 8 * v30 + 8;
      v34 = *(a4 + 176);
      v35 = *(a4 + 184) - v34;
      v36 = (8 * v30 - v35);
      memcpy(v36, v34, v35);
      v37 = *(a4 + 176);
      *(a4 + 176) = v36;
      *(a4 + 184) = v28;
      *(a4 + 192) = 0;
      if (v37)
      {
        operator delete(v37);
      }
    }

    else
    {
      *v27 = v38;
      v28 = (v27 + 1);
    }

    v10 = 0;
    *(a4 + 184) = v28;
    v6 = 1;
  }

  while ((v11 & 1) != 0);
}

void ANECDescToUnitInfo<ANECLinearLayerDesc,ZinIrLinearUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v14 = *MEMORY[0x1E69E9840];
  ZinIrUnitStatus::ZinIrUnitStatus(v10);
  *(a4 + 32) = 60;
  *(a4 + 68) = a5;
  *(a4 + 80) = ZinGetKernelMode(*a1);
  *(a4 + 84) = ZinGetKernelFormat(*(a1 + 8), *a1);
  v9 = 0;
  if ((CFStringToZinIrDimension(*(a1 + 24), &v9) & 1) == 0)
  {
    __src = 0;
    v12 = 0;
    v13 = 0;
    if (ZinGetString(*(a1 + 24), &__src))
    {
      p_src = &__src;
      if (v13 < 0)
      {
        p_src = __src;
      }

      ZinAssertImpl("Unknown dimension for gather: %s", p_src);
    }

    ZinAssertImpl("Invalid gather dimension");
  }

  *(a4 + 240) = v9;
  LODWORD(__src) = 0;
  std::vector<ZinTensorFormat>::__assign_with_size[abi:ne200100]<ZinTensorFormat const*,ZinTensorFormat const*>((a4 + 128), &__src, &__src + 4, 1uLL);
  __src = 0;
  std::vector<DimensionMapping>::__assign_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>((a4 + 152), &__src, &v12, 1uLL);
  *(a4 + 104) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 1;
  *(a4 + 72) = *(a1 + 16);
  *(a4 + 180) = *(a1 + 32);
  *(a4 + 184) = *(a1 + 33);
  *(a4 + 185) = *(a1 + 48);
  *(a4 + 224) = ZinGetKernelFormat(*(a1 + 40), 0);
  *(a4 + 228) = *(a1 + 36);
  *(a4 + 232) = *(a1 + 52);
  *(a4 + 176) = *(a1 + 56);
  ZinIrUnitStatus::~ZinIrUnitStatus(v10);
}

void ANECDescToUnitInfo<ANECSDPALayerDesc,ZinIrSDPAUnitInfo>(CFBooleanRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  ZinIrUnitStatus::ZinIrUnitStatus(v8);
  *(a4 + 32) = 77;
  *(a4 + 68) = a5;
  *(a4 + 80) = CFBooleanGetValue(*a1) != 0;
  ZinIrUnitStatus::~ZinIrUnitStatus(v8);
}

void sub_1A69DCAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrUnitStatus::~ZinIrUnitStatus(va);
  _Unwind_Resume(a1);
}

uint64_t ANECDescToUnitInfo<ANECFlattenLayerDesc,ZinIrFlattenUnitInfo>(const __CFString **a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5)
{
  a4[8] = 11;
  a4[17] = a5;
  result = CFStringToZinIrFlattenType(*a1);
  a4[20] = result;
  return result;
}

double ANECDescToUnitInfo<ANECUnflattenLayerDesc,ZinIrUnflattenUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 12;
  *(a4 + 68) = a5;
  *(a4 + 80) = CFStringToZinIrFlattenType(*a1);
  result = *(a1 + 8);
  *(a4 + 84) = result;
  *(a4 + 92) = *(a1 + 16);
  return result;
}

void ANECDescToUnitInfo<ANECMinMaxNormLayerDesc,ZinIrMinMaxNormUnitInfo>(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5)
{
  a4[8] = 27;
  a4[17] = a5;
  v6 = (a1 + 1);
  v7 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "min/max norm");
  ANECDescDimsToNormUnitInfo(a4 + 10, v6, v7, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  a4[30] = 730643660;
}

void sub_1A69DCBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *ANECDescDimsToNormUnitInfo(void *a1, CFStringRef *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v14 = 0;
      if ((CFStringToZinIrDimension(*a2, &v14) & 1) == 0)
      {
        v12[0] = 0;
        v12[1] = 0;
        v13 = 0;
        String = ZinGetString(*a2, v12);
        if (*(a4 + 23) >= 0)
        {
          v10 = a4;
        }

        else
        {
          v10 = *a4;
        }

        if (String)
        {
          v11 = v12;
          if (v13 < 0)
          {
            v11 = v12[0];
          }

          ZinAssertImpl("Error: unknown %s axis %s", v10, v11);
        }

        ZinAssertImpl("Error: invalid %s axis", v10);
      }

      result = std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension const&>(a1, &v14, &v14);
      ++a2;
      --v6;
    }

    while (v6);
  }

  else
  {
    LODWORD(v12[0]) = 3;
    std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension>(a1, v12, v12);
    LODWORD(v12[0]) = 4;
    std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension>(a1, v12, v12);
    LODWORD(v12[0]) = 1;
    return std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension>(a1, v12, v12);
  }

  return result;
}

void sub_1A69DCD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int16 ANECDescToUnitInfo<ANECAffineTransformLayerDesc,ZinIrAffineTransformUnitInfo>@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>)
{
  *(a4 + 32) = 40;
  *(a4 + 68) = a5;
  v7 = *(a1 + 128);
  *(a4 + 160) = *(a1 + 116);
  *(a4 + 168) = v7;
  *(a4 + 64) = GetZinTensorFormat<__CFString const*>((a1 + 136));
  ANECTextureInfoToZin(a1, 2, a4 + 128);
  ANECTextureInfoToZin(a1 + 32, 2, a4 + 104);
  ANECTextureInfoToZin(a1 + 64, 2, (a4 + 80));
  ANECTextureInfoToZin(a1 + 144, 2, (a4 + 200));
  _S0 = *(a1 + 112);
  __asm { FCVT            H0, S0 }

  *(a4 + 152) = result;
  return result;
}

_BYTE *ANECDescToUnitInfo<ANECDynamicGOCLayerDesc,ZinIrDynamicGOCUnitInfo>(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 9;
  *(a4 + 68) = a5;
  *(a4 + 210) = *result;
  *(a4 + 209) = result[1];
  return result;
}

void ANECDescToUnitInfo<ANECL2NormLayerDesc,ZinIrL2NormUnitInfo>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 26;
  *(a4 + 68) = a5;
  v6 = (a1 + 1);
  v7 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "L2 norm");
  ANECDescDimsToNormUnitInfo((a4 + 80), v6, v7, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A69DCE48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double ANECDescToUnitInfo<ANECArgMinMaxLayerDesc,ZinIrArgMinMaxUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 15;
  *(a4 + 68) = a5;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = *a1;
  *(a4 + 80) = v7;
  *(a4 + 84) = v8;
  *(a4 + 88) = vrev64_s32(*(a1 + 32));
  CFStringToZinArgMode(v9, (a4 + 120));
  *(a4 + 96) = *(a1 + 44);
  result = *(a1 + 60);
  *(a4 + 112) = result;
  return result;
}

uint64_t ANECDescToUnitInfo<ANECGlobalArgMinMaxLayerDesc,ZinIrGlobalArgMinMaxUnitInfo>(const __CFString **a1, uint64_t a2, uint64_t a3, _DWORD *a4, int a5)
{
  a4[8] = 16;
  a4[17] = a5;
  if ((CFStringToZinIrDimension(a1[1], a4 + 21) & 1) == 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (ZinGetString(a1[1], &v10))
    {
      v8 = &v10;
      if (v12 < 0)
      {
        v8 = v10;
      }

      ZinAssertImpl("Error: Invalid dimension:%s setting in the instance norm layer descriptor", v8);
    }

    ZinAssertImpl("Error: cannot extract the dimension string from the GlobalArgMinMax Layer Descriptor");
  }

  result = CFStringToGlobalArgType(a1, a4 + 20);
  if ((result & 1) == 0)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (ZinGetString(*a1, &v10))
    {
      v9 = &v10;
      if (v12 < 0)
      {
        v9 = v10;
      }

      ZinAssertImpl("Error: Invalid GlobalArgMinMax type %s", v9);
    }

    ZinAssertImpl("Error: cannot extract the dimension string from the GlobalArgMinMax Layer Descriptor");
  }

  return result;
}

void sub_1A69DCFBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 ANECDescToUnitInfo<ANECRandomLayerDesc,ZinIrRandomUnitInfo>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 55;
  *(a4 + 68) = a5;
  *(a4 + 120) = a1[1];
  *(a4 + 128) = a1[2];
  v5 = *(a2 + 40);
  result = *(a2 + 8);
  v7 = *(a2 + 24);
  *(a4 + 80) = result;
  *(a4 + 96) = v7;
  *(a4 + 112) = v5;
  *(a4 + 72) = a1[3];
  return result;
}

uint64_t ANECDescToUnitInfo<ANECNMSLayerDesc,ZinIrNMSUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 52;
  *(a4 + 88) = *(a1 + 16);
  *(a4 + 80) = *(a1 + 8);
  *(a4 + 92) = *(a1 + 20);
  result = CFStringToNMSType(a1, (a4 + 96));
  if ((result & 1) == 0)
  {
    ZinAssertImpl("Error: Invalid NMS type.");
  }

  if (*(a4 + 96))
  {
    v8 = a5;
  }

  else
  {
    v8 = 10;
  }

  *(a4 + 68) = v8;
  return result;
}

float ANECDescToUnitInfo<ANECDropoutLayerDesc,ZinIrDropoutUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 54;
  *(a4 + 68) = a5;
  result = *a1;
  *(a4 + 80) = *a1;
  *(a4 + 88) = *(a1 + 8);
  *(a4 + 96) = *(a1 + 16);
  return result;
}

uint64_t ANECDescToUnitInfo<ANECLRNLayerDesc,ZinIrLRNUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 29;
  *(a4 + 68) = a5;
  ANECPaddingToZinIrPadding(a1 + 32, &v8);
  *(a4 + 112) = v8;
  *(a4 + 128) = v9;
  ANECKernelSizeToZinIrKernelSize((a1 + 8), &v8);
  *(a4 + 88) = v8;
  *(a4 + 104) = v9;
  result = CFStringToLRNType(a1, (a4 + 80));
  if ((result & 1) == 0)
  {
    ZinAssertImpl("Error: Invalid LRN type.");
  }

  return result;
}

double ANECDescToUnitInfo<ANECCrossCorrelationLayerDesc,ZinIrCrossCorrelationUnitInfo>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 13;
  *(a4 + 68) = a5;
  *(a4 + 72) = *a1;
  ANECPaddingToZinIrPadding(a1 + 16, &v8);
  *(a4 + 88) = v8;
  *(a4 + 104) = v9;
  result = *(a1 + 40);
  *(a4 + 112) = result;
  return result;
}

uint64_t ANECDescToUnitInfo<ANECSortLayerDesc,ZinIrSortUnitInfo>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a4 + 32) = 50;
  *(a4 + 68) = a5;
  *(a4 + 120) = a1[68] == *MEMORY[0x1E695E4D0];
  *(a4 + 80) = CFStringToZinIrSortDirection(*a1);
  if ((CFStringToZinIrDimension(a1[1], (a4 + 84)) & 1) == 0)
  {
    ZinAssertImpl("Error: cannot extract sort_dimension from Sort Layer Descriptor.");
  }

  result = CFStringToZinIrDimension(a1[2], (a4 + 88));
  if (!result)
  {
    ZinAssertImpl("Error: cannot extract vector_dimension from Sort Layer Descriptor.");
  }

  if (a1[3])
  {
    v8 = 0;
    v9 = (a1 + 4);
    do
    {
      result = std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a4 + 96, v9, v9);
      ++v8;
      ++v9;
    }

    while (v8 < a1[3]);
  }

  return result;
}

void RetrieveAbsolutePath(uint64_t a1)
{
  v2 = std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v5.__pn_, a1);
  if (!std::__fs::filesystem::path::__root_directory(v2).__size_)
  {
    std::__fs::filesystem::__absolute(&v4, &v5, 0);
    if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v4.__pn_.__r_.__value_.__l.__data_, v4.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v4.__pn_;
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = pn;
    if (SHIBYTE(v4.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__pn_.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v5.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1A69DD32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 - 17) < 0)
  {
    operator delete(*(v18 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t HandleException(const ZinException *a1, CFArrayRef *a2)
{
  v59[22] = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v54);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Compiler internal error: ", 25);
  v5 = (*(*a1 + 16))(a1);
  v6 = strlen(v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v53, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v53);
  std::ostream::put();
  std::ostream::flush();
  LayerInfo = ZinException::GetLayerInfo(a1);
  if (*(LayerInfo + 96) == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "- From ", 7);
    v11 = *(LayerInfo + 47);
    if (v11 >= 0)
    {
      v12 = LayerInfo + 24;
    }

    else
    {
      v12 = *(LayerInfo + 24);
    }

    if (v11 >= 0)
    {
      v13 = *(LayerInfo + 47);
    }

    else
    {
      v13 = *(LayerInfo + 32);
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " Layer: ", 9);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v53, MEMORY[0x1E69E5318]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v53);
    std::ostream::put();
    std::ostream::flush();
    v17 = *(LayerInfo + 23);
    if (v17 >= 0)
    {
      v18 = LayerInfo;
    }

    else
    {
      v18 = *LayerInfo;
    }

    if (v17 >= 0)
    {
      v19 = *(LayerInfo + 23);
    }

    else
    {
      v19 = *(LayerInfo + 8);
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v18, v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "", 1);
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&v53, MEMORY[0x1E69E5318]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&v53);
    std::ostream::put();
    std::ostream::flush();
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "- Layer details:", 16);
    std::ios_base::getloc((v23 + *(*v23 - 24)));
    v24 = std::locale::use_facet(&v53, MEMORY[0x1E69E5318]);
    (v24->__vftable[2].~facet_0)(v24, 10);
    std::locale::~locale(&v53);
    std::ostream::put();
    std::ostream::flush();
    v25 = *(LayerInfo + 95);
    if (v25 >= 0)
    {
      v26 = LayerInfo + 72;
    }

    else
    {
      v26 = *(LayerInfo + 72);
    }

    if (v25 >= 0)
    {
      v27 = *(LayerInfo + 95);
    }

    else
    {
      v27 = *(LayerInfo + 80);
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v26, v27);
    std::ios_base::getloc((v28 + *(*v28 - 24)));
    v29 = std::locale::use_facet(&v53, MEMORY[0x1E69E5318]);
    (v29->__vftable[2].~facet_0)(v29, 10);
    std::locale::~locale(&v53);
    std::ostream::put();
    std::ostream::flush();
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "- Coming from input layers: ", 28);
    std::ios_base::getloc((v30 + *(*v30 - 24)));
    v31 = std::locale::use_facet(&v53, MEMORY[0x1E69E5318]);
    (v31->__vftable[2].~facet_0)(v31, 10);
    std::locale::~locale(&v53);
    std::ostream::put();
    std::ostream::flush();
    v34 = *(LayerInfo + 48);
    v33 = LayerInfo + 48;
    v32 = v34;
    v35 = *(v33 + 23);
    if (v35 >= 0)
    {
      v36 = v33;
    }

    else
    {
      v36 = v32;
    }

    if (v35 >= 0)
    {
      v37 = *(v33 + 23);
    }

    else
    {
      v37 = *(v33 + 8);
    }

    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v36, v37);
    std::ios_base::getloc((v38 + *(*v38 - 24)));
    v39 = std::locale::use_facet(&v53, MEMORY[0x1E69E5318]);
    (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v53);
    std::ostream::put();
    std::ostream::flush();
  }

  LayerExecutionBehaviors = ZinIrExecutionBehavior::GetLayerExecutionBehaviors(a1);
  if (*(LayerExecutionBehaviors + 24) == 1)
  {
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "- Basic Block ", 14);
    v42 = *(LayerExecutionBehaviors + 23);
    if (v42 >= 0)
    {
      v43 = LayerExecutionBehaviors;
    }

    else
    {
      v43 = *LayerExecutionBehaviors;
    }

    if (v42 >= 0)
    {
      v44 = *(LayerExecutionBehaviors + 23);
    }

    else
    {
      v44 = *(LayerExecutionBehaviors + 8);
    }

    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
    std::ios_base::getloc((v45 + *(*v45 - 24)));
    v46 = std::locale::use_facet(&v53, MEMORY[0x1E69E5318]);
    (v46->__vftable[2].~facet_0)(v46, 10);
    std::locale::~locale(&v53);
    std::ostream::put();
    std::ostream::flush();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v54, &v53);
    HandleException(&v53);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v54, __p);
  if (v52 >= 0)
  {
    v47 = __p;
  }

  else
  {
    v47 = __p[0];
  }

  v48 = CFStringCreateWithCString(0, v47, 0x8000100u);
  if (v52 < 0)
  {
    operator delete(__p[0]);
  }

  ZinIrPlistCompilationStatus::SetError(a2, v48);
  CFRelease(v48);
  v54[0] = *MEMORY[0x1E69E54D8];
  v49 = *(MEMORY[0x1E69E54D8] + 72);
  *(v54 + *(v54[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v55 = v49;
  v56 = MEMORY[0x1E69E5548] + 16;
  if (v58 < 0)
  {
    operator delete(v57[7].__locale_);
  }

  v56 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v57);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](v59);
}

void sub_1A69DDB14(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, std::locale a9, void *a10, uint64_t a11, char a12, std::locale a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](va);
  _Unwind_Resume(a1);
}

uint64_t CleanUp(uint64_t a1, uint64_t a2, const __CFDictionary *a3, ZinComputeMutableProgramWrapper **this, uint64_t a5)
{
  if (a2)
  {
    (*(a2 + 16))(a2, a1, a3);
  }

  if (this)
  {
    ZinAneLinker::~ZinAneLinker(this);
    MEMORY[0x1AC55A070]();
  }

  (*(*a5 + 8))(a5);
  value = 0;
  if (CFDictionaryGetValueIfPresent(a3, @"ErrorList", &value))
  {
    v9 = CFGetTypeID(value);
    if (v9 == CFArrayGetTypeID() && CFArrayGetCount(value) >= 1)
    {
      __p[0] = 0;
      __p[1] = 0;
      v16 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(value, 0);
      v11 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v12 = CFGetTypeID(ValueAtIndex);
        if (v12 == CFStringGetTypeID())
        {
          v13 = v11;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      if (ZinGetString(v13, __p) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        CleanUp();
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

void sub_1A69DDCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **ANECGetOriginalInputNameSet@<X0>(uint64_t **result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *result;
  v4 = result[1];
  while (v3 != v4)
  {
    v5 = v3[4];
    if (v5 != v3 + 5)
    {
      do
      {
        result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a2, v5 + 13, (v5 + 13));
        v6 = v5[1];
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v5[2];
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != v3 + 5);
    }

    v3 += 21;
  }

  return result;
}

uint64_t **ANECGetOriginalOutputNameSet@<X0>(uint64_t **result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *result;
  v4 = result[1];
  while (v3 != v4)
  {
    v5 = v3[7];
    if (v5 != v3 + 8)
    {
      do
      {
        result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a2, v5 + 13, (v5 + 13));
        v6 = v5[1];
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v5[2];
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != v3 + 8);
    }

    v3 += 21;
  }

  return result;
}

void GetAndValidateSpmdDeviceMesh(ZinIrContext *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  strcpy(__format, "Compiling SPMD and non-SPMD procedure families simultaneously are not allowed");
  CFGraph = ZinIrContext::GetCFGraph(a1, 0);
  v7 = *a3;
  v8 = *(a3 + 8);
  if (*(CFGraph + 448) == 1)
  {
    if (v7 != v8)
    {
      v9 = ZinIrContext::GetCFGraph(a1, 0);
      ZinIrControlFlowGraph::GetDeviceMeshVector(&__p, v9);
      if ((v17 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v10 = *a3;
      v11 = *(a3 + 8) - *a3;
      v12 = __p;
      if (v11 == v16 - __p)
      {
        v13 = memcmp(v10, __p, v11) == 0;
        if (!v12)
        {
LABEL_17:
          if (!v13)
          {
            ZinAssertImpl("Multiple procedure families with different device meshes are not supported.");
          }

          return;
        }
      }

      else
      {
        v13 = 0;
        if (!__p)
        {
          goto LABEL_17;
        }
      }

      v16 = v12;
      operator delete(v12);
      goto LABEL_17;
    }

    if (a2)
    {
      ZinAssertImpl(__format);
    }

    v14 = ZinIrContext::GetCFGraph(a1, 0);
    ZinIrControlFlowGraph::GetDeviceMeshVector(&__p, v14);
    if ((v17 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    if (&__p == a3 || (std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a3, __p, v16, (v16 - __p) >> 1), (v17 & 1) != 0))
    {
      if (__p)
      {
        v16 = __p;
        operator delete(__p);
      }
    }
  }

  else if (v7 != v8)
  {
    ZinAssertImpl(__format);
  }
}

void sub_1A69DE03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    ZinIrCreateInstructions_v17(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SetFunctionVisibilityAttribute(const __CFDictionary *a1, uint64_t a2)
{
  value = 0;
  ValueIfPresent = CFDictionaryGetValueIfPresent(a1, @"Attributes", &value);
  result = value;
  if (ValueIfPresent)
  {
    v5 = value == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    result = ZinParseFunctionVisibility(value, (a2 + 4));
    if (result)
    {
      ZinAssertImpl("Parsing function visibility failed");
    }
  }

  return result;
}

uint64_t std::vector<ZinIrCompilerParameters::SubGraphSpec>::emplace_back<ZinIrCompilerParameters::SubGraphSpec const&>(void *a1, const ZinIrCompilerParameters::SubGraphSpec *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = std::vector<ZinIrCompilerParameters::SubGraphSpec>::__emplace_back_slow_path<ZinIrCompilerParameters::SubGraphSpec const&>(a1, a2);
  }

  else
  {
    ZinIrCompilerParameters::SubGraphSpec::SubGraphSpec(a1[1], a2);
    v4 = v3 + 96;
    a1[1] = v3 + 96;
  }

  a1[1] = v4;
  return v4 - 96;
}

uint64_t std::function<void ()(SpatialSplitMode)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::vector<ANECProcedureInfo>::__emplace_back_slow_path<ANECProcedureInfo>(uint64_t a1, CFTypeRef *a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 16) - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ANECProcedureInfo>>(a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  ANECProcedureInfo::ANECProcedureInfo((168 * v2), a2);
  v15 = 168 * v2 + 168;
  v7 = *(a1 + 8);
  v8 = (168 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ANECProcedureInfo>,ANECProcedureInfo*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ANECProcedureInfo>::~__split_buffer(&v13);
  return v12;
}

void sub_1A69DE2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ANECProcedureInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ANECProcedureInfo::ANECProcedureInfo(ANECProcedureInfo *this, CFTypeRef *a2)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  v9 = (this + 8);
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  v4 = (this + 32);
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 7) = this + 64;
  v5 = (this + 56);
  *(this + 9) = 0;
  *(this + 80) = 0;
  v6 = this + 80;
  *(this + 15) = 0;
  *(this + 14) = this + 120;
  v7 = (this + 112);
  *(this + 104) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 17) = this + 144;
  v8 = (this + 136);
  *(this + 19) = 0;
  *(this + 160) = 0;
  *(this + 41) = 0;
  ANECProcedureInfo::SetANECIRDict(this, *a2);
  if (this != a2)
  {
    std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,ZinIrName>,std::__tree_node<std::__value_type<std::string,ZinIrName>,void *> *,long>>(v9, a2[1], a2 + 2);
    std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,ZinIrName>,std::__tree_node<std::__value_type<std::string,ZinIrName>,void *> *,long>>(v4, a2[4], a2 + 5);
    std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,ZinIrName>,std::__tree_node<std::__value_type<std::string,ZinIrName>,void *> *,long>>(v5, a2[7], a2 + 8);
  }

  std::__optional_storage_base<std::map<std::string,std::string>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::map<std::string,std::string>,false> const&>(v6, (a2 + 10));
  if (this != a2)
  {
    std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,long>,std::__tree_node<std::__value_type<std::string,long>,void *> *,long>>(v7, a2[14], a2 + 15);
    std::__tree<std::__value_type<std::string,long>,std::__map_value_compare<std::string,std::__value_type<std::string,long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,long>,std::__tree_node<std::__value_type<std::string,long>,void *> *,long>>(v8, a2[17], a2 + 18);
  }

  *(this + 20) = a2[20];
}

void sub_1A69DE428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  ZinIrLiveIORankMaps::~ZinIrLiveIORankMaps(v15);
  if (*(v11 + 104) == 1)
  {
    std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(v14, *(v11 + 88));
  }

  std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::destroy(v13, *v10);
  std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::destroy(v12, *v17);
  std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::destroy(a10, *v16);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,ZinIrName>,std::__tree_node<std::__value_type<std::string,ZinIrName>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::__value_type<std::string,ZinIrName>::operator=[abi:ne200100]((v8 + 4), (v9 + 4));
          leaf_high = std::__tree<std::string>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::string>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::__emplace_multi<std::pair<std::string const,ZinIrName> const&>(v5);
  }

  return result;
}

std::string *std::__value_type<std::string,ZinIrName>::operator=[abi:ne200100](std::string *a1, const std::string *a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=(a1 + 1, a2 + 1);
  std::string::operator=(a1 + 2, a2 + 2);
  std::string::operator=(a1 + 3, a2 + 3);
  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_1A69DE6FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ZinIrName>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A69DE798(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ZinIrName>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,ZinIrName>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }

  return this;
}

void sub_1A69DE87C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::map<std::string,std::string>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::map<std::string,std::string>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v4 = (a2 + 8);
      v3 = *a2;

      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(a1, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    std::map<std::string,std::string>::map[abi:ne200100](a1, a2);
    *(a1 + 24) = 1;
  }
}

uint64_t **std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          leaf_high = std::__tree<std::string>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::string>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_multi<std::pair<std::string const,std::string> const&>(v5);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_1A69DEBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ANECProcedureInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ANECProcedureInfo>,ANECProcedureInfo*>(int a1, char **a2, char **a3, ANECProcedureInfo *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      ANECProcedureInfo::ANECProcedureInfo(this, v8);
      v8 += 21;
      this = (this + 168);
      v7 -= 168;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      ANECProcedureInfo::~ANECProcedureInfo(v6);
      v6 += 21;
    }
  }
}

void sub_1A69DEC98(_Unwind_Exception *exception_object)
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

uint64_t std::__split_buffer<ANECProcedureInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 168;
    ANECProcedureInfo::~ANECProcedureInfo((i - 168));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_0,std::allocator<ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_0>,void ()(SpatialSplitMode)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19F31D8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_0,std::allocator<ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_0>,void ()(SpatialSplitMode)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  ZinIrCompilerParameters::setSpatialSplitMode(v3, v2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A69DEE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_0,std::allocator<ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_0>,void ()(SpatialSplitMode)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(SpatialSplitMode)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_1,std::allocator<ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_1>,void ()(SpatialSplitMode)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F19F3268;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_1,std::allocator<ANECGetCompilerOptions(__CFDictionary const*,ZinIrCompilerParameters &,ZinIrPlistCompilationStatus &)::$_1>,void ()(SpatialSplitMode)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ANECCreateProcedureInfoForSingleProcedureNetwork(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Could not sanitize the ANEC IR plist.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: Could not find inputs or outputs in the plist.", a5, a6, a7, a8, v8);
}

void ANECCreateCompilerPlistDictionaryFromANECIR(char *a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*a1 >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: Could not create dictionary from file %s", &v3, 0xCu);
}

void ANECCreateFileBacking(uint64_t a1, uint8_t *buf, int a3)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2080;
  *(buf + 10) = a1;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create temporary directory. %d: %s", buf, 0x12u);
}

void HandleException(uint64_t a1)
{
  OUTLINED_FUNCTION_1_15();
  *v2 = 136315138;
  *(v2 + 4) = v3;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", v4, 0xCu);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void CleanUp()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_15();
  v1 = 136315138;
  v2 = v0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s\n", &v1, 0xCu);
}

uint64_t ZinIrNormUnitBase::TensorDimensions(ZinIrNormUnitBase *this, const ZinIrHalParameters *a2, ZinTensorDimensions *a3, ZinIrUnitStatus *a4)
{
  v4 = *(this + 1);
  v5 = *(v4 + 8);
  v6 = *(v4 + 24);
  *(a3 + 4) = *(v4 + 40);
  *a3 = v5;
  *(a3 + 1) = v6;
  return 0;
}

uint64_t ZinPELayer::ZinPELayer(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __int128 *a6, __int128 *a7)
{
  v9 = a3[1];
  v12 = *a3;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinANELayer::ZinANELayer(a1, a2, &v12, a4, a5, a6);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  *a1 = &unk_1F19F3300;
  v10 = *a7;
  *(a1 + 616) = *(a7 + 2);
  *(a1 + 600) = v10;
  return a1;
}

void sub_1A69DF33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

ZinGOCLayer *ZinPELayer::GetPostScaleAndBiasFromGOC@<X0>(uint64_t *__return_ptr a1@<X8>, ZinGOCLayer *this@<X0>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 20) = 0;
  if (this)
  {
    v2 = this;
    if (*(this + 20))
    {
      if ((ZinGOCLayer::IsSingularScaleBias(this) & 1) == 0)
      {
        ZinAssertImpl("Cannot create PELayer with non-singular scale and bias.");
      }

      LODWORD(v5) = 0;
      BYTE4(v5) = 0;
      if (ZinGOCLayer::GetSingularScale(v2, &v5, &v5 + 4))
      {
        *a1 = v5;
      }

      else
      {
        *a1 = 1065353216;
        *(a1 + 4) = 0;
      }

      *(a1 + 8) = 1;
      LODWORD(v4) = 0;
      BYTE4(v4) = 0;
      this = ZinGOCLayer::GetSingularBias(v2, &v4, &v4 + 4);
      if (this)
      {
        *(a1 + 12) = v4;
      }

      else
      {
        *(a1 + 3) = 0;
        *(a1 + 16) = 0;
      }

      *(a1 + 20) = 1;
    }
  }

  return this;
}

void ZinPELayer::GetProjectedCoreInputDims(ZinPELayer *this@<X0>, uint64_t a2@<X8>)
{
  *&v12 = *MEMORY[0x1E69E9840];
  ZinANELayer::GetTensorDimsAfterTexture(a2, this);
  if ((*(*this + 680))(this))
  {
    v4 = *(a2 + 8);
    *(a2 + 8) = *(a2 + 24);
    *(a2 + 24) = v4;
  }

  if ((*(*this + 696))(this))
  {
    v5 = (*(*this + 736))(this);
    v6 = *(a2 + 16);
    v10[0] = *a2;
    v10[1] = v6;
    v11 = *(a2 + 32);
    v8 = 0;
    v9 = 0;
    __p = 0;
    std::vector<ZinTensorDimensions>::__init_with_size[abi:ne200100]<std::__wrap_iter<ZinTensorDimensions const*>,std::__wrap_iter<ZinTensorDimensions const*>>(&__p, v10, &v12, 1uLL);
    (*(*v5 + 240))(v5, &__p, a2);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }
}

void sub_1A69DF5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinPELayer::IsChainableConsumer(void *a1, int a2)
{
  if (a2 == 2)
  {
    return 0;
  }

  if (a2 == 1)
  {
    if (((*(*a1 + 704))(a1) & 1) != 0 || ((*(*a1 + 688))(a1) & 1) != 0 || RawOrShared<ZinTextureLayer>::unwrap_const_ptr((a1 + 49)) && a1[47] == 1)
    {
      return 0;
    }
  }

  else if (!a2 && (((*(*a1 + 696))(a1) & 1) != 0 || ((*(*a1 + 680))(a1) & 1) != 0 || RawOrShared<ZinTextureLayer>::unwrap_const_ptr((a1 + 49)) && !a1[47]))
  {
    return 0;
  }

  return 1;
}

uint64_t ZinPELayer::HasInputTranspose(ZinPELayer *this, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = *(*this + 688);

    return v3();
  }

  if (!a2)
  {
    v3 = *(*this + 680);

    return v3();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinPELayer::HasInputTranspose();
  }

  return 0;
}

uint64_t ZinPELayer::IsQualifiedForInPlace(ZinIrOpLayer *a1, unint64_t a2, int a3, ZinTensorFamilyUtil *a4)
{
  IsQualifiedForInPlace = ZinANELayer::IsQualifiedForInPlace(a1, a2, a3, a4);
  v7 = *a1;
  if (a2)
  {
    if (((*(v7 + 688))(a1) & 1) == 0 && ((*(*a1 + 704))(a1) & 1) == 0)
    {
LABEL_8:
      v8 = (*(*a1 + 440))(a1) ^ 1;
      return IsQualifiedForInPlace & v8;
    }
  }

  else if (((*(v7 + 680))(a1) & 1) == 0 && ((*(*a1 + 696))(a1) & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = 0;
  return IsQualifiedForInPlace & v8;
}

double ZinPELayer::SetL2SrcStrides(ZinPELayer *this, unint64_t a2, const ZinTensorDimensions *a3, int64_t a4)
{
  InputTensor = ZinIrOpLayer::GetInputTensor(this, a2);
  v29 = 0;
  if (ZinMemSourceIndexTranslator::GetL2SrcType(this, a2, &v29) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinPELayer::SetL2SrcStrides();
  }

  TileSrc = ZinMirL2Config::GetTileSrc(*(this + 65) + 112, v29);
  v10 = TileSrc[3];
  v12 = *TileSrc;
  v11 = TileSrc[1];
  v27 = TileSrc[2];
  v28 = v10;
  v25 = v12;
  v26 = v11;
  IsResident = ZinIrTensor::IsResident(InputTensor);
  ZinIrTensor::GetDimensionOrderHint(InputTensor, __p);
  v14 = v24;
  Hal = ZinIrTarget::GetHal(*(*(this + 4) + 200));
  v16 = (*(*Hal + 16))(Hal);
  ZinANELayer::SetL2SrcStridesCommon(a3, a4, IsResident, InputTensor + 8, v14, v16, &v25, v17);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v18 = ZinIrTensor::IsResident(InputTensor);
  v19 = *(this + 65);
  if (v18)
  {
    v20 = *(v19 + 96);
    v21 = InputTensor[8] == 1 && v20 > 1;
    if (v21 || v20 == 1)
    {
      *(&v26 + 1) = 0;
    }
  }

  *&result = ZinMirL2Config::SetTileSrc(v19 + 112, &v25, v29).n128_u64[0];
  return result;
}

void sub_1A69DFAB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinPELayer::HasOutputScaleOrBias(ZinPELayer *this)
{
  if (*(this + 608))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 620);
  }

  return v1 & 1;
}

uint64_t ZinPELayer::Hash(ZinPELayer *this, int *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = ZinANELayer::Hash(this, a2);
  if (!v4)
  {
    return v4;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  __p = 0;
  v14 = 0;
  v15 = 0;
  if (*(this + 608) == 1)
  {
    std::vector<float>::push_back[abi:ne200100](&v16, this + 150);
    if (*(this + 608) != 1)
    {
      goto LABEL_24;
    }

    std::vector<unsigned char>::push_back[abi:ne200100](&__p, this + 604);
  }

  if (*(this + 620) != 1)
  {
    goto LABEL_8;
  }

  std::vector<float>::push_back[abi:ne200100](&v16, this + 153);
  if ((*(this + 620) & 1) == 0)
  {
LABEL_24:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  std::vector<unsigned char>::push_back[abi:ne200100](&__p, this + 616);
LABEL_8:
  v5 = __p;
  if (v17 != v16 && v14 != __p)
  {
    v19[0] = *a2;
    v19[1] = ZinHash(v16, v17 - v16);
    if (__p == v14)
    {
      v6 = 0;
    }

    else
    {
      v6 = ZinHash(__p, v14 - __p);
    }

    v19[2] = v6;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v10, v19, &v20, 3uLL);
    v7 = v10;
    if (v10 == v11)
    {
      v8 = 0;
    }

    else
    {
      v8 = ZinHash(v10, v11 - v10);
      v7 = v10;
    }

    *a2 = v8;
    if (v7)
    {
      v11 = v7;
      operator delete(v7);
    }

    v5 = __p;
  }

  if (v5)
  {
    v14 = v5;
    operator delete(v5);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return v4;
}

void sub_1A69DFCA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t FifoModeUtilV1::CanEnableNEOutputFIFOMode(uint64_t a1, ZinEngineLayerMirInfo **a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a2 || (*((*(*a2 + 5))(a2, 0, a3, a4) + 219) & 1) != 0 || a3 == 3 && (*(*(a1 + 8) + 1377) & 1) != 0)
  {
    return 0;
  }

  v48 = 0;
  v17 = (*(*a2 + 5))(a2, 0);
  L2FormatSize = ZinMirL2Config::GetL2FormatSize(v17, v18);
  v19 = *(ZinMirL2Config::GetTileSrc(a2[65] + 112, 0) + 56);
  if (IsFormatDMAConvertibleToFP16(v19))
  {
    v20 = 3;
  }

  else
  {
    v20 = v19;
  }

  if (ZinTensorFormatGetSizeInBytes(v20, &v48))
  {
    ZinAssertImpl("Error in getting tensor format size in bytes");
  }

  v21 = v48;
  ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(a2[65]);
  NumNeededNEsNextPow2 = MirInfoChannelAssignment::GetNumNeededNEsNextPow2(ChannelAssignment);
  v23 = ZinEngineLayerMirInfo::GetChannelAssignment(a2[65]);
  OCGSizeNextPow2 = MirInfoChannelAssignment::GetOCGSizeNextPow2(v23);
  v24 = (*(*a2 + 47))(a2);
  v25 = (*(*a2 + 55))(a2);
  __src = a6;
  v46 = 0;
  v47 = 0;
  __p = 0;
  std::vector<DimensionMapping>::__init_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&__p, &__src, v50, 1uLL);
  if (*(*(a1 + 8) + 1376) == 1)
  {
    __src = a5;
    v50[0] = a6;
    v50[1] = a7;
    std::vector<DimensionMapping>::__assign_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&__p, &__src, &v51, 3uLL);
  }

  v26 = (*(*a2 + 50))(a2, 4);
  v27 = (*(*a2 + 50))(a2, 2);
  v28 = OCGSizeNextPow2 * NumNeededNEsNextPow2;
  v29 = __p;
  if (__p != v46)
  {
    v30 = *(a1 + 8);
    do
    {
      v31 = OCGSizeNextPow2 * NumNeededNEsNextPow2;
      v32 = v27 <= v28;
      if ((v25 & 1) == 0)
      {
        v33 = *(v30 + 632) / *v29 / v21;
        v31 = v33 * v24;
        if (a8)
        {
          v34 = 0;
        }

        else
        {
          v34 = v26 > v33;
        }

        v32 = !v34;
      }

      v35 = (L2FormatSize * a3 * v31) & 0x3F;
      if (*(v30 + 1984))
      {
        if (v35 != 0 && !v32)
        {
          goto LABEL_48;
        }
      }

      else if (v35)
      {
        goto LABEL_48;
      }

      ++v29;
    }

    while (v29 != v46);
  }

  if (v25)
  {
    v36 = v27;
    v37 = *(a2[65] + 60);
    if (IsFormatDMAConvertibleToFP16(v37))
    {
      v38 = 3;
    }

    else
    {
      v38 = v37;
    }

    v27 = v36;
    if ((v38 - 1) >= 2)
    {
      if (v38 == 3)
      {
        if ((v28 & 7) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_48;
      }

      if (v38 != 12)
      {
        goto LABEL_48;
      }
    }

    if ((v28 & 0xF) == 0)
    {
LABEL_41:
      v40 = __p;
      v39 = *(a1 + 8);
      if (__p != v46)
      {
        while (1)
        {
          v41 = *(v39 + 632) / *v40 / v21;
          if (v26 > v41 && (v41 * v24 % a3 || *(a2[65] + 306)))
          {
            goto LABEL_48;
          }

          if (++v40 == v46)
          {
            goto LABEL_46;
          }
        }
      }

      goto LABEL_46;
    }

LABEL_48:
    v15 = 0;
    goto LABEL_50;
  }

  if (v27 <= v28)
  {
    goto LABEL_49;
  }

  if (v28 % a3 || *(a2[65] + 306))
  {
    goto LABEL_48;
  }

  v39 = *(a1 + 8);
LABEL_46:
  if ((*(v39 + 1297) & 1) == 0 && v27 % a3)
  {
    goto LABEL_48;
  }

LABEL_49:
  v15 = 1;
LABEL_50:
  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }

  return v15;
}

void sub_1A69E026C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL FifoModeUtilV1::CanEnablePEOutputFIFOMode(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9)
{
  if (!a2 || ((*(*a2 + 440))(a2) & 1) != 0 || (*((*(*a2 + 40))(a2, 0) + 219) & 1) != 0)
  {
    return 0;
  }

  v14 = *(a3 + 24);
  v16 = 0;
  if (ZinTensorFormatGetSizeInBytes(a9, &v16))
  {
    ZinAssertImpl("Error in getting tensor format size in bytes");
  }

  return v14 <= a4 || ((a8 * a6 * (a4 / v16)) & 0x3FLL) == 0;
}

ZinEngineLayerMirInfo **FifoModeUtilV2::CanEnableNEOutputFIFOMode(uint64_t a1, ZinEngineLayerMirInfo **a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a8;
  v16 = a9;
  ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(a2[65]);
  NumNeededNEsNextPow2 = MirInfoChannelAssignment::GetNumNeededNEsNextPow2(ChannelAssignment);
  v19 = ZinEngineLayerMirInfo::GetChannelAssignment(a2[65]);
  OCGSizeNextPow2 = MirInfoChannelAssignment::GetOCGSizeNextPow2(v19);
  if (!(*(*a2 + 55))(a2))
  {
    goto LABEL_11;
  }

  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = v9;
  v26 = *(a2[65] + 60);
  if (IsFormatDMAConvertibleToFP16(v26))
  {
    v27 = 3;
  }

  else
  {
    v27 = v26;
  }

  v9 = v25;
  a6 = v24;
  a5 = v23;
  a4 = v22;
  a3 = v21;
  v16 = a9;
  if ((v27 - 1) >= 2)
  {
    if (v27 == 3)
    {
      if (((OCGSizeNextPow2 * NumNeededNEsNextPow2) & 7) != 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    if (v27 != 12)
    {
      return 0;
    }
  }

  if (((OCGSizeNextPow2 * NumNeededNEsNextPow2) & 0xF) != 0)
  {
    return 0;
  }

LABEL_11:
  v29 = *(a1 + 8);

  return UtilCanEnableNEOutputFIFOMode(a2, a3, a4, a5, a6, v9, v16, v29);
}

ZinEngineLayerMirInfo **UtilCanEnableNEOutputFIFOMode(ZinEngineLayerMirInfo **result, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, char a7, void *a8)
{
  if (!result)
  {
    return result;
  }

  v14 = result;
  v45 = 0;
  v15 = (*(*result + 67))(result, 0);
  if (GetHWChannelFormat(*(v15 + 104), &v45))
  {
    ZinAssertImpl("[Error] FifoModeUtil: Invalid input tensor format.");
  }

  v16 = v45 == 2;
  ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(v14[65]);
  CPUSubtype = ZinIrTarget::GetCPUSubtype(ChannelAssignment);
  if (a6 == 3)
  {
    v19 = a8[155];
    v20 = v19 >> (a7 + v16);
    goto LABEL_7;
  }

  if (a6 == 4)
  {
    v19 = a8[153];
    v20 = v19 >> v16;
LABEL_7:
    a4 = a8[109] / v19;
    goto LABEL_9;
  }

  v21 = ZinEngineLayerMirInfo::GetChannelAssignment(v14[65]);
  v20 = (a8[79] / a5) >> (a7 + v16) << MirInfoChannelAssignment::GetFatTileEnable(v21);
LABEL_9:
  v22 = a4 << CPUSubtype;
  v23 = ZinEngineLayerMirInfo::GetChannelAssignment(v14[65]);
  NumNeededNEsNextPow2 = MirInfoChannelAssignment::GetNumNeededNEsNextPow2(v23);
  v25 = ZinEngineLayerMirInfo::GetChannelAssignment(v14[65]);
  v26 = MirInfoChannelAssignment::GetOCGSizeNextPow2(v25) * NumNeededNEsNextPow2;
  v27 = (*(*v14 + 50))(v14, 4);
  v28 = (*(*v14 + 50))(v14, 2);
  v29 = (*(*v14 + 47))(v14);
  v30 = v27 <= v20;
  v31 = v28 <= v26;
  v32 = (*(*v14 + 55))(v14);
  if (v32)
  {
    v33 = v26;
  }

  else
  {
    v33 = v29 * v20;
  }

  if (v32)
  {
    v26 = v29 * v20;
    v34 = v31;
  }

  else
  {
    v34 = v30;
  }

  if (v32)
  {
    v31 = v30;
  }

  v35 = (*(*v14 + 50))(v14, 3);
  if (*((*(*v14 + 5))(v14, 0) + 219) != 1)
  {
    LODWORD(v44) = 0;
    v39 = (*(*v14 + 5))(v14, 0);
    if (!GetHWDMAFormatMode(*(v39 + 104), &v44))
    {
      v37 = GetHWDMAFormatBytes(&v44, a2) * v33 % a8[70];
      v38 = 1;
      goto LABEL_23;
    }

    return 0;
  }

  v44 = 1;
  v36 = (*(*v14 + 5))(v14, 0);
  if (GetImbSize(v36, &v44))
  {
    return 0;
  }

  v37 = v33 % v44;
  v38 = (v29 >> 32) * v22 % v44 == 0;
LABEL_23:
  if (v26 % a2)
  {
    v40 = 0;
  }

  else
  {
    v40 = *(v14[65] + 306) == 0;
  }

  result = 0;
  if (v37)
  {
    v41 = v34;
  }

  else
  {
    v41 = 1;
  }

  if (v41 == 1 && (v35 <= v22 || v38) && (v31 || v40))
  {
    v42 = (*(*v14 + 5))(v14, 0);
    return !ZinCropOffsetUtil::HasUnalignedOutputCropX(*(v42 + 104), a3, a8);
  }

  return result;
}

BOOL UtilCanEnablePEOutputFIFOMode(_BOOL8 result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  if ((*(*result + 376))(result) == 0x200000002)
  {
    return 0;
  }

  if ((*(*v11 + 440))(v11))
  {
    return 0;
  }

  v12 = (*(*v11 + 400))(v11, 4);
  if (*(v11[65] + 1224))
  {
    return 0;
  }

  v13 = v12;
  if (*(v11[11] + 8) == 89 && RawOrShared<ZinReductionLayer>::unwrap_const_ptr((v11 + 120)))
  {
    return 1;
  }

  if (*((*(*v11 + 40))(v11, 0) + 219) != 1)
  {
    v22 = 0;
    v19 = (*(*v11 + 40))(v11, 0);
    if (!GetHWDMAFormatMode(*(v19 + 104), &v22))
    {
      HWDMAFormatBytes = GetHWDMAFormatBytes(&v22, a4);
      if (v13 <= a2 || !(HWDMAFormatBytes * a2 % *(a6 + 560)))
      {
        v21 = (*(*v11 + 40))(v11, 0);
        return !ZinCropOffsetUtil::HasUnalignedOutputCropX(*(v21 + 104), a5, a6);
      }
    }

    return 0;
  }

  v23 = 1;
  v14 = (*(*v11 + 40))(v11, 0);
  if (GetImbSize(v14, &v23))
  {
    return 0;
  }

  v15 = (*(*v11 + 400))(v11, 3);
  NumNeededNEs = MirInfoChannelAssignment::GetNumNeededNEs((v11[65] + 160));
  if (v15 > NumNeededNEs)
  {
    if (NumNeededNEs % v23)
    {
      return 0;
    }
  }

  if (v13 <= a2)
  {
    if (v15 <= a3)
    {
      return 1;
    }

    v17 = v23;
    return a3 % v17 == 0;
  }

  v17 = v23;
  result = a2 % v23 == 0;
  if (a2 % v23)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15 > a3;
  }

  if (v18)
  {
    return a3 % v17 == 0;
  }

  return result;
}

BOOL UtilCanEnableNEInputFIFOMode(_BOOL8 result, unint64_t a2, const ZinMirL2Config::NE *a3, unint64_t a4, unint64_t a5)
{
  if (result)
  {
    v9 = result;
    InputTensor = ZinIrOpLayer::GetInputTensor(result, a2);
    result = HasValidL2AndDMAGranularityConstraintForDRAMInputFIFOMode(InputTensor, a5);
    if (result)
    {
      if (*(a3 + 40) - 3 < 2)
      {
        return 0;
      }

      v11 = *(a3 + 2);
      Procedures = ZinRtGraph::GetProcedures(a3);
      if (v11 * (1 << ZinIrTarget::GetCPUSubtype(Procedures)) < a4)
      {
        return 0;
      }

      result = 0;
      v13 = *(a3 + 2);
      if (v13 == *a3 && v13 == *(a3 + 1))
      {
        v14 = ZinRtGraph::GetProcedures(a3);
        OCGSizeNextPow2 = MirInfoChannelAssignment::GetOCGSizeNextPow2(v14);
        v16 = ZinRtGraph::GetProcedures(a3);
        v17 = MirInfoChannelAssignment::GetActiveNEPerCluster(v16) * OCGSizeNextPow2;
        if (v17 < (*(*v9 + 400))(v9, 2))
        {
          return 0;
        }

        (*(*v9 + 160))(v25, v9);
        if (v26 == 1)
        {
          (*(*v9 + 160))(v24, v9);
          if (v24[2] != 1)
          {
            return 0;
          }

          (*(*v9 + 160))(v22, v9);
          if (v23 != 1)
          {
            return 0;
          }
        }

        if (*(v9[11] + 8) == 98)
        {
          v18 = v9[65];
          if (v18)
          {
            if (a2 >= 2)
            {
              std::__throw_out_of_range[abi:ne200100]("array::at");
            }

            v19 = *(v18 + 8 * a2 + 1240);
            v20 = *(v18 + 4 * a2 + 1216);
          }

          else
          {
            v19 = 0;
            LOBYTE(v20) = 0;
          }

          v21 = ZinCountOnes<unsigned int>(v19);
          result = ZinIsEven(a5 - v21);
          if (result)
          {
            return ZinIsEven(v20);
          }
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t UtilCanEnablePEInputFIFOMode(uint64_t result, int a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  if (result)
  {
    v9 = result;
    v13 = 0;
    if (ZinMemSourceIndexTranslator::GetIncomingSrcIndexFromL2SrcType(result, a2, &v13))
    {
      ZinAssertImpl("L2 index translator failed.");
    }

    InputTensor = ZinIrOpLayer::GetInputTensor(v9, v13);
    valid = HasValidL2AndDMAGranularityConstraintForDRAMInputFIFOMode(InputTensor, a5);
    result = 0;
    if (a3 >= a4 && valid)
    {
      if (a2 == 1)
      {
        if ((*(*v9 + 704))(v9) & 1) != 0 || ((*(*v9 + 688))(v9))
        {
          return 0;
        }

        v12 = *(*(v9 + 11) + 8);
        if (v12 == 91)
        {
          if ((*(*v9 + 608))(v9))
          {
            return 0;
          }

          v12 = *(*(v9 + 11) + 8);
        }

        if (v12 != 92)
        {
          return 1;
        }
      }

      else if (a2 || ((*(*v9 + 696))(v9) & 1) == 0 && ((*(*v9 + 680))(v9) & 1) == 0)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t GetImbSize(const ZinIrTensor *a1, unint64_t *a2)
{
  *a2 = 1;
  if (*(a1 + 219) != 1)
  {
    return 0;
  }

  InterchangeDescriptor = ZinIrTensor::GetInterchangeDescriptor(a1);
  if (BYTE1(InterchangeDescriptor))
  {
    if (BYTE1(InterchangeDescriptor) == 1)
    {
      result = 0;
      v5 = 32;
      goto LABEL_8;
    }

    if (BYTE1(InterchangeDescriptor) == 2)
    {
      result = 0;
      v5 = 16;
LABEL_8:
      *a2 = v5;
      return result;
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      GetImbSize();
    }

    return 3;
  }
}

BOOL HasValidL2AndDMAGranularityConstraintForDRAMInputFIFOMode(const ZinIrTensor *a1, unint64_t a2)
{
  v4 = *(a1 + 26);
  if (IsFormatDMAConvertibleToFP16(v4))
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (!IsPrimaryFormat(v5))
  {
    ZinAssertImpl("L2 format should be one of the supported primary formats.");
  }

  if ((v5 - 1) < 2 || v5 == 12)
  {
    v7 = 16;
  }

  else
  {
    if (v5 != 3)
    {
      ZinAssertImpl("Invalid primary format");
    }

    v7 = 8;
  }

  if (a2 == 3)
  {
    a2 = 1;
  }

  v10 = 0;
  if (GetHWDMAFormatMode(v4, &v10))
  {
    ZinAssertImpl("Invalid input DMA format");
  }

  if (*(a1 + 219) == 1)
  {
    v8 = 1;
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v8 = 8;
        return v8 <= v7;
      }

      if (v10 != 3)
      {
        return v8 <= v7;
      }
    }

    else
    {
      if (!v10)
      {
        v8 = 16;
        return v8 <= v7;
      }

      if (v10 != 1)
      {
        return v8 <= v7;
      }
    }

    ZinAssertImpl("Invalid input DMA format for compressed tensor");
  }

  v8 = 1;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v8 = 0x20 / a2;
    }

    else if (v10 == 3)
    {
      v8 = 0x10 / a2;
    }
  }

  else
  {
    if (v10 == 1)
    {
      v8 = 16;
    }

    if (!v10)
    {
      v8 = 0x40 / a2;
    }
  }

  return v8 <= v7;
}

__int128 *ZinIrHalH13::GetParams(ZinIrHalH13 *this)
{
  *(&v57 + 1) = *MEMORY[0x1E69E9840];
  {
    ZinIrHalH13::GetParams(void)const::ZinIrHalH13Parameters = xmmword_1A75959F0;
    *algn_1EB2911F0 = xmmword_1A7595A00;
    xmmword_1EB291200 = xmmword_1A7595A10;
    unk_1EB291210 = xmmword_1A7595A20;
    xmmword_1EB291220 = xmmword_1A7595A30;
    unk_1EB291230 = xmmword_1A7595A40;
    xmmword_1EB291240 = xmmword_1A7595A20;
    unk_1EB291250 = xmmword_1A7595A50;
    xmmword_1EB291260 = xmmword_1A7595A60;
    unk_1EB291270 = xmmword_1A7595A70;
    xmmword_1EB291280 = xmmword_1A7595A80;
    unk_1EB291290 = vdupq_n_s64(4uLL);
    qword_1EB2912A0 = 4;
    unk_1EB2912A8 = xmmword_1A75D55D8;
    unk_1EB2912B8 = unk_1A75D55E8;
    unk_1EB2912D8 = unk_1A75D55E8;
    unk_1EB2912C8 = xmmword_1A75D55D8;
    qword_1EB2912F8 = 4;
    xmmword_1EB2912E8 = xmmword_1A75D55F8;
    xmmword_1EB291300 = xmmword_1A7595A90;
    unk_1EB291310 = xmmword_1A7595AA0;
    xmmword_1EB291320 = xmmword_1A7595AA0;
    unk_1EB291330 = xmmword_1A7595AA0;
    xmmword_1EB291340 = xmmword_1A7595AB0;
    unk_1EB291350 = xmmword_1A7595AC0;
    xmmword_1EB291360 = vdupq_n_s64(0x10000uLL);
    unk_1EB291370 = xmmword_1EB291360;
    xmmword_1EB291380 = xmmword_1EB291360;
    unk_1EB291390 = xmmword_1A7595AD0;
    xmmword_1EB2913A0 = xmmword_1A7595AE0;
    unk_1EB2913B0 = xmmword_1A7595AF0;
    xmmword_1EB2913C0 = xmmword_1A7595B00;
    unk_1EB2913D0 = xmmword_1A7595B10;
    xmmword_1EB2913E0 = xmmword_1A7595B20;
    unk_1EB2913F0 = xmmword_1A7595B30;
    xmmword_1EB291400 = xmmword_1A7595B40;
    unk_1EB291410 = xmmword_1A7596750;
    xmmword_1EB291420 = vdupq_n_s64(2uLL);
    unk_1EB291430 = xmmword_1A7595B60;
    xmmword_1EB291440 = xmmword_1A7595B70;
    unk_1EB291450 = xmmword_1A7595B80;
    qword_1EB291460 = 64;
    xmmword_1EB291468 = 0u;
    qword_1EB291478 = 0x40000000;
    xmmword_1EB291480 = 0u;
    word_1EB291490 = 256;
    xmmword_1EB291498 = xmmword_1A7595B90;
    xmmword_1EB2914A8 = xmmword_1A7595BA0;
    xmmword_1EB2914B8 = xmmword_1A7595BB0;
    qword_1EB2914C8 = 0x10000;
    xmmword_1EB2914D8 = xmmword_1A7595BC0;
    dword_1EB2914E8 = 520097776;
    qword_1EB2914EC = 0xFFFFFFEB0000000BLL;
    xmmword_1EB2914F8 = xmmword_1A7595BD0;
    xmmword_1EB291508 = xmmword_1A7595BE0;
    xmmword_1EB291518 = xmmword_1A7595BF0;
    byte_1EB2914D0 = 32;
    v56 = vdupq_n_s64(8uLL);
    qword_1EB291538 = 0;
    xmmword_1EB291528 = 0u;
    std::vector<std::pair<unsigned long,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,unsigned long> const*,std::pair<unsigned long,unsigned long> const*>(&xmmword_1EB291528, v56.i8, &v57, 1uLL);
    xmmword_1EB291540 = xmmword_1A7595C00;
    *algn_1EB291550 = xmmword_1A7595C10;
    xmmword_1EB291560 = vdupq_n_s64(0x20uLL);
    unk_1EB291570 = xmmword_1A7595A50;
    xmmword_1EB291580 = vdupq_n_s64(8uLL);
    unk_1EB291590 = xmmword_1A7595C20;
    xmmword_1EB2915A0 = xmmword_1A7595C30;
    unk_1EB2915B0 = vdupq_n_s64(0x100uLL);
    xmmword_1EB2915C0 = vdupq_n_s64(0x80uLL);
    unk_1EB2915D0 = xmmword_1A7595C40;
    xmmword_1EB2915E0 = xmmword_1A7595C50;
    unk_1EB2915F0 = xmmword_1A7595C60;
    xmmword_1EB291600 = xmmword_1A7595C70;
    unk_1EB291610 = xmmword_1A7595C80;
    xmmword_1EB291620 = vdupq_n_s64(2uLL);
    unk_1EB291630 = xmmword_1A7595AA0;
    xmmword_1EB291640 = vdupq_n_s64(0x4000uLL);
    unk_1EB291650 = xmmword_1A7595C90;
    qword_1EB291660 = 0x100000101;
    dword_1EB291668 = 65537;
    word_1EB29166C = 257;
    byte_1EB29166E = 1;
    dword_1EB29167F = 0;
    xmmword_1EB29166F = 0u;
    byte_1EB291683 = 1;
    dword_1EB291684 = 0;
    word_1EB291688 = 0;
    qword_1EB29168A = 0x101000000010101;
    word_1EB291692 = 0;
    byte_1EB291694 = 0;
    xmmword_1EB291698 = xmmword_1A7595CA0;
    xmmword_1EB2916A8 = xmmword_1A7595CB0;
    qword_1EB2916B8 = 40;
    xmmword_1EB2916C0 = 0u;
    dword_1EB2916D0 = 16843009;
    *(&dword_1EB2916D0 + 3) = 16843009;
    qword_1EB2916D7 = 0;
    *(&qword_1EB2916D7 + 7) = 0;
    byte_1EB2916E2 = 1;
    qword_1EB2916E8 = 0;
    byte_1EB2916F0 = 0;
    dword_1EB2916F1 = 16843009;
    word_1EB2916F9 = 0;
    dword_1EB2916F5 = 0;
    dword_1EB2916FB = 16842753;
    word_1EB291707 = 0;
    qword_1EB2916FF = 0;
    dword_1EB291709 = 65793;
    word_1EB29170D = 0;
    byte_1EB29170F = 1;
    dword_1EB291710 = 0;
    word_1EB291714 = 256;
    word_1EB29171A = 0;
    dword_1EB291716 = 0;
    dword_1EB29171C = 256;
    qword_1EB291728 = -1;
    unk_1EB291730 = -1;
    qword_1EB291720 = 128;
    word_1EB291738 = 0;
    dword_1EB29173C = 0;
    word_1EB291740 = 1;
    byte_1EB291742 = 1;
    *(&qword_1EB291743 + 6) = 0;
    qword_1EB291743 = 0;
    qword_1EB291751 = 0x1000100000606;
    word_1EB291759 = 0;
    std::string::__init(&qword_1EB291760, "Simple", 6uLL);
    qword_1EB291778 = 0x1000000;
    dword_1EB291784 = 0;
    unk_1EB291788 = 0;
    dword_1EB291780 = 1071225242;
    unk_1EB291790 = xmmword_1A7595CC0;
    unk_1EB2917A0 = vdupq_n_s64(0x40uLL);
    unk_1EB2917B0 = xmmword_1A7595CD0;
    qword_1EB2917C0 = 8;
    byte_1EB2917C8 = 0;
    unk_1EB2917CC = 0xF3E800000;
    byte_1EB2917D4 = 0;
    v55 = xmmword_1A7595CE0;
    qword_1EB2917E0 = 0;
    unk_1EB2917E8 = 0;
    qword_1EB2917D8 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB2917D8, &v55, v56.i32, 4uLL);
    v52[0] = xmmword_1A75D5610;
    v52[1] = unk_1A75D5620;
    *v53 = xmmword_1A75D5630;
    *&v53[12] = *(&xmmword_1A75D5630 + 12);
    qword_1EB2917F8 = 0;
    unk_1EB291800 = 0;
    qword_1EB2917F0 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB2917F0, v52, &v54, 0xFuLL);
    v50 = 25;
    v49[4] = xmmword_1A75D568C;
    v49[5] = unk_1A75D569C;
    v49[6] = xmmword_1A75D56AC;
    v49[0] = xmmword_1A75D564C;
    v49[1] = unk_1A75D565C;
    v49[2] = xmmword_1A75D566C;
    v49[3] = unk_1A75D567C;
    qword_1EB291808 = 0;
    qword_1EB291810 = 0;
    qword_1EB291818 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB291808, v49, v51, 0x1DuLL);
    v47 = 42;
    v46[6] = xmmword_1A75D5720;
    v46[7] = unk_1A75D5730;
    v46[8] = xmmword_1A75D5740;
    v46[9] = unk_1A75D5750;
    v46[2] = xmmword_1A75D56E0;
    v46[3] = unk_1A75D56F0;
    v46[4] = xmmword_1A75D5700;
    v46[5] = unk_1A75D5710;
    v46[0] = xmmword_1A75D56C0;
    v46[1] = unk_1A75D56D0;
    qword_1EB291820 = 0;
    qword_1EB291828 = 0;
    qword_1EB291830 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB291820, v46, v48, 0x29uLL);
    v34 = 2;
    v35 = xmmword_1A7595CF0;
    v36 = 4354;
    v37 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v14, &v34, &v38, 1uLL);
    LODWORD(v38) = 641877825;
    v39 = 0;
    v40 = 0;
    *(&v38 + 1) = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(&v38 + 1, v14, v15, (v15 - v14) >> 5);
    v30 = 10;
    v31 = vdupq_n_s64(1uLL);
    v32 = 2049;
    v33 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v11, &v30, &v34, 1uLL);
    v41 = 642527542;
    memset(v42, 0, sizeof(v42));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v42, v11, v12, (v12 - v11) >> 5);
    LODWORD(v26) = 3;
    v27 = vdupq_n_s64(1uLL);
    v28 = 1794;
    v29 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v8, &v26, &v30, 1uLL);
    v43 = 642527336;
    v45[0] = 0;
    v45[1] = 0;
    v44 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(&v44, v8, v9, (v9 - v8) >> 5);
    std::map<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>::map[abi:ne200100](qword_1EB291838, &v38, 3);
    word_1EB291850 = 0;
    byte_1EB291852 = 1;
    *algn_1EB291853 = 0;
    qword_1EB291858 = 0;
    *(&qword_1EB291858 + 7) = 0;
    byte_1EB291867 = 1;
    unk_1EB291868 = vdupq_n_s64(0x10000uLL);
    unk_1EB291878 = unk_1EB291868;
    qword_1EB291888 = 0x10000;
    xmmword_1EB291890 = 0u;
    unk_1EB2918A0 = 0u;
    dword_1EB2918B0 = 257;
    word_1EB2918B4 = 1;
    unk_1EB2918B8 = xmmword_1A75D5768;
    unk_1EB2918C8 = unk_1A75D5778;
    qword_1EB2918D8 = 8;
    qword_1EB2918F0 = 0;
    unk_1EB2918E0 = xmmword_1A7595D00;
    v25[2] = xmmword_1A75D57B0;
    v25[3] = unk_1A75D57C0;
    v25[4] = xmmword_1A75D57D0;
    v25[0] = xmmword_1A75D5790;
    v25[1] = unk_1A75D57A0;
    qword_1EB2918F8 = 0;
    unk_1EB291900 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB2918F0, v25, &v26, 0xAuLL);
    v20 = xmmword_1A75D57E0;
    *&v21[0] = 0x41CAD27480000000;
    qword_1EB291910 = 0;
    unk_1EB291918 = 0;
    qword_1EB291908 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB291908, &v20, v21 + 1, 3uLL);
    v22 = xmmword_1A75D57F8;
    v23 = 0x41DFC8BFD0000000;
    qword_1EB291928 = 0;
    unk_1EB291930 = 0;
    qword_1EB291920 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB291920, &v22, &v24, 3uLL);
    v21[5] = xmmword_1A75D5870;
    v21[6] = unk_1A75D5880;
    v21[7] = xmmword_1A75D5890;
    v21[8] = unk_1A75D58A0;
    v21[1] = xmmword_1A75D5830;
    v21[2] = unk_1A75D5840;
    v21[3] = xmmword_1A75D5850;
    v21[4] = unk_1A75D5860;
    v20 = xmmword_1A75D5810;
    v21[0] = unk_1A75D5820;
    std::map<double,double>::map[abi:ne200100](qword_1EB291938, &v20, 10);
    xmmword_1EB291950 = xmmword_1A7595D10;
    v17[0] = xmmword_1A75D58B0;
    v17[1] = unk_1A75D58C0;
    v17[2] = xmmword_1A75D58D0;
    v18 = 27;
    qword_1EB291968 = 0;
    unk_1EB291970 = 0;
    qword_1EB291960 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB291960, v17, v19, 0xDuLL);
    qword_1EB291978 = 2;
    unk_1EB291980 = xmmword_1A7595D20;
    unk_1EB291990 = xmmword_1A7595D30;
    qword_1EB2919A0 = 0x101010101010101;
    *(&qword_1EB2919A0 + 5) = 0x101010101010101;
    unk_1EB2919AD = 0;
    dword_1EB2919B8 = 257;
    unk_1EB2919C0 = xmmword_1A75D58E8;
    unk_1EB2919D0 = unk_1A75D58F8;
    unk_1EB2919E0 = xmmword_1A75D5908;
    unk_1EB2919F0 = unk_1A75D5918;
    unk_1EB291A30 = unk_1A75D5958;
    unk_1EB291A20 = xmmword_1A75D5948;
    unk_1EB291A10 = unk_1A75D5938;
    unk_1EB291A00 = xmmword_1A75D5928;
    word_1EB291A40 = 1;
    byte_1EB291A42 = 0;
    byte_1EB291A44 = 0;
    byte_1EB291A48 = 0;
    dword_1EB291A58 = 0;
    word_1EB291A5C = 0;
    qword_1EB291A78 = 0;
    byte_1EB291A80 = 0;
    qword_1EB291A88 = 0;
    byte_1EB291A90 = 0;
    dword_1EB291A4C = 0;
    word_1EB291A50 = 0;
    qword_1EB291A60 = 0;
    unk_1EB291A68 = 0;
    byte_1EB291A70 = 0;
    word_1EB291A91 = 257;
    qword_1EB291A98 = 0x40000000;
    byte_1EB291AA0 = 0;
    dword_1EB291AA4 = 1;
    v4 = 1;
    v6 = 0;
    v7 = 0;
    __p = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v4, &__p, 1);
    qword_1EB291AA8 = 0;
    unk_1EB291AB0 = 0;
    qword_1EB291AB8 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&qword_1EB291AA8, __p, v6, (v6 - __p) >> 1);
    word_1EB291AC0 = 0;
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    for (i = 0; i != -12; i -= 4)
    {
      v3 = v45[i - 1];
      if (v3)
      {
        v45[i] = v3;
        operator delete(v3);
      }
    }

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

    __cxa_atexit(ZinIrHalParameters::~ZinIrHalParameters, &ZinIrHalH13::GetParams(void)const::ZinIrHalH13Parameters, &dword_1A617D000);
  }

  return &ZinIrHalH13::GetParams(void)const::ZinIrHalH13Parameters;
}

void sub_1A69E1F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (qword_1EB291960)
  {
    qword_1EB291968 = qword_1EB291960;
    operator delete(qword_1EB291960);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v25, *(v25 + 8));
  if (qword_1EB291920)
  {
    qword_1EB291928 = qword_1EB291920;
    operator delete(qword_1EB291920);
  }

  if (qword_1EB291908)
  {
    qword_1EB291910 = qword_1EB291908;
    operator delete(qword_1EB291908);
  }

  if (qword_1EB2918F0)
  {
    qword_1EB2918F8 = qword_1EB2918F0;
    operator delete(qword_1EB2918F0);
  }

  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v24, *(v24 + 8));
  v27 = &STACK[0x290];
  v28 = -96;
  while (1)
  {
    v29 = *(v27 - 1);
    if (v29)
    {
      *v27 = v29;
      operator delete(v29);
    }

    v27 -= 4;
    v28 += 32;
    if (!v28)
    {
      if (a18)
      {
        operator delete(a18);
      }

      if (a21)
      {
        operator delete(a21);
      }

      if (a24)
      {
        operator delete(a24);
      }

      if (qword_1EB291820)
      {
        qword_1EB291828 = qword_1EB291820;
        operator delete(qword_1EB291820);
      }

      if (qword_1EB291808)
      {
        qword_1EB291810 = qword_1EB291808;
        operator delete(qword_1EB291808);
      }

      if (qword_1EB2917F0)
      {
        qword_1EB2917F8 = qword_1EB2917F0;
        operator delete(qword_1EB2917F0);
      }

      if (qword_1EB2917D8)
      {
        qword_1EB2917E0 = qword_1EB2917D8;
        operator delete(qword_1EB2917D8);
      }

      if (byte_1EB291777 < 0)
      {
        operator delete(qword_1EB291760);
      }

      if (xmmword_1EB291528)
      {
        *(&xmmword_1EB291528 + 1) = xmmword_1EB291528;
        operator delete(xmmword_1EB291528);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t ZinIrSpaceToChannelInfo::ZinIrSpaceToChannelInfo(uint64_t a1, uint64_t *a2)
{
  result = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(a1, 41);
  *result = &unk_1F19F37F0;
  v4 = *a2;
  *(result + 20) = *(a2 + 2);
  *(result + 12) = v4;
  return result;
}

void *ZinSpaceToChannelLayer::ZinSpaceToChannelLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
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

  *a1 = &unk_1F19F3828;
  return a1;
}

void sub_1A69E22CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ZinIrKernel *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a9);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(&a12);
  _Unwind_Resume(a1);
}

uint64_t ZinSpaceToChannelLayer::LowerEngine(std::string *this, ZinIrOpLayerGraph *a2, uint64_t **a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = this[3].__r_.__value_.__r.__words[2];
  if (*(v5 + 12) == 0x200000002)
  {
    v6 = **ZinIrContext::GetMemoryPools(this);
    v7 = (*(*v6 + 40))(v6, 0);
    v8 = (*(this->__r_.__value_.__r.__words[0] + 40))(this, 0);
    OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(this);
    memset(v57, 0, sizeof(v57));
    std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(v57, *OutgoingLayers, *(OutgoingLayers + 8), (*(OutgoingLayers + 8) - *OutgoingLayers) >> 3);
    v10 = *(v5 + 12);
    v11 = *(v5 + 16);
    v12 = *(v8 + 72) / (v11 * v10);
    *&v53 = *(v8 + 72);
    *(&v53 + 1) = v12;
    v54 = v11;
    v55 = v10;
    v56 = 1;
    ZinObjectNameFactory::ZinObjectNameFactory(v52, this + 2);
    ZinObjectNameFactory::CreateName(v52, 2u, v58);
    v13 = std::string::append(v58, "_S2C_conv_kernel_", 0x11uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v51 = v13->__r_.__value_.__r.__words[2];
    __p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if ((v58[23] & 0x80000000) != 0)
    {
      operator delete(*v58);
    }

    *v58 = 0;
    std::vector<float>::vector[abi:ne200100](&v60, *(&v53 + 1) * v53 * v54 * v55 * v56, v58);
    if (v53 >= 1)
    {
      v15 = 0;
      v16 = *(&v53 + 1);
      v17 = *(v5 + 16) * *(v5 + 12);
      begin = v60.__begin_;
      v19 = (v53 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v20 = vdupq_n_s64(v53 - 1);
      v21 = 3 * v53;
      v22 = 16 * v53;
      v23 = 2 * v53;
      v24 = v53;
      v25 = xmmword_1A7598660;
      v26 = xmmword_1A7598670;
      v27 = vdupq_n_s64(4uLL);
      do
      {
        v28 = vmovn_s64(vcgeq_u64(v20, v26));
        if (vuzp1_s16(v28, *v20.i8).u8[0])
        {
          begin[v15 / v16 + (v17 * (v15 % v16))] = 1065353216;
        }

        if (vuzp1_s16(v28, *&v20).i8[2])
        {
          begin[(v15 + 1) / v16 + (v17 * ((v15 + 1) % v16)) + v24] = 1065353216;
        }

        if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v25))).i32[1])
        {
          begin[(v15 + 2) / v16 + (v17 * ((v15 + 2) % v16)) + v23] = 1065353216;
          begin[(v15 + 3) / v16 + (v17 * ((v15 + 3) % v16)) + v21] = 1065353216;
        }

        v15 += 4;
        v25 = vaddq_s64(v25, v27);
        v26 = vaddq_s64(v26, v27);
        begin = (begin + v22);
      }

      while (v19 != v15);
    }

    v39 = vdupq_n_s64(2uLL);
    v40 = 1;
    v41 = xmmword_1A75B9880;
    v42 = 0x100000001;
    v43 = 0;
    v44 = 0;
    *&v29 = 0x100000001;
    *(&v29 + 1) = 0x100000001;
    v46 = v29;
    v45 = 0;
    v47 = 1;
    v48 = 0;
    v49 = 0;
    ZinIrKernel::CreateDynamicKernel(&__p, &v39, &v60, 4u, &v53, 2uLL, **a3, 0, &v38);
    size = this[1].__r_.__value_.__l.__size_;
    (*(*v6 + 88))(v58, v6, 0);
    memset(&v36, 0, sizeof(v36));
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v36, v58, &v59, 1uLL);
    v31 = *(v7 + 104);
    v37 = v38;
    v38 = 0;
    ZinBuilder::CreateConv(size, v52, &v36, v8 + 64, v31, &v37);
  }

  if ((*((*a3)[1] + 612) & 1) == 0)
  {
    memset(v52, 0, sizeof(v52));
    *v58 = 2;
    std::vector<DimensionMapping>::push_back[abi:ne200100](v52, v58);
    *v58 = 0x200000000;
    std::vector<DimensionMapping>::push_back[abi:ne200100](v52, v58);
    ZinObjectNameFactory::ZinObjectNameFactory(&v39, this + 2);
    v33 = **ZinIrContext::GetMemoryPools(this);
    v34 = v33[4];
    (*(*v33 + 88))(v58);
    v53 = 0uLL;
    v54 = 0;
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v53, v58, &v59, 1uLL);
    v35 = 0;
    ZinBuilder::CreateTranspose(v34, &v39, &v53, v52, &v35);
  }

  return 3;
}

void sub_1A69E2F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ZinIrKernel *a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a25);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a32);
  v68 = *(v66 - 112);
  if (v68)
  {
    *(v66 - 104) = v68;
    operator delete(v68);
  }

  if (a52 < 0)
  {
    operator delete(__p);
  }

  a54 = &unk_1F19D0088;
  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a65)
  {
    a66 = a65;
    operator delete(a65);
  }

  _Unwind_Resume(a1);
}

void sub_1A69E3444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a12)
  {
    (*(*a12 + 16))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x1AC55A070](v12, v13, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void ZinSpaceToChannelLayer::ValidateSemantics_Impl(ZinIrOpLayer *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 11);
  if (v3[5] != 1)
  {
    ZinAssertImpl("SpaceToChannel in z dimension is not supported, current factor.z = %d.", v3[5]);
  }

  v5 = *(*a2 + 32);
  v6 = v3[3];
  v7 = v3[4];
  if (v5 % v6 || *(*a2 + 24) % v7)
  {
    ZinAssertImpl("Spatial dimensions cannot be divived by the given factors. Current w=%zd, factor_x=%d, h=%zd, factor_y=%d", v5, v6, *(*a2 + 24), v7);
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v11, (a3 + 1760), (a3 + 1792), 4uLL);
  memset(v10, 0, sizeof(v10));
  if (!Factorize(v3[3], &v11, v10) || !Factorize(v3[4], &v11, v10))
  {
    ZinAssertImpl("SpaceToChannel factor cannot be completely factorized into legal interleave factors. The legal interleaves are {1,2,3,4,8}");
  }

  ZinIrOpLayer::ValidateSemantics_Impl(a1, a2, a3);
  std::deque<int>::~deque[abi:ne200100](v10);
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_1A69E35D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::deque<int>::~deque[abi:ne200100](va);
  v11 = *(v9 - 56);
  if (v11)
  {
    *(v9 - 48) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinSpaceToChannelLayer::DebugDetailPrint@<X0>(_BYTE *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
  if ((v14 & 0x10) != 0)
  {
    v3 = v13;
    if (v13 < v10)
    {
      v13 = v10;
      v3 = v10;
    }

    locale = v9[4].__locale_;
  }

  else
  {
    if ((v14 & 8) == 0)
    {
      v2 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v9[1].__locale_;
    v3 = v9[3].__locale_;
  }

  v2 = v3 - locale;
  if ((v3 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  a1[23] = v2;
  if (v2)
  {
    memmove(a1, locale, v2);
  }

LABEL_14:
  a1[v2] = 0;
  v7[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7[2] = v5;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v15);
}

void sub_1A69E3840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](&a26);
  _Unwind_Resume(a1);
}

void ZinIrNEMatMulUnit::ZinIrNEMatMulUnit(ZinIrNEMatMulUnit *this, const ZinIrNEMatMulUnitInfo *a2)
{
  ZinIrNEUnit::ZinIrNEUnit(this, a2);
  *v3 = &unk_1F19F39B8;
  ZinIrNEMatMulUnitInfo::ZinIrNEMatMulUnitInfo((v3 + 55), a2);
}

void sub_1A69E3B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  MEMORY[0x1AC55A070](v22, 0x10B3C406FC10DADLL, a3, a4, a5, a6, a7, a8);
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  (*(*v21 + 8))(v21);
  _Unwind_Resume(a1);
}

uint64_t ZinIrNEMatMulUnit::CreateKernel(ZinIrNEUnit *a1, const ZinIrHalParameters *a2, ZinIrFileManager *a3, const ZinWeightFileInfo *a4, uint64_t a5, uint64_t a6, ZinIrUnitStatus *a7)
{
  if (a5)
  {
    ZinAssertImpl("NEMatMul does not support Espresso weight format", a2, a3, a4, a5, a6, a7, v7, v8);
  }

  return ZinIrNEUnit::CreateSubKernels(a1, a2, a3, a4, a7);
}

void ZinIrNEMatMulUnit::~ZinIrNEMatMulUnit(void **this)
{
  *this = &unk_1F19F39B8;
  ZinIrNEMatMulUnitInfo::~ZinIrNEMatMulUnitInfo(this + 55);

  ZinIrNEUnit::~ZinIrNEUnit(this);
}

void ZinIrNEMatMulUnit::~ZinIrNEMatMulUnit(ZinIrNEMatMulUnit *this)
{
  *this = &unk_1F19F39B8;
  v2 = (this + 440);
  *(this + 55) = &unk_1F19ECE80;
  ZinIrUnitInfo::~ZinIrUnitInfo(this + 101);
  *(this + 55) = &unk_1F19D1078;
  if (*(this + 792) == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(this + 85);
  }

  if (*(this + 672) == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(this + 65);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(v2);
  ZinIrNEUnit::~ZinIrNEUnit(this);

  JUMPOUT(0x1AC55A070);
}

void ZinIrNEMatMulUnitInfo::ZinIrNEMatMulUnitInfo(ZinIrNEMatMulUnitInfo *this, const ZinIrNEMatMulUnitInfo *a2)
{
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F19D1078;
  std::__optional_copy_base<ZinIrGOCUnitInfo,false>::__optional_copy_base[abi:ne200100](this + 80, a2 + 80);
  std::__optional_copy_base<ZinIrNeuronUnitInfo,false>::__optional_copy_base[abi:ne200100](this + 240, a2 + 240);
  v6 = *(a2 + 45);
  *this = &unk_1F19ECE80;
  *(this + 45) = v6;
  *(this + 46) = &unk_1F1A2EA30;
  if (*(a2 + 399) < 0)
  {
    std::string::__init_copy_ctor_external((this + 376), *(a2 + 47), *(a2 + 48));
  }

  else
  {
    v7 = *(a2 + 376);
    *(this + 49) = *(a2 + 49);
    *(this + 376) = v7;
  }

  *(this + 100) = *(a2 + 100);
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 51) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 51, *(a2 + 51), *(a2 + 52), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 52) - *(a2 + 51)) >> 3));
  *(this + 27) = *(a2 + 27);
  *(this + 46) = &unk_1F1A33FF8;
  *(this + 112) = *(a2 + 112);
}

uint64_t ZinIrBindings::AddIO(uint64_t a1, char *a2, int a3, uint64_t a4)
{
  v16 = a3;
  v6 = std::map<ZinIrDimension,unsigned long>::at(a1, &v16);
  if (v6 + 1 != std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v6, a2))
  {
    return 3;
  }

  v18 = a2;
  v8 = std::__tree<std::__value_type<std::string,ZinIrIOInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrIOInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrIOInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6, a2, &std::piecewise_construct, &v18, &v17);
  std::string::operator=((v8 + 7), a4);
  std::string::operator=((v8 + 10), (a4 + 24));
  v9 = *(a4 + 64);
  *(v8 + 13) = *(a4 + 48);
  *(v8 + 15) = v9;
  v10 = *(a4 + 112);
  v11 = *(a4 + 128);
  v12 = *(a4 + 96);
  *(v8 + 17) = *(a4 + 80);
  *(v8 + 23) = v11;
  *(v8 + 21) = v10;
  *(v8 + 19) = v12;
  v13 = *(a4 + 176);
  v14 = *(a4 + 192);
  v15 = *(a4 + 160);
  *(v8 + 25) = *(a4 + 144);
  *(v8 + 31) = v14;
  *(v8 + 29) = v13;
  *(v8 + 27) = v15;
  if (v8 + 7 != a4)
  {
    std::vector<ZinIrIOFourccPlaneInfo>::__assign_with_size[abi:ne200100]<ZinIrIOFourccPlaneInfo*,ZinIrIOFourccPlaneInfo*>(v8 + 33, *(a4 + 208), *(a4 + 216), (*(a4 + 216) - *(a4 + 208)) >> 4);
  }

  *(v8 + 18) = *(a4 + 232);
  std::__optional_storage_base<ZinIrShardingMap,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrShardingMap,false> const&>((v8 + 38), a4 + 248);
  return 0;
}

uint64_t ZinIrBindings::UpdateIOBindingsANEResidency(ZinIrBindings *this)
{
  v3 = this;
  result = ZinIrBindings::UpdateIOBindingsANEResidency(void)::$_0::operator()(&v3, this + 12);
  if (!result)
  {
    return ZinIrBindings::UpdateIOBindingsANEResidency(void)::$_0::operator()(&v3, this + 9);
  }

  return result;
}

uint64_t ZinIrBindings::UpdateIOBindingsANEResidency(void)::$_0::operator()(uint64_t *a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v4 = *a1;
    do
    {
      v16 = *(v3 + 14);
      v15[0] = 0;
      v15[1] = 0;
      v14 = v15;
      v5 = v3[8];
      v6 = v3[9];
      while (v5 != v6)
      {
        v7 = *v5;
        ZinBondedUtils::GetAneIndicesForLiveIOLayer(*(*v5 + 152), &v14);
        v8 = ZinIrBindings::AddIOAneIndices(v4, (v7 + 40), v16, &v14);
        if (v8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

        ++v5;
      }

      v9 = std::map<ZinIrDimension,unsigned long>::at(v4 + 24, &v16);
      if (v9 + 1 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v9, v3 + 32))
      {
        v8 = ZinIrBindings::AddIOAneIndices(v4, v3 + 32, v16, &v14);
        if (v8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
LABEL_17:
            ZinIrBindings::UpdateIOBindingsANEResidency(void)::$_0::operator()();
          }

LABEL_18:
          std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v14, v15[0]);
          return v8;
        }
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v14, v15[0]);
      v10 = v3[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v3[2];
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != v2);
  }

  return 0;
}

uint64_t ZinIrBindings::AddIOAneIndices(uint64_t a1, char *a2, int a3, void *a4)
{
  v9 = a3;
  v6 = std::map<ZinIrDimension,unsigned long>::at(a1 + 24, &v9);
  if (v6 + 1 != std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v6, a2))
  {
    return 3;
  }

  v11 = a2;
  v8 = std::__tree<std::__value_type<std::string,std::set<ZinNamedType<unsigned long,AneIndexTag>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<ZinNamedType<unsigned long,AneIndexTag>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<ZinNamedType<unsigned long,AneIndexTag>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6, a2, &std::piecewise_construct, &v11, &v10) + 7;
  if (v8 != a4)
  {
    std::__tree<ZinNamedType<unsigned long,AneIndexTag>>::__assign_multi<std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>>(v8, *a4, a4 + 1);
  }

  return 0;
}

__n128 ZinIrBindings::AddUncompressedMapping(uint64_t a1, uint64_t ***a2, unsigned __int32 a3, __n128 *a4)
{
  if (a1 + 104 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(a1 + 96, a2))
  {
    v12 = *a4;
    v9 = a4[1].n128_u64[0];
    a4->n128_u64[1] = 0;
    a4[1].n128_u64[0] = 0;
    a4->n128_u64[0] = 0;
    v14 = a2;
    v10 = std::__tree<std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 96), a2, &std::piecewise_construct, &v14, &v13);
    v10[3].n128_u32[2] = a3;
    v11 = v10[4].n128_u64[0];
    if (v11)
    {
      v10[4].n128_u64[1] = v11;
      operator delete(v11);
      v10[4].n128_u64[0] = 0;
      v10[4].n128_u64[1] = 0;
      v10[5].n128_u64[0] = 0;
    }

    result = v12;
    v10[4] = v12;
    v10[5].n128_u64[0] = v9;
  }

  return result;
}

void sub_1A69E4490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

__n128 ZinIrBindings::AddCompressedMapping(uint64_t a1, uint64_t ***a2, unsigned __int32 a3, __n128 *a4)
{
  if (a1 + 80 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(a1 + 72, a2))
  {
    v12 = *a4;
    v9 = a4[1].n128_u64[0];
    a4->n128_u64[1] = 0;
    a4[1].n128_u64[0] = 0;
    a4->n128_u64[0] = 0;
    v14 = a2;
    v10 = std::__tree<std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 72), a2, &std::piecewise_construct, &v14, &v13);
    v10[3].n128_u32[2] = a3;
    v11 = v10[4].n128_u64[0];
    if (v11)
    {
      v10[4].n128_u64[1] = v11;
      operator delete(v11);
      v10[4].n128_u64[0] = 0;
      v10[4].n128_u64[1] = 0;
      v10[5].n128_u64[0] = 0;
    }

    result = v12;
    v10[4] = v12;
    v10[5].n128_u64[0] = v9;
  }

  return result;
}

void sub_1A69E4574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrBindings::IsIOCircular(uint64_t a1, int a2, char *a3, BOOL *a4)
{
  v10 = a2;
  *a4 = 0;
  v6 = std::map<ZinIrDimension,unsigned long>::at(a1, &v10);
  v7 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v6, a3);
  if (v6 + 1 == v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrBindings::IsIOCircular();
    }

    return 3;
  }

  else
  {
    v8 = v7;
    result = 0;
    *a4 = *(v8 + 288) != 5;
  }

  return result;
}

uint64_t ZinIrBindings::GetIOBarRequirement(void *a1, int a2, uint64_t *a3)
{
  *a3 = 0;
  v6 = a1[12];
  v7 = (a1 + 13);
  if (v6 != (a1 + 13))
  {
    v8 = 0;
    v17 = 0;
    while (1)
    {
      if (*(v6 + 14) == a2)
      {
        if (ZinIrBindings::IsIOCircular(a1, a2, v6 + 32, &v17))
        {
          return 3;
        }

        if (v17)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }

        v8 = ((*(v6 + 9) - *(v6 + 8)) >> v9) + *a3;
        *a3 = v8;
      }

      v10 = *(v6 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v6 + 2);
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
      if (v11 == v7)
      {
        goto LABEL_17;
      }
    }
  }

  v8 = 0;
LABEL_17:
  v13 = a1[9];
  if (v13 != a1 + 10)
  {
    do
    {
      if (*(v13 + 14) == a2)
      {
        v8 += (v13[9] - v13[8]) >> 2;
        *a3 = v8;
      }

      v14 = v13[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v13[2];
          v12 = *v15 == v13;
          v13 = v15;
        }

        while (!v12);
      }

      v13 = v15;
    }

    while (v15 != a1 + 10);
  }

  return 0;
}

uint64_t ZinIrBindings::GetSinglePlaneUncompressedDescriptor(uint64_t a1, int a2, uint64_t a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = (a3 + 8);
  std::__tree<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>>>::destroy(a3, *(a3 + 8));
  *a3 = v6;
  *(a3 + 16) = 0;
  *v6 = 0;
  v7 = *(a1 + 96);
  v8 = (a1 + 104);
  if (v7 != (a1 + 104))
  {
    v36 = vdupq_n_s64(1uLL);
    do
    {
      if (*(v7 + 14) == a2)
      {
        v9 = v7[8];
        if (v7[9] - v9 == 8)
        {
          v10 = *v9;
          v11 = (*v9)[20];
          if (!v11 || (v12 = *(v11 + 40), v12 == *(v11 + 48)))
          {
            v13 = 0;
          }

          else
          {
            v13 = *v12;
          }

          v14 = *(v13 + 96);
          *v38 = 0;
          memset(&v38[8], 0, 40);
          v39 = v36;
          v40 = v36;
          *v41 = v36;
          *&v41[16] = v36;
          *&v41[32] = v36;
          v42 = v36;
          v43 = v36;
          v44 = v36;
          v45 = v36;
          v46 = v36;
          std::string::basic_string[abi:ne200100]<0>(&__p, "");
          v48 = 0;
          if (v14)
          {
            *v38 = v10[6].i32[2];
            v15 = v10[4];
            v16 = v10[5];
            *v41 = v10[6].i64[0];
            v39 = v15;
            v40 = v16;
            memset(&v38[8], 0, 40);
            TensorDesc = ZinIrSymbol::Descriptor::GetTensorDesc((v13 + 216));
            v18 = *(TensorDesc + 88);
            v19 = *(TensorDesc + 104);
            *&v41[40] = *(TensorDesc + 120);
            *&v41[24] = v19;
            *&v41[8] = v18;
            v20 = ZinIrSymbol::Descriptor::GetTensorDesc((v13 + 216));
            v42 = v20[8];
            v21 = v20[9];
            v22 = v20[10];
            v23 = v20[12];
            v45 = v20[11];
            v46 = v23;
            v43 = v21;
            v44 = v22;
          }

          else
          {
            v51 = 0;
            ZinIrTensor::InferDescriptor(v37, v10, v50);
            v44 = v37[10];
            v45 = v37[11];
            v46 = v37[12];
            *&v41[16] = v37[6];
            *&v41[32] = v37[7];
            v42 = v37[8];
            v43 = v37[9];
            *&v38[32] = v37[2];
            v39 = v37[3];
            v40 = v37[4];
            *v41 = v37[5];
            *v38 = v37[0];
            *&v38[16] = v37[1];
            std::__function::__value_func<void ()(ZinTensorDescriptor const&,ZinTensorDescriptor const&,ZinIrTensor const*)>::~__value_func[abi:ne200100](v50);
          }

          std::string::operator=(&__p, (v13 + 224));
          v48 = *(v13 + 248);
          *&v37[0] = v7 + 4;
          v24 = std::__tree<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, v7 + 4, &std::piecewise_construct, v37, &v49);
          v26 = v45;
          v25 = v46;
          v27 = v42;
          *(v24 + 25) = v43;
          *(v24 + 27) = v44;
          *(v24 + 29) = v26;
          *(v24 + 31) = v25;
          v28 = v40;
          *(v24 + 17) = *v41;
          v29 = *&v41[32];
          *(v24 + 19) = *&v41[16];
          *(v24 + 21) = v29;
          *(v24 + 23) = v27;
          v30 = *v38;
          *(v24 + 9) = *&v38[16];
          v31 = v39;
          *(v24 + 11) = *&v38[32];
          *(v24 + 13) = v31;
          *(v24 + 15) = v28;
          *(v24 + 7) = v30;
          std::string::operator=(v24 + 11, &__p);
          v24[36] = v48;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v32 = v7[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v7[2];
          v34 = *v33 == v7;
          v7 = v33;
        }

        while (!v34);
      }

      v7 = v33;
    }

    while (v33 != v8);
  }

  return 0;
}

void sub_1A69E4B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  std::__function::__value_func<void ()(ZinTensorDescriptor const&,ZinTensorDescriptor const&,ZinIrTensor const*)>::~__value_func[abi:ne200100](v65 - 128);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrBindings::GetMultiPlaneUncompressedDescriptor(uint64_t a1, int a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v64 = a2;
  v38 = std::map<ZinIrDimension,unsigned long>::at(a1, &v64);
  std::__tree<std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>>>::destroy(a3, *(a3 + 8));
  *a3 = a3 + 8;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  v4 = *(a1 + 96);
  if (v4 == a1 + 104)
  {
    return 0;
  }

  v39 = vdupq_n_s64(1uLL);
  while (1)
  {
    if (*(v4 + 56) != v64 || *(v4 + 72) - *(v4 + 64) < 9uLL)
    {
      goto LABEL_34;
    }

    v5 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v38, (v4 + 32));
    v6 = v5;
    if (v38 + 1 == v5)
    {
      break;
    }

    ZinIr4CCInfo::ZinIr4CCInfo(v61, *(v5 + 260));
    v59 = 0;
    v60 = 0;
    v8 = *(v4 + 64);
    v7 = *(v4 + 72);
    v9 = v7 - v8;
    if (v7 == v8)
    {
      v13 = 0;
      v14 = *(v4 + 72);
      goto LABEL_15;
    }

    v10 = 0;
    v11 = v9 >> 3;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while (1)
    {
      v12 = *(v8 + 8 * v10);
      if (v12)
      {
        break;
      }

      if (v11 == ++v10)
      {
        v9 = 0;
        v13 = 0;
        v14 = *(v4 + 72);
        v7 = *(v4 + 64);
        goto LABEL_15;
      }
    }

    if (ZinIr4CCInfo::GetBaseDimensions(v61, v10, *(v12 + 88), *(v12 + 80), &v60, &v59))
    {
      v9 = v59;
      v13 = v60;
      v7 = *(v4 + 64);
      v14 = *(v4 + 72);
LABEL_15:
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v55 = *(v6 + 260);
      *&v54 = v13;
      *(&v54 + 1) = v9;
      std::vector<ZinPlaneDescriptor>::reserve(&v56, (v14 - v7) >> 3);
      v16 = *(v4 + 64);
      v15 = *(v4 + 72);
      while (v16 != v15)
      {
        v17 = *v16;
        LODWORD(v41[0]) = 0;
        memset(v41 + 8, 0, 40);
        v42 = v39;
        v43 = v39;
        v44 = v39;
        v45 = v39;
        v46 = v39;
        v47 = v39;
        v48 = v39;
        v49 = v39;
        v50 = v39;
        v51 = v39;
        std::string::basic_string[abi:ne200100]<0>(&__p, "");
        v53 = 0;
        if (v17)
        {
          v67 = 0;
          ZinIrTensor::InferDescriptor(v40, v17, v66);
          v49 = v40[10];
          v50 = v40[11];
          v51 = v40[12];
          v45 = v40[6];
          v46 = v40[7];
          v47 = v40[8];
          v48 = v40[9];
          v41[2] = v40[2];
          v42 = v40[3];
          v43 = v40[4];
          v44 = v40[5];
          v41[0] = v40[0];
          v41[1] = v40[1];
          std::__function::__value_func<void ()(ZinTensorDescriptor const&,ZinTensorDescriptor const&,ZinIrTensor const*)>::~__value_func[abi:ne200100](v66);
          std::string::operator=(&__p, (**(*(v17 + 20) + 40) + 224));
          v18 = *(**(*(v17 + 20) + 40) + 248);
        }

        else
        {
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          memset(v41, 0, sizeof(v41));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            __p.__r_.__value_.__l.__size_ = 0;
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            *(&__p.__r_.__value_.__s + 23) = 0;
            p_p = &__p;
          }

          v18 = 0;
          p_p->__r_.__value_.__s.__data_[0] = 0;
        }

        v53 = v18;
        v20 = v57;
        if (v57 >= v58)
        {
          v57 = std::vector<ZinPlaneDescriptor>::__emplace_back_slow_path<ZinPlaneDescriptor>(&v56, v41);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          *v57 = v41[0];
          v21 = v41[1];
          v22 = v41[2];
          v23 = v43;
          v20[3] = v42;
          v20[4] = v23;
          v20[1] = v21;
          v20[2] = v22;
          v24 = v44;
          v25 = v45;
          v26 = v47;
          v20[7] = v46;
          v20[8] = v26;
          v20[5] = v24;
          v20[6] = v25;
          v27 = v48;
          v28 = v49;
          v29 = v51;
          v20[11] = v50;
          v20[12] = v29;
          v20[9] = v27;
          v20[10] = v28;
          v30 = *&__p.__r_.__value_.__l.__data_;
          *(v20 + 28) = *(&__p.__r_.__value_.__l + 2);
          v20[13] = v30;
          memset(&__p, 0, sizeof(__p));
          *(v20 + 29) = v53;
          v57 = v20 + 15;
        }

        ++v16;
      }

      *&v40[0] = v4 + 32;
      v31 = std::__tree<std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, (v4 + 32), &std::piecewise_construct, v40, &v65);
      *(v31 + 7) = v54;
      *(v31 + 18) = v55;
      if (v31 + 7 != &v54)
      {
        std::vector<ZinPlaneDescriptor>::__assign_with_size[abi:ne200100]<ZinPlaneDescriptor*,ZinPlaneDescriptor*>(v31 + 10, v56, v57, 0xEEEEEEEEEEEEEEEFLL * ((v57 - v56) >> 4));
      }

      *&v41[0] = &v56;
      std::vector<ZinPlaneDescriptor>::__destroy_vector::operator()[abi:ne200100](v41);
      v32 = 1;
      goto LABEL_31;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrBindings::GetMultiPlaneUncompressedDescriptor(buf, v4, (v4 + 32), &buf[4]);
    }

    v32 = 0;
LABEL_31:
    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    if ((v32 & 1) == 0)
    {
      return 3;
    }

LABEL_34:
    v33 = *(v4 + 8);
    if (v33)
    {
      do
      {
        v34 = v33;
        v33 = *v33;
      }

      while (v33);
    }

    else
    {
      do
      {
        v34 = *(v4 + 16);
        v35 = *v34 == v4;
        v4 = v34;
      }

      while (!v35);
    }

    v4 = v34;
    if (v34 == (a1 + 104))
    {
      return 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinIrBindings::GetMultiPlaneUncompressedDescriptor();
  }

  return 3;
}

void sub_1A69E4FD8(_Unwind_Exception *a1)
{
  v3 = *(v1 - 176);
  if (v3)
  {
    *(v1 - 168) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<ZinPlaneDescriptor>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xEEEEEEEEEEEEEEEFLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x111111111111112)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinPlaneDescriptor>>(result, a2);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1A69E5104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ZinPlaneDescriptor>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrBindings::GetCompressedDescriptor(uint64_t a1, int a2, uint64_t a3)
{
  v36 = a2;
  v5 = std::map<ZinIrDimension,unsigned long>::at(a1, &v36);
  std::__tree<std::__value_type<std::string,ZinTiledCompressedIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTiledCompressedIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTiledCompressedIODescriptor>>>::destroy(a3, *(a3 + 8));
  *a3 = a3 + 8;
  v27 = a3;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  v6 = *(a1 + 72);
  v7 = (a1 + 80);
  if (v6 == (a1 + 80))
  {
    return 0;
  }

  while (*(v6 + 14) != v36)
  {
LABEL_23:
    v23 = v6[1];
    if (v23)
    {
      do
      {
        v24 = v23;
        v23 = *v23;
      }

      while (v23);
    }

    else
    {
      do
      {
        v24 = v6[2];
        v25 = *v24 == v6;
        v6 = v24;
      }

      while (!v25);
    }

    v6 = v24;
    if (v24 == v7)
    {
      return 0;
    }
  }

  v8 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v5, v6 + 32);
  if (v5 + 1 != v8)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    *&v32[16] = 0;
    *v32 = 0uLL;
    *&v32[24] = *(v8 + 260);
    v9 = v6[8];
    v10 = v6[9];
    v11 = (*v9)[5];
    *&v32[16] = (*v9)[4].i64[1];
    *v32 = vextq_s8(v11, v11, 8uLL);
    std::vector<ZinTiledCompressedPlaneDescriptor>::reserve(&v33, (v10 - v9) >> 3);
    v13 = v6[8];
    v12 = v6[9];
    while (v13 != v12)
    {
      v14 = *(*v13 + 20);
      if (!v14 || (v15 = *(v14 + 40), v15 == *(v14 + 48)))
      {
        v16 = 0;
      }

      else
      {
        v16 = *v15;
      }

      v17 = *(ZinIrTensor::GetRootTensor(*v13) + 20);
      if (v17)
      {
        v18 = *(v17 + 64);
      }

      else
      {
        v18 = 0;
      }

      std::string::basic_string[abi:ne200100]<0>(&v28, "");
      v29 = 0;
      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      v31 = 0;
      std::string::operator=(&v28, (v16 + 224));
      v29 = *(v16 + 248);
      std::string::operator=(&__p, (v18 + 224));
      v31 = *(v18 + 248);
      v19 = v34;
      if (v34 >= v35)
      {
        v34 = std::vector<ZinTiledCompressedPlaneDescriptor>::__emplace_back_slow_path<ZinTiledCompressedPlaneDescriptor>(&v33, &v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v20 = *&v28.__r_.__value_.__l.__data_;
        v34->__r_.__value_.__r.__words[2] = v28.__r_.__value_.__r.__words[2];
        *&v19->__r_.__value_.__l.__data_ = v20;
        memset(&v28, 0, sizeof(v28));
        v19[1].__r_.__value_.__r.__words[0] = v29;
        v21 = *&__p.__r_.__value_.__l.__data_;
        v19[2].__r_.__value_.__r.__words[0] = __p.__r_.__value_.__r.__words[2];
        *&v19[1].__r_.__value_.__r.__words[1] = v21;
        memset(&__p, 0, sizeof(__p));
        v19[2].__r_.__value_.__l.__size_ = v31;
        v34 = (v19 + 64);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      ++v13;
    }

    v38 = v6 + 4;
    v22 = std::__tree<std::__value_type<std::string,ZinTiledCompressedIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTiledCompressedIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTiledCompressedIODescriptor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v27, v6 + 4, &std::piecewise_construct, &v38, &v37);
    *(v22 + 7) = *v32;
    *(v22 + 68) = *&v32[12];
    if (v22 + 7 != v32)
    {
      std::vector<ZinTiledCompressedPlaneDescriptor>::__assign_with_size[abi:ne200100]<ZinTiledCompressedPlaneDescriptor*,ZinTiledCompressedPlaneDescriptor*>(v22 + 11, v33, v34, (v34 - v33) >> 6);
    }

    v28.__r_.__value_.__r.__words[0] = &v33;
    std::vector<ZinTiledCompressedPlaneDescriptor>::__destroy_vector::operator()[abi:ne200100](&v28);
    v7 = (a1 + 80);
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinIrBindings::GetMultiPlaneUncompressedDescriptor();
  }

  return 3;
}

uint64_t *std::vector<ZinTiledCompressedPlaneDescriptor>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinTiledCompressedPlaneDescriptor>>(result, a2);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1A69E550C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ZinTiledCompressedPlaneDescriptor>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrBindings::AddLiveInParam(uint64_t a1, char *a2, uint64_t a3)
{
  if (a1 + 56 != std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(a1 + 48, a2))
  {
    return 3;
  }

  v9 = a2;
  v7 = std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 48), a2, &std::piecewise_construct, &v9, &v8);
  std::string::operator=((v7 + 56), a3);
  result = 0;
  *(v7 + 20) = *(a3 + 24);
  return result;
}

std::string *ZinIrBindings::SetEntryEventInfo(std::string *a1, std::string *a2)
{
  if (a1[8].__r_.__value_.__s.__data_[8] == 1)
  {
    ZinAssertImpl("Duplicate entry event", a2, v2, v3);
  }

  v4 = a1 + 5;

  return std::optional<ZinIrEntryEventInfo>::operator=[abi:ne200100]<ZinIrEntryEventInfo const&,void>(v4, a2);
}

std::string *std::optional<ZinIrEntryEventInfo>::operator=[abi:ne200100]<ZinIrEntryEventInfo const&,void>(std::string *this, std::string *__str)
{
  if (this[3].__r_.__value_.__s.__data_[8] == 1)
  {
    std::string::operator=(this, __str);
    std::string::operator=(this + 1, __str + 1);
    v4 = *&__str[2].__r_.__value_.__l.__data_;
    this[2].__r_.__value_.__s.__data_[16] = __str[2].__r_.__value_.__s.__data_[16];
    *&this[2].__r_.__value_.__l.__data_ = v4;
    this[3].__r_.__value_.__r.__words[0] = __str[3].__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v5;
    }

    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this + 1, __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = *&__str[1].__r_.__value_.__l.__data_;
      this[1].__r_.__value_.__r.__words[2] = __str[1].__r_.__value_.__r.__words[2];
      *&this[1].__r_.__value_.__l.__data_ = v6;
    }

    v7 = *&__str[2].__r_.__value_.__l.__data_;
    this[2].__r_.__value_.__s.__data_[16] = __str[2].__r_.__value_.__s.__data_[16];
    *&this[2].__r_.__value_.__l.__data_ = v7;
    this[3].__r_.__value_.__r.__words[0] = __str[3].__r_.__value_.__r.__words[0];
    this[3].__r_.__value_.__s.__data_[8] = 1;
  }

  return this;
}

void sub_1A69E56C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *ZinIrBindings::SetExitEventInfo(uint64_t a1, std::string *a2)
{
  if (*(a1 + 280) == 1)
  {
    ZinAssertImpl("Duplicate exit event", a2, v2, v3);
  }

  v4 = (a1 + 208);

  return std::optional<ZinIrExitEventInfo>::operator=[abi:ne200100]<ZinIrExitEventInfo const&,void>(v4, a2);
}

std::string *std::optional<ZinIrExitEventInfo>::operator=[abi:ne200100]<ZinIrExitEventInfo const&,void>(std::string *this, std::string *__str)
{
  if (this[3].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(this, __str);
    std::string::operator=(this + 1, __str + 1);
    v4 = __str[2].__r_.__value_.__s.__data_[16];
    *&this[2].__r_.__value_.__l.__data_ = *&__str[2].__r_.__value_.__l.__data_;
    this[2].__r_.__value_.__s.__data_[16] = v4;
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v5;
    }

    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this + 1, __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = *&__str[1].__r_.__value_.__l.__data_;
      this[1].__r_.__value_.__r.__words[2] = __str[1].__r_.__value_.__r.__words[2];
      *&this[1].__r_.__value_.__l.__data_ = v6;
    }

    v7 = *&__str[2].__r_.__value_.__l.__data_;
    this[2].__r_.__value_.__s.__data_[16] = __str[2].__r_.__value_.__s.__data_[16];
    *&this[2].__r_.__value_.__l.__data_ = v7;
    this[3].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_1A69E57DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrBindings::GetLiveInParamDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  std::__tree<std::__value_type<std::string,WeightFileProperties>,std::__map_value_compare<std::string,std::__value_type<std::string,WeightFileProperties>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,WeightFileProperties>>>::destroy(a2, *(a2 + 8));
  *a2 = v4;
  *(a2 + 16) = 0;
  *v4 = 0;
  v5 = *(a1 + 48);
  if (v5 == (a1 + 56))
  {
    return 0;
  }

  while (1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    v14 = 0;
    v11 = 0;
    if (ZinTensorFormatGetSizeInBytes(*(v5 + 20), &v11))
    {
      break;
    }

    v12 = *(v5 + 20);
    std::string::operator=(&__p, (v5 + 7));
    v14 = v11;
    v16 = v5 + 7;
    v6 = std::__tree<std::__value_type<std::string,ZinLiveInputParamDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLiveInputParamDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLiveInputParamDescriptor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, v5 + 7, &std::piecewise_construct, &v16, &v15);
    *(v6 + 14) = v12;
    std::string::operator=((v6 + 8), &__p);
    v6[11] = v14;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v7 = v5[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v5 = v8;
    if (v8 == (a1 + 56))
    {
      return 0;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 3;
}

void sub_1A69E5960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ZinPlaneDescriptor>::__emplace_back_slow_path<ZinPlaneDescriptor>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v27 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinPlaneDescriptor>>(a1, v6);
  }

  v7 = 240 * v2;
  v24 = 0;
  v25 = v7;
  *(&v26 + 1) = 0;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 64);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 64) = v10;
  *(v7 + 32) = v9;
  v11 = *(a2 + 128);
  v13 = *(a2 + 80);
  v12 = *(a2 + 96);
  *(v7 + 112) = *(a2 + 112);
  *(v7 + 128) = v11;
  *(v7 + 80) = v13;
  *(v7 + 96) = v12;
  v14 = *(a2 + 192);
  v16 = *(a2 + 144);
  v15 = *(a2 + 160);
  *(v7 + 176) = *(a2 + 176);
  *(v7 + 192) = v14;
  *(v7 + 144) = v16;
  *(v7 + 160) = v15;
  *v7 = *a2;
  *(v7 + 16) = v8;
  v17 = *(a2 + 208);
  *(v7 + 224) = *(a2 + 224);
  *(v7 + 208) = v17;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 208) = 0;
  *(v7 + 232) = *(a2 + 232);
  *&v26 = 240 * v2 + 240;
  v18 = a1[1];
  v19 = 240 * v2 + *a1 - v18;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinPlaneDescriptor>,ZinPlaneDescriptor*>(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = a1[2];
  v23 = v26;
  *(a1 + 1) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  std::__split_buffer<ZinPlaneDescriptor>::~__split_buffer(&v24);
  return v23;
}

void sub_1A69E5AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ZinPlaneDescriptor>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<ZinPlaneDescriptor>::__assign_with_size[abi:ne200100]<ZinPlaneDescriptor*,ZinPlaneDescriptor*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) < a4)
  {
    std::vector<ZinPlaneDescriptor>::__vdeallocate(a1);
    if (a4 <= 0x111111111111111)
    {
      v9 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 4) >= 0x88888888888888)
      {
        v10 = 0x111111111111111;
      }

      else
      {
        v10 = v9;
      }

      std::vector<ZinPlaneDescriptor>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (0xEEEEEEEEEEEEEEEFLL * ((v11 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v6;
        v22 = *(v6 + 16);
        v23 = *(v6 + 32);
        v24 = *(v6 + 64);
        *(v8 + 48) = *(v6 + 48);
        *(v8 + 64) = v24;
        *(v8 + 16) = v22;
        *(v8 + 32) = v23;
        v25 = *(v6 + 80);
        v26 = *(v6 + 96);
        v27 = *(v6 + 128);
        *(v8 + 112) = *(v6 + 112);
        *(v8 + 128) = v27;
        *(v8 + 80) = v25;
        *(v8 + 96) = v26;
        v28 = *(v6 + 144);
        v29 = *(v6 + 160);
        v30 = *(v6 + 192);
        *(v8 + 176) = *(v6 + 176);
        *(v8 + 192) = v30;
        *(v8 + 144) = v28;
        *(v8 + 160) = v29;
        std::string::operator=((v8 + 208), (v6 + 208));
        *(v8 + 232) = *(v6 + 232);
        v8 += 240;
        v6 += 240;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      if (*(v11 - 9) < 0)
      {
        operator delete(*(v11 - 32));
      }

      v11 -= 240;
    }

    a1[1] = v8;
  }

  else
  {
    v12 = a2 + v11 - v8;
    if (v11 != v8)
    {
      do
      {
        *v8 = *v6;
        v13 = *(v6 + 16);
        v14 = *(v6 + 32);
        v15 = *(v6 + 64);
        *(v8 + 48) = *(v6 + 48);
        *(v8 + 64) = v15;
        *(v8 + 16) = v13;
        *(v8 + 32) = v14;
        v16 = *(v6 + 80);
        v17 = *(v6 + 96);
        v18 = *(v6 + 128);
        *(v8 + 112) = *(v6 + 112);
        *(v8 + 128) = v18;
        *(v8 + 80) = v16;
        *(v8 + 96) = v17;
        v19 = *(v6 + 144);
        v20 = *(v6 + 160);
        v21 = *(v6 + 192);
        *(v8 + 176) = *(v6 + 176);
        *(v8 + 192) = v21;
        *(v8 + 144) = v19;
        *(v8 + 160) = v20;
        std::string::operator=((v8 + 208), (v6 + 208));
        *(v8 + 232) = *(v6 + 232);
        v6 += 240;
        v8 += 240;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinPlaneDescriptor>,ZinPlaneDescriptor*,ZinPlaneDescriptor*,ZinPlaneDescriptor*>(a1, v12, a3, v11);
  }
}

void std::vector<ZinPlaneDescriptor>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ZinPlaneDescriptor>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinTiledCompressedPlaneDescriptor>,ZinTiledCompressedPlaneDescriptor*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *(a4 + 24) = *(v6 + 24);
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 32) = v8;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      *(a4 + 56) = *(v6 + 56);
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,WeightFileProperties>,0>(v5);
      v5 += 64;
    }
  }
}

uint64_t std::__split_buffer<ZinTiledCompressedPlaneDescriptor>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,WeightFileProperties>,0>(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<ZinTiledCompressedPlaneDescriptor>::__emplace_back_slow_path<ZinTiledCompressedPlaneDescriptor>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinTiledCompressedPlaneDescriptor>>(a1, v7);
  }

  v8 = v2 << 6;
  v17 = 0;
  v18 = v8;
  *(&v19 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 3);
  v10 = a2[2];
  *(v8 + 48) = *(a2 + 6);
  *(v8 + 32) = v10;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 4) = 0;
  *(v8 + 56) = *(a2 + 7);
  *&v19 = (v2 << 6) + 64;
  v11 = a1[1];
  v12 = (v2 << 6) + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinTiledCompressedPlaneDescriptor>,ZinTiledCompressedPlaneDescriptor*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<ZinTiledCompressedPlaneDescriptor>::~__split_buffer(&v17);
  return v16;
}

void sub_1A69E5F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ZinTiledCompressedPlaneDescriptor>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<ZinTiledCompressedPlaneDescriptor>::__assign_with_size[abi:ne200100]<ZinTiledCompressedPlaneDescriptor*,ZinTiledCompressedPlaneDescriptor*>(char **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 6)
  {
    std::vector<ZinTiledCompressedPlaneDescriptor>::__vdeallocate(a1);
    if (!(a4 >> 58))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 5;
      if (v9 >> 5 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFC0)
      {
        v11 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ZinTiledCompressedPlaneDescriptor>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 6)
  {
    std::__copy_impl::operator()[abi:ne200100]<ZinTiledCompressedPlaneDescriptor *,ZinTiledCompressedPlaneDescriptor *,ZinTiledCompressedPlaneDescriptor *>(&v17, __str, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v15 -= 64;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,WeightFileProperties>,0>(v15);
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<ZinTiledCompressedPlaneDescriptor *,ZinTiledCompressedPlaneDescriptor *,ZinTiledCompressedPlaneDescriptor *>(&v16, __str, (__str + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ZinTiledCompressedPlaneDescriptor>,ZinTiledCompressedPlaneDescriptor*,ZinTiledCompressedPlaneDescriptor*,ZinTiledCompressedPlaneDescriptor*>(a1, __str + v12, a3, a1[1]);
  }
}

void std::vector<ZinTiledCompressedPlaneDescriptor>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 64;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,WeightFileProperties>,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<ZinTiledCompressedPlaneDescriptor *,ZinTiledCompressedPlaneDescriptor *,ZinTiledCompressedPlaneDescriptor *>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    this[1].__r_.__value_.__r.__words[0] = v5[1].__r_.__value_.__r.__words[0];
    std::string::operator=((this + 32), (v5 + 32));
    this[2].__r_.__value_.__l.__size_ = v5[2].__r_.__value_.__l.__size_;
    this = (this + 64);
    v5 = (v5 + 64);
  }

  while (v5 != v6);
  return v6;
}

void *std::__tree<std::__value_type<std::string,std::set<ZinNamedType<unsigned long,AneIndexTag>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<ZinNamedType<unsigned long,AneIndexTag>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<ZinNamedType<unsigned long,AneIndexTag>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::set<ZinNamedType<unsigned long,AneIndexTag>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<ZinNamedType<unsigned long,AneIndexTag>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<ZinNamedType<unsigned long,AneIndexTag>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

void *std::__tree<std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<IOType,std::vector<ZinIrTensor *>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

void *std::__tree<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ZinSinglePlaneLinearIODescriptor>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ZinSinglePlaneLinearIODescriptor>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE32ZinSinglePlaneLinearIODescriptorEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSD_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSM_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[9].__r_.__value_.__r.__words[2] = 0u;
  *&this[10].__r_.__value_.__r.__words[1] = 0u;
  v5 = vdupq_n_s64(1uLL);
  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[2].__r_.__value_.__r.__words[1] = 0u;
  *&this[3].__r_.__value_.__l.__data_ = v5;
  *&this[3].__r_.__value_.__r.__words[2] = v5;
  *&this[4].__r_.__value_.__r.__words[1] = v5;
  *&this[5].__r_.__value_.__l.__data_ = v5;
  *&this[5].__r_.__value_.__r.__words[2] = v5;
  *&this[6].__r_.__value_.__r.__words[1] = v5;
  *&this[7].__r_.__value_.__l.__data_ = v5;
  *&this[7].__r_.__value_.__r.__words[2] = v5;
  *&this[8].__r_.__value_.__r.__words[1] = v5;
  *&this[9].__r_.__value_.__l.__data_ = v5;
  std::string::basic_string[abi:ne200100]<0>(&this[9].__r_.__value_.__r.__words[2], "");
  this[10].__r_.__value_.__r.__words[2] = 0;
  return this;
}

void sub_1A69E6644(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ZinMultiPlaneLinearIODescriptor>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ZinMultiPlaneLinearIODescriptor>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,ZinTiledCompressedIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTiledCompressedIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTiledCompressedIODescriptor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,ZinTiledCompressedIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTiledCompressedIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTiledCompressedIODescriptor>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,ZinTiledCompressedIODescriptor>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ZinTiledCompressedIODescriptor>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ZinTiledCompressedIODescriptor>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,ZinLiveInputParamDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLiveInputParamDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLiveInputParamDescriptor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,ZinLiveInputParamDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinLiveInputParamDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinLiveInputParamDescriptor>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE27ZinLiveInputParamDescriptorEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSD_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSM_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[2].__r_.__value_.__l.__size_ = 0;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[1].__r_.__value_.__l.__data_ = 0u;
  std::string::basic_string[abi:ne200100]<0>(&this[1].__r_.__value_.__l.__size_, "");
  this[2].__r_.__value_.__l.__size_ = 0;
  return this;
}

void sub_1A69E6B4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrBindings::GetMultiPlaneUncompressedDescriptor(uint8_t *buf, uint64_t a2, void *a3, void *a4)
{
  if (*(a2 + 55) < 0)
  {
    a3 = *a3;
  }

  *buf = 136315138;
  *a4 = a3;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to retrieve base dimension for 4cc IO %s", buf, 0xCu);
}

_BYTE *ZinHandleMultiAneSynchronization::SetMirInfoForCcDmaLayer(ZinHandleMultiAneSynchronization *this, ZinCcdmaMemoryLayer *a2, ZinIrSymbol *a3, ZinIrSymbol *a4, ZinIrSymbol *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  Tensor = ZinANELayer::GetTensor(a2);
  v17 = 0;
  v18 = a4;
  __p = 0;
  v16 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(&__p, &v18, &v19, 1uLL);
  Hal = ZinIrTarget::GetHal(*(*this + 200));
  v12 = (*(*Hal + 16))(Hal);
  ZinIrTensor::SetMirAndSymbols(Tensor, &__p, v12);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  CcdmaMirInfo = ZinCcdmaLayer::GetCcdmaMirInfo(a2);
  ZinCcdmaLayerMirInfo::SetDstSymbol(CcdmaMirInfo, a4);
  ZinCcdmaLayerMirInfo::SetSrcSymbol(CcdmaMirInfo, a3);
  ZinCcdmaLayerMirInfo::SetUpdateEventSymbol(CcdmaMirInfo, a5);
  ZinCcdmaLayerMirInfo::SetUpdateEventAmount(CcdmaMirInfo, 1);
  return ZinCcdmaLayerMirInfo::SetCounterMode(CcdmaMirInfo, 2);
}

void sub_1A69E6E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinHandleMultiAneSynchronization::CreateRemoteMemCopyLayers(ZinIrContext **a1, ZinIrContext **a2, uint64_t a3, uint64_t a4)
{
  CFGraph = ZinIrContext::GetCFGraph(*a1, 0);
  DeviceMesh = ZinIrControlFlowGraph::GetDeviceMesh(CFGraph);
  if ((*(DeviceMesh + 32) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if (ZinCollectiveCommunicationLayer::OperatesOnSubsetOfInterDieAxes(a2))
  {
    ZinAssertImpl("cc dma layer generation for cc layers that operate on subset of inter axes is not supported yet");
  }

  NumDies = ZinIrDeviceMesh::GetNumDies(DeviceMesh);
  NumAnesOnDie = ZinIrDeviceMesh::GetNumAnesOnDie(DeviceMesh);
  MemoryPools = ZinIrContext::GetMemoryPools(a2);
  *(&v28.__r_.__value_.__s + 23) = 14;
  strcpy(&v28, "multi_ane_sync");
  v8 = std::string::append(&v28, "_xfm", 4uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = *(a2 + 71);
  if (v10 >= 0)
  {
    v11 = (a2 + 6);
  }

  else
  {
    v11 = a2[6];
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 71);
  }

  else
  {
    v12 = a2[7];
  }

  v13 = std::string::append(&v29, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v30, "_Ccdma", 6uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  ZinObjectNameFactory::ZinObjectNameFactory(v32, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (NumAnesOnDie <= NumDies + NumAnesOnDie - 2)
  {
    v17 = (*(*a2 + 42))(a2, v32);
    if (v17)
    {
      RemoteReplicatedBssBarId = ZinSPMDUtils::GetRemoteReplicatedBssBarId(a1[1], 0);
      Tensor = ZinANELayer::GetTensor(v17);
      v20 = *((*(***MemoryPools + 40))(**MemoryPools, 0) + 160);
      if (!v20 || (v21 = *(v20 + 40), v21 == *(v20 + 48)))
      {
        v22 = 0;
      }

      else
      {
        v22 = *v21;
      }

      Hal = ZinIrTarget::GetHal(*(*a1 + 25));
      v24 = (*(*Hal + 16))(Hal);
      CreateRemoteMirrorSymbolFromLocalSymbol((Tensor + 40), v22, RemoteReplicatedBssBarId, *(v24 + 752));
    }

    ZinAssertImpl("%s: Failed to create Cdma layer", "void ZinHandleMultiAneSynchronization::CreateRemoteMemCopyLayers(const ZinCollectiveCommunicationLayer *, ZinIrOpLayerGraph *, std::unordered_map<const ZinIrOpLayer *, SyncLayers> &)");
  }

  v32[0] = &unk_1F19D0088;
  if (v33 < 0)
  {
    operator delete(v32[1]);
  }
}

void sub_1A69E7420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void CreateRemoteMirrorSymbolFromLocalSymbol(const std::string *a1, uint64_t a2, __int16 a3, unsigned int a4)
{
  v18 = *(a2 + 216);
  if (*(a2 + 247) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *(a2 + 224), *(a2 + 232));
  }

  else
  {
    v19 = *(a2 + 224);
  }

  v20 = *(a2 + 248);
  v21 = *(a2 + 264);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ZinTensorDescriptor,ZinKernelDescriptor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v22, a2 + 272);
  std::string::operator=(&v19, a1);
  v8 = *(a2 + 8);
  v13 = v18;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v19;
  }

  v15 = v20;
  v16 = v21;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ZinTensorDescriptor,ZinKernelDescriptor>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v17, v22);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12[0] = 0;
  v12[24] = 0;
  ZinIrSection::CreateSymbolAtOffset(v8, &v13, 0, v9, v10, a3 | 0x100, a4, v11, 0, v12);
}

void sub_1A69E7724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1A69E771CLL);
}

void ZinHandleMultiAneSynchronization::CreateSynchronizationLayers(ZinIrContext **this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  CFGraph = ZinIrContext::GetCFGraph(*this, 0);
  if (!*(CFGraph + 376))
  {
    ZinAssertImpl("Must run scheduler first");
  }

  v5 = *(CFGraph + 360);
  v6 = (CFGraph + 368);
  if (v5 != (CFGraph + 368))
  {
    do
    {
      v7 = v5[5];
      v8 = v5[6];
      while (v7 != v8)
      {
        v9 = *v7;
        if (ZinIrOpLayer::IsCollectiveCommunicationLayer(*v7))
        {
          if (ZinCollectiveCommunicationLayer::GetEventTensor(v9))
          {
            if ((*(*v9 + 352))(v9))
            {
              ZinIrTarget::GetHal(v5[4]);
              ZinIrContext::GetMemoryPools(v9);
              ZinCollectiveCommunicationLayer::CreateTMSignalEventLayer(v9);
            }

            ZinIrTarget::GetHal(v5[4]);
            ZinCollectiveCommunicationLayer::CreateTMWaitForEventLayer(v9);
          }

          if ((*(*v9 + 344))(v9))
          {
            ZinIrTarget::GetHal(v5[4]);
            ZinHandleMultiAneSynchronization::CreateRemoteMemCopyLayers(this, v9, v10, a2);
          }
        }

        ++v7;
      }

      v11 = v5[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v6);
  }
}

void ZinHandleMultiAneSynchronization::CreateNewScheduleMap(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  *a3 = a3 + 8;
  v4 = *a1;
  v21 = a1 + 1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v24 = v4[4];
      v26 = 0;
      v27 = 0;
      __p = 0;
      std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, 0, 0, 0);
      std::__tree<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,std::__map_value_compare<ZinIrBasicBlock *,std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,ScheduleComparator,true>,std::allocator<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>>>::__emplace_unique_key_args<ZinIrBasicBlock *,std::pair<ZinIrBasicBlock * const,std::vector<ZinIrOpLayer *>>>(a3, &v24, &v24);
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      v6 = v4[5];
      v7 = v4[6];
      while (v6 != v7)
      {
        v23 = *v6;
        v8 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(a2, &v23);
        v9 = v8;
        if (v8)
        {
          v10 = v8[3];
          v11 = v8[4];
          while (v10 != v11)
          {
            v22 = *v10;
            v24 = v4 + 4;
            v12 = std::__tree<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,std::__map_value_compare<ZinIrBasicBlock *,std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,ScheduleComparator,true>,std::allocator<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>>>::__emplace_unique_key_args<ZinIrBasicBlock *,std::piecewise_construct_t const&,std::tuple<ZinIrBasicBlock * const&>,std::tuple<>>(a3, v4 + 4, &std::piecewise_construct, &v24);
            std::vector<ZinIrOpLayer *>::push_back[abi:ne200100]((v12 + 5), &v22);
            ++v10;
          }

          v24 = v4 + 4;
          v13 = std::__tree<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,std::__map_value_compare<ZinIrBasicBlock *,std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,ScheduleComparator,true>,std::allocator<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>>>::__emplace_unique_key_args<ZinIrBasicBlock *,std::piecewise_construct_t const&,std::tuple<ZinIrBasicBlock * const&>,std::tuple<>>(a3, v4 + 4, &std::piecewise_construct, &v24);
          std::vector<ZinIrOpLayer *>::push_back[abi:ne200100]((v13 + 5), &v23);
          v14 = v9[6];
          v15 = v9[7];
          while (v14 != v15)
          {
            v22 = *v14;
            v24 = v4 + 4;
            v16 = std::__tree<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,std::__map_value_compare<ZinIrBasicBlock *,std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,ScheduleComparator,true>,std::allocator<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>>>::__emplace_unique_key_args<ZinIrBasicBlock *,std::piecewise_construct_t const&,std::tuple<ZinIrBasicBlock * const&>,std::tuple<>>(a3, v4 + 4, &std::piecewise_construct, &v24);
            std::vector<ZinIrOpLayer *>::push_back[abi:ne200100]((v16 + 5), &v22);
            ++v14;
          }
        }

        else
        {
          v24 = v4 + 4;
          v17 = std::__tree<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,std::__map_value_compare<ZinIrBasicBlock *,std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,ScheduleComparator,true>,std::allocator<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>>>::__emplace_unique_key_args<ZinIrBasicBlock *,std::piecewise_construct_t const&,std::tuple<ZinIrBasicBlock * const&>,std::tuple<>>(a3, v4 + 4, &std::piecewise_construct, &v24);
          std::vector<ZinIrOpLayer *>::push_back[abi:ne200100]((v17 + 5), &v23);
        }

        ++v6;
      }

      v18 = v4[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v4[2];
          v20 = *v19 == v4;
          v4 = v19;
        }

        while (!v20);
      }

      v4 = v19;
    }

    while (v19 != v21);
  }
}

void ZinHandleMultiAneSynchronization::HandleLocalCcdmaDependencies(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    v3 = i[6];
    v4 = i[7];
    while (v3 != v4)
    {
      v5 = *v3;
      if (ZinIrOpLayer::IsCcdmaLayer(*v3))
      {
        if (ZinIrOpLayer::IsCollectiveCommunicationLayer(i[2]) && (v6 = i[2], (EventTensor = ZinCollectiveCommunicationLayer::GetEventTensor(v6)) != 0))
        {
          v8 = EventTensor;
          CcdmaMirInfo = ZinCcdmaLayer::GetCcdmaMirInfo(v5);
          v10 = *(CcdmaMirInfo + 16);
          v24[0] = *CcdmaMirInfo;
          v24[1] = v10;
          v12 = *(CcdmaMirInfo + 48);
          v11 = *(CcdmaMirInfo + 64);
          v13 = *(CcdmaMirInfo + 32);
          v25 = *(CcdmaMirInfo + 80);
          v24[3] = v12;
          v24[4] = v11;
          v24[2] = v13;
          v14 = *(v8 + 160);
          if (!v14 || (v15 = *(v14 + 40), v15 == *(v14 + 48)))
          {
            v16 = 0;
          }

          else
          {
            v16 = *v15;
          }

          ZinCcdmaLayerMirInfo::SetWairForEventSymbol(v24, v16);
          EventTargetThreshold = ZinCollectiveCommunicationLayer::GetEventTargetThreshold(v6);
          ZinCcdmaLayerMirInfo::SetWaitForEventValue(v24, EventTargetThreshold);
          ZinCcdmaLayer::SetCcdmaMirInfo(v5, v24);
        }

        else
        {
          v17 = (*(*i[2] + 40))(i[2], 0);
          ZinBondedUtils::GetLastProducersOfDramTensor(v17, v24);
          v18 = *(&v24[0] + 1);
          if (*(&v24[0] + 1))
          {
            v19 = *(&v24[0] + 1);
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
            if (v20 != (v24 + 8) && !v20[4])
            {
              v21 = *(v5 + 65);
              v22 = *(*(*&v24[0] + 40) + 384);
              if ((*(v21 + 1568) & 1) == 0)
              {
                *(v21 + 1568) = 1;
              }

              *(v21 + 1560) = v22;
            }
          }

          std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v24, v18);
        }
      }

      ++v3;
    }
  }
}

uint64_t ZinHandleMultiAneSynchronization::Run(ZinIrContext **this)
{
  ZinHandleMultiAneSynchronization::CreateSynchronizationLayers(this, v11);
  CFGraph = ZinIrContext::GetCFGraph(*this, 0);
  if (!*(CFGraph + 376))
  {
    ZinAssertImpl("Must run scheduler first");
  }

  ZinHandleMultiAneSynchronization::CreateNewScheduleMap((CFGraph + 360), v11, v10);
  v3 = ZinIrContext::GetCFGraph(*this, 0);
  if (*(v3 + 392) == *(v3 + 384) || (SetCachePrefetchOnLastANELayer((v3 + 384), 0), v4 = ZinIrContext::GetCFGraph(*this, 0), ZinIrControlFlowGraph::SetScheduleMap(v4, v10), IsANELayer = ZinIrContext::GetCFGraph(*this, 0), v6 = *(IsANELayer + 392), v7 = *(IsANELayer + 384), v6 == v7))
  {
    ZinAssertImpl("Must run scheduler first");
  }

  while (v6 != v7)
  {
    v8 = *(v6 - 8);
    v6 -= 8;
    IsANELayer = ZinIrOpLayer::IsANELayer(v8);
    if (IsANELayer)
    {
      v7 = v6 + 8;
      break;
    }
  }

  *(*(*(v7 - 8) + 520) + 1181) = 1;
  ZinHandleMultiAneSynchronization::HandleLocalCcdmaDependencies(IsANELayer, v11);
  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v10, v10[1]);
  std::__hash_table<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::__unordered_map_hasher<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::hash<ZinIrOpLayer const*>,std::equal_to<ZinIrOpLayer const*>,true>,std::__unordered_map_equal<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::equal_to<ZinIrOpLayer const*>,std::hash<ZinIrOpLayer const*>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>>>::~__hash_table(v11);
  return 0;
}

void sub_1A69E7E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__hash_table<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::__unordered_map_hasher<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::hash<ZinIrOpLayer const*>,std::equal_to<ZinIrOpLayer const*>,true>,std::__unordered_map_equal<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::equal_to<ZinIrOpLayer const*>,std::hash<ZinIrOpLayer const*>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t *SetCachePrefetchOnLastANELayer(uint64_t *result, char a2)
{
  v3 = *result;
  v4 = result[1];
  while (v4 != v3)
  {
    v5 = *(v4 - 8);
    v4 -= 8;
    result = ZinIrOpLayer::IsANELayer(v5);
    if (result)
    {
      v3 = v4 + 8;
      break;
    }
  }

  v6 = *(*(v3 - 8) + 520);
  if ((a2 & 1) != 0 || !*(v6 + 1120))
  {
    *(v6 + 1181) = a2;
  }

  return result;
}

void AddToLayerToSyncOpMapHelper(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v13 = a2;
  v14 = a1;
  if (!std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(a3, &v14))
  {
    v15 = &v14;
    v6 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::__unordered_map_hasher<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::hash<ZinIrOpLayer const*>,std::equal_to<ZinIrOpLayer const*>,true>,std::__unordered_map_equal<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::equal_to<ZinIrOpLayer const*>,std::hash<ZinIrOpLayer const*>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>>>::__emplace_unique_key_args<ZinIrOpLayer const*,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer const* const&>,std::tuple<>>(a3, &v14, &std::piecewise_construct, &v15);
    v8 = v6 + 3;
    v7 = v6[3];
    if (v7)
    {
      v6[4] = v7;
      operator delete(v7);
      *v8 = 0;
      v6[4] = 0;
      v6[5] = 0;
    }

    *v8 = 0;
    v6[4] = 0;
    v6[5] = 0;
    v10 = v6 + 6;
    v9 = v6[6];
    if (v9)
    {
      v6[7] = v9;
      operator delete(v9);
      *v10 = 0;
      v6[7] = 0;
      v6[8] = 0;
    }

    *v10 = 0;
    v6[7] = 0;
    v6[8] = 0;
  }

  v11 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(a3, &v14);
  v12 = 6;
  if (a4)
  {
    v12 = 3;
  }

  std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](&v11[v12], &v13);
}

void *std::__hash_table<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::__unordered_map_hasher<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::hash<ZinIrOpLayer const*>,std::equal_to<ZinIrOpLayer const*>,true>,std::__unordered_map_equal<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::equal_to<ZinIrOpLayer const*>,std::hash<ZinIrOpLayer const*>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>>>::__emplace_unique_key_args<ZinIrOpLayer const*,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer const* const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1A69E8270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<ZinIrOpLayer const* const,SyncLayers>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<ZinIrOpLayer const* const,SyncLayers>,0>(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::__unordered_map_hasher<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::hash<ZinIrOpLayer const*>,std::equal_to<ZinIrOpLayer const*>,true>,std::__unordered_map_equal<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::equal_to<ZinIrOpLayer const*>,std::hash<ZinIrOpLayer const*>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::__unordered_map_hasher<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::hash<ZinIrOpLayer const*>,std::equal_to<ZinIrOpLayer const*>,true>,std::__unordered_map_equal<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::equal_to<ZinIrOpLayer const*>,std::hash<ZinIrOpLayer const*>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::__unordered_map_hasher<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::hash<ZinIrOpLayer const*>,std::equal_to<ZinIrOpLayer const*>,true>,std::__unordered_map_equal<ZinIrOpLayer const*,std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>,std::equal_to<ZinIrOpLayer const*>,std::hash<ZinIrOpLayer const*>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer const*,SyncLayers>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<ZinIrOpLayer const* const,SyncLayers>,0>(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__tree<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,std::__map_value_compare<ZinIrBasicBlock *,std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,ScheduleComparator,true>,std::allocator<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>>>::__emplace_unique_key_args<ZinIrBasicBlock *,std::pair<ZinIrBasicBlock * const,std::vector<ZinIrOpLayer *>>>(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,std::__map_value_compare<ZinIrBasicBlock *,std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,ScheduleComparator,true>,std::allocator<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>>>::__find_equal<ZinIrBasicBlock *>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t ZinParseNeuronUnit(const __CFDictionary *a1, ZinIrNeuronUnitInfo *a2, CFArrayRef *a3)
{
  Value = CFDictionaryGetValue(a1, @"Params");
  if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFDictionaryGetTypeID()))
  {
    v13 = @"InvalidParamSyntax";
LABEL_36:
    ZinIrUnitStatus::SetError(a3, v13);
    return 3;
  }

  v8 = CFDictionaryGetValue(v6, @"Type");
  if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFStringGetTypeID()))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinParseNeuronUnit();
    }

    v13 = @"InvalidUnitNeuronType";
    goto LABEL_36;
  }

  if (!CFStringToZinIrNeuronType(v9, a2 + 20))
  {
    return 3;
  }

  v11 = *(a2 + 20);
  if (v11 == 3)
  {
    result = ZinParseFP16Token(v6, @"ReluMin", @"InvalidReluMinValSyntax", a2 + 23, a3, 0);
    if (result)
    {
      return result;
    }

    result = ZinParseFP16Token(v6, @"ReluMax", @"InvalidReluMaxValSyntax", a2 + 24, a3, 0);
    if (result)
    {
      return result;
    }

    if (*(a2 + 23) < *(a2 + 24))
    {
      v11 = *(a2 + 20);
      goto LABEL_11;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinParseNeuronUnit();
    }

    v13 = @"InvalidReluMinMaxVal";
    goto LABEL_36;
  }

LABEL_11:
  if (v11 == 2)
  {
    result = ZinParseFP16Token(v6, @"ReluOffset", @"InvalidReluOffsetSyntax", a2 + 21, a3, 0);
    if (result)
    {
      return result;
    }

    result = ZinParseFP16Token(v6, @"ReluSlope", @"InvalidReluSlopeSyntax", a2 + 22, a3, 0);
    if (result)
    {
      return result;
    }

    v11 = *(a2 + 20);
  }

  if (v11 == 4)
  {
    result = ZinParseFP16Token(v6, @"ReluSlope", @"InvalidReluSlopeSyntax", a2 + 22, a3, 0);
    if (result)
    {
      return result;
    }

    result = ZinParseFP16Token(v6, @"ReluMax", @"InvalidReluMaxValSyntax", a2 + 24, a3, 0);
    if (result)
    {
      return result;
    }

    v11 = *(a2 + 20);
  }

  if (v11 == 18 && ZinParseFP16Token(v6, @"EluAlpha", @"InvalidEluAlpha", a2 + 25, a3, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Missing Elu alpha inferred to 1.0f\n", v14, 2u);
    }

    *(a2 + 25) = 1065353216;
  }

  if (*(a2 + 20) == 31 && ZinParseFP16Token(v6, @"Alpha", @"InvalidAlpha", a2 + 26, a3, 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Missing alpha inferred to 1.0f\n", buf, 2u);
    }

    *(a2 + 26) = 1065353216;
  }

  if ((*(a2 + 20) - 13) > 2)
  {
    return 0;
  }

  *(a2 + 27) = 0;
  result = ZinParseFP16Token(v6, @"Epsilon", @"InvalidEpsilon", a2 + 27, a3, 1);
  if (!result)
  {
    return 0;
  }

  return result;
}

void ZinParseNeuronUnit()
{
  *v0 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ReluMax should be larger than ReluMin.\n", v0, 2u);
}

{
  *v0 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Missing required type in neuron parameter dictionary.\n", v0, 2u);
}

double ZinRtOperationRuntimeBindIO::ZinRtOperationRuntimeBindIO(uint64_t a1, __int128 *a2, char a3)
{
  v4 = ZinRtOperation::ZinRtOperation(a1, a2);
  *(v4 + 80) = 0x40000000;
  *(v4 + 92) = 0;
  *(v4 + 84) = 0;
  *v4 = &unk_1F19F3A80;
  result = 0.0;
  *(v4 + 100) = 0u;
  *(v4 + 116) = 0u;
  *(v4 + 132) = 0u;
  *(v4 + 148) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0x40000000;
  *(v4 + 188) = 0;
  *(v4 + 180) = 0;
  *(v4 + 196) = -1;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 208) = 0;
  *(v4 + 16) &= 0xFFFFFFE1;
  *(v4 + 72) = 0;
  *(v4 + 200) = a3;
  return result;
}

unint64_t ZinRtOperationRuntimeBindIO::SerializeHelper(uint64_t a1, int a2, uint64_t *a3, unint64_t a4, void *a5, uint64_t *a6)
{
  v11 = ZinRtOperationRuntimeBind::SerializeHelper(a1, a2, a3, a4, a5, a6);
  v12 = v11;
  if (a2)
  {
    v13 = ZinRegisterPacking::ProcessRegisters(a1 + 92, 2uLL, 5896, 0, a2 ^ 1u);
    v14 = ZinRegisterPacking::ProcessRegisters(a1 + 100, 4uLL, 5632, 0, a2 ^ 1u);
    v15 = ZinRegisterPacking::ProcessRegisters(a1 + 116, 5uLL, 5120, 0, a2 ^ 1u);
    v16 = v12 + v13 + v14 + v15 + ZinRegisterPacking::ProcessRegisters(a1 + 136, 0xAuLL, 5248, 0, a2 ^ 1u) + 2;
    if ((*(a1 + 200) & 1) == 0)
    {
      goto LABEL_11;
    }

    v17 = ZinRegisterPacking::ProcessRegisters(a1 + 176, 1uLL, 5952, 0, a2 ^ 1u);
    v18 = 0;
    v19 = v17 + v16;
    goto LABEL_10;
  }

  PointerAtOffset = GetPointerAtOffset(a3, v11 + a4, 2uLL);
  v21 = ZinRegisterPacking::ProcessRegisters(a1 + 92, 2uLL, 5896, PointerAtOffset, a2 ^ 1u) + v12;
  v22 = GetPointerAtOffset(a3, v21 + a4, 4uLL);
  v23 = ZinRegisterPacking::ProcessRegisters(a1 + 100, 4uLL, 5632, v22, a2 ^ 1u) + v21;
  v24 = GetPointerAtOffset(a3, v23 + a4, 5uLL);
  v25 = ZinRegisterPacking::ProcessRegisters(a1 + 116, 5uLL, 5120, v24, a2 ^ 1u) + v23;
  v26 = GetPointerAtOffset(a3, v25 + a4, 0xAuLL);
  v27 = ZinRegisterPacking::ProcessRegisters(a1 + 136, 0xAuLL, 5248, v26, a2 ^ 1u) + v25;
  ZinRtSequentialCommand::ZinRtSequentialCommand(v34, 0x17C0u, 1);
  RawHeader = ZinRtSequentialCommand::GetRawHeader(v34);
  v29 = *a3;
  *(*a3 + 4 * v27 + 4 * a4) = RawHeader;
  v30 = *(a1 + 231);
  if (v30 < 0)
  {
    v30 = *(a1 + 216);
  }

  v31 = v27 + 1;
  if (v30)
  {
    AddSymtabIndexRelocation(a1 + 208, 0, 4 * (v31 + a4), a6);
    v29 = *a3;
  }

  *(v29 + 4 * v31 + 4 * a4) = *(a1 + 196);
  v16 = v27 + 2;
  if (*(a1 + 200))
  {
    v32 = GetPointerAtOffset(a3, v16 + a4, 1uLL);
    v19 = ZinRegisterPacking::ProcessRegisters(a1 + 176, 1uLL, 5952, v32, a2 ^ 1u) + v16;
    v18 = GetPointerAtOffset(a3, v19 + a4, 4uLL);
LABEL_10:
    v16 = ZinRegisterPacking::ProcessRegisters(a1 + 180, 4uLL, 6016, v18, a2 ^ 1u) + v19;
  }

LABEL_11:
  if (v16 >= 0xFFFFFFFF)
  {
    ZinAssertImpl("Bind IO operation is too large");
  }

  return v16;
}

unint64_t ZinRtOperationRuntimeBindIO::GetSerializedSizeInWords(uint64_t a1, void *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  memset(v5, 0, sizeof(v5));
  v3 = ZinRtOperationRuntimeBindIO::SerializeHelper(a1, 1, v6, 0, a2, v5);
  ZinRtOperation::SetOperationSize(a1, v3);
  v7 = v5;
  std::vector<ZinIrSymbolData>::__destroy_vector::operator()[abi:ne200100](&v7);
  return v3;
}

void sub_1A69E8BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<ZinIrSymbolData>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t ZinRtOperationRuntimeBindIO::Serialize(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4, uint64_t *a5)
{
  v9 = ZinRtOperationRuntimeBindIO::SerializeHelper(a1, 0, a2, a3, a4, a5);
  ZinRtOperation::AddOperationSymbol(a1, a2, a3, v9, a5);
  return v9;
}

__n128 ZinRtOperationRuntimeBindIO::SetDims(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 132) = a2[1].n128_u32[0];
  *(a1 + 116) = result;
  return result;
}

__n128 ZinRtOperationRuntimeBindIO::SetStrides(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 168) = *(a2 + 32);
  *(a1 + 152) = v3;
  *(a1 + 136) = result;
  return result;
}

uint64_t ZinRtOperationRuntimeBindIO::SetCompressedMetadataBarInfo(uint64_t result, uint64_t a2)
{
  if ((*(result + 200) & 1) == 0)
  {
    ZinAssertImpl("Error: Cannot have metadata", a2, v2, v3);
  }

  *(result + 176) = a2;
  return result;
}

uint64_t ZinRtOperationRuntimeBindIO::SetCompressedMetadataOffset(uint64_t this, uint64_t a2)
{
  if ((*(this + 200) & 1) == 0)
  {
    ZinAssertImpl("Error: Cannot have metadata", a2, v2, v3);
  }

  *(this + 188) = a2;
  return this;
}

uint64_t ZinRtOperationRuntimeBindIO::SetCompressedMetadataSize(uint64_t this, uint64_t a2)
{
  if ((*(this + 200) & 1) == 0)
  {
    ZinAssertImpl("Error: Cannot have metadata", a2, v2, v3);
  }

  *(this + 180) = a2;
  return this;
}

void ZinRtOperationRuntimeBindIO::GetDebugPrintStr(ZinRtOperationRuntimeBindIO *this@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v10, "\n", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  ZinRtOperation::GetDebugPrintStr(&__p, this);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v11, p_p, size);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1A69E8E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

double ZinRtOperationRuntimeParam::ZinRtOperationRuntimeParam(uint64_t a1, __int128 *a2)
{
  v2 = ZinRtOperation::ZinRtOperation(a1, a2);
  *v2 = &unk_1F19F3AD8;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0;
  *&result = 10;
  *(v2 + 72) = xmmword_1A75D59E0;
  return result;
}

unint64_t ZinRtOperationRuntimeParam::GetSerializedSizeInWords(uint64_t a1, void *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  memset(v5, 0, sizeof(v5));
  v3 = ZinRtOperationRuntimeParam::SerializeHelper(a1, 1, v6, 0, a2, v5);
  ZinRtOperation::SetOperationSize(a1, v3);
  v7 = v5;
  std::vector<ZinIrSymbolData>::__destroy_vector::operator()[abi:ne200100](&v7);
  return v3;
}

void sub_1A69E8F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<ZinIrSymbolData>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t ZinRtOperationRuntimeParam::SerializeHelper(uint64_t a1, int a2, uint64_t *a3, unint64_t a4, void *a5, uint64_t *a6)
{
  v11 = ZinRtOperationRuntime::SerializeHelper(a1, a2, a3, a4, a5, a6);
  v12 = v11;
  if (a2)
  {
    PointerAtOffset = 0;
  }

  else
  {
    PointerAtOffset = GetPointerAtOffset(a3, v11 + a4, 1uLL);
  }

  v14 = ZinRegisterPacking::ProcessRegisters(a1 + 88, 1uLL, 7028, PointerAtOffset, a2 ^ 1u) + v12;
  return AddVMAddrRelocation(1754, 1755, 1756, a2, a3, v14 + a4, a6, a1 + 96, *(a1 + 76), HIDWORD(*(a1 + 76)), *(a1 + 84), 1) + v14;
}

unint64_t ZinRtOperationRuntimeParam::Serialize(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4, uint64_t *a5)
{
  v9 = ZinRtOperationRuntimeParam::SerializeHelper(a1, 0, a2, a3, a4, a5);
  ZinRtOperation::AddOperationSymbol(a1, a2, a3, v9, a5);
  return v9;
}

void ZinRtOperationRuntimeParam::GetDebugPrintStr(ZinRtOperationRuntimeParam *this@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v10, "\n", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  ZinRtOperation::GetDebugPrintStr(&__p, this);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v11, p_p, size);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1A69E91C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void ZinRtOperationRuntimeParam::SetFormat(ZinRtOperationRuntimeParam *this, int a2)
{
  v2 = *(this + 15);
  if (v2)
  {
    if (*v2 == 1)
    {
      v3 = *(this + 16);
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v2[3] = a2;
        goto LABEL_6;
      }

      v2[3] = a2;
    }

    else
    {
      if (*v2)
      {
        return;
      }

      v3 = *(this + 16);
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v2[2] = a2;
LABEL_6:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        return;
      }

      v2[2] = a2;
    }
  }
}

void ZinRtOperationRuntimeParam::~ZinRtOperationRuntimeParam(ZinRtOperationRuntimeParam *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  *this = &unk_1F19D6598;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

{
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  *this = &unk_1F19D6598;
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  JUMPOUT(0x1AC55A070);
}

__int128 *ZinIrHalH16c::GetParams(ZinIrHalH16c *this)
{
  v156 = *MEMORY[0x1E69E9840];
  {
    ZinIrHalH16c::GetParams(void)const::ZinIrHalH16cParameters = xmmword_1A75966C0;
    unk_1EB29E200 = xmmword_1A7595A00;
    xmmword_1EB29E210 = xmmword_1A75966D0;
    unk_1EB29E220 = xmmword_1A75966E0;
    xmmword_1EB29E230 = xmmword_1A7595B90;
    unk_1EB29E240 = xmmword_1A75966F0;
    xmmword_1EB29E250 = xmmword_1A75966E0;
    unk_1EB29E260 = xmmword_1A7595A50;
    xmmword_1EB29E270 = xmmword_1A7596700;
    unk_1EB29E280 = xmmword_1A7596710;
    xmmword_1EB29E290 = xmmword_1A7595A80;
    unk_1EB29E2A0 = vdupq_n_s64(4uLL);
    qword_1EB29E2B0 = 4;
    unk_1EB29E2B8 = xmmword_1A75D5A10;
    unk_1EB29E2C8 = unk_1A75D5A20;
    unk_1EB29E2E8 = unk_1A75D5A20;
    unk_1EB29E2D8 = xmmword_1A75D5A10;
    qword_1EB29E308 = 4;
    xmmword_1EB29E2F8 = xmmword_1A75D5A30;
    xmmword_1EB29E310 = xmmword_1A7595A90;
    unk_1EB29E320 = xmmword_1A7595AB0;
    xmmword_1EB29E330 = xmmword_1A7595AB0;
    unk_1EB29E340 = xmmword_1A7595AB0;
    xmmword_1EB29E350 = xmmword_1A7595AB0;
    unk_1EB29E360 = xmmword_1A7595AB0;
    xmmword_1EB29E370 = vdupq_n_s64(0x10000uLL);
    unk_1EB29E380 = xmmword_1EB29E370;
    xmmword_1EB29E390 = xmmword_1EB29E370;
    unk_1EB29E3A0 = xmmword_1A7595AD0;
    xmmword_1EB29E3B0 = xmmword_1A7595AE0;
    unk_1EB29E3C0 = xmmword_1A7595AF0;
    xmmword_1EB29E3D0 = xmmword_1A7596720;
    unk_1EB29E3E0 = xmmword_1A7596730;
    xmmword_1EB29E3F0 = xmmword_1A7595B20;
    unk_1EB29E400 = xmmword_1A7596740;
    xmmword_1EB29E410 = xmmword_1A7595B40;
    unk_1EB29E420 = xmmword_1A75A29B0;
    xmmword_1EB29E430 = vdupq_n_s64(2uLL);
    unk_1EB29E440 = xmmword_1A7595B60;
    xmmword_1EB29E450 = xmmword_1A7595B70;
    unk_1EB29E460 = xmmword_1A7595B80;
    xmmword_1EB29E470 = xmmword_1A7596760;
    unk_1EB29E480 = xmmword_1A75A3E80;
    word_1EB29E4A0 = 256;
    xmmword_1EB29E490 = 0u;
    xmmword_1EB29E4A8 = xmmword_1A7595B90;
    xmmword_1EB29E4B8 = xmmword_1A7595BA0;
    xmmword_1EB29E4C8 = xmmword_1A7595BB0;
    qword_1EB29E4D8 = 0x10000;
    byte_1EB29E4E0 = 122;
    xmmword_1EB29E4E8 = xmmword_1A7596780;
    dword_1EB29E4F8 = 520097776;
    qword_1EB29E4FC = 0xFFFFFFEB0000000BLL;
    xmmword_1EB29E508 = xmmword_1A7595BD0;
    xmmword_1EB29E518 = xmmword_1A7595BE0;
    xmmword_1EB29E528 = xmmword_1A7595BF0;
    v115 = vdupq_n_s64(8uLL);
    v116 = xmmword_1A7596790;
    v117 = xmmword_1A75967A0;
    v118 = xmmword_1A75967B0;
    qword_1EB29E548 = 0;
    xmmword_1EB29E538 = 0u;
    std::vector<std::pair<unsigned long,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,unsigned long> const*,std::pair<unsigned long,unsigned long> const*>(&xmmword_1EB29E538, v115.i8, &v119, 4uLL);
    xmmword_1EB29E550 = xmmword_1A75967C0;
    unk_1EB29E560 = xmmword_1A7595C10;
    xmmword_1EB29E570 = vdupq_n_s64(0x20uLL);
    unk_1EB29E580 = xmmword_1A7595A50;
    xmmword_1EB29E590 = vdupq_n_s64(8uLL);
    unk_1EB29E5A0 = xmmword_1A7595C20;
    xmmword_1EB29E5B0 = xmmword_1A7595C30;
    unk_1EB29E5C0 = vdupq_n_s64(0x100uLL);
    xmmword_1EB29E5D0 = vdupq_n_s64(0x80uLL);
    unk_1EB29E5E0 = xmmword_1A75967D0;
    xmmword_1EB29E5F0 = xmmword_1A75967E0;
    unk_1EB29E600 = xmmword_1A75967F0;
    xmmword_1EB29E610 = xmmword_1A7595C70;
    unk_1EB29E620 = xmmword_1A7595C80;
    xmmword_1EB29E630 = vdupq_n_s64(2uLL);
    unk_1EB29E640 = xmmword_1A7595AB0;
    xmmword_1EB29E650 = vdupq_n_s64(0x10000uLL);
    unk_1EB29E660 = xmmword_1A7596800;
    qword_1EB29E670 = 0x100000101;
    dword_1EB29E678 = 65537;
    unk_1EB29E68B = 16843009;
    qword_1EB29E67C = 0x101010101010101;
    unk_1EB29E684 = 0x101010101010101;
    dword_1EB29E693 = 65793;
    word_1EB29E697 = 257;
    byte_1EB29E699 = 0;
    qword_1EB29E69A = 0x101010101010101;
    word_1EB29E6A2 = 0;
    byte_1EB29E6A4 = 0;
    xmmword_1EB29E6A8 = xmmword_1A7595B90;
    xmmword_1EB29E6B8 = xmmword_1A7595CB0;
    qword_1EB29E6D0 = 0;
    unk_1EB29E6D8 = 0;
    qword_1EB29E6C8 = 40;
    word_1EB29E6E0 = 1;
    dword_1EB29E6E2 = 16843009;
    word_1EB29E6E6 = 1;
    qword_1EB29E6E8 = 0;
    word_1EB29E6F0 = 257;
    byte_1EB29E6F2 = 1;
    qword_1EB29E6F8 = 16;
    byte_1EB29E700 = 0;
    dword_1EB29E701 = 16843009;
    qword_1EB29E705 = 0x1000000000000;
    dword_1EB29E70D = 16843009;
    dword_1EB29E711 = 16844808;
    byte_1EB29E715 = 0;
    *(&dword_1EB29E716 + 3) = 16843009;
    dword_1EB29E716 = 16843009;
    qword_1EB29E71D = 0x101010000010000;
    dword_1EB29E725 = 65792;
    word_1EB29E729 = 2049;
    byte_1EB29E72B = 8;
    dword_1EB29E72C = 256;
    xmmword_1EB29E730 = xmmword_1A7596810;
    qword_1EB29E740 = 4;
    word_1EB29E748 = 0;
    dword_1EB29E74C = 1;
    dword_1EB29E750 = 0x10000;
    word_1EB29E758 = 257;
    dword_1EB29E754 = 16843009;
    byte_1EB29E75A = 0;
    dword_1EB29E75B = 16843009;
    word_1EB29E75F = 257;
    dword_1EB29E761 = 1542;
    word_1EB29E765 = 1;
    dword_1EB29E767 = 16843009;
    std::string::__init(&qword_1EB29E770, "Simple", 6uLL);
    qword_1EB29E788 = 50331648;
    dword_1EB29E790 = 1071225242;
    unk_1EB29E794 = 0x230000000ELL;
    unk_1EB29E7A0 = xmmword_1A7595CC0;
    unk_1EB29E7B0 = vdupq_n_s64(0x40uLL);
    unk_1EB29E7C0 = xmmword_1A7595C00;
    qword_1EB29E7D0 = 8;
    byte_1EB29E7D8 = 0;
    unk_1EB29E7DC = 0xF3E800000;
    byte_1EB29E7E4 = 1;
    v153 = xmmword_1A75D5A48;
    v154 = 9;
    qword_1EB29E7F0 = 0;
    unk_1EB29E7F8 = 0;
    qword_1EB29E7E8 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29E7E8, &v153, &v155, 5uLL);
    v150[0] = xmmword_1A75D5A5C;
    v150[1] = unk_1A75D5A6C;
    *v151 = xmmword_1A75D5A7C;
    *&v151[12] = *(&xmmword_1A75D5A7C + 12);
    qword_1EB29E808 = 0;
    unk_1EB29E810 = 0;
    qword_1EB29E800 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29E800, v150, &v152, 0xFuLL);
    v147[4] = xmmword_1A75D5AD8;
    v147[5] = unk_1A75D5AE8;
    *v148 = xmmword_1A75D5AF8;
    *&v148[12] = *(&xmmword_1A75D5AF8 + 12);
    v147[0] = xmmword_1A75D5A98;
    v147[1] = unk_1A75D5AA8;
    v147[2] = xmmword_1A75D5AB8;
    v147[3] = unk_1A75D5AC8;
    qword_1EB29E820 = 0;
    unk_1EB29E828 = 0;
    qword_1EB29E818 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29E818, v147, &v149, 0x1FuLL);
    v144[7] = unk_1A75D5B84;
    v144[8] = xmmword_1A75D5B94;
    *v145 = unk_1A75D5BA4;
    *&v145[12] = unk_1A75D5BB0;
    v144[4] = xmmword_1A75D5B54;
    v144[5] = unk_1A75D5B64;
    v144[6] = xmmword_1A75D5B74;
    v144[0] = xmmword_1A75D5B14;
    v144[1] = unk_1A75D5B24;
    v144[2] = xmmword_1A75D5B34;
    v144[3] = unk_1A75D5B44;
    qword_1EB29E830 = 0;
    qword_1EB29E838 = 0;
    qword_1EB29E840 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29E830, v144, &v146, 0x2BuLL);
    v111 = 2;
    v112 = xmmword_1A7595CF0;
    v113 = 4354;
    v114 = 0;
    v48 = 0;
    v49 = 0;
    v47 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v47, &v111, v115.i8, 1uLL);
    v115.i32[0] = 641877825;
    v116 = 0uLL;
    v115.i64[1] = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(&v115.i64[1], v47, v48, (v48 - v47) >> 5);
    v107 = 2;
    v108 = xmmword_1A7595CF0;
    v109 = 4354;
    v110 = 1;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v44, &v107, &v111, 1uLL);
    LODWORD(v117) = 759318337;
    v118 = 0uLL;
    *(&v117 + 1) = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(&v117 + 1, v44, v45, (v45 - v44) >> 5);
    v103 = 2;
    v104 = xmmword_1A7595CF0;
    v105 = 4354;
    v106 = 2;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v41, &v103, &v107, 1uLL);
    LODWORD(v119) = 792872769;
    v120 = 0;
    v121 = 0;
    *(&v119 + 1) = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(&v119 + 1, v41, v42, (v42 - v41) >> 5);
    v99 = 2;
    v100 = xmmword_1A7595CF0;
    v101 = 4354;
    v102 = 3;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v38, &v99, &v103, 1uLL);
    v122 = 2084718401;
    memset(v123, 0, sizeof(v123));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v123, v38, v39, (v39 - v38) >> 5);
    v95 = 10;
    v96 = vdupq_n_s64(1uLL);
    v97 = 2049;
    v98 = 0;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v35, &v95, &v99, 1uLL);
    v124 = 642527542;
    memset(v125, 0, sizeof(v125));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v125, v35, v36, (v36 - v35) >> 5);
    v91 = 3;
    v92 = vdupq_n_s64(1uLL);
    v93 = 1794;
    v94 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v32, &v91, &v95, 1uLL);
    v126 = 642527336;
    memset(v127, 0, sizeof(v127));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v127, v32, v33, (v33 - v32) >> 5);
    v87 = 3;
    v88 = vdupq_n_s64(1uLL);
    v89 = 1794;
    v90 = 1;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v29, &v87, &v91, 1uLL);
    v128 = 759967848;
    memset(v129, 0, sizeof(v129));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v129, v29, v30, (v30 - v29) >> 5);
    v83 = 3;
    v84 = vdupq_n_s64(1uLL);
    v85 = 1794;
    v86 = 2;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v26, &v83, &v87, 1uLL);
    v130 = 793522280;
    memset(v131, 0, sizeof(v131));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v131, v26, v27, (v27 - v26) >> 5);
    v79 = 3;
    v80 = vdupq_n_s64(1uLL);
    v81 = 1794;
    v82 = 3;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v23, &v79, &v83, 1uLL);
    v132 = 2085367912;
    memset(v133, 0, sizeof(v133));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v133, v23, v24, (v24 - v23) >> 5);
    v75 = 3;
    v76 = xmmword_1A7595CF0;
    v77 = 4866;
    v78 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v20, &v75, &v79, 1uLL);
    v134 = 642934849;
    memset(v135, 0, sizeof(v135));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v135, v20, v21, (v21 - v20) >> 5);
    v71 = 3;
    v72 = xmmword_1A7595CF0;
    v73 = 4866;
    v74 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v17, &v71, &v75, 1uLL);
    v136 = 760375361;
    memset(v137, 0, sizeof(v137));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v137, v17, v18, (v18 - v17) >> 5);
    v67 = 3;
    v68 = xmmword_1A7595CF0;
    v69 = 4866;
    v70 = 2;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v14, &v67, &v71, 1uLL);
    v138 = 793929793;
    memset(v139, 0, sizeof(v139));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v139, v14, v15, (v15 - v14) >> 5);
    v63 = 3;
    v64 = xmmword_1A7595CF0;
    v65 = 4866;
    v66 = 3;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v11, &v63, &v67, 1uLL);
    v140 = 2085775425;
    memset(v141, 0, sizeof(v141));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v141, v11, v12, (v12 - v11) >> 5);
    v59 = 3;
    v60 = vdupq_n_s64(1uLL);
    v61 = 1794;
    v62 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v8, &v59, &v63, 1uLL);
    v142 = 707153000;
    memset(v143, 0, sizeof(v143));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v143, v8, v9, (v9 - v8) >> 5);
    std::map<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>::map[abi:ne200100](qword_1EB29E848, &v115, 14);
    dword_1EB29E860 = 65793;
    word_1EB29E864 = 256;
    byte_1EB29E866 = 0;
    qword_1EB29E868 = 0;
    *(&qword_1EB29E868 + 6) = 0;
    word_1EB29E876 = 257;
    unk_1EB29E878 = vdupq_n_s64(0x10000uLL);
    unk_1EB29E888 = unk_1EB29E878;
    qword_1EB29E898 = 0x10000;
    xmmword_1EB29E8A0 = 0u;
    unk_1EB29E8B0 = 0u;
    dword_1EB29E8C0 = 16777473;
    word_1EB29E8C4 = 1;
    unk_1EB29E8C8 = xmmword_1A75D5BC0;
    unk_1EB29E8D8 = unk_1A75D5BD0;
    qword_1EB29E8E8 = 8;
    xmmword_1EB29E8F0 = xmmword_1A7596820;
    v56[10] = xmmword_1A75D5C88;
    v56[11] = unk_1A75D5C98;
    v57 = 0x41E19CF8E0000000;
    v56[6] = xmmword_1A75D5C48;
    v56[7] = unk_1A75D5C58;
    v56[8] = xmmword_1A75D5C68;
    v56[9] = unk_1A75D5C78;
    v56[2] = xmmword_1A75D5C08;
    v56[3] = unk_1A75D5C18;
    v56[4] = xmmword_1A75D5C28;
    v56[5] = unk_1A75D5C38;
    v56[0] = xmmword_1A75D5BE8;
    v56[1] = unk_1A75D5BF8;
    qword_1EB29E900 = 0;
    qword_1EB29E908 = 0;
    qword_1EB29E910 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29E900, v56, &v58, 0x19uLL);
    v55[0] = xmmword_1A75D5CB0;
    v55[1] = unk_1A75D5CC0;
    qword_1EB29E920 = 0;
    unk_1EB29E928 = 0;
    qword_1EB29E918 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29E918, v55, v56, 4uLL);
    v54[0] = xmmword_1A75D5CD0;
    v54[1] = unk_1A75D5CE0;
    v54[2] = xmmword_1A75D5CF0;
    qword_1EB29E938 = 0;
    unk_1EB29E940 = 0;
    qword_1EB29E930 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29E930, v54, v55, 6uLL);
    memcpy(__dst, &unk_1A75D5D00, sizeof(__dst));
    std::map<double,double>::map[abi:ne200100](qword_1EB29E948, __dst, 25);
    xmmword_1EB29E960 = xmmword_1A7595D10;
    v50[0] = xmmword_1A75D5E90;
    v50[1] = unk_1A75D5EA0;
    v50[2] = xmmword_1A75D5EB0;
    v51 = 27;
    qword_1EB29E978 = 0;
    unk_1EB29E980 = 0;
    qword_1EB29E970 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29E970, v50, v52, 0xDuLL);
    xmmword_1EB29E988 = xmmword_1A7596830;
    unk_1EB29E998 = xmmword_1A7595AF0;
    qword_1EB29E9A8 = 64;
    unk_1EB29E9B0 = 0x101010101010101;
    unk_1EB29E9B6 = 0x101010101010101;
    word_1EB29E9BE = 0;
    byte_1EB29E9C0 = 0;
    xmmword_1EB29EA38 = 0u;
    unk_1EB29EA48 = 0u;
    qword_1EB29EA58 = 1;
    xmmword_1EB29E9C8 = 0u;
    unk_1EB29E9D8 = 0u;
    xmmword_1EB29E9E8 = 0u;
    unk_1EB29E9F8 = 0u;
    xmmword_1EB29EA08 = 0u;
    unk_1EB29EA18 = 0u;
    xmmword_1EB29EA28 = 0u;
    byte_1EB29EA52 = 1;
    dword_1EB29EA54 = 65504;
    word_1EB29EA60 = 257;
    dword_1EB29EA68 = 0;
    word_1EB29EA6C = 256;
    *&algn_1EB29EA6E[2] = vdupq_n_s64(0x10uLL);
    byte_1EB29EA80 = 1;
    qword_1EB29EA88 = 0xFFFFLL;
    byte_1EB29EA90 = 0;
    qword_1EB29EA98 = 3;
    word_1EB29EAA0 = 257;
    byte_1EB29EAA2 = 1;
    qword_1EB29EAA8 = 0x80000000;
    byte_1EB29EAB0 = 0;
    dword_1EB29EAB4 = 0;
    v4 = 1;
    v6 = 0;
    v7 = 0;
    __p = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v4, &__p, 1);
    qword_1EB29EAB8 = 0;
    unk_1EB29EAC0 = 0;
    qword_1EB29EAC8 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&qword_1EB29EAB8, __p, v6, (v6 - __p) >> 1);
    word_1EB29EAD0 = 0;
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    v2 = 448;
    do
    {
      v3 = *(&v112 + v2);
      if (v3)
      {
        *(&v112 + v2 + 8) = v3;
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

    __cxa_atexit(ZinIrHalParameters::~ZinIrHalParameters, &ZinIrHalH16c::GetParams(void)const::ZinIrHalH16cParameters, &dword_1A617D000);
  }

  return &ZinIrHalH16c::GetParams(void)const::ZinIrHalH16cParameters;
}

void sub_1A69EA494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (qword_1EB29E970)
  {
    qword_1EB29E978 = qword_1EB29E970;
    operator delete(qword_1EB29E970);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v33, *(v33 + 8));
  if (qword_1EB29E930)
  {
    qword_1EB29E938 = qword_1EB29E930;
    operator delete(qword_1EB29E930);
  }

  if (qword_1EB29E918)
  {
    qword_1EB29E920 = qword_1EB29E918;
    operator delete(qword_1EB29E918);
  }

  if (qword_1EB29E900)
  {
    qword_1EB29E908 = qword_1EB29E900;
    operator delete(qword_1EB29E900);
  }

  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v32, *(v32 + 8));
  v36 = &STACK[0x820];
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

      if (qword_1EB29E830)
      {
        qword_1EB29E838 = qword_1EB29E830;
        operator delete(qword_1EB29E830);
      }

      if (qword_1EB29E818)
      {
        qword_1EB29E820 = qword_1EB29E818;
        operator delete(qword_1EB29E818);
      }

      if (qword_1EB29E800)
      {
        qword_1EB29E808 = qword_1EB29E800;
        operator delete(qword_1EB29E800);
      }

      if (qword_1EB29E7E8)
      {
        qword_1EB29E7F0 = qword_1EB29E7E8;
        operator delete(qword_1EB29E7E8);
      }

      if (byte_1EB29E787 < 0)
      {
        operator delete(qword_1EB29E770);
      }

      if (xmmword_1EB29E538)
      {
        *(&xmmword_1EB29E538 + 1) = xmmword_1EB29E538;
        operator delete(xmmword_1EB29E538);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t ZinIrVector::ZinIrVector(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7)
{
  v12 = a2[1];
  v17 = *a2;
  v18 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a3;
  v15 = vdupq_n_s64(1uLL);
  v16 = v15;
  ZinIrWeightBase::ZinIrWeightBase(a1, &v17, a4, &v14, a5, 1262703187, a7);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *a1 = &unk_1F19F3B70;
  *(a1 + 320) = a6;
  *(a1 + 324) = 0;
  *(a1 + 328) = 0;
  if (a3 == 1 && !a7)
  {
    *(a1 + 324) = ZinIrVector::GetValueAsFloat(a1, a5);
    *(a1 + 328) = 1;
  }

  return a1;
}

float ZinIrVector::GetValueAsFloat(ZinIrVector *this, uint64_t a2)
{
  v2 = *(this + 2);
  result = 0.0;
  if (v2 > 4)
  {
    if (v2 == 5)
    {
      return ZinIrVector::GetAt<e4m3_t>(this);
    }

    else if (v2 == 6)
    {

      ZinIrVector::GetAt<float>(this);
    }

    else if ((v2 - 7) < 0x1A)
    {
      goto LABEL_18;
    }
  }

  else if (v2 <= 1)
  {
    if (v2 == 1)
    {
      return ZinIrVector::GetAt<signed char>(this);
    }

    else if (!v2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 == 4)
      {
        ZinIrVector::GetAt<half>(this);
        __asm { FCVT            S0, H0 }

        return result;
      }

LABEL_18:
      ZinAssertImpl("Unsupported kernel format in GetValueAsFloat.", a2, 0.0);
    }

    return ZinIrVector::GetAt<unsigned char>(this);
  }

  return result;
}