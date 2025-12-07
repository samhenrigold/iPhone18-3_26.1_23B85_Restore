uint64_t ZinIrLiveIOManager::HasMultiplanarLiveIO(ZinIrLiveIOManager *this)
{
  v3 = this;
  v1 = 1;
  if ((ZinIrLiveIOManager::HasMultiplanarLiveIO(void)const::$_0::operator()(&v3, 0) & 1) == 0 && (ZinIrLiveIOManager::HasMultiplanarLiveIO(void)const::$_0::operator()(&v3, 1) & 1) == 0)
  {
    return ZinIrLiveIOManager::HasMultiplanarLiveIO(void)const::$_0::operator()(&v3, 2);
  }

  return v1;
}

uint64_t ZinIrLiveIOManager::HasMultiplanarLiveIO(void)const::$_0::operator()(uint64_t *a1, int a2)
{
  v19 = a2;
  v2 = *a1;
  v3 = std::map<ZinIrDimension,unsigned long>::at(*a1 + 40, &v19);
  v4 = std::map<ZinIrDimension,unsigned long>::at(v2 + 16, &v19);
  v7 = *v3;
  v5 = v3 + 1;
  v6 = v7;
  if (v7 == v5)
  {
    return 0;
  }

  v8 = v4;
  v9 = v4 + 1;
  while (1)
  {
    v10 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v8, v6 + 32);
    if (v9 != v10)
    {
      ZinIr4CCInfo::ZinIr4CCInfo(v16, *(v10 + 260));
      PlaneCount = ZinIr4CCInfo::GetPlaneCount(v16);
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }

      if (PlaneCount >= 2)
      {
        break;
      }
    }

    v12 = *(v6 + 1);
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
        v13 = *(v6 + 2);
        v14 = *v13 == v6;
        v6 = v13;
      }

      while (!v14);
    }

    v6 = v13;
    if (v13 == v5)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1A68C5004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrLiveIOManager::PrepareLiveIn(uint64_t **this, CFArrayRef *a2)
{
  v29[0] = 0;
  v3 = std::map<ZinIrDimension,unsigned long>::at((this + 5), v29);
  v29[0] = 0;
  v4 = std::map<ZinIrDimension,unsigned long>::at((this + 2), v29);
  v25 = v3;
  v7 = *v3;
  v6 = v3 + 1;
  v5 = v7;
  if (v7 != v6)
  {
    do
    {
      *v29 = v5 + 4;
      v8 = std::__tree<std::__value_type<std::string,ZinIrIOInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrIOInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrIOInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, v5 + 4, &std::piecewise_construct, v29, &v28);
      ZinIr4CCInfo::ZinIr4CCInfo(v29, *(v8 + 65));
      PlaneCount = ZinIr4CCInfo::GetPlaneCount(v29);
      if (PlaneCount == 1)
      {
        if (*(v5 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v28, v5[4], v5[5]);
        }

        else
        {
          v28 = *(v5 + 4);
        }
      }

      else
      {
        *(&v28.__r_.__value_.__s + 23) = 0;
        v28.__r_.__value_.__s.__data_[0] = 0;
      }

      std::vector<std::string>::vector[abi:ne200100](&v26, PlaneCount, &v28);
      v33 = v5 + 4;
      v10 = (std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 17, v5 + 4, &std::piecewise_construct, &v33, &v32) + 7);
      if (v10 != &v26)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v10, v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3));
      }

      v34 = &v26;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (__p)
      {
        v31 = __p;
        operator delete(__p);
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

  v14 = this[14];
  if (v14 == (this + 15))
  {
    return 1;
  }

  while (1)
  {
    v15 = *(v14 + 12);
    v16 = *(v14 + 34);
    v17 = *(v14 + 35);
    if (v6 == std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v25, v15))
    {
      break;
    }

    *v29 = v15;
    if (*(std::__tree<std::__value_type<std::string,ZinIrIOInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrIOInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrIOInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v4, v15, &std::piecewise_construct, v29, &v28) + 65) != v16)
    {
      break;
    }

    ZinIr4CCInfo::ZinIr4CCInfo(v29, v16);
    v18 = ZinIr4CCInfo::GetPlaneCount(v29);
    v19 = v18 > v17;
    if (v18 > v17)
    {
      v28.__r_.__value_.__r.__words[0] = v15;
      v20 = std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 17, v15, &std::piecewise_construct, &v28, &v26);
      std::string::operator=((v20[7] + 24 * v17), (v14 + 32));
    }

    else
    {
      ZinIrNetworkStatus::SetError(a2, @"InvalidUnit");
    }

    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v18 > v17)
    {
      v21 = *(v14 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v14 + 2);
          v13 = *v22 == v14;
          v14 = v22;
        }

        while (!v13);
      }

      v14 = v22;
      if (v22 != (this + 15))
      {
        continue;
      }
    }

    return v19;
  }

  ZinIrNetworkStatus::SetError(a2, @"InvalidUnit");
  return 0;
}

void sub_1A68C5378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrLiveIOManager::PrepareBindingsForLiveInsWithout4CC(const ZinIrHalParameters **a1, unsigned int a2, ZinIrContext *a3, void *a4, ZinIrNetworkStatus *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = a2;
  if ((a2 & 0xFFFFFFFD) != 0)
  {
    ZinAssertImpl("PrepareBindingsForLiveInsWithout4CC should not be called on live outputs");
  }

  v6 = std::map<ZinIrDimension,unsigned long>::at((a1 + 8), &v15);
  v9 = std::map<ZinIrDimension,unsigned long>::at((a1 + 2), &v15);
  std::map<ZinIrDimension,unsigned long>::at((a1 + 11), &v15);
  v7 = *v6;
  if (*v6 != v6 + 1)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v11 = (v7 + 32);
    std::__tree<std::__value_type<std::string,ZinIrIOInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrIOInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrIOInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v9, (v7 + 32), &std::piecewise_construct, &v11, &v10);
    operator new();
  }

  return 1;
}

void sub_1A68C5794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  std::unique_ptr<ZinIrTensor::MirInfo>::~unique_ptr[abi:ne200100](&a25);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  (*(*v27 + 8))(v27);
  _Unwind_Resume(a1);
}

void FindDimOrder(int8x16_t **a1@<X0>, uint64_t a2@<X8>)
{
  DimensionOrderHint::DimensionOrderHint(a2, 0);
  if (ZinIrIO::HasCustomStrides(*a1))
  {
    v4 = *a1;
    v5 = (*a1)[11].i64[0];
    v9 = (*a1)[11].i64[1];
    v10 = vextq_s8(v4[10], v4[10], 8uLL);
    v11 = 1;
    v12 = v5;
    FindDimensionOrderFromStrides(&__p, &v9, &v4[4], v4[9].u64[1], 1);
    if (&__p == a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    DimensionOrderHint::DimensionOrderHint(&__p, 2);
    if (&__p == a2)
    {
      goto LABEL_6;
    }
  }

  std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a2, __p, v7, (v7 - __p) >> 2);
LABEL_6:
  *(a2 + 24) = v8;
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }
}

void sub_1A68C5974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
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

uint64_t ZinIrLiveIOManager::PrepareBindingsForLiveInsWith4CC(const ZinIrHalParameters **a1, unsigned int a2, ZinIrContext *a3, void *a4, ZinIrNetworkStatus *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a2;
  if ((a2 & 0xFFFFFFFD) != 0)
  {
    ZinAssertImpl("PrepareBindingsForLiveInsWith4CC should not be called on live outputs", a4);
  }

  v6 = std::map<ZinIrDimension,unsigned long>::at((a1 + 5), &v13);
  v11 = std::map<ZinIrDimension,unsigned long>::at((a1 + 2), &v13);
  std::map<ZinIrDimension,unsigned long>::at((a1 + 11), &v13);
  v7 = *v6;
  if (*v6 != v6 + 1)
  {
    *&v14 = v7 + 32;
    v8 = std::__tree<std::__value_type<std::string,ZinIrIOInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrIOInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrIOInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v11, (v7 + 32), &std::piecewise_construct, &v14, v12);
    v9 = ZinIr4CCInfo::ZinIr4CCInfo(v12, *(v8 + 65));
    ZinIr4CCInfo::IsCompressed(v9);
    ZinIr4CCInfo::GetPlaneCount(v12);
    operator new();
  }

  return 1;
}

void sub_1A68C60D0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (a62)
  {
    (*(*a62 + 8))(a62, a2, a3, a4, a5, a6, a7, a8);
  }

  v64 = *(v62 - 240);
  if (v64)
  {
    *(v62 - 232) = v64;
    operator delete(v64);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrLiveIOManager::PrepareLiveInBinding(const ZinIrHalParameters **a1, ZinIrContext *a2, void *a3, ZinIrNetworkStatus *a4)
{
  result = ZinIrLiveIOManager::PrepareBindingsForLiveInsWithout4CC(a1, 0, a2, a3, a4);
  if (result)
  {

    return ZinIrLiveIOManager::PrepareBindingsForLiveInsWith4CC(a1, 0, a2, a3, a4);
  }

  return result;
}

uint64_t ZinIrLiveIOManager::PrepareLiveStateBinding(const ZinIrHalParameters **a1, ZinIrContext *a2, void *a3, ZinIrNetworkStatus *a4)
{
  v9 = 2;
  if (std::map<ZinIrDimension,unsigned long>::at((a1 + 5), &v9)[2])
  {
    ZinAssertImpl("State with 4cc format are not supported");
  }

  return ZinIrLiveIOManager::PrepareBindingsForLiveInsWithout4CC(a1, 2u, a2, a3, a4);
}

uint64_t ZinIrLiveIOManager::PrepareLiveOut(uint64_t **this, CFArrayRef *a2)
{
  v100 = *MEMORY[0x1E69E9840];
  LODWORD(__str.__r_.__value_.__l.__data_) = 1;
  v3 = std::map<ZinIrDimension,unsigned long>::at((this + 8), &__str);
  LODWORD(__str.__r_.__value_.__l.__data_) = 1;
  v4 = std::map<ZinIrDimension,unsigned long>::at((this + 5), &__str);
  LODWORD(__str.__r_.__value_.__l.__data_) = 1;
  v59 = std::map<ZinIrDimension,unsigned long>::at((this + 2), &__str);
  v7 = *v3;
  v5 = v3 + 1;
  v6 = v7;
  if (v7 == v5)
  {
LABEL_34:
    v24 = *v4;
    v58 = v4 + 1;
    if (*v4 == v4 + 1)
    {
      return 1;
    }

    v25 = (this + 33);
    while (1)
    {
      __str.__r_.__value_.__r.__words[0] = (v24 + 4);
      v26 = std::__tree<std::__value_type<std::string,ZinIrIOInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrIOInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrIOInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v59, v24 + 4, &std::piecewise_construct, &__str, &v67);
      v27 = *(v26 + 65);
      ZinIr4CCInfo::ZinIr4CCInfo(&v67, v27);
      PlaneCount = ZinIr4CCInfo::GetPlaneCount(&v67);
      __str.__r_.__value_.__r.__words[0] = 0;
      std::vector<ZinIrTensor *>::vector[abi:ne200100](&v65, PlaneCount, &__str);
      __str.__r_.__value_.__r.__words[0] = (v24 + 4);
      v29 = std::__tree<std::__value_type<std::string,std::vector<ZinIrTensor *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<ZinIrTensor *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<ZinIrTensor *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 26, v24 + 4, &std::piecewise_construct, &__str, &v74) + 7;
      if (v29 != &v65)
      {
        std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>::__assign_with_size[abi:ne200100]<NodeKey<std::shared_ptr<ZinIrHazardNode>>*,NodeKey<std::shared_ptr<ZinIrHazardNode>>*>(v29, v65, v66, (v66 - v65) >> 3);
      }

      v30 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((this + 23), v26 + 80);
      v31 = v30;
      if (this + 24 == v30)
      {
        ZinIrIOInfo::ZinIrIOInfo(&__str, (v26 + 7));
        v99 = 0;
        v45 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((this + 32), v26 + 80);
        if (v25 == v45)
        {
          v74 = (v26 + 10);
          v46 = std::__tree<std::__value_type<std::string,ZinIrLiveOutTensorInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrLiveOutTensorInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrLiveOutTensorInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 32, v26 + 10, &std::piecewise_construct, &v74, &v73);
          std::string::operator=((v46 + 7), &__str);
          std::string::operator=((v46 + 10), &v78);
          v47 = v86;
          v49 = v87;
          v48 = v88;
          *(v46 + 25) = v85;
          *(v46 + 27) = v47;
          *(v46 + 29) = v49;
          *(v46 + 31) = v48;
          v50 = v82;
          v52 = v83;
          v51 = v84;
          *(v46 + 17) = v81;
          *(v46 + 19) = v50;
          *(v46 + 21) = v52;
          *(v46 + 23) = v51;
          v53 = v80;
          *(v46 + 13) = v79;
          *(v46 + 15) = v53;
          if (v46 + 7 != &__str)
          {
            std::vector<ZinIrIOFourccPlaneInfo>::__assign_with_size[abi:ne200100]<ZinIrIOFourccPlaneInfo*,ZinIrIOFourccPlaneInfo*>(v46 + 33, v89, v90, (v90 - v89) >> 4);
          }

          *(v46 + 18) = v91;
          std::__optional_storage_base<ZinIrShardingMap,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrShardingMap,false> const&>((v46 + 38), &v92);
          *(v46 + 96) = v99;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ZinIrLiveIOManager::PrepareLiveOut(&v61, v62);
          }

          ZinIrNetworkStatus::SetError(a2, @"DuplicateOutput");
        }

        if (v98 == 1)
        {
          if (__p)
          {
            v97 = __p;
            operator delete(__p);
          }

          if (v94)
          {
            v95 = v94;
            operator delete(v94);
          }

          if (v92)
          {
            v93 = v92;
            operator delete(v92);
          }
        }

        if (v89)
        {
          v90 = v89;
          operator delete(v89);
        }

        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (v25 == v45)
        {
LABEL_90:
          v54 = 1;
          goto LABEL_91;
        }
      }

      else if (*(v30 + 136) == v27)
      {
        v32 = *(v30 + 96);
        if (*(v30 + 104) == v32)
        {
          goto LABEL_90;
        }

        v33 = 0;
        v34 = 0;
        while (1)
        {
          ZinIrIOInfo::ZinIrIOInfo(&__str, (v26 + 7));
          v35 = (v32 + 24 * v33);
          v99 = v34;
          v36 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((this + 32), v35);
          if (v25 == v36)
          {
            v74 = v35;
            v37 = std::__tree<std::__value_type<std::string,ZinIrLiveOutTensorInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrLiveOutTensorInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrLiveOutTensorInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 32, v35, &std::piecewise_construct, &v74, &v73);
            std::string::operator=((v37 + 7), &__str);
            std::string::operator=((v37 + 10), &v78);
            v38 = v86;
            v40 = v87;
            v39 = v88;
            *(v37 + 25) = v85;
            *(v37 + 27) = v38;
            *(v37 + 29) = v40;
            *(v37 + 31) = v39;
            v41 = v82;
            v43 = v83;
            v42 = v84;
            *(v37 + 17) = v81;
            *(v37 + 19) = v41;
            *(v37 + 21) = v43;
            *(v37 + 23) = v42;
            v44 = v80;
            *(v37 + 13) = v79;
            *(v37 + 15) = v44;
            if (v37 + 7 != &__str)
            {
              std::vector<ZinIrIOFourccPlaneInfo>::__assign_with_size[abi:ne200100]<ZinIrIOFourccPlaneInfo*,ZinIrIOFourccPlaneInfo*>(v37 + 33, v89, v90, (v90 - v89) >> 4);
            }

            *(v37 + 18) = v91;
            std::__optional_storage_base<ZinIrShardingMap,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrShardingMap,false> const&>((v37 + 38), &v92);
            *(v37 + 96) = v99;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ZinIrLiveIOManager::PrepareLiveOut(&v63, v64);
            }

            ZinIrNetworkStatus::SetError(a2, @"DuplicateOutput");
          }

          if (v98 == 1)
          {
            if (__p)
            {
              v97 = __p;
              operator delete(__p);
            }

            if (v94)
            {
              v95 = v94;
              operator delete(v94);
            }

            if (v92)
            {
              v93 = v92;
              operator delete(v92);
            }
          }

          if (v89)
          {
            v90 = v89;
            operator delete(v89);
          }

          if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v78.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (v25 != v36)
          {
            break;
          }

          v32 = *(v31 + 96);
          v33 = ++v34;
          if (0xAAAAAAAAAAAAAAABLL * ((*(v31 + 104) - v32) >> 3) <= v34)
          {
            goto LABEL_90;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinIrLiveIOManager::PrepareLiveOut(&v75, v26, v26 + 7, &v76);
        }

        ZinIrNetworkStatus::SetError(a2, @"InvalidOutput");
      }

      v54 = 0;
LABEL_91:
      if (v65)
      {
        v66 = v65;
        operator delete(v65);
      }

      if (v69)
      {
        v70 = v69;
        operator delete(v69);
      }

      if (v54)
      {
        v55 = v24[1];
        if (v55)
        {
          do
          {
            v56 = v55;
            v55 = *v55;
          }

          while (v55);
        }

        else
        {
          do
          {
            v56 = v24[2];
            v23 = *v56 == v24;
            v24 = v56;
          }

          while (!v23);
        }

        v24 = v56;
        if (v56 != v58)
        {
          continue;
        }
      }

      return v54;
    }
  }

  v8 = (this + 33);
  while (1)
  {
    __str.__r_.__value_.__r.__words[0] = (v6 + 4);
    v9 = std::__tree<std::__value_type<std::string,ZinIrIOInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrIOInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrIOInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v59, v6 + 4, &std::piecewise_construct, &__str, &v67);
    __str.__r_.__value_.__r.__words[0] = 0;
    v68 = 0;
    v69 = 0;
    v67 = 0;
    std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer * const*,ZinIrOpLayer * const*>(&v67, &__str, &__str.__r_.__value_.__l.__size_, 1uLL);
    __str.__r_.__value_.__r.__words[0] = (v6 + 4);
    v10 = std::__tree<std::__value_type<std::string,std::vector<ZinIrTensor *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<ZinIrTensor *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<ZinIrTensor *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 26, v6 + 4, &std::piecewise_construct, &__str, &v65) + 7;
    if (v10 != &v67)
    {
      std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>::__assign_with_size[abi:ne200100]<NodeKey<std::shared_ptr<ZinIrHazardNode>>*,NodeKey<std::shared_ptr<ZinIrHazardNode>>*>(v10, v67, v68, (v68 - v67) >> 3);
    }

    ZinIrIOInfo::ZinIrIOInfo(&__str, (v9 + 7));
    v11 = (v9 + 10);
    v99 = 0;
    v12 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((this + 32), v11);
    if (v8 == v12)
    {
      v65 = v11;
      v13 = std::__tree<std::__value_type<std::string,ZinIrLiveOutTensorInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrLiveOutTensorInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrLiveOutTensorInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 32, v11, &std::piecewise_construct, &v65, &v75);
      std::string::operator=((v13 + 7), &__str);
      std::string::operator=((v13 + 10), &v78);
      v14 = v86;
      v16 = v87;
      v15 = v88;
      *(v13 + 25) = v85;
      *(v13 + 27) = v14;
      *(v13 + 29) = v16;
      *(v13 + 31) = v15;
      v17 = v82;
      v19 = v83;
      v18 = v84;
      *(v13 + 17) = v81;
      *(v13 + 19) = v17;
      *(v13 + 21) = v19;
      *(v13 + 23) = v18;
      v20 = v80;
      *(v13 + 13) = v79;
      *(v13 + 15) = v20;
      if (v13 + 7 != &__str)
      {
        std::vector<ZinIrIOFourccPlaneInfo>::__assign_with_size[abi:ne200100]<ZinIrIOFourccPlaneInfo*,ZinIrIOFourccPlaneInfo*>(v13 + 33, v89, v90, (v90 - v89) >> 4);
      }

      *(v13 + 18) = v91;
      std::__optional_storage_base<ZinIrShardingMap,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ZinIrShardingMap,false> const&>((v13 + 38), &v92);
      *(v13 + 96) = v99;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinIrLiveIOManager::PrepareLiveOut(&v71, v72);
      }

      ZinIrNetworkStatus::SetError(a2, @"DuplicateOutput");
    }

    if (v98 == 1)
    {
      if (__p)
      {
        v97 = __p;
        operator delete(__p);
      }

      if (v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      if (v92)
      {
        v93 = v92;
        operator delete(v92);
      }
    }

    if (v89)
    {
      v90 = v89;
      operator delete(v89);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v67)
    {
      v68 = v67;
      operator delete(v67);
    }

    if (v8 != v12)
    {
      return 0;
    }

    v21 = v6[1];
    if (v21)
    {
      do
      {
        v22 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = v6[2];
        v23 = *v22 == v6;
        v6 = v22;
      }

      while (!v23);
    }

    v6 = v22;
    if (v22 == v5)
    {
      goto LABEL_34;
    }
  }
}

void sub_1A68C6CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrLiveIOManager::CreateOutputTensor(const ZinIrHalParameters **a1@<X0>, char *a3@<X2>, int a5@<W4>, CFArrayRef *a7@<X6>, const ZinTensorAxisTypePacked *a8@<X7>, void *a9@<X8>)
{
  v23 = 0;
  v24 = 0;
  v14 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>((a1 + 32), a3);
  if (a1 + 33 == v14)
  {
    v22 = 0;
    v18 = 0;
    v19 = 0;
    *&v20 = 0;
    *(&v20 + 7) = 0;
    ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(v21, a8);
    ZinIrTensor::CreateTensor();
  }

  v15 = v14;
  if (*(v14 + 256))
  {
    v16 = ZinIr4CCInfo::ZinIr4CCInfo(&v18, *(v14 + 260));
    *v17 = 0;
    if (ZinIr4CCInfo::GetPlaneFormat(v16, *(v15 + 384), &v17[1]) && ZinIr4CCInfo::GetPlaneInterleave(&v18, *(v15 + 384), v17))
    {
      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrLiveIOManager::CreateOutputTensor();
    }

    ZinIrNetworkStatus::SetError(a7, @"InvalidOutput");
    *a9 = 0;
    a9[1] = 0;
    if (v20)
    {
      *(&v20 + 1) = v20;
      operator delete(v20);
    }
  }

  else
  {
    if (!*(v14 + 384))
    {
      if (!*(v14 + 104))
      {
        *(v14 + 104) = a5;
      }

      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrLiveIOManager::CreateOutputTensor();
    }

    ZinIrNetworkStatus::SetError(a7, @"InvalidOutput");
    *a9 = 0;
    a9[1] = 0;
  }
}

void sub_1A68C7584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  v51 = *(v49 - 240);
  if (v51)
  {
    *(v49 - 232) = v51;
    operator delete(v51);
  }

  (*(*v48 + 8))(v48, a2, a3, a4, a5, a6, a7, a8);
  v52 = *(v49 - 192);
  if (v52)
  {
    *(v49 - 184) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrLiveIOManager::PrepareLiveOutBinding(uint64_t a1, uint64_t a2, uint64_t *a3, CFArrayRef *a4)
{
  __p.n128_u32[0] = 1;
  v7 = std::map<ZinIrDimension,unsigned long>::at(a1 + 64, &__p);
  __p.n128_u32[0] = 1;
  v8 = std::map<ZinIrDimension,unsigned long>::at(a1 + 40, &__p);
  __p.n128_u32[0] = 1;
  v9 = std::map<ZinIrDimension,unsigned long>::at(a1 + 16, &__p);
  v12 = *v7;
  v10 = v7 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    while (1)
    {
      v13 = std::map<std::string,std::string>::at(v9, v11 + 4);
      v14 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(a1 + 208, v11 + 32);
      if (a1 + 216 == v14)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinIrLiveIOManager::PrepareLiveOutBinding();
        }

        ZinIrNetworkStatus::SetError(a4, @"InvalidOutput");
        return 0;
      }

      __p = 0uLL;
      v37 = 0;
      std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, *(v14 + 56), *(v14 + 64), (*(v14 + 64) - *(v14 + 56)) >> 3);
      if (__p.n128_u64[1] - __p.n128_u64[0] != 8)
      {
        break;
      }

      ZinIrBindings::AddUncompressedMapping(*a3, v13, 1u, &__p);
      if (v15 || ZinIrBindings::AddIO(*a3, v13, 1, v13))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinIrLiveIOManager::PrepareLiveOutBinding();
        }

        goto LABEL_43;
      }

      if (__p.n128_u64[0])
      {
        __p.n128_u64[1] = __p.n128_u64[0];
        operator delete(__p.n128_u64[0]);
      }

      v16 = v11[1];
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
          v17 = v11[2];
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
      if (v17 == v10)
      {
        goto LABEL_14;
      }
    }

    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v30)
    {
      ZinIrLiveIOManager::PrepareLiveOutBinding(v30, v31, v32);
    }

LABEL_43:
    ZinIrNetworkStatus::SetError(a4, @"InvalidOutput");
    v33 = __p.n128_u64[0];
    if (!__p.n128_u64[0])
    {
      return 0;
    }

    __p.n128_u64[1] = __p.n128_u64[0];
    goto LABEL_50;
  }

LABEL_14:
  v21 = *v8;
  v19 = v8 + 1;
  v20 = v21;
  if (v21 == v19)
  {
    return 1;
  }

  while (1)
  {
    v22 = std::map<std::string,std::string>::at(v9, v20 + 4);
    ZinIr4CCInfo::ZinIr4CCInfo(&__p, *(v22 + 204));
    IsCompressed = ZinIr4CCInfo::IsCompressed(&__p);
    v24 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(a1 + 208, v20 + 32);
    if (a1 + 216 == v24)
    {
      break;
    }

    v34 = 0uLL;
    v35 = 0;
    std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v34, *(v24 + 56), *(v24 + 64), (*(v24 + 64) - *(v24 + 56)) >> 3);
    v25 = *a3;
    if (IsCompressed)
    {
      ZinIrBindings::AddCompressedMapping(v25, v22, 1u, &v34);
    }

    else
    {
      ZinIrBindings::AddUncompressedMapping(v25, v22, 1u, &v34);
    }

    if (v26 || ZinIrBindings::AddIO(*a3, v22, 1, v22))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinIrLiveIOManager::PrepareLiveOutBinding();
      }

      ZinIrNetworkStatus::SetError(a4, @"InvalidOutput");
      if (v34.n128_u64[0])
      {
        v34.n128_u64[1] = v34.n128_u64[0];
        operator delete(v34.n128_u64[0]);
      }

      goto LABEL_48;
    }

    if (v34.n128_u64[0])
    {
      v34.n128_u64[1] = v34.n128_u64[0];
      operator delete(v34.n128_u64[0]);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    v27 = v20[1];
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      do
      {
        v28 = v20[2];
        v18 = *v28 == v20;
        v20 = v28;
      }

      while (!v18);
    }

    v20 = v28;
    if (v28 == v19)
    {
      return 1;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinIrLiveIOManager::PrepareLiveOutBinding();
  }

  ZinIrNetworkStatus::SetError(a4, @"InvalidOutput");
LABEL_48:
  v33 = v37;
  if (v37)
  {
    v38 = v37;
LABEL_50:
    operator delete(v33);
  }

  return 0;
}

void sub_1A68C7C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinIrLiveIOManager::ValidateMultiplanarLiveOutput(ZinIrLiveIOManager *this)
{
  *(&v35[1] + 4) = *MEMORY[0x1E69E9840];
  v29[0] = 1;
  v1 = std::map<ZinIrDimension,unsigned long>::at(this + 40, v29);
  v29[0] = 1;
  v2 = std::map<ZinIrDimension,unsigned long>::at(this + 16, v29);
  v5 = *v1;
  v3 = v1 + 1;
  v4 = v5;
  if (v5 == v3)
  {
    return 1;
  }

  v6 = v2;
  v7 = v2 + 1;
  v25 = vdupq_n_s64(1uLL);
  while (1)
  {
    v8 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(v6, (v4 + 32));
    if (v7 == v8)
    {
      break;
    }

    ZinIr4CCInfo::ZinIr4CCInfo(v29, *(v8 + 260));
    PlaneCount = ZinIr4CCInfo::GetPlaneCount(v29);
    if (PlaneCount == 1)
    {
      v10 = 3;
      goto LABEL_25;
    }

    v11 = std::__tree<std::__value_type<std::string,ZinIrName>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrName>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrName>>>::find<std::string>(this + 208, (v4 + 32));
    v12 = v11;
    if ((this + 216) == v11 || (v13 = v11[7], PlaneCount != (v11[8] - v13) >> 3))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinIrLiveIOManager::ValidateMultiplanarLiveOutput(v34, v4, (v4 + 32), v35);
      }

LABEL_24:
      v10 = 1;
      goto LABEL_25;
    }

    if (PlaneCount)
    {
      v14 = 0;
      v15 = *v13;
      while (1)
      {
        v27[0] = v25;
        v27[1] = v25;
        v28 = 1;
        v26 = 0;
        if (!ZinIr4CCInfo::GetPlaneInfo(v29, v14, v15[11], v15[10], v15[9], v27, &v26 + 1, &v26))
        {
          goto LABEL_24;
        }

        v16 = *(v12[7] + 8 * v14);
        Interleave = ZinIrTensor::GetInterleave(v16);
        if (v18)
        {
          v19 = Interleave;
        }

        else
        {
          v19 = 1;
        }

        if (!ZinTensorDimensionsEqual(v27, (v16 + 64)) || (HIDWORD(v26) == *(v16 + 104) ? (v20 = v19 == v26) : (v20 = 0), !v20))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ZinIrLiveIOManager::ValidateMultiplanarLiveOutput(v32, v4, (v4 + 32), &v33);
          }

          goto LABEL_24;
        }

        v10 = 0;
        if (PlaneCount == ++v14)
        {
          goto LABEL_25;
        }
      }
    }

    v10 = 0;
LABEL_25:
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v10 != 3 && v10)
    {
      return 0;
    }

    v21 = *(v4 + 8);
    if (v21)
    {
      do
      {
        v22 = v21;
        v21 = *v21;
      }

      while (v21);
    }

    else
    {
      do
      {
        v22 = *(v4 + 16);
        v20 = *v22 == v4;
        v4 = v22;
      }

      while (!v20);
    }

    v4 = v22;
    if (v22 == v3)
    {
      return 1;
    }
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (!result)
  {
    return result;
  }

  ZinIrLiveIOManager::ValidateMultiplanarLiveOutput();
  return 0;
}

void sub_1A68C7F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrLiveIOManager::PrepareLiveInParamBinding(uint64_t a1, uint64_t a2, void *a3, ZinIrNetworkStatus *a4)
{
  if (*(a1 + 160) != a1 + 168)
  {
    operator new();
  }

  return 1;
}

void *std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<ZinIrTensor>,std::__tree_node<std::shared_ptr<ZinIrTensor>,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::insert[abi:ne200100]<std::__tree_const_iterator<std::shared_ptr<ZinIrTensor>,std::__tree_node<std::shared_ptr<ZinIrTensor>,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::__emplace_hint_unique_key_args<std::shared_ptr<ZinIrTensor>,std::shared_ptr<ZinIrTensor> const&>(v5, (v5 + 8), v4 + 4, v4 + 4);
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

void *std::__tree<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::__emplace_hint_unique_key_args<std::shared_ptr<ZinIrTensor>,std::shared_ptr<ZinIrTensor> const&>(uint64_t **a1, void *a2, uint64_t *a3, void *a4)
{
  v4 = *std::__tree<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::__find_equal<std::shared_ptr<ZinIrTensor>>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::__find_equal<std::shared_ptr<ZinIrTensor>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_5;
  }

  v5 = *a5;
  v6 = a2[4];
  if (!*a5)
  {
    if (!v6)
    {
      goto LABEL_25;
    }

LABEL_12:
    v12 = a2[1];
    if (v12)
    {
      v13 = a2[1];
      do
      {
        a4 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      v17 = a2;
      do
      {
        a4 = v17[2];
        v15 = *a4 == v17;
        v17 = a4;
      }

      while (!v15);
    }

    if (a4 == a1 + 1 || v5 && ((v18 = a4[4]) == 0 || *(v5 + 24) < *(v18 + 24)))
    {
      if (v12)
      {
        *a3 = a4;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }

      return a4;
    }

    return std::__tree<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::__find_equal<std::shared_ptr<ZinIrTensor>>(a1, a3, a5);
  }

  if (!v6 || (v7 = *(v5 + 24), v8 = *(v6 + 24), v7 < v8))
  {
LABEL_5:
    v9 = *a2;
    if (*a1 == a2)
    {
      v11 = a2;
LABEL_21:
      if (v9)
      {
        *a3 = v11;
        return v11 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v9)
    {
      v10 = *a2;
      do
      {
        v11 = v10;
        v10 = v10[1];
      }

      while (v10);
    }

    else
    {
      v14 = a2;
      do
      {
        v11 = v14[2];
        v15 = *v11 == v14;
        v14 = v11;
      }

      while (v15);
    }

    v16 = v11[4];
    if (v16 && (!*a5 || *(v16 + 24) < *(*a5 + 24)))
    {
      goto LABEL_21;
    }

    return std::__tree<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::__find_equal<std::shared_ptr<ZinIrTensor>>(a1, a3, a5);
  }

  if (v8 < v7)
  {
    goto LABEL_12;
  }

LABEL_25:
  *a3 = a2;
  *a4 = a2;
  return a4;
}

uint64_t std::vector<ZinIrIOInfo>::__emplace_back_slow_path<ZinIrIOInfo>(unint64_t *a1, __int128 *a2)
{
  v2 = 0x8F9C18F9C18F9C19 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xC7CE0C7CE0C7CELL)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1F3831F3831F3832 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1F3831F3831F3832 * ((a1[2] - *a1) >> 3);
  }

  if (0x8F9C18F9C18F9C19 * ((a1[2] - *a1) >> 3) >= 0x63E7063E7063E7)
  {
    v6 = 0xC7CE0C7CE0C7CELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrIOInfo>>(a1, v6);
  }

  v13 = 0;
  v14 = 328 * v2;
  std::allocator_traits<std::allocator<ZinIrIOInfo>>::construct[abi:ne200100]<ZinIrIOInfo,ZinIrIOInfo,void,0>(a1, 328 * v2, a2);
  v15 = 328 * v2 + 328;
  v7 = a1[1];
  v8 = 328 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinIrIOInfo>,ZinIrIOInfo*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ZinIrIOInfo>::~__split_buffer(&v13);
  return v12;
}

void sub_1A68C8520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ZinIrIOInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<ZinIrIOInfo>>::construct[abi:ne200100]<ZinIrIOInfo,ZinIrIOInfo,void,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *(a2 + 16) = *(a3 + 2);
  *a2 = v3;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  v4 = *(a3 + 24);
  *(a2 + 40) = *(a3 + 5);
  *(a2 + 24) = v4;
  a3[2] = 0uLL;
  *(a3 + 3) = 0;
  v5 = a3[4];
  *(a2 + 48) = a3[3];
  *(a2 + 64) = v5;
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[8];
  *(a2 + 112) = a3[7];
  *(a2 + 128) = v8;
  *(a2 + 80) = v6;
  *(a2 + 96) = v7;
  v9 = a3[9];
  v10 = a3[10];
  v11 = a3[12];
  *(a2 + 176) = a3[11];
  *(a2 + 192) = v11;
  *(a2 + 144) = v9;
  *(a2 + 160) = v10;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 208) = 0;
  *(a2 + 208) = a3[13];
  *(a2 + 224) = *(a3 + 28);
  *(a3 + 216) = 0uLL;
  *(a3 + 26) = 0;
  result = *(a3 + 232);
  *(a2 + 248) = 0;
  *(a2 + 232) = result;
  *(a2 + 320) = 0;
  if (*(a3 + 320) == 1)
  {
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
    *(a2 + 248) = *(a3 + 248);
    *(a2 + 264) = *(a3 + 33);
    *(a3 + 248) = 0uLL;
    *(a3 + 33) = 0;
    *(a2 + 272) = 0;
    *(a2 + 280) = 0;
    *(a2 + 288) = 0;
    *(a2 + 272) = a3[17];
    *(a2 + 288) = *(a3 + 36);
    a3[17] = 0uLL;
    *(a3 + 36) = 0;
    *(a2 + 296) = 0;
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(a2 + 296) = *(a3 + 37);
    result = a3[19];
    *(a2 + 304) = result;
    *(a3 + 296) = 0uLL;
    *(a3 + 39) = 0;
    *(a2 + 320) = 1;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrIOInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xC7CE0C7CE0C7CFLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinIrIOInfo>,ZinIrIOInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      std::allocator_traits<std::allocator<ZinIrIOInfo>>::construct[abi:ne200100]<ZinIrIOInfo,ZinIrIOInfo,void,0>(a1, a4, v7);
      v7 = (v7 + 328);
      a4 = v12 + 328;
      v12 += 328;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ZinIrIOInfo>>::destroy[abi:ne200100]<ZinIrIOInfo,void,0>(a1, v5);
      v5 = (v5 + 328);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ZinIrIOInfo>,ZinIrIOInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<ZinIrIOInfo>>::destroy[abi:ne200100]<ZinIrIOInfo,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 320) == 1)
  {
    v3 = *(a2 + 296);
    if (v3)
    {
      *(a2 + 304) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 272);
    if (v4)
    {
      *(a2 + 280) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 248);
    if (v5)
    {
      *(a2 + 256) = v5;
      operator delete(v5);
    }
  }

  v6 = *(a2 + 208);
  if (v6)
  {
    *(a2 + 216) = v6;
    operator delete(v6);
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v7 = *a2;

    operator delete(v7);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ZinIrIOInfo>,ZinIrIOInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ZinIrIOInfo>,ZinIrIOInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ZinIrIOInfo>,ZinIrIOInfo*>::operator()[abi:ne200100](uint64_t *a1)
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
      v3 -= 328;
      std::allocator_traits<std::allocator<ZinIrIOInfo>>::destroy[abi:ne200100]<ZinIrIOInfo,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ZinIrIOInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ZinIrIOInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ZinIrIOInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 328;
    std::allocator_traits<std::allocator<ZinIrIOInfo>>::destroy[abi:ne200100]<ZinIrIOInfo,void,0>(v5, v4 - 328);
  }
}

void std::vector<ZinIrIOInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ZinIrIOInfo>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ZinIrIOInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ZinIrIOInfo>>::destroy[abi:ne200100]<ZinIrIOInfo,void,0>(a1, i))
  {
    i -= 328;
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<ZinIrInputParamInfo>::__emplace_back_slow_path<ZinIrInputParamInfo>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ControlEdgeInfo>>(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 6);
  *&v18 = 32 * v2 + 32;
  v10 = a1[1];
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinIrInputParamInfo>,ZinIrInputParamInfo*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<ControlEdgeInfo>::~__split_buffer(&v16);
  return v15;
}

void sub_1A68C8AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ControlEdgeInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinIrInputParamInfo>,ZinIrInputParamInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 6);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ZinIrInputParamInfo>,ZinIrInputParamInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ZinIrInputParamInfo>,ZinIrInputParamInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ControlEdgeInfo>,ControlEdgeInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::vector<ZinIrIOFourccPlaneInfo>::__assign_with_size[abi:ne200100]<ZinIrIOFourccPlaneInfo*,ZinIrIOFourccPlaneInfo*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<ZinIrSliceSizeInfo>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t *std::vector<std::string>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, __int128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

uint64_t *std::vector<ZinIrTensor *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<ZinIrOpLayer *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1A68C8E80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::map<IOType,std::set<std::string>>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<IOType,std::set<std::string>>,std::__map_value_compare<IOType,std::__value_type<IOType,std::set<std::string>>,std::less<IOType>,true>,std::allocator<std::__value_type<IOType,std::set<std::string>>>>::__emplace_hint_unique_key_args<IOType,std::pair<IOType const,std::set<std::string>> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<IOType,std::set<std::string>>,std::__map_value_compare<IOType,std::__value_type<IOType,std::set<std::string>>,std::less<IOType>,true>,std::allocator<std::__value_type<IOType,std::set<std::string>>>>::__emplace_hint_unique_key_args<IOType,std::pair<IOType const,std::set<std::string>> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<ZinIrDimension,unsigned long>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,unsigned long>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,unsigned long>>>::__find_equal<ZinIrDimension>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<IOType,std::set<std::string>>,std::__map_value_compare<IOType,std::__value_type<IOType,std::set<std::string>>,std::less<IOType>,true>,std::allocator<std::__value_type<IOType,std::set<std::string>>>>::__construct_node<std::pair<IOType const,std::set<std::string>> const&>();
  }

  return result;
}

void sub_1A68C9020(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<IOType,std::set<std::string>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<IOType,std::set<std::string>>,void *>>>::operator()[abi:ne200100](uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::string>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t **std::map<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>::map[abi:ne200100](uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>,std::__map_value_compare<IOType,std::__value_type<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>,std::less<IOType>,true>,std::allocator<std::__value_type<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>>>::__emplace_hint_unique_key_args<IOType,std::pair<IOType const,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>> const&>(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>,std::__map_value_compare<IOType,std::__value_type<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>,std::less<IOType>,true>,std::allocator<std::__value_type<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>>>::__emplace_hint_unique_key_args<IOType,std::pair<IOType const,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<ZinIrDimension,unsigned long>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,unsigned long>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,unsigned long>>>::__find_equal<ZinIrDimension>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>,std::__map_value_compare<IOType,std::__value_type<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>,std::less<IOType>,true>,std::allocator<std::__value_type<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>>>::__construct_node<std::pair<IOType const,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>> const&>();
  }

  return result;
}

void sub_1A68C9220(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<IOType,std::set<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__tree<std::__value_type<std::string,ZinIrPlaneReaderUnitInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrPlaneReaderUnitInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrPlaneReaderUnitInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,ZinIrPlaneReaderUnitInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrPlaneReaderUnitInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrPlaneReaderUnitInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,ZinIrPlaneReaderUnitInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ZinIrPlaneReaderUnitInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,ZinIrPlaneWriterUnitInfo>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE24ZinIrPlaneReaderUnitInfoEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSD_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSM_IJXspT2_EEEE(std::string *this, __int128 **a2)
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

  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  *&this[2].__r_.__value_.__r.__words[2] = 0u;
  *&this[3].__r_.__value_.__r.__words[1] = 0u;
  this[4].__r_.__value_.__r.__words[0] = -1;
  this[1].__r_.__value_.__r.__words[0] = &unk_1F19CA950;
  HIDWORD(this[4].__r_.__value_.__r.__words[1]) = -1;
  return this;
}

void *std::__tree<std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrPlaneWriterUnitInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE24ZinIrPlaneWriterUnitInfoEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSD_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSM_IJXspT2_EEEE(std::string *this, __int128 **a2)
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

  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  *&this[2].__r_.__value_.__r.__words[2] = 0u;
  *&this[3].__r_.__value_.__r.__words[1] = 0u;
  this[4].__r_.__value_.__r.__words[0] = -1;
  this[1].__r_.__value_.__r.__words[0] = &unk_1F19DCC70;
  return this;
}

void *std::__tree<std::__value_type<std::string,ZinIrIOInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrIOInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrIOInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,ZinIrIOInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrIOInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrIOInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE11ZinIrIOInfoEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSD_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSM_IJXspT2_EEEE(std::string *this, __int128 **a2)
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

  this[14].__r_.__value_.__l.__size_ = 0;
  *&this[10].__r_.__value_.__r.__words[1] = 0u;
  *&this[9].__r_.__value_.__r.__words[2] = 0u;
  *&this[9].__r_.__value_.__l.__data_ = 0u;
  *&this[8].__r_.__value_.__r.__words[1] = 0u;
  *&this[7].__r_.__value_.__r.__words[2] = 0u;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  *&this[5].__r_.__value_.__r.__words[2] = 0u;
  *&this[5].__r_.__value_.__l.__data_ = 0u;
  *&this[4].__r_.__value_.__r.__words[1] = 0u;
  *&this[3].__r_.__value_.__r.__words[2] = 0u;
  *&this[3].__r_.__value_.__l.__data_ = 0u;
  *&this[2].__r_.__value_.__r.__words[1] = 0u;
  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[13].__r_.__value_.__l.__data_ = 0u;
  *&this[13].__r_.__value_.__r.__words[2] = 0u;
  *&this[11].__r_.__value_.__r.__words[2] = 0u;
  *&this[12].__r_.__value_.__r.__words[1] = 0u;
  *&this[11].__r_.__value_.__l.__data_ = 0u;
  this[4].__r_.__value_.__r.__words[2] = -1;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *&this[3].__r_.__value_.__r.__words[1] = v5;
  *&this[4].__r_.__value_.__l.__data_ = v5;
  this[6].__r_.__value_.__s.__data_[16] = 0;
  this[9].__r_.__value_.__r.__words[0] = -1;
  *&this[7].__r_.__value_.__l.__data_ = v5;
  *&this[7].__r_.__value_.__r.__words[2] = v5;
  *(this[8].__r_.__value_.__r.__words + 4) = v5;
  *(&this[9].__r_.__value_.__r.__words[1] + 4) = 0;
  *(this[10].__r_.__value_.__r.__words + 4) = 0;
  *(&this[9].__r_.__value_.__r.__words[2] + 4) = 0;
  *(&this[10].__r_.__value_.__r.__words[1] + 4) = 0x500000000;
  this[11].__r_.__value_.__r.__words[0] = -1;
  this[14].__r_.__value_.__s.__data_[8] = 0;
  return this;
}

char *std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,ZinIrInputParamInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrInputParamInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrInputParamInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

void *std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

void *std::__tree<std::__value_type<std::string,std::vector<ZinIrTensor *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<ZinIrTensor *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<ZinIrTensor *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::vector<ZinIrTensor *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<ZinIrTensor *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<ZinIrTensor *>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<ZinIrTensor *>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<ZinIrTensor *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<ZinIrTensor *>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,ZinIrLiveOutTensorInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrLiveOutTensorInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrLiveOutTensorInfo>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::string>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,ZinIrLiveOutTensorInfo>,std::__map_value_compare<std::string,std::__value_type<std::string,ZinIrLiveOutTensorInfo>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ZinIrLiveOutTensorInfo>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE22ZinIrLiveOutTensorInfoEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSD_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENSM_IJXspT2_EEEE(std::string *this, __int128 **a2)
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

  *&this[10].__r_.__value_.__r.__words[1] = 0u;
  *&this[9].__r_.__value_.__r.__words[2] = 0u;
  *&this[9].__r_.__value_.__l.__data_ = 0u;
  *&this[8].__r_.__value_.__r.__words[1] = 0u;
  *&this[7].__r_.__value_.__r.__words[2] = 0u;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  *&this[6].__r_.__value_.__r.__words[1] = 0u;
  *&this[5].__r_.__value_.__r.__words[2] = 0u;
  *&this[5].__r_.__value_.__l.__data_ = 0u;
  *&this[4].__r_.__value_.__r.__words[1] = 0u;
  *&this[3].__r_.__value_.__r.__words[2] = 0u;
  *&this[3].__r_.__value_.__l.__data_ = 0u;
  *&this[2].__r_.__value_.__r.__words[1] = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[13].__r_.__value_.__r.__words[2] = 0u;
  *&this[14].__r_.__value_.__r.__words[1] = 0u;
  *&this[12].__r_.__value_.__r.__words[1] = 0u;
  *&this[13].__r_.__value_.__l.__data_ = 0u;
  *&this[11].__r_.__value_.__l.__data_ = 0u;
  *&this[11].__r_.__value_.__r.__words[2] = 0u;
  this[4].__r_.__value_.__r.__words[2] = -1;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *&this[3].__r_.__value_.__r.__words[1] = v5;
  *&this[4].__r_.__value_.__l.__data_ = v5;
  this[6].__r_.__value_.__s.__data_[16] = 0;
  this[9].__r_.__value_.__r.__words[0] = -1;
  *&this[7].__r_.__value_.__l.__data_ = v5;
  *&this[7].__r_.__value_.__r.__words[2] = v5;
  *(this[8].__r_.__value_.__r.__words + 4) = v5;
  *(&this[9].__r_.__value_.__r.__words[1] + 4) = 0;
  *(this[10].__r_.__value_.__r.__words + 4) = 0;
  *(&this[9].__r_.__value_.__r.__words[2] + 4) = 0;
  *(&this[10].__r_.__value_.__r.__words[1] + 4) = 0x500000000;
  this[11].__r_.__value_.__r.__words[0] = -1;
  this[14].__r_.__value_.__s.__data_[8] = 0;
  return this;
}

void std::default_delete<ZinIrInputParam>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x1AC55A070);
  }
}

void ZinIrLiveIOManager::PrepareBindingsForLiveInsWithout4CC()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Invalid livein %s\n", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Unable to add binding for livein %s\n", v1, v2, v3, v4);
}

void ZinIrLiveIOManager::PrepareBindingsForLiveInsWith4CC(float *a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a2 + 79) < 0)
  {
    a3 = *a3;
  }

  OUTLINED_FUNCTION_7(4.8149e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_1_2(&dword_1A617D000, MEMORY[0x1E69E9C10], v4, "Invalid livein %s\n", v5);
}

{
  if (*(a2 + 79) < 0)
  {
    a3 = *a3;
  }

  OUTLINED_FUNCTION_7(4.8149e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_1_2(&dword_1A617D000, MEMORY[0x1E69E9C10], v4, "Unable to add binding for livein %s\n", v5);
}

void ZinIrLiveIOManager::PrepareBindingsForLiveInsWith4CC(float *a1, char *a2, void *a3, void *a4)
{
  if (*a2 < 0)
  {
    a3 = *a3;
  }

  OUTLINED_FUNCTION_7(4.8149e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_1_2(&dword_1A617D000, MEMORY[0x1E69E9C10], v4, "Invalid livein %s\n", v5);
}

void ZinIrLiveIOManager::PrepareLiveOut(float *a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a2 + 79) < 0)
  {
    a3 = *a3;
  }

  OUTLINED_FUNCTION_7(4.8149e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_1_2(&dword_1A617D000, MEMORY[0x1E69E9C10], v4, "incompatible 4cc format between plane writer unit and live out %s\n", v5);
}

void ZinIrLiveIOManager::CreateOutputTensor()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Invalid live output tensor %s!\n", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Invalid liveout tensor %s!\n", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Invalid stride for liveout tensor %s!\n", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Invalid plane index for liveout tensor %s!\n", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Invalid liveout %s\n", v1, v2, v3, v4);
}

void ZinIrLiveIOManager::PrepareLiveOutBinding()
{
  OUTLINED_FUNCTION_0_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Unable to add binding for liveout %s\n", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_7_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Invalid live output %s!\n", v1, v2, v3, v4);
}

void ZinIrLiveIOManager::ValidateMultiplanarLiveOutput(float *a1, uint64_t a2, void *a3, void *a4)
{
  if (*(a2 + 55) < 0)
  {
    a3 = *a3;
  }

  OUTLINED_FUNCTION_7(4.8149e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_1_2(&dword_1A617D000, MEMORY[0x1E69E9C10], v4, "Plane dimensions, format or interleave are incompatible for liveout %s\n", v5);
}

{
  if (*(a2 + 55) < 0)
  {
    a3 = *a3;
  }

  OUTLINED_FUNCTION_7(4.8149e-34, a1, a2, a3, a4, a1);
  OUTLINED_FUNCTION_1_2(&dword_1A617D000, MEMORY[0x1E69E9C10], v4, "Invalid number of planes for liveout %s\n", v5);
}

void ZinIrLiveIOManager::ValidateMultiplanarLiveOutput()
{
  OUTLINED_FUNCTION_7_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Invalid liveout %s\n", v1, v2, v3, v4);
}

void ZinIrLiveIOManager::PrepareLiveInParamBinding()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Invalid livein param %s\n", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_7_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Unable to add binding for livein param %s\n", v1, v2, v3, v4);
}

void ZinIrFileBacking::~ZinIrFileBacking(void **this)
{
  *this = &unk_1F19EEAA0;
  ZinIrFileBacking::Close(this);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

BOOL ZinIrFileBacking::Open(uint64_t a1, const void **a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) == -1)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    v7 = __p;
    std::string::basic_string[abi:ne200100](__p, v6 + 26);
    if (v13 < 0)
    {
      v7 = __p[0];
    }

    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      memmove(v7, v8, v6);
    }

    strcpy(v7 + v6, "anecompiler.swap.XXXXXXXXX");
    v9 = __p;
    if (v13 < 0)
    {
      v9 = __p[0];
    }

    snprintf(__str, 0x400uLL, "%s", v9);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v10 = mkstemp(__str);
    v3 = v10 != -1;
    if (v10 == -1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinIrFileBacking::Open();
      }
    }

    else
    {
      *(a1 + 16) = v10;
      *(a1 + 8) = 0;
      std::string::__assign_external((a1 + 24), __str);
      if (unlink(__str))
      {
        v11 = __error();
        strerror(*v11);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinIrFileBacking::Open();
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrFileBacking::Open();
    }

    return 0;
  }

  return v3;
}

void ZinIrFileBacking::Close(ZinIrFileBacking *this)
{
  v2 = *(this + 4);
  if (v2 != -1)
  {
    if (close(v2))
    {
      v3 = __error();
      strerror(*v3);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinIrFileBacking::Close();
      }
    }

    *(this + 4) = -1;
  }
}

void *ZinIrFileBacking::Allocate(ZinIrFileBacking *this, size_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  {
    ZinIrFileBacking::Allocate();
  }

  std::mutex::lock(&ZinIrFileBacking::Allocate(unsigned long long)::allocation_mutex);
  if (((*(*this + 24))(this) & 1) == 0)
  {
    ZinAssertImpl("Internal error: Tried to allocate %llu elements without file backing.", a2);
  }

  if ((*(*this + 16))(this))
  {
    {
      ZinIrFileBacking::Allocate(unsigned long long)::page_size = sysconf(29);
    }

    v4 = *(this + 1);
    *(this + 1) = v4 + ZinAlignPower2(a2, ZinIrFileBacking::Allocate(unsigned long long)::page_size);
    if (ftruncate(*(this + 4), v4 + a2))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = __error();
        v6 = strerror(*v5);
        ZinIrFileBacking::Allocate(v6, buf);
      }
    }

    else
    {
      v7 = mmap(0, a2, 3, 1, *(this + 4), v4);
      if (v7 != -1)
      {
        goto LABEL_12;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = __error();
        v10 = strerror(*v9);
        ZinIrFileBacking::Allocate(v10, buf);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinIrFileBacking::Allocate();
  }

  v7 = 0;
LABEL_12:
  std::mutex::unlock(&ZinIrFileBacking::Allocate(unsigned long long)::allocation_mutex);
  return v7;
}

void sub_1A68CABB4(_Unwind_Exception *a1)
{
  std::mutex::unlock(&ZinIrFileBacking::Allocate(unsigned long long)::allocation_mutex);
  _Unwind_Resume(a1);
}

void ZinIrFileBacking::UnmapSystem(ZinIrFileBacking *this, uint64_t a2)
{
  {
    ZinIrFileBacking::UnmapSystem();
  }

  std::mutex::lock(&ZinIrFileBacking::UnmapSystem(void *,unsigned long)::allocation_mutex);
  v4 = sysconf(29);
  v5 = ZinAlignPower2(a2, v4);
  munmap(this, v5);

  std::mutex::unlock(&ZinIrFileBacking::UnmapSystem(void *,unsigned long)::allocation_mutex);
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E69E5328];

  return __cxa_atexit(v4, a2, a3);
}

void ZinIrFileBacking::Open()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void ZinIrFileBacking::Allocate()
{
  if (v0)
  {
    OUTLINED_FUNCTION_0_19(v0, &ZinIrFileBacking::Allocate(unsigned long long)::allocation_mutex, &dword_1A617D000);
  }
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ZinIrFileBacking::Allocate(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ANECompiler internal error: ftruncate failure: %s", buf, 0xCu);
}

{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ANECompiler internal error: mmap failure: %s", buf, 0xCu);
}

void ZinIrFileBacking::UnmapSystem()
{
  if (v0)
  {
    OUTLINED_FUNCTION_0_19(v0, &ZinIrFileBacking::UnmapSystem(void *,unsigned long)::allocation_mutex, &dword_1A617D000);
  }
}

uint64_t LegalizerSubgraphIdentification::AddSubgraph(LegalizerSubgraphIdentification *this, ZinIrOpLayerGraph *a2, ZinIrOpLayer *a3, unint64_t a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v64 = a3;
  v65 = a2;
  v51 = v52;
  v52[0] = 0;
  v54[0] = 0;
  v54[1] = 0;
  v52[1] = 0;
  v53 = v54;
  v55[0] = v55;
  v55[1] = v55;
  v57[0] = 0;
  v57[1] = 0;
  v55[2] = 0;
  v56 = v57;
  v58 = 0;
  v59 = 0;
  v62[0] = 0;
  v62[1] = 0;
  v60 = 0;
  v61 = v62;
  v63 = 0;
  v6 = (*(*a3 + 40))(a3, 0);
  IsResident = ZinIrTensor::IsResident(v6);
  OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v64);
  if (OutgoingLayers[1] - *OutgoingLayers == 8 && IsResident)
  {
    v49[0] = **ZinIrOpLayer::GetOutgoingLayers(v64);
    std::__tree<ZinIrOpLayer *,ScheduleComparator,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer * const&>(&v56, &v64, &v64);
    std::__tree<ZinIrOpLayer *,ScheduleComparator,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer * const&>(&v56, v49, v49);
    std::__tree<ZinIrOpLayer *,ScheduleComparator,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer * const&>(&v51, &v64, &v64);
    std::__tree<ZinIrOpLayer *,ScheduleComparator,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer * const&>(&v53, v49, v49);
  }

  else
  {
    std::__tree<ZinIrOpLayer *,ScheduleComparator,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer * const&>(&v56, &v64, &v64);
    std::__tree<ZinIrOpLayer *,ScheduleComparator,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer * const&>(&v51, &v64, &v64);
    std::__tree<ZinIrOpLayer *,ScheduleComparator,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer * const&>(&v53, &v64, &v64);
  }

  *&v66 = 0x400000003;
  std::unordered_set<ZinIrDimension>::unordered_set(v49, &v66, 2);
  v10 = v56;
  if (v56 != v57)
  {
    do
    {
      v11 = v10[4];
      memset(v48, 0, sizeof(v48));
      IsLayerSplittable<Subgraph>(&v46, v11, **(this + 3), 1, 0, 0, 1, v48, &v51, 0);
      MemoryPools = ZinIrContext::GetMemoryPools(v64);
      __p = 0;
      v44 = 0;
      v45 = 0;
      std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, *MemoryPools, *(MemoryPools + 8), (*(MemoryPools + 8) - *MemoryPools) >> 3);
      v13 = 0;
      for (i = 0; ; ++i)
      {
        v15 = ZinIrContext::GetMemoryPools(v64);
        if (i >= (v15[1] - *v15) >> 3)
        {
          break;
        }

        if (((*(v48[0] + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) != 0 && std::__tree<ZinIrOpLayer *,ScheduleComparator,std::allocator<ZinIrOpLayer *>>::__count_unique<ZinIrOpLayer *>(&v51, (__p + v13)))
        {
          if (__p)
          {
            v44 = __p;
            operator delete(__p);
          }

          std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v46, v47[0]);
          if (v48[0])
          {
            operator delete(v48[0]);
          }

LABEL_42:
          v30 = 3;
          goto LABEL_62;
        }

        v13 += 8;
      }

      v67 = 0u;
      v66 = 0u;
      v68 = 1065353216;
      v16 = v46;
      if (v46 == v47)
      {
        goto LABEL_24;
      }

      do
      {
        v42 = *(v16 + 7);
        if (std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(v49, &v42))
        {
          std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension const&>(&v66, &v42, &v42);
        }

        v17 = v16[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v16[2];
            v19 = *v18 == v16;
            v16 = v18;
          }

          while (!v19);
        }

        v16 = v18;
      }

      while (v18 != v47);
      if (!*(&v67 + 1))
      {
LABEL_24:
        v20 = 1;
      }

      else
      {
        v50 = v68;
        std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<ZinIrDimension,void *> *>>(v49, v67, 0);
        v20 = 0;
      }

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v66);
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v46, v47[0]);
      if (v48[0])
      {
        operator delete(v48[0]);
      }

      if (v20)
      {
        goto LABEL_42;
      }

      v21 = v10[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v10[2];
          v19 = *v22 == v10;
          v10 = v22;
        }

        while (!v19);
      }

      v10 = v22;
    }

    while (v22 != v57);
  }

  v23 = v53[4];
  LODWORD(v66) = 4;
  if (std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(v49, &v66))
  {
    v24 = *(this + 4);
    v25 = **(this + 3);
    v26 = *((*(*v23 + 40))(v23, 0) + 88);
    v27 = (*(*v23 + 40))(v23, 0);
    v28 = PressureBasedSubgraphIdentification::MinimumSplitAlignmentConstraint(v25, v24, v27, 4, 1.0);
    v29 = ZinDivRoundUp(v26, v28);
  }

  else
  {
    v29 = 1;
  }

  LODWORD(v66) = 3;
  if (std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(v49, &v66))
  {
    v31 = *((*(*v23 + 40))(v23, 0) + 80);
    v32 = v31 >> ZinMirSpatialSplitUtils::IsDeConv(v23, 0);
  }

  else
  {
    v32 = 1;
  }

  *&v67 = 0;
  v66 = &v66 + 8;
  if (v32 >= a4)
  {
    LODWORD(v46) = 3;
    v48[0] = &v46;
    v33 = std::__tree<std::__value_type<ZinIrDimension,unsigned long>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,unsigned long>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v66, &v46, &std::piecewise_construct, v48);
LABEL_52:
    v33[5] = a4;
    goto LABEL_53;
  }

  if (v32 * v29 >= a4)
  {
    LODWORD(v46) = 3;
    v48[0] = &v46;
    std::__tree<std::__value_type<ZinIrDimension,unsigned long>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,unsigned long>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v66, &v46, &std::piecewise_construct, v48)[5] = v32;
    a4 = ZinDivRoundUp(a4, v32);
    LODWORD(v46) = 4;
    v48[0] = &v46;
    v33 = std::__tree<std::__value_type<ZinIrDimension,unsigned long>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,unsigned long>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v66, &v46, &std::piecewise_construct, v48);
    goto LABEL_52;
  }

  LODWORD(v46) = 3;
  v48[0] = &v46;
  std::__tree<std::__value_type<ZinIrDimension,unsigned long>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,unsigned long>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v66, &v46, &std::piecewise_construct, v48)[5] = v32;
  LODWORD(v46) = 4;
  v48[0] = &v46;
  std::__tree<std::__value_type<ZinIrDimension,unsigned long>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,unsigned long>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::piecewise_construct_t const&,std::tuple<ZinIrDimension const&>,std::tuple<>>(&v66, &v46, &std::piecewise_construct, v48)[5] = v29;
LABEL_53:
  v34 = v59;
  if (v59 >= v60)
  {
    v35 = std::vector<TileCountType>::__emplace_back_slow_path<TileCountType const&>(&v58, &v66);
  }

  else
  {
    std::map<ZinIrDimension,unsigned long>::map[abi:ne200100](v59, &v66);
    v35 = v34 + 3;
  }

  v59 = v35;
  v48[0] = &v65;
  v36 = std::__tree<std::__value_type<ZinIrOpLayer const*,std::vector<std::unordered_map<ZinIrDimension,unsigned long>>>,std::__map_value_compare<ZinIrOpLayer const*,std::__value_type<ZinIrOpLayer const*,std::vector<std::unordered_map<ZinIrDimension,unsigned long>>>,std::less<ZinIrOpLayer const*>,true>,std::allocator<std::__value_type<ZinIrOpLayer const*,std::vector<std::unordered_map<ZinIrDimension,unsigned long>>>>>::__emplace_unique_key_args<ZinIrOpLayer const*,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer const* const&>,std::tuple<>>(this + 624, &v65, &std::piecewise_construct, v48);
  v37 = v36;
  v38 = v36[6];
  if (v38 >= v36[7])
  {
    v39 = std::vector<Subgraph>::__emplace_back_slow_path<Subgraph const&>(v36 + 5, &v51);
  }

  else
  {
    Subgraph::Subgraph(v36[6], &v51);
    v39 = v38 + 152;
    v37[6] = v38 + 152;
  }

  v37[6] = v39;
  v48[0] = &v65;
  v40 = std::__tree<std::__value_type<ZinIrOpLayerGraph *,std::unordered_set<ZinIrOpLayer const*>>,std::__map_value_compare<ZinIrOpLayerGraph *,std::__value_type<ZinIrOpLayerGraph *,std::unordered_set<ZinIrOpLayer const*>>,std::less<ZinIrOpLayerGraph *>,true>,std::allocator<std::__value_type<ZinIrOpLayerGraph *,std::unordered_set<ZinIrOpLayer const*>>>>::__emplace_unique_key_args<ZinIrOpLayerGraph *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayerGraph * const&>,std::tuple<>>(this + 648, &v65, &std::piecewise_construct, v48);
  if (v56 != v57)
  {
    std::__hash_table<ZinIrSection const*,std::hash<ZinIrSection const*>,std::equal_to<ZinIrSection const*>,std::allocator<ZinIrSection const*>>::__emplace_unique_impl<ZinIrSection*>((v40 + 5));
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v66, *(&v66 + 1));
  v30 = 0;
LABEL_62:
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v49);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v61, v62[0]);
  v49[0] = &v58;
  std::vector<TileCountType>::__destroy_vector::operator()[abi:ne200100](v49);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v56, v57[0]);
  std::__list_imp<ZinIrSection *>::clear(v55);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v53, v54[0]);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v51, v52[0]);
  return v30;
}

void sub_1A68CB7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  *(v25 + 48) = v26;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v28 - 144, *(v27 + 176));
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a21);
  Subgraph::~Subgraph(va);
  _Unwind_Resume(a1);
}

uint64_t LegalizerSubgraphIdentification::IdentifySubgraphs(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v14 = a2;
  v3 = *(a1 + 632);
  if (v3)
  {
    v5 = a1 + 632;
    do
    {
      v6 = *(v3 + 32);
      v7 = v6 >= a2;
      v8 = v6 < a2;
      if (v7)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * v8);
    }

    while (v3);
    if (v5 != a1 + 632 && *(v5 + 32) <= a2)
    {
      v9 = std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(a1 + 624, &v14);
      v12 = 0;
      v13 = 0;
      v11 = 0;
      std::vector<Subgraph>::__init_with_size[abi:ne200100]<Subgraph*,Subgraph*>(&v11, *v9, v9[1], 0x86BCA1AF286BCA1BLL * ((v9[1] - *v9) >> 3));
      std::vector<Subgraph>::__insert_with_size[abi:ne200100]<std::__wrap_iter<Subgraph*>,std::__wrap_iter<Subgraph*>>(a3, a3[1], v11, v12, 0x86BCA1AF286BCA1BLL * ((v12 - v11) >> 3));
      v15 = &v11;
      std::vector<Subgraph>::__destroy_vector::operator()[abi:ne200100](&v15);
    }
  }

  return 0;
}

void sub_1A68CB96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<Subgraph>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL LegalizerSubgraphIdentification::IsLayerInSubgraph(LegalizerSubgraphIdentification *this, ZinIrOpLayerGraph *a2, ZinIrOpLayer *a3)
{
  v12 = a3;
  v13 = a2;
  v3 = *(this + 82);
  if (!v3)
  {
    return 0;
  }

  v4 = (this + 656);
  do
  {
    v5 = v3[4];
    v6 = v5 >= a2;
    v7 = v5 < a2;
    if (v6)
    {
      v4 = v3;
    }

    v3 = v3[v7];
  }

  while (v3);
  if (v4 == (this + 656) || v4[4] > a2)
  {
    return 0;
  }

  v10 = std::map<ZinNamedType<unsigned long,SegmentIndexTag>,ZinIrCodegenTDPartitionStats>::at(this + 648, &v13);
  std::unordered_set<ZinIrOpLayer const*>::unordered_set(v11, v10);
  v8 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(v11, &v12) != 0;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v11);
  return v8;
}

void LegalizerSubgraphIdentification::~LegalizerSubgraphIdentification(LegalizerSubgraphIdentification *this)
{
  LegalizerSubgraphIdentification::~LegalizerSubgraphIdentification(this);

  JUMPOUT(0x1AC55A070);
}

{
  *this = &unk_1F19EEAE8;
  std::__tree<std::__value_type<ZinIrOpLayerGraph *,std::unordered_set<ZinIrOpLayer const*>>,std::__map_value_compare<ZinIrOpLayerGraph *,std::__value_type<ZinIrOpLayerGraph *,std::unordered_set<ZinIrOpLayer const*>>,std::less<ZinIrOpLayerGraph *>,true>,std::allocator<std::__value_type<ZinIrOpLayerGraph *,std::unordered_set<ZinIrOpLayer const*>>>>::destroy(this + 648, *(this + 82));
  std::__tree<std::__value_type<ZinIrOpLayerGraph *,std::vector<Subgraph>>,std::__map_value_compare<ZinIrOpLayerGraph *,std::__value_type<ZinIrOpLayerGraph *,std::vector<Subgraph>>,std::less<ZinIrOpLayerGraph *>,true>,std::allocator<std::__value_type<ZinIrOpLayerGraph *,std::vector<Subgraph>>>>::destroy(this + 624, *(this + 79));
  *this = &unk_1F19E24D0;
  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *(this + 6) = *MEMORY[0x1E69E54D0];
  *(this + *(v3 - 24) + 48) = *(v2 + 24);
  MEMORY[0x1AC559A70](this + 56);
  std::ostream::~ostream();
  MEMORY[0x1AC559F60](this + 464);
}

void *std::__tree<std::__value_type<ZinIrOpLayerGraph *,std::unordered_set<ZinIrOpLayer const*>>,std::__map_value_compare<ZinIrOpLayerGraph *,std::__value_type<ZinIrOpLayerGraph *,std::unordered_set<ZinIrOpLayer const*>>,std::less<ZinIrOpLayerGraph *>,true>,std::allocator<std::__value_type<ZinIrOpLayerGraph *,std::unordered_set<ZinIrOpLayer const*>>>>::__emplace_unique_key_args<ZinIrOpLayerGraph *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayerGraph * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<ZinIrOpLayerGraph *,std::unordered_set<ZinIrOpLayer const*>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ZinIrOpLayerGraph *,std::unordered_set<ZinIrOpLayer const*>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL ZinSPMDUtils::IsValidDeviceMeshForPhysicalDeviceMesh(void *a1, unsigned __int16 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *a2;
    while (*v4 > 1u)
    {
      v4 += 2;
      if (v4 == v3)
      {
        v5 = v3 - v2;
        v6 = (a1[1] - *a1) >> 1;
        if (v6 < v5 >> 1)
        {
          return 0;
        }

        v8 = v5 >> 1;
        v9 = (*a1 + 2 * (v6 - (v5 >> 1)));
        if (v8 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v8;
        }

        v11 = v10 - 1;
        do
        {
          v13 = *v2;
          v2 += 2;
          v12 = v13;
          v15 = *v9++;
          v14 = v15;
          v17 = v11-- != 0;
          result = v12 <= v14;
        }

        while (v12 <= v14 && v17);
        return result;
      }
    }
  }

  return 0;
}

BOOL ZinSPMDUtils::IsValidDeviceIDForDeviceMesh(void *a1, unsigned __int16 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = *a2;
    while (*v4 > 1u)
    {
      if (++v4 == v3)
      {
        v5 = v3 - v2;
        if (v5 == (a1[1] - *a1) >> 3)
        {
          v6 = 0;
          if (v5 <= 1)
          {
            v7 = 1;
          }

          else
          {
            v7 = v5;
          }

          while (*(*a1 + 8 * v6) < v2[v6])
          {
            if (v7 == ++v6)
            {
              return v6 >= v5;
            }
          }
        }

        return 0;
      }
    }
  }

  return 0;
}

void ZinSPMDUtils::GetPerDeviceShardOffsetInfo(ZinSPMDUtils *this@<X0>, const ZinIrTensor *a2@<X1>, uint64_t a3@<X8>)
{
  if (!ZinIrTensor::IsDistributedInputView(this) && !ZinIrTensor::IsDistributedOutputView(this))
  {
    ZinAssertImpl("Tensor must be distributed input/output view");
  }

  ZinIrTensor::GetParentTensor(&v8, this);
  v6 = v8;
  TensorDesc = ZinIrSymbol::Descriptor::GetTensorDesc((**(*(v8 + 160) + 40) + 216));
  ZinSPMDUtils::GetPerDeviceShardOffsetInfo(v6 + 64, TensorDesc + 88, **(*(v8 + 160) + 40) + 160, a2, a3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1A68CBE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ZinSPMDUtils::GetPerDeviceShardOffsetInfo(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  if (a4[6] == a4[7])
  {
    ZinAssertImpl("Expects sharding map with tensor axes", a2, a3);
  }

  v9 = (a4[1] - *a4) >> 1;
  __p = 0;
  std::vector<long>::vector[abi:ne200100](&v45, v9, &__p);
  v10 = (a4[1] - *a4) >> 1;
  __src = 0;
  std::vector<long>::vector[abi:ne200100](&__p, v10, &__src);
  v11 = 0;
  __src = 0;
  v41 = 0;
  v42 = 0;
  do
  {
    Dimension = ZinTensorPosition::GetDimension(a1, v11);
    v13 = v41;
    if (v41 >= v42)
    {
      v15 = __src;
      v16 = v41 - __src;
      v17 = (v41 - __src) >> 3;
      v18 = v17 + 1;
      if ((v17 + 1) >> 61)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v19 = v42 - __src;
      if ((v42 - __src) >> 2 > v18)
      {
        v18 = v19 >> 2;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v20);
      }

      *(8 * v17) = Dimension;
      v14 = 8 * v17 + 8;
      memcpy(0, v15, v16);
      v21 = __src;
      __src = 0;
      v41 = v14;
      v42 = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v41 = Dimension;
      v14 = (v13 + 8);
    }

    v41 = v14;
    ++v11;
  }

  while (v11 != 5);
  v22 = a4[3];
  if (a4[4] != v22)
  {
    v23 = 0;
    do
    {
      v24 = *(v22 + 2 * v23);
      v25 = *(a4[6] + 2 * v23);
      v26 = ZinTensorPosition::GetDimension(a2, v25);
      *(v45 + v24) = v26;
      v27 = __src;
      v28 = *(__src + v25) / *(*a4 + 2 * v24);
      *(__p + v24) = v28;
      v27[v25] = v28;
      ++v23;
      v22 = a4[3];
    }

    while (v23 < (a4[4] - v22) >> 1);
  }

  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  if (&__p != a5)
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(a5, __p, v44, (v44 - __p) >> 3);
  }

  if ((a5 + 24) != &v45)
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>((a5 + 24), v45, v46, (v46 - v45) >> 3);
  }

  if (*(a3 + 48) == 1)
  {
    v29 = *a5;
    v30 = *(a5 + 8) - *a5;
    v31 = v30 >> 3;
    v32 = a4[1];
    if (v30 >> 3 != (v32 - *a4) >> 1 || (v33 = *(a5 + 24), *(a5 + 32) - v33 != v30))
    {
      ZinAssertImpl("Inconsistent mesh in the tensor family");
    }

    if (v32 != *a4)
    {
      v34 = *a3;
      v35 = *(a3 + 24);
      if (v31 <= 1)
      {
        v31 = 1;
      }

      do
      {
        v37 = *v34++;
        v36 = v37;
        if (*v29 && v36 || (*v29 += v36, v38 = *v35, *v33) && v38)
        {
          ZinAssertImpl("Sharding along the same mesh dimension multiple times is not allowed");
        }

        *v33++ += v38;
        ++v35;
        ++v29;
        --v31;
      }

      while (v31);
    }
  }

  if (__src)
  {
    v41 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }
}

void sub_1A68CC1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ANEDebugInfo::DebugInfoInMem::Group *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinSPMDUtils::CalculatePerDeviceOffsetFromSymbol(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = *(a1 + 24);
  if (v4 != *(a1 + 32) - v5)
  {
    ZinAssertImpl("shard size and tensor stride vectors have different sizes", a2);
  }

  v6 = *a2;
  if (v4 != *(a2 + 8) - *a2)
  {
    ZinAssertImpl("shard size and device_id vectors have different sizes");
  }

  if (v3 == v2)
  {
    return 0;
  }

  result = 0;
  v8 = v4 >> 3;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  do
  {
    v10 = *v2++;
    v9 = v10;
    v11 = *v5++;
    v12 = v11 * v9;
    v13 = *v6++;
    result += v12 * v13;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t ZinSPMDUtils::GetSharedRootTensors@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[4] = *MEMORY[0x1E69E9840];
  *a2 = a2;
  *(a2 + 8) = a2;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1065353216;
  v5[0] = &unk_1F19EEBE8;
  v5[1] = a2;
  v5[3] = v5;
  std::__function::__value_func<BOOL ()(ZinIrTensor *)>::__value_func[abi:ne200100](v4, v5);
  ZinSPMDUtils::TraverseTensorFamilyOfOrderedLayers(a1, v4);
  std::__function::__value_func<BOOL ()(ZinIrTensor *)>::~__value_func[abi:ne200100](v4);
  return std::__function::__value_func<BOOL ()(ZinIrTensor *)>::~__value_func[abi:ne200100](v5);
}

void sub_1A68CC36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(ZinIrTensor *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(ZinIrTensor *)>::~__value_func[abi:ne200100](va1);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table((v3 + 3));
  std::__list_imp<ZinIrSection *>::clear(v3);
  _Unwind_Resume(a1);
}

uint64_t ZinSPMDUtils::TraverseTensorFamilyOfOrderedLayers(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *result;
  v3 = *(result + 8);
  if (*result != v3)
  {
    do
    {
      v5 = (*(**v2 + 40))(*v2, 0);
      result = ZinIrTensor::HasParent(v5);
      if ((result & 1) == 0)
      {
        std::__function::__value_func<BOOL ()(ZinIrTensor *)>::__value_func[abi:ne200100](v6, a2);
        ZinIrTensor::TraverseTensorFamily(v5, 0, v6);
        result = std::__function::__value_func<BOOL ()(ZinIrTensor *)>::~__value_func[abi:ne200100](v6);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1A68CC470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(ZinIrTensor *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinSPMDUtils::GetRootTensorsReplicatedAcrossDies@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[4] = *MEMORY[0x1E69E9840];
  *a2 = a2;
  *(a2 + 8) = a2;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1065353216;
  v5[0] = &unk_1F19EEC68;
  v5[1] = a2;
  v5[3] = v5;
  std::__function::__value_func<BOOL ()(ZinIrTensor *)>::__value_func[abi:ne200100](v4, v5);
  ZinSPMDUtils::TraverseTensorFamilyOfOrderedLayers(a1, v4);
  std::__function::__value_func<BOOL ()(ZinIrTensor *)>::~__value_func[abi:ne200100](v4);
  return std::__function::__value_func<BOOL ()(ZinIrTensor *)>::~__value_func[abi:ne200100](v5);
}

void sub_1A68CC548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(ZinIrTensor *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<BOOL ()(ZinIrTensor *)>::~__value_func[abi:ne200100](va1);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table((v3 + 3));
  std::__list_imp<ZinIrSection *>::clear(v3);
  _Unwind_Resume(a1);
}

uint64_t *ZinSPMDUtils::GetCollectiveCommunicationEventTensorsIntraDie@<X0>(uint64_t *__return_ptr a1@<X8>, ZinSPMDUtils *this@<X0>)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F19EECE8;
  v3[1] = ZinSPMDUtils::GetCollectiveCommunicationEventTensorIntraDie;
  v3[3] = v3;
  ZinSPMDUtils::TraverseCollectiveCommunicationLayersHelper<ZinIrTensor *>(this, v3, a1);
  return std::__function::__value_func<void ()(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &)>::~__value_func[abi:ne200100](v3);
}

void sub_1A68CC610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *ZinSPMDUtils::TraverseCollectiveCommunicationLayersHelper<ZinIrTensor *>@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = result + 1;
  v4 = *result;
  if (*result != result + 1)
  {
    do
    {
      result = ZinIrTarget::GetHal(v4[4]);
      v6 = result + 1;
      v7 = *result;
      if (*result != result + 1)
      {
        do
        {
          std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v15, (v7 + 4));
          v8 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(v15);
          if (ZinIrOpLayer::IsCollectiveCommunicationLayer(v8))
          {
            v9 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(v15);
            std::function<void ()(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &)>::operator()(a2, v9);
          }

          result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v15);
          v10 = v7[1];
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
              v11 = v7[2];
              v12 = *v11 == v7;
              v7 = v11;
            }

            while (!v12);
          }

          v7 = v11;
        }

        while (v11 != v6);
      }

      v13 = v4[1];
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
          v14 = v4[2];
          v12 = *v14 == v4;
          v4 = v14;
        }

        while (!v12);
      }

      v4 = v14;
    }

    while (v14 != v3);
  }

  return result;
}

void sub_1A68CC73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void ZinSPMDUtils::GetCollectiveCommunicationEventTensorIntraDie(ZinCollectiveCommunicationLayer *a1, uint64_t a2)
{
  EventTensor = ZinCollectiveCommunicationLayer::GetEventTensor(a1);
  v5 = EventTensor;
  if (!ZinCollectiveCommunicationLayer::IsInterDieLayer(a1))
  {
    if (EventTensor)
    {
      std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](a2, &v5);
    }
  }
}

uint64_t *ZinSPMDUtils::GetCollectiveCommunicationEventTensorsInterDie@<X0>(uint64_t *__return_ptr a1@<X8>, ZinSPMDUtils *this@<X0>)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F19EECE8;
  v3[1] = ZinSPMDUtils::GetCollectiveCommunicationEventTensorInterDie;
  v3[3] = v3;
  ZinSPMDUtils::TraverseCollectiveCommunicationLayersHelper<ZinIrTensor *>(this, v3, a1);
  return std::__function::__value_func<void ()(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &)>::~__value_func[abi:ne200100](v3);
}

void sub_1A68CC860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinSPMDUtils::GetCollectiveCommunicationEventTensorInterDie(ZinCollectiveCommunicationLayer *a1, uint64_t a2)
{
  EventTensor = ZinCollectiveCommunicationLayer::GetEventTensor(a1);
  v5 = EventTensor;
  if (ZinCollectiveCommunicationLayer::IsInterDieLayer(a1))
  {
    if (EventTensor)
    {
      std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](a2, &v5);
    }
  }
}

uint64_t ZinSPMDUtils::IterateThroughDeviceMesh(unsigned __int16 **a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(std::vector<long> const&)>::__value_func[abi:ne200100](v4, a2);
  ZinSPMDUtils::IterateThroughDeviceMeshHelper(a1, v4, a1[1] - *a1 - 1);
  return std::__function::__value_func<void ()(std::vector<long> const&)>::~__value_func[abi:ne200100](v4);
}

void sub_1A68CC950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::vector<long> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinSPMDUtils::IterateThroughDeviceMeshHelper(unsigned __int16 **a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1] - *a1;
  v16 = 0;
  std::vector<long>::vector[abi:ne200100](&__p, v6, &v16);
  v7 = *a1;
  v8 = a1[1];
  if (*a1 == v8)
  {
LABEL_18:
    ZinAssertImpl("Error: invalid device mesh");
  }

  do
  {
    if (*v7 <= 1u)
    {
      goto LABEL_18;
    }

    ++v7;
  }

  while (v7 != v8);
  while (1)
  {
    v10 = *(a2 + 24);
    if (!v10)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v10 + 48))(v10, &__p);
    v11 = __p;
    if ((a3 & 0x8000000000000000) == 0)
    {
      v12 = *a1;
      v13 = a3;
      do
      {
        v14 = v11[v13] + 1;
        v11[v13] = v14;
        if (v14 < v12[v13])
        {
          break;
        }

        v11[v13] = 0;
      }

      while (v13-- > 0);
    }

    v9 = v11;
    if (v11 == v18)
    {
      break;
    }

    while (!*v9)
    {
      if (++v9 == v18)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_15:
  if (v11)
  {
    v18 = v11;
    operator delete(v11);
  }
}

void sub_1A68CCAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinSPMDUtils::AneIndexFromDeviceId(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v7 = *(a2 + 8);
  if (!ZinSPMDUtils::IsValidDeviceMeshForPhysicalDeviceMesh(a1, a2))
  {
    ZinAssertImpl("Error: invalid device mesh");
  }

  if (!ZinSPMDUtils::IsValidDeviceIDForDeviceMesh(a3, a2))
  {
    ZinAssertImpl("Error: invalid device ID for device mesh");
  }

  v9 = (a3[1] - *a3) >> 3;
  result = 0;
  v11 = v9 < 1;
  v12 = v9 - 1;
  if (!v11)
  {
    v13 = 1;
    do
    {
      result += *(*a3 + 8 * v12) * v13;
      v13 *= *(v5 + 2 * (((v6 - v5) >> 1) - ((v7 - v8) >> 1)) + 2 * v12);
      v14 = v12-- + 1;
    }

    while (v14 > 1);
  }

  return result;
}

BOOL ZinSPMDUtils::DeviceIdFromAneIndex@<W0>(unsigned __int16 **a1@<X0>, unsigned __int16 **a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2[1] - *a2;
  v28 = 0;
  std::vector<long>::vector[abi:ne200100](a4, v8, &v28);
  v9 = *a1;
  v10 = a1[1];
  v11 = 1;
  if (*a1 != v10)
  {
    v12 = *a1;
    do
    {
      v13 = *v12++;
      v11 = (v11 * v13);
    }

    while (v12 != v10);
  }

  v14 = *a2;
  v15 = a2[1];
  result = ZinSPMDUtils::IsValidDeviceMeshForPhysicalDeviceMesh(a1, a2);
  if (!result)
  {
    ZinAssertImpl("Error: invalid device mesh");
  }

  if (v11 <= a3)
  {
    ZinAssertImpl("Error: ANE index is too large for device shape");
  }

  v17 = v10 - v9;
  v18 = &v9[v17 - (v15 - v14)];
  if (v17 == v15 - v14)
  {
    v19 = 1;
  }

  else
  {
    v20 = 1;
    do
    {
      v21 = *v9++;
      v20 *= v21;
    }

    while (v9 != v18);
    v19 = v20;
  }

  v22 = *a4;
  v23 = a4[1] - *a4;
  if (v23)
  {
    v24 = v23 >> 3;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    v25 = v11 / v19;
    do
    {
      v26 = *v18++;
      v25 /= v26;
      *v22 = a3 / v25;
      v27 = *v14++;
      if ((a3 / v25) > v27)
      {
        ZinAssertImpl("Error: ANE index is invalid for device mesh and shape");
      }

      a3 %= v25;
      ++v22;
      --v24;
    }

    while (v24);
  }

  return result;
}

void sub_1A68CCCE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinSPMDUtils::GetNumDevices(unsigned __int16 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = 1;
  while (v1 != v2)
  {
    v4 = *v1++;
    result = (result * v4);
  }

  return result;
}

uint64_t *ZinSPMDUtils::GetKernelOriginForDevice@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (*(a2 + 360) == 1)
  {
    v5 = *(a2 + 288);
    v6 = *(a2 + 296);
    if (v5 != v6)
    {
      v7 = result;
      v8 = 1;
      do
      {
        v9 = *v5++;
        v8 *= v9;
      }

      while (v5 != v6);
      if (v8 != 1)
      {
        v10 = *(a2 + 88);
        v25[0] = *(a2 + 72);
        v25[1] = v10;
        v26 = *(a2 + 104);
        v11 = (*(a2 + 320) - *(a2 + 312)) >> 1;
        v12 = v11 - 1;
        if (v11 >= 1)
        {
          do
          {
            v13 = *(*(a2 + 312) + 2 * v12);
            v14 = *(a2 + 336);
            v15 = *(v14 + 2 * v12);
            ValueAtKernel = ZinKernelStructsUtils::GetValueAtKernelDimension<ZinKernelPosition>(v25, *(v14 + 2 * v12), v14);
            v17 = *v7;
            if (v13 >= (v7[1] - *v7) >> 3)
            {
              std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
            }

            v18 = ValueAtKernel;
            v19 = *(v17 + 8 * v13);
            v20 = ZinKernelStructsUtils::GetValueAtKernelDimension<ZinKernelPosition>(a3, v15, v17);
            ZinKernelStructsUtils::SetValueAtKernelDimension<ZinKernelPosition>(a3, v15, v20 + v19 * v18);
            v22 = ZinKernelStructsUtils::GetValueAtKernelDimension<ZinKernelPosition>(v25, v15, v21);
            v23 = *(a2 + 288);
            if (v13 >= (*(a2 + 296) - v23) >> 1)
            {
              std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
            }

            result = ZinKernelStructsUtils::SetValueAtKernelDimension<ZinKernelPosition>(v25, v15, v22 * *(v23 + 2 * v13));
            v24 = v12-- + 1;
          }

          while (v24 > 1);
        }
      }
    }
  }

  return result;
}

uint64_t ZinSPMDUtils::GetSymbolOffsetToBaseAddr(uint64_t a1, uint64_t a2)
{
  if (ZinCodegenUtil::IsRelativeToRootTensor(a1))
  {
    SymbolOffsetFromRootSymbol = ZinIrSymbol::GetSymbolOffsetFromRootSymbol(a1);
  }

  else
  {
    SymbolOffsetFromRootSymbol = *(a1 + 24);
  }

  if (*(a1 + 208) == 1)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      ZinAssertImpl("Device ID must be present for a sharded tensor");
    }

    SymbolOffsetFromRootSymbol += ZinSPMDUtils::CalculatePerDeviceOffsetFromSymbol(a1 + 160, a2);
  }

  return SymbolOffsetFromRootSymbol;
}

void ZinSPMDUtils::GetFirstNAnesFromEachDie(unsigned __int16 **this@<X0>, const ZinIrDeviceMesh *a2@<X1>, void *a3@<X8>)
{
  v4 = &(*this)[*(this + 12)];
  v5 = 1;
  while (v4 != this[1])
  {
    v6 = *v4++;
    v5 *= v6;
  }

  if (v5 >= a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    operator new();
  }

  ZinAssertImpl("Invalid input");
}

void sub_1A68CD004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::__function::__value_func<void ()(std::vector<long> const&)>::~__value_func[abi:ne200100](va1);
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinSPMDUtils::GetRemoteReplicatedBssBarId(uint64_t a1, unsigned int a2)
{
  if (a2 >= 7)
  {
    ZinAssertImpl("Error:%s Illegal replicated bss index", "uint8_t ZinSPMDUtils::GetRemoteReplicatedBssBarId(const ZinBarUsage &, uint8_t)");
  }

  v3 = a2 | 0x18;

  return ZinBarUsage::GetBarIdForBarIdType(a1, v3);
}

BOOL ZinSPMDUtils::IsSupportedInputPatternToPostDecompositionInterDieCCLayer(ZinIrContext **this, const ZinCollectiveCommunicationLayer *a2)
{
  if (!(*(*this + 43))(this, a2) || !ZinCollectiveCommunicationLayer::OperatesOnlyOnInterDieAxes(this))
  {
    ZinAssertImpl("Expected post-decomposition inter-die layer");
  }

  MemoryPools = ZinIrContext::GetMemoryPools(this);
  v4 = **MemoryPools;
  if (*(*(v4 + 11) + 8) == 100)
  {
    result = ZinNEBypassLayer::HasCopy(**MemoryPools);
    if (result)
    {
      v6 = ZinIrContext::GetMemoryPools(v4);
      if ((ZinIrOpLayer::IsCollectiveCommunicationLayer(**v6) & 1) != 0 || ((v8 = *(*(**v6 + 11) + 8), v8 != 30) ? (v9 = v8 == 27) : (v9 = 1), v9))
      {

        ZinSPMDUtils::IsOnlyExecutedByFirstAneOnEachDie(v4, v7);
      }

      return 0;
    }
  }

  else
  {
    v10 = MemoryPools;
    if (ZinIrOpLayer::IsCollectiveCommunicationLayer(**MemoryPools))
    {
      return 1;
    }

    else
    {
      v11 = *(*(**v10 + 11) + 8);
      return v11 == 27 || v11 == 30;
    }
  }

  return result;
}

void ZinSPMDUtils::IsOnlyExecutedByFirstAneOnEachDie(ZinIrContext **this, const ZinEngineLayer *a2)
{
  CFGraph = ZinIrContext::GetCFGraph(this[4], 0);
  DeviceMesh = ZinIrControlFlowGraph::GetDeviceMesh(CFGraph);
  if (*(DeviceMesh + 32))
  {
    ZinSPMDUtils::GetFirstNAnesFromEachDie(DeviceMesh, 1, &v4);
  }

  std::__throw_bad_optional_access[abi:ne200100]();
}

void sub_1A68CD2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a10;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t ZinSPMDUtils::IsLocalMemCopyInputForInterDieCCLayer(ZinIrContext **this, const ZinCollectiveCommunicationLayer *a2)
{
  if (!(*(*this + 43))(this, a2) || !ZinCollectiveCommunicationLayer::OperatesOnlyOnInterDieAxes(this))
  {
    ZinAssertImpl("Expected post-decomposition inter-die layer");
  }

  MemoryPools = ZinIrContext::GetMemoryPools(this);
  v4 = **MemoryPools;
  if (*(*(v4 + 11) + 8) == 100 && ZinNEBypassLayer::HasCopy(**MemoryPools))
  {

    ZinSPMDUtils::IsOnlyExecutedByFirstAneOnEachDie(v4, v5);
  }

  return 0;
}

uint64_t std::__function::__func<ZinSPMDUtils::GetSharedRootTensors(std::vector<ZinIrOpLayer *> const&)::$_0,std::allocator<ZinSPMDUtils::GetSharedRootTensors(std::vector<ZinIrOpLayer *> const&)::$_0>,BOOL ()(ZinIrTensor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19EEBE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinSPMDUtils::GetSharedRootTensors(std::vector<ZinIrOpLayer *> const&)::$_0,std::allocator<ZinSPMDUtils::GetSharedRootTensors(std::vector<ZinIrOpLayer *> const&)::$_0>,BOOL ()(ZinIrTensor *)>::operator()(uint64_t a1, ZinIrTensor **a2)
{
  v3 = *a2;
  IsCollectiveCommunicationLayer = ZinIrOpLayer::IsCollectiveCommunicationLayer(*(*a2 + 19));
  if (IsCollectiveCommunicationLayer)
  {
    v5 = *(a1 + 8);
    RootTensor = ZinIrTensor::GetRootTensor(v3);
    ZinIrScheduleUtil::ZinOrderedSet<ZinIrOpLayer *>::PushBack(v5, RootTensor);
  }

  return IsCollectiveCommunicationLayer ^ 1u;
}

uint64_t std::__function::__func<ZinSPMDUtils::GetSharedRootTensors(std::vector<ZinIrOpLayer *> const&)::$_0,std::allocator<ZinSPMDUtils::GetSharedRootTensors(std::vector<ZinIrOpLayer *> const&)::$_0>,BOOL ()(ZinIrTensor *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinSPMDUtils::GetRootTensorsReplicatedAcrossDies(std::vector<ZinIrOpLayer *> const&)::$_0,std::allocator<ZinSPMDUtils::GetRootTensorsReplicatedAcrossDies(std::vector<ZinIrOpLayer *> const&)::$_0>,BOOL ()(ZinIrTensor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19EEC68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinSPMDUtils::GetRootTensorsReplicatedAcrossDies(std::vector<ZinIrOpLayer *> const&)::$_0,std::allocator<ZinSPMDUtils::GetRootTensorsReplicatedAcrossDies(std::vector<ZinIrOpLayer *> const&)::$_0>,BOOL ()(ZinIrTensor *)>::operator()(uint64_t a1, ZinIrTensor **a2)
{
  v3 = *a2;
  v4 = *(*a2 + 19);
  if (!ZinIrOpLayer::IsCollectiveCommunicationLayer(v4) || !ZinCollectiveCommunicationLayer::IsInterDieLayer(v4))
  {
    return 1;
  }

  v5 = *(a1 + 8);
  RootTensor = ZinIrTensor::GetRootTensor(v3);
  ZinIrScheduleUtil::ZinOrderedSet<ZinIrOpLayer *>::PushBack(v5, RootTensor);
  return 0;
}

uint64_t std::__function::__func<ZinSPMDUtils::GetRootTensorsReplicatedAcrossDies(std::vector<ZinIrOpLayer *> const&)::$_0,std::allocator<ZinSPMDUtils::GetRootTensorsReplicatedAcrossDies(std::vector<ZinIrOpLayer *> const&)::$_0>,BOOL ()(ZinIrTensor *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::function<void ()(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<void (*)(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &),std::allocator<void (*)(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &)>,void ()(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19EECE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void (*)(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &),std::allocator<void (*)(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &)>,void ()(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(ZinCollectiveCommunicationLayer const*,std::vector<ZinIrTensor *> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::vector<long> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

__n128 std::__function::__func<ZinSPMDUtils::GetFirstNAnesFromEachDie(ZinIrDeviceMesh const&,unsigned int)::$_0,std::allocator<ZinSPMDUtils::GetFirstNAnesFromEachDie(ZinIrDeviceMesh const&,unsigned int)::$_0>,void ()(std::vector<long> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F19EED98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ZinSPMDUtils::GetFirstNAnesFromEachDie(ZinIrDeviceMesh const&,unsigned int)::$_0,std::allocator<ZinSPMDUtils::GetFirstNAnesFromEachDie(ZinIrDeviceMesh const&,unsigned int)::$_0>,void ()(std::vector<long> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  if (**(a1 + 24))
  {
    v3 = 0;
    do
    {
      std::vector<std::vector<long>>::push_back[abi:ne200100](*(a1 + 8), &__p);
      v4 = *(a1 + 16);
      v5 = *v4;
      v6 = (v4[1] - *v4) >> 1;
      v7 = *(v4 + 12);
      if (v6 > v7)
      {
        v8 = v5 - 2;
        v9 = __p - 8;
        do
        {
          v10 = *&v9[8 * v6] + 1;
          *&v9[8 * v6] = v10;
          if (v10 < *(v8 + 2 * v6))
          {
            break;
          }

          *&v9[8 * v6--] = 0;
        }

        while (v6 > v7);
      }

      ++v3;
    }

    while (v3 < **(a1 + 24));
  }

  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_1A68CDA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ZinSPMDUtils::GetFirstNAnesFromEachDie(ZinIrDeviceMesh const&,unsigned int)::$_0,std::allocator<ZinSPMDUtils::GetFirstNAnesFromEachDie(ZinIrDeviceMesh const&,unsigned int)::$_0>,void ()(std::vector<long> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::vector<std::vector<long>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<long>>::__emplace_back_slow_path<std::vector<long> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<DimensionMapping>>::__construct_one_at_end[abi:ne200100]<std::vector<DimensionMapping> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *std::vector<std::vector<long>>::__emplace_back_slow_path<std::vector<long> const&>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>((24 * v2), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<ZinIrOpLayer *>>::~__split_buffer(&v14);
  return v8;
}

void sub_1A68CDBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<ZinIrOpLayer *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__CFDictionary *ZinCreatePEGOCUnit(const ZinIrPEGOCUnitInfo *a1)
{
  v4[4] = *MEMORY[0x1E69E9840];
  Unit = ZinCreateUnit(a1);
  v4[0] = &unk_1F19EEE18;
  v4[3] = v4;
  ZinCreatePEUnit(a1, v4, Unit);
  std::__function::__value_func<void ()(ZinIrPEUnitInfo const&,std::vector<std::string> &,__CFDictionary *)>::~__value_func[abi:ne200100](v4);
  return Unit;
}

void sub_1A68CDC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(ZinIrPEUnitInfo const&,std::vector<std::string> &,__CFDictionary *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<ZinCreatePEGOCUnit(ZinIrPEGOCUnitInfo const&)::$_0,std::allocator<ZinCreatePEGOCUnit(ZinIrPEGOCUnitInfo const&)::$_0>,void ()(ZinIrPEUnitInfo const&,std::vector<std::string> &,__CFDictionary *)>::operator()(uint64_t a1, uint64_t a2, std::vector<std::string> *a3, __CFDictionary **a4)
{
  v36.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  v6 = *a4;
  ZinIrPEUnitInfo::ZinIrPEUnitInfo(&v25, a2);
  v25 = &unk_1F19E10F8;
  ZinIrDynamicGOCUnitInfo::ZinIrDynamicGOCUnitInfo(v30, (a2 + 968));
  ZinIrDynamicGOCUnitInfo::ZinIrDynamicGOCUnitInfo(&v18, v30);
  if ((v27 & 0x80u) == 0)
  {
    v7 = v27;
  }

  else
  {
    v7 = v26[1];
  }

  p_str = &__str;
  std::string::basic_string[abi:ne200100](&__str, v7 + 12);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if ((v27 & 0x80u) == 0)
    {
      v9 = v26;
    }

    else
    {
      v9 = v26[0];
    }

    memmove(p_str, v9, v7);
  }

  strcpy(p_str + v7, ".dynamic_goc");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = __str;
  v21 = v28;
  v22 = v29;
  begin = a3->__begin_;
  if (SHIBYTE(a3->__begin_->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, begin->__r_.__value_.__l.__data_, begin->__r_.__value_.__l.__size_);
    begin = a3->__begin_;
  }

  else
  {
    v11 = *&begin->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = begin->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v11;
  }

  if (SHIBYTE(begin[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, begin[1].__r_.__value_.__l.__data_, begin[1].__r_.__value_.__l.__size_);
    begin = a3->__begin_;
  }

  else
  {
    v12 = *&begin[1].__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = begin[1].__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v12;
  }

  if (SHIBYTE(begin[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, begin[1].__r_.__value_.__l.__data_, begin[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v13 = *&begin[1].__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = begin[1].__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v13;
  }

  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(&v20, &__str, &v36, 3uLL);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v35.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v35.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = __p;
  }

  std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string const*,std::string const*>(a3, &__str, &v34, 1uLL);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  DynamicGOCUnit = ZinCreateDynamicGOCUnit(&v18);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v17 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_p, 0x8000100u);
  CFDictionaryAddValue(v6, v17, DynamicGOCUnit);
  CFRelease(DynamicGOCUnit);
  CFRelease(v17);
  v18 = &unk_1F19D27E8;
  v23 = &unk_1F1A33DF0;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v24);
  ZinIrUnitInfo::~ZinIrUnitInfo(&v23);
  ZinIrUnitInfo::~ZinIrUnitInfo(&v18);
  v25 = &unk_1F19E10F8;
  v30[0] = &unk_1F19D27E8;
  v31 = &unk_1F1A33DF0;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v32);
  ZinIrUnitInfo::~ZinIrUnitInfo(&v31);
  ZinIrUnitInfo::~ZinIrUnitInfo(v30);
  ZinIrPEUnitInfo::~ZinIrPEUnitInfo(&v25);
}

void sub_1A68CE0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  ZinIrDynamicGOCUnitInfo::~ZinIrDynamicGOCUnitInfo(&a9);
  ZinIrPEGOCUnitInfo::~ZinIrPEGOCUnitInfo(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinCreatePEGOCUnit(ZinIrPEGOCUnitInfo const&)::$_0,std::allocator<ZinCreatePEGOCUnit(ZinIrPEGOCUnitInfo const&)::$_0>,void ()(ZinIrPEUnitInfo const&,std::vector<std::string> &,__CFDictionary *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ZinParseSoftmaxUnit(const __CFDictionary *a1, ZinIrSoftmaxUnitInfo *a2, CFArrayRef *a3)
{
  Value = CFDictionaryGetValue(a1, @"Params");
  if (!Value || (v6 = Value, v7 = CFGetTypeID(Value), v7 != CFDictionaryGetTypeID()))
  {
LABEL_18:
    ZinIrUnitStatus::SetError(a3, @"InvalidParamSyntax");
    return 3;
  }

  v8 = CFDictionaryGetValue(v6, @"Dimension");
  if (!v8 || (v9 = v8, v10 = CFGetTypeID(v8), v10 != CFStringGetTypeID()))
  {
    v12 = CFDictionaryGetValue(v6, @"Dimension");
    if (v12 && (v13 = v12, v14 = CFGetTypeID(v12), v14 == CFArrayGetTypeID()))
    {
      Count = CFArrayGetCount(v13);
      if (Count < 1)
      {
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v29)
        {
          ZinParseSoftmaxUnit(v29, v30, v31, v32, v33, v34, v35, v36);
        }
      }

      else
      {
        v16 = 0;
        v17 = Count & 0x7FFFFFFF;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
          if (!ValueAtIndex)
          {
            break;
          }

          v19 = ValueAtIndex;
          v20 = CFGetTypeID(ValueAtIndex);
          if (v20 != CFStringGetTypeID())
          {
            break;
          }

          result = ZinParseSoftmaxDimension(v19, a2, a3);
          if (result)
          {
            return result;
          }

          if (v17 == ++v16)
          {
            goto LABEL_15;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinParseSoftmaxUnit(v16);
        }
      }
    }

    else
    {
      v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v21)
      {
        ZinParseSoftmaxUnit(v21, v22, v23, v24, v25, v26, v27, v28);
      }
    }

    goto LABEL_18;
  }

  result = ZinParseSoftmaxDimension(v9, a2, a3);
  if (!result)
  {
LABEL_15:
    ZinParseBoolean(v6, @"SubtractMax", a2 + 120);
    return 0;
  }

  return result;
}

uint64_t ZinParseSoftmaxDimension(const __CFString *a1, ZinIrSoftmaxUnitInfo *a2, CFArrayRef *a3)
{
  if (ZinCFStringEquals(a1, @"Channel"))
  {
    v6 = 2;
LABEL_9:
    v23 = v6;
    goto LABEL_10;
  }

  if (ZinCFStringEquals(a1, @"Height"))
  {
    v6 = 3;
    goto LABEL_9;
  }

  if (ZinCFStringEquals(a1, @"Width"))
  {
    v6 = 4;
    goto LABEL_9;
  }

  if (ZinCFStringEquals(a1, @"Depth"))
  {
    v6 = 1;
    goto LABEL_9;
  }

  if (!ZinCFStringEquals(a1, @"Batch"))
  {
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      ZinParseSoftmaxDimension(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    ZinIrUnitStatus::SetError(a3, @"InvalidUnitSoftmaxDimension");
    return 3;
  }

  v23 = 0;
LABEL_10:
  if (std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::find<ZinIrDimension>(a2 + 10, &v23))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ZinParseSoftmaxDimension(result, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    std::__hash_table<ZinIrDimension,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,std::allocator<ZinIrDimension>>::__emplace_unique_key_args<ZinIrDimension,ZinIrDimension const&>(a2 + 10, &v23, &v23);
  }

  return 0;
}

void ZinParseSoftmaxUnit(int a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to parse softmax dimension at index #%d.\n", v1, 8u);
}

void ZinParseSoftmaxUnit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Softmax dimension array cannot be empty.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Softmax dimension information needs to be an array or a string.\n", a5, a6, a7, a8, v8);
}

void ZinParseSoftmaxDimension(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Unknown or unsupported softmax dimension!\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Warning: Duplicated Softmax dimension.\n", a5, a6, a7, a8, v8);
}

uint64_t ZinIrEWUnit::ZinIrEWUnit(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = ZinIrUnit::ZinIrUnit(a1, a3);
  *v5 = &unk_1F19EEE98;
  v5[7] = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 80) = *(a2 + 24);
    *(a1 + 64) = v6;
  }

  v7 = *(a2 + 32);
  *(a1 + 96) = 0;
  *(a1 + 88) = v7;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 96), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  *(a1 + 120) = *(a2 + 64);
  *(a1 + 56) = &unk_1F1A2EA10;
  *(a1 + 136) = *(a2 + 80);
  return a1;
}

void sub_1A68CE900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
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

uint64_t ZinIrEWUnit::TensorDimensions(ZinIrEWUnit *this, const ZinIrHalParameters *a2, int8x16_t *a3, CFArrayRef *a4)
{
  v5 = *(this + 34);
  if (!v5)
  {
    return 3;
  }

  v9 = IsEWTypeUnary(v5);
  v10 = *(this + 2) - *(this + 1);
  if (v9)
  {
    if (v10 != 136)
    {
LABEL_4:
      v11 = @"InvalidBottomCount";
LABEL_5:
      ZinIrUnitStatus::SetError(a4, v11);
      return 3;
    }
  }

  else if (v10 != 272)
  {
    goto LABEL_4;
  }

  if ((IsEWTypeUnary(*(this + 34)) & 1) == 0)
  {
    v17 = *(this + 34);
    v18 = *(this + 1);
    v19 = *(v18 + 8);
    v20 = *(v18 + 24);
    v31 = *(v18 + 40);
    v29 = v19;
    v30 = v20;
    v21 = *(v18 + 160);
    v27[0] = *(v18 + 144);
    v27[1] = v21;
    v28 = *(v18 + 176);
    if (v17 <= 4 && ((1 << v17) & 0x16) != 0 && ((IsSingularValue(&v29) & 1) != 0 || (IsSingularValue(v27) & 1) != 0 || v29.i64[1] == v27[0].i64[1] && (ZinElementWiseLayerUtils::IsChannelVector(&v29) || ZinElementWiseLayerUtils::IsChannelVector(v27))))
    {
      ZinElementWiseLayerUtils::GetOutputTensorDims((*(this + 1) + 8), (*(this + 1) + 144), v25);
      result = 0;
      v22 = v25[1];
      *a3 = v25[0];
      a3[1] = v22;
      v23 = v26;
      goto LABEL_17;
    }

    if (!ZinElementWiseLayerUtils::CanMatchDimensions((*(this + 1) + 8), (*(this + 1) + 144), a2, v13))
    {
      v11 = @"InvalidBottomDimensions";
      goto LABEL_5;
    }
  }

  v14 = *(this + 1);
  v15 = *(v14 + 8);
  v16 = *(v14 + 24);
  a3[2].i64[0] = *(v14 + 40);
  *a3 = v15;
  a3[1] = v16;
  if (IsEWTypeUnary(*(this + 34)))
  {
    return 0;
  }

  ZinElementWiseLayerUtils::GetOutputTensorDims((*(this + 1) + 8), (*(this + 1) + 144), &v29);
  result = 0;
  v24 = v30;
  *a3 = v29;
  a3[1] = v24;
  v23 = v31;
LABEL_17:
  a3[2].i64[0] = v23;
  return result;
}

uint64_t ZinIrEWUnit::ValidateOutputChannel(ZinIrEWUnit *this, uint64_t a2, CFArrayRef *a3)
{
  v3 = *(this + 16);
  v4 = *(this + 1);
  if (v3 != -1)
  {
    v5 = *(v4 + 16);
    if (a2 == 2)
    {
      if (v5 != v3 && *(v4 + 152) != v3)
      {
        goto LABEL_5;
      }
    }

    else if (v5 != v3)
    {
LABEL_5:
      ZinIrUnitStatus::SetError(a3, @"InvalidOutputChannels");
      return 3;
    }

    return 0;
  }

  if (a2 == 1)
  {
    v7 = *(v4 + 16);
  }

  else
  {
    v7 = *(v4 + 16);
    v8 = *(v4 + 152);
    if (v7 <= v8)
    {
      v7 = v8;
    }
  }

  v6 = 0;
  *(this + 16) = v7;
  return v6;
}

uint64_t ZinIrEWUnit::ValidateForDynamicShapes(ZinIrEWUnit *this, CFArrayRef *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(this + 2) - *(this + 1)) >> 3);
  if (v2 == 1)
  {
    return 0;
  }

  if (v2 == 2)
  {
    v3 = *(this + 34) - 1;
    if (v3 < 0x15 && ((0x1F82FBu >> v3) & 1) != 0)
    {
      return 0;
    }
  }

  ZinIrUnitStatus::SetError(a2, @"UnsupportedForDynamicShapes");
  return 3;
}

uint64_t ZinIrEWUnit::PropagateAxisType(ZinIrEWUnit *this, ZinParameterizationContext *a2, void **a3)
{
  *a3 = 0;
  v6 = a3 + 1;
  std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>(a3 + 1, 0, 0, 0);
  *(a3 + 8) = 5;
  *(a3 + 36) = 0;
  if (a2)
  {
    ZinIrUnit::GetBottomAxisTypes(this, v15);
    valid = ZinTensorAxisTypePacked::AreAllAxisTypesValidInaVector(v15);
    v16 = v15;
    std::vector<ZinTensorAxisTypePacked>::__destroy_vector::operator()[abi:ne200100](&v16);
    if ((valid & 1) == 0)
    {
      return 0;
    }

    v8 = *(this + 1);
    *a3 = *(v8 + 96);
    if ((v8 + 96) != a3)
    {
      std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>(v6, *(v8 + 104), *(v8 + 112), (*(v8 + 112) - *(v8 + 104)) >> 4);
    }

    v9 = *(v8 + 128);
    *(a3 + 36) = *(v8 + 132);
    *(a3 + 8) = v9;
    ZinIrUnit::GetBottomAxisTypesAndDims(this, v15);
    v10 = ZinTensorAxisTypeAndDimensions::ValidateBroadcastAxisType(v15);
    v16 = v15;
    std::vector<ZinTensorAxisTypeAndDimensions>::__destroy_vector::operator()[abi:ne200100](&v16);
    if (v10)
    {
      v11 = *(this + 1);
      if (0xF0F0F0F0F0F0F0F1 * ((*(this + 2) - v11) >> 3) >= 2)
      {
        v12 = 1;
        v13 = 232;
        do
        {
          ZinTensorAxisTypePacked::operator|=(a3, v11 + v13);
          ++v12;
          v11 = *(this + 1);
          v13 += 136;
        }

        while (0xF0F0F0F0F0F0F0F1 * ((*(this + 2) - v11) >> 3) > v12);
      }

      return 0;
    }
  }

  return 3;
}

void sub_1A68CED98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<ZinTensorAxisTypeAndDimensions>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__CFDictionary *ZinCreateNEPoolUnit(void **a1)
{
  v28 = *MEMORY[0x1E69E9840];
  Unit = ZinCreateUnit(a1);
  v15 = &unk_1F1A2EA30;
  if (*(a1 + 399) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, a1[47], a1[48]);
  }

  else
  {
    __p = *(a1 + 47);
  }

  v17 = *(a1 + 100);
  memset(&v18, 0, sizeof(v18));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v18, a1[51], a1[52], 0xAAAAAAAAAAAAAAABLL * ((a1[52] - a1[51]) >> 3));
  v3 = *(a1 + 27);
  v15 = &unk_1F19CEE70;
  v4 = *(a1 + 31);
  v22 = *(a1 + 30);
  v23 = v4;
  v24 = *(a1 + 32);
  v25 = *(a1 + 132);
  v5 = *(a1 + 28);
  v6 = *(a1 + 29);
  v19 = v3;
  v20 = v5;
  v21 = v6;
  if (*(a1 + 31) >= 0)
  {
    v7 = *(a1 + 31);
  }

  else
  {
    v7 = a1[2];
  }

  v8 = &v14;
  std::string::basic_string[abi:ne200100](&v14, v7 + 5);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v14.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a1 + 31) >= 0)
    {
      v9 = a1 + 1;
    }

    else
    {
      v9 = a1[1];
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, ".pool");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v14;
  v19 = *(a1 + 4);
  if (&v15 != a1)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v18, a1[5], a1[6], 0xAAAAAAAAAAAAAAABLL * ((a1[6] - a1[5]) >> 3));
  }

  PoolUnit = ZinCreatePoolUnit(&v15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_p, 0x8000100u);
  CFDictionaryAddValue(Unit, v12, PoolUnit);
  CFRelease(v12);
  CFRelease(PoolUnit);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = __p;
  }

  memset(&v14, 0, sizeof(v14));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v14, &v27, &v28, 1uLL);
  ZinCreateNEUnit(a1, &v14, Unit);
  v26 = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v15);
  return Unit;
}

void ZinEngineLayerMirInfo::ZinEngineLayerMirInfo(ZinEngineLayerMirInfo *this, int a2)
{
  v4 = 0;
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 64) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  v5 = vdupq_n_s64(1uLL);
  *(this + 88) = v5;
  *(this + 104) = v5;
  *(this + 120) = v5;
  *(this + 17) = 0;
  *(this + 142) = 0;
  *(this + 38) = 0;
  *(this + 78) = 0;
  *(this + 40) = 1;
  *(this + 170) = 0;
  *(this + 164) = 0;
  *(this + 180) = 4;
  *(this + 188) = 0;
  *(this + 244) = 0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 318) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 382) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 446) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 12) = 0u;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 264) = 0;
  *(this + 124) = 1065353216;
  *(this + 504) = 0;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 136) = 1065353216;
  *(this + 552) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 1065353216;
  *(this + 600) = 0;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 665) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 745) = 0u;
  *(this + 715) = 0u;
  *(this + 731) = 0u;
  *(this + 683) = 0u;
  *(this + 699) = 0u;
  *(this + 843) = 0;
  *(this + 211) = 0;
  *(this + 848) = 0;
  *(this + 850) = 0;
  *(this + 825) = 0u;
  *(this + 795) = 0u;
  *(this + 811) = 0u;
  *(this + 763) = 0u;
  *(this + 779) = 0u;
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  *(this + 952) = 0u;
  *(this + 968) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  do
  {
    v6 = this + v4;
    v7 = (this + v4 + 856);
    *v7 = 0uLL;
    v7[1] = 0uLL;
    *(v6 + 222) = 1065353216;
    *(v6 + 224) = 0;
    *(v6 + 113) = 0;
    *(v6 + 115) = 0;
    *(v6 + 114) = 0;
    v4 += 80;
    v6[928] = 0;
  }

  while (v4 != 160);
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 262) = 1065353216;
  *(this + 264) = 0;
  *(this + 302) = 0;
  *(this + 1212) = 0;
  *(this + 133) = 0;
  *(this + 67) = 0u;
  *(this + 1088) = 0;
  *(this + 1096) = 0u;
  *(this + 1112) = 0u;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 1187) = 0u;
  *(this + 1213) = 1;
  *(this + 1229) = 0;
  *(this + 76) = 0u;
  *(this + 157) = 0;
  *(this + 1240) = 0u;
  *(this + 1264) = 0;
  *(this + 1265) = 0x101010101010101;
  *(this + 163) = 0;
  *(this + 1288) = 0u;
  *(this + 1312) = 0;
  *(this + 167) = 0;
  *(this + 1320) = 0u;
  *(this + 1344) = 0;
  *(this + 171) = 0;
  *(this + 1352) = 0u;
  *(this + 1376) = 0;
  *(this + 1384) = 0u;
  *(this + 175) = 0;
  *(this + 1408) = 0;
  *(this + 1273) = 50529027;
  ZinMirPerfTracerConfig::ZinMirPerfTracerConfig((this + 1416), 0);
  *(this + 181) = 0;
  *(this + 91) = xmmword_1A75D1230;
  *(this + 92) = xmmword_1A75D1230;
  *(this + 93) = xmmword_1A75D1230;
  *(this + 94) = xmmword_1A75D1230;
  *(this + 95) = xmmword_1A75D1230;
  *(this + 96) = xmmword_1A75D1230;
  *(this + 388) = 7;
  *(this + 1556) = 0;
  *(this + 1560) = 0;
  *(this + 1568) = 0;
  ZinMirL2Config::NE::SetNumNeededNEs((this + 112), a2);
  ZinMirL2Config::NE::SetOCGSize((this + 112), 1);
}

void sub_1A68CF49C(_Unwind_Exception *a1)
{
  v9 = *v7;
  if (*v7)
  {
    v1[174] = v9;
    operator delete(v9);
  }

  v10 = *v6;
  if (*v6)
  {
    v1[170] = v10;
    operator delete(v10);
  }

  v11 = *v5;
  if (*v5)
  {
    v1[166] = v11;
    operator delete(v11);
  }

  v12 = *v4;
  if (*v4)
  {
    v1[162] = v12;
    operator delete(v12);
  }

  ZinDramDependentInfo::~ZinDramDependentInfo(v3);
  std::array<ZinDramDependentInfo,2ul>::~array(v2);
  ZinMirL2Config::~ZinMirL2Config((v1 + 14));
  v13 = v1[5];
  if (v13)
  {
    v1[6] = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void ZinEngineLayerMirInfo::~ZinEngineLayerMirInfo(ZinEngineLayerMirInfo *this)
{
  v2 = *(this + 177);
  if (v2)
  {
    *(this + 178) = v2;
    operator delete(v2);
  }

  v3 = *(this + 173);
  if (v3)
  {
    *(this + 174) = v3;
    operator delete(v3);
  }

  v4 = *(this + 169);
  if (v4)
  {
    *(this + 170) = v4;
    operator delete(v4);
  }

  v5 = *(this + 165);
  if (v5)
  {
    *(this + 166) = v5;
    operator delete(v5);
  }

  v6 = *(this + 161);
  if (v6)
  {
    *(this + 162) = v6;
    operator delete(v6);
  }

  v7 = *(this + 133);
  if (v7)
  {
    *(this + 134) = v7;
    operator delete(v7);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 1016);
  for (i = 0; i != -160; i -= 80)
  {
    v9 = this + i;
    v10 = *(this + i + 984);
    if (v10)
    {
      *(v9 + 124) = v10;
      operator delete(v10);
    }

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table((v9 + 936));
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 560);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 512);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 464);
  v11 = *(this + 5);
  if (v11)
  {
    *(this + 6) = v11;
    operator delete(v11);
  }
}

__n128 ZinEngineLayerMirInfo::SetAddressTranslationBoundaryRegisters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v5 = 1512;
    }

    else
    {
      if (a2 != 1)
      {
        ZinAssertImpl("Type Undefined\n", a2, a3, v3, v4);
      }

      v5 = 1480;
    }
  }

  else
  {
    v5 = 1448;
  }

  v6 = (a1 + v5);
  result = *a3;
  v8 = *(a3 + 16);
  *v6 = *a3;
  v6[1] = v8;
  return result;
}

__n128 ZinEngineLayerMirInfo::GetAddressTranslationBoundaryRegisters@<Q0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v5 = 1512;
    }

    else
    {
      if (a2 != 1)
      {
        ZinAssertImpl("Type Undefined\n", v3, v4);
      }

      v5 = 1480;
    }
  }

  else
  {
    v5 = 1448;
  }

  v6 = a1 + v5;
  result = *v6;
  v8 = *(v6 + 16);
  *a3 = *v6;
  a3[1] = v8;
  return result;
}

uint64_t *ZinEngineLayerMirInfo::GetAllValidL2Symbols@<X0>(uint64_t **__return_ptr a1@<X8>, ZinEngineLayerMirInfo *this@<X0>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  Symbol = ZinL2Access::GetSymbol((this + 1288));
  std::__tree<ZinIrSymbol *,ZinIrSymbol::Compare,std::allocator<ZinIrSymbol *>>::__emplace_unique_key_args<ZinIrSymbol *,ZinIrSymbol * const&>(a1, &Symbol, &Symbol);
  Symbol = ZinL2Access::GetSymbol((this + 1320));
  std::__tree<ZinIrSymbol *,ZinIrSymbol::Compare,std::allocator<ZinIrSymbol *>>::__emplace_unique_key_args<ZinIrSymbol *,ZinIrSymbol * const&>(a1, &Symbol, &Symbol);
  Symbol = ZinL2Access::GetSymbol((this + 1352));
  std::__tree<ZinIrSymbol *,ZinIrSymbol::Compare,std::allocator<ZinIrSymbol *>>::__emplace_unique_key_args<ZinIrSymbol *,ZinIrSymbol * const&>(a1, &Symbol, &Symbol);
  Symbol = ZinL2Access::GetSymbol((this + 1384));
  std::__tree<ZinIrSymbol *,ZinIrSymbol::Compare,std::allocator<ZinIrSymbol *>>::__emplace_unique_key_args<ZinIrSymbol *,ZinIrSymbol * const&>(a1, &Symbol, &Symbol);
  Symbol = 0;
  return std::__tree<ZinIrSymbol const*,ZinIrSymbol::Compare,std::allocator<ZinIrSymbol const*>>::__erase_unique<ZinIrSymbol const*>(a1, &Symbol);
}

uint64_t *ZinEngineLayerMirInfo::GetL2RdSymbols@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(a3, *(a1 + 32 * a2 + 1288), *(a1 + 32 * a2 + 1296), (*(a1 + 32 * a2 + 1296) - *(a1 + 32 * a2 + 1288)) >> 3);
}

uint64_t *ZinEngineLayerMirInfo::GetL2WrSymbols@<X0>(uint64_t *__return_ptr a1@<X8>, ZinEngineLayerMirInfo *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(a1, *(this + 173), *(this + 174), (*(this + 174) - *(this + 173)) >> 3);
}

uint64_t ZinEngineLayerMirInfo::SetL2RdSymbols(uint64_t a1, char **a2, unsigned int a3, char a4)
{
  v8 = *a2;
  v9 = a2[1];
  while (v8 != v9)
  {
    if (!IsL2Symbol(*v8))
    {
      return 0;
    }

    v8 += 8;
  }

  if (a3 <= 2)
  {
    ZinL2Access::SetSymbols(a1 + ((32 * a3) | 0x508), a2, a4);
  }

  return 1;
}

BOOL IsL2Symbol(const ZinIrSymbol *a1)
{
  if (a1 && ZinIrSymbol::GetMemType(a1) == 2)
  {
    return 1;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    IsL2Symbol();
    return 0;
  }

  return result;
}

uint64_t ZinEngineLayerMirInfo::SetL2WrSymbols(uint64_t a1, char **a2, char a3)
{
  v6 = *a2;
  v7 = a2[1];
  while (1)
  {
    if (v6 == v7)
    {
      ZinL2Access::SetSymbols(a1 + 1384, a2, a3);
      return 1;
    }

    if (!IsL2Symbol(*v6))
    {
      break;
    }

    v6 += 8;
  }

  return 0;
}

uint64_t ZinEngineLayerMirInfo::RemoveL2RdSymbol(uint64_t result, unsigned int a2)
{
  if (a2 <= 2)
  {
    return ZinL2Access::RemoveSymbol(result + ((32 * a2) | 0x508));
  }

  return result;
}

uint64_t ZinEngineLayerMirInfo::HasChainRead(_BYTE *a1, int *a2)
{
  if (a1[1312] == 4)
  {
    v2 = 0;
LABEL_7:
    *a2 = v2;
    return 1;
  }

  if (a1[1344] == 4)
  {
    v2 = 1;
    goto LABEL_7;
  }

  if (a1[1376] == 4)
  {
    v2 = 2;
    goto LABEL_7;
  }

  return 0;
}

void ZinEngineLayerMirInfo::SetNeedInputDMACached(uint64_t result, int a2, char a3)
{
  switch(a2)
  {
    case 2:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinEngineLayerMirInfo::SetNeedInputDMACached();
      }

      break;
    case 1:
      *(result + 1545) = a3;
      break;
    case 0:
      *(result + 1544) = a3;
      break;
  }
}

uint64_t ZinEngineLayerMirInfo::NeedInputDMACached(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      v3 = 0;
      return v3 & 1;
    }

    v2 = 1545;
  }

  else
  {
    v2 = 1544;
  }

  v3 = *(a1 + v2);
  return v3 & 1;
}

CFMutableDictionaryRef ZinCreateBroadcastUnit(const ZinIrBroadcastUnitInfo *a1)
{
  theDict = ZinCreateUnit(a1);
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v5 = *(a1 + 12);
  if (v5)
  {
    v6 = MEMORY[0x1E695E9D8];
    v7 = MEMORY[0x1E695E9E8];
    do
    {
      v8 = CFDictionaryCreateMutable(v2, 0, v6, v7);
      valuePtr = v5[3];
      v9 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
      v10 = ZinIrCoordinateToCFString(v5 + 4);
      CFDictionaryAddValue(v8, @"Dimension", v10);
      CFDictionaryAddValue(v8, @"Size", v9);
      CFArrayAppendValue(v4, v8);
      CFRelease(v9);
      CFRelease(v8);
      v5 = *v5;
    }

    while (v5);
  }

  CFDictionaryAddValue(Mutable, @"BroadcastInfo", v4);
  CFDictionaryAddValue(theDict, @"Params", Mutable);
  CFRelease(v4);
  CFRelease(Mutable);
  return theDict;
}

void ZinMirBasicBlocksMerge::ZinMirBasicBlocksMerge(ZinMirBasicBlocksMerge *this, ZinIrControlFlowGraph *a2)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  ZinIrControlFlowGraph::GetConditionLayers(v4, a2);
  v3 = v4[2];
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(v4, v4[1]);
  if (v3)
  {
    ZinAssertImpl("Basic blocks with conditional execution can't be merged\n");
  }

  if (*(a2 + 2) >= 2uLL)
  {
    ZinIrControlFlowGraph::CreateBasicBlock<>(a2);
  }
}

void sub_1A68CFD48(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(v3);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t ZinMirBasicBlocksMerge::StoreBasicBlockOutProducers(ZinIrTarget **a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  Hal = ZinIrTarget::GetHal(*a1);
  v15.n128_u64[0] = a2;
  v16 = 0;
  v9 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v15);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v15, v9);
  v10 = std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(Hal, &v15);
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v15);
  if (!v10)
  {
    v14 = (a2 + 48);
    if (*(a2 + 71) < 0)
    {
      v14 = *v14;
    }

    ZinAssertImpl("Missing %s in BBmerge\n", v14);
  }

  v12 = *a4;
  v13 = a4[1];
  if (*a4 != v13)
  {
    do
    {
      if (*(*(*v12 + 88) + 8) == 81 && *(*v12 + 168) == a3)
      {
        v17 = *v12;
        v15.n128_u64[0] = &v17;
        result = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer *&&>,std::tuple<>>(a1 + 6, &v17, &std::piecewise_construct, &v15);
        *(result + 24) = a2;
      }

      ++v12;
    }

    while (v12 != v13);
  }

  return result;
}

void sub_1A68CFE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ZinMirBasicBlocksMerge::StoreBasicBlockInConsumers(ZinIrTarget **a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  Hal = ZinIrTarget::GetHal(*a1);
  v28.n128_u64[0] = a2;
  v29 = 0;
  v9 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v28);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v28, v9);
  v10 = std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(Hal, &v28);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v28);
  if (!v10)
  {
    v27 = (a2 + 48);
    if (*(a2 + 71) < 0)
    {
      v27 = *v27;
    }

    ZinAssertImpl("Missing %s in BBmerge\n", v27);
  }

  v11 = *a4;
  v12 = a4[1];
  if (*a4 != v12)
  {
    do
    {
      if (*(*(*v11 + 88) + 8) == 80 && *(*v11 + 168) == a3)
      {
        v30 = *v11;
        v28.n128_u64[0] = &v30;
        v13 = std::__hash_table<std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(a1 + 11, &v30, &std::piecewise_construct, &v28);
        v14 = v13;
        v16 = v13[4];
        v15 = v13[5];
        if (v16 >= v15)
        {
          v18 = v13[3];
          v19 = (v16 - v18) >> 3;
          if ((v19 + 1) >> 61)
          {
            std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
          }

          v20 = v15 - v18;
          v21 = v20 >> 2;
          if (v20 >> 2 <= (v19 + 1))
          {
            v21 = v19 + 1;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v22 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>((v13 + 3), v22);
          }

          *(8 * v19) = a2;
          v17 = 8 * v19 + 8;
          v23 = v13[3];
          v24 = v13[4] - v23;
          v25 = (8 * v19 - v24);
          memcpy(v25, v23, v24);
          v26 = v14[3];
          v14[3] = v25;
          v14[4] = v17;
          v14[5] = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v16 = a2;
          v17 = (v16 + 1);
        }

        v14[4] = v17;
      }

      ++v11;
    }

    while (v11 != v12);
  }
}

void sub_1A68D0064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinMirBasicBlocksMerge::MergeBasicBlocks(ZinMirBasicBlocksMerge *this, const ZinIrBasicBlock *a2, const ZinIrBasicBlock *a3, ZinIrControlFlowGraph *a4)
{
  v65[4] = *MEMORY[0x1E69E9840];
  v61 = 0u;
  v62 = 0u;
  v63 = 1065353216;
  Hal = ZinIrTarget::GetHal(a2);
  v7 = *(Hal + 472);
  v52 = (Hal + 480);
  if (v7 != (Hal + 480))
  {
    do
    {
      v8 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr((v7 + 4));
      ZinIrControlFlowGraph::GetBasicBlockInConsumers(&v59, a4, v8);
      v9 = v59;
      if (v59 != v60)
      {
        do
        {
          if (*(*(v9[4] + 168) + 576) == a3)
          {
            v55.n128_u64[0] = v8;
            v57.n128_u64[0] = &v55;
            v10 = std::__hash_table<std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(&v61, &v55, &std::piecewise_construct, &v57);
            v11 = v10;
            v13 = v10[4];
            v12 = v10[5];
            if (v13 >= v12)
            {
              v15 = v10[3];
              v16 = (v13 - v15) >> 3;
              if ((v16 + 1) >> 61)
              {
                std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
              }

              v17 = v12 - v15;
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
                std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>((v10 + 3), v19);
              }

              v20 = (8 * v16);
              *v20 = v9[4];
              v14 = 8 * v16 + 8;
              v21 = v10[3];
              v22 = v10[4] - v21;
              v23 = v20 - v22;
              memcpy(v20 - v22, v21, v22);
              v24 = v11[3];
              v11[3] = v23;
              v11[4] = v14;
              v11[5] = 0;
              if (v24)
              {
                operator delete(v24);
              }
            }

            else
            {
              *v13 = v9[4];
              v14 = (v13 + 1);
            }

            v11[4] = v14;
          }

          v25 = v9[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v9[2];
              v27 = *v26 == v9;
              v9 = v26;
            }

            while (!v27);
          }

          v9 = v26;
        }

        while (v26 != v60);
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v59, v60[0]);
      v28 = v7[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v7[2];
          v27 = *v29 == v7;
          v7 = v29;
        }

        while (!v27);
      }

      v7 = v29;
    }

    while (v29 != v52);
  }

  if (!*(&v62 + 1))
  {
    goto LABEL_52;
  }

  v30 = ZinIrTarget::GetHal(a2);
  v65[0] = &unk_1F19EEF60;
  v65[1] = this;
  v65[3] = v65;
  if (ZinIrOpLayerGraph::Traverse(v30, v65, 0, 0))
  {
    std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v65);
LABEL_33:
    v33 = 3;
    goto LABEL_53;
  }

  v31 = ZinIrTarget::GetHal(a3);
  v64[0] = &unk_1F19EEF60;
  v64[1] = this;
  v64[3] = v64;
  v32 = ZinIrOpLayerGraph::Traverse(v31, v64, 0, 0);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v64);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v65);
  if (v32)
  {
    goto LABEL_33;
  }

  v34 = v62;
  if (!v62)
  {
LABEL_52:
    v33 = 0;
    goto LABEL_53;
  }

  v35 = 1;
  do
  {
    v36 = v34 + 2;
    if (!std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 6, v34 + 2))
    {
      v50 = (*v36 + 48);
      if (*(*v36 + 71) < 0)
      {
        v50 = *v50;
      }

      ZinAssertImpl("BBOut is not cached for %s\n", v50);
    }

    v59 = v34 + 2;
    v37 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer *&&>,std::tuple<>>(this + 6, v34 + 2, &std::piecewise_construct, &v59);
    v38 = v34[3];
    v39 = v34[4];
    v54 = v34;
    if (v38 != v39)
    {
      v40 = v37[3];
      do
      {
        v59 = *v38;
        if (!std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 11, &v59))
        {
          v49 = (*v38 + 48);
          if (*(*v38 + 71) < 0)
          {
            v49 = *v49;
          }

          ZinAssertImpl("BBIn is not cached for %s\n", v49);
        }

        v55.n128_u64[0] = *v38;
        v57.n128_u64[0] = &v55;
        v41 = std::__hash_table<std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,std::vector<ZinANELayer *>>>>::__emplace_unique_key_args<ZinIrTensor const*,std::piecewise_construct_t const&,std::tuple<ZinIrTensor const* const&>,std::tuple<>>(this + 11, &v55, &std::piecewise_construct, &v57);
        v60[0] = 0;
        v60[1] = 0;
        v59 = 0;
        std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v59, v41[3], v41[4], (v41[4] - v41[3]) >> 3);
        v42 = v59;
        v43 = v60[0];
        if (v59 != v60[0])
        {
          do
          {
            v44 = ZinIrTarget::GetHal(*this);
            v57.n128_u64[0] = v40;
            v58 = 0;
            v45 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v57);
            RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v57, v45);
            v55.n128_u64[0] = *v42;
            v56 = 0;
            v46 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v55);
            RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v55, v46);
            LOBYTE(v44) = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::IsConnected(v44, &v57, &v55);
            std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v55);
            std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v57);
            if ((v44 & 1) == 0)
            {
              v47 = ZinIrTarget::GetHal(*this);
              v35 &= ZinIrOpLayerGraph::AddEdge(v47, v40, *v42, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
            }

            ++v42;
          }

          while (v42 != v43);
          v42 = v59;
        }

        if (v42)
        {
          v60[0] = v42;
          operator delete(v42);
        }

        v38 += 8;
      }

      while (v38 != v39);
    }

    v34 = *v54;
  }

  while (*v54);
  if (v35)
  {
    v33 = 0;
  }

  else
  {
    v33 = 3;
  }

LABEL_53:
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(&v61);
  return v33;
}

void sub_1A68D057C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v28 - 128);
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(&a23);
  _Unwind_Resume(a1);
}

uint64_t ZinMirBasicBlocksMerge::Execute(ZinMirBasicBlocksMerge *this, ZinIrControlFlowGraph *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a2 + 2) == 1)
  {
    return 0;
  }

  ZinIrControlFlowGraph::GetBasicBlockOutLayers(a2, &__p);
  v5 = __p;
  if (__p == &v26)
  {
LABEL_18:
    std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(&__p, v26);
    if (*(a2 + 2))
    {
      v15 = MEMORY[0x1E69E9C10];
      do
      {
        v23[0] = *(*a2 + 32);
        if ((ZinIrControlFlowGraph::RemoveNode(a2, v23) & 1) == 0 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          ZinIrBasicBlock::GetName(&__p, v23[0]);
          if (v27 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = p_p;
          _os_log_error_impl(&dword_1A617D000, v15, OS_LOG_TYPE_ERROR, "Merging blocks failed to remove node %s\n", &buf, 0xCu);
          if (v27 < 0)
          {
            operator delete(__p);
          }
        }
      }

      while (*(a2 + 2));
    }

    if (ZinIrControlFlowGraph::AddNode(a2, *this))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    while (1)
    {
      v6 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr((v5 + 4));
      v7 = *(*(v6 + 168) + 576);
      ZinIrControlFlowGraph::GetBasicBlockInConsumers(&buf, a2, v6);
      v8 = buf;
      if (buf != (&buf + 8))
      {
        break;
      }

LABEL_12:
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&buf, *(&buf + 1));
      v13 = v5[1];
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
          v14 = v5[2];
          v12 = *v14 == v5;
          v5 = v14;
        }

        while (!v12);
      }

      v5 = v14;
      if (v14 == &v26)
      {
        goto LABEL_18;
      }
    }

    while (1)
    {
      v9 = *(*(v8[4] + 168) + 576);
      if (ZinMirBasicBlocksMerge::MergeBasicBlocks(this, v7, v9, a2))
      {
        break;
      }

      v10 = v8[1];
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
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
      if (v11 == (&buf + 8))
      {
        goto LABEL_12;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrBasicBlock::GetName(v23, v7);
      v17 = v24;
      v18 = v23[0];
      ZinIrBasicBlock::GetName(v21, v9);
      v19 = v23;
      if (v17 < 0)
      {
        v19 = v18;
      }

      if (v22 >= 0)
      {
        v20 = v21;
      }

      else
      {
        v20 = v21[0];
      }

      *v28 = 136315394;
      v29 = v19;
      v30 = 2080;
      v31 = v20;
      _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Merging %s and %s basic blocks failed\n", v28, 0x16u);
      if (v22 < 0)
      {
        operator delete(v21[0]);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }
    }

    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&buf, *(&buf + 1));
    std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(&__p, v26);
    return 3;
  }
}

void sub_1A68D0954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v22 - 96, *(v22 - 88));
  std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::destroy(&a21, a22);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinMirBasicBlocksMerge::MergeBasicBlocks(ZinIrBasicBlock const*,ZinIrBasicBlock const*,ZinIrControlFlowGraph *)::$_0,std::allocator<ZinMirBasicBlocksMerge::MergeBasicBlocks(ZinIrBasicBlock const*,ZinIrBasicBlock const*,ZinIrControlFlowGraph *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19EEF60;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinMirBasicBlocksMerge::MergeBasicBlocks(ZinIrBasicBlock const*,ZinIrBasicBlock const*,ZinIrControlFlowGraph *)::$_0,std::allocator<ZinMirBasicBlocksMerge::MergeBasicBlocks(ZinIrBasicBlock const*,ZinIrBasicBlock const*,ZinIrControlFlowGraph *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1, uint64_t *a2, ZinIrOpLayer **a3)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v60 = *a3;
  if ((*(*(v60 + 11) + 8) & 0xFFFFFFFE) == 0x50)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  Hal = ZinIrTarget::GetHal(*v5);
  OutgoingLayersNodeKey = ZinIrOpLayer::GetOutgoingLayersNodeKey(v60);
  v58 = 0;
  v59 = 0;
  v57 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v57, *OutgoingLayersNodeKey, OutgoingLayersNodeKey[1], (OutgoingLayersNodeKey[1] - *OutgoingLayersNodeKey) >> 3);
  v43 = Hal;
  IncomingLayersNodeKey = ZinIrOpLayer::GetIncomingLayersNodeKey(v60);
  __p = 0;
  v55 = 0;
  v56 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, *IncomingLayersNodeKey, IncomingLayersNodeKey[1], (IncomingLayersNodeKey[1] - *IncomingLayersNodeKey) >> 3);
  v9 = v57;
  v44 = v58;
  if (v57 != v58)
  {
    do
    {
      v46.n128_u64[0] = *v9;
      MemoryPools = ZinIrContext::GetMemoryPools(v46.n128_u64[0]);
      if (MemoryPools[1] != *MemoryPools)
      {
        v11 = 0;
        do
        {
          v50.n128_u64[0] = &v46;
          v12 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>((v5 + 8), &v46, &std::piecewise_construct, &v50);
          v13 = *(*ZinIrContext::GetMemoryPools(v46.n128_u64[0]) + 8 * v11);
          v15 = v12[4];
          v14 = v12[5];
          if (v15 >= v14)
          {
            v17 = v12[3];
            v18 = (v15 - v17) >> 4;
            v19 = v18 + 1;
            if ((v18 + 1) >> 60)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            v20 = v14 - v17;
            if (v20 >> 3 > v19)
            {
              v19 = v20 >> 3;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFF0)
            {
              v21 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<CostBasedSubgraphIdentification::CostDescriptor>>((v12 + 3), v21);
            }

            v22 = (16 * v18);
            *v22 = v11;
            v22[1] = v13;
            v16 = 16 * v18 + 16;
            v23 = v12[3];
            v24 = v12[4] - v23;
            v25 = v22 - v24;
            memcpy(v22 - v24, v23, v24);
            v26 = v12[3];
            v12[3] = v25;
            v12[4] = v16;
            v12[5] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v15 = v11;
            v15[1] = v13;
            v16 = (v15 + 2);
          }

          v12[4] = v16;
          v27 = ZinIrContext::GetMemoryPools(v46.n128_u64[0]);
          ++v11;
        }

        while (v11 < (v27[1] - *v27) >> 3);
      }

      ++v9;
    }

    while (v9 != v44);
  }

  v50.n128_u64[0] = v60;
  v51 = 0;
  v28 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v50);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v50, v28);
  v29 = std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(v43, &v50);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v50);
  if (v29)
  {
    v30 = 1;
  }

  else
  {
    v52.n128_u64[0] = v60;
    v53 = 0;
    v31 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v52);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v52, v31);
    v32 = ZinIrOpLayerGraph::RemoveNode(v3, &v52, 0);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v52);
    v48.n128_u64[0] = v60;
    v49 = 0;
    v33 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v48);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v48, v33);
    v62[0] = v60;
    v45[0] = v62;
    v45[1] = 1;
    Layer2TDMapper::SourceLayer::SourceLayer(&v46, v45);
    ZinIrOpLayerGraph::AddNode(v43, &v48, &v46, &v50);
    v34 = v50.n128_u8[0];
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v50.n128_i64[1]);
    v46.n128_u64[0] = &unk_1F19C3950;
    v61 = &v46.n128_u64[1];
    std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v61);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v48);
    ZinMirBasicBlocksMerge::StoreBasicBlockInConsumers(v5, v60, v3, &__p);
    ZinMirBasicBlocksMerge::StoreBasicBlockOutProducers(v5, v60, v3, &v57);
    v30 = v32 & v34;
  }

  v50.n128_u64[0] = &v60;
  v35 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer * const&>,std::tuple<>>((v5 + 8), &v60, &std::piecewise_construct, &v50);
  v36 = v35[3];
  v37 = v35[4];
  while (v36 != v37)
  {
    v50.n128_u64[0] = *(v36 + 8);
    v51 = 0;
    v38 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v50);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v50, v38);
    if (std::__tree<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>,std::allocator<RawOrShared<ZinIrOpLayer>>>::__count_unique<RawOrShared<ZinIrOpLayer>>(v43, &v50))
    {
      v46.n128_u64[0] = *(v36 + 8);
      v47 = 0;
      v39 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v46);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v46, v39);
      v48.n128_u64[0] = v60;
      v49 = 0;
      v40 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v48);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v48, v40);
      IsConnected = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::IsConnected(v43, &v46, &v48);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v48);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v46);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v50);
      if ((IsConnected & 1) == 0)
      {
        v30 &= ZinIrOpLayerGraph::AddEdge(v43, *(v36 + 8), v60, 0xFFFFFFFFFFFFFFFFLL, *v36, 0);
      }
    }

    else
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v50);
    }

    v36 += 16;
  }

  if (v30)
  {
    v4 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      std::__function::__func<ZinMirBasicBlocksMerge::MergeBasicBlocks(ZinIrBasicBlock const*,ZinIrBasicBlock const*,ZinIrControlFlowGraph *)::$_0,std::allocator<ZinMirBasicBlocksMerge::MergeBasicBlocks(ZinIrBasicBlock const*,ZinIrBasicBlock const*,ZinIrControlFlowGraph *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(&v60);
    }

    v4 = 3;
  }

  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  return v4;
}

void sub_1A68D0F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  *(v30 - 112) = v29 + 8;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100]((v30 - 112));
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a18);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  v32 = *(v30 - 144);
  if (v32)
  {
    *(v30 - 136) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinMirBasicBlocksMerge::MergeBasicBlocks(ZinIrBasicBlock const*,ZinIrBasicBlock const*,ZinIrControlFlowGraph *)::$_0,std::allocator<ZinMirBasicBlocksMerge::MergeBasicBlocks(ZinIrBasicBlock const*,ZinIrBasicBlock const*,ZinIrControlFlowGraph *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<ZinMirBasicBlocksMerge::MergeBasicBlocks(ZinIrBasicBlock const*,ZinIrBasicBlock const*,ZinIrControlFlowGraph *)::$_0,std::allocator<ZinMirBasicBlocksMerge::MergeBasicBlocks(ZinIrBasicBlock const*,ZinIrBasicBlock const*,ZinIrControlFlowGraph *)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::operator()(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = (*a1 + 48);
  if (*(*a1 + 71) < 0)
  {
    v1 = *v1;
  }

  v2 = 136315138;
  v3 = v1;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Moving %s node failed in basic block merging\n", &v2, 0xCu);
}

void ZinMirHoistGOCTexture::InitializePatterns(ZinMirHoistGOCTexture *this)
{
  v15[26] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v9, "dequant_goc");
  v10[0] = &unk_1F19C6380;
  v10[1] = MatchDequantGOC;
  v10[3] = v10;
  v5 = 1;
  std::unordered_set<Attribute>::unordered_set(&v11, &v5, 1);
  std::string::basic_string[abi:ne200100]<0>(v12, "texture");
  v13[0] = &unk_1F19C6380;
  v13[1] = MatchTexture;
  v13[3] = v13;
  v4 = 1;
  std::unordered_set<Attribute>::unordered_set(v14, &v4, 1);
  memset(v6, 0, sizeof(v6));
  std::vector<ZinLinearPattern::AtomItemDesc>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItemDesc const*,ZinLinearPattern::AtomItemDesc const*>(v6, &v9, v15, 2uLL);
  v2 = *(this + 2);
  v8[0] = &unk_1F19CAB88;
  v8[1] = IsValidPattern;
  v8[3] = v8;
  ZinLinearPattern::ZinLinearPattern(v15, v6, v2, 0, v8, 0);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](v8);
  v7 = v6;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = 0;
  while (1)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v14[v3 * 8]);
    std::__function::__value_func<MatchStatus ()(MatchParams const&)>::~__value_func[abi:ne200100](&v13[v3]);
    if (SHIBYTE(v12[v3 + 2]) < 0)
    {
      operator delete(v12[v3]);
    }

    v3 -= 12;
    if (v3 == -24)
    {
      operator new();
    }
  }
}

void sub_1A68D1408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  (*(*v41 + 48))(v41, a2, a3, a4, a5, a6, a7, a8);
  ZinLinearPattern::~ZinLinearPattern(va);
  _Unwind_Resume(a1);
}

uint64_t MatchDequantGOC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(*(v2 + 11) + 8) == 2 && (MemoryPools = ZinIrContext::GetMemoryPools(v2), ZinIrOpLayer::IsTensorFmtQuantized(**MemoryPools, v4)))
  {
    OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(*(a1 + 8));
    v6 = OutgoingLayers[1] - *OutgoingLayers < 9uLL;
  }

  else
  {
    v6 = 0;
  }

  return v6 | 0x100u;
}

uint64_t IsValidPattern(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "dequant_goc");
  SingleMatch = ZinPattern::GetSingleMatch(a3, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "texture");
  v5 = ZinPattern::GetSingleMatch(a3, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SingleMatch != **ZinIrContext::GetMemoryPools(v5))
  {
    return 0;
  }

  if (ZinGOCLayer::IsSingularScaleBias(SingleMatch))
  {
    return 1;
  }

  result = (*(*v5 + 384))(v5, 2);
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_1A68D1670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinMirHoistGOCTexture::Hoist(ZinMirHoistGOCTexture *this, const ZinPattern *a2, ZinIrOpLayerGraph *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v10, "dequant_goc");
  SingleMatch = ZinPattern::GetSingleMatch(a2, &v10);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "texture");
  v5 = ZinPattern::GetSingleMatch(a2, &v10);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (*(SingleMatch + 71) >= 0)
  {
    v6 = *(SingleMatch + 71);
  }

  else
  {
    v6 = *(SingleMatch + 56);
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v6 + 14);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(SingleMatch + 71) >= 0)
    {
      v8 = (SingleMatch + 48);
    }

    else
    {
      v8 = *(SingleMatch + 48);
    }

    memmove(p_p, v8, v6);
  }

  strcpy(p_p + v6, "SwapGOCTexture");
  ZinObjectNameFactory::ZinObjectNameFactory(&v10, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*v5 + 40))(v5, 0);
  ZinObjectNameFactory::CreateName(&v10, 0, &__p);
  ZinIrTensor::CreateTensor();
}

void sub_1A68D1A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a12);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v34 - 168);
  v36 = *(v34 - 136);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  *(v34 - 128) = &unk_1F19D0088;
  if (*(v34 - 97) < 0)
  {
    operator delete(*(v34 - 120));
  }

  _Unwind_Resume(a1);
}

uint64_t ZinClusterConstraintPerAne::CanBeInCluster(ZinClusterConstraintPerAne *this, const ZinIrOpLayer *a2)
{
  v4 = *this;
  IsANELayer = ZinIrOpLayer::IsANELayer(a2);
  if (v4)
  {
    if (IsANELayer)
    {
      BondedInfo = ZinEngineLayer::GetBondedInfo(a2);
      AneIndexHint = ZinBondedInfo::GetAneIndexHint(BondedInfo);
      v8 = *(AneIndexHint + 8);
      v9 = *(this + 16);
      if (v8 != v9 || v8 == 0)
      {
        if (v8 != v9)
        {
          return 0;
        }
      }

      else if (*AneIndexHint != *(this + 1))
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    v11 = 1;
    if (IsANELayer)
    {
      v12 = ZinEngineLayer::GetBondedInfo(a2);
      v13 = ZinBondedInfo::GetAneIndexHint(v12);
      v14 = *(v13 + 8);
      *(this + 1) = *v13;
      *(this + 16) = v14;
      *this = 1;
    }
  }

  return v11;
}

_BYTE *ZinClusterConstraintPerAne::Reset(_BYTE *this)
{
  *this = 0;
  if (this[16] == 1)
  {
    this[16] = 0;
  }

  return this;
}

uint64_t CpMemCacheAllocGraph::CpMemCacheAllocGraph(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  CpGraph::CpGraph(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1065353216;
  *(a1 + 376) = a1 + 384;
  *(a1 + 384) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = a1 + 408;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = a1 + 432;
  return a1;
}

void sub_1A68D1D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CpMemCacheAllocGraph::SetLayerLatencyInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = &v5;
  result = std::__tree<std::__value_type<unsigned long long,MemCacheLayerLatencyInfo const*>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,MemCacheLayerLatencyInfo const*>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,MemCacheLayerLatencyInfo const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 376, &v5, &std::piecewise_construct, &v6);
  result[5] = a3;
  return result;
}

void *CpMemCacheAllocGraph::SetTensorFootprintInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = &v5;
  result = std::__tree<std::__value_type<unsigned long long,MemCacheLayerLatencyInfo const*>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,MemCacheLayerLatencyInfo const*>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,MemCacheLayerLatencyInfo const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 400, &v5, &std::piecewise_construct, &v6);
  result[5] = a3;
  return result;
}

void *CpMemCacheAllocGraph::SetBoundaryTensor(CpMemCacheAllocGraph *this, unint64_t a2)
{
  v4 = a2;
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(this + 34, &v5);
  if (result)
  {
    return std::__hash_table<ZinNamedType<unsigned long,TidTag>,std::hash<ZinNamedType<unsigned long,TidTag>>,std::equal_to<ZinNamedType<unsigned long,TidTag>>,std::allocator<ZinNamedType<unsigned long,TidTag>>>::__emplace_unique_key_args<ZinNamedType<unsigned long,TidTag>,ZinNamedType<unsigned long,TidTag> const&>(this + 42, &v4, &v4);
  }

  return result;
}

void *CpMemCacheAllocGraph::SetInputTensorUsageInfo(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a2;
  v6 = &v5;
  result = std::__tree<std::__value_type<unsigned long,std::set<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::set<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::set<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(a1 + 424, &v5, &std::piecewise_construct, &v6) + 5;
  if (result != a3)
  {
    return std::__tree<std::__value_type<ZinIrDimension,unsigned long>,std::__map_value_compare<ZinIrDimension,std::__value_type<ZinIrDimension,unsigned long>,std::less<ZinIrDimension>,true>,std::allocator<std::__value_type<ZinIrDimension,unsigned long>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<ZinIrDimension,unsigned long>,std::__tree_node<std::__value_type<ZinIrDimension,unsigned long>,void *> *,long>>(result, *a3, a3 + 1);
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned long long,MemCacheLayerLatencyInfo const*>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,MemCacheLayerLatencyInfo const*>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,MemCacheLayerLatencyInfo const*>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

void sub_1A68D20FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(va);
  _Unwind_Resume(a1);
}

void ZinPESecureFlushLayer::ExecutionOrderSort(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t ZinPESecureFlushLayer::DebugDetailPrint@<X0>(_BYTE *a1@<X8>)
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

void sub_1A68D2398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](&a26);
  _Unwind_Resume(a1);
}

int64x2_t ZinPESecureFlushLayer::GetProgrammedKernelSize@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(1uLL);
  *a1 = result;
  a1[1].i64[0] = 1;
  return result;
}

void ZinPESecureFlushLayer::GetProgrammedPadding(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void ZinPESecureFlushLayer::GetProjectedCoreInputDims(ZinPESecureFlushLayer *this@<X0>, uint64_t a2@<X8>)
{
  ZinIrOpLayer::GetInputTensorDimensions(__p, this);
  v3 = __p[0];
  v4 = *(__p[0] + 1);
  *a2 = *__p[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v3[4];
  __p[1] = v3;
  operator delete(v3);
}

void ZinPESecureFlushLayer::~ZinPESecureFlushLayer(ZinEngineLayerMirInfo **this)
{
  ZinANELayer::~ZinANELayer(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t ZinParseSDPAUnit(const __CFDictionary *a1, ZinIrSDPAUnitInfo *a2, CFArrayRef *a3)
{
  Value = CFDictionaryGetValue(a1, @"Params");
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFDictionaryGetTypeID()))
  {
    ZinParseBoolean(v6, @"SubtractMax", a2 + 80);
    return 0;
  }

  else
  {
    ZinIrUnitStatus::SetError(a3, @"InvalidParamSyntax");
    return 3;
  }
}

uint64_t EncryptedFile::EncryptedFile(uint64_t a1, __int128 *a2)
{
  *a1 = -1;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 56) = *(a2 + 2);
    *(a1 + 40) = v3;
  }

  return a1;
}

uint64_t EncryptedFile::LoadFile(EncryptedFile *this)
{
  if (*this != -1)
  {
    EncryptedFile::UnloadFile(this);
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "File is already opened.");
    goto LABEL_35;
  }

  v2 = this + 40;
  if (*(this + 63) < 0)
  {
    v2 = *v2;
  }

  v3 = open(v2, 0);
  *this = v3;
  if (v3 == -1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "File cannot be opened.");
    goto LABEL_35;
  }

  v28.st_size = 0;
  if (fstat(v3, &v28) == -1)
  {
    EncryptedFile::UnloadFile(this);
    v13 = __cxa_allocate_exception(0x10uLL);
    v14 = __error();
    std::to_string(&v26, *v14);
    v15 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Cannot be fstat'd with error code: ", &v26, &v27);
    MEMORY[0x1AC5598B0](v13, &v27, v15);
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  st_size = v28.st_size;
  *(this + 2) = v28.st_size;
  if (st_size <= 0x40)
  {
    EncryptedFile::UnloadFile(this);
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Does not contain encrypted model header. Is the file encrypted?");
    goto LABEL_35;
  }

  if ((v28.st_mode & 0xF000) != 0x8000)
  {
    EncryptedFile::UnloadFile(this);
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "File must be a regular file.");
    goto LABEL_35;
  }

  v5 = mmap(0, st_size, 1, 2, *this, 0);
  *(this + 1) = v5;
  if (v5 == -1)
  {
    EncryptedFile::UnloadFile(this);
    v16 = __cxa_allocate_exception(0x10uLL);
    v17 = __error();
    std::to_string(&v26, *v17);
    v18 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Cannot be loaded, with error code: ", &v26, &v27);
    MEMORY[0x1AC5598B0](v16, &v27, v18);
    __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*v5 != 1162759500)
  {
    EncryptedFile::UnloadFile(this);
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unrecognized magic word in the encrypted model header. Is the file encrypted?");
    goto LABEL_35;
  }

  if (!v5[4] || v5[4] >= 3u)
  {
    EncryptedFile::UnloadFile(this);
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unrecognized encryption version");
    goto LABEL_35;
  }

  if (v5[4] == 1)
  {
    v6 = &kHeaderSizeVer10;
  }

  else
  {
    v6 = v5 + 7;
  }

  v7 = *v6;
  v8 = *(this + 2);
  if (v8 <= v7)
  {
    EncryptedFile::UnloadFile(this);
    v19 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v26, v7);
    v20 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("File does not contain any payload, size_of_header = ", &v26, &v27);
    MEMORY[0x1AC5598B0](v19, &v27, v20);
    __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = *(v5 + 1);
  if (v9 - 1 >= v8 - v7)
  {
    EncryptedFile::UnloadFile(this);
    v21 = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v26, v9);
    v22 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Illegal value for original file size = ", &v26, &v27);
    MEMORY[0x1AC5598B0](v21, &v27, v22);
    __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (*(v5 + 2))
  {
    v10 = *(v5 + 2);
    if (v10 >> 52)
    {
      EncryptedFile::UnloadFile(this);
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Illegal value for number of encrypted pages");
    }

    else
    {
      if (v10 << 12 <= v8)
      {
        if (mremap_encrypted())
        {
          EncryptedFile::UnloadFile(this);
          v23 = __cxa_allocate_exception(0x10uLL);
          v24 = __error();
          std::to_string(&v26, *v24);
          v25 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed to setup decryption path due to error: ", &v26, &v27);
          MEMORY[0x1AC5598B0](v23, &v27, v25);
          __cxa_throw(v23, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v5 = *(this + 1);
        goto LABEL_22;
      }

      EncryptedFile::UnloadFile(this);
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Illegal number of encrypted bytes");
    }

LABEL_35:
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_22:
  *(this + 3) = &v5[v7];
  *(this + 4) = v9;
  return close(*this);
}

void sub_1A68D2A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v21)
  {
    __cxa_free_exception(v20);
  }

  _Unwind_Resume(exception_object);
}

double EncryptedFile::UnloadFile(EncryptedFile *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  if (v2)
  {
    munmap(v2, *(this + 2));
  }

  if (*this != -1)
  {
    close(*this);
  }

  *this = -1;
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

uint64_t ZinMirTensorTransform::FixAllocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, const DimensionOrderHint *a6, uint64_t a7)
{
  v9 = a3;
  v31[5] = *MEMORY[0x1E69E9840];
  IsCompatibleWithAllocationHint = ZinIrTensor::IsCompatibleWithAllocationHint(a1, a3);
  v13 = *(a1 + 152);
  if (!IsCompatibleWithAllocationHint)
  {
    v15 = v13[4];
    (*(*v13 + 88))(v30, *(a1 + 152), 0);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v27, v30, v31, 1uLL);
    v16 = *(a1 + 104);
    v26 = 0;
    ZinBuilder::CreateCopyLayer(v15, &v27, a2, v16, &v26);
  }

  v14 = ZinIrTensor::SetAllocationHint(a1, v9, 1);
  v17 = v9 == 2 && !ZinIrTensor::IsValidInterleave(a1, a6, a7);
  Interleave = ZinIrTensor::GetInterleave(a1);
  if ((HasInterleaveMismatch(Interleave, v19, a6, a7) | v17))
  {
    v20 = v13[4];
    (*(*v13 + 88))(v30, v13, 0);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v27, v30, v31, 1uLL);
    v21 = *(a1 + 104);
    v25 = 0;
    ZinBuilder::CreateCopyLayer(v20, &v27, a2, v21, &v25);
  }

  v22 = ZinIrTensor::SetInterleave(a1, a6, a7, 1);
  *a4 = 0;
  if (v22 | v14)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *a1, uint64_t a2, DimensionOrderHint *this, unsigned int a4)
{
  v68 = *MEMORY[0x1E69E9840];
  if (DimensionOrderHint::IsSet(this))
  {
    v63 = 0;
    v64 = 0;
    v65 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v63, *this, *(this + 1), (*(this + 1) - *this) >> 2);
    v66 = *(this + 6);
    v8 = 0;
    if (a1)
    {
      v9 = a1;
      do
      {
        v10 = v9;
        v11 = *(v9 + 19);
        if ((ZinIrTensor::IsTensorCompatibleWithDimensionOrder(v10, &v63) & 1) == 0)
        {
          if (v8)
          {
            v14 = v8[19];
            std::operator+<char>();
            v15 = std::string::append(&v58, "_", 1uLL);
            v16 = *&v15->__r_.__value_.__l.__data_;
            v59.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
            *&v59.__r_.__value_.__l.__data_ = v16;
            v15->__r_.__value_.__l.__size_ = 0;
            v15->__r_.__value_.__r.__words[2] = 0;
            v15->__r_.__value_.__r.__words[0] = 0;
            v17 = *(v14 + 71);
            if (v17 >= 0)
            {
              v18 = (v14 + 48);
            }

            else
            {
              v18 = *(v14 + 48);
            }

            if (v17 >= 0)
            {
              v19 = *(v14 + 71);
            }

            else
            {
              v19 = *(v14 + 56);
            }

            v20 = std::string::append(&v59, v18, v19);
            v21 = *&v20->__r_.__value_.__l.__data_;
            v60.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
            *&v60.__r_.__value_.__l.__data_ = v21;
            v20->__r_.__value_.__l.__size_ = 0;
            v20->__r_.__value_.__r.__words[2] = 0;
            v20->__r_.__value_.__r.__words[0] = 0;
            v22 = std::string::append(&v60, "_", 1uLL);
            v23 = *&v22->__r_.__value_.__l.__data_;
            v67.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
            *&v67.__r_.__value_.__l.__data_ = v23;
            v22->__r_.__value_.__l.__size_ = 0;
            v22->__r_.__value_.__r.__words[2] = 0;
            v22->__r_.__value_.__r.__words[0] = 0;
            std::string::basic_string[abi:ne200100]<0>(&v52, "fix_dim_order");
            v24 = std::string::append(&v52, "_xfm", 4uLL);
            v25 = *&v24->__r_.__value_.__l.__data_;
            v54 = v24->__r_.__value_.__r.__words[2];
            v53 = v25;
            v24->__r_.__value_.__l.__size_ = 0;
            v24->__r_.__value_.__r.__words[2] = 0;
            v24->__r_.__value_.__r.__words[0] = 0;
            if (v54 >= 0)
            {
              v26 = &v53;
            }

            else
            {
              v26 = v53;
            }

            if (v54 >= 0)
            {
              v27 = HIBYTE(v54);
            }

            else
            {
              v27 = *(&v53 + 1);
            }

            v28 = std::string::append(&v67, v26, v27);
            v29 = *&v28->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v29;
            v28->__r_.__value_.__l.__size_ = 0;
            v28->__r_.__value_.__r.__words[2] = 0;
            v28->__r_.__value_.__r.__words[0] = 0;
            ZinObjectNameFactory::ZinObjectNameFactory(v61, &__p);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v54) < 0)
            {
              operator delete(v53);
            }

            if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v52.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v67.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v59.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v58.__r_.__value_.__l.__data_);
            }

            if (*(*(v14 + 88) + 8) == 37)
            {
              v49 = &unk_1F19D0088;
              if (SHIBYTE(v61[3]) < 0)
              {
                std::string::__init_copy_ctor_external(&v50, v61[1], v61[2]);
              }

              else
              {
                v50 = *&v61[1];
              }

              v51 = v62;
              ZinMirTensorTransform::InsertCopyAfter(a2, v14, &v49, a4 == 0);
            }

            v46 = &unk_1F19D0088;
            if (SHIBYTE(v61[3]) < 0)
            {
              std::string::__init_copy_ctor_external(&v47, v61[1], v61[2]);
            }

            else
            {
              v47 = *&v61[1];
            }

            v48 = v62;
            ZinMirTensorTransform::InsertCopyBetween(a2, v11, v14, &v46, a4 == 0);
          }

          std::operator+<char>();
          v30 = std::string::append(&v60, "_", 1uLL);
          v31 = *&v30->__r_.__value_.__l.__data_;
          v67.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&v67.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          std::string::basic_string[abi:ne200100]<0>(&v58, "fix_dim_order");
          v32 = std::string::append(&v58, "_xfm", 4uLL);
          v33 = *&v32->__r_.__value_.__l.__data_;
          v59.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
          *&v59.__r_.__value_.__l.__data_ = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = &v59;
          }

          else
          {
            v34 = v59.__r_.__value_.__r.__words[0];
          }

          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v59.__r_.__value_.__l.__size_;
          }

          v36 = std::string::append(&v67, v34, size);
          v37 = *&v36->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v37;
          v36->__r_.__value_.__l.__size_ = 0;
          v36->__r_.__value_.__r.__words[2] = 0;
          v36->__r_.__value_.__r.__words[0] = 0;
          ZinObjectNameFactory::ZinObjectNameFactory(v61, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v59.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v67.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v60.__r_.__value_.__l.__data_);
          }

          v55 = &unk_1F19D0088;
          if (SHIBYTE(v61[3]) < 0)
          {
            std::string::__init_copy_ctor_external(&v56, v61[1], v61[2]);
          }

          else
          {
            v56 = *&v61[1];
          }

          v57 = v62;
          ZinMirTensorTransform::InsertCopyAfter(a2, v11, &v55, a4 == 0);
        }

        if (*(*(v11 + 11) + 8) == 33)
        {
          break;
        }

        memset(v61, 0, 24);
        if (ZinIrOpLayer::IsNoOp(v11, v61))
        {
          v12 = *(*(v11 + 11) + 8);
          __p.__r_.__value_.__r.__words[0] = v61;
          std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
          if (v12 == 38)
          {
            CollectiveCommunicationInfo = ZinCollectiveCommunicationLayer::GetCollectiveCommunicationInfo(v11);
            ZinIrTransposeInfo::GetInverseMappings(&__p.__r_.__value_.__l.__data_, CollectiveCommunicationInfo);
            DimensionOrderHint::TransposeDimensionOrder(&v63, &__p, v61);
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v63, v61[0], v61[1], (v61[1] - v61[0]) >> 2);
            v66 = v61[3];
            if (v61[0])
            {
              v61[1] = v61[0];
              operator delete(v61[0]);
            }

            if (__p.__r_.__value_.__r.__words[0])
            {
              __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        else
        {
          __p.__r_.__value_.__r.__words[0] = v61;
          std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
        }

        ZinIrTensor::GetParentTensor(v61, v10);
        v9 = v61[0];
        if (v61[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v61[1]);
        }

        v8 = v10;
      }

      while (v9);
    }

    memset(&__p, 0, sizeof(__p));
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&__p, v63, v64, (v64 - v63) >> 2);
    v45 = v66;
    memset(v61, 0, sizeof(v61));
    LODWORD(v62) = 1065353216;
    memset(v39, 0, sizeof(v39));
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(v39, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
    v40 = v45;
    v41 = v61;
    v42 = a2;
    v43 = a4;
    operator new();
  }

  return 0;
}

void sub_1A68D3740(_Unwind_Exception *a1)
{
  *(v1 - 240) = &unk_1F19D0088;
  if (*(v1 - 209) < 0)
  {
    operator delete(*(v1 - 232));
  }

  v3 = *(v1 - 192);
  if (v3)
  {
    *(v1 - 184) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void ZinMirTensorTransform::InsertCopyAfter(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v13[6] = *MEMORY[0x1E69E9840];
  v6 = a2[4];
  v7 = (*(*a2 + 40))(a2, 0);
  (*(*a2 + 88))(&v12, a2, 0);
  v9 = 0;
  v10 = 0uLL;
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v9, &v12, v13, 1uLL);
  v8 = *(v7 + 104);
  v11 = 0;
  ZinBuilder::CreateCopyLayer(v6, &v9, a3, v8, &v11);
}

void ZinMirTensorTransform::InsertCopyBetween(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v13[6] = *MEMORY[0x1E69E9840];
  v7 = a2[4];
  (*(*a2 + 88))(&v12, a2, 0);
  v9 = 0;
  v10 = 0uLL;
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v9, &v12, v13, 1uLL);
  v8 = *((*(*a2 + 40))(a2, 0) + 104);
  v11 = 0;
  ZinBuilder::CreateCopyLayer(v7, &v9, a4, v8, &v11);
}

void sub_1A68D4134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100](&a11, 0);
  a12 = &unk_1F19C3950;
  a18 = &a13;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t ZinMirTensorTransform::ReconcileInputTensorFormat(ZinIrOpLayerGraph *a1, ZinIrContext *this, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  __src = 0;
  v50 = 0;
  v51 = 0;
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  std::vector<unsigned long>::reserve(&__src, (MemoryPools[1] - *MemoryPools) >> 3);
  v7 = *MemoryPools;
  if (MemoryPools[1] != *MemoryPools)
  {
    v8 = 0;
    do
    {
      if (*((*(**(v7 + 8 * v8) + 40))(*(v7 + 8 * v8), 0) + 104) != a4)
      {
        v9 = v50;
        if (v50 >= v51)
        {
          v11 = __src;
          v12 = v50 - __src;
          v13 = (v50 - __src) >> 3;
          v14 = v13 + 1;
          if ((v13 + 1) >> 61)
          {
            std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
          }

          v15 = v51 - __src;
          if ((v51 - __src) >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v16);
          }

          *(8 * v13) = v8;
          v10 = 8 * v13 + 8;
          memcpy(0, v11, v12);
          v17 = __src;
          __src = 0;
          v50 = v10;
          v51 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v50 = v8;
          v10 = (v9 + 8);
        }

        v50 = v10;
      }

      ++v8;
      v7 = *MemoryPools;
    }

    while (v8 < (MemoryPools[1] - *MemoryPools) >> 3);
  }

  if (v50 != __src)
  {
    v18 = *__src;
    v19 = *MemoryPools;
    v20 = *(*MemoryPools + 8 * *__src);
    v21 = *(*(v20 + 11) + 8);
    v22 = v21 > 0x1E;
    v23 = (1 << v21) & 0x68000000;
    if (v22 || v23 == 0)
    {
      OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v20);
      if (OutgoingLayers[1] - *OutgoingLayers <= 8uLL)
      {
        IsANELayer = ZinIrOpLayer::IsANELayer(*(v19 + 8 * v18));
        v30 = *(v19 + 8 * v18);
        if (!IsANELayer || !v30[65])
        {
          v31 = (*(*v30 + 48))(v30, 0);
          v33 = *v31;
          v32 = v31[1];
          if (v32)
          {
            atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
          }

          (*(*a3 + 16))(&v44);
          v34 = *(v33 + 63);
          if (v34 >= 0)
          {
            v35 = (v33 + 40);
          }

          else
          {
            v35 = *(v33 + 40);
          }

          if (v34 >= 0)
          {
            v36 = *(v33 + 63);
          }

          else
          {
            v36 = *(v33 + 48);
          }

          v37 = std::string::insert(&v44, 0, v35, v36);
          v38 = *&v37->__r_.__value_.__l.__data_;
          v47 = v37->__r_.__value_.__r.__words[2];
          *v46 = v38;
          v37->__r_.__value_.__l.__size_ = 0;
          v37->__r_.__value_.__r.__words[2] = 0;
          v37->__r_.__value_.__r.__words[0] = 0;
          ZinIrTensor::CopyTensorMirInfo(&v43, v33);
          v52 = 0;
          v53 = 0;
          LODWORD(v54[0]) = 0;
          v54[1] = v41 & 0xFFFFFFFFFFFFFF00;
          v54[2] = v40 & 0xFFFFFFFFFFFFFF00;
          v55 = 0;
          v56 = 0;
          ZinIrTensor::CreateTensor();
        }
      }
    }

    v25 = ZinIrOpLayer::IsANELayer(this);
    v26 = *(v19 + 8 * v18);
    v27 = v26[4];
    if (v25)
    {
      v48 = 0;
      LOBYTE(v54[0]) = 0;
      v57[32] = 0;
      ZinBuilder::CreateNEBypass(v27, a3, v26, a4, &v48, 0, v54, 1.0);
    }

    (*(*v26 + 88))(v54, *(v19 + 8 * v18), 0);
    v46[0] = 0;
    v46[1] = 0;
    v47 = 0;
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v46, v54, v57, 1uLL);
    v45 = 0;
    ZinBuilder::CreateCopyLayer(v27, v46, a3, a4, &v45);
  }

  if (__src)
  {
    v50 = __src;
    operator delete(__src);
  }

  return 0;
}

void sub_1A68D4808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **ZinMirTensorTransform::ChannelVectorInsertPaddingInL2(ZinMirTensorTransform *this, ZinIrOpLayerGraph *a2, unint64_t a3, uint64_t a4, uint64_t a5, ZinObjectNameFactory *a6)
{
  v36[16] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = a2;
    v10 = (*(*a2 + 40))(a2, 0, a3, a4, a5, a6);
    if (*(v10 + 88) == 1)
    {
      v11 = v10;
      v33 = 0;
      v12 = (*(*v8 + 40))(v8, 0);
      ZinMirTensorTransform::FixAllocation(v12, a5, 1, &v33, 1, 0, 0);
      v13 = v33;
      if (v33)
      {
        v27.n128_u64[0] = v33;
        v28 = 0;
        v14 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v27);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v27, v14);
        v34 = v8;
        v26[0] = &v34;
        v26[1] = 1;
        Layer2TDMapper::SourceLayer::SourceLayer(&v30, v26);
        ZinIrOpLayerGraph::AddNode(this, &v27, &v30, &v35);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v36);
        v30.i64[0] = &unk_1F19C3950;
        v29 = &v30.u64[1];
        std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v29);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v27);
        ZinIrOpLayerGraph::AddEdge(this, v8, v13, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        v8 = v13;
      }

      v15 = v11[12] * v11[8] * v11[9] * v11[10] * v11[11] / a3;
      v30.i64[1] = a3;
      v31 = v15;
      v30.i64[0] = 1;
      v32 = vdupq_n_s64(1uLL);
      DimensionOrderHint::DimensionOrderHint(&v29, 1);
      v16 = (*(*v8 + 40))(v8, 0);
      ZinIrTensor::CreateDefaultStride(&v30, *(v16 + 104), 1, &v29, 16, 1, 1, &v27);
      operator new();
    }

    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v17)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v17)
    {
LABEL_9:
      ZinMirTensorTransform::ChannelVectorInsertPaddingInL2(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  return 0;
}

void sub_1A68D51CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62)
{
  a51 = &unk_1F19C3950;
  a47 = (v62 + 8);
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&a47);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void ZinMirTensorTransform::Split(void *a2@<X1>, int64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, void *a7@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
    v11 = (*(*a2 + 40))(a2, 0);
    v12 = 8 * a4 + 64;
    if (a4 >= 4)
    {
      v12 = 96;
    }

    v13 = *(v11 + v12);
    if (v13 <= a3)
    {
      v41[0] = a2;
      std::vector<ZinIrOpLayer *>::push_back[abi:ne200100](a7, v41);
    }

    else if (v13 >= 1)
    {
      v30 = vdupq_n_s64(1uLL);
      v14 = *(v11 + 80);
      v38 = *(v11 + 64);
      v39 = v14;
      v40 = *(v11 + 96);
      if (a4 <= 1)
      {
        if (a4)
        {
          if (a4 == 1)
          {
            if (a3 >= *(v11 + 72))
            {
              v16 = *(v11 + 72);
            }

            else
            {
              v16 = a3;
            }

            *(&v38 + 1) = v16;
          }
        }

        else
        {
          if (a3 >= *(v11 + 64))
          {
            v19 = *(v11 + 64);
          }

          else
          {
            v19 = a3;
          }

          *&v38 = v19;
        }
      }

      else
      {
        switch(a4)
        {
          case 2u:
            if (a3 >= *(v11 + 80))
            {
              v17 = *(v11 + 80);
            }

            else
            {
              v17 = a3;
            }

            *&v39 = v17;
            break;
          case 3u:
            if (a3 >= *(v11 + 88))
            {
              v18 = *(v11 + 88);
            }

            else
            {
              v18 = a3;
            }

            *(&v39 + 1) = v18;
            break;
          case 4u:
            if (a3 >= *(v11 + 96))
            {
              v15 = *(v11 + 96);
            }

            else
            {
              v15 = a3;
            }

            v40 = v15;
            break;
        }
      }

      memset(v34, 0, sizeof(v34));
      v35 = v30;
      v36 = v30;
      v37 = 1;
      v20 = a2[4];
      (*(*a5 + 16))(__p, a5, 0);
      (*(*a2 + 88))(v41, a2, 0);
      memset(v32, 0, sizeof(v32));
      std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v32, v41, &v42, 1uLL);
      v21 = (*(*a2 + 40))(a2, 0);
      ZinBuilder::CreateView(v20, __p, v32, v21, &v38, v34);
    }
  }

  else
  {
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v22)
    {
      ZinMirTensorTransform::Split(v22, v23, v24, v25, v26, v27, v28, v29);
    }

    *a7 = 0;
    a7[1] = 0;
    a7[2] = 0;
  }
}

void **ZinMirTensorTransform::NonResidentLinearizeToChannelInL2(ZinMirTensorTransform *this, void **a2, ZinIrOpLayer *a3, ZinObjectNameFactory *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      ZinMirTensorTransform::NonResidentLinearizeToChannelInL2(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    return 0;
  }

  v5 = a2;
  v7 = (*(*a2 + 5))(a2, 0, a3, a4);
  v53 = 0;
  v54[0] = 0;
  v54[1] = 0;
  v41 = this;
  if (ZinIrOpLayer::IsNoOp(v5, &v53))
  {
    v8 = *(*(v5 + 11) + 8);
    v46.i64[0] = &v53;
    std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v46);
    if (v8 == 38)
    {
      v9 = *(v5 + 4);
      (*(*v5 + 88))(&v53, v5, 0);
      v46 = 0uLL;
      v47 = 0;
      std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v46.i64, &v53, &v55, 1uLL);
      v10 = *(v7 + 104);
      v50 = 0;
      ZinBuilder::CreateCopyLayer(v9, &v46, a3, v10, &v50);
    }
  }

  else
  {
    v46.i64[0] = &v53;
    std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&v46);
  }

  v52 = 0;
  ZinMirTensorTransform::FixAllocation(v7, a3, 2, &v52, 1, 1, 1);
  v19 = v52;
  if (v52)
  {
    v43.n128_u64[0] = v52;
    v44 = 0;
    v20 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v43);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v43, v20);
    v51 = v5;
    v45[0] = &v51;
    v45[1] = 1;
    Layer2TDMapper::SourceLayer::SourceLayer(&v46, v45);
    ZinIrOpLayerGraph::AddNode(v41, &v43, &v46, &v53);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v54);
    v46.i64[0] = &unk_1F19C3950;
    v42 = &v46.i64[1];
    std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v42);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v43);
    ZinIrOpLayerGraph::AddEdge(v41, v5, v19, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v5 = v19;
  }

  v21 = *(v7 + 64);
  v22 = *(v7 + 72);
  v24 = *(v7 + 80);
  v23 = *(v7 + 88);
  v25 = *(v7 + 96);
  Hal = ZinIrTarget::GetHal(*(*(v7 + 32) + 200));
  v27 = (*(*Hal + 16))(Hal);
  v28 = v27;
  if (v23 > *(v27 + 1784))
  {
    v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v29)
    {
      ZinMirTensorTransform::NonResidentLinearizeToChannelInL2(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    return 0;
  }

  if (v23 != 1)
  {
    v39 = 0;
    v40 = 1;
    while (*(v27 + 1760 + v39) < v23)
    {
      v39 += 8;
      if (v39 == 32)
      {
        goto LABEL_22;
      }
    }

    v40 = *(v27 + 1760 + v39);
LABEL_22:
    v46.i64[0] = 1;
    v46.i64[1] = v23;
    v47 = v22 * v21 * v24;
    v48 = 1;
    v49 = v25;
    DimensionOrderHint::DimensionOrderHint(v45, 2);
    ZinIrTensor::CreateDefaultStride(&v46, *(v7 + 104), 2, v45, *(v28 + 560), v40, 1, &v43);
    operator new();
  }

  return v5;
}

void sub_1A68D61A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39)
{
  a39 = v39 + 8;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&a39);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v40 - 256);
  std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100](&a23, 0);
  if (__p)
  {
    a30 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **ZinMirTensorTransform::TransposeChannelVectorToWidthFP16InL2(ZinMirTensorTransform *this, ZinIrOpLayerGraph *a2, ZinIrOpLayer *a3, ZinObjectNameFactory *a4, const ZinIrHalParameters *a5)
{
  v51[4] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = a2;
    std::string::basic_string[abi:ne200100]<0>(v44, "fix_alloc_hint");
    v8 = std::string::append(v44, "_xfm", 4uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = *(v6 + 71);
    if (v10 >= 0)
    {
      v11 = v6 + 48;
    }

    else
    {
      v11 = *(v6 + 6);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 71);
    }

    else
    {
      v12 = *(v6 + 7);
    }

    v13 = std::string::insert(&v45, 0, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    ZinObjectNameFactory::ZinObjectNameFactory(v48, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if ((v44[23] & 0x80000000) != 0)
    {
      operator delete(*v44);
    }

    v47 = 0;
    v15 = (*(*v6 + 40))(v6, 0);
    ZinMirTensorTransform::FixAllocation(v15, v48, 1, &v47, 1, 0, 0);
    v16 = v47;
    if (v47)
    {
      *v44 = v47;
      *&v44[16] = 0;
      v17 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(v44);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(v44, v17);
      v51[0] = v6;
      v43[0] = v51;
      v43[1] = 1;
      Layer2TDMapper::SourceLayer::SourceLayer(&v45, v43);
      ZinIrOpLayerGraph::AddNode(this, v44, &v45, &__p);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p.__r_.__value_.__l.__size_);
      v45.__r_.__value_.__r.__words[0] = &unk_1F19C3950;
      p_size = &v45.__r_.__value_.__l.__size_;
      std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&p_size);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v44);
      ZinIrOpLayerGraph::AddEdge(this, v6, v16, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v6 = v16;
    }

    v26 = (*(*v6 + 40))(v6, 0);
    if (v26[11] == 1)
    {
      v27 = (*(*v6 + 40))(v6, 0);
      v28 = v26[9];
      v29 = v26[10];
      if (ZinIrTensor::MirInfo::HasCustomStrides(*(v27 + 160)))
      {
        v30 = v26[10] * (*(*(v27 + 160) + 16) / *(a4 + 56));
      }

      else
      {
        v30 = v29 * v28;
      }

      v39 = *(a4 + 223);
      if (!(v30 % v39))
      {
        v45.__r_.__value_.__r.__words[0] = 1;
        v45.__r_.__value_.__l.__size_ = v39;
        v45.__r_.__value_.__r.__words[2] = v30 / v39;
        v46 = vdupq_n_s64(1uLL);
        DimensionOrderHint::DimensionOrderHint(v51, 1);
        v41 = (*(*v6 + 40))(v6, 0);
        ZinIrTensor::CreateDefaultStride(&v45, *(v41 + 104), 1, v51, 16, 1, 1, v44);
        operator new();
      }

      v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!v31)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!v31)
      {
        goto LABEL_28;
      }
    }

    ZinMirTensorTransform::TransposeChannelVectorToWidthFP16InL2(v31, v32, v33, v34, v35, v36, v37, v38);
LABEL_28:
    v48[0] = &unk_1F19D0088;
    if (v49 < 0)
    {
      operator delete(v48[1]);
    }

    return 0;
  }

  v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v18)
  {
    ZinMirTensorTransform::TransposeChannelVectorToWidthFP16InL2(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  return 0;
}

void sub_1A68D701C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, void *__p, uint64_t a63)
{
  a37 = &unk_1F19C3950;
  a12 = v65 + 8;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a18);
  std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100](&a48, 0);
  v68 = *(v66 - 136);
  if (v68)
  {
    *(v66 - 128) = v68;
    operator delete(v68);
  }

  a61 = &unk_1F19D0088;
  if (a65 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *ZinMirTensorTransform::ReplaceTensorWithNewFormat(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
    if (*(a2 + 104) != a3)
    {
      (*(*a4 + 16))(&v23, a4, 0);
      ZinIrTensor::CopyTensorMirInfo(&v22, v4);
      v5 = v22;
      v22 = 0;
      v21[7] = v5;
      v21[5] = 0;
      v21[6] = 0;
      LODWORD(v21[0]) = 0;
      v21[1] = 0;
      v21[2] = 0;
      *(&v21[2] + 7) = 0;
      v15[0] = 0;
      v17 = 0;
      v18 = 0;
      __p = 0;
      v19 = 5;
      v20 = 0;
      ZinIrTensor::CreateTensor();
    }
  }

  else
  {
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      ZinMirTensorTransform::ReplaceTensorWithNewFormat(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  return v4;
}

void sub_1A68D7594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(v26 - 72);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100]((v26 - 64), 0);
  if (*(v26 - 33) < 0)
  {
    operator delete(*(v26 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t ZinMirTensorTransform::SplitLayerPerBatch(ZinIrOpLayerGraph *a1, std::string *a2, uint64_t a3, uint64_t *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v66 = 0;
  v65 = 0;
  v67 = 0;
  v63 = 0;
  __src = 0;
  v64 = 0;
  v61[1] = 0;
  v61[0] = 0;
  v60 = v61;
  size = a2[1].__r_.__value_.__l.__size_;
  v5 = *a3;
  if (*a3 == *(a3 + 8))
  {
    v14 = 1;
    v15 = v60;
    if (v60 != v61)
    {
      do
      {
        v16 = v15[4];
        OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v16);
        v19 = *OutgoingLayers;
        v18 = *(OutgoingLayers + 8);
        if (*OutgoingLayers != v18)
        {
          while (*(*(*v19 + 11) + 8) != 31)
          {
            if (++v19 == v18)
            {
              goto LABEL_25;
            }
          }
        }

        if (v19 != v18)
        {
          MemoryPools = ZinIrContext::GetMemoryPools(v16);
          v14 &= ZinIrOpLayerGraph::SwapEdgeSource(a1, v16, **MemoryPools, *v19, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        }

LABEL_25:
        v44.n128_u64[0] = v16;
        v45 = 0;
        v21 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v44);
        RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v44, v21);
        v22 = ZinIrOpLayerGraph::RemoveNode(a1, &v44, 0);
        std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v44);
        v23 = v15[1];
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
            v24 = v15[2];
            v25 = *v24 == v15;
            v15 = v24;
          }

          while (!v25);
        }

        v14 &= v22;
        v15 = v24;
      }

      while (v24 != v61);
    }

    if ((a2[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(a2[2].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = a2[2].__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](__s1, v26 + 7);
    if (__s1[23] >= 0)
    {
      v27 = __s1;
    }

    else
    {
      v27 = *__s1;
    }

    if (v26)
    {
      if ((a2[2].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        data = a2 + 2;
      }

      else
      {
        data = a2[2].__r_.__value_.__l.__data_;
      }

      memmove(v27, data, v26);
    }

    strcpy(&v27[v26], "_gather");
    ZinObjectNameFactory::ZinObjectNameFactory(v68, __s1);
    if ((__s1[23] & 0x80000000) != 0)
    {
      operator delete(*__s1);
    }

    v29 = (*(a2->__r_.__value_.__r.__words[0] + 40))(a2, 0);
    v30 = (*(a2->__r_.__value_.__r.__words[0] + 40))(a2, 0);
    ZinIrTensor::CopyTensorMirInfo(&v43, v30);
    ZinBuilder::CreateConcat(size, v68, v29 + 64, &v65, &__src, 5, &v43, 0);
  }

  if (*v5)
  {
    v6 = (*(a2->__r_.__value_.__r.__words[0] + 40))(a2, 0);
    v59 = *(v6 + 96);
    v7 = *(v6 + 80);
    v57 = *(v6 + 64);
    v58 = v7;
    *&v57 = *v5;
    std::string::basic_string(v47, a2 + 2, 0, 2uLL, &__s2);
    std::operator+<char>();
    v8 = std::string::append(__s1, "_split_", 7uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    *&v68[16] = *(&v8->__r_.__value_.__l + 2);
    *v68 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__s2, 0);
    if ((__s2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s2 = &__s2;
    }

    else
    {
      p_s2 = __s2.__r_.__value_.__r.__words[0];
    }

    if ((__s2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(__s2.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = __s2.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(v68, p_s2, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v56 = v12->__r_.__value_.__r.__words[2];
    *v55 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__s2.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s2.__r_.__value_.__l.__data_);
    }

    if ((v68[23] & 0x80000000) != 0)
    {
      operator delete(*v68);
    }

    if ((__s1[23] & 0x80000000) != 0)
    {
      operator delete(*__s1);
    }

    if ((v47[23] & 0x80000000) != 0)
    {
      operator delete(*v47);
    }

    (*(a2->__r_.__value_.__r.__words[0] + 40))(a2, 0);
    v54 = 0;
    *__s1 = 0;
    *&__s1[8] = 0;
    *v68 = 0;
    memset(&v68[8], 0, 19);
    v48[0] = 0;
    v50 = 0;
    v51 = 0;
    __p = 0;
    v52 = 5;
    v53 = 0;
    ZinIrTensor::CreateTensor();
  }

  v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v31)
  {
    ZinMirTensorTransform::SplitLayerPerBatch(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v60, v61[0]);
  if (__src)
  {
    v63 = __src;
    operator delete(__src);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  return 3;
}

void sub_1A68D8A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (__p)
  {
    STACK[0x200] = __p;
    operator delete(__p);
  }

  if (STACK[0x248])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x248]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&STACK[0x2A0], STACK[0x2A8]);
  v66 = STACK[0x2B8];
  if (STACK[0x2B8])
  {
    STACK[0x2C0] = v66;
    operator delete(v66);
  }

  v67 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v67;
    operator delete(v67);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinMirTensorTransform::PropagateSpatialSplitInfo<std::list<ZinIrOpLayer *>>(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 40))(a1, 0);
  if (*(result + 208) == 1)
  {
    result = (*(*a1 + 40))(a1, 0);
    if ((*(result + 208) & 1) == 0)
    {
      goto LABEL_11;
    }

    if (*(result + 192) != 2)
    {
      return result;
    }

    result = (*(*a1 + 40))(a1, 0);
    if ((*(result + 208) & 1) == 0)
    {
LABEL_11:
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v5 = *(a2 + 8);
    if (v5 != a2)
    {
      v6 = *(result + 184);
      v7 = *(result + 200);
      do
      {
        result = (*(**(v5 + 16) + 40))(*(v5 + 16), 0);
        v8 = *(result + 208);
        *(result + 184) = v6;
        *(result + 192) = 2;
        *(result + 200) = v7;
        if ((v8 & 1) == 0)
        {
          *(result + 208) = 1;
        }

        v5 = *(v5 + 8);
      }

      while (v5 != a2);
    }
  }

  return result;
}

uint64_t ZinMirTensorTransform::CopyAndReplaceInputAtIndex(ZinMirTensorTransform *this, ZinIrOpLayerGraph *a2, unint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  __p[0].__r_.__value_.__r.__words[0] = a2;
  LODWORD(__p[0].__r_.__value_.__r.__words[2]) = 0;
  v6 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(__p);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(__p, v6);
  v35 = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(__p);
  v7 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 8, &v35);
  if (v7)
  {
    v8 = v7 + 3;
  }

  else
  {
    v8 = (this + 104);
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](__p);
  if (a3 < (v8[1] - *v8) >> 3)
  {
    v9 = *(*v8 + 8 * a3);
    v10 = (*(*v9 + 40))(v9, 0);
    if (*(a2 + 71) >= 0)
    {
      v11 = *(a2 + 71);
    }

    else
    {
      v11 = *(a2 + 7);
    }

    v12 = &v32;
    std::string::basic_string[abi:ne200100](&v32, v11 + 1);
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v32.__r_.__value_.__r.__words[0];
    }

    if (v11)
    {
      if (*(a2 + 71) >= 0)
      {
        v13 = a2 + 48;
      }

      else
      {
        v13 = *(a2 + 6);
      }

      memmove(v12, v13, v11);
    }

    *(&v12->__r_.__value_.__l.__data_ + v11) = 95;
    std::string::basic_string[abi:ne200100]<0>(&v31, "copy_at_idx");
    v14 = std::string::append(&v31, "_xfm", 4uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v39 = v14->__r_.__value_.__r.__words[2];
    v38 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v39 >= 0)
    {
      v16 = &v38;
    }

    else
    {
      v16 = v38;
    }

    if (v39 >= 0)
    {
      v17 = HIBYTE(v39);
    }

    else
    {
      v17 = *(&v38 + 1);
    }

    v18 = std::string::append(&v32, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v33, "_", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v30, a3);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v30;
    }

    else
    {
      v22 = v30.__r_.__value_.__r.__words[0];
    }

    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v34, v22, size);
    v25 = *&v24->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    ZinObjectNameFactory::ZinObjectNameFactory(&v35, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    v26 = v9[4];
    (*(*v9 + 88))(__p, v9, 0);
    memset(&v34, 0, sizeof(v34));
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v34, __p, &v37, 1uLL);
    v27 = *(v10 + 104);
    v29 = 0;
    ZinBuilder::CreateCopyLayer(v26, &v34, &v35, v27, &v29);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinMirTensorTransform::CopyAndReplaceInputAtIndex();
  }

  return 3;
}

void sub_1A68D9470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40)
{
  a40 = &unk_1F19C3950;
  a22 = v40 + 8;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&a22);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a29);
  a32 = &unk_1F19D0088;
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinMirTensorTransform::GetSingleNextLayer(ZinMirTensorTransform *this, ZinIrOpLayer *a2)
{
  OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(this);
  if (OutgoingLayers[1] - *OutgoingLayers == 8)
  {
    return **OutgoingLayers;
  }

  else
  {
    return 0;
  }
}

uint64_t ZinMirTensorTransform::GetSinglePreviousLayer(ZinMirTensorTransform *this, ZinIrOpLayer *a2)
{
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  if (MemoryPools[1] - *MemoryPools == 8)
  {
    return **MemoryPools;
  }

  else
  {
    return 0;
  }
}

uint64_t ZinMirTensorTransform::GetSinglePreviousLayer(ZinMirTensorTransform *this, unint64_t a2)
{
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  if (a2 >= (MemoryPools[1] - *MemoryPools) >> 3)
  {
    return 0;
  }

  else
  {
    return *(*ZinIrContext::GetMemoryPools(this) + 8 * a2);
  }
}

uint64_t ZinMirTensorTransform::GetSingleNextLayer(ZinMirTensorTransform *this, unint64_t a2)
{
  OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(this);
  if (a2 >= (OutgoingLayers[1] - *OutgoingLayers) >> 3)
  {
    return 0;
  }

  else
  {
    return *(*ZinIrOpLayer::GetOutgoingLayers(this) + 8 * a2);
  }
}

void std::vector<Layer2TDMapper::LayerInfo>::__vdeallocate(char **a1)
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
        v3 -= 48;
        std::__destroy_at[abi:ne200100]<Layer2TDMapper::LayerInfo,0>(v3);
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

void *std::__function::__func<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0,std::allocator<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0>,BOOL ()(ZinIrTensor *)>::~__func(void *a1)
{
  *a1 = &unk_1F19EF3C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0,std::allocator<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0>,BOOL ()(ZinIrTensor *)>::~__func(void *a1)
{
  *a1 = &unk_1F19EF3C8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1AC55A070);
}

__n128 std::__function::__func<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0,std::allocator<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0>,BOOL ()(ZinIrTensor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F19EF3C8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>((a2 + 8), *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 40);
  v5 = *(a1 + 56);
  *(a2 + 40) = result;
  *(a2 + 56) = v5;
  return result;
}

void std::__function::__func<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0,std::allocator<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0>,BOOL ()(ZinIrTensor *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0,std::allocator<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0>,BOOL ()(ZinIrTensor *)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0,std::allocator<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0>,BOOL ()(ZinIrTensor *)>::operator()(uint64_t a1, ZinReshapeLayer ***a2)
{
  v49 = *a2;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v45, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
  v48 = *(a1 + 32);
  v3 = std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::find<ZinIrTensor *>(*(a1 + 40), &v49);
  v4 = v3;
  if (v3)
  {
    if (&v45 != v3 + 3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v45, v3[3], v3[4], (v3[4] - v3[3]) >> 2);
    }

    v48 = *(v4 + 12);
  }

  v5 = v49[19];
  v41 = 0;
  v42 = 0uLL;
  IsNoOp = ZinIrOpLayer::IsNoOp(v5, &v41);
  __p.__r_.__value_.__r.__words[0] = &v41;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (IsNoOp && *(*(v5 + 11) + 8) == 38)
  {
    CollectiveCommunicationInfo = ZinCollectiveCommunicationLayer::GetCollectiveCommunicationInfo(v5);
    memset(&__p, 0, sizeof(__p));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *(CollectiveCommunicationInfo + 16), *(CollectiveCommunicationInfo + 24), (*(CollectiveCommunicationInfo + 24) - *(CollectiveCommunicationInfo + 16)) >> 3);
    DimensionOrderHint::TransposeDimensionOrder(&v45, &__p, &v41);
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v45, v41, v42, (v42 - v41) >> 2);
    v48 = v43;
    if (v41)
    {
      *&v42 = v41;
      operator delete(v41);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if ((ZinIrTensor::IsTensorCompatibleWithDimensionOrder(v49, &v45) & 1) == 0)
  {
    ZinIrTensor::GetParentTensor(&v41, v49);
    v8 = v41;
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (v8)
    {
      v9 = *(v8 + 19);
      std::operator+<char>();
      v10 = std::string::append(&v37, "_", 1uLL);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = *(v9 + 71);
      if (v12 >= 0)
      {
        v13 = (v9 + 48);
      }

      else
      {
        v13 = *(v9 + 48);
      }

      if (v12 >= 0)
      {
        v14 = *(v9 + 71);
      }

      else
      {
        v14 = *(v9 + 56);
      }

      v15 = std::string::append(&v38, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = std::string::append(&v39, "_", 1uLL);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(&v34, "fix_dim_order");
      v19 = std::string::append(&v34, "_xfm", 4uLL);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v36 = v19->__r_.__value_.__r.__words[2];
      *v35 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (v36 >= 0)
      {
        v21 = v35;
      }

      else
      {
        v21 = v35[0];
      }

      if (v36 >= 0)
      {
        v22 = HIBYTE(v36);
      }

      else
      {
        v22 = v35[1];
      }

      v23 = std::string::append(&v40, v21, v22);
      v24 = *&v23->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      ZinObjectNameFactory::ZinObjectNameFactory(&v41, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36) < 0)
      {
        operator delete(v35[0]);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v25 = *(a1 + 48);
      __p.__r_.__value_.__r.__words[0] = &unk_1F19D0088;
      if (SHIBYTE(v43) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__r_.__value_.__r.__words[1], v42, *(&v42 + 1));
      }

      else
      {
        *&__p.__r_.__value_.__r.__words[1] = v42;
        v32 = v43;
      }

      v33 = v44;
      ZinMirTensorTransform::InsertCopyBetween(v25, v9, v5, &__p, *(a1 + 56) == 0);
    }

    v30 = (v49 + 5);
    if (*(v49 + 63) < 0)
    {
      v30 = *v30;
    }

    ZinAssertImpl("Expecting a parent tensor here for %s", v30);
  }

  ZinIrTensor::GetChildren(&v40, v49);
  if (v40.__r_.__value_.__l.__data_ != &v40.__r_.__value_.__r.__words[1])
  {
    v26 = *(v40.__r_.__value_.__r.__words[0] + 32);
    v27 = *(v40.__r_.__value_.__r.__words[0] + 40);
    if (v27)
    {
      atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
    }

    v28 = *(a1 + 40);
    v41 = v26;
    v43 = 0;
    v42 = 0uLL;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode*,ZinIrPaddingMode*>(&v42, v45, v46, v46 - v45);
    LODWORD(v44) = v48;
    std::__hash_table<std::__hash_value_type<ZinIrTensor const*,DimensionOrderHint const>,std::__unordered_map_hasher<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,DimensionOrderHint const>,std::hash<ZinIrTensor const*>,std::equal_to<ZinIrTensor const*>,true>,std::__unordered_map_equal<ZinIrTensor const*,std::__hash_value_type<ZinIrTensor const*,DimensionOrderHint const>,std::equal_to<ZinIrTensor const*>,std::hash<ZinIrTensor const*>,true>,std::allocator<std::__hash_value_type<ZinIrTensor const*,DimensionOrderHint const>>>::__emplace_unique_impl<std::pair<ZinIrTensor*,DimensionOrderHint>>(v28);
  }

  std::__tree<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::destroy(&v40, v40.__r_.__value_.__l.__size_);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  return 1;
}

void sub_1A68D9EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  v54 = *(v52 - 144);
  if (v54)
  {
    *(v52 - 136) = v54;
    operator delete(v54);
  }

  if (__p)
  {
    operator delete(__p);
  }

  v55 = *(v52 - 104);
  if (v55)
  {
    *(v52 - 96) = v55;
    operator delete(v55);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0,std::allocator<ZinMirTensorTransform::FixDimensionOrder(ZinIrTensor *,ZinIrOpLayerGraph *,DimensionOrderHint const&,ZinMirTensorTransform::OutputLayerType)::$_0>,BOOL ()(ZinIrTensor *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ZinMirTensorTransform::ChannelVectorInsertPaddingInL2()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinMirTensorTransform::NonResidentLinearizeToChannelInL2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Error: There must not be a new copy inserted by FixAllocation.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Failed in NonResidentLinearizeToChannelInL2 function.\n", a5, a6, a7, a8, v8);
}

void ZinMirTensorTransform::NonResidentLinearizeToChannelInL2()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinMirTensorTransform::TransposeChannelVectorToWidthFP16InL2()
{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}