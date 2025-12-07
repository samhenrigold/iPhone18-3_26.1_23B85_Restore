void sub_1A69B7678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(&STACK[0x290], STACK[0x298]);
  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  STACK[0x2C0] = &STACK[0x270];
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2C0]);
  STACK[0x2C0] = &a22;
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2C0]);
  std::optional<ResourceInformation>::~optional(&a25);
  ResourceInformation::~ResourceInformation(&a51);
  a51 = a18;
  std::vector<ResourceInformation>::__destroy_vector::operator()[abi:ne200100](&a51);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ResourceInformation>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<ResourceInformation>::__emplace_back_slow_path<ResourceInformation const&>(a1, a2);
  }

  else
  {
    std::vector<ResourceInformation>::__construct_one_at_end[abi:ne200100]<ResourceInformation const&>(a1, a2);
    result = v3 + 200;
  }

  a1[1] = result;
  return result;
}

void GenerateResourceInformationForCompressedIO(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v50[0] = a3;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v6 = a1[2];
  OperationResourceType = GetOperationResourceType(v50);
  v48[0] = 0;
  v48[1] = 0;
  v47 = v48;
  if (ZinIrBindings::GetCompressedDescriptor(v6, v50[0], &v47))
  {
    ZinAssertImpl("Error: Failed to get compressed IO descriptor");
  }

  memset(v46, 0, sizeof(v46));
  v7 = v47;
  if (v47 != v48)
  {
    do
    {
      v8 = v7[11];
      if (v7[12] != v8)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = &v8[64 * v9];
          GetAneIndicesToTargetForIO(a1, a2, v50[0], v11, v45);
          BarIdForLiveIO = GetBarIdForLiveIO(v6, a1[4], v50[0], 1, 0, v11);
          GenerateDuplicateRegionInfoForANEs(v11, 0, v11[3], BarIdForLiveIO | 0x100000000, v45, v44);
          v13 = ZinIr4CCInfo::ZinIr4CCInfo(v41, *(v7 + 20));
          v38 = vdupq_n_s64(1uLL);
          v39 = v38;
          v40 = 1;
          v37 = 0;
          if (!ZinIr4CCInfo::GetPlaneInfo(v13, v10, v7[7], v7[8], v7[9], &v38, &v37 + 1, &v37))
          {
            if (*(v11 + 23) < 0)
            {
              v11 = *v11;
            }

            ZinAssertImpl("Invalid information for plane %d of the compressed IO %s\n", v10, v11);
          }

          ZinGetUnmangledName(v11, v50[0], a1[3], &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v25, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v25 = __p;
          }

          v26 = *(v7 + 20);
          v27 = v10;
          v28 = v38;
          v29 = v39;
          v30 = v40;
          v31 = vdupq_n_s64(1uLL);
          v32 = v31;
          v33 = 1;
          v34 = v37;
          v35 = HIDWORD(v37);
          OperationProtectionType = GetOperationProtectionType(v50);
          v14 = a4[1];
          if (v14 >= a4[2])
          {
            v15 = std::vector<ResourceInformation>::__emplace_back_slow_path<std::string const&,unsigned long const&,RtOperationResourceType &,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &>(a4, v11, v11 + 3, &OperationResourceType, &OperationProtectionType, &v25, v44);
          }

          else
          {
            std::construct_at[abi:ne200100]<ResourceInformation,std::string const&,unsigned long const&,RtOperationResourceType &,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>(a4[1], v11, v11 + 3, &OperationResourceType, &OperationProtectionType, &v25, v44);
            v15 = v14 + 200;
          }

          a4[1] = v15;
          v16 = GetBarIdForLiveIO(v6, a1[4], v50[0], 1, 1, (v11 + 4));
          GenerateDuplicateRegionInfoForANEs((v11 + 4), v11[3], v11[7], v16 | 0x100000000, v45, v23);
          v17 = a4[1];
          if (v17 >= a4[2])
          {
            v18 = std::vector<ResourceInformation>::__emplace_back_slow_path<std::string const&,unsigned long const&,RtOperationResourceType &,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &>(a4, v11 + 2, v11 + 7, &OperationResourceType, &OperationProtectionType, &v25, v23);
          }

          else
          {
            std::construct_at[abi:ne200100]<ResourceInformation,std::string const&,unsigned long const&,RtOperationResourceType &,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>(a4[1], v11 + 2, v11 + 7, &OperationResourceType, &OperationProtectionType, &v25, v23);
            v18 = v17 + 200;
          }

          a4[1] = v18;
          std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v23, v23[1]);
          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v42)
          {
            v43 = v42;
            operator delete(v42);
          }

          std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v44, v44[1]);
          std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v45, v45[1]);
          v8 = v7[11];
          v9 = ++v10;
        }

        while (v10 < ((v7[12] - v8) >> 6));
      }

      v19 = v7[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v7[2];
          v21 = *v20 == v7;
          v7 = v20;
        }

        while (!v21);
      }

      v7 = v20;
    }

    while (v20 != v48);
  }

  v25.__r_.__value_.__r.__words[0] = v46;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&v25);
  std::__tree<std::__value_type<std::string,ZinTiledCompressedIODescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinTiledCompressedIODescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinTiledCompressedIODescriptor>>>::destroy(&v47, v48[0]);
}

void GenerateResourceInformationForEvent(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 32);
  v10 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v9 + 48, a4);
  if (v9 + 56 == v10)
  {
    ZinAssertImpl("Could not find a bar for event's counter");
  }

  GenerateDuplicateRegionInfoForANEs(a4, 0, 8, *(v10 + 56) | 0x100000000, a2, v21);
  if ((a3 & 0xFFFE) != 0xA)
  {
    ZinAssertImpl("Invalid resource type for an event");
  }

  if (a3 == 10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    *a5 = *a4;
    *(a5 + 16) = *(a4 + 16);
    *(a5 + 24) = 8;
    *(a5 + 32) = a3;
    *(a5 + 34) = v11;
    v12 = a5 + 40;
LABEL_9:
    __p = *a4;
    goto LABEL_10;
  }

  std::string::__init_copy_ctor_external(a5, *a4, *(a4 + 8));
  v13 = *(a4 + 23);
  *(a5 + 24) = 8;
  *(a5 + 32) = a3;
  *(a5 + 34) = v11;
  v12 = a5 + 40;
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
LABEL_10:
  *v19 = 0;
  *&v19[8] = vdupq_n_s64(1uLL);
  *&v19[24] = *&v19[8];
  *&v19[40] = *&v19[8];
  *&v19[56] = *&v19[8];
  *&v19[72] = *&v19[8];
  *&v19[88] = 0;
  v20 = 15;
  v14 = *&__p.__r_.__value_.__l.__data_;
  *(v12 + 16) = *(&__p.__r_.__value_.__l + 2);
  *v12 = v14;
  memset(&__p, 0, sizeof(__p));
  v15 = *&v19[48];
  v16 = *&v19[80];
  *(a5 + 128) = *&v19[64];
  *(a5 + 144) = v16;
  *(a5 + 160) = v20;
  v17 = *&v19[16];
  *(a5 + 64) = *v19;
  *(a5 + 80) = v17;
  *(a5 + 96) = *&v19[32];
  *(a5 + 112) = v15;
  *(a5 + 168) = 1;
  std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100]((a5 + 176), v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v21, v21[1]);
}

void sub_1A69B82D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(v15 - 72, *(v15 - 64));
  _Unwind_Resume(a1);
}

void ResourceInformation::~ResourceInformation(ResourceInformation *this)
{
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(this + 176, *(this + 23));
  if (*(this + 168) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void GenerateDuplicateRegionInfoForANEs(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  a6[2] = 0;
  a6[1] = 0;
  *a6 = a6 + 1;
  v7 = a5 + 1;
  v8 = *a5;
  if (*a5 != a5 + 1)
  {
    v9 = a4;
    v13 = HIDWORD(a4);
    do
    {
      v21 = v8[4];
      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *a1, *(a1 + 8));
      }

      else
      {
        v19 = *a1;
      }

      *v20 = a2;
      *&v20[8] = a3;
      *&v20[16] = v9;
      v20[20] = v13;
      v22 = &v21;
      v14 = std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::piecewise_construct_t const&,std::tuple<ZinNamedType<unsigned long,AneIndexTag> const&>,std::tuple<>>(a6, &v21, &std::piecewise_construct, &v22);
      v15 = v14;
      if (*(v14 + 63) < 0)
      {
        operator delete(v14[5]);
      }

      *(v15 + 5) = v19;
      *(v15 + 4) = *v20;
      *(v15 + 77) = *&v20[13];
      v16 = v8[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v8[2];
          v18 = *v17 == v8;
          v8 = v17;
        }

        while (!v18);
      }

      v8 = v17;
    }

    while (v17 != v7);
  }
}

void sub_1A69BA9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49, uint64_t a50, void *a51)
{
  *(v52 - 256) = v51;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v52 - 256));
  *(v52 - 256) = &a34;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v52 - 256));
  *(v52 - 256) = &a37;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v52 - 256));
  *(v52 - 256) = &a40;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v52 - 256));
  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  *(v52 - 256) = &a45;
  std::vector<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__destroy_vector::operator()[abi:ne200100]((v52 - 256));
  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a49);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a50, a51);
  v54 = *(a33 + 8);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  _Unwind_Resume(a1);
}

void GetAneIndicesForLiveInParam(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 48);
  v5 = *(v4 + 112);
  v6 = *(v4 + 120);
  if (v5 != v6)
  {
    while (1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(v5);
      v9 = *(v8 + 16);
      if (v9)
      {
        break;
      }

LABEL_17:
      v5 = (v5 + 64);
      if (v5 == v6)
      {
        v5 = v6;
        goto LABEL_19;
      }
    }

    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = a1[1];
    }

    if (v10 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    while (1)
    {
      v13 = *(v9 + 55);
      v14 = v13;
      if (v13 < 0)
      {
        v13 = v9[5];
      }

      if (v13 == v11)
      {
        v15 = v14 >= 0 ? (v9 + 4) : v9[4];
        if (!memcmp(v15, v12, v11))
        {
          break;
        }
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_19:
  if (v5 == *(v4 + 120))
  {
    ZinAssertImpl("Error: Could not find the BAR command corresponding to the live in param");
  }

  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  GetAneIndicesForCustomBarCommand(a3, v5);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v16, v17[0]);
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,ZinLiveInputParamDescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,ZinLiveInputParamDescriptor,ZinRtCodegenParams>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, int *a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X8>)
{
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  v9 = a3[2];
  if (v9 != 1)
  {
    if (!v9)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v10 = a3[1];
    if (v10)
    {
      v11 = a3 + 1;
      do
      {
        v12 = v10[4];
        v13 = v12 >= 0x3FFF;
        v14 = v12 < 0x3FFF;
        if (v13)
        {
          v11 = v10;
        }

        v10 = v10[v14];
      }

      while (v10);
      if (v11 != a3 + 1 && !(v11[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v43 = *a4;
    v44 = *(a4 + 2);
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    v41 = *a5;
    v42 = *(a5 + 2);
    *a5 = 0uLL;
    *(a5 + 2) = 0;
    v37 = *a6;
    v38 = *(a6 + 2);
    *(a6 + 1) = 0;
    *(a6 + 2) = 0;
    v15 = *(a6 + 3);
    v16 = *(a6 + 4);
    *(a6 + 3) = 0;
    v39 = v15;
    v40 = v16;
    v17 = a7[3];
    v33 = a7[2];
    v34 = v17;
    v35 = a7[4];
    v36 = *(a7 + 10);
    v18 = a7[1];
    v31 = *a7;
    v32 = v18;
    CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,ZinLiveInputParamDescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,ZinLiveInputParamDescriptor,ZinRtCodegenParams>(&v45);
  }

  *v29 = *a4;
  v30 = *(a4 + 2);
  *(a4 + 8) = 0uLL;
  *a4 = 0;
  *v27 = *a5;
  v28 = *(a5 + 2);
  *a5 = 0uLL;
  *(a5 + 2) = 0;
  v23 = *a6;
  *__p = *(a6 + 2);
  *(a6 + 1) = 0;
  *(a6 + 2) = 0;
  v19 = *(a6 + 3);
  v20 = *(a6 + 4);
  *(a6 + 3) = 0;
  v25 = v19;
  v26 = v20;
  v21 = a7[3];
  v33 = a7[2];
  v34 = v21;
  v35 = a7[4];
  v36 = *(a7 + 10);
  v22 = a7[1];
  v31 = *a7;
  v32 = v22;
  CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,ZinLiveInputParamDescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,ZinLiveInputParamDescriptor,ZinRtCodegenParams>(a1, a3, v29, v27, &v23, &v31, &v45);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a8);
  *a8 = v45;
  a8[2] = v46;
  v46 = 0;
  v45 = 0uLL;
  *&v31 = &v45;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v31);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }
}

void sub_1A69BB4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,std::string const&,unsigned long long,unsigned int,unsigned int,BOOL,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,std::string,unsigned long long,unsigned int,unsigned int,BOOL>();
  *(v23 - 40) = v22;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v23 - 40));
  _Unwind_Resume(a1);
}

void CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,ZinLiveInputParamDescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,ZinLiveInputParamDescriptor,ZinRtCodegenParams>(void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  LOBYTE(v7) = 1;
  std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,0>();
}

void sub_1A69BB644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,ZinLiveInputParamDescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,ZinLiveInputParamDescriptor,ZinRtCodegenParams>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v7 = a2 + 1;
  v8 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v19 = v8[4];
      a1(&v17, a3, a4, a5, a6, &v19);
      if (v17)
      {
        std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,ZinNamedType<unsigned long,AneIndexTag> &,0>();
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v14 = v8[1];
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
          v15 = v8[2];
          v16 = *v15 == v8;
          v8 = v15;
        }

        while (!v16);
      }

      v8 = v15;
    }

    while (v15 != v7);
  }
}

void sub_1A69BB7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::shared_ptr<ZinRtOperationNode>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::shared_ptr<ZinRtOperationNode>*>,std::__wrap_iter<std::shared_ptr<ZinRtOperationNode>*>>(void *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>::__move_range(a1, a2, a1[1], &a2[2 * a5]);
        v18 = &v7[2 * a5];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<ZinRtOperationNode>>,std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(a1, (a3 + v16), a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>::__move_range(a1, v5, v10, &v5[2 * a5]);
        v18 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData>*>(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v32 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrTensor>>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = (v19 + 16 * a5);
    v21 = v19;
    do
    {
      *v21 = *v7;
      v22 = v7[1];
      *(v21 + 1) = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      v21 += 16;
      v7 += 2;
    }

    while (v21 != v20);
    memcpy(v20, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v20[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    std::__split_buffer<std::shared_ptr<ZinIrConstData>>::~__split_buffer(v30);
    return v19;
  }

  return v5;
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(ZinLiveInputParamDescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),ZinLiveInputParamDescriptor,ZinRtCodegenParams>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v7 = a3[2];
  if (v7 != 1)
  {
    if (!v7)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v8 = a3[1];
    if (v8)
    {
      v9 = a3 + 1;
      do
      {
        v10 = v8[4];
        v11 = v10 >= 0x3FFF;
        v12 = v10 < 0x3FFF;
        if (v11)
        {
          v9 = v8;
        }

        v8 = v8[v12];
      }

      while (v8);
      if (v9 != a3 + 1 && !(v9[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v33 = *a4;
    v13 = *(a4 + 2);
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    v14 = *(a4 + 3);
    v15 = *(a4 + 4);
    *(a4 + 3) = 0;
    v34 = v13;
    v35 = v14;
    v36 = v15;
    v16 = a5[3];
    v29 = a5[2];
    v30 = v16;
    v31 = a5[4];
    v32 = *(a5 + 10);
    v17 = a5[1];
    v27 = *a5;
    v28 = v17;
    CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::vector<std::shared_ptr<ZinRtOperationNode>>>(&v37);
  }

  v23 = *a4;
  v18 = *(a4 + 2);
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  v19 = *(a4 + 3);
  v20 = *(a4 + 4);
  *(a4 + 3) = 0;
  *__p = v18;
  v25 = v19;
  v26 = v20;
  v21 = a5[3];
  v29 = a5[2];
  v30 = v21;
  v31 = a5[4];
  v32 = *(a5 + 10);
  v22 = a5[1];
  v27 = *a5;
  v28 = v22;
  CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::vector<std::shared_ptr<ZinRtOperationNode>>>(a1, a3, &v23, &v27, &v37);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a6);
  *a6 = v37;
  a6[2] = v38;
  v38 = 0;
  v37 = 0uLL;
  *&v27 = &v37;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v27);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A69BBB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  *(v17 - 64) = v16;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v17 - 64));
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 48);
    *(a1 + 16) = i - 48;
    v6 = (i - 24);
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v6 = v4;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>::~pair(void **a1)
{
  v3 = a1 + 3;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

__n128 ranges::_move::move_fn::operator()<ranges::basic_iterator<ranges::iter_zip_with_view<ranges::detail::indirect_zip_fn_,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::cursor<false>>,ranges::basic_iterator<ranges::iter_zip_with_view<ranges::detail::indirect_zip_fn_,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>,ranges::ref_view<std::vector<std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::cursor<false>>,std::back_insert_iterator<std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>>@<Q0>(__n128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, __n128 *a4@<X8>)
{
  v7 = a1->n128_u64[1];
  for (i = a1[1].n128_u64[0]; v7 != *(a2 + 8) && i != *(a2 + 16); a1[1].n128_u64[0] = i)
  {
    v24 = *v7;
    v25 = *(v7 + 16);
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 0;
    v26 = *i;
    v27 = *(i + 16);
    *i = 0;
    *(i + 8) = 0;
    *(i + 16) = 0;
    v10 = *(a3 + 8);
    v11 = *(a3 + 16);
    if (v10 >= v11)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a3) >> 4);
      v14 = v13 + 1;
      if (v13 + 1 > 0x555555555555555)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a3) >> 4);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x2AAAAAAAAAAAAAALL)
      {
        v16 = 0x555555555555555;
      }

      else
      {
        v16 = v14;
      }

      v28[4] = a3;
      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ANEDebugInfo::DebugInfoInMem::Group>>(a3, v16);
      }

      v17 = 48 * v13;
      *v17 = 0;
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *v17 = v24;
      *(v17 + 16) = v25;
      v24 = 0uLL;
      v25 = 0;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0;
      *(v17 + 40) = 0;
      *(v17 + 24) = v26;
      *(v17 + 40) = v27;
      v26 = 0uLL;
      v27 = 0;
      v12 = 48 * v13 + 48;
      v18 = *(a3 + 8) - *a3;
      v19 = 48 * v13 - v18;
      memcpy((v17 - v18), *a3, v18);
      v20 = *a3;
      *a3 = v19;
      v28[0] = v20;
      v28[1] = v20;
      *(a3 + 8) = v12;
      v28[2] = v20;
      v21 = *(a3 + 16);
      *(a3 + 16) = 0;
      v28[3] = v21;
      std::__split_buffer<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::~__split_buffer(v28);
    }

    else
    {
      v10[2] = 0;
      v10[3] = 0;
      *v10 = 0;
      v10[1] = 0;
      *v10 = v24;
      v10[2] = v25;
      v24 = 0uLL;
      v25 = 0;
      v10[4] = 0;
      v10[5] = 0;
      *(v10 + 3) = v26;
      v10[5] = v27;
      v26 = 0uLL;
      v27 = 0;
      v12 = (v10 + 6);
    }

    *(a3 + 8) = v12;
    v28[0] = &v26;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v28);
    v28[0] = &v24;
    std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v28);
    v7 = a1->n128_u64[1] + 24;
    i = a1[1].n128_u64[0] + 24;
    a1->n128_u64[1] = v7;
  }

  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a1[1].n128_u64[0];
  a4[1].n128_u64[1] = a3;
  return result;
}

void sub_1A69BBEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>::~pair(va);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 6;
      v6 = v4 - 3;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = v5;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(ZinRtCodegenParams const&,std::string const&,EventType,ZinNamedType<unsigned long,AneIndexTag> const&),ZinRtCodegenParams,std::string,EventType>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = a3[2];
  if (v8 != 1)
  {
    if (!v8)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v9 = a3[1];
    if (v9)
    {
      v10 = a3 + 1;
      do
      {
        v11 = v9[4];
        v12 = v11 >= 0x3FFF;
        v13 = v11 < 0x3FFF;
        if (v12)
        {
          v10 = v9;
        }

        v9 = v9[v13];
      }

      while (v9);
      if (v10 != a3 + 1 && !(v10[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v14 = a4[3];
    v24 = a4[2];
    v25 = v14;
    v26 = a4[4];
    v27 = *(a4 + 10);
    v15 = a4[1];
    v22 = *a4;
    v23 = v15;
    v21 = *(a5 + 2);
    v20 = *a5;
    *a5 = 0uLL;
    *(a5 + 2) = 0;
    CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(IOType,ZinSinglePlaneLinearIODescriptor const&,std::string const&,ZinNamedType<unsigned long,AneIndexTag> const&),IOType,ZinSinglePlaneLinearIODescriptor,std::string>(&v28);
  }

  v16 = a4[3];
  v24 = a4[2];
  v25 = v16;
  v26 = a4[4];
  v27 = *(a4 + 10);
  v17 = a4[1];
  v22 = *a4;
  v23 = v17;
  v19 = *(a5 + 2);
  *__p = *a5;
  *a5 = 0uLL;
  *(a5 + 2) = 0;
  CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(IOType,ZinSinglePlaneLinearIODescriptor const&,std::string const&,ZinNamedType<unsigned long,AneIndexTag> const&),IOType,ZinSinglePlaneLinearIODescriptor,std::string>(a1, a3, &v22, __p, a6, &v28);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a7);
  *a7 = v28;
  a7[2] = v29;
  v29 = 0;
  v28 = 0uLL;
  *&v22 = &v28;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v22);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A69BC190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  *(v22 - 48) = v21;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v22 - 48));
  _Unwind_Resume(a1);
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,std::string const&,EventType,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,ZinRtCodegenParams,std::string,EventType,std::vector<std::shared_ptr<ZinRtOperationNode>>>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t *a9@<X8>)
{
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  v10 = a3[2];
  if (v10 != 1)
  {
    if (!v10)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v11 = a3[1];
    if (v11)
    {
      v12 = a3 + 1;
      do
      {
        v13 = v11[4];
        v14 = v13 >= 0x3FFF;
        v15 = v13 < 0x3FFF;
        if (v14)
        {
          v12 = v11;
        }

        v11 = v11[v15];
      }

      while (v11);
      if (v12 != a3 + 1 && !(v12[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v38 = *a4;
    v39 = *(a4 + 2);
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    v16 = a5[3];
    v34 = a5[2];
    v35 = v16;
    v36 = a5[4];
    v37 = *(a5 + 10);
    v17 = a5[1];
    v32 = *a5;
    v33 = v17;
    v18 = *a6;
    v31 = *(a6 + 2);
    *__p = v18;
    *a6 = 0uLL;
    *(a6 + 2) = 0;
    v28 = *a8;
    v29 = *(a8 + 2);
    *(a8 + 8) = 0uLL;
    *a8 = 0;
    CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(IOType,std::string const&,std::string const&,ZinSinglePlaneLinearIODescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),IOType,std::string,std::string,ZinSinglePlaneLinearIODescriptor,ZinRtCodegenParams>(&v40);
  }

  *v26 = *a4;
  v27 = *(a4 + 2);
  *(a4 + 8) = 0uLL;
  *a4 = 0;
  v19 = a5[3];
  v34 = a5[2];
  v35 = v19;
  v36 = a5[4];
  v37 = *(a5 + 10);
  v20 = a5[1];
  v32 = *a5;
  v33 = v20;
  v21 = *a6;
  v25 = *(a6 + 2);
  *v24 = v21;
  *a6 = 0uLL;
  *(a6 + 2) = 0;
  v22 = *a8;
  v23 = *(a8 + 2);
  *(a8 + 8) = 0uLL;
  *a8 = 0;
  CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(IOType,std::string const&,std::string const&,ZinSinglePlaneLinearIODescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),IOType,std::string,std::string,ZinSinglePlaneLinearIODescriptor,ZinRtCodegenParams>(a1, a3, v26, &v32, v24, a7, &v22, &v40);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a9);
  *a9 = v40;
  a9[2] = v41;
  v41 = 0;
  v40 = 0uLL;
  *&v32 = &v40;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v32);
  *&v32 = &v22;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v32);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }
}

void sub_1A69BC454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  *(v37 - 40) = &a9;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v37 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  *(v37 - 64) = v36;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v37 - 64));
  _Unwind_Resume(a1);
}

ZinIrAsyncFunction *FindNodeWithDeviceID@<X0>(ZinIrAsyncFunction *result@<X0>, uint64_t a2@<X1>, ZinIrAsyncFunction **a3@<X8>)
{
  v4 = *result;
  v5 = *(result + 1);
  if (*result == v5)
  {
LABEL_12:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while (1)
    {
      Exit = ZinIrAsyncFunction::GetExit(*v4);
      result = *v4;
      if (Exit == a2)
      {
        v13 = *(v4 + 8);
        *a3 = result;
        goto LABEL_14;
      }

      result = ZinRtOperationNode::GetOperations(result);
      v8 = result + 8;
      v9 = *result;
      if (*result != (result + 8))
      {
        break;
      }

LABEL_11:
      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_12;
      }
    }

    while (1)
    {
      result = ZinRtOperation::GetDeviceId(*(v9 + 4));
      if (result == a2)
      {
        break;
      }

      v10 = *(v9 + 1);
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
          v11 = *(v9 + 2);
          v12 = *v11 == v9;
          v9 = v11;
        }

        while (!v12);
      }

      v9 = v11;
      if (v11 == v8)
      {
        goto LABEL_11;
      }
    }

    v13 = *(v4 + 8);
    *a3 = *v4;
LABEL_14:
    a3[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<RtExpressionType,std::string,long long>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<RtExpressionType,std::string,long long>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<RtExpressionType,std::string,long long>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<RtExpressionType,std::string,long long>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<RtExpressionType,std::string,long long>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<RtExpressionType,std::string,long long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_1F19F2A28[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJ16RtExpressionTypeNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEExEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JRKNS0_6__baseILSJ_1EJS8_SE_xEEEEEEDcSO_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

const void **CreateAllocOperationNodes@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  if (a5 == 12)
  {
    SizeInBytesOfAllUsedBar = ZinBarUsage::GetSizeInBytesOfAllUsedBar(*(a2 + 40));
    v24 = *(a2 + 72);
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, *a3, *(a3 + 8));
    }

    else
    {
      v47 = *a3;
    }

    v26 = *(a2 + 48);
    v50 = *(a2 + 32);
    v51 = v26;
    v52 = *(a2 + 64);
    v53 = *(a2 + 80);
    v27 = *(a2 + 16);
    v48 = *a2;
    v49 = v27;
    CreateRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,unsigned int,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams,unsigned int>(CreateRuntimeAllocV2BarTable, v24, a4, a6, &v47, &v48, SizeInBytesOfAllUsedBar, a9);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    v28 = *a9;
    v29 = a9[1];
    if (*a9 != v29)
    {
      v30 = *a1;
      do
      {
        v31 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v30, v28);
        v28 += 2;
        if (v28 == v29)
        {
          v32 = 0;
        }

        else
        {
          v32 = v31;
        }
      }

      while ((v32 & 1) != 0);
      if ((v31 & 1) == 0)
      {
        ZinAssertImpl("Failed to add bar table alloc nodes to graph");
      }
    }

    result = SetRuntimeConcurrency(a7, a9);
    v34 = *a9;
    v35 = a9[1];
    while (v34 != v35)
    {
      result = std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((a8 + 48), v34++);
    }
  }

  else
  {
    if (a5 != 5)
    {
      ZinAssertImpl("Error: Unsupported resource type %hu", a5);
    }

    v17 = a4[1];
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = a4 + 1;
    do
    {
      v19 = v17[4];
      v20 = v19 >= 0x3FFF;
      v21 = v19 < 0x3FFF;
      if (v20)
      {
        v18 = v17;
      }

      v17 = v17[v21];
    }

    while (v17);
    if (v18 == a4 + 1 || v18[4] >> 14)
    {
LABEL_15:
      v25 = *(a2 + 72);
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v54, *a3, *(a3 + 8));
      }

      else
      {
        v54 = *a3;
      }

      v36 = *(a2 + 48);
      v50 = *(a2 + 32);
      v51 = v36;
      v52 = *(a2 + 64);
      v53 = *(a2 + 80);
      v37 = *(a2 + 16);
      v48 = *a2;
      v49 = v37;
      CreateRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(CreateRuntimeAllocV2BSS, v25, a4, a6, &v54, &v48, a9);
    }

    else
    {
      v22 = *(a2 + 72) | *(a2 + 73);
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v54, *a3, *(a3 + 8));
      }

      else
      {
        v54 = *a3;
      }

      v45 = *(a2 + 48);
      v50 = *(a2 + 32);
      v51 = v45;
      v52 = *(a2 + 64);
      v53 = *(a2 + 80);
      v46 = *(a2 + 16);
      v48 = *a2;
      v49 = v46;
      CreateRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(CreateRuntimeAllocV2BSS, v22 & 1, a4, a6, &v54, &v48, a9);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    v38 = *a9;
    v39 = a9[1];
    if (*a9 != v39)
    {
      v40 = *a1;
      do
      {
        v41 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v40, v38);
        v38 += 2;
        if (v38 == v39)
        {
          v42 = 0;
        }

        else
        {
          v42 = v41;
        }
      }

      while ((v42 & 1) != 0);
      if ((v41 & 1) == 0)
      {
        ZinAssertImpl("Failed to add BSS alloc nodes to graph");
      }
    }

    result = SetRuntimeConcurrency(a7, a9);
    v43 = *a9;
    v44 = a9[1];
    while (v43 != v44)
    {
      result = std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((a8 + 48), v43++);
    }
  }

  return result;
}

void sub_1A69BCA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18)
{
  if (*(v18 - 89) < 0)
  {
    operator delete(*(v18 - 112));
  }

  _Unwind_Resume(exception_object);
}

void CreateMapLoadNodesWithAlloc(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, void **a8)
{
  v86 = *MEMORY[0x1E69E9840];
  if (a5 != 12)
  {
    if (a5 != 5)
    {
      ZinAssertImpl("Error: Unsupported resource type %hu", a5);
    }

    if (*(a6 + 8) - *a6 == 16 && ZinIrAsyncFunction::GetExit(**a6) == 0x3FFF)
    {
      if (*(a6 + 8) == *a6)
      {
        goto LABEL_89;
      }

      if (*(ZinRtOperationNode::GetOperations(**a6) + 16) == 1)
      {
        if (*(a6 + 8) != *a6)
        {
          FirstOperation = ZinRtOperationNode::GetFirstOperation(**a6);
          DeviceId = ZinRtOperation::GetDeviceId(*FirstOperation);
          v16 = (a2 + 73);
          v17 = DeviceId == 0x3FFF;
          if (DeviceId == 0x3FFF && (*(a2 + 73) & 1) != 0)
          {
            v59 = (a2 + 73);
            *&v80 = 0x3FFFLL;
            std::set<ZinNamedType<unsigned long,AneIndexTag>>::set[abi:ne200100](&v77, &v80, 1);
            v18 = 1;
            v60 = 1;
LABEL_15:
            v21 = *(a2 + 72);
            if (*(a3 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v74, *a3, *(a3 + 8));
            }

            else
            {
              v74 = *a3;
            }

            v35 = *(a2 + 48);
            v82 = *(a2 + 32);
            v83 = v35;
            v84 = *(a2 + 64);
            v85 = *(a2 + 80);
            v36 = *(a2 + 16);
            v80 = *a2;
            v81 = v36;
            v73 = 0;
            v37 = *a6;
            v38 = *(a6 + 8);
            v39 = (v38 - *a6) >> 4;
            v72 = 0uLL;
            std::vector<std::shared_ptr<ZinRtOperationNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(&v72, v37, v38, v39);
            CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,ZinRtCodegenParams,std::vector<std::shared_ptr<ZinRtOperationNode>>>(CreateRuntimeBSSMapOperation, (v18 | v21) & 1, &v77, &v74, &v80, &v72, &v75);
            *&v80 = &v72;
            std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v80);
            if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v74.__r_.__value_.__l.__data_);
            }

            v41 = v75;
            v40 = v76;
            if (v75 != v76)
            {
              v42 = *a1;
              do
              {
                v43 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v42, v41);
                v41 += 2;
                if (v41 == v40)
                {
                  v44 = 0;
                }

                else
                {
                  v44 = v43;
                }
              }

              while ((v44 & 1) != 0);
              if ((v43 & 1) == 0)
              {
                ZinAssertImpl("Failed to add bss map nodes to graph");
              }
            }

            if (v60)
            {
              *&v80 = 0x3FFFLL;
              BssSection = GetBssSection(a2, &v80);
            }

            else
            {
              BssSection = GetBssSection(a2, (*a4 + 32));
            }

            if (!BssSection)
            {
              ZinAssertImpl("Unable to get bss section");
            }

            v80 = 0uLL;
            *&v81 = 0;
            if (*v59 == 1)
            {
              *(&v70 + 1) = 0;
              v71 = 0;
              *&v70 = &v70 + 8;
              v48 = *a4;
              v47 = a4 + 1;
              v46 = v48;
              if (v48 != v47)
              {
                do
                {
                  *&v68 = v46 + 4;
                  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(&v70, v46 + 4, &std::piecewise_construct, &v68)[5] = 0;
                  v49 = v46[1];
                  if (v49)
                  {
                    do
                    {
                      v50 = v49;
                      v49 = *v49;
                    }

                    while (v49);
                  }

                  else
                  {
                    do
                    {
                      v50 = v46[2];
                      v51 = *v50 == v46;
                      v46 = v50;
                    }

                    while (!v51);
                  }

                  v46 = v50;
                }

                while (v50 != v47);
              }

              if (v76 == v75)
              {
                std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
              }

              CreateRuntimeLoadOperationNodes(a1, *(a2 + 72), &v70, v75, &v68);
              std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(&v80);
              v80 = v68;
              *&v81 = v69;
              v69 = 0;
              v68 = 0uLL;
              v79 = &v68;
              std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v79);
              std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v70, *(&v70 + 1));
            }

            else
            {
              CreateRuntimeLoadOperationNodesPerMap(a1, *(a2 + 72), &v75, &v70);
              std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(&v80);
              v80 = v70;
              *&v81 = v71;
              v71 = 0;
              v70 = 0uLL;
              *&v68 = &v70;
              std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v68);
            }

            v52 = a1[1];
            v67[0] = *a1;
            v67[1] = v52;
            if (v52)
            {
              atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            AddAdjacencies(v67, a7, &v75, &v80);
            if (v52)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v52);
            }

            v53 = a1[1];
            v66[0] = *a1;
            v66[1] = v53;
            if (v53)
            {
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v54 = AddCorrespondingEdgesToSuccessorOpNodes(v66, &v75, a6);
            if (v53)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v53);
            }

            if ((v54 & 1) == 0)
            {
              ZinAssertImpl("Error: Failed to add and connect bss alloc and map operation nodes");
            }

            v55 = v75;
            v56 = v76;
            while (v55 != v56)
            {
              std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a8 + 6, v55++);
            }

            v58 = *(&v80 + 1);
            v57 = v80;
            if (v80 != *(&v80 + 1))
            {
              do
              {
                std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a8 + 6, v57++);
              }

              while (v57 != v58);
              v58 = *(&v80 + 1);
              v57 = v80;
            }

            while (v57 != v58)
            {
              std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a8 + 9, v57++);
            }

            *&v70 = &v80;
            std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v70);
            *&v80 = &v75;
            std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v80);
            std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v77, v78);
            return;
          }

LABEL_14:
          v60 = v17;
          v59 = v16;
          std::set<ZinNamedType<unsigned long,AneIndexTag>>::set[abi:ne200100](&v77, a4);
          v18 = 0;
          goto LABEL_15;
        }

LABEL_89:
        std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
      }
    }

    v17 = 0;
    v16 = (a2 + 73);
    goto LABEL_14;
  }

  SizeInBytesOfAllUsedBar = ZinBarUsage::GetSizeInBytesOfAllUsedBar(*(a2 + 40));
  v20 = *(a2 + 72);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v65, *a3, *(a3 + 8));
  }

  else
  {
    v65 = *a3;
  }

  v22 = *(a2 + 48);
  v82 = *(a2 + 32);
  v83 = v22;
  v84 = *(a2 + 64);
  v85 = *(a2 + 80);
  v23 = *(a2 + 16);
  v80 = *a2;
  v81 = v23;
  v64 = 0;
  v24 = *a6;
  v25 = *(a6 + 8);
  v26 = (v25 - *a6) >> 4;
  v63 = 0uLL;
  std::vector<std::shared_ptr<ZinRtOperationNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(&v63, v24, v25, v26);
  CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,unsigned int,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,ZinRtCodegenParams,unsigned int,std::vector<std::shared_ptr<ZinRtOperationNode>>>(CreateRuntimeBarTableMapOperation, v20, a4, &v65, &v80, SizeInBytesOfAllUsedBar, &v63, &v77);
  *&v80 = &v63;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v80);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  v27 = *a1;
  v29 = v77;
  v28 = v78;
  if (v77 != v78)
  {
    do
    {
      v30 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v27, v29);
      v29 += 2;
      if (v29 == v28)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }
    }

    while ((v31 & 1) != 0);
    if (!v30)
    {
      ZinAssertImpl("Failed to add bar table map nodes to graph");
    }

    v27 = *a1;
  }

  v32 = a1[1];
  v62[0] = v27;
  v62[1] = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AddAdjacencies(v62, a7, a6, &v77);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = v77;
  v34 = v78;
  if (v77 != v78)
  {
    do
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a8 + 6, v33++);
    }

    while (v33 != v34);
    v33 = v77;
    v34 = v78;
  }

  if (v33 != v34)
  {
    do
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a8 + 9, v33++);
    }

    while (v33 != v34);
    v33 = v77;
    v34 = v78;
  }

  while (v33 != v34)
  {
    std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a8 + 3, v33++);
  }

  *&v80 = &v77;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v80);
}

void AddStoreAdjacencies(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  SetRuntimeConcurrency(a2, a4);
  if (*(a3 + 8) != *a3)
  {
    SetRuntimeConcurrency(a2, a3);
    v10 = a1[1];
    v16[0] = *a1;
    v16[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = AddCorrespondingEdgesToSuccessorOpNodes(v16, a4, a3);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if ((v11 & 1) == 0)
    {
      ZinAssertImpl("Error: Failed to add and connect map operation nodes");
    }
  }

  if (*(a4 + 8) != *a4 && *(a5 + 8) != *a5)
  {
    SetRuntimeConcurrency(a2, a5);
    v12 = a1[1];
    v14 = *a1;
    v15 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = AddCorrespondingEdgesToSuccessorOpNodes(&v14, a4, a5);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if ((v13 & 1) == 0)
    {
      ZinAssertImpl("Error: Failed to add and connect alloc operation nodes", v14, v15);
    }
  }
}

void sub_1A69BD3C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void CreateMapAndStoreOperationNodes(ZinRtCodegenParams const&,std::string const&,std::shared_ptr<ZinRtNodeGraph>,std::set<ZinNamedType<unsigned long,AneIndexTag>> const&,std::vector<ZinIrSymbolData> &,rt_procedure_scalars_t &,ZinResultNodes &)::$_0::operator()<std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>(uint64_t *a1, __int128 ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = a1[1];
      v6 = v5[1];
      v12[0] = *v5;
      v12[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AddStoreAdjacencies(v12, *a1, v2, (v2 + 3), a1[3]);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v7 = *v2;
      v8 = v2[1];
      v9 = a1[2];
      if (*v2 != v8)
      {
        do
        {
          std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((v9 + 48), v7++);
        }

        while (v7 != v8);
        v9 = a1[2];
      }

      v10 = v2[3];
      v11 = v2[4];
      if (v10 != v11)
      {
        do
        {
          std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((v9 + 48), v10++);
        }

        while (v10 != v11);
        v10 = v2[3];
        v11 = v2[4];
        v9 = a1[2];
      }

      while (v10 != v11)
      {
        std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((v9 + 72), v10++);
      }

      v2 += 6;
    }

    while (v2 != v3);
  }
}

void sub_1A69BD4F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void CreateRtGraphStructureForLiveInParam(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CodegenRuntimeParamOperationNodes(a2, &v15);
  if (v15 != v16)
  {
    SetRuntimeConcurrency(a4, &v15);
    v10 = v15;
    v11 = v16;
    if (v15 != v16)
    {
      v12 = *a1;
      do
      {
        v13 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v12, v10);
        v10 += 2;
        if (v10 == v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = v13;
        }
      }

      while ((v14 & 1) != 0);
      if (!v13)
      {
        ZinAssertImpl("Error: Failed to add LiveInParam param operation nodes");
      }

      v10 = v15;
      v11 = v16;
    }

    while (v10 != v11)
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((a5 + 48), v10);
      v10 += 2;
    }

    CodegenRuntimeBarCommandExpression(a1, a3, a2, (a5 + 48), (a5 + 72));
  }

  v17 = &v15;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v17);
}

void sub_1A69BD604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void CreateMapStoreNodesWithAlloc(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a2 + 72);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, *a3, *(a3 + 8));
  }

  else
  {
    v45 = *a3;
  }

  v16 = *(a2 + 48);
  v43[2] = *(a2 + 32);
  v43[3] = v16;
  v43[4] = *(a2 + 64);
  v44 = *(a2 + 80);
  v17 = *(a2 + 16);
  v43[0] = *a2;
  v43[1] = v17;
  v42 = 0;
  v18 = *a5;
  v19 = *(a5 + 8);
  v20 = (v19 - *a5) >> 4;
  v41 = 0uLL;
  std::vector<std::shared_ptr<ZinRtOperationNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(&v41, v18, v19, v20);
  CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,ZinRtCodegenParams,std::vector<std::shared_ptr<ZinRtOperationNode>>>(CreateRuntimeBSSMapOperation, v15, a4, &v45, v43, &v41, &v46);
  *&v43[0] = &v41;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v43);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v22 = v46;
  v21 = v47;
  if (v46 != v47)
  {
    v38 = a4;
    v23 = a5;
    v24 = a6;
    v25 = a7;
    v26 = *a1;
    do
    {
      v27 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v26, v22);
      v22 += 2;
      if (v22 == v21)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27;
      }
    }

    while ((v28 & 1) != 0);
    a7 = v25;
    a6 = v24;
    a5 = v23;
    a4 = v38;
    if ((v27 & 1) == 0)
    {
      ZinAssertImpl("Failed to add bss map nodes to graph");
    }
  }

  BssSection = GetBssSection(a2, (*a4 + 32));
  if (!BssSection)
  {
    ZinAssertImpl("Unable to get bss section");
  }

  CreateRuntimeStoreOperationNodesPerMap(a1, a2, &v46, a6, *(BssSection + 48), v43);
  v30 = a1[1];
  v40[0] = *a1;
  v40[1] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AddStoreAdjacencies(v40, a7, &v46, v43, a6);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *a1;
  v32 = a1[1];
  v39[0] = v31;
  v39[1] = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = AddCorrespondingEdgesToSuccessorOpNodes(v39, &v46, a5);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if ((v33 & 1) == 0)
  {
    ZinAssertImpl("Error: Failed to add and connect bss alloc and map operation nodes");
  }

  v34 = v46;
  v35 = v47;
  while (v34 != v35)
  {
    std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((a8 + 48), v34++);
  }

  v37 = *(&v43[0] + 1);
  v36 = *&v43[0];
  if (*&v43[0] != *(&v43[0] + 1))
  {
    do
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((a8 + 48), v36++);
    }

    while (v36 != v37);
    v37 = *(&v43[0] + 1);
    v36 = *&v43[0];
  }

  while (v36 != v37)
  {
    std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((a8 + 72), v36++);
  }

  v48 = v43;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v48);
  *&v43[0] = &v46;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v43);
}

void sub_1A69BD8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = (v17 - 120);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t SetRuntimeConcurrency(uint64_t result, ZinRtOperationNode ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(ZinRtOperationNode::GetOperations(*v2) + 16);
      if (*(v4 + 8) < v5)
      {
        v5 = *(v4 + 8);
      }

      *(v4 + 8) = v5;
      v6 = *v2;
      v2 += 2;
      result = ZinRtOperationNode::GetOperations(v6);
      v7 = *(result + 16);
      if (*(v4 + 12) > v7)
      {
        v7 = *(v4 + 12);
      }

      *(v4 + 12) = v7;
    }

    while (v2 != v3);
  }

  return result;
}

void CreateRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,unsigned int,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams,unsigned int>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  v9 = a3[2];
  if (v9 != 1)
  {
    if (!v9)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v10 = a3[1];
    if (v10)
    {
      v11 = a3 + 1;
      do
      {
        v12 = v10[4];
        v13 = v12 >= 0x3FFF;
        v14 = v12 < 0x3FFF;
        if (v13)
        {
          v11 = v10;
        }

        v10 = v10[v14];
      }

      while (v10);
      if (v11 != a3 + 1 && !(v11[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v27 = *a5;
    v28 = *(a5 + 2);
    *(a5 + 8) = 0uLL;
    *a5 = 0;
    v15 = a6[3];
    v23 = a6[2];
    v24 = v15;
    v25 = a6[4];
    v26 = *(a6 + 10);
    v16 = a6[1];
    v21 = *a6;
    v22 = v16;
    CreateBondedRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,unsigned int,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams,unsigned int>(&v29);
  }

  *__p = *a5;
  v20 = *(a5 + 2);
  *(a5 + 8) = 0uLL;
  *a5 = 0;
  v17 = a6[3];
  v23 = a6[2];
  v24 = v17;
  v25 = a6[4];
  v26 = *(a6 + 10);
  v18 = a6[1];
  v21 = *a6;
  v22 = v18;
  CreateNonBondedRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,unsigned int,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams,unsigned int>(a1, a3, a4, __p, &v21, a7, &v29);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a8);
  *a8 = v29;
  a8[2] = v30;
  v30 = 0;
  v29 = 0uLL;
  *&v21 = &v29;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v21);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A69BDBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  *(v15 - 48) = v14;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v15 - 48));
  _Unwind_Resume(a1);
}

void CreateBondedRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,unsigned int,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams,unsigned int>(void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  LOBYTE(v7) = 1;
  std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,0>();
}

void sub_1A69BDD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CreateNonBondedRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,unsigned int,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams,unsigned int>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t *, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v7 = a2 + 1;
  v8 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v19 = v8[4];
      a1(&v17, a4, a5, a6, &v19, a3);
      if (v17)
      {
        std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,ZinNamedType<unsigned long,AneIndexTag> &,0>();
      }

      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      v14 = v8[1];
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
          v15 = v8[2];
          v16 = *v15 == v8;
          v8 = v15;
        }

        while (!v16);
      }

      v8 = v15;
    }

    while (v15 != v7);
  }
}

void sub_1A69BDE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,ZinRtCodegenParams,std::vector<std::shared_ptr<ZinRtOperationNode>>>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v8 = a3[2];
  if (v8 != 1)
  {
    if (!v8)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v9 = a3[1];
    if (v9)
    {
      v10 = a3 + 1;
      do
      {
        v11 = v9[4];
        v12 = v11 >= 0x3FFF;
        v13 = v11 < 0x3FFF;
        if (v12)
        {
          v10 = v9;
        }

        v9 = v9[v13];
      }

      while (v9);
      if (v10 != a3 + 1 && !(v10[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v30 = *a4;
    v31 = *(a4 + 2);
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    v14 = a5[3];
    v26 = a5[2];
    v27 = v14;
    v28 = a5[4];
    v29 = *(a5 + 10);
    v15 = a5[1];
    v24 = *a5;
    v25 = v15;
    v22 = *a6;
    v23 = *(a6 + 2);
    *a6 = 0uLL;
    *(a6 + 2) = 0;
    CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(IOType,ZinSinglePlaneLinearIODescriptor const&,std::string const&,ZinNamedType<unsigned long,AneIndexTag> const&),IOType,ZinSinglePlaneLinearIODescriptor,std::string>(&v32);
  }

  *__p = *a4;
  v21 = *(a4 + 2);
  *(a4 + 8) = 0uLL;
  *a4 = 0;
  v16 = a5[3];
  v26 = a5[2];
  v27 = v16;
  v28 = a5[4];
  v29 = *(a5 + 10);
  v17 = a5[1];
  v24 = *a5;
  v25 = v17;
  v18 = *a6;
  v19 = *(a6 + 2);
  *a6 = 0uLL;
  *(a6 + 2) = 0;
  CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(IOType,ZinSinglePlaneLinearIODescriptor const&,std::string const&,ZinNamedType<unsigned long,AneIndexTag> const&),IOType,ZinSinglePlaneLinearIODescriptor,std::string>(a1, a3, __p, &v24, &v18, &v32);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a7);
  *a7 = v32;
  a7[2] = v33;
  v33 = 0;
  v32 = 0uLL;
  *&v24 = &v32;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v24);
  *&v24 = &v18;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A69BE0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  *(v21 - 40) = &a9;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v21 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  *(v21 - 64) = v20;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v21 - 64));
  _Unwind_Resume(a1);
}

void AddAdjacencies(uint64_t *a1, uint64_t a2, uint64_t a3, ZinRtOperationNode ***a4)
{
  SetRuntimeConcurrency(a2, a4);
  if (*(a3 + 8) != *a3)
  {
    SetRuntimeConcurrency(a2, a3);
    v8 = *a1;
    v9 = a1[1];
    v11 = v8;
    v12 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = AddCorrespondingEdgesToSuccessorOpNodes(&v11, a4, a3);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if ((v10 & 1) == 0)
    {
      ZinAssertImpl("Error: Failed to connect map nodes to load nodes", v11, v12);
    }
  }
}

void sub_1A69BE1FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,unsigned int,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,ZinRtCodegenParams,unsigned int,std::vector<std::shared_ptr<ZinRtOperationNode>>>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t *a8@<X8>)
{
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  v9 = a3[2];
  if (v9 != 1)
  {
    if (!v9)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v10 = a3[1];
    if (v10)
    {
      v11 = a3 + 1;
      do
      {
        v12 = v10[4];
        v13 = v12 >= 0x3FFF;
        v14 = v12 < 0x3FFF;
        if (v13)
        {
          v11 = v10;
        }

        v10 = v10[v14];
      }

      while (v10);
      if (v11 != a3 + 1 && !(v11[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v31 = *a4;
    v32 = *(a4 + 2);
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    v15 = a5[3];
    v27 = a5[2];
    v28 = v15;
    v29 = a5[4];
    v30 = *(a5 + 10);
    v16 = a5[1];
    v25 = *a5;
    v26 = v16;
    v23 = *a7;
    v24 = *(a7 + 2);
    *a7 = 0uLL;
    *(a7 + 2) = 0;
    CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,ZinLiveInputParamDescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,ZinLiveInputParamDescriptor,ZinRtCodegenParams>(&v33);
  }

  *__p = *a4;
  v22 = *(a4 + 2);
  *(a4 + 8) = 0uLL;
  *a4 = 0;
  v17 = a5[3];
  v27 = a5[2];
  v28 = v17;
  v29 = a5[4];
  v30 = *(a5 + 10);
  v18 = a5[1];
  v25 = *a5;
  v26 = v18;
  v19 = *a7;
  v20 = *(a7 + 2);
  *a7 = 0uLL;
  *(a7 + 2) = 0;
  CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,ZinLiveInputParamDescriptor const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,ZinLiveInputParamDescriptor,ZinRtCodegenParams>(a1, a3, __p, &v25, a6, &v19, &v33);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a8);
  *a8 = v33;
  a8[2] = v34;
  v34 = 0;
  v33 = 0uLL;
  *&v25 = &v33;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v25);
  *&v25 = &v19;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A69BE43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  *(v21 - 40) = &a9;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v21 - 40));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  *(v21 - 64) = v20;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v21 - 64));
  _Unwind_Resume(a1);
}

void CreateMapAndLoadOperationNodes(ZinRtCodegenParams const&,std::string const&,std::shared_ptr<ZinRtNodeGraph>,std::set<ZinNamedType<unsigned long,AneIndexTag>> const&,std::vector<ZinIrSymbolData> &,rt_procedure_scalars_t &,ZinResultNodes &)::$_0::operator()<std::vector<std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>(uint64_t *a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>::pair[abi:ne200100](&v13, v2);
      v5 = a1[1];
      v6 = v5[1];
      v12[0] = *v5;
      v12[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AddAdjacencies(v12, *a1, &v13, &v15);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v7 = v13;
      v8 = v14;
      v9 = a1[2];
      if (v13 != v14)
      {
        do
        {
          std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((v9 + 48), v7++);
        }

        while (v7 != v8);
        v9 = a1[2];
      }

      v10 = v15;
      v11 = v16;
      if (v15 != v16)
      {
        do
        {
          std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((v9 + 48), v10++);
        }

        while (v10 != v11);
        v10 = v15;
        v11 = v16;
        v9 = a1[2];
      }

      while (v10 != v11)
      {
        std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((v9 + 72), v10++);
      }

      v17 = &v15;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v17);
      v17 = &v13;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v17);
      v2 += 6;
    }

    while (v2 != v3);
  }
}

void sub_1A69BE5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t *std::pair<std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>::pair[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::shared_ptr<ZinRtOperationNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<std::shared_ptr<ZinRtOperationNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(a1 + 3, a2[3], a2[4], (a2[4] - a2[3]) >> 4);
  return a1;
}

void sub_1A69BE674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CodegenRuntimeAllocBSS(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t **a5@<X8>)
{
  v9 = *(a3 + 72);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *a2, *(a2 + 8));
  }

  else
  {
    v19 = *a2;
  }

  v10 = *(a3 + 48);
  v17[2] = *(a3 + 32);
  v17[3] = v10;
  v17[4] = *(a3 + 64);
  v18 = *(a3 + 80);
  v11 = *(a3 + 16);
  v17[0] = *a3;
  v17[1] = v11;
  CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,ZinRtCodegenParams>(CreateRuntimeAllocBSS, v9, a4, &v19, v17, a5);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v12 = *a5;
  v13 = a5[1];
  if (*a5 != v13)
  {
    v14 = *a1;
    do
    {
      v15 = ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(v14, v12);
      v12 += 2;
      if (v12 == v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }
    }

    while ((v16 & 1) != 0);
    if ((v15 & 1) == 0)
    {
      ZinAssertImpl("Failed to add alloc nodes to graph");
    }
  }
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,ZinRtCodegenParams>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v7 = a3[2];
  if (v7 != 1)
  {
    if (!v7)
    {
      ZinAssertImpl("Error: No device id given", a2);
    }

    v8 = a3[1];
    if (v8)
    {
      v9 = a3 + 1;
      do
      {
        v10 = v8[4];
        v11 = v10 >= 0x3FFF;
        v12 = v10 < 0x3FFF;
        if (v11)
        {
          v9 = v8;
        }

        v8 = v8[v12];
      }

      while (v8);
      if (v9 != a3 + 1 && !(v9[4] >> 14))
      {
        ZinAssertImpl("Error: Shared device id cannot be provided together with other device ids", a2);
      }
    }
  }

  if (a2)
  {
    v25 = *a4;
    v26 = *(a4 + 2);
    *(a4 + 8) = 0uLL;
    *a4 = 0;
    v13 = a5[3];
    v21 = a5[2];
    v22 = v13;
    v23 = a5[4];
    v24 = *(a5 + 10);
    v14 = a5[1];
    v19 = *a5;
    v20 = v14;
    CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::vector<std::shared_ptr<ZinRtOperationNode>>>(&v27);
  }

  *__p = *a4;
  v18 = *(a4 + 2);
  *(a4 + 8) = 0uLL;
  *a4 = 0;
  v15 = a5[3];
  v21 = a5[2];
  v22 = v15;
  v23 = a5[4];
  v24 = *(a5 + 10);
  v16 = a5[1];
  v19 = *a5;
  v20 = v16;
  CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::vector<std::shared_ptr<ZinRtOperationNode>>>(a1, a3, __p, &v19, &v27);
  std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a6);
  *a6 = v27;
  a6[2] = v28;
  v28 = 0;
  v27 = 0uLL;
  *&v19 = &v27;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1A69BE988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  *(v15 - 48) = v14;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v15 - 48));
  _Unwind_Resume(a1);
}

void std::vector<rt_operation_ane_segment_info_t>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinTECropModeLayer::TexCropCfg>>(a1, a2);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::__shared_ptr_emplace<ZinRtOperationANE>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<ZinRtOperationANE>,0>(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F19F2A50;
  ZinRtOperation::ZinRtOperation(a1 + 24, a2);
  *(a1 + 24) = &unk_1F19E8140;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 40) = *(a1 + 40) & 0xFFFFFFE1 | 2;
  return a1;
}

void std::__shared_ptr_emplace<ZinRtOperationANE>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F2A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void *std::__hash_table<std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::shared_ptr<ZinRtOperationNode>>,std::__unordered_map_hasher<ZinNamedType<unsigned long,AneIndexTag>,std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::shared_ptr<ZinRtOperationNode>>,std::hash<ZinNamedType<unsigned long,AneIndexTag>>,std::equal_to<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::__unordered_map_equal<ZinNamedType<unsigned long,AneIndexTag>,std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::shared_ptr<ZinRtOperationNode>>,std::equal_to<ZinNamedType<unsigned long,AneIndexTag>>,std::hash<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::shared_ptr<ZinRtOperationNode>>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::piecewise_construct_t const&,std::tuple<ZinNamedType<unsigned long,AneIndexTag>&&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
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
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

double std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::insert_iterator<std::set<ZinNamedType<unsigned long,AneIndexTag>>>>@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = a3;
  v21 = a1;
  *&v19 = a5;
  *(&v19 + 1) = a6;
  for (i = 0; v20 != a4; a3 = v20)
  {
    v12 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<ZinIrOpLayer *,std::__tree_node<ZinIrOpLayer *,void *> *,long>,std::__tree_const_iterator<ZinIrOpLayer *,std::__tree_node<ZinIrOpLayer *,void *> *,long>,ZinIrOpLayer *,std::__identity const,std::__less<void,void>>(v21, a2, a3 + 4, a7, &v18);
    v13 = v21;
    v21 = v12;
    std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::insert_iterator<std::set<ZinNamedType<unsigned long,AneIndexTag>>>>(v12 == v13, &v21, &v20, &v19, &i);
    if (v21 == a2)
    {
      break;
    }

    v14 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<ZinIrOpLayer *,std::__tree_node<ZinIrOpLayer *,void *> *,long>,std::__tree_const_iterator<ZinIrOpLayer *,std::__tree_node<ZinIrOpLayer *,void *> *,long>,ZinIrOpLayer *,std::__identity const,std::__less<void,void>>(v20, a4, v21 + 4, a7, &v18);
    v15 = v20;
    v20 = v14;
    std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::insert_iterator<std::set<ZinNamedType<unsigned long,AneIndexTag>>>>(v14 == v15, &v21, &v20, &v19, &i);
  }

  *a8 = a2;
  *(a8 + 8) = a4;
  result = *&v19;
  *(a8 + 16) = v19;
  return result;
}

uint64_t std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::__tree_const_iterator<ZinNamedType<unsigned long,AneIndexTag>,std::__tree_node<ZinNamedType<unsigned long,AneIndexTag>,void *> *,long>,std::insert_iterator<std::set<ZinNamedType<unsigned long,AneIndexTag>>>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = std::insert_iterator<std::set<unsigned long long>>::operator=[abi:ne200100](a4, (*a2 + 32));
      v8 = *a2;
      v9 = *(*a2 + 8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

uint64_t std::vector<ResourceInformation>::__emplace_back_slow_path<std::string const&,unsigned long const&,RtOperationResourceType &,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &>(uint64_t *a1, __int128 *a2, std::string::size_type *a3, _WORD *a4, _WORD *a5, __int128 *a6, uint64_t a7)
{
  v7 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0x147AE147AE147AELL)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3) > v8)
  {
    v8 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v11 = 0x147AE147AE147AELL;
  }

  else
  {
    v11 = v8;
  }

  v21 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ResourceInformation>>(a1, v11);
  }

  v18 = 0;
  v19 = 200 * v7;
  std::construct_at[abi:ne200100]<ResourceInformation,std::string const&,unsigned long const&,RtOperationResourceType &,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>((200 * v7), a2, a3, a4, a5, a6, a7);
  v20 = 200 * v7 + 200;
  v12 = a1[1];
  v13 = 200 * v7 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ResourceInformation>,ResourceInformation*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ResourceInformation>::~__split_buffer(&v18);
  return v17;
}

void sub_1A69BF17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ResourceInformation>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *std::construct_at[abi:ne200100]<ResourceInformation,std::string const&,unsigned long const&,RtOperationResourceType &,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>(std::string *this, __int128 *a2, std::string::size_type *a3, _WORD *a4, _WORD *a5, __int128 *a6, uint64_t a7)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v13;
  }

  this[1].__r_.__value_.__r.__words[0] = *a3;
  LOWORD(this[1].__r_.__value_.__r.__words[1]) = *a4;
  WORD1(this[1].__r_.__value_.__r.__words[1]) = *a5;
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *a6, *(a6 + 1));
  }

  else
  {
    v14 = *a6;
    this[2].__r_.__value_.__l.__size_ = *(a6 + 2);
    *&this[1].__r_.__value_.__r.__words[2] = v14;
  }

  v15 = *(a6 + 24);
  v16 = *(a6 + 56);
  *&this[3].__r_.__value_.__r.__words[1] = *(a6 + 40);
  *&this[4].__r_.__value_.__l.__data_ = v16;
  *&this[2].__r_.__value_.__r.__words[2] = v15;
  v17 = *(a6 + 72);
  v18 = *(a6 + 88);
  v19 = *(a6 + 104);
  LODWORD(this[6].__r_.__value_.__r.__words[2]) = *(a6 + 30);
  *&this[5].__r_.__value_.__r.__words[1] = v18;
  *&this[6].__r_.__value_.__l.__data_ = v19;
  *&this[4].__r_.__value_.__r.__words[2] = v17;
  this[7].__r_.__value_.__s.__data_[0] = 1;
  std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](&this[7].__r_.__value_.__l.__size_, a7);
  return this;
}

void sub_1A69BF288(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__tree_node<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__tree_node<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,void *> *,long>>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_hint_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,RegionInfo> const&>(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_hint_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,RegionInfo> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  result = *std::__tree<unsigned long>::__find_equal<unsigned long>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__construct_node<std::pair<ZinNamedType<unsigned long,AneIndexTag> const,RegionInfo> const&>();
  }

  return result;
}

void sub_1A69BF4A4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<ZinNamedType<unsigned long,AneIndexTag> const,RegionInfo>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 32) = v6;
  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ResourceInformation>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ResourceInformation>,ResourceInformation*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::construct_at[abi:ne200100]<ResourceInformation,ResourceInformation,ResourceInformation*>(a4, v7);
      v7 = (v7 + 200);
      a4 = v12 + 200;
      v12 += 200;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ResourceInformation>>::destroy[abi:ne200100]<ResourceInformation,void,0>(a1, v5);
      v5 += 200;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResourceInformation>,ResourceInformation*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::construct_at[abi:ne200100]<ResourceInformation,ResourceInformation,ResourceInformation*>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v3 = *(a2 + 3);
  v4 = *(a2 + 8);
  *(result + 40) = 0;
  *(result + 32) = v4;
  *(result + 24) = v3;
  *(result + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    v5 = *(a2 + 40);
    *(result + 56) = *(a2 + 7);
    *(result + 40) = v5;
    a2[3] = 0uLL;
    *(a2 + 5) = 0;
    v6 = a2[4];
    v7 = a2[6];
    *(result + 80) = a2[5];
    *(result + 96) = v7;
    *(result + 64) = v6;
    v8 = a2[7];
    v9 = a2[8];
    v10 = a2[9];
    *(result + 160) = *(a2 + 40);
    *(result + 128) = v9;
    *(result + 144) = v10;
    *(result + 112) = v8;
    *(result + 168) = 1;
  }

  *(result + 176) = *(a2 + 22);
  v11 = a2 + 23;
  v12 = *(a2 + 23);
  *(result + 184) = v12;
  v13 = result + 184;
  v14 = *(a2 + 24);
  *(result + 192) = v14;
  if (v14)
  {
    *(v12 + 16) = v13;
    *(a2 + 22) = v11;
    *v11 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    *(result + 176) = v13;
  }

  return result;
}

void std::allocator_traits<std::allocator<ResourceInformation>>::destroy[abi:ne200100]<ResourceInformation,void,0>(uint64_t a1, uint64_t a2)
{
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(a2 + 176, *(a2 + 184));
  if (*(a2 + 168) == 1 && *(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResourceInformation>,ResourceInformation*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ResourceInformation>,ResourceInformation*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ResourceInformation>,ResourceInformation*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 200;
      std::allocator_traits<std::allocator<ResourceInformation>>::destroy[abi:ne200100]<ResourceInformation,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ResourceInformation>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ResourceInformation>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ResourceInformation>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 200;
    std::allocator_traits<std::allocator<ResourceInformation>>::destroy[abi:ne200100]<ResourceInformation,void,0>(v5, v4 - 200);
  }
}

void std::vector<ResourceInformation>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ResourceInformation>>::destroy[abi:ne200100]<ResourceInformation,void,0>(a1, i))
  {
    i -= 200;
  }

  *(a1 + 8) = a2;
}

void *std::vector<ResourceInformation>::__construct_one_at_end[abi:ne200100]<ResourceInformation const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 3);
  *(v4 + 32) = *(a2 + 8);
  *(v4 + 24) = v6;
  std::__optional_copy_base<ZinRtPlaneInfo,false>::__optional_copy_base[abi:ne200100]((v4 + 40), (a2 + 40));
  result = std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100]((v4 + 176), (a2 + 11));
  *(a1 + 8) = v4 + 200;
  return result;
}

uint64_t std::vector<ResourceInformation>::__emplace_back_slow_path<ResourceInformation const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x147AE147AE147AELL)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v6 = 0x147AE147AE147AELL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ResourceInformation>>(a1, v6);
  }

  v7 = 200 * v2;
  v16 = 0;
  v17 = v7;
  v18 = v7;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  v9 = *(a2 + 3);
  *(v7 + 32) = *(a2 + 8);
  *(v7 + 24) = v9;
  std::__optional_copy_base<ZinRtPlaneInfo,false>::__optional_copy_base[abi:ne200100]((v7 + 40), (a2 + 40));
  std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100]((v7 + 176), (a2 + 11));
  *&v18 = v18 + 200;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ResourceInformation>,ResourceInformation*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ResourceInformation>::~__split_buffer(&v16);
  return v15;
}

void sub_1A69BFB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 168) == 1 && *(v7 + 63) < 0)
  {
    operator delete(*(v7 + 40));
  }

  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  std::__split_buffer<ResourceInformation>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<ZinRtPlaneInfo,false>::__optional_copy_base[abi:ne200100](std::string *this, __int128 *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[5].__r_.__value_.__s.__data_[8] = 0;
  if (*(a2 + 128) == 1)
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
    v6 = *(a2 + 40);
    *&this[2].__r_.__value_.__r.__words[1] = *(a2 + 56);
    *&this[1].__r_.__value_.__r.__words[2] = v6;
    *&this[1].__r_.__value_.__l.__data_ = v5;
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    v9 = *(a2 + 104);
    LODWORD(this[5].__r_.__value_.__l.__data_) = *(a2 + 30);
    *&this[4].__r_.__value_.__r.__words[1] = v9;
    *&this[3].__r_.__value_.__r.__words[2] = v8;
    *&this[3].__r_.__value_.__l.__data_ = v7;
    this[5].__r_.__value_.__s.__data_[8] = 1;
  }

  return this;
}

void sub_1A69BFC80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 128) == 1)
  {
    std::__optional_copy_base<ZinException::BasicBlockInfo,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 56 * a3;
    do
    {
      std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_hint_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,RegionInfo> const&>(a1, v4, a2, a2);
      a2 += 7;
      v6 -= 56;
    }

    while (v6);
  }

  return a1;
}

std::string *std::vector<ResourceInformation>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ResourceInformation*>,std::__wrap_iter<ResourceInformation*>>(uint64_t a1, std::string *a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if ((0x8F5C28F5C28F5C29 * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x8F5C28F5C28F5C29 * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 200 * a5;
        std::vector<ResourceInformation>::__move_range(a1, a2, *(a1 + 8), a2 + 200 * a5);
        v17 = (a3 + v18);
      }

      else
      {
        *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ResourceInformation>,ResourceInformation*,ResourceInformation*,ResourceInformation*>(a1, (a3 + v16), a4, *(a1 + 8));
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<ResourceInformation>::__move_range(a1, v5, v10, v5 + 200 * a5);
        v17 = (a3 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<ResourceInformation *,ResourceInformation *,ResourceInformation *>(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x70A3D70A3D70A3D7 * ((v10 - *a1) >> 3);
    if (v12 > 0x147AE147AE147AELL)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0x8F5C28F5C28F5C29 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xA3D70A3D70A3D7)
    {
      v15 = 0x147AE147AE147AELL;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ResourceInformation>>(a1, v15);
    }

    v20 = 0;
    v21 = 8 * (v13 >> 3);
    v22 = v21;
    v23 = 0;
    std::__split_buffer<ResourceInformation>::__construct_at_end_with_size<std::__wrap_iter<ResourceInformation*>>(&v20, a3, a5);
    v5 = std::vector<ResourceInformation>::__swap_out_circular_buffer(a1, &v20, v5);
    std::__split_buffer<ResourceInformation>::~__split_buffer(&v20);
  }

  return v5;
}

uint64_t std::vector<ResourceInformation>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      std::construct_at[abi:ne200100]<ResourceInformation,ResourceInformation,ResourceInformation*>(v8, v10);
      v10 = (v10 + 200);
      v8 += 200;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ResourceInformation *,ResourceInformation *,ResourceInformation *>(&v12, a2, v7, v6);
}

void *std::__split_buffer<ResourceInformation>::__construct_at_end_with_size<std::__wrap_iter<ResourceInformation*>>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = 0;
    v7 = v4 + 200 * a3;
    v8 = 200 * a3;
    do
    {
      v9 = (v4 + v6);
      v10 = (a2 + v6);
      if (*(a2 + v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v9, *v10, *(v10 + 1));
      }

      else
      {
        v11 = *v10;
        v9->__r_.__value_.__r.__words[2] = *(v10 + 2);
        *&v9->__r_.__value_.__l.__data_ = v11;
      }

      v12 = v4 + v6;
      v13 = *(a2 + v6 + 24);
      *(v12 + 32) = *(a2 + v6 + 32);
      *(v12 + 24) = v13;
      std::__optional_copy_base<ZinRtPlaneInfo,false>::__optional_copy_base[abi:ne200100]((v4 + v6 + 40), (a2 + v6 + 40));
      result = std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100]((v4 + v6 + 176), a2 + v6 + 176);
      v6 += 200;
    }

    while (v8 != v6);
    v4 = v7;
  }

  v3[2] = v4;
  return result;
}

uint64_t std::vector<ResourceInformation>::__swap_out_circular_buffer(__int128 **a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ResourceInformation>,ResourceInformation*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ResourceInformation>,ResourceInformation*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ResourceInformation>,ResourceInformation*,ResourceInformation*,ResourceInformation*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v8 = *(v6 + 3);
      LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(v6 + 8);
      v4[1].__r_.__value_.__r.__words[0] = v8;
      std::__optional_copy_base<ZinRtPlaneInfo,false>::__optional_copy_base[abi:ne200100]((v4 + 40), (v6 + 40));
      std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](&v4[7].__r_.__value_.__l.__size_, (v6 + 11));
      v6 = (v6 + 200);
      v4 = (v13 + 200);
      v13 = (v13 + 200);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResourceInformation>,ResourceInformation*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ResourceInformation *,ResourceInformation *,ResourceInformation *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a4 + v7 - 200);
      if (*(a4 + v7 - 177) < 0)
      {
        operator delete(*v9);
      }

      v10 = (a3 + v7 - 200);
      v11 = *v10;
      *(a4 + v7 - 184) = *(a3 + v7 - 184);
      *v9 = v11;
      *(a3 + v7 - 177) = 0;
      *v10 = 0;
      v12 = *(a3 + v7 - 176);
      *(v8 - 168) = *(a3 + v7 - 168);
      *(v8 - 176) = v12;
      std::__optional_storage_base<ZinRtPlaneInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinRtPlaneInfo,false>>(v8 - 160, (a3 + v7 - 160));
      std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__move_assign((a4 + v7 - 24), (a3 + v7 - 24));
      v7 -= 200;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

__n128 std::__optional_storage_base<ZinRtPlaneInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ZinRtPlaneInfo,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (*(a1 + 128))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      v5 = *(a2 + 56);
      v6 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v6;
      *(a1 + 56) = v5;
      result = *(a2 + 72);
      v8 = *(a2 + 88);
      v9 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 30);
      *(a1 + 104) = v9;
      *(a1 + 88) = v8;
      *(a1 + 72) = result;
    }
  }

  else if (*(a1 + 128))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 128) = 0;
  }

  else
  {
    v10 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v10;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v11 = *(a2 + 24);
    v12 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v12;
    *(a1 + 24) = v11;
    result = *(a2 + 72);
    v13 = *(a2 + 88);
    v14 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 30);
    *(a1 + 104) = v14;
    *(a1 + 88) = v13;
    *(a1 + 72) = result;
    *(a1 + 128) = 1;
  }

  return result;
}

void std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__move_assign(void *a1, void *a2)
{
  v4 = a1 + 1;
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(a1, a1[1]);
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

std::string *std::__copy_impl::operator()[abi:ne200100]<ResourceInformation *,ResourceInformation *,ResourceInformation *>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  v7 = &__str[7].__r_.__value_.__r.__words[2];
  do
  {
    std::string::operator=(this, v5);
    v8 = v5[1].__r_.__value_.__r.__words[1];
    this[1].__r_.__value_.__r.__words[0] = v5[1].__r_.__value_.__r.__words[0];
    LODWORD(this[1].__r_.__value_.__r.__words[1]) = v8;
    std::__optional_storage_base<ZinRtPlaneInfo,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinRtPlaneInfo,false> const&>((this + 40), (v5 + 40));
    if (this != v5)
    {
      std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__tree_node<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,void *> *,long>>(&this[7].__r_.__value_.__l.__size_, v5[7].__r_.__value_.__l.__size_, v7);
    }

    this = (this + 200);
    v7 += 25;
    v5 = (v5 + 200);
  }

  while (v5 != v6);
  return v6;
}

__n128 std::__optional_storage_base<ZinRtPlaneInfo,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinRtPlaneInfo,false> const&>(std::string *this, std::string *__str)
{
  if (this[5].__r_.__value_.__s.__data_[8] == __str[5].__r_.__value_.__s.__data_[8])
  {
    if (this[5].__r_.__value_.__s.__data_[8])
    {
      std::string::operator=(this, __str);
      v4 = *&__str[2].__r_.__value_.__r.__words[1];
      v5 = *&__str[1].__r_.__value_.__r.__words[2];
      *&this[1].__r_.__value_.__l.__data_ = *&__str[1].__r_.__value_.__l.__data_;
      *&this[1].__r_.__value_.__r.__words[2] = v5;
      *&this[2].__r_.__value_.__r.__words[1] = v4;
      result = *&__str[3].__r_.__value_.__r.__words[2];
      v7 = *&__str[4].__r_.__value_.__r.__words[1];
      data = __str[5].__r_.__value_.__l.__data_;
      *&this[3].__r_.__value_.__l.__data_ = *&__str[3].__r_.__value_.__l.__data_;
      LODWORD(this[5].__r_.__value_.__l.__data_) = data;
      *&this[4].__r_.__value_.__r.__words[1] = v7;
      *&this[3].__r_.__value_.__r.__words[2] = result;
    }
  }

  else if (this[5].__r_.__value_.__s.__data_[8])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[5].__r_.__value_.__s.__data_[8] = 0;
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v9 = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v9;
    }

    v10 = *&__str[1].__r_.__value_.__l.__data_;
    v11 = *&__str[1].__r_.__value_.__r.__words[2];
    *&this[2].__r_.__value_.__r.__words[1] = *&__str[2].__r_.__value_.__r.__words[1];
    *&this[1].__r_.__value_.__r.__words[2] = v11;
    *&this[1].__r_.__value_.__l.__data_ = v10;
    result = *&__str[3].__r_.__value_.__l.__data_;
    v12 = *&__str[3].__r_.__value_.__r.__words[2];
    v13 = *&__str[4].__r_.__value_.__r.__words[1];
    LODWORD(this[5].__r_.__value_.__l.__data_) = __str[5].__r_.__value_.__l.__data_;
    *&this[4].__r_.__value_.__r.__words[1] = v13;
    *&this[3].__r_.__value_.__r.__words[2] = v12;
    *&this[3].__r_.__value_.__l.__data_ = result;
    this[5].__r_.__value_.__s.__data_[8] = 1;
  }

  return result;
}

void *std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__tree_node<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,void *> *,long>>(void *result, void *a2, void *a3)
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
          v8[4] = v9[4];
          std::string::operator=((v8 + 5), (v9 + 5));
          v10 = *(v9 + 4);
          *(v8 + 77) = *(v9 + 77);
          *(v8 + 4) = v10;
          std::__tree<__CFString const*>::__node_insert_multi(v5, v15);
          v8 = v14;
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

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_multi<std::pair<ZinNamedType<unsigned long,AneIndexTag> const,RegionInfo> const&>(v5, (a2 + 4));
  }

  return result;
}

void sub_1A69C07FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(*a1, *(a1 + 16));
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

    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(*a1, v2);
  }

  return a1;
}

void std::vector<ResourceInformation>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ResourceInformation>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<ResourceInformation>::__emplace_back_slow_path<std::string &,unsigned long &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &>(uint64_t *a1, __int128 *a2, std::string::size_type *a3, _WORD *a4, _WORD *a5, __int128 *a6, uint64_t a7)
{
  v7 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0x147AE147AE147AELL)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3) > v8)
  {
    v8 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v11 = 0x147AE147AE147AELL;
  }

  else
  {
    v11 = v8;
  }

  v21 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ResourceInformation>>(a1, v11);
  }

  v18 = 0;
  v19 = 200 * v7;
  std::construct_at[abi:ne200100]<ResourceInformation,std::string &,unsigned long &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>((200 * v7), a2, a3, a4, a5, a6, a7);
  v20 = 200 * v7 + 200;
  v12 = a1[1];
  v13 = 200 * v7 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ResourceInformation>,ResourceInformation*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ResourceInformation>::~__split_buffer(&v18);
  return v17;
}

void sub_1A69C0A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ResourceInformation>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *std::construct_at[abi:ne200100]<ResourceInformation,std::string &,unsigned long &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>(std::string *this, __int128 *a2, std::string::size_type *a3, _WORD *a4, _WORD *a5, __int128 *a6, uint64_t a7)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v13;
  }

  this[1].__r_.__value_.__r.__words[0] = *a3;
  LOWORD(this[1].__r_.__value_.__r.__words[1]) = *a4;
  WORD1(this[1].__r_.__value_.__r.__words[1]) = *a5;
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *a6, *(a6 + 1));
  }

  else
  {
    v14 = *a6;
    this[2].__r_.__value_.__l.__size_ = *(a6 + 2);
    *&this[1].__r_.__value_.__r.__words[2] = v14;
  }

  v15 = *(a6 + 24);
  v16 = *(a6 + 56);
  *&this[3].__r_.__value_.__r.__words[1] = *(a6 + 40);
  *&this[4].__r_.__value_.__l.__data_ = v16;
  *&this[2].__r_.__value_.__r.__words[2] = v15;
  v17 = *(a6 + 72);
  v18 = *(a6 + 88);
  v19 = *(a6 + 104);
  LODWORD(this[6].__r_.__value_.__r.__words[2]) = *(a6 + 30);
  *&this[5].__r_.__value_.__r.__words[1] = v18;
  *&this[6].__r_.__value_.__l.__data_ = v19;
  *&this[4].__r_.__value_.__r.__words[2] = v17;
  this[7].__r_.__value_.__s.__data_[0] = 1;
  std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](&this[7].__r_.__value_.__l.__size_, a7);
  return this;
}

void sub_1A69C0BA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ResourceInformation>::__emplace_back_slow_path<std::string &,unsigned int &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &>(uint64_t *a1, __int128 *a2, unsigned int *a3, _WORD *a4, _WORD *a5, __int128 *a6, uint64_t a7)
{
  v7 = 0x8F5C28F5C28F5C29 * ((a1[1] - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0x147AE147AE147AELL)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3) > v8)
  {
    v8 = 0x1EB851EB851EB852 * ((a1[2] - *a1) >> 3);
  }

  if (0x8F5C28F5C28F5C29 * ((a1[2] - *a1) >> 3) >= 0xA3D70A3D70A3D7)
  {
    v11 = 0x147AE147AE147AELL;
  }

  else
  {
    v11 = v8;
  }

  v21 = a1;
  if (v11)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ResourceInformation>>(a1, v11);
  }

  v18 = 0;
  v19 = 200 * v7;
  std::construct_at[abi:ne200100]<ResourceInformation,std::string &,unsigned int &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>((200 * v7), a2, a3, a4, a5, a6, a7);
  v20 = 200 * v7 + 200;
  v12 = a1[1];
  v13 = 200 * v7 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ResourceInformation>,ResourceInformation*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<ResourceInformation>::~__split_buffer(&v18);
  return v17;
}

void sub_1A69C0D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ResourceInformation>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *std::construct_at[abi:ne200100]<ResourceInformation,std::string &,unsigned int &,RtOperationResourceType,RtOperationProtectionType &,ZinRtPlaneInfo &,std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo> &,ResourceInformation*>(std::string *this, __int128 *a2, unsigned int *a3, _WORD *a4, _WORD *a5, __int128 *a6, uint64_t a7)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v13 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v13;
  }

  this[1].__r_.__value_.__r.__words[0] = *a3;
  LOWORD(this[1].__r_.__value_.__r.__words[1]) = *a4;
  WORD1(this[1].__r_.__value_.__r.__words[1]) = *a5;
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *a6, *(a6 + 1));
  }

  else
  {
    v14 = *a6;
    this[2].__r_.__value_.__l.__size_ = *(a6 + 2);
    *&this[1].__r_.__value_.__r.__words[2] = v14;
  }

  v15 = *(a6 + 24);
  v16 = *(a6 + 56);
  *&this[3].__r_.__value_.__r.__words[1] = *(a6 + 40);
  *&this[4].__r_.__value_.__l.__data_ = v16;
  *&this[2].__r_.__value_.__r.__words[2] = v15;
  v17 = *(a6 + 72);
  v18 = *(a6 + 88);
  v19 = *(a6 + 104);
  LODWORD(this[6].__r_.__value_.__r.__words[2]) = *(a6 + 30);
  *&this[5].__r_.__value_.__r.__words[1] = v18;
  *&this[6].__r_.__value_.__l.__data_ = v19;
  *&this[4].__r_.__value_.__r.__words[2] = v17;
  this[7].__r_.__value_.__s.__data_[0] = 1;
  std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](&this[7].__r_.__value_.__l.__size_, a7);
  return this;
}

void sub_1A69C0E5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<ResourceInformation>::~optional(uint64_t a1)
{
  if (*(a1 + 200) == 1)
  {
    std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(a1 + 176, *(a1 + 184));
    if (*(a1 + 168) == 1 && *(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t std::map<RtOperationResourceType,ZinRtResourceSetting>::at(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 13);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 28;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void GenerateMapsAndAllocsForResources(std::vector<ResourceInformation> const&,std::map<RtOperationResourceType,ZinRtResourceSetting> const&,std::string const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::shared_ptr<ZinRtBlockNode> &)::$_1::operator()(ZinRtOperationNode ****a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, std::string *a5@<X8>)
{
  v7 = (*a1)[1];
  v8 = **a1;
  if (v8 == v7)
  {
    goto LABEL_20;
  }

  while (1)
  {
    if (ZinIrAsyncFunction::GetExit(*v8) == a3 || ZinIrAsyncFunction::GetExit(*v8) == *a4)
    {
      Operations = ZinRtOperationNode::GetOperations(*v8);
      v14 = *Operations;
      v12 = Operations + 1;
      v13 = v14;
      if (v14 != v12)
      {
        break;
      }
    }

LABEL_15:
    v8 += 2;
    if (v8 == v7)
    {
      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13[4];
    v16 = (v15[4] >> 5) & 0x3FFF;
    v17 = v16 == a3 || *a4 == v16;
    if (v17)
    {
      break;
    }

    v18 = v13[1];
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
        v19 = v13[2];
        v17 = *v19 == v13;
        v13 = v19;
      }

      while (!v17);
    }

    v13 = v19;
    if (v19 == v12)
    {
      goto LABEL_15;
    }
  }

  if (!v20)
  {
LABEL_20:
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      *&a5->__r_.__value_.__l.__data_ = *a2;
      a5->__r_.__value_.__r.__words[2] = *(a2 + 16);
      return;
    }

    v22 = *a2;
    v23 = *(a2 + 8);
  }

  else
  {
    if ((v20[63] & 0x80000000) == 0)
    {
      v21 = *(v20 + 40);
      a5->__r_.__value_.__r.__words[2] = *(v20 + 7);
      *&a5->__r_.__value_.__l.__data_ = v21;
      return;
    }

    v22 = *(v20 + 5);
    v23 = *(v20 + 6);
  }

  std::string::__init_copy_ctor_external(a5, v22, v23);
}

uint64_t std::vector<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__emplace_back_slow_path<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>(a1, a2);
  }

  else
  {
    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>::__tuple_impl(v3, a2);
    result = v4 + 248;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__emplace_back_slow_path<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((a1[2] - *a1) >> 3) >= 0x84210842108421)
  {
    v6 = 0x108421084210842;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 248 * v2;
  std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>::__tuple_impl(248 * v2, a2);
  v15 = 248 * v2 + 248;
  v7 = a1[1];
  v8 = 248 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>,std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::~__split_buffer(&v13);
  return v12;
}

void sub_1A69C1274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  v3 = std::construct_at[abi:ne200100]<ResourceInformation,ResourceInformation,ResourceInformation*>(a1, a2);
  v3[25] = 0;
  v3[26] = 0;
  v3[27] = 0;
  *(v3 + 25) = *(a2 + 200);
  v3[27] = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v3[28] = 0;
  v3[29] = 0;
  v3[30] = 0;
  result = *(a2 + 224);
  *(v3 + 14) = result;
  v3[30] = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x108421084210843)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>,std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>::__tuple_impl(a4, v7);
      v7 += 248;
      a4 = v12 + 248;
      v12 += 248;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::destroy[abi:ne200100]<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>,void,0>(a1, v5);
      v5 += 248;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>,std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::destroy[abi:ne200100]<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 224);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a2 + 200);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(a2 + 176, *(a2 + 184));
  if (*(a2 + 168) == 1 && *(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>,std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>,std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>,std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 248;
      std::allocator_traits<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::destroy[abi:ne200100]<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 248;
    std::allocator_traits<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::destroy[abi:ne200100]<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>,void,0>(v5, v4 - 248);
  }
}

std::string *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJ19ResourceInformationNS_6vectorINS_10shared_ptrI18ZinRtOperationNodeEENS_9allocatorIS7_EEEESA_EEC2B8ne200100IJLm0ELm1ELm2EEJS3_SA_SA_EJEJEJRKS3_RSA_SF_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSH_IJDpT2_EEEDpOT3_(std::string *this, __int128 *a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v8;
  }

  v9 = *(a2 + 3);
  LODWORD(this[1].__r_.__value_.__r.__words[1]) = *(a2 + 8);
  this[1].__r_.__value_.__r.__words[0] = v9;
  std::__optional_copy_base<ZinRtPlaneInfo,false>::__optional_copy_base[abi:ne200100]((this + 40), (a2 + 40));
  std::map<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>::map[abi:ne200100](&this[7].__r_.__value_.__l.__size_, (a2 + 11));
  this[8].__r_.__value_.__l.__size_ = 0;
  this[8].__r_.__value_.__r.__words[2] = 0;
  this[9].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::shared_ptr<ZinRtOperationNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(&this[8].__r_.__value_.__l.__size_, *a3, a3[1], (a3[1] - *a3) >> 4);
  this[9].__r_.__value_.__l.__size_ = 0;
  this[9].__r_.__value_.__r.__words[2] = 0;
  this[10].__r_.__value_.__r.__words[0] = 0;
  std::vector<std::shared_ptr<ZinRtOperationNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(&this[9].__r_.__value_.__l.__size_, *a4, a4[1], (a4[1] - *a4) >> 4);
  return this;
}

void sub_1A69C1668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  ResourceInformation::~ResourceInformation(v3);
  _Unwind_Resume(a1);
}

uint64_t std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>::~tuple(uint64_t a1)
{
  v3 = (a1 + 224);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 200);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::destroy(a1 + 176, *(a1 + 184));
  if (*(a1 + 168) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::shared_ptr<ZinRtOperationNode>>::__assign_with_size[abi:ne200100]<std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<ZinIrTensor>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData>*>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData>*>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<ZinRtOperationNode>>,std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*,std::shared_ptr<ZinRtOperationNode>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void GetFetchBarTableOperationForAne(void *a1@<X8>, uint64_t *a2@<X0>, uint64_t a3@<X1>)
{
  GetFetchBarTableAllocNodeForAne(a2, a3, &v7);
  FirstOperation = ZinRtOperationNode::GetFirstOperation(v7);
  v5 = FirstOperation[1];
  *a1 = *FirstOperation;
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v8;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1A69C1908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GetFetchBarTableAllocNodeForAne@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_4:
    ZinAssertImpl("Missing the fetch bar table for ANE %ld", a2);
  }

  while (1)
  {
    result = ZinIrAsyncFunction::GetExit(*v4);
    if (result == a2)
    {
      break;
    }

    v4 += 16;
    if (v4 == v5)
    {
      goto LABEL_4;
    }
  }

  v8 = *(v4 + 8);
  *a3 = *v4;
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void GenerateLoadOrStoreImmediates(BOOL,std::set<ZinNamedType<unsigned long,AneIndexTag>> const&,std::string const&,ZinRtGraphGenerationParams const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,std::shared_ptr<ZinRtBlockNode> &)::$_0::operator()(_BYTE **a1@<X0>, char *a2@<X1>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *(*a1 + 4);
  if (v5 + 56 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v5 + 48, a2))
  {
    ZinAssertImpl("Could not find a bar for event's immediate operation");
  }

  if (*a1[1] != a1[1] + 8)
  {
    std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,ZinNamedType<unsigned long,AneIndexTag> &,0>();
  }
}

void GenerateLoadOrStoreImmediates(BOOL,std::set<ZinNamedType<unsigned long,AneIndexTag>> const&,std::string const&,ZinRtGraphGenerationParams const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,std::shared_ptr<ZinRtBlockNode> &)::$_1::operator()(void **a1, ZinIrAsyncFunction ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      if ((ZinRtNodeGraph::AddRtNode<std::shared_ptr<ZinRtOperationNode>>(**a1 + 80, v2) & 1) == 0)
      {
        ZinAssertImpl("Failed to add node to init block");
      }

      FirstOperation = ZinRtOperationNode::GetFirstOperation(*v2);
      v7 = *FirstOperation;
      v6 = *(FirstOperation + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (ZinRtOperation::GetMode(v7))
      {
        if (!v6)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(v7 + 18) == 8)
        {
          v8 = a1[1];
          Exit = ZinIrAsyncFunction::GetExit(*v2);
          GetFetchBarTableAllocNodeForAne(v8, Exit, &v10);
          if ((ZinRtNodeGraph::AddRtEdge<std::shared_ptr<ZinRtBaseNode>,std::shared_ptr<ZinRtBaseNode>>(**a1 + 80, &v10, v2, 2) & 1) == 0)
          {
            ZinAssertImpl("Failed to add edge to Fetch Bar Table node");
          }

          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }
        }

        if (!v6)
        {
          goto LABEL_17;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
LABEL_17:
      v2 += 2;
    }

    while (v2 != v3);
  }
}

void sub_1A69C1F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<ZinRtBlockNode>::__shared_ptr_emplace[abi:ne200100]<BOOL,ZinNamedType<unsigned long,AneIndexTag> const&,std::allocator<ZinRtBlockNode>,0>(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F2AA0;
  ZinRtBlockNode::ZinRtBlockNode((a1 + 3), *a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<ZinRtBlockNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F2AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(unsigned int,unsigned long long,ZinNamedType<unsigned long,SegmentIndexTag> const&,std::string const&,ThreadArgumentInfo const&,std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats> const&,std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>> const&,ZinIrParameters const&,ZinIrCallingConventionAttribute const&,BOOL,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),unsigned int,unsigned long,ZinNamedType<unsigned long,SegmentIndexTag>,std::string,ThreadArgumentInfo,std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,ZinIrParameters,ZinIrCallingConventionAttribute,BOOL,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>(void **a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,0>();
}

void sub_1A69C2210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = a14;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(unsigned int,unsigned long long,ZinNamedType<unsigned long,SegmentIndexTag> const&,std::string const&,ThreadArgumentInfo const&,std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats> const&,std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>> const&,ZinIrParameters const&,ZinIrCallingConventionAttribute const&,BOOL,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,std::vector<std::shared_ptr<ZinRtOperationNode>> const&,ZinNamedType<unsigned long,AneIndexTag> const&),unsigned int,unsigned long,ZinNamedType<unsigned long,SegmentIndexTag>,std::string,ThreadArgumentInfo,std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,ZinIrParameters,ZinIrCallingConventionAttribute,BOOL,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *, int, uint64_t, uint64_t, uint64_t *)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v26 = a9;
  v33 = a5;
  a9[1] = 0;
  a9[2] = 0;
  *a9 = 0;
  v15 = a2 + 1;
  v14 = *a2;
  if (*a2 != a2 + 1)
  {
    v20 = a13;
    v19 = a14;
    v21 = BYTE4(a12);
    do
    {
      v32 = v14[4];
      LOBYTE(v25) = v21;
      (a1)(&v30, a3, a4, &v33, a6, a7, a8, a10, a11, &a12, v25, v20, v19, &v32, v26);
      if (v30)
      {
        std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,ZinNamedType<unsigned long,AneIndexTag> &,0>();
      }

      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      v22 = v14[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v14[2];
          v24 = *v23 == v14;
          v14 = v23;
        }

        while (!v24);
      }

      v14 = v23;
    }

    while (v23 != v15);
  }
}

void sub_1A69C23A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  a21 = a14;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void std::vector<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>>>::destroy[abi:ne200100]<std::tuple<ResourceInformation,std::vector<std::shared_ptr<ZinRtOperationNode>>,std::vector<std::shared_ptr<ZinRtOperationNode>>>,void,0>(a1, i))
  {
    i -= 248;
  }

  *(a1 + 8) = a2;
}

void *std::__shared_ptr_emplace<ZinRtOperationRuntimeBindBuffer>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<ZinRtOperationRuntimeBindBuffer>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F2AF0;
  ZinRtOperationRuntimeBindBuffer::ZinRtOperationRuntimeBindBuffer((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ZinRtOperationRuntimeBindBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F2AF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void CreateBondedRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  LOBYTE(v6) = 1;
  std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,0>();
}

void sub_1A69C26F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CreateNonBondedRuntimeOperationNodesWithSymbol<std::shared_ptr<ZinRtOperation> (*)(std::string const&,ZinRtCodegenParams const&,ZinNamedType<unsigned long,AneIndexTag> const&,std::vector<ZinIrSymbolData> &),std::string,ZinRtCodegenParams>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v6 = a2 + 1;
  v7 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v17 = v7[4];
      a1(&v15, a4, a5, &v17, a3);
      if (v15)
      {
        std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,ZinNamedType<unsigned long,AneIndexTag> &,0>();
      }

      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != v6);
  }
}

void sub_1A69C2848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<ZinRtOperationRuntimeAlloc>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<ZinRtOperationRuntimeAlloc>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19E3DE0;
  ZinRtOperationRuntimeAlloc::ZinRtOperationRuntimeAlloc((a1 + 3), a2, 0);
  return a1;
}

void *std::__shared_ptr_emplace<ZinRtOperationRuntimePatchMutableKernel>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<ZinRtOperationRuntimePatchMutableKernel>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F2B40;
  ZinRtOperationRuntimePatchMutableKernel::ZinRtOperationRuntimePatchMutableKernel((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ZinRtOperationRuntimePatchMutableKernel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F2B40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void CreateBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,std::string const&,unsigned long long,unsigned int,unsigned int,BOOL,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,std::string,unsigned long long,unsigned int,unsigned int,BOOL>(void **a9@<X8>, unsigned __int8 a10)
{
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,0>();
}

void sub_1A69C2C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = a9;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void CreateNonBondedRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,std::string const&,unsigned long long,unsigned int,unsigned int,BOOL,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,std::string,unsigned long long,unsigned int,unsigned int,BOOL>(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t *)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10)
{
  *a9 = 0;
  a9[1] = 0;
  v22 = a9;
  a9[2] = 0;
  v11 = a2 + 1;
  v10 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v25 = v10[4];
      (a1)(&v23, a3, a4, a5, a6, a7, a8, a10, &v25, v22);
      if (v23)
      {
        std::allocate_shared[abi:ne200100]<ZinRtOperationNode,std::allocator<ZinRtOperationNode>,BOOL,ZinNamedType<unsigned long,AneIndexTag> &,0>();
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      v19 = v10[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v10[2];
          v21 = *v20 == v10;
          v10 = v20;
        }

        while (!v21);
      }

      v10 = v20;
    }

    while (v20 != v11);
  }
}

void sub_1A69C2DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  a13 = a9;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<ZinRtOperationRuntimeBindParam>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::allocator<ZinRtOperationRuntimeBindParam>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F2B90;
  ZinRtOperationRuntimeBindParam::ZinRtOperationRuntimeBindParam((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<ZinRtOperationRuntimeBindParam>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F2B90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void *std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,unsigned long>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,unsigned long>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,unsigned long>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,unsigned long>>(uint64_t a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
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

uint64_t **std::map<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>::map[abi:ne200100](uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>>>::__emplace_hint_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,std::tuple<unsigned long,unsigned char>> const&>(a1, v4, a2, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>>>::__emplace_hint_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,std::tuple<unsigned long,unsigned char>> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *std::__tree<unsigned long>::__find_equal<unsigned long>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::tuple<unsigned long,unsigned char>>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,std::tuple<unsigned long,unsigned char>>>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
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

uint64_t std::set<ZinNamedType<unsigned long,AneIndexTag>>::set[abi:ne200100](uint64_t a1, unint64_t *a2, uint64_t a3)
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
      std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(a1, v4, a2, a2);
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::deque<std::variant<RtExpressionType,std::string,long long>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<RtExpressionType,std::string,long long>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*(a1[1] + ((v2 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v2 & 0x7F));
  --a1[5];

  return std::deque<std::variant<RtExpressionType,std::string,long long>>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<std::variant<RtExpressionType,std::string,long long>>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 16 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x80)
  {
    a2 = 1;
  }

  if (v5 < 0x100)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,std::__tree_node<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,std::__tree_node<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>>>::__emplace_hint_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,ZinIrCodegenStats> const&>(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,ZinIrCodegenStats>>>::__emplace_hint_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,ZinIrCodegenStats> const&>(uint64_t **a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *std::__tree<unsigned long>::__find_equal<unsigned long>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t **std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>::map[abi:ne200100](uint64_t **a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,std::__tree_node<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t **std::map<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,std::__tree_node<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,void *> *,long>>>(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>>>>::__emplace_hint_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::pair<ZinNamedType<unsigned long,AneIndexTag> const,std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>> const&>(v5, v5 + 1, v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__shared_ptr_emplace<ZinRtConditionNode>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<ZinRtBlockNode>,std::shared_ptr<ZinRtBlockNode>,BOOL,ZinNamedType<unsigned long,AneIndexTag>,std::allocator<ZinRtConditionNode>,0>(void *a1, __int128 *a2, __int128 *a3, char *a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F2BE0;
  std::construct_at[abi:ne200100]<ZinRtConditionNode,std::shared_ptr<ZinRtBlockNode>,std::shared_ptr<ZinRtBlockNode>,BOOL,ZinNamedType<unsigned long,AneIndexTag>,ZinRtConditionNode*>((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<ZinRtConditionNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F2BE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::construct_at[abi:ne200100]<ZinRtConditionNode,std::shared_ptr<ZinRtBlockNode>,std::shared_ptr<ZinRtBlockNode>,BOOL,ZinNamedType<unsigned long,AneIndexTag>,ZinRtConditionNode*>(uint64_t a1, __int128 *a2, __int128 *a3, char *a4, void *a5)
{
  v6 = *a2;
  *a2 = 0uLL;
  v8 = *a3;
  v9 = v6;
  *a3 = 0uLL;
  ZinRtConditionNode::ZinRtConditionNode(a1, &v9, &v8, *a4, a5);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }

  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  return a1;
}

void sub_1A69C3944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::__map_value_compare<ZinNamedType<unsigned long,AneIndexTag>,std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>,std::less<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__value_type<ZinNamedType<unsigned long,AneIndexTag>,RegionInfo>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,AneIndexTag>,std::piecewise_construct_t const&,std::tuple<ZinNamedType<unsigned long,AneIndexTag> const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *std::__shared_ptr_emplace<ZinRtBlockNode>::__shared_ptr_emplace[abi:ne200100]<BOOL,std::allocator<ZinRtBlockNode>,0>(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F2AA0;
  v3 = *a2;
  v5 = 0x3FFFLL;
  ZinRtBlockNode::ZinRtBlockNode((a1 + 3), v3, &v5);
  return a1;
}

void CreateRuntimeOperationNodes<std::shared_ptr<ZinRtOperation> (*)(std::string const&,std::string const&,std::string const&,unsigned long long,unsigned int,unsigned int,BOOL,ZinNamedType<unsigned long,AneIndexTag> const&),std::string,std::string,std::string,unsigned long long,unsigned int,unsigned int,BOOL>()
{
  OUTLINED_FUNCTION_0_20();
  if (v2 < 0)
  {
    operator delete(*v1);
  }

  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

__CFDictionary *ZinCreatePixelShuffleUnit(const ZinIrPixelShuffleUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 31;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

__int128 *ZinIrHalH14c::GetParams(ZinIrHalH14c *this)
{
  v150 = *MEMORY[0x1E69E9840];
  {
    ZinIrHalH14c::GetParams(void)const::ZinIrHalH14cParameters = xmmword_1A75B5A90;
    unk_1EB29D020 = xmmword_1A7595A00;
    xmmword_1EB29D030 = xmmword_1A75966D0;
    unk_1EB29D040 = xmmword_1A75966E0;
    xmmword_1EB29D050 = xmmword_1A7595B90;
    unk_1EB29D060 = xmmword_1A75966F0;
    xmmword_1EB29D070 = xmmword_1A75966E0;
    unk_1EB29D080 = xmmword_1A7595A50;
    xmmword_1EB29D090 = xmmword_1A7596700;
    unk_1EB29D0A0 = xmmword_1A7596710;
    xmmword_1EB29D0B0 = xmmword_1A7595A80;
    unk_1EB29D0C0 = vdupq_n_s64(4uLL);
    qword_1EB29D0D0 = 4;
    unk_1EB29D0D8 = xmmword_1A75D4A30;
    unk_1EB29D0E8 = unk_1A75D4A40;
    unk_1EB29D108 = unk_1A75D4A40;
    unk_1EB29D0F8 = xmmword_1A75D4A30;
    qword_1EB29D128 = 4;
    xmmword_1EB29D118 = xmmword_1A75D4A50;
    xmmword_1EB29D130 = xmmword_1A7595A90;
    unk_1EB29D140 = xmmword_1A7595AA0;
    xmmword_1EB29D150 = xmmword_1A7595AA0;
    unk_1EB29D160 = xmmword_1A7595AA0;
    xmmword_1EB29D170 = xmmword_1A7595AB0;
    unk_1EB29D180 = xmmword_1A7595AC0;
    xmmword_1EB29D190 = vdupq_n_s64(0x10000uLL);
    unk_1EB29D1A0 = xmmword_1EB29D190;
    xmmword_1EB29D1B0 = xmmword_1EB29D190;
    unk_1EB29D1C0 = xmmword_1A7595AD0;
    xmmword_1EB29D1D0 = xmmword_1A7595AE0;
    unk_1EB29D1E0 = xmmword_1A7595AF0;
    xmmword_1EB29D1F0 = xmmword_1A7596720;
    unk_1EB29D200 = xmmword_1A7595B10;
    xmmword_1EB29D210 = xmmword_1A7595B20;
    unk_1EB29D220 = xmmword_1A7596740;
    xmmword_1EB29D230 = xmmword_1A7595B40;
    unk_1EB29D240 = xmmword_1A75A29B0;
    xmmword_1EB29D250 = vdupq_n_s64(2uLL);
    unk_1EB29D260 = xmmword_1A7595B60;
    xmmword_1EB29D270 = xmmword_1A7595B70;
    unk_1EB29D280 = xmmword_1A7595B80;
    xmmword_1EB29D290 = xmmword_1A7596760;
    unk_1EB29D2A0 = xmmword_1A75A3E80;
    word_1EB29D2C0 = 256;
    xmmword_1EB29D2B0 = 0u;
    xmmword_1EB29D2C8 = xmmword_1A7595B90;
    xmmword_1EB29D2D8 = xmmword_1A7595BA0;
    xmmword_1EB29D2E8 = xmmword_1A7595BB0;
    qword_1EB29D2F8 = 0x10000;
    byte_1EB29D300 = 122;
    xmmword_1EB29D308 = xmmword_1A7596780;
    dword_1EB29D318 = 520097776;
    qword_1EB29D31C = 0xFFFFFFEB0000000BLL;
    xmmword_1EB29D328 = xmmword_1A7595BD0;
    xmmword_1EB29D338 = xmmword_1A7595BE0;
    xmmword_1EB29D348 = xmmword_1A7595BF0;
    v112 = vdupq_n_s64(8uLL);
    v113 = xmmword_1A7596790;
    v114 = xmmword_1A75967A0;
    v115 = xmmword_1A75967B0;
    qword_1EB29D368 = 0;
    xmmword_1EB29D358 = 0u;
    std::vector<std::pair<unsigned long,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,unsigned long> const*,std::pair<unsigned long,unsigned long> const*>(&xmmword_1EB29D358, v112.i8, &v116, 4uLL);
    xmmword_1EB29D370 = xmmword_1A75967C0;
    unk_1EB29D380 = xmmword_1A7595C10;
    xmmword_1EB29D390 = vdupq_n_s64(0x20uLL);
    unk_1EB29D3A0 = xmmword_1A7595A50;
    xmmword_1EB29D3B0 = vdupq_n_s64(8uLL);
    unk_1EB29D3C0 = xmmword_1A7595C20;
    xmmword_1EB29D3D0 = xmmword_1A7595C30;
    unk_1EB29D3E0 = vdupq_n_s64(0x100uLL);
    xmmword_1EB29D3F0 = vdupq_n_s64(0x80uLL);
    unk_1EB29D400 = xmmword_1A7595C40;
    xmmword_1EB29D410 = xmmword_1A7595C50;
    unk_1EB29D420 = xmmword_1A7595C60;
    xmmword_1EB29D430 = xmmword_1A7595C70;
    unk_1EB29D440 = xmmword_1A7595C80;
    xmmword_1EB29D450 = vdupq_n_s64(2uLL);
    unk_1EB29D460 = xmmword_1A7595AA0;
    xmmword_1EB29D470 = vdupq_n_s64(0x4000uLL);
    unk_1EB29D480 = xmmword_1A7595C90;
    qword_1EB29D490 = 0x100000101;
    dword_1EB29D498 = 65537;
    dword_1EB29D49C = 16843009;
    dword_1EB29D4A0 = 16842752;
    byte_1EB29D4A4 = 1;
    *(&qword_1EB29D4A5 + 6) = 0;
    qword_1EB29D4A5 = 0;
    byte_1EB29D4B3 = 1;
    dword_1EB29D4B4 = 0;
    word_1EB29D4B8 = 0;
    qword_1EB29D4BA = 0x101010101010101;
    word_1EB29D4C2 = 0;
    byte_1EB29D4C4 = 0;
    xmmword_1EB29D4C8 = xmmword_1A7595B90;
    xmmword_1EB29D4D8 = xmmword_1A7595CB0;
    qword_1EB29D4F0 = 0;
    unk_1EB29D4F8 = 0;
    qword_1EB29D4E8 = 40;
    word_1EB29D500 = 1;
    dword_1EB29D502 = 16843009;
    word_1EB29D506 = 1;
    qword_1EB29D508 = 0;
    word_1EB29D510 = 1;
    byte_1EB29D512 = 1;
    qword_1EB29D518 = 0;
    byte_1EB29D520 = 0;
    dword_1EB29D521 = 16843009;
    word_1EB29D529 = 0;
    dword_1EB29D525 = 0;
    dword_1EB29D52B = 16842753;
    qword_1EB29D52F = 0;
    byte_1EB29D537 = 0;
    dword_1EB29D538 = 16843009;
    byte_1EB29D53C = 1;
    qword_1EB29D53D = 0x10000010000;
    byte_1EB29D545 = 1;
    word_1EB29D546 = 256;
    qword_1EB29D548 = 0x10000000000;
    qword_1EB29D558 = -1;
    unk_1EB29D560 = -1;
    qword_1EB29D550 = 128;
    word_1EB29D568 = 0;
    dword_1EB29D56C = 1;
    dword_1EB29D570 = 0x10000;
    byte_1EB29D574 = 1;
    dword_1EB29D57D = 0;
    qword_1EB29D575 = 0;
    qword_1EB29D581 = 0x1000100000606;
    word_1EB29D589 = 0;
    std::string::__init(&qword_1EB29D590, "Simple", 6uLL);
    qword_1EB29D5A8 = 50331648;
    dword_1EB29D5B0 = 1071225242;
    unk_1EB29D5B4 = 14;
    unk_1EB29D5C0 = xmmword_1A7595CC0;
    unk_1EB29D5D0 = vdupq_n_s64(0x40uLL);
    unk_1EB29D5E0 = xmmword_1A7595C00;
    qword_1EB29D5F0 = 8;
    byte_1EB29D5F8 = 0;
    unk_1EB29D5FC = 0xF3E800000;
    byte_1EB29D604 = 1;
    v148 = xmmword_1A7595CE0;
    qword_1EB29D610 = 0;
    unk_1EB29D618 = 0;
    qword_1EB29D608 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29D608, &v148, &v149, 4uLL);
    v145[0] = xmmword_1A75D4A68;
    v145[1] = unk_1A75D4A78;
    *v146 = xmmword_1A75D4A88;
    *&v146[12] = *(&xmmword_1A75D4A88 + 12);
    qword_1EB29D628 = 0;
    unk_1EB29D630 = 0;
    qword_1EB29D620 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29D620, v145, &v147, 0xFuLL);
    v143 = 25;
    v142[4] = xmmword_1A75D4AE4;
    v142[5] = unk_1A75D4AF4;
    v142[6] = xmmword_1A75D4B04;
    v142[0] = xmmword_1A75D4AA4;
    v142[1] = unk_1A75D4AB4;
    v142[2] = xmmword_1A75D4AC4;
    v142[3] = unk_1A75D4AD4;
    qword_1EB29D638 = 0;
    qword_1EB29D640 = 0;
    qword_1EB29D648 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29D638, v142, v144, 0x1DuLL);
    v140 = 0x2A00000029;
    v139[6] = xmmword_1A75D4B78;
    v139[7] = unk_1A75D4B88;
    v139[8] = xmmword_1A75D4B98;
    v139[9] = unk_1A75D4BA8;
    v139[2] = xmmword_1A75D4B38;
    v139[3] = unk_1A75D4B48;
    v139[4] = xmmword_1A75D4B58;
    v139[5] = unk_1A75D4B68;
    v139[0] = xmmword_1A75D4B18;
    v139[1] = unk_1A75D4B28;
    qword_1EB29D650 = 0;
    qword_1EB29D658 = 0;
    qword_1EB29D660 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29D650, v139, &v141, 0x2AuLL);
    v108 = 2;
    v109 = xmmword_1A7595CF0;
    v110 = 4354;
    v111 = 0;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v44, &v108, v112.i8, 1uLL);
    v112.i32[0] = 641877825;
    v113 = 0uLL;
    v112.i64[1] = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(&v112.i64[1], v44, v45, (v45 - v44) >> 5);
    v104 = 2;
    v105 = xmmword_1A7595CF0;
    v106 = 4354;
    v107 = 1;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v41, &v104, &v108, 1uLL);
    LODWORD(v114) = 759318337;
    v115 = 0uLL;
    *(&v114 + 1) = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(&v114 + 1, v41, v42, (v42 - v41) >> 5);
    v100 = 2;
    v101 = xmmword_1A7595CF0;
    v102 = 4354;
    v103 = 2;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v38, &v100, &v104, 1uLL);
    LODWORD(v116) = 792872769;
    v117 = 0;
    v118 = 0;
    *(&v116 + 1) = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(&v116 + 1, v38, v39, (v39 - v38) >> 5);
    v96 = 2;
    v97 = xmmword_1A7595CF0;
    v98 = 4354;
    v99 = 3;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v35, &v96, &v100, 1uLL);
    v119 = 2084718401;
    memset(v120, 0, sizeof(v120));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v120, v35, v36, (v36 - v35) >> 5);
    v92 = 10;
    v93 = vdupq_n_s64(1uLL);
    v94 = 2049;
    v95 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v32, &v92, &v96, 1uLL);
    v121 = 642527542;
    memset(v122, 0, sizeof(v122));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v122, v32, v33, (v33 - v32) >> 5);
    v88 = 3;
    v89 = vdupq_n_s64(1uLL);
    v90 = 1794;
    v91 = 0;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v29, &v88, &v92, 1uLL);
    v123 = 642527336;
    memset(v124, 0, sizeof(v124));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v124, v29, v30, (v30 - v29) >> 5);
    v84 = 3;
    v85 = vdupq_n_s64(1uLL);
    v86 = 1794;
    v87 = 1;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v26, &v84, &v88, 1uLL);
    v125 = 759967848;
    memset(v126, 0, sizeof(v126));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v126, v26, v27, (v27 - v26) >> 5);
    v80 = 3;
    v81 = vdupq_n_s64(1uLL);
    v82 = 1794;
    v83 = 2;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v23, &v80, &v84, 1uLL);
    v127 = 793522280;
    memset(v128, 0, sizeof(v128));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v128, v23, v24, (v24 - v23) >> 5);
    v76 = 3;
    v77 = vdupq_n_s64(1uLL);
    v78 = 1794;
    v79 = 3;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v20, &v76, &v80, 1uLL);
    v129 = 2085367912;
    memset(v130, 0, sizeof(v130));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v130, v20, v21, (v21 - v20) >> 5);
    v72 = 3;
    v73 = xmmword_1A7595CF0;
    v74 = 4866;
    v75 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v17, &v72, &v76, 1uLL);
    v131 = 642934849;
    memset(v132, 0, sizeof(v132));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v132, v17, v18, (v18 - v17) >> 5);
    v68 = 3;
    v69 = xmmword_1A7595CF0;
    v70 = 4866;
    v71 = 1;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v14, &v68, &v72, 1uLL);
    v133 = 760375361;
    memset(v134, 0, sizeof(v134));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v134, v14, v15, (v15 - v14) >> 5);
    v64 = 3;
    v65 = xmmword_1A7595CF0;
    v66 = 4866;
    v67 = 2;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v11, &v64, &v68, 1uLL);
    v135 = 793929793;
    memset(v136, 0, sizeof(v136));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v136, v11, v12, (v12 - v11) >> 5);
    v60 = 3;
    v61 = xmmword_1A7595CF0;
    v62 = 4866;
    v63 = 3;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo const*,ZinMirInterchangeInfo const*>(&v8, &v60, &v64, 1uLL);
    v137 = 2085775425;
    memset(v138, 0, sizeof(v138));
    std::vector<ZinMirInterchangeInfo>::__init_with_size[abi:ne200100]<ZinMirInterchangeInfo*,ZinMirInterchangeInfo*>(v138, v8, v9, (v9 - v8) >> 5);
    std::map<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>::map[abi:ne200100](qword_1EB29D668, &v112, 13);
    word_1EB29D680 = 0;
    byte_1EB29D682 = 1;
    *algn_1EB29D683 = 0;
    qword_1EB29D688 = 0;
    *(&qword_1EB29D688 + 7) = 0;
    byte_1EB29D697 = 1;
    unk_1EB29D698 = vdupq_n_s64(0x10000uLL);
    unk_1EB29D6A8 = unk_1EB29D698;
    qword_1EB29D6B8 = 0x10000;
    xmmword_1EB29D6C0 = 0u;
    unk_1EB29D6D0 = 0u;
    dword_1EB29D6E0 = 16777473;
    word_1EB29D6E4 = 1;
    unk_1EB29D6E8 = xmmword_1A75D4BC0;
    unk_1EB29D6F8 = unk_1A75D4BD0;
    qword_1EB29D708 = 8;
    qword_1EB29D720 = 0;
    *algn_1EB29D710 = xmmword_1A75B5AA0;
    v57[0] = xmmword_1A75D4BE8;
    v57[1] = unk_1A75D4BF8;
    v57[2] = xmmword_1A75D4C08;
    v58 = 0x41DF4ADD40000000;
    qword_1EB29D728 = 0;
    unk_1EB29D730 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29D720, v57, &v59, 7uLL);
    v54 = xmmword_1A75D4C20;
    v55 = 0x41CE0A6E00000000;
    qword_1EB29D740 = 0;
    unk_1EB29D748 = 0;
    qword_1EB29D738 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29D738, &v54, &v56, 3uLL);
    v51[0] = xmmword_1A75D4C38;
    v51[1] = unk_1A75D4C48;
    v52 = 0x41E7D78400000000;
    qword_1EB29D758 = 0;
    unk_1EB29D760 = 0;
    qword_1EB29D750 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29D750, v51, &v53, 5uLL);
    v50[4] = xmmword_1A75D4CA0;
    v50[5] = unk_1A75D4CB0;
    v50[6] = xmmword_1A75D4CC0;
    v50[0] = xmmword_1A75D4C60;
    v50[1] = unk_1A75D4C70;
    v50[2] = xmmword_1A75D4C80;
    v50[3] = unk_1A75D4C90;
    std::map<double,double>::map[abi:ne200100](qword_1EB29D768, v50, 7);
    xmmword_1EB29D780 = xmmword_1A7595D10;
    v47[0] = xmmword_1A75D4CD0;
    v47[1] = unk_1A75D4CE0;
    v47[2] = xmmword_1A75D4CF0;
    v48 = 27;
    qword_1EB29D798 = 0;
    unk_1EB29D7A0 = 0;
    qword_1EB29D790 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29D790, v47, v49, 0xDuLL);
    xmmword_1EB29D7A8 = vdupq_n_s64(6uLL);
    unk_1EB29D7B8 = xmmword_1A7595AF0;
    qword_1EB29D7C8 = 64;
    unk_1EB29D7D0 = 0x101010101010101;
    unk_1EB29D7D6 = 0x101010101010101;
    word_1EB29D7DE = 0;
    byte_1EB29D7E0 = 0;
    dword_1EB29D7E8 = 16777473;
    unk_1EB29D7F0 = xmmword_1A75D4D08;
    unk_1EB29D800 = unk_1A75D4D18;
    unk_1EB29D810 = xmmword_1A75D4D28;
    unk_1EB29D820 = unk_1A75D4D38;
    unk_1EB29D860 = unk_1A75D4D78;
    unk_1EB29D850 = xmmword_1A75D4D68;
    unk_1EB29D840 = unk_1A75D4D58;
    unk_1EB29D830 = xmmword_1A75D4D48;
    word_1EB29D870 = 1;
    byte_1EB29D872 = 0;
    byte_1EB29D874 = 0;
    byte_1EB29D878 = 0;
    dword_1EB29D87C = 65792;
    word_1EB29D880 = 0;
    dword_1EB29D888 = 1056899072;
    word_1EB29D88C = 1;
    *&algn_1EB29D88E[2] = xmmword_1A7597AB0;
    byte_1EB29D8A0 = 1;
    qword_1EB29D8A8 = 0xFFFFLL;
    byte_1EB29D8B0 = 0;
    qword_1EB29D8B8 = 0;
    word_1EB29D8C0 = 257;
    byte_1EB29D8C2 = 1;
    qword_1EB29D8C8 = 0x80000000;
    byte_1EB29D8D0 = 0;
    dword_1EB29D8D4 = 0;
    v4 = 1;
    v6 = 0;
    v7 = 0;
    __p = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, &v4, &__p, 1);
    qword_1EB29D8D8 = 0;
    unk_1EB29D8E0 = 0;
    qword_1EB29D8E8 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&qword_1EB29D8D8, __p, v6, (v6 - __p) >> 1);
    word_1EB29D8F0 = 0;
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }

    v2 = 416;
    do
    {
      v3 = *(&v109 + v2);
      if (v3)
      {
        *(&v109 + v2 + 8) = v3;
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

    __cxa_atexit(ZinIrHalParameters::~ZinIrHalParameters, &ZinIrHalH14c::GetParams(void)const::ZinIrHalH14cParameters, &dword_1A617D000);
  }

  return &ZinIrHalH14c::GetParams(void)const::ZinIrHalH14cParameters;
}

void sub_1A69C4D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (qword_1EB29D790)
  {
    qword_1EB29D798 = qword_1EB29D790;
    operator delete(qword_1EB29D790);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v32, *(v32 + 8));
  if (qword_1EB29D750)
  {
    qword_1EB29D758 = qword_1EB29D750;
    operator delete(qword_1EB29D750);
  }

  if (qword_1EB29D738)
  {
    qword_1EB29D740 = qword_1EB29D738;
    operator delete(qword_1EB29D738);
  }

  if (qword_1EB29D720)
  {
    qword_1EB29D728 = qword_1EB29D720;
    operator delete(qword_1EB29D720);
  }

  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v31, *(v31 + 8));
  v35 = &STACK[0x610];
  v36 = -416;
  while (1)
  {
    v37 = *(v35 - 1);
    if (v37)
    {
      *v35 = v37;
      operator delete(v37);
    }

    v35 -= 4;
    v36 += 32;
    if (!v36)
    {
      if (a22)
      {
        operator delete(a22);
      }

      if (a25)
      {
        operator delete(a25);
      }

      if (a28)
      {
        operator delete(a28);
      }

      if (a31)
      {
        operator delete(a31);
      }

      v38 = *v33;
      if (*v33)
      {
        *(v33 + 8) = v38;
        operator delete(v38);
      }

      v39 = *(v33 + 24);
      if (v39)
      {
        *(v33 + 32) = v39;
        operator delete(v39);
      }

      v40 = *(v33 + 48);
      if (v40)
      {
        *(v33 + 56) = v40;
        operator delete(v40);
      }

      v41 = *(v33 + 72);
      if (v41)
      {
        *(v33 + 80) = v41;
        operator delete(v41);
      }

      v42 = *(v33 + 96);
      if (v42)
      {
        *(v33 + 104) = v42;
        operator delete(v42);
      }

      v43 = *(v33 + 120);
      if (v43)
      {
        *(v33 + 128) = v43;
        operator delete(v43);
      }

      v44 = *(v33 + 144);
      if (v44)
      {
        *(v33 + 152) = v44;
        operator delete(v44);
      }

      v45 = *(v33 + 168);
      if (v45)
      {
        *(v33 + 176) = v45;
        operator delete(v45);
      }

      v46 = *(v33 + 192);
      if (v46)
      {
        *(v33 + 200) = v46;
        operator delete(v46);
      }

      if (qword_1EB29D650)
      {
        qword_1EB29D658 = qword_1EB29D650;
        operator delete(qword_1EB29D650);
      }

      if (qword_1EB29D638)
      {
        qword_1EB29D640 = qword_1EB29D638;
        operator delete(qword_1EB29D638);
      }

      if (qword_1EB29D620)
      {
        qword_1EB29D628 = qword_1EB29D620;
        operator delete(qword_1EB29D620);
      }

      if (qword_1EB29D608)
      {
        qword_1EB29D610 = qword_1EB29D608;
        operator delete(qword_1EB29D608);
      }

      if (byte_1EB29D5A7 < 0)
      {
        operator delete(qword_1EB29D590);
      }

      if (xmmword_1EB29D358)
      {
        *(&xmmword_1EB29D358 + 1) = xmmword_1EB29D358;
        operator delete(xmmword_1EB29D358);
      }

      _Unwind_Resume(a1);
    }
  }
}

__n128 ZinNEPerf::CalculatePerf(ZinNEPerf *this, ZinPerfDescriptor *a2)
{
  v4 = *(this + 42);
  if (v4[41] == 1)
  {
    *(this + 320) = ZinNEPerf::IsQualifiedForSimulcast(this);
    *(this + 18) = ZinNEPerf::GetL2BcastCycle(this);
    *(this + 20) = ZinNEPerf::GetL2WbackCycle(this);
    v4 = *(this + 42);
  }

  if (v4[40] == 1)
  {
    *(this + 21) = ZinCcdmaLayerMirInfo::GetUpdateEventSymbol((v4 + 680));
    ZinNEPerf::GetMACCyclesPerWU(this, this + 22);
    PostCycles = ZinNEPerf::GetPostCycles(this);
    *(this + 23) = PostCycles;
    v6 = *(this + 22);
    v7 = v6 * *(this + 21);
    if (v7 <= PostCycles)
    {
      v8 = PostCycles;
    }

    else
    {
      v8 = v6 * *(this + 21);
    }

    *(this + 11) = v8;
    *(this + 12) = v7 + PostCycles;
    v9 = *(this + 42);
    if (*(v9 + 43) == 1 && *(v9 + 45) == 1)
    {
      ZinNEPerf::GetNonZeroCoefficientBlockCount(&v68, this);
      v10 = *(this + 26);
      if (v10)
      {
        *(this + 27) = v10;
        operator delete(v10);
      }

      *(this + 13) = v68;
      *(this + 28) = v69;
    }

    if ((*(*this + 24))(this))
    {
      v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v11)
      {
        ZinNEPerf::CalculatePerf(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      return result;
    }

    if (ZinEnginePerf::ComputeDependencyStalls(this))
    {
      v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v20)
      {
        ZinNEPerf::CalculatePerf(v20, v21, v22, v23, v24, v25, v26, v27);
      }

      return result;
    }

    v4 = *(this + 42);
  }

  if (v4[42] == 1)
  {
    *(this + 14) = ZinEnginePerf::GetRdmaReadAmount(this);
    *(this + 15) = v28;
    *(this + 16) = ZinEnginePerf::GetWdmaWriteAmount(this);
    *(this + 17) = (*(*this + 40))(this);
    *(this + 41) = ZinEnginePerf::GetDRAMTraffic(this);
    v4 = *(this + 42);
  }

  if (v4[48] == 1 && ZinDMAPerf::GetStallsByTextureOperation(this + 43, this + 25))
  {
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v29)
    {
      ZinNEPerf::CalculatePerf(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    return result;
  }

  (*(*this + 72))(this);
  (*(*this + 80))(this);
  if (ZinEnginePerf::ComputeRunTime(this))
  {
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v38)
    {
      ZinNEPerf::CalculatePerf(v38, v39, v40, v41, v42, v43, v44, v45);
    }

    return result;
  }

  v46 = *(this + 42);
  if (v46[51] == 1)
  {
    v37.n128_f64[0] = ZinEnginePerf::ComputePowerMetric(this);
    v46 = *(this + 42);
  }

  if (v46[53] == 1)
  {
    if ((*(*this + 88))(this, v37))
    {
      v47 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v47)
      {
        ZinNEPerf::CalculatePerf(v47, v48, v49, v50, v51, v52, v53, v54);
      }

      return result;
    }

    v46 = *(this + 42);
  }

  if (v46[54] == 1)
  {
    *(this + 39) = ZinEnginePerf::ComputeApproximateTileSrcDMAFetchCount(this);
  }

  *a2 = *(this + 8);
  v55 = *(this + 24);
  v56 = *(this + 40);
  v57 = *(this + 72);
  *(a2 + 3) = *(this + 56);
  *(a2 + 4) = v57;
  *(a2 + 1) = v55;
  *(a2 + 2) = v56;
  v58 = *(this + 88);
  v59 = *(this + 104);
  v60 = *(this + 136);
  *(a2 + 7) = *(this + 120);
  *(a2 + 8) = v60;
  *(a2 + 5) = v58;
  *(a2 + 6) = v59;
  v61 = *(this + 152);
  v62 = *(this + 168);
  v63 = *(this + 184);
  *(a2 + 24) = *(this + 25);
  *(a2 + 10) = v62;
  *(a2 + 11) = v63;
  *(a2 + 9) = v61;
  if ((this + 8) != a2)
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(a2 + 25, *(this + 26), *(this + 27), (*(this + 27) - *(this + 26)) >> 3);
  }

  v64 = *(this + 232);
  v65 = *(this + 264);
  *(a2 + 15) = *(this + 248);
  *(a2 + 16) = v65;
  *(a2 + 14) = v64;
  result = *(this + 280);
  v66 = *(this + 296);
  v67 = *(this + 312);
  *(a2 + 40) = *(this + 41);
  *(a2 + 18) = v66;
  *(a2 + 19) = v67;
  *(a2 + 17) = result;
  return result;
}

BOOL ZinNEPerf::IsQualifiedForSimulcast(ZinNEPerf *this)
{
  v1 = *(this + 42);
  if (*(v1 + 840) != 1 || *(v1 + 744) != 0)
  {
    return 0;
  }

  v3 = **(v1 + 256);
  v4 = *(v1 + 24);
  v5 = *(v4 + 520);
  if (v5)
  {
    v6 = *(ZinMirL2Config::GetTileSrc(v5 + 112, 0) + 40);
  }

  else
  {
    v6 = 0;
  }

  v7 = IsFp16(v3);
  v8 = 15;
  if (v7)
  {
    v8 = 7;
  }

  if ((v8 & v6) != 0)
  {
    return 0;
  }

  v9 = *(v1 + 184) == 1 && *(v1 + 192) == 1;
  v10 = v9 && *(v1 + 200) == 1;
  v11 = v10 && *(v1 + 424) == 1;
  v12 = v11 && *(v1 + 416) == 1;
  if (!v12 || *(v1 + 432) != 1)
  {
    return 0;
  }

  if (*(*(v4 + 88) + 8) != 98)
  {
    return 1;
  }

  return *(*(RawOrShared<ZinElementWiseLayer>::unwrap_const_ptr(v4 + 784) + 88) + 12) != 2 || *(v1 + 808) != 0;
}

uint64_t ZinNEPerf::GetL2BcastCycle(ZinNEPerf *this)
{
  v2 = *(this + 42);
  v3 = (*(**(v2 + 24) + 440))(*(v2 + 24));
  v4 = 336;
  if (v3)
  {
    v4 = 352;
  }

  v5 = *(v2 + v4);
  if ((*(v2 + 760) & 1) == 0)
  {
    v5 = (v5 + *(v2 + 160) - 1) / *(v2 + 160);
  }

  TotalNumberOfActiveNEs = ZinNEPerfInfo::GetTotalNumberOfActiveNEs((v2 + 680));
  v7 = *(v2 + 776);
  NumClusters = ZinNEPerfInfo::GetNumClusters((v2 + 680));
  ZinChannelAssignment::ZinChannelAssignment(v32, TotalNumberOfActiveNEs, v7, v5, NumClusters);
  L2BcastCyclePerOcg = ZinNEPerf::GetL2BcastCyclePerOcg(this);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v10 = ZinNEPerfInfo::GetTotalNumberOfActiveNEs((v2 + 680));
  std::vector<long>::resize(&v29, v10);
  for (i = 0; ZinNEPerfInfo::GetTotalNumberOfActiveNEs((v2 + 680)) > i; ++i)
  {
    if (!(i % ZinNEPerfInfo::GetNumClusters((v2 + 680))))
    {
      NumOfGroupsProducedByNE = ZinChannelAssignment::GetNumOfGroupsProducedByNE(v32, i);
      v13 = v29;
      if (i >= (v30 - v29) >> 3)
      {
        std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
      }

      v15 = *(v2 + 160);
      v14 = *(v2 + 168);
      *&v13[8 * i] = NumOfGroupsProducedByNE * L2BcastCyclePerOcg * v14 * v15 * ZinNEPerf::GetEffectiveInputDepth(this) * *(v2 + 200) * *(v2 + 192) * *(v2 + 184);
    }
  }

  if (*(v2 + 760))
  {
    if (v29 == v30)
    {
      v19 = 0;
      if (!v29)
      {
        return v19;
      }
    }

    else
    {
      v16 = 0;
      v17 = v29;
      do
      {
        v18 = *v17;
        v17 += 8;
        v16 += v18;
      }

      while (v17 != v30);
      v19 = v16;
      if (!v29)
      {
        return v19;
      }
    }

LABEL_28:
    v30 = v29;
    operator delete(v29);
    return v19;
  }

  v20 = v29 + 8;
  v21 = v29 == v30 || v20 == v30;
  v22 = v29;
  if (!v21)
  {
    v23 = *v29;
    v22 = v29;
    v24 = v29 + 8;
    do
    {
      v26 = *v24;
      v24 += 8;
      v25 = v26;
      v27 = v23 >= v26;
      if (v23 <= v26)
      {
        v23 = v25;
      }

      if (!v27)
      {
        v22 = v20;
      }

      v20 = v24;
    }

    while (v24 != v30);
  }

  v19 = *v22;
  if (v29)
  {
    goto LABEL_28;
  }

  return v19;
}

void sub_1A69C5774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ZinNEPerf::GetL2WbackCycle(ZinNEPerf *this)
{
  v35 = 0;
  v2 = *(this + 42);
  v3 = *(v2 + 360);
  v4 = *(v2 + 328);
  if (ZinTensorFormatGetSizeInBytes(*(v2 + 368), &v35))
  {
    ZinAssertImpl("Error in getting tensor format size in bytes");
  }

  v5 = *(this + 42);
  v6 = *(*(v5 + 32) + 472);
  TotalNumberOfActiveNEs = ZinNEPerfInfo::GetTotalNumberOfActiveNEs((v5 + 680));
  v8 = (*(**(*(this + 42) + 24) + 440))();
  v9 = 336;
  if (v8)
  {
    v9 = 352;
  }

  v10 = *(*(this + 42) + v9);
  v11 = ZinNEPerfInfo::GetTotalNumberOfActiveNEs((v5 + 680));
  v12 = *(v5 + 776);
  NumClusters = ZinNEPerfInfo::GetNumClusters((v5 + 680));
  ZinChannelAssignment::ZinChannelAssignment(v34, v11, v12, v10, NumClusters);
  NumOfChannels = ZinChannelAssignment::GetNumOfChannels(v34, 0);
  v15 = *(this + 42);
  v16 = *(v15 + 680);
  v17 = (v15 + 688);
  if (v16 == (v15 + 688))
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = *(v5 + 832);
    do
    {
      v20 = v16[4];
      v21 = (v20 >> 24) & 0xFFFFFF;
      v22 = BYTE2(v20);
      v23 = v21 / (BYTE2(v20) << v19);
      v24 = HIWORD(v20);
      if (v20 < HIWORD(v20))
      {
        LODWORD(v24) = v16[4];
      }

      v25 = BYTE2(v20);
      v26 = BYTE2(v20) << v19;
      if (v25 >= v21 - ((v25 * v23) << v19))
      {
        v25 = v21 - ((v25 * v23) << v19);
      }

      v27 = v24 * v25;
      if (v21 % v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = v16[1];
      v30 = v16;
      if (v29)
      {
        do
        {
          v31 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v31 = v30[2];
          v32 = *v31 == v30;
          v30 = v31;
        }

        while (!v32);
      }

      v18 += v16[5] / ((v21 + v26 - 1) / v26) * (v28 + v22 * v24 * v23) * v35;
      v16 = v31;
    }

    while (v31 != v17);
  }

  return (v6 / TotalNumberOfActiveNEs + v4 * v3 * NumOfChannels * v18 - 1) / (v6 / TotalNumberOfActiveNEs);
}

uint64_t ZinNEPerf::GetMACCyclesPerWU(ZinNEPerf *this, unint64_t *a2)
{
  if (*(*(this + 42) + 176) == 8)
  {
    v3 = 0;
  }

  else
  {
    ZinNEPerf::GetKernelSparsity(this);
    v3 = ((1.0 - v5) * (*(*this + 104))(this));
  }

  *a2 = v3;
  return 0;
}

uint64_t ZinNEPerf::GetPostCycles(ZinNEPerf *this)
{
  v1 = *(this + 42);
  if (!*(v1 + 50))
  {
    return 0;
  }

  v37 = (v1 + 680);
  if (*(v1 + 760))
  {
    v3 = 1;
  }

  else
  {
    v5 = (*(**(v1 + 24) + 440))(*(v1 + 24));
    v6 = 336;
    if (v5)
    {
      v6 = 352;
    }

    v3 = *(v1 + v6) / *(v1 + 160);
  }

  TotalNumberOfActiveNEs = ZinNEPerfInfo::GetTotalNumberOfActiveNEs(v37);
  v8 = *(v1 + 776);
  NumClusters = ZinNEPerfInfo::GetNumClusters(v37);
  ZinChannelAssignment::ZinChannelAssignment(v39, TotalNumberOfActiveNEs, v8, v3, NumClusters);
  NumOfGroupsProducedByNE = ZinChannelAssignment::GetNumOfGroupsProducedByNE(v39, 0);
  if (NumOfGroupsProducedByNE)
  {
    v10 = 0;
    v11 = 0;
    v12 = (v1 + 688);
    do
    {
      v38 = v10;
      ZinChannelAssignment::GetOutputChannelGroup(v39, 0, v10);
      v14 = v13;
      v15 = *v37;
      if (*v37 != v12)
      {
        do
        {
          v16 = *(v1 + 832);
          v17 = *(v1 + 216) * v14 * *(v1 + 208) * *(v1 + 224);
          v18 = v15[4];
          v19 = BYTE2(v18);
          v20 = ((v18 >> 24) & 0xFFFFFF) / (BYTE2(v18) << v16);
          if (v18 >= HIWORD(v18))
          {
            v21 = HIWORD(v18);
          }

          else
          {
            v21 = v15[4];
          }

          v22 = ZinNEPerf::EstimatePostProcessCyclesPerWorkUnit(this, v21 * v17 * v19);
          v23 = v15[4];
          v24 = (v23 >> 24) & 0xFFFFFF;
          v25 = BYTE2(v23) << v16;
          if (v24 % v25)
          {
            v26 = v24 - ((BYTE2(v23) * v20) << v16);
            if (BYTE2(v23) < v26)
            {
              v26 = BYTE2(v23);
            }

            if (v15[4] >= HIWORD(v15[4]))
            {
              v27 = HIWORD(v23);
            }

            else
            {
              v27 = v15[4];
            }

            v28 = ZinNEPerf::EstimatePostProcessCyclesPerWorkUnit(this, v27 * v17 * v26);
            v29 = v15[4];
            v30 = v29 >> 24;
            v25 = BYTE2(v29) << v16;
          }

          else
          {
            v28 = 0;
            v30 = v23 >> 24;
          }

          v31 = v15[5];
          v32 = v15[1];
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
              v33 = v15[2];
              v34 = *v33 == v15;
              v15 = v33;
            }

            while (!v34);
          }

          v11 += v31 / (((v30 & 0xFFFFFF) + v25 - 1) / v25) * (v28 + v22 * v20);
          v15 = v33;
        }

        while (v33 != v12);
      }

      v10 = v38 + 1;
    }

    while (v38 + 1 != NumOfGroupsProducedByNE);
    v35 = v11;
  }

  else
  {
    v35 = 0;
  }

  return *(v1 + 360) * v35 * *(v1 + 160) * *(v1 + 168);
}

void ZinNEPerf::GetNonZeroCoefficientBlockCount(const void **__return_ptr a1@<X8>, ZinNEPerf *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  TotalNumberOfActiveNEs = ZinNEPerfInfo::GetTotalNumberOfActiveNEs((*(this + 42) + 680));
  std::vector<unsigned long>::reserve(a1, TotalNumberOfActiveNEs);
  v5 = *(this + 42);
  if (*(v5 + 396))
  {
    v6 = *(v5 + 24);
    if (*(*(v6 + 11) + 8) == 93)
    {
      if (RawOrShared<ZinConvLayer>::unwrap_const_ptr(v6 + 760))
      {
        v7 = *(v6 + 20);
        if (*(v7 + 672))
        {
          v8 = *(v7 + 888);
          if (*(v8 + 40))
          {
            v23 = 0;
            KernelDescriptor = ZinNEConvLayer::GetKernelDescriptor(v6);
            ZinKernelFormatGetBitDepth(*KernelDescriptor, &v23);
            v10 = *(v8 + 40);
            v11 = *(v10 + 32);
            v12 = *(v10 + 40);
            if (v11 != v12)
            {
              v13 = a1[1];
              do
              {
                v14 = a1[2];
                v15 = 8 * *(v11 + 40) / v23;
                if (v13 >= v14)
                {
                  v16 = *a1;
                  v17 = v13 - *a1;
                  v18 = v17 >> 3;
                  v19 = (v17 >> 3) + 1;
                  if (v19 >> 61)
                  {
                    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
                  }

                  v20 = v14 - v16;
                  if (v20 >> 2 > v19)
                  {
                    v19 = v20 >> 2;
                  }

                  if (v20 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v21 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v21 = v19;
                  }

                  if (v21)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v21);
                  }

                  *(8 * v18) = v15;
                  v13 = (8 * v18 + 8);
                  memcpy(0, v16, v17);
                  v22 = *a1;
                  *a1 = 0;
                  a1[1] = v13;
                  a1[2] = 0;
                  if (v22)
                  {
                    operator delete(v22);
                  }
                }

                else
                {
                  *v13++ = v15;
                }

                a1[1] = v13;
                v11 += 64;
              }

              while (v11 != v12);
            }
          }
        }
      }
    }
  }
}

void sub_1A69C5E78(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinNEPerf::ComputeRunCycle(ZinNEPerf *this)
{
  v1 = *(this + 11);
  v2 = *(this + 18);
  if (v2 <= *(this + 20))
  {
    v2 = *(this + 20);
  }

  *(this + 1) = v2;
  *(this + 2) = v1;
  return 0;
}

void ZinNEPerf::GetKernelSparsity(ZinNEPerf *this)
{
  v2 = *(this + 42);
  if (*(v2 + 740) <= 0.0)
  {
    v3 = *(v2 + 24);
    if (*(v2 + 44) == 1)
    {
      ZinIrPerf::GetEngineLayerFusedKernel(&v16, *(v2 + 24));
      v4 = v16;
      if (v16)
      {
        if ((v5 = *(*(*(this + 42) + 24) + 160)) != 0 && (v6 = *(v5 + 888)) != 0 && (**(v6 + 40) & 1) != 0 || *(v16 + 160) == 1)
        {
          KernelSparsityCache = ZinIrContext::GetKernelSparsityCache(*(v3 + 32));
          ZinIrKernel::GetSparsityRatio(v4, 6, KernelSparsityCache);
        }
      }

      std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v16);
    }

    else
    {
      v8 = *(v3 + 160);
      if (v8)
      {
        v9 = *(v8 + 888);
        if (v9)
        {
          if (**(v9 + 40) == 1)
          {
            v10 = *(v8 + 672);
            if (v10 && (v11 = *(v10 + 136)) != 0 && (v12 = (*(*v11 + 200))(v11), v2 = *(this + 42), v12) && *(v2 + 43) == 1)
            {
              v13 = *(v3 + 160);
              v14 = ZinIrContext::GetKernelSparsityCache(*(v3 + 32));

              ZinIrKernel::GetSparsityRatio(v13, 4, v14);
            }

            else
            {
              ZinNEPerf::GetSparsityFromStrides(*(v2 + 424), *(v2 + 416), *(v2 + 432), *(v2 + 184), *(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224), *(v2 + 372), *(v2 + 380), *(v2 + 388), v15);
            }
          }
        }
      }
    }
  }
}

void sub_1A69C6098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t ZinNEPerf::EstimatePostProcessCyclesPerWorkUnit(ZinNEPerf *this, unint64_t a2)
{
  v3 = *(*(this + 42) + 32);
  v4 = v3[243];
  v5 = v3[244];
  v6 = v3[112];
  v7 = v3[111];
  v8 = a2;
  v9 = a2 / v6;
  v10 = vcvtps_s32_f32(v9);
  v11 = 0.0;
  if (RawOrShared<ZinActivationLayer>::unwrap_const_ptr(*(*(this + 42) + 24) + 672) && ZinNEPerf::HasNonLinearModeLUT(this))
  {
    v12 = vcvtps_s32_f32(((v9 + -7.0) * v6) / v7);
    v10 += v12 & ~(v12 >> 31);
    v11 = (v8 / v7);
  }

  v13 = *(*(this + 42) + 56) / *(*(this + 42) + 64);
  v14 = v5 + (v4 + v10) * v13;
  v15 = v11 * v13;
  if (v14 >= v15)
  {
    v15 = v14;
  }

  return vcvtpd_u64_f64(v15);
}

uint64_t ZinNEPerf::HasNonLinearModeLUT(ZinNEPerf *this)
{
  result = RawOrShared<ZinActivationLayer>::unwrap_const_ptr(*(*(this + 42) + 24) + 672);
  if (result)
  {
    return *(RawOrShared<ZinActivationLayer>::unwrap_const_ptr(*(*(this + 42) + 24) + 672) + 176) > 1u;
  }

  return result;
}

unint64_t ZinNEPerf::GetKdmaReadAmount(ZinNEPerf *this)
{
  v1 = *(this + 42);
  v2 = *(v1 + 848);
  if (*(v2 + 340) != 1 || (*(v1 + 736) & 1) != 0 || *(v2 + 384) == 0.0)
  {
    return 0;
  }

  v4 = *(*(v1 + 24) + 160);
  if (*(v2 + 341))
  {
    if (v4)
    {
      v5 = *(v4 + 111);
      if (v5)
      {
        WeightElementSizeInBytes = ZinIrKernel::GetWeightElementSizeInBytes(v4);
        v7 = *(v2 + 384);
        v8 = v7 / WeightElementSizeInBytes;
        v9 = *(*(v5 + 40) + 16);
        return (v8 * v9);
      }
    }
  }

  else if (v4)
  {
    v10 = *(v4 + 111);
    if (v10)
    {
      NumClusters = ZinNEPerfInfo::GetNumClusters((v1 + 680));
      v9 = *(*(v10 + 40) + 16);
      v8 = NumClusters / *(*(v10 + 40) + 24);
      return (v8 * v9);
    }
  }

  v12 = ZinNEPerfInfo::GetNumClusters((v1 + 680));
  v13 = *(v1 + 848);
  return v12 * (*(v13 + 384) * GetSerializedWeightElementCount(*(v1 + 816), (v13 + 344), *(v1 + 824)));
}

uint64_t ZinNEPerf::GetL2BcastCyclePerOcg(ZinNEPerf *this)
{
  v32 = 0;
  v1 = *(this + 42);
  if (ZinTensorFormatGetSizeInBytes(**(v1 + 256), &v32))
  {
    ZinAssertImpl("Error in getting tensor format size in bytes");
  }

  v28 = details::ZinIrSubchannelKernelDimension(*(v1 + 184), *(v1 + 208), *(v1 + 424), *(v1 + 372));
  v2 = details::ZinIrSubchannelKernelDimension(*(v1 + 192), *(v1 + 216), *(v1 + 416), *(v1 + 380));
  v3 = *(v1 + 680);
  v26 = (v1 + 688);
  v27 = v2;
  if (v3 == (v1 + 688))
  {
    return 0;
  }

  v4 = 0;
  v25 = v1;
  do
  {
    v5 = v3[4];
    v6 = BYTE2(v5);
    v7 = *(v1 + 744) == 1 && BYTE2(v5) == 8;
    if (v7)
    {
      v8 = (*(*(*(this + 42) + 32) + 632) >> 4) / v32;
    }

    else
    {
      v8 = v3[4];
    }

    v9 = HIWORD(v5);
    if (HIWORD(v5) > v8 && *(v1 + 840) == 1)
    {
      v30 = *(this + 320) ^ 1;
    }

    else
    {
      v30 = 0;
    }

    v10 = (v5 >> 24) & 0xFFFFFF;
    v29 = *(v1 + 832);
    v11 = BYTE2(v5) * (1 << v29);
    v12 = v10 / v11;
    v13 = v10 % v11;
    if (v9 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v9;
    }

    L2BcastCyclesPerWorkunitPerOcg = ZinNEPerf::GetL2BcastCyclesPerWorkunitPerOcg(this, v32, v27, v28, v6, v14, v6, v8);
    if (v13)
    {
      v16 = v10 % v6;
      if (v16)
      {
        v17 = ZinNEPerf::GetL2BcastCyclesPerWorkunitPerOcg(this, v32, v27, v28, v16, v14, v6, v8);
      }

      else
      {
        v17 = 0;
      }

      v19 = v30;
      v18 = (v17 << v30) + ((v13 / v6) << v30) * L2BcastCyclesPerWorkunitPerOcg;
    }

    else
    {
      v18 = 0;
      v19 = v30;
    }

    v21 = v3[4];
    v20 = v3[5];
    v22 = v3[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v23 = v3[2];
        v7 = *v23 == v3;
        v3 = v23;
      }

      while (!v7);
    }

    v4 += v20 / ((((v21 >> 24) & 0xFFFFFF) + (BYTE2(v21) << v29) - 1) / (BYTE2(v21) << v29)) * (v18 + L2BcastCyclesPerWorkunitPerOcg * ((v12 * (1 << v29)) << v19));
    v3 = v23;
    v1 = v25;
  }

  while (v23 != v26);
  return v4;
}

unint64_t ZinNEPerf::GetL2BcastCyclesPerWorkunitPerOcg(ZinNEPerf *this, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  v11 = *(this + 42);
  if (*(v11 + 760) == 1)
  {
    v12 = *(v11 + 768);
  }

  else
  {
    v12 = (*(*(v11 + 232) + 8) + *(v11 + 160) - 1) / *(v11 + 160);
  }

  v41 = v12;
  v13 = *(*(v11 + 32) + 464);
  v39 = a6 - 1;
  v14 = a6 - 1 + a4;
  v15 = a3 + a5 - 1;
  v16 = *(v11 + 744);
  v17 = v16 - 3;
  if ((v16 - 3) > 1)
  {
    v18 = 1;
    if (v15 > a7 >> 1 && v16 != 1)
    {
      if (*(v11 + 745))
      {
        v18 = 1;
      }

      else if (v14 <= a8 >> 1 && a7 == 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }
    }

    v19 = (v11 + 841);
    if (v14 <= a8 || (*(v11 + 841) & 1) != 0)
    {
      v38 = 0;
    }

    else
    {
      if (a7 < 9 || v16 == 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = 1;
        if ((v14 * a7 - a8) * a2 > v13)
        {
          v21 = 2;
        }
      }

      v38 = v21;
    }
  }

  else
  {
    v38 = 0;
    if (*(v11 + 745))
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v19 = (v11 + 841);
  }

  v22 = (v15 - a7) & ~((v15 - a7) >> 31);
  if (v14 <= a8)
  {
    v23 = a8;
  }

  else
  {
    v23 = a6 - 1 + a4;
  }

  Pow2 = ZinRoundUpToNextPow2(v23);
  v25 = v13 / a2;
  if (v13 / a2 >= Pow2)
  {
    v26 = Pow2;
  }

  else
  {
    v26 = v13 / a2;
  }

  v27 = (v22 + v25 / v26 - 1) / (v25 / v26);
  if (*v19)
  {
    if (a6 <= a8)
    {
      v28 = a8;
    }

    else
    {
      v28 = a6;
    }

    v29 = ZinRoundUpToNextPow2(v28);
    if (v25 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v25;
    }

    v31 = (v39 + v30) / v30;
    if (v26 >= 2 * v30)
    {
      v32 = (v27 + 1) >> 1;
    }

    else
    {
      v32 = (v22 + v25 / v26 - 1) / (v25 / v26);
    }

    v33 = v32 * v31;
    if (*(*(*(this + 42) + 32) + 1665))
    {
      if (a3 <= 5 && a8 == 8 || (v34 = 2 * v33, a3 <= 3) && a8 == 16)
      {
        v34 = v33;
      }
    }

    else
    {
      v34 = 2 * v33;
    }

    v35 = v34 + 2 * v18;
  }

  else
  {
    if (v17 >= 2)
    {
      v22 = (v14 + v26 - 1) / v26 * v27;
    }

    v35 = v38 + v18 + v22;
  }

  return v35 * v41;
}

unint64_t ZinNEPerf::GetEffectiveInputDepth(ZinNEPerf *this)
{
  v1 = *(this + 42);
  v2 = *(v1 + 388) + *(v1 + 392);
  if (v2)
  {
    if (*(v1 + 396) == 1 && *(v1 + 456) == 1)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return (v2 + *(v1 + 200) + *(*(v1 + 232) + 32) - 1) / *(v1 + 200);
}

float ZinNEPerf::GetSparsityFromStrides(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13)
{
  v20 = details::ZinIrSubchannelKernelDimension(a4, a7, this, a10);
  v21 = details::ZinIrSubchannelKernelDimension(a5, a8, a2, a11);
  v22 = details::ZinIrSubchannelKernelDimension(a6, a9, a3, a12);
  v24 = a4 == 2 && a7 == 2;
  v26 = a5 == 2 && a8 == 2;
  v28 = a6 == 2 && a9 == 2;
  return 1.0 - (((a2 * this * a3) << v24 << v26 << v28) / (a5 * a4 * a6 * a7 * a8 * a9 * v20 * v21 * v22));
}

uint64_t ZinNEPerf::GetNonZeroElementsInSubKernel(ZinNEPerf *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10)
{
  v11 = a4 == 2 && a7 == 2;
  v13 = a5 == 2 && a8 == 2;
  v15 = a6 == 2 && a9 == 2;
  return (a2 * this * a3) << v11 << v13 << v15;
}

unint64_t ZinNEPerf::GetSubChannelCycleCount@<X0>(unint64_t *__return_ptr a1@<X8>, ZinNEPerf *this@<X0>, uint64_t a3@<X1>)
{
  v6 = *(this + 42);
  v7 = (*(*this + 96))(this);
  v8 = v6[26];
  if (v7 >= v8)
  {
    v9 = v6[26];
  }

  else
  {
    v9 = v7;
  }

  v10 = v6[27];
  v11 = v6[28];
  if (v7 / v9 >= v10)
  {
    v12 = v6[27];
  }

  else
  {
    v12 = v7 / v9;
  }

  v13 = v7 / v9 / v12;
  if (v13 >= v11)
  {
    v14 = v6[28];
  }

  else
  {
    v14 = v7 / v9 / v12;
  }

  v15 = v13 / v14;
  v16 = vcvtmd_s64_f64((v8 - 1) / v9);
  v17 = v6[23];
  v18 = ((v6[25] + v6[25] * v16) * v6[24] + (v6[25] + v6[25] * v16) * v6[24] * vcvtmd_s64_f64((v10 - 1) / v12)) * v17;
  v19 = v18 + v18 * vcvtmd_s64_f64((v11 - 1) / v14);
  v20 = details::ZinIrSubchannelKernelDimension(v17, v8, *(*(this + 42) + 424), *(*(this + 42) + 372));
  v21 = details::ZinIrSubchannelKernelDimension(v6[24], v6[27], *(*(this + 42) + 416), *(*(this + 42) + 380));
  result = details::ZinIrSubchannelKernelDimension(v6[25], v6[28], *(*(this + 42) + 432), *(*(this + 42) + 388));
  v23 = *(this + 42);
  if (*(v23 + 746) == 1 && (v15 < 2 || *(v23 + 776) <= 1uLL) && v19 <= 1)
  {
    result = (result + 1) >> 1;
  }

  v24 = v21 * v20 * result;
  v25 = vcvtmd_s64_f64((a3 - 1) / v15) + 1;
  if (v24 <= 1)
  {
    v24 = 1;
  }

  *a1 = v19;
  a1[1] = v24;
  a1[2] = v25;
  return result;
}

uint64_t ZinNEPerf::GetCyclesBeforeSparsity(ZinNEPerf *this)
{
  v2 = *(this + 42);
  v3 = *(v2 + 24);
  v4 = *(*(v2 + 232) + 8);
  EffectiveInputDepth = ZinNEPerf::GetEffectiveInputDepth(this);
  v6 = (*(*v3 + 440))(v3);
  v7 = 336;
  if (v6)
  {
    v7 = 352;
  }

  v8 = *(v2 + v7);
  v9 = *(v2 + 160);
  if (*(v2 + 760))
  {
    v10 = *(v2 + 768);
  }

  else
  {
    v10 = (v9 - 1 + v4) / v9;
  }

  v11 = (v9 - 1 + v8) / v9;
  TotalNumberOfActiveNEs = ZinNEPerfInfo::GetTotalNumberOfActiveNEs((v2 + 680));
  v13 = *(v2 + 776);
  NumClusters = ZinNEPerfInfo::GetNumClusters((v2 + 680));
  ZinChannelAssignment::ZinChannelAssignment(v24, TotalNumberOfActiveNEs, v13, v11, NumClusters);
  Exit = ZinIrAsyncFunction::GetExit(v24);
  v16 = Exit;
  if (Exit)
  {
    ZinChannelAssignment::GetOutputChannelGroup(v24, 0, 0);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    ZinNEPerf::GetSubChannelCycleCount(&v21, this, v17);
    v16 *= v10 * EffectiveInputDepth * v22 * v21 * v23;
  }

  if (ZinChannelAssignment::HasPartialPass(v24, 0))
  {
    NumOfGroupsProducedByNE = ZinChannelAssignment::GetNumOfGroupsProducedByNE(v24, 0);
    ZinChannelAssignment::GetOutputChannelGroup(v24, 0, NumOfGroupsProducedByNE - 1);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    ZinNEPerf::GetSubChannelCycleCount(&v21, this, v19);
    v16 += v10 * EffectiveInputDepth * v22 * v21 * v23;
  }

  return (*(v2 + 160) + *(v2 + 160) * v16) * *(v2 + 168);
}

uint64_t ZinNEPerf::GetHinEffective(ZinNEPerf *this, uint64_t a2)
{
  v3 = *(this + 42);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  GetSlices(v3[19], v3[62], v3[71], v3[70], v3[72], &v9);
  v4 = v9;
  v5 = v10;
  v6 = v3[52];
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  v7 = (((v5 - v4) >> 3) - 1) * (v6 - 1);
  if (v6 <= 1)
  {
    v7 = 0;
  }

  return v7 + a2;
}

void sub_1A69C6CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinNEPerf::GetPerfOcgSize(ZinNEPerf *this, const ZinCommonPerfInfo *a2, const ZinNEPerfInfo *a3)
{
  ZinNEPerfInfo::GetTotalNumberOfActiveNEs(a2);
  ZinNEPerfInfo::GetNumClusters(a2);
  operator new();
}

uint64_t ZinNEPerf::GetChainedDependencyStall(ZinNEPerf *this, double *a2)
{
  ZinCommonPerfInfo::ZinCommonPerfInfo(v18, (*(this + 42) + 56));
  if (v29 != 1)
  {
    goto LABEL_12;
  }

  v4 = *(this + 42);
  v5 = *(v4 + 512);
  v6 = *(v4 + 32);
  LOWORD(v11[0]) = 257;
  BYTE2(v11[0]) = 1;
  *(v11 + 3) = 0;
  *(v11 + 6) = 0;
  BYTE2(v11[1]) = 1;
  *(&v11[1] + 3) = 0;
  ZinIrPerf::ZinIrPerf(v17, v6, (v4 + 56), v11);
  ZinPerfDescriptor::ZinPerfDescriptor(v13);
  LOBYTE(v11[1]) = 0;
  LOBYTE(v11[13]) = 0;
  LOBYTE(v11[14]) = 0;
  LOBYTE(v11[26]) = 0;
  LOBYTE(v11[27]) = 0;
  LOBYTE(v11[39]) = 0;
  LOBYTE(v11[40]) = 0;
  LOBYTE(v11[41]) = 0;
  LOBYTE(v11[42]) = 0;
  LOBYTE(v11[43]) = 0;
  LOBYTE(v11[44]) = 0;
  LOBYTE(v11[47]) = 0;
  LOBYTE(v11[48]) = 0;
  BYTE4(v11[52]) = 0;
  LOBYTE(v11[53]) = 0;
  LOBYTE(v11[54]) = 0;
  LOBYTE(v11[55]) = 0;
  LOBYTE(v11[56]) = 0;
  LOBYTE(v11[57]) = 0;
  LOBYTE(v11[58]) = 0;
  LOBYTE(v11[59]) = 0;
  LOBYTE(v11[62]) = 0;
  LOBYTE(v11[63]) = 0;
  LOBYTE(v11[64]) = 0;
  LOBYTE(v11[65]) = 0;
  LOBYTE(v11[66]) = 0;
  v11[0] = &unk_1F19F42C8;
  v12[0] = 0;
  v12[8] = 0;
  v12[16] = 0;
  v12[24] = 0;
  if (v28)
  {
    memcpy(&v11[1], (v28 + 8), 0x209uLL);
    v7 = *(v28 + 545);
    *v12 = *(v28 + 536);
    *&v12[9] = v7;
  }

  v8 = ZinANELayer::CalculatePerf(v5, v17, v11, v13);
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinNEPerf::GetChainedDependencyStall();
    }
  }

  else
  {
    *a2 = v14;
  }

  ZinIrHalH13g::~ZinIrHalH13g(v11);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  ZinIrPerf::~ZinIrPerf(v17);
  if (v8)
  {
    v9 = 3;
  }

  else
  {
LABEL_12:
    v9 = 0;
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v19)
  {
    operator delete(v19);
  }

  return v9;
}

void sub_1A69C7004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ZinIrHalH13g::~ZinIrHalH13g(&a9);
  v10 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v10;
    operator delete(v10);
  }

  ZinIrPerf::~ZinIrPerf(&STACK[0x380]);
  ZinCommonPerfInfo::~ZinCommonPerfInfo(&STACK[0x6F0]);
  _Unwind_Resume(a1);
}

BOOL ZinNEPerf::HasL2DependencyStall(ZinNEPerf *this)
{
  v1 = *(*(this + 42) + 24);
  if (*(v1 + 65))
  {
    v2 = **ZinIrContext::GetMemoryPools(*(*(this + 42) + 24));
    result = ZinIrOpLayer::IsANELayer(v2);
    if (!result)
    {
      return result;
    }

    if (*(v2 + 65))
    {
      MemoryPools = ZinIrContext::GetMemoryPools(v1);
      result = ZinIrOpLayer::IsPELayer(**MemoryPools);
      if (!result)
      {
        return result;
      }

      v5 = *(v1 + 65);
      if (*(ZinMirL2Config::GetL2SrcDep((v5 + 112), 0) + 40) == 2)
      {
        v6 = ZinIrContext::GetMemoryPools(v1);
        if ((ZinANELayer::IsChainedConsumer(**v6) & 1) == 0 && (v5[262] & 1) == 0 && (v5[263] & 1) == 0 && (v5[256] & 1) == 0 && !v5[257])
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t ZinNEPerf::GetL2DependencyStall(ZinNEPerf *this, double *a2)
{
  if (*(*(this + 42) + 47) == 1 && ZinNEPerf::HasL2DependencyStall(this))
  {
    v4 = **ZinIrContext::GetMemoryPools(*(*(this + 42) + 24));
    v5 = *(this + 42);
    v6 = *(v5 + 72);
    v15[0] = *(v5 + 56);
    v15[1] = v6;
    v16 = *(v5 + 88);
    v7 = *(v5 + 32);
    v11.i16[0] = 257;
    v11.i8[2] = 1;
    *(v11.i32 + 3) = 0;
    *(&v11.i32[1] + 2) = 0;
    v11.i8[10] = 1;
    *(&v11.i32[2] + 3) = 0;
    ZinIrPerf::ZinIrPerf(v14, v7, v15, v11.i64);
    ZinPerfDescriptor::ZinPerfDescriptor(&v11);
    if (ZinANELayer::CalculatePerf(v4, v14, &v11))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinNEPerf::GetL2DependencyStall();
      }

      v8 = 3;
    }

    else
    {
      v8 = 0;
      v9 = vdivq_f64(vcvtq_f64_u64(v11), vdupq_lane_s64(COERCE__INT64(*(v15 + 1) / 1000.0), 0));
      if (v9.f64[0] < v9.f64[1])
      {
        v9.f64[0] = v9.f64[1];
      }

      *a2 = v9.f64[0];
    }

    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    ZinIrPerf::~ZinIrPerf(v14);
  }

  else
  {
    v8 = 0;
    *a2 = 0.0;
  }

  return v8;
}

void sub_1A69C7258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  if (__p)
  {
    operator delete(__p);
  }

  ZinIrPerf::~ZinIrPerf(va);
  _Unwind_Resume(a1);
}

void ZinNEPerf::AdjustTotalCycleForChainedTask(ZinNEPerf *this)
{
  v1 = *(this + 42);
  if (*(v1 + 46) == 1 && *(this + 24) > 0.0)
  {
    v3 = *(this + 2) / *(v1 + 56) * 1000.0;
    v4 = ZinEnginePerf::ComputeL2Time(this);
    ZinEnginePerf::ComputeDramAccessMetrics(v7, this);
    v5 = v7[0];
    if (v3 >= v4)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    if (v6 >= v7[0])
    {
      v5 = v6;
    }

    if (v5 < *(this + 24))
    {
      v5 = *(this + 24);
    }

    *(this + 2) = (v5 * *(*(this + 42) + 56) / 1000.0);
  }
}

double ZinNEPerf::AdjustTotalCycleWithL2DependencyStall(ZinNEPerf *this, double result)
{
  v2 = *(this + 42);
  if (*(v2 + 47) == 1)
  {
    result = *(this + 19);
    if (result > 0.0)
    {
      v3 = *(this + 1);
      if (v3 <= *(this + 2))
      {
        v3 = *(this + 2);
      }

      result = result * (*(v2 + 56) / 1000.0);
      *(this + 2) = v3 + result;
    }
  }

  return result;
}

unint64_t ZinNEPerf::GetNumAccRegs(ZinNEPerf *this, uint64_t a2)
{
  v3 = *(this + 42);
  v4 = (*(*this + 96))(this);
  return v3[27] * v3[26] * v3[28] * ((a2 + v4 - 1) / v4);
}

void ZinNEPerf::GetNonConvMACCyclesPerWorkunitPerOCG(ZinNEPerf *this, uint64_t a2)
{
  v2 = *(this + 42);
  v3 = v2[3];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v4 = (*(*v3 + 440))(v3, a2);
  ZinNEPerf::GetPerfOcgSize((v2 + 7), (v2 + 85), v4);
}

void ZinNEPerf::AnalyzeUtilization(ZinNEPerf *this)
{
  ComputeSpatialUtilization((*(this + 42) + 704));
  v2 = *(this + 42);
  v3 = *(v2 + 32);
  v4 = (*(**(v2 + 24) + 440))(*(v2 + 24));
  ZinNEPerf::GetOutputChannelUtilization(v3, (v2 + 56), (v2 + 680), v4);
}

unint64_t ZinNEPerf::EstimateMinimumNumOfWorkunits(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, unint64_t *a6)
{
  v6 = *(a5 + 704);
  if (!v6)
  {
    return -1;
  }

  v7 = (*(a5 + 632) / a3) >> a4;
  v8 = a1 - 1;
  v9 = 1;
  result = -1;
  for (i = 1; i <= v6; v9 = i)
  {
    if ((a2 - 1 + v7 / v9) / (v7 / v9) * ((v8 + i) / i) < result)
    {
      *a6 = v9;
      v6 = *(a5 + 704);
      result = (a2 - 1 + v7 / v9) / (v7 / v9) * ((v8 + i) / i);
    }

    i *= 2;
  }

  return result;
}

void ZinNEPerf::CalculatePerf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] ZinNEPerf::ComputeRunCycle is not successful\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] Dependency stall analysis is failed.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] Texture operation analysis failed.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] NEPerf::ComputeRunTime has invalid results.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] Invalid NE utilization.\n", a5, a6, a7, a8, v8);
}

void ZinNEPerf::GetChainedDependencyStall()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 67109378;
  v0[1] = 998;
  v1 = 2080;
  v2 = "/Library/Caches/com.apple.xbs/Sources/ANECompiler/libs/inference/compiler/ZinPerfModel/src/ZinNEPerf.cpp";
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ERROR: Performance model call isn't successful, line: %d, file: %s", v0, 0x12u);
}

void ZinNEPerf::GetL2DependencyStall()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 67109378;
  v0[1] = 1152;
  v1 = 2080;
  v2 = "/Library/Caches/com.apple.xbs/Sources/ANECompiler/libs/inference/compiler/ZinPerfModel/src/ZinNEPerf.cpp";
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ERROR: Performance model call isn't successful, line: %d, file: %s", v0, 0x12u);
}

uint64_t ZinIrOpt::ZinIrOptTwiceSameBottom(ZinIrOpt *this, const void **a2, ZinIrOpLayer *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = a2;
  MemoryPools = ZinIrContext::GetMemoryPools(a2);
  if (MemoryPools[1] - *MemoryPools == 16 && **MemoryPools == *(*MemoryPools + 8))
  {
    v5 = a2[11];
    if (v5[2] == 5)
    {
      v6 = MemoryPools;
      v7 = v5[3];
      switch(v7)
      {
        case 2:
          Hal = ZinIrTarget::GetHal(*(a2[4] + 25));
          if (*((*(*Hal + 16))(Hal) + 1269))
          {
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32, "_samebottomopt", a2 + 6);
            ZinObjectNameFactory::ZinObjectNameFactory(&v30, v32);
            if (SHIBYTE(v32[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v32[0].__r_.__value_.__l.__data_);
            }

            v18 = a2[4];
            (*(***v6 + 88))(v32);
            v27 = 0;
            v28 = 0;
            v29 = 0;
            std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v27, v32, &v33, 1uLL);
            v19 = (*(*v31 + 5))(v31, 0);
            v20 = (*(*v31 + 5))(v31, 0);
            ZinBuilder::CreateElementWiseLayer(v18, &v30, 3, &v27, v19 + 64, *(v20 + 104));
          }

          v7 = *(a2[11] + 3);
          break;
        case 1:
          if (*(a2 + 71) >= 0)
          {
            v8 = *(a2 + 71);
          }

          else
          {
            v8 = a2[7];
          }

          v9 = v32;
          std::string::basic_string[abi:ne200100](v32, v8 + 14);
          if ((v32[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v9 = v32[0].__r_.__value_.__r.__words[0];
          }

          if (v8)
          {
            v12 = a2[6];
            v11 = a2 + 6;
            v10 = v12;
            if (*(v11 + 23) >= 0)
            {
              v13 = v11;
            }

            else
            {
              v13 = v10;
            }

            memmove(v9, v13, v8);
          }

          strcpy(v9 + v8, "_samebottomopt");
          ZinObjectNameFactory::ZinObjectNameFactory(&v30, v32);
          if (SHIBYTE(v32[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32[0].__r_.__value_.__l.__data_);
          }

          v14 = v31[4];
          (*(***v6 + 88))(v32);
          v27 = 0;
          v28 = 0;
          v29 = 0;
          std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v27, v32, &v33, 1uLL);
          v15 = *((*(*v31 + 5))(v31, 0) + 104);
          v26 = 0;
          ZinBuilder::CreateConstScaleAndBiasGOC(v14, &v30, &v27, v15, 0, 0, &v26, 2.0, 0.0, v16, 0, 0);
        case 4:
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v32, "_samebottomopt", a2 + 6);
          ZinObjectNameFactory::ZinObjectNameFactory(&v30, v32);
          if (SHIBYTE(v32[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32[0].__r_.__value_.__l.__data_);
          }

          v21 = v31[4];
          (*(***v6 + 88))(v32);
          v27 = 0;
          v28 = 0;
          v29 = 0;
          std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v27, v32, &v33, 1uLL);
          v22 = *((*(*v31 + 5))(v31, 0) + 104);
          v25 = 0;
          ZinBuilder::CreateConstScaleAndBiasGOC(v21, &v30, &v27, v22, 0, 0, &v25, 0.0, 0.0, v23, 0, 0);
      }
    }
  }

  return 0;
}

void sub_1A69C82D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a26);
  a56 = &unk_1F19D0088;
  if (a62 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ZinIrCostVolumeUnit::ZinIrCostVolumeUnit(ZinIrCostVolumeUnit *this, const ZinIrCostVolumeUnitInfo *a2)
{
  memset(v6, 0, sizeof(v6));
  ZinIrUnit::ZinIrUnit(this, v6);
  v7 = v6;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v7);
  *this = &unk_1F19F2C88;
  *(this + 7) = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 10) = *(a2 + 3);
    *(this + 4) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 12) = 0;
  *(this + 22) = v5;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 12, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 120) = *(a2 + 4);
  *(this + 7) = &unk_1F19D2398;
  *(this + 136) = *(a2 + 5);
}

uint64_t ZinIrCostVolumeUnit::TensorDimensions(ZinIrCostVolumeUnit *this, const ZinIrHalParameters *a2, ZinTensorDimensions *a3, ZinIrUnitStatus *a4)
{
  v4 = *(this + 1);
  v5 = *(v4 + 8);
  v6 = *(v4 + 24);
  *(a3 + 4) = *(v4 + 40);
  *a3 = v5;
  *(a3 + 1) = v6;
  *(a3 + 1) = *(this + 35) + 1;
  return 0;
}

void sub_1A69C8850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x1AC55A070](v12, 0x10B3C40B86AB2C0, a3, a4, a5, a6, a7, a8);
  if (a12)
  {
    (*(*a12 + 16))(a12);
  }

  _Unwind_Resume(a1);
}

void ZinIrCostVolumeUnit::~ZinIrCostVolumeUnit(void **this)
{
  *this = &unk_1F19F2C88;
  ZinIrUnitInfo::~ZinIrUnitInfo(this + 7);

  ZinIrUnit::~ZinIrUnit(this);
}

{
  *this = &unk_1F19F2C88;
  ZinIrUnitInfo::~ZinIrUnitInfo(this + 7);
  ZinIrUnit::~ZinIrUnit(this);

  JUMPOUT(0x1AC55A070);
}

unint64_t ZinMirPETransposeFusion::Execute(uint64_t a1, void *a2, uint64_t a3)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1F19F2D50;
  v5[1] = a1;
  v5[2] = a3;
  v5[3] = v5;
  v3 = ZinIrControlFlowGraph::TraverseForward(a2, v5, 1);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v5);
  return v3;
}

void sub_1A69C8A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinMirPETransposeFusion::FuseCWTransposeToPE(int a1, ZinTransposeLayer *this, ZinIrOpLayerGraph *a3, uint64_t a4)
{
  if (*(**a4 + 1984) == 1)
  {
    IsCWTranspose = ZinTransposeLayer::IsCWTranspose(this);
    if (IsCWTranspose)
    {
      v7 = ZinMirPETransposeFusion::FuseCWTransposeToPEAsOutput(IsCWTranspose, this, a3);
      if (!v7)
      {
        v8 = ZinMirPETransposeFusion::FuseCWTransposeToPEAsInput(v7, this, a3);
        if (!v8)
        {

          ZinMirPETransposeFusion::ConvertToNEBypass(v8, this, a3);
        }
      }
    }
  }
}

BOOL ZinMirPETransposeFusion::FuseCWTransposeToPEAsOutput(int a1, ZinIrContext *this, ZinIrOpLayerGraph *a3)
{
  v5 = **ZinIrContext::GetMemoryPools(this);
  result = ZinIrOpLayer::IsPELayer(v5);
  if (result)
  {
    OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v5);
    if (OutgoingLayers[1] - *OutgoingLayers > 8uLL)
    {
      return 0;
    }

    v8 = (*(*v5 + 40))(v5, 0);
    v9 = v8[9];
    v10 = v8[10];
    v11 = v8[11];
    v12 = (*(*v5 + 440))(v5) ? v9 : v11;
    if (v10 != 1 || v12 != 1)
    {
      return 0;
    }

    if ((*(*v5 + 440))(v5))
    {
      v14 = 0;
    }

    else
    {
      v14 = this;
    }

    (*(*v5 + 768))(v5, v14);
    v15 = (*(*this + 48))(this, 0);
    v16 = v15[1];
    v23 = *v15;
    v24 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v5 + 24))(v5, &v23);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    memset(v21, 0, sizeof(v21));
    v22 = 1065353216;
    if (ZinIrOpLayerGraph::MoveOutgoingEdges(a3, this, v5, v21, 0, 0))
    {
      v19.n128_u64[0] = this;
      v20 = 0;
      v17 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v19);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v19, v17);
      v18 = ZinIrOpLayerGraph::RemoveNode(a3, &v19, 0);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v19);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v21);
      if (v18)
      {
        return 1;
      }
    }

    else
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v21);
    }

    ZinAssertImpl("graph modification failed while fusing cw transpose into pe layer");
  }

  return result;
}

void sub_1A69C8D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

BOOL ZinMirPETransposeFusion::FuseCWTransposeToPEAsInput(int a1, ZinIrContext *this, ZinIrOpLayerGraph *a3)
{
  v29 = this;
  v5 = **ZinIrContext::GetMemoryPools(this);
  OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(this);
  if (OutgoingLayers[1] - *OutgoingLayers > 8uLL || *(*(v5 + 11) + 8) == 36)
  {
    return 0;
  }

  v7 = **ZinIrOpLayer::GetOutgoingLayers(this);
  result = ZinIrOpLayer::IsPELayer(v7);
  if (!result)
  {
    return result;
  }

  v9 = *(*(v7 + 11) + 8);
  if (RawOrShared<ZinTextureLayer>::unwrap_const_ptr(v7 + 392))
  {
    return 0;
  }

  v10 = **ZinIrContext::GetMemoryPools(v7);
  if (v10 == this)
  {
    v19 = (*(*this + 40))(this, 0);
    v20 = v19[9];
    v21 = v19[10];
    v22 = v19[11];
    if ((*(*v7 + 680))(v7))
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    if (v21 != 1 || v23 != 1)
    {
      return 0;
    }

    if ((*(*v7 + 680))(v7))
    {
      v25 = 0;
    }

    else
    {
      v25 = this;
    }

    (*(*v7 + 776))(v7, v25);
  }

  else
  {
    if (*(*ZinIrContext::GetMemoryPools(v7) + 8) != this)
    {
      return 0;
    }

    v11 = (*(*this + 40))(this, 0);
    v12 = v11[9];
    v13 = v11[10];
    v14 = v11[11];
    if ((*(*v7 + 680))(v7))
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }

    v16 = 1;
    if (v9 == 92)
    {
      v16 = 2;
    }

    if (v13 != v16 || v15 != 1)
    {
      return 0;
    }

    if ((*(*v7 + 688))(v7))
    {
      v18 = 0;
    }

    else
    {
      v18 = this;
    }

    (*(*v7 + 784))(v7, v18);
  }

  if (!ZinIrOpLayerGraph::SwapEdgeDestination(a3, v5, this, v7, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0, 0) || (RawOrShared<ZinIrOpLayer>::RawOrShared<ZinGOCLayer *&>(&v28, &v29), v26 = ZinIrOpLayerGraph::RemoveNode(a3, &v28, 0), std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v28), !v26))
  {
    ZinAssertImpl("Failed to update graph to fuse CW transpose into PE layer input");
  }

  if (v10 == this)
  {
    MemoryPools = ZinIrContext::GetMemoryPools(v7);
    if ((ZinIrOpLayerGraph::SwapEdgeSource(a3, **MemoryPools, **MemoryPools, v7, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0, 0) & 1) == 0)
    {
      ZinAssertImpl("Failed to swap inputs to the PE layer after fusing CW transpose input");
    }
  }

  return 1;
}

void sub_1A69C90CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinMirPETransposeFusion::ConvertToNEBypass(uint64_t a1, void *a2, ZinIrOpLayerGraph *a3)
{
  v23[7] = *MEMORY[0x1E69E9840];
  if (*(a2 + 71) >= 0)
  {
    v4 = *(a2 + 71);
  }

  else
  {
    v4 = a2[7];
  }

  v5 = &v16;
  std::string::basic_string[abi:ne200100](&v16, v4 + 1);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v16.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(a2 + 71) >= 0)
    {
      v6 = a2 + 6;
    }

    else
    {
      v6 = a2[6];
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 95;
  *(&v20.__r_.__value_.__s + 23) = 8;
  strcpy(&v20, "pe_trans");
  v7 = std::string::append(&v20, "_xfm", 4uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v22 = v7->__r_.__value_.__r.__words[2];
  v21 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (v22 >= 0)
  {
    v9 = &v21;
  }

  else
  {
    v9 = v21;
  }

  if (v22 >= 0)
  {
    v10 = HIBYTE(v22);
  }

  else
  {
    v10 = *(&v21 + 1);
  }

  v11 = std::string::append(&v16, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  __p[0].__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&__p[0].__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  ZinObjectNameFactory::ZinObjectNameFactory(v23, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v13 = **ZinIrContext::GetMemoryPools(a2);
  v14 = a2[4];
  v15 = *((*(*a2 + 40))(a2, 0) + 104);
  v19 = 0;
  __p[0].__r_.__value_.__s.__data_[0] = 0;
  v18 = 0;
  ZinBuilder::CreateNEBypass(v14, v23, v13, v15, &v19, 1, __p, 1.0);
}

void sub_1A69C952C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a10);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a13);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a27);
  a18 = &unk_1F19C3950;
  *(v31 - 88) = &a19;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100]((v31 - 88));
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v31 - 160);
  *(v31 - 128) = &unk_1F19D0088;
  if (*(v31 - 97) < 0)
  {
    operator delete(*(v31 - 120));
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<ZinMirPETransposeFusion::Execute(ZinIrControlFlowGraph *,ZinTransformInfo *)::$_0,std::allocator<ZinMirPETransposeFusion::Execute(ZinIrControlFlowGraph *,ZinTransformInfo *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F19F2D50;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ZinMirPETransposeFusion::Execute(ZinIrControlFlowGraph *,ZinTransformInfo *)::$_0,std::allocator<ZinMirPETransposeFusion::Execute(ZinIrControlFlowGraph *,ZinTransformInfo *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, ZinIrOpLayerGraph **a2, ZinTransposeLayer **a3)
{
  if (*(*(*a3 + 11) + 8) == 38)
  {
    ZinMirPETransposeFusion::FuseCWTransposeToPE(*(a1 + 8), *a3, *a2, *(a1 + 16));
  }

  return 0;
}

uint64_t std::__function::__func<ZinMirPETransposeFusion::Execute(ZinIrControlFlowGraph *,ZinTransformInfo *)::$_0,std::allocator<ZinMirPETransposeFusion::Execute(ZinIrControlFlowGraph *,ZinTransformInfo *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ZinF16ToE5M2(float a1)
{
  v1 = (LODWORD(a1) >> 8) & 0x80;
  v2 = v1 | ((((LOWORD(a1) & 0x7FFF) >> 7) + 1) >> 1);
  v3 = v1 | 0x7E;
  if ((LOWORD(a1) & 0x7FFFu) >= 0x7C01)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

float ZinE5M2ToF32(__int16 a1)
{
  _H0 = a1 << 8;
  __asm { FCVT            S0, H0 }

  return result;
}

uint64_t ZinF32ToE5M2(float _S0)
{
  __asm { FCVT            H0, S0 }

  v5 = (LODWORD(_S0) >> 8) & 0x80;
  v6 = v5 | ((((LOWORD(_S0) & 0x7FFF) >> 7) + 1) >> 1);
  v7 = v5 | 0x7E;
  if ((LOWORD(_S0) & 0x7FFFu) >= 0x7C01)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t ZinIrCropResizeUnit::ZinIrCropResizeUnit(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = ZinIrUnit::ZinIrUnit(a1, a3);
  *v5 = &unk_1F19F2DD0;
  ZinIrTextureUnitInfo::ZinIrTextureUnitInfo((v5 + 7), a2);
  v6 = *(a2 + 156);
  *(a1 + 216) = 0;
  *(a1 + 56) = &unk_1F1A34160;
  *(a1 + 212) = v6;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>((a1 + 216), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 3);
  *(a1 + 240) = *(a2 + 184);
  return a1;
}

void sub_1A69C98BC(_Unwind_Exception *a1)
{
  ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo(v2);
  ZinIrUnit::~ZinIrUnit(v1);
  _Unwind_Resume(a1);
}

uint64_t ZinIrCropResizeUnit::TensorDimensions(ZinIrCropResizeUnit *this, const ZinIrHalParameters *a2, ZinTensorDimensions *a3, ZinIrUnitStatus *a4)
{
  v6 = *(this + 1);
  if (*(this + 2) - v6 != 272)
  {
    ZinAssertImpl("CropResize layer should have two bottoms, (1) input tensor and (2) index tensor.", a2, a3, a4, v4, v5);
  }

  v7 = v6[2];
  *a3 = v6[18];
  *(a3 + 1) = v7;
  *(a3 + 4) = v6[5];
  v8 = *(this + 60);
  *(a3 + 2) = *(this + 61);
  *(a3 + 3) = v8;
  return 0;
}

void ZinIrCropResizeUnit::CreateOpcode(uint64_t (***this)(unsigned int **, const ZinIrHalParameters *), const ZinIrHalParameters *a2)
{
  v4 = *((*this)[14](this, a2) + 64);
  v5 = *this[1];
  if (!v4)
  {
    if (v5 == 8)
    {
      ZinAssertImpl("Invalid input layer format:%s for the crop_resize layer", "packed10");
    }

    if ((IsFormatDMAConvertibleToFP16(v5) & 1) == 0 && CheckValidFormat(*this[1]))
    {
      ZinTensorFormatToString(*this[1], v7);
      if (v8 >= 0)
      {
        v6 = v7;
      }

      else
      {
        v6 = v7[0];
      }

      ZinAssertImpl("Invalid input layer format:%s for the crop_resize layer", v6);
    }
  }

  operator new();
}

void sub_1A69C9A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A69C9BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x1AC55A070](v12, 0x10B3C408C0C1E9CLL, a3, a4, a5, a6, a7, a8);
  if (a12)
  {
    (*(*a12 + 16))(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinRtOperationRuntimeAlloc::ZinRtOperationRuntimeAlloc(uint64_t a1, __int128 *a2, char a3)
{
  result = ZinRtOperation::ZinRtOperation(a1, a2);
  *result = &unk_1F19F2E98;
  *(result + 76) = a3;
  *(result + 80) = 0;
  *(result + 88) = 0x40000000;
  *(result + 100) = 0;
  *(result + 92) = 0;
  *(result + 108) = 0xFFFFFFFF00000000;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = 0;
  *(result + 16) &= 0xFFFFFFE1;
  *(result + 72) = 1;
  return result;
}

unint64_t ZinRtOperationRuntimeAlloc::SerializeHelper(uint64_t a1, int a2, uint64_t *a3, unint64_t a4, void *a5, uint64_t *a6)
{
  v11 = ZinRtOperationRuntime::SerializeHelper(a1, a2, a3, a4, a5, a6);
  v12 = v11;
  if (*(a1 + 76))
  {
    if (a2)
    {
      v13 = ZinRegisterPacking::ProcessRegisters(a1 + 100, 3uLL, 6608, 0, a2 ^ 1u) + v11;
      v14 = v13 + ZinRegisterPacking::ProcessRegisters(a1 + 80, 1uLL, 6620, 0, a2 ^ 1u);
    }

    else
    {
      PointerAtOffset = GetPointerAtOffset(a3, v11 + a4, 3uLL);
      v20 = ZinRegisterPacking::ProcessRegisters(a1 + 100, 3uLL, 6608, PointerAtOffset, 1) + v12;
      v21 = GetPointerAtOffset(a3, v20 + a4, 3uLL);
      v14 = ZinRegisterPacking::ProcessRegisters(a1 + 80, 1uLL, 6620, v21, 1) + v20;
      ZinRtSequentialCommand::ZinRtSequentialCommand(v26, 0x19B0u, 1);
      *(*a3 + 4 * v14 + 4 * a4) = ZinRtSequentialCommand::GetRawHeader(v26);
      AddSymtabIndexRelocation(a1 + 120, 0, 4 * (a4 + v14) + 4, a6);
      *(*a3 + 4 * (a4 + v14) + 4) = *(a1 + 112);
    }

    result = v14 + 2;
  }

  else
  {
    if (a2)
    {
      v15 = ZinRegisterPacking::ProcessRegisters(a1 + 84, 1uLL, 5760, 0, a2 ^ 1u) + v11;
      v16 = ZinRegisterPacking::ProcessRegisters(a1 + 88, 1uLL, 5824, 0, a2 ^ 1u);
      v17 = 0;
      v18 = v15 + v16;
    }

    else
    {
      v23 = GetPointerAtOffset(a3, v11 + a4, 1uLL);
      v24 = ZinRegisterPacking::ProcessRegisters(a1 + 84, 1uLL, 5760, v23, 1) + v12;
      v25 = GetPointerAtOffset(a3, v24 + a4, 1uLL);
      v18 = ZinRegisterPacking::ProcessRegisters(a1 + 88, 1uLL, 5824, v25, 1) + v24;
      v17 = GetPointerAtOffset(a3, v18 + a4, 2uLL);
    }

    result = ZinRegisterPacking::ProcessRegisters(a1 + 92, 2uLL, 6612, v17, a2 ^ 1u) + v18;
  }

  if (result >= 0xFFFFFFFF)
  {
    ZinAssertImpl("Alloc operation is too large");
  }

  return result;
}

unint64_t ZinRtOperationRuntimeAlloc::GetSerializedSizeInWords(uint64_t a1, void *a2)
{
  v6[0] = 0;
  v6[1] = 0;
  memset(v5, 0, sizeof(v5));
  v3 = ZinRtOperationRuntimeAlloc::SerializeHelper(a1, 1, v6, 0, a2, v5);
  ZinRtOperation::SetOperationSize(a1, v3);
  v7 = v5;
  std::vector<ZinIrSymbolData>::__destroy_vector::operator()[abi:ne200100](&v7);
  return v3;
}

void sub_1A69CA034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<ZinIrSymbolData>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t ZinRtOperationRuntimeAlloc::Serialize(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4, uint64_t *a5)
{
  v9 = ZinRtOperationRuntimeAlloc::SerializeHelper(a1, 0, a2, a3, a4, a5);
  ZinRtOperation::AddOperationSymbol(a1, a2, a3, v9, a5);
  return v9;
}

uint64_t ZinRtOperationRuntimeAlloc::SetAllocResourceType(uint64_t result, __int16 a2)
{
  v2 = 84;
  if (*(result + 76))
  {
    v2 = 100;
  }

  *(result + v2 + 2) = a2;
  return result;
}

uint64_t ZinRtOperationRuntimeAlloc::GetAllocResourceType(ZinRtOperationRuntimeAlloc *this)
{
  v1 = 84;
  if (*(this + 76))
  {
    v1 = 100;
  }

  return *(this + v1 + 2);
}

uint64_t ZinRtOperationRuntimeAlloc::SetProtectionType(uint64_t result, __int16 a2)
{
  if (*(result + 76))
  {
    *(result + 100) = a2;
  }

  else
  {
    *(result + 84) = a2;
  }

  return result;
}

uint64_t ZinRtOperationRuntimeAlloc::SetAllocSize(uint64_t this, uint64_t a2)
{
  v2 = 92;
  if (*(this + 76))
  {
    v2 = 104;
  }

  v3 = 96;
  if (*(this + 76))
  {
    v3 = 108;
  }

  *(this + v2) = a2;
  *(this + v3) = HIDWORD(a2);
  return this;
}

uint64_t ZinRtOperationRuntimeAlloc::GetAllocSize(ZinRtOperationRuntimeAlloc *this)
{
  v1 = 92;
  if (*(this + 76))
  {
    v1 = 104;
  }

  return *(this + v1);
}

void ZinRtOperationRuntimeAlloc::SetResourceSet(ZinRtOperationRuntimeAlloc *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((*(this + 76) & 1) == 0)
  {
    ZinAssertImpl("resource set only works with new allocation operation");
  }

  v2 = (this + 120);
  v3 = *(this + 143);
  if (v3 < 0)
  {
    v3 = *(this + 16);
    if (!v3)
    {
      goto LABEL_19;
    }

    v2 = *v2;
  }

  else if (!*(this + 143))
  {
LABEL_19:
    ZinAssertImpl("resource name is not available", v2);
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&__p, v2, v2 + v3, v3);
  v14[0] = ZinHash(this + 72, 4u);
  if (__p == v12)
  {
    v4 = 0;
  }

  else
  {
    v4 = ZinHash(__p, v12 - __p);
  }

  v14[1] = v4;
  v7 = (*(this + 4) >> 5) & 0x3FFF;
  v14[2] = ZinHash(&v7, 4u);
  v9 = 0;
  v10 = 0;
  v8 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&v8, v14, &v15, 3uLL);
  v5 = v8;
  if (v8 == v9)
  {
    v6 = 0;
  }

  else
  {
    v6 = ZinHash(v8, v9 - v8);
    v5 = v8;
  }

  *(this + 20) = v6;
  if (v5)
  {
    v9 = v5;
    operator delete(v5);
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_1A69CA2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void ZinRtOperationRuntimeAlloc::GetDebugPrintStr(ZinRtOperationRuntimeAlloc *this@<X0>, std::string *a2@<X8>)
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

void sub_1A69CA3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc(ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *this, ZinIrPadUnitInfo *a2)
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

ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc(ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *this, ZinIrInputViewUnitInfo *a2)
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

ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc(ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *this, ZinIrPixelShuffleUnitInfo *a2)
{
  *this = 31;
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
  *(this + 1) = &unk_1F1A33EC8;
  v6 = *(a2 + 10);
  *(this + 24) = *(a2 + 22);
  *(this + 11) = v6;
  return this;
}

void sub_1A69CA72C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::ConvLargeKernelDecomposedDesc(ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *this, ZinIrPixelUnshuffleUnitInfo *a2)
{
  *this = 32;
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
  *(this + 1) = &unk_1F1A33EE8;
  v6 = *(a2 + 10);
  *(this + 24) = *(a2 + 22);
  *(this + 11) = v6;
  return this;
}

void sub_1A69CA82C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc::~ConvLargeKernelDecomposedDesc(ZinLargeKernelSizeUtils::ConvLargeKernelDecomposedDesc *this)
{
  v2 = *this;
  if (*this <= 30)
  {
    if (v2 == 1)
    {
      v4 = (this + 8);
      *(this + 1) = &unk_1F1A2EAA0;
      v7 = *(this + 20);
      if (v7)
      {
        *(this + 21) = v7;
        operator delete(v7);
      }

      v5 = *(this + 17);
      if (!v5)
      {
        goto LABEL_21;
      }

      *(this + 18) = v5;
    }

    else
    {
      if (v2 != 17)
      {
        return;
      }

      v4 = (this + 8);
      *(this + 1) = &unk_1F1A33F90;
      if (*(this + 160) != 1)
      {
        goto LABEL_21;
      }

      if (*(this + 151) < 0)
      {
        operator delete(*(this + 16));
      }

      if ((*(this + 127) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      v5 = *(this + 13);
    }

    operator delete(v5);
LABEL_21:
    v6 = v4;
    goto LABEL_22;
  }

  if (v2 == 31 || v2 == 32)
  {
    v6 = (this + 8);
LABEL_22:
    ZinIrUnitInfo::~ZinIrUnitInfo(v6);
    return;
  }

  if (v2 == 44)
  {
    *(this + 1) = &unk_1F1A33FD0;
    v3 = *(this + 26);
    if (v3)
    {
      *(this + 27) = v3;
      operator delete(v3);
    }

    ZinIrTextureUnitInfo::~ZinIrTextureUnitInfo((this + 8));
  }
}