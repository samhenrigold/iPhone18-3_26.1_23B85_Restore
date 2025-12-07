void sub_2476B9C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::TransformComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::TransformComponentBuilder::TransformComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::Inputs::_getValue<void *>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v57[2] = *MEMORY[0x277D85DE8];
  v49 = 0;
  v50 = 0;
  v8 = a2[3];
  if (v8)
  {
    v50 = std::__shared_weak_count::lock(v8);
    if (v50)
    {
      v49 = a2[2];
    }
  }

  MEMORY[0x24C1A5E00](&v51, a3);
  v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(a2[1], &v49);
  if (v9 == v10)
  {
    std::operator+<char>();
    v11 = std::string::append(&v47, ") at prim path (");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 4));
    v14 = *(String + 23);
    if (v14 >= 0)
    {
      v15 = String;
    }

    else
    {
      v15 = *String;
    }

    if (v14 >= 0)
    {
      v16 = *(String + 23);
    }

    else
    {
      v16 = *(String + 8);
    }

    v17 = std::string::append(&v48, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v52, ")");
    goto LABEL_22;
  }

  v20 = 1;
  v21 = v9;
  do
  {
    v21 = *v21;
    --v20;
  }

  while (v21 != v10);
  if (v20)
  {
    std::operator+<char>();
    v22 = std::string::append(&v47, ") at prim path (");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 4));
    v25 = *(v24 + 23);
    if (v25 >= 0)
    {
      v26 = v24;
    }

    else
    {
      v26 = *v24;
    }

    if (v25 >= 0)
    {
      v27 = *(v24 + 23);
    }

    else
    {
      v27 = *(v24 + 8);
    }

    v28 = std::string::append(&v48, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v52.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v52.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v52, ") because more than one connected builder produced the same output type");
LABEL_22:
    v30 = *&v19->__r_.__value_.__l.__data_;
    v54 = v19->__r_.__value_.__r.__words[2];
    *__p = v30;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v55, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a1 + 8) = v55;
    v57[0] = v56.__r_.__value_.__l.__size_;
    v31 = v56.__r_.__value_.__r.__words[0];
    *(v57 + 7) = *(&v56.__r_.__value_.__r.__words[1] + 7);
    v32 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    memset(&v56, 0, sizeof(v56));
    *a1 = 0;
    *(a1 + 39) = *(v57 + 7);
    v33 = v57[0];
    *(a1 + 24) = v31;
    *(a1 + 32) = v33;
    *(a1 + 47) = v32;
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      v34 = v47.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v34);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  v35 = v9[5];
  v37 = *(v35 + 16);
  v36 = *(v35 + 24);
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v9[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v9[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  std::mutex::lock(v37 + 1);
  v39 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v37->__m_.__opaque[32], EmptyString);
  v41 = v39;
  v42 = &v37->__m_.__opaque[40];
  if (&v37->__m_.__opaque[40] != v39)
  {
    *&v40 = *(*(v39 + 56) + 8);
    v46 = v40;
    std::mutex::unlock(v37 + 1);
    if (!v36)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  std::operator+<char>();
  v43 = std::string::append(&v52, " does not exist in the builder outputs");
  v44 = *&v43->__r_.__value_.__l.__data_;
  v54 = v43->__r_.__value_.__r.__words[2];
  *__p = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  realityio::DetailedError::DetailedError(&v55, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
  v46 = v55;
  size = v56.__r_.__value_.__l.__size_;
  EmptyString = v56.__r_.__value_.__r.__words[0];
  LODWORD(v48.__r_.__value_.__l.__data_) = v56.__r_.__value_.__r.__words[2];
  *(v48.__r_.__value_.__r.__words + 3) = *(&v56.__r_.__value_.__r.__words[2] + 3);
  v4 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
  memset(&v56, 0, sizeof(v56));
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(v37 + 1);
  v55 = v46;
  if ((v4 & 0x80000000) == 0)
  {
    LODWORD(v47.__r_.__value_.__l.__data_) = v48.__r_.__value_.__l.__data_;
    *(v47.__r_.__value_.__r.__words + 3) = *(v48.__r_.__value_.__r.__words + 3);
    if (!v36)
    {
      goto LABEL_39;
    }

LABEL_38:
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    goto LABEL_39;
  }

  std::string::__init_copy_ctor_external(&v56, EmptyString, size);
  v46 = v55;
  size = v56.__r_.__value_.__l.__size_;
  v45 = v56.__r_.__value_.__r.__words[0];
  LOBYTE(v4) = *(&v56.__r_.__value_.__s + 23);
  LODWORD(v47.__r_.__value_.__l.__data_) = v56.__r_.__value_.__r.__words[2];
  *(v47.__r_.__value_.__r.__words + 3) = *(&v56.__r_.__value_.__r.__words[2] + 3);
  operator delete(EmptyString);
  EmptyString = v45;
  if (v36)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (v42 == v41)
  {
    v55 = v46;
    if ((v4 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v56, EmptyString, size);
      *a1 = 0;
      *(a1 + 8) = v55;
      *(a1 + 24) = v56;
      v34 = EmptyString;
      goto LABEL_30;
    }

    v56.__r_.__value_.__r.__words[0] = EmptyString;
    v56.__r_.__value_.__l.__size_ = size;
    LODWORD(v56.__r_.__value_.__r.__words[2]) = v47.__r_.__value_.__l.__data_;
    *(&v56.__r_.__value_.__r.__words[2] + 3) = *(v47.__r_.__value_.__r.__words + 3);
    *(&v56.__r_.__value_.__s + 23) = v4;
    *a1 = 0;
    *(a1 + 8) = v55;
    *(a1 + 24) = v56;
  }

  else
  {
    *a1 = 1;
    *(a1 + 8) = v46;
  }

LABEL_50:
  if ((v51 & 7) != 0)
  {
    atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }
}

void sub_2476BA1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  operator delete(v33);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if ((a26 & 7) != 0)
  {
    atomic_fetch_add_explicit((a26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_28595C740;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 112);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 104);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 32));
  return a1;
}

void std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_28595C740;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 112);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 104);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 32));

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28595C740;
  a2[2] = *(a1 + 16);
}

uint64_t *std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 112);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 104);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 32));
}

void std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 112);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 104);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 32));

  operator delete(a1);
}

void std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  RETransformComponentGetComponentType();
  v6[0] = &unk_28595C7B0;
  v6[1] = v2;
  v6[3] = v6;
  v3 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v6, v3);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v6);
  if (*(a1 + 100) == 1)
  {
    REAnchoringComponentGetComponentType();
    v5[0] = &unk_28595C830;
    v5[1] = v2;
    v5[3] = v5;
    v4 = REEntityGetOrAddComponentByClass();
    std::function<void ()(REComponent *)>::operator()(v5, v4);
    RENetworkMarkComponentDirty();
    std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v5);
  }

  operator new();
}

void sub_2476BA858(_Unwind_Exception *a1)
{
  std::mutex::unlock(v3 + 1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio25TransformComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595C7B0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio25TransformComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio25TransformComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio25TransformComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595C830;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio25TransformComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = atomic_load(&realityio::tokens::TransformBuilderTokens);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TransformBuilderTokens);
  }

  if ((*(v3 + 24) ^ *(v2 + 72)) > 7)
  {
    v5 = atomic_load(&realityio::tokens::TransformBuilderTokens);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TransformBuilderTokens);
    }

    if ((*(v5 + 16) ^ *(v2 + 72)) > 7)
    {
      v6 = atomic_load(&realityio::tokens::TransformBuilderTokens);
      if (!v6)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TransformBuilderTokens);
      }

      if ((*v6 ^ *(v2 + 72)) > 7)
      {
        v8 = *(realityio::logObjects(v6) + 24);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(v2 + 72) & 0xFFFFFFFFFFFFFFF8;
          if (v9)
          {
            v10 = (v9 + 16);
            if (*(v9 + 39) < 0)
            {
              v10 = *v10;
            }
          }

          else
          {
            v10 = "";
          }

          v12 = 136315138;
          v13 = v10;
          _os_log_impl(&dword_247485000, v8, OS_LOG_TYPE_DEFAULT, "Unknown anchor type %s", &v12, 0xCu);
        }

        REAnchoringComponentSetDescriptorType();
      }

      else
      {
        REAnchoringComponentSetDescriptorType();
      }
    }

    else
    {
      REAnchoringComponentSetDescriptorType();
      REAnchoringComponentSetDescriptorResourceGroup();
      REAnchoringComponentSetDescriptorResourceName();
    }
  }

  else
  {
    REAnchoringComponentSetDescriptorType();
    if (*(v2 + 80))
    {
      v4 = atomic_load(&realityio::tokens::TransformBuilderTokens);
      if (!v4)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TransformBuilderTokens);
      }

      if ((*(v4 + 8) ^ *(v2 + 80)) > 7 && !atomic_load(&realityio::tokens::TransformBuilderTokens))
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TransformBuilderTokens);
      }

      REAnchoringComponentSetDescriptorAlignment();
    }
  }

  return REAnchoringComponentSetScaleFactor();
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio25TransformComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio25TransformComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<BOOL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595C8B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595C900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<BOOL>>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_28595C950;
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t realityio::InputOutputWrapperObject<std::shared_ptr<BOOL>>::getRawValue(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  return v2;
}

__n128 std::__function::__func<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595C990;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(realityio::EntityBuilder *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v2, v4, v29);
  if (v29[0])
  {
    v28 = v30;
    if (v30)
    {
      v5 = RERetain();
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = realityio::TransformComponentBuilder::kOutputName(v5);
      std::mutex::lock(v7 + 1);
      v9 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v7->__m_.__opaque[32], v8);
      if (&v7->__m_.__opaque[40] == v9)
      {
        std::operator+<char>();
        v13 = std::string::append(&v34, " does not exist in the builder outputs");
        v14 = *&v13->__r_.__value_.__l.__data_;
        v36 = v13->__r_.__value_.__r.__words[2];
        v35 = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        realityio::DetailedError::DetailedError(buf, 207, &realityio::FoundationErrorCategory(void)::instance, &v35);
        v32 = *buf;
        *v33 = *&buf[16];
        *&v33[8] = *&buf[24];
        *&v33[15] = *&buf[31];
        v15 = buf[39];
        memset(&buf[16], 0, 24);
        LOBYTE(v31) = 0;
        v33[23] = v15;
        if (SHIBYTE(v36) < 0)
        {
          operator delete(v35);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = *(v9 + 56);
        v12 = *(v10 + 8);
        v11 = *(v10 + 16);
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
        }

        LOBYTE(v31) = 1;
        *&v32 = v12;
        *(&v32 + 1) = v11;
      }

      std::mutex::unlock(v7 + 1);
      if (v31)
      {
        v16 = v32;
        if (*(&v32 + 1))
        {
          atomic_fetch_add_explicit((*(&v32 + 1) + 8), 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit((*(&v16 + 1) + 8), 1uLL, memory_order_relaxed);
          v24[0] = 1;
          v25 = v16;
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
        }

        else
        {
          v24[0] = 1;
          v25 = v32;
        }
      }

      else
      {
        *buf = v32;
        if ((v33[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&buf[16], *v33, *&v33[8]);
        }

        else
        {
          *&buf[16] = *v33;
          *&buf[32] = *&v33[16];
        }

        v24[0] = 0;
        v25 = *buf;
        v26 = *&buf[16];
        v27 = *&buf[32];
      }

      v17 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&v31);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      if (v24[0] == 1 && v25)
      {
        v18 = *(realityio::logObjects(v17) + 24);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          Name = REEntityGetName();
          v20 = *(a1 + 1);
          pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*v20 + 8));
          pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v31, v21, (v20 + 32));
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v35, &v31);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v35);
          *buf = 136315394;
          *&buf[4] = Name;
          *&buf[12] = 2080;
          *&buf[14] = Text;
          _os_log_impl(&dword_247485000, v18, OS_LOG_TYPE_INFO, "Clearing xform on entity '%s' for prim '%s'", buf, 0x16u);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
          if ((v33[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32 + 8);
          if (v32)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v32);
          }
        }

        RETransformComponentGetComponentType();
        REEntityRemoveComponentByClass();
      }

      realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(v24);
    }
  }

  else
  {
    v28 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v28);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v29);
}

void sub_2476BB2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&a24);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a15);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::TransformComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *RIO_MTLX::EMPTY_STRING(RIO_MTLX *this)
{
  {
    RIO_MTLX::EMPTY_STRING(void)::v = 0;
    unk_27EE52680 = 0;
    qword_27EE52688 = 0;
  }

  return &RIO_MTLX::EMPTY_STRING(void)::v;
}

BOOL RIO_MTLX::anonymous namespace::invalidNameChar(__darwin_ct_rune_t this)
{
  if (this < 0)
  {
    v2 = __maskrune(this, 0x500uLL);
  }

  else
  {
    v2 = *(MEMORY[0x277D85DE0] + 4 * this + 60) & 0x500;
  }

  return this != 95 && this != 58 && v2 == 0;
}

BOOL RIO_MTLX::isValidName(char *a1)
{
  v2 = a1[23];
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 1);
  if ((v2 & 0x80u) == 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((v2 & 0x80u) == 0)
  {
    v7 = a1[23];
  }

  else
  {
    v7 = *(a1 + 1);
  }

  if (v7)
  {
    v8 = &v6[v7];
    {
      ++v6;
      if (!--v7)
      {
        v6 = v8;
        break;
      }
    }

    v2 = a1[23];
    v4 = *a1;
    v5 = *(a1 + 1);
    v3 = a1[23];
  }

  if (v3 < 0)
  {
    v2 = v5;
  }

  else
  {
    v4 = a1;
  }

  return v6 == &v4[v2];
}

void RIO_MTLX::incrementName(uint64_t ***__return_ptr a1@<X8>, std::string *__str@<X0>)
{
  v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v4 >= 0)
  {
    v6 = __str;
  }

  else
  {
    v6 = __str->__r_.__value_.__r.__words[0];
  }

  v7 = &v6[-1].__r_.__value_.__r.__words[2] + 7;
  v8 = size;
  do
  {
    v9 = v8;
    if (!v8)
    {
      break;
    }

    v10 = v7[v8];
    if (v10 < 0)
    {
      break;
    }

    v11 = *(MEMORY[0x277D85DE0] + 4 * v10 + 60);
    v8 = v9 - 1;
  }

  while ((v11 & 0x400) != 0);
  if (v9 >= size)
  {
    std::string::basic_string[abi:ne200100](a1, size + 1);
    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    if (size)
    {
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = __str;
      }

      else
      {
        v18 = __str->__r_.__value_.__r.__words[0];
      }

      memmove(a1, v18, size);
    }

    *(a1 + size) = 50;
  }

  else
  {
    std::string::basic_string(&v21, __str, 0, v9, &__stra);
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __str->__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&__stra, __str, v9, v12, &v19);
    v13 = std::stoi(&__stra, 0, 10);
    std::to_string(&v19, v13 + 1);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v21;
    }

    else
    {
      v14 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v21.__r_.__value_.__l.__size_;
    }

    v16 = std::string::insert(&v19, 0, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    a1[2] = v16->__r_.__value_.__r.__words[2];
    *a1 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__stra.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__stra.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2476BB6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::splitString(std::allocator<std::string> *__return_ptr a1@<X8>, std::string *__str@<X0>, unsigned __int8 ***a3@<X1>)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = __str;
  }

  else
  {
    v7 = __str->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = a3[1];
  }

  if (!size)
  {
LABEL_18:
    v12 = -1;
LABEL_19:
    v15 = -1;
    goto LABEL_20;
  }

  v12 = 0;
  if (!v11)
  {
    goto LABEL_19;
  }

  v13 = v7 + size;
  v14 = v7;
  while (memchr(v10, v14->__r_.__value_.__s.__data_[0], v11))
  {
    v14 = (v14 + 1);
    if (size == ++v12)
    {
      goto LABEL_18;
    }
  }

  if (size <= v12)
  {
    goto LABEL_19;
  }

LABEL_66:
  v43 = v11;
  v44 = v10;
  while (v14->__r_.__value_.__s.__data_[0] != *v44)
  {
    v44 = (v44 + 1);
    if (!--v43)
    {
      v14 = (v14 + 1);
      if (v14 != v13)
      {
        goto LABEL_66;
      }

      v14 = (v7 + size);
      break;
    }
  }

  if (v14 == v13)
  {
    v15 = -1;
  }

  else
  {
    v15 = v14 - v7;
  }

LABEL_20:
  if ((v15 & v12) != 0xFFFFFFFFFFFFFFFFLL)
  {
    do
    {
      std::string::basic_string(&__p, __str, v12, v15 - v12, &v46);
      v17 = *(a1 + 1);
      v16 = *(a1 + 2);
      if (v17 >= v16)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *a1) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<char const*>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a1) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        v46.__end_cap_.__value_ = a1;
        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v22);
        }

        v23 = 24 * v19;
        v24 = *&__p.__r_.__value_.__l.__data_;
        *(v23 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v23 = v24;
        memset(&__p, 0, sizeof(__p));
        v25 = 24 * v19 + 24;
        v26 = *(a1 + 1) - *a1;
        v27 = 24 * v19 - v26;
        memcpy((v23 - v26), *a1, v26);
        v28 = *a1;
        *a1 = v27;
        *(a1 + 1) = v25;
        v29 = *(a1 + 2);
        *(a1 + 2) = 0;
        v46.__end_ = v28;
        v46.__end_cap_.__value_ = v29;
        v46.__first_ = v28;
        v46.__begin_ = v28;
        std::__split_buffer<std::string>::~__split_buffer(&v46);
        v30 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(a1 + 1) = v25;
        if (v30 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v18 = *&__p.__r_.__value_.__l.__data_;
        *(v17 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v17 = v18;
        *(a1 + 1) = v17 + 24;
      }

      v31 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
      if (v31 >= 0)
      {
        v32 = __str;
      }

      else
      {
        v32 = __str->__r_.__value_.__r.__words[0];
      }

      if (v31 >= 0)
      {
        v33 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = __str->__r_.__value_.__l.__size_;
      }

      v34 = *(a3 + 23);
      if (v34 >= 0)
      {
        v35 = a3;
      }

      else
      {
        v35 = *a3;
      }

      if (v34 >= 0)
      {
        v36 = *(a3 + 23);
      }

      else
      {
        v36 = a3[1];
      }

      if (v33 <= v15)
      {
        v15 = -1;
      }

      else if (v36)
      {
        v37 = v32 + v33;
        v38 = v32 + v15;
        while (memchr(v35, *v38, v36))
        {
          ++v38;
          if (v33 == ++v15)
          {
            v15 = -1;
LABEL_62:
            v39 = -1;
            goto LABEL_63;
          }
        }

        if (v33 <= v15)
        {
          goto LABEL_62;
        }

LABEL_54:
        v40 = v36;
        v41 = v35;
        while (*v38 != *v41)
        {
          v41 = (v41 + 1);
          if (!--v40)
          {
            if (++v38 != v37)
            {
              goto LABEL_54;
            }

            v38 = v32 + v33;
            break;
          }
        }

        v39 = v38 - v32;
        if (v38 == v37)
        {
          v39 = -1;
        }

        goto LABEL_63;
      }

      v39 = -1;
LABEL_63:
      v12 = v15;
      v42 = v39 & v15;
      v15 = v39;
    }

    while (v42 != -1);
  }
}

void sub_2476BBA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

__n128 RIO_MTLX::replaceSubstrings@<Q0>(uint64_t *__return_ptr a1@<X8>, std::string *this@<X0>, uint64_t a3@<X1>)
{
  for (i = *(a3 + 16); i; i = *i)
  {
    if ((*(i + 39) & 0x8000000000000000) != 0)
    {
      if (i[3])
      {
LABEL_6:
        for (j = 0; ; j += v20)
        {
          size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
          if ((size & 0x8000000000000000) != 0)
          {
            v7 = this->__r_.__value_.__r.__words[0];
            size = this->__r_.__value_.__l.__size_;
          }

          else
          {
            v7 = this;
          }

          v8 = *(i + 39);
          v9 = v8 >= 0 ? (i + 2) : i[2];
          v10 = v8 >= 0 ? *(i + 39) : i[3];
          v11 = size - j;
          if (size < j)
          {
            break;
          }

          if (v10)
          {
            if (v11 >= v10)
            {
              v12 = v7 + size;
              v13 = v7 + j;
              v14 = *v9;
              while (v11 - v10 != -1)
              {
                v15 = memchr(v13, v14, v11 - v10 + 1);
                if (!v15)
                {
                  break;
                }

                v16 = v15;
                if (!memcmp(v15, v9, v10))
                {
                  if (v16 == v12)
                  {
                    goto LABEL_37;
                  }

                  j = v16 - v7;
                  goto LABEL_27;
                }

                v13 = v16 + 1;
                v11 = v12 - (v16 + 1);
                if (v11 < v10)
                {
                  goto LABEL_37;
                }
              }
            }

            break;
          }

LABEL_27:
          if (j == -1)
          {
            break;
          }

          v17 = *(i + 63);
          if (v17 >= 0)
          {
            v18 = (i + 5);
          }

          else
          {
            v18 = i[5];
          }

          if (v17 >= 0)
          {
            v19 = *(i + 63);
          }

          else
          {
            v19 = i[6];
          }

          std::string::replace(this, j, v10, v18, v19);
          v20 = *(i + 63);
          if (v20 < 0)
          {
            v20 = i[6];
          }
        }
      }
    }

    else if (*(i + 39))
    {
      goto LABEL_6;
    }

LABEL_37:
    ;
  }

  result = *&this->__r_.__value_.__l.__data_;
  *a1 = *&this->__r_.__value_.__l.__data_;
  a1[2] = this->__r_.__value_.__r.__words[2];
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void *realityio::SkeletalPoseDefinitionAssetAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, void *a3@<X3>, void *a4@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a5@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a5, a1);
  v14 = 0;
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  if (a3[1] != *a3)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v15, (*a4 + v9));
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(v15) && (v16 & 4) != 0)
      {
        (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(v15);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
      ++v10;
      v9 += 16;
    }

    while (v10 < (a3[1] - *a3) >> 3);
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(a5))
  {
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REAsset *>>(a5))
    {
      v11 = *(a5 + 1);
      if ((v11 & 4) != 0)
      {
        v12 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(a5);
      }

      else
      {
        v12 = *a5;
      }
    }

    else
    {
      v12 = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
    }

    realityio::WrappedRERef<REAsset *>::operator=(&v14, v12);
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v14);
}

void sub_2476BBD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a9);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v9);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<realityio::WrappedRERef<REAsset *>>(void *result)
{
  if (result)
  {
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

realityio::tokens::TextBuilderTokens_StaticTokenType *realityio::tokens::TextBuilderTokens_StaticTokenType::TextBuilderTokens_StaticTokenType(realityio::tokens::TextBuilderTokens_StaticTokenType *this)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "baseline", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "bottom", 0);
  MEMORY[0x24C1A5DF0](this + 16, "center", 0);
  MEMORY[0x24C1A5DF0](this + 24, "content", 0);
  MEMORY[0x24C1A5DF0](this + 32, "depth", 0);
  MEMORY[0x24C1A5DF0](this + 40, "flowing", 0);
  MEMORY[0x24C1A5DF0](this + 48, "font", 0);
  MEMORY[0x24C1A5DF0](this + 56, "height", 0);
  MEMORY[0x24C1A5DF0](this + 64, "horizontalAlignment", 0);
  MEMORY[0x24C1A5DF0](this + 72, "justified", 0);
  MEMORY[0x24C1A5DF0](this + 80, "left", 0);
  MEMORY[0x24C1A5DF0](this + 88, "lowerMiddle", 0);
  MEMORY[0x24C1A5DF0](this + 96, "middle", 0);
  MEMORY[0x24C1A5DF0](this + 104, "pointSize", 0);
  MEMORY[0x24C1A5DF0](this + 112, "Preliminary_Text", 0);
  MEMORY[0x24C1A5DF0](this + 120, "right", 0);
  MEMORY[0x24C1A5DF0](this + 128, "singleLine", 0);
  MEMORY[0x24C1A5DF0](this + 136, "top", 0);
  MEMORY[0x24C1A5DF0](this + 144, "verticalAlignment", 0);
  MEMORY[0x24C1A5DF0](this + 152, "width", 0);
  MEMORY[0x24C1A5DF0](this + 160, "wrapMode", 0);
  v3 = (this + 168);
  v4 = *this;
  v28 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v29 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v30 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v31 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v31 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v32 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v33 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v33 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v34 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v34 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v35 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v36 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v37 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v38 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v39 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 12);
  v40 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 13);
  v41 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 14);
  v42 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 15);
  v43 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 16);
  v44 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 17);
  v45 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 18);
  v46 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 19);
  v47 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 20);
  v48 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v28, &v49, 0x15uLL);
  for (i = 160; i != -8; i -= 8)
  {
    v26 = *(&v28 + i);
    if ((v26 & 7) != 0)
    {
      atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_2476BC448(_Unwind_Exception *a1)
{
  v3 = 160;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[20];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[19];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[18];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[17];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[16];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[15];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[14];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[13];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[12];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[11];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[10];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[9];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[8];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[7];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[6];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[5];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[4];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[3];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[2];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[1];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::generateTextPrimDirtyStageSubscription(uint64_t *__return_ptr a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE535D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE535D8))
  {
    operator new();
  }

  v2 = unk_27EE535D0;
  *a1 = _MergedGlobals_53;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2476BCD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void **a49)
{
  MEMORY[0x24C1A91B0](v50, 0x10A1C40F82F910ELL);
  a49 = &a38;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&a49);
  MEMORY[0x24C1A91B0](v49, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v51, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE535D8);
  _Unwind_Resume(a1);
}

void realityio::textInformationFromPrim(std::string *__return_ptr a1@<X8>, realityio *this@<X0>)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "Helvetica");
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::VtArray(__s, __p, 1);
  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(buf, this, (v4 + 48));
  if (buf[0])
  {
    v68 = *&v74[4];
    v69 = v75;
    v5 = v76;
  }

  else
  {
    v68 = *__s;
    v69 = v66;
    v5 = v67;
  }

  v70 = v5;
  if (v5)
  {
    v6 = (v5 - 1);
    if (*(&v69 + 1))
    {
      v6 = *(&v69 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(buf);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(__s);
  if (v72 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  v8 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v8)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(buf, this, (v7 + 160));
  if (buf[0])
  {
    v9 = *&v74[4];
  }

  else
  {
    v9 = *(v8 + 40);
  }

  __p[0] = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      __p[0] = v10;
    }
  }

  if (buf[0] == 1)
  {
    if ((v74[4] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v74[4] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  v11 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  v12 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v12)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(buf, this, (v11 + 64));
  if (buf[0])
  {
    v13 = *&v74[4];
  }

  else
  {
    v13 = *(v12 + 40);
  }

  v64 = v13;
  if ((v13 & 7) != 0)
  {
    v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
    {
      v64 = v14;
    }
  }

  if (buf[0] == 1)
  {
    if ((v74[4] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v74[4] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  v15 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v15)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  v16 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v16)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::TfToken>(buf, this, (v15 + 144));
  if (buf[0])
  {
    v17 = *&v74[4];
  }

  else
  {
    v17 = *(v16 + 40);
  }

  v63 = v17;
  if ((v17 & 7) != 0)
  {
    v18 = (v17 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed) & 1) == 0)
    {
      v63 = v18;
    }
  }

  if (buf[0] == 1)
  {
    if ((v74[4] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v74[4] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  v19 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v19)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  std::string::basic_string[abi:ne200100]<0>(__s, "");
  realityio::getAttributeValue<std::string>(buf, this, (v19 + 24));
  v20 = &v74[4];
  if (buf[0])
  {
    if ((SBYTE7(v75) & 0x80000000) == 0)
    {
      *&a1->__r_.__value_.__l.__data_ = *&v74[4];
      a1->__r_.__value_.__r.__words[2] = v75;
      goto LABEL_64;
    }

    v21 = *&v74[4];
    v22 = &v74[12];
  }

  else
  {
    if ((SBYTE7(v66) & 0x80000000) == 0)
    {
      *&a1->__r_.__value_.__l.__data_ = *__s;
      a1->__r_.__value_.__r.__words[2] = v66;
      goto LABEL_61;
    }

    v21 = __s[0];
    v22 = &__s[1];
  }

  std::string::__init_copy_ctor_external(a1, v21, *v22);
  if (buf[0])
  {
    if ((SBYTE7(v75) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_61:
  if ((SHIBYTE(v76) & 0x80000000) == 0)
  {
    goto LABEL_64;
  }

  v20 = &v75;
LABEL_63:
  operator delete(*v20);
LABEL_64:
  if (v68)
  {
    if (*(v70 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a1 + 1, *v70, *(v70 + 1));
    }

    else
    {
      v23 = *v70;
      a1[1].__r_.__value_.__r.__words[2] = *(v70 + 2);
      *&a1[1].__r_.__value_.__l.__data_ = v23;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1[1].__r_.__value_.__r.__words, "Helvetica");
  }

  v24 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v24)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  realityio::getAttributeValue<double>(buf, this, (v24 + 104));
  v25 = buf[0];
  v26 = *&v74[4];
  if ((buf[0] & 1) == 0 && SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  v27 = v26 * 0.00035277723;
  if (!v25)
  {
    v27 = 0.0507999211;
  }

  *&a1[2].__r_.__value_.__l.__data_ = v27;
  v28 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v28)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  realityio::getAttributeValue<double>(buf, this, (v28 + 152));
  v29 = buf[0];
  v30 = *&v74[4];
  if ((buf[0] & 1) == 0 && SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  v31 = 0.6;
  if (v29)
  {
    v31 = v30;
  }

  *&a1[2].__r_.__value_.__l.__size_ = v31;
  v32 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v32)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  realityio::getAttributeValue<double>(buf, this, (v32 + 56));
  v33 = buf[0];
  v34 = *&v74[4];
  if ((buf[0] & 1) == 0 && SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  v35 = 0.15;
  if (v33)
  {
    v35 = v34;
  }

  *&a1[2].__r_.__value_.__r.__words[2] = v35;
  v36 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v36)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  realityio::getAttributeValue<double>(buf, this, (v36 + 32));
  v37 = buf[0];
  v38 = *&v74[4];
  if ((buf[0] & 1) == 0 && SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  v39 = 0.2;
  if (v37)
  {
    v39 = v38;
  }

  *&a1[3].__r_.__value_.__l.__data_ = v39;
  v40 = __p[0];
  a1[3].__r_.__value_.__l.__size_ = __p[0];
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a1[3].__r_.__value_.__l.__size_ &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[3].__r_.__value_.__r.__words[2] = v64;
  if ((v64 & 7) != 0 && (atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a1[3].__r_.__value_.__r.__words[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  a1[4].__r_.__value_.__r.__words[0] = v63;
  if ((v63 & 7) != 0 && (atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a1[4].__r_.__value_.__r.__words[0] &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((pxrInternal__aapl__pxrReserved__::TfToken::operator==() & 1) == 0)
  {
    if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
    {
      v41 = 1;
      goto LABEL_110;
    }

    if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
    {
      v41 = 2;
      goto LABEL_110;
    }

    v42 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
    if (v42)
    {
      v41 = 3;
      goto LABEL_110;
    }

    v48 = *(realityio::logObjects(v42) + 24);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v64 & 0xFFFFFFFFFFFFFFF8;
      if ((v64 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v50 = (v49 + 16);
        if (*(v49 + 39) < 0)
        {
          v50 = *v50;
        }
      }

      else
      {
        v50 = "";
      }

      *buf = 136315138;
      *v74 = v50;
      _os_log_impl(&dword_247485000, v48, OS_LOG_TYPE_DEFAULT, "Unknown text horizontal alignment value %s defaulting to left", buf, 0xCu);
    }
  }

  v41 = 0;
LABEL_110:
  a1[4].__r_.__value_.__s.__data_[8] = v41;
  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==() & 1) != 0 || (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    v43 = 2;
  }

  else
  {
    v44 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
    if ((v44 & 1) == 0)
    {
      v45 = *(realityio::logObjects(v44) + 24);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = __p[0] & 0xFFFFFFFFFFFFFFF8;
        if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v47 = (v46 + 16);
          if (*(v46 + 39) < 0)
          {
            v47 = *v47;
          }
        }

        else
        {
          v47 = "";
        }

        *buf = 136315138;
        *v74 = v47;
        _os_log_impl(&dword_247485000, v45, OS_LOG_TYPE_DEFAULT, "Unknown wrap mode value %s defaulting to flowing", buf, 0xCu);
      }
    }

    v43 = 0;
  }

  a1[4].__r_.__value_.__s.__data_[9] = v43;
  v51 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
  v52 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
  if (!v51)
  {
    if ((v52 & 1) == 0)
    {
      if ((pxrInternal__aapl__pxrReserved__::TfToken::operator==() & 1) == 0)
      {
        v58 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
        if (v58)
        {
          goto LABEL_152;
        }

        v54 = *(realityio::logObjects(v58) + 24);
        if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_152;
        }

        v59 = v63 & 0xFFFFFFFFFFFFFFF8;
        if ((v63 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v56 = (v59 + 16);
          if (*(v59 + 39) < 0)
          {
            v56 = *v56;
          }
        }

        else
        {
          v56 = "";
        }

        v60 = __p[0] & 0xFFFFFFFFFFFFFFF8;
        if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v61 = (v60 + 16);
          if (*(v60 + 39) < 0)
          {
            v61 = *v61;
          }
        }

        else
        {
          v61 = "";
        }

        goto LABEL_151;
      }

LABEL_138:
      v57 = 2;
      goto LABEL_153;
    }

LABEL_136:
    v57 = 0;
    goto LABEL_153;
  }

  if (v52)
  {
    goto LABEL_136;
  }

  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    goto LABEL_138;
  }

  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    goto LABEL_152;
  }

  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    goto LABEL_152;
  }

  v53 = pxrInternal__aapl__pxrReserved__::TfToken::operator==();
  if (v53)
  {
    goto LABEL_152;
  }

  v54 = *(realityio::logObjects(v53) + 24);
  if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_152;
  }

  v55 = v63 & 0xFFFFFFFFFFFFFFF8;
  if ((v63 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v56 = (v55 + 16);
    if (*(v55 + 39) < 0)
    {
      v56 = *v56;
    }
  }

  else
  {
    v56 = "";
  }

  v62 = __p[0] & 0xFFFFFFFFFFFFFFF8;
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v61 = (v62 + 16);
    if (*(v62 + 39) < 0)
    {
      v61 = *v61;
    }
  }

  else
  {
    v61 = "";
  }

LABEL_151:
  *buf = 136315394;
  *v74 = v56;
  *&v74[8] = 2080;
  *&v74[10] = v61;
  _os_log_impl(&dword_247485000, v54, OS_LOG_TYPE_DEFAULT, "Unknown text vertical alignment value %s for wrap mode %s; defaulting to bottom", buf, 0x16u);
LABEL_152:
  v57 = 1;
LABEL_153:
  a1[4].__r_.__value_.__s.__data_[10] = v57;
  if (SBYTE7(v66) < 0)
  {
    operator delete(__s[0]);
  }

  if ((v63 & 7) != 0)
  {
    atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v64 & 7) != 0)
  {
    atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v68);
}

void sub_2476BDC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (*(v31 + 47) < 0)
  {
    operator delete(*(v31 + 24));
  }

  if (*(v31 + 23) < 0)
  {
    operator delete(*v31);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a25 & 7) != 0)
  {
    atomic_fetch_add_explicit((a25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&a20);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdObject *this@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X0>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a3);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(&__p, a1);
      if ((*a1 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a3 & 0xFFFFFFFFFFFFFFF8;
          if (v8)
          {
            v9 = (v8 + 16);
            if (*(v8 + 39) < 0)
            {
              v9 = *v9;
            }
          }

          else
          {
            v9 = "";
          }

          v14 = a1[3];
          v13 = a1 + 3;
          v12 = v14;
          if (*(v13 + 23) >= 0)
          {
            v12 = v13;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v12;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v15, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v15);
      *(a1 + 1) = *buf;
      v11 = v21;
      a1[3] = *&buf[16];
      a1[4] = v11;
      *(a1 + 39) = *(&v21 + 7);
      LOBYTE(v11) = HIBYTE(v21);
      v21 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 47) = v11;
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }
    }

    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v18);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 1) = *buf;
    v10 = v21;
    a1[3] = *&buf[16];
    a1[4] = v10;
    *(a1 + 39) = *(&v21 + 7);
    LOBYTE(v10) = HIBYTE(v21);
    v21 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 47) = v10;
    if ((v18[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2476BDFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(v9);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v13, a1);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    if (!pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredTimeCodeRange(v4))
    {
      v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v7);
    }

    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v13);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetStartTimeCode(v5);
    __p[0] = v8;
    realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(a1, __p, a2);
    v9 = *(&v13 + 1);
    if (*(&v13 + 1))
    {
      if (atomic_fetch_add_explicit((*(&v13 + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v9 + 8))(v9);
      }
    }
  }

  else
  {
    Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
    if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
    }

    std::operator+<char>();
    realityio::DetailedError::DetailedError(&v13, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a2 + 8) = v13;
    v10 = v15;
    *(a2 + 24) = v14;
    *(a2 + 32) = v10;
    *(a2 + 39) = *(&v15 + 7);
    LOBYTE(v10) = HIBYTE(v15);
    v15 = 0uLL;
    v14 = 0;
    *a2 = 0;
    *(a2 + 47) = v10;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_2476BE1C8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13)
{
  if (a13)
  {
    if (atomic_fetch_add_explicit(a13 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void realityio::getAttributeValue<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(pxrInternal__aapl__pxrReserved__::UsdObject *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a1))
  {
    v41.__type_name = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::Get())
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(&v41))
      {
        v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(&v41);
        v7 = *(v6 + 16);
        v38 = *v6;
        v39[0] = v7;
        v8 = *(v6 + 32);
        if (v8)
        {
          v9 = *(&v39[0] + 1);
          if (!*(&v39[0] + 1))
          {
            v9 = (v8 - 16);
          }

          atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
        }

        *a3 = 1;
        v10 = v39[0];
        *(a3 + 8) = v38;
        *(a3 + 24) = v10;
        v38 = 0u;
        v39[0] = 0u;
        *(a3 + 40) = v8;
        *&v39[1] = 0;
        pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v38);
        goto LABEL_46;
      }

      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v41);
      {
        v16 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(&v41);
        v17 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v40, v16);
        if (v40.__r_.__value_.__l.__size_)
        {
          v18 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(v17);
          v19 = *(v18 + 16);
          v38 = *v18;
          v39[0] = v19;
          v20 = *(v18 + 32);
          if (v20)
          {
            v21 = *(&v39[0] + 1);
            if (!*(&v39[0] + 1))
            {
              v21 = (v20 - 16);
            }

            atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
          }

          *a3 = 1;
          v22 = v39[0];
          *(a3 + 8) = v38;
          *(a3 + 24) = v22;
          v38 = 0u;
          v39[0] = 0u;
          *(a3 + 40) = v20;
          *&v39[1] = 0;
          pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(&v38);
        }

        else
        {
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
          if ((*Name & 0xFFFFFFFFFFFFFFF8) == 0)
          {
            pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
          }

          std::operator+<char>();
          realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
          *(a3 + 8) = v38;
          v33 = *(&v39[0] + 1);
          *(a3 + 24) = *&v39[0];
          *(a3 + 32) = v33;
          *(a3 + 39) = *(v39 + 15);
          LOBYTE(v33) = BYTE7(v39[1]);
          memset(v39, 0, 24);
          *a3 = 0;
          *(a3 + 47) = v33;
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v40);
        goto LABEL_46;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "Value is not of the given type");
      realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v38;
      v31 = *(&v39[0] + 1);
      *(a3 + 24) = *&v39[0];
      *(a3 + 32) = v31;
      *(a3 + 39) = *(v39 + 15);
      LOBYTE(v31) = BYTE7(v39[1]);
      memset(v39, 0, 24);
      *a3 = 0;
      *(a3 + 47) = v31;
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
LABEL_46:
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v41);
        return;
      }

      v30 = __p[0];
    }

    else
    {
      v12 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
      if ((*v12 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      std::operator+<char>();
      v23 = std::string::append(&v35, ") at the given time: ");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v34, *a2);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v34;
      }

      else
      {
        v25 = v34.__r_.__value_.__r.__words[0];
      }

      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v34.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v40, v25, size);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v37 = v27->__r_.__value_.__r.__words[2];
      *__p = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
      *(a3 + 8) = v38;
      v29 = *(&v39[0] + 1);
      *(a3 + 24) = *&v39[0];
      *(a3 + 32) = v29;
      *(a3 + 39) = *(v39 + 15);
      LOBYTE(v29) = BYTE7(v39[1]);
      memset(v39, 0, 24);
      *a3 = 0;
      *(a3 + 47) = v29;
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      v30 = v35.__r_.__value_.__r.__words[0];
    }

    operator delete(v30);
    goto LABEL_46;
  }

  v11 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a1);
  if ((*v11 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  std::operator+<char>();
  realityio::DetailedError::DetailedError(&v38, 200, &realityio::FoundationErrorCategory(void)::instance, __p);
  *(a3 + 8) = v38;
  v13 = *(&v39[0] + 1);
  *(a3 + 24) = *&v39[0];
  *(a3 + 32) = v13;
  *(a3 + 39) = *(v39 + 15);
  LOBYTE(v13) = BYTE7(v39[1]);
  memset(v39, 0, 24);
  *a3 = 0;
  *(a3 + 47) = v13;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2476BE674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 59)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

void *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(void *result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t realityio::Result<pxrInternal__aapl__pxrReserved__::VtArray<std::string>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void realityio::getAttributeValue<std::string>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdObject *this@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X0>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(this))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&__p, this, a3);
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&__p) && (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(&__p) & 1) != 0)
    {
      realityio::getAttributeValue<std::string>(&__p, a1);
      if ((*a1 & 1) == 0)
      {
        v7 = *realityio::logObjects(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *a3 & 0xFFFFFFFFFFFFFFF8;
          if (v8)
          {
            v9 = (v8 + 16);
            if (*(v8 + 39) < 0)
            {
              v9 = *v9;
            }
          }

          else
          {
            v9 = "";
          }

          v14 = a1[3];
          v13 = a1 + 3;
          v12 = v14;
          if (*(v13 + 23) >= 0)
          {
            v12 = v13;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v12;
          _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Unable to fetch attribute named %s: %s", buf, 0x16u);
        }
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v15, "Attribute does not hold a value");
      realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, v15);
      *(a1 + 1) = *buf;
      v11 = v21;
      a1[3] = *&buf[16];
      a1[4] = v11;
      *(a1 + 39) = *(&v21 + 7);
      LOBYTE(v11) = HIBYTE(v21);
      v21 = 0uLL;
      *&buf[16] = 0;
      *a1 = 0;
      *(a1 + 47) = v11;
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }
    }

    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v18);
    if (*(&__p + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&__p + 1));
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Prim is invalid");
    realityio::DetailedError::DetailedError(buf, 200, &realityio::FoundationErrorCategory(void)::instance, &__p);
    *(a1 + 1) = *buf;
    v10 = v21;
    a1[3] = *&buf[16];
    a1[4] = v10;
    *(a1 + 39) = *(&v21 + 7);
    LOBYTE(v10) = HIBYTE(v21);
    v21 = 0uLL;
    *&buf[16] = 0;
    *a1 = 0;
    *(a1 + 47) = v10;
    if ((v18[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2476BEBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  realityio::Result<std::string,realityio::DetailedError>::~Result(v9);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionInit(realityio *this)
{
  if (!REComponentClassFromName())
  {
    {
      if (REStructBuilderInit())
      {
        REStructBuilderAddMemberDataTypeWithTag();
      }

      REStructBuilderDestroy();
    }

    REComponentClassFromName();
  }
}

void anonymous namespace::RIOPrimPathComponent::primPathComponentDestroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (*a2)
    {
      RECIntrospectionFree();
      *a2 = 0;
    }

    JUMPOUT(0x24C1A91B0);
  }
}

void realityio::ImportSessionDeinit(realityio *this)
{
  {
    RECustomComponentTypeDestroy();
  }
}

void realityio::ImportSession::SessionMeshAssetCacheDeleter::operator()(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::destroy(a2 + 24, *(a2 + 32));
    std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::destroy(a2, *(a2 + 8));

    JUMPOUT(0x24C1A91B0);
  }
}

void ___Z26shouldImportSubdsByDefaultv_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _MergedGlobals_54 = [v0 BOOLForKey:@"com.apple.RealityIO.disableSubd"] ^ 1;
}

void realityio::ImportSession::ImportSession(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v8 = a5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28595CA68;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
  *(a1 + 60) = a7;
  *(a1 + 72) = 0;
  *(a1 + 64) = a1 + 72;
  *(a1 + 88) = 850045863;
  *(a1 + 160) = 850045863;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 248) = a1 + 256;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a8;
  *(a1 + 273) = 257;
  v9 = _os_feature_enabled_impl();
  if (v9)
  {
    v10 = *realityio::logObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_DEFAULT, "ImportSession forced to TargetBasedBuilderDirtying mode due to RealityIO/TargetBasedBuilderDirtying FeatureFlag", v11, 2u);
    }
  }

  else if (v8 != 2)
  {
    if (v8 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_2476BF228(_Unwind_Exception *a1)
{
  __cxa_guard_abort(qword_27EE535F8);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v5, *(v1 + 256));
  std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::destroy(*(v1 + 232));
  std::mutex::~mutex(v4);
  v8 = *(v1 + 152);
  *(v1 + 152) = 0;
  if (v8)
  {
    realityio::ImportSession::SessionMeshAssetCacheDeleter::operator()(v7, v8);
  }

  std::mutex::~mutex(v3);
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(v2, *(v1 + 72));
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v9 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSession::deduplicateMeshAsset(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  std::mutex::lock((a1 + 160));
  v8 = *(a1 + 152);
  if (!v8)
  {
    operator new();
  }

  v9 = realityio::SessionMeshAssetCache::deduplicateMeshAsset(v8, a2, a3, v4);
  std::mutex::unlock((a1 + 160));
  return v9;
}

uint64_t realityio::SessionMeshAssetCache::deduplicateMeshAsset(uint64_t **a1, void *a2, uint64_t a3, int a4)
{
  v35 = *MEMORY[0x277D85DE8];
  CompiledStreamAndRemap = REAssetCreateCompiledStreamAndRemap();
  cf = CompiledStreamAndRemap;
  if (!CompiledStreamAndRemap)
  {
    goto LABEL_35;
  }

  bzero(&c, 0x68uLL);
  CC_SHA256_Init(&c);
  BytePtr = CFDataGetBytePtr(CompiledStreamAndRemap);
  Length = CFDataGetLength(CompiledStreamAndRemap);
  CC_SHA256_Update(&c, BytePtr, Length);
  CC_SHA256_Final(md, &c);
  CFRelease(cf);
  cf = 0;
  v12 = a1 + 4;
  v11 = a1[4];
  if (!v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
    while (1)
    {
      v13 = v11;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, (v11 + 28)))
      {
        break;
      }

      v11 = *v13;
      v12 = v13;
      if (!*v13)
      {
        goto LABEL_8;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v13 + 28), a2))
    {
      break;
    }

    v12 = (v13 + 1);
    v11 = v13[1];
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v28 = *v12;
  if (!*v12)
  {
LABEL_8:
    operator new();
  }

  v14 = v34;
  *(v28 + 36) = *md;
  *(v28 + 52) = v14;
  v15 = std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::find<realityio::SessionMeshAssetCache::CryptographicHash>(a1, md);
  v16 = a1 + 1;
  if (a1 + 1 != v15)
  {
    v17 = v15;
    if (a4)
    {
      RERelease();
      a3 = v17[8];
      RERetain();
    }

    else
    {
      a3 = v15[8];
    }

    goto LABEL_35;
  }

  *c.count = a3;
  if (a3)
  {
    RERetain();
  }

  v18 = *v16;
  if (!*v16)
  {
LABEL_28:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v19 = v18;
      v20 = *(v18 + 32);
      v21 = md[0];
      v22 = v20;
      if (md[0] == v20)
      {
        break;
      }

LABEL_19:
      if (v21 <= v22)
      {
        goto LABEL_22;
      }

      v18 = *v19;
      if (!*v19)
      {
        goto LABEL_28;
      }
    }

    v23 = 0;
    while (v23 != 31)
    {
      v21 = md[v23 + 1];
      v22 = *(v19 + v23++ + 33);
      if (v21 != v22)
      {
        goto LABEL_19;
      }
    }

LABEL_22:
    v24 = md[0];
    if (md[0] == v20)
    {
      break;
    }

LABEL_26:
    if (v20 <= v24)
    {
      goto LABEL_32;
    }

    v18 = v19[1];
    if (!v18)
    {
      goto LABEL_28;
    }
  }

  v25 = 33;
  v26 = &md[1];
  while (v25 != 64)
  {
    v20 = *(v19 + v25);
    v27 = *v26++;
    v24 = v27;
    ++v25;
    if (v20 != v27)
    {
      goto LABEL_26;
    }
  }

LABEL_32:
  v29 = v19[8];
  if (v29 != a3)
  {
    v19[8] = a3;
    *c.count = v29;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&c);
LABEL_35:
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&cf);
  return a3;
}

void sub_2476BF76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va1);
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

void realityio::ImportSession::clearMeshAsset(realityio::ImportSession *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  std::mutex::lock((this + 160));
  v4 = *(this + 19);
  if (v4)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::__erase_unique<pxrInternal__aapl__pxrReserved__::SdfPath>((v4 + 24), a2);
  }

  std::mutex::unlock((this + 160));
}

void realityio::ImportSession::purgeMeshAssetCache(realityio::ImportSession *this)
{
  std::mutex::lock((this + 160));
  v2 = *(this + 19);
  if (v2)
  {
    realityio::SessionMeshAssetCache::purge(v2);
  }

  std::mutex::unlock((this + 160));
}

void realityio::SessionMeshAssetCache::purge(realityio::SessionMeshAssetCache *this)
{
  v39 = *MEMORY[0x277D85DE8];
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v2 = *(this + 3);
  v3 = this + 32;
  if (v2 != (this + 32))
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v38, v2 + 7);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v38[4], v2 + 8);
      *&v38[8] = *(v2 + 36);
      *&v38[24] = *(v2 + 52);
      std::__tree<realityio::SessionMeshAssetCache::CryptographicHash>::__emplace_unique_key_args<realityio::SessionMeshAssetCache::CryptographicHash,realityio::SessionMeshAssetCache::CryptographicHash const&>(&v36, &v38[8], &v38[8]);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v38);
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  v7 = (this + 8);
  v8 = *this;
  if (*this != (this + 8))
  {
    while (1)
    {
      v9 = *(v8 + 3);
      *v38 = *(v8 + 2);
      *&v38[16] = v9;
      *&v38[32] = v8[8];
      if (*&v38[32])
      {
        RERetain();
      }

      v10 = v37[0];
      if (!v37[0])
      {
        goto LABEL_28;
      }

      v11 = v38[0];
      v12 = v37;
      do
      {
        v13 = *(v10 + 25);
        v14 = v38[0];
        if (v13 == v38[0])
        {
          v15 = 26;
          v16 = &v38[1];
          while (v15 != 57)
          {
            v13 = *(v10 + v15);
            v17 = *v16++;
            v14 = v17;
            ++v15;
            if (v13 != v17)
            {
              goto LABEL_17;
            }
          }

          v12 = v10;
        }

        else
        {
LABEL_17:
          v18 = v13 > v14;
          v19 = v13 > v14;
          if (!v18)
          {
            v12 = v10;
          }

          v10 += v19;
        }

        v10 = *v10;
      }

      while (v10);
      if (v12 == v37)
      {
        goto LABEL_28;
      }

      v20 = *(v12 + 25);
      if (v38[0] == v20)
      {
        v21 = 0;
        v22 = v12 + 26;
        while (v21 != 31)
        {
          v11 = v38[v21 + 1];
          v20 = v22[v21++];
          if (v11 != v20)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_29;
      }

LABEL_27:
      if (v11 > v20)
      {
LABEL_28:
        std::__tree<realityio::SessionMeshAssetCache::CryptographicHash>::__emplace_unique_key_args<realityio::SessionMeshAssetCache::CryptographicHash,realityio::SessionMeshAssetCache::CryptographicHash const&>(&v34, v38, v38);
      }

LABEL_29:
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v38[32]);
      v23 = v8[1];
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
          v24 = v8[2];
          v6 = *v24 == v8;
          v8 = v24;
        }

        while (!v6);
      }

      v8 = v24;
      if (v24 == v7)
      {
        v25 = v34;
        if (v34 != v35)
        {
          do
          {
            v26 = std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::find<realityio::SessionMeshAssetCache::CryptographicHash>(this, (v25 + 25));
            if (v7 != v26)
            {
              v27 = v26;
              v28 = v26[1];
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
                v30 = v26;
                do
                {
                  v29 = v30[2];
                  v6 = *v29 == v30;
                  v30 = v29;
                }

                while (!v6);
              }

              if (*this == v26)
              {
                *this = v29;
              }

              v31 = *(this + 1);
              --*(this + 2);
              std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v31, v27);
              realityio::WrappedRERef<REAsset *>::~WrappedRERef(v27 + 8);
              operator delete(v27);
            }

            v32 = *(v25 + 8);
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
                v33 = *(v25 + 16);
                v6 = *v33 == v25;
                v25 = v33;
              }

              while (!v6);
            }

            v25 = v33;
          }

          while (v33 != v35);
        }

        break;
      }
    }
  }

  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v35[0]);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v37[0]);
}

void sub_2476BFB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(a10);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(a13);
  _Unwind_Resume(a1);
}

float realityio::ImportSession::getWorldScaleAtPrim(realityio::ImportSession *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  *&v10[0] = *(*(*(this + 2) + 8) + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v10);
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v8, v10);
  pxrInternal__aapl__pxrReserved__::UsdGeomGetStageMetersPerUnit();
  v3 = v2;
  v4 = v9;
  if (v9 && atomic_fetch_add_explicit((v9 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v10);
  pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::UsdGeomXformCache(v11);
  memset(v10, 0, sizeof(v10));
  pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::GetLocalToWorldTransform();
  MEMORY[0x24C1A4BE0](v10, &v8);
  LODWORD(v9) = 0;
  v8 = 0;
  REDecomposeMatrix();
  v5 = v3;
  v6 = *(&v8 + 1) * v5;
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::TfHash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>>>::~__hash_table(v11);
  return v6;
}

void realityio::ImportSessionImpl::ImportSessionImpl(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v49 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28595CA90;
  v9 = *a5;
  *(a1 + 8) = *a5;
  if (v9)
  {
    CFRetain(v9);
  }

  *(a1 + 16) = 0;
  v10 = (a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 168) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 96) = 0;
  *(a1 + 176) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 184) = 850045863;
  *(a1 + 256) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 264) = a4;
  *(a1 + 272) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 280), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 304), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 328), "");
  std::string::basic_string[abi:ne200100]<0>((a1 + 352), "");
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = a1 + 384;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(__p, v11);
  v12 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(__p);
  Identifier = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v12);
  std::string::operator=((a1 + 280), Identifier);
  size = __p[0].__r_.__value_.__l.__size_;
  if (__p[0].__r_.__value_.__l.__size_ && atomic_fetch_add_explicit((__p[0].__r_.__value_.__l.__size_ + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*size + 8))(size);
  }

  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(__p);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(__p);
  realityio::ImportSessionInit(v15);
  v16 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [v16 resourcePath];

  if (!v17)
  {
LABEL_59:
    if (*v10 != a3)
    {
      if (*v10)
      {
        RERelease();
      }

      *v10 = a3;
      if (a3)
      {
        RERetain();
      }
    }

    operator new();
  }

  v18 = v17;
  std::string::basic_string[abi:ne200100]<0>(__p, [v17 UTF8String]);
  LOBYTE(v19) = *(&__p[0].__r_.__value_.__s + 23);
  if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v20 = __p[0].__r_.__value_.__l.__size_;
    if (!__p[0].__r_.__value_.__l.__size_)
    {
      v25 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    if (!*(&__p[0].__r_.__value_.__s + 23))
    {
LABEL_28:
      v45 = __p[0];
      goto LABEL_32;
    }

    v20 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  }

  v21 = __p[0].__r_.__value_.__r.__words[0];
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = __p;
  }

  if (v21->__r_.__value_.__s.__data_[v20 - 1] != 47)
  {
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = __p[0].__r_.__value_.__l.__size_;
    }

    v23 = &v46;
    std::string::basic_string[abi:ne200100](&v46, v22 + 1);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = v46.__r_.__value_.__r.__words[0];
    }

    if (v22)
    {
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0].__r_.__value_.__r.__words[0];
      }

      memmove(v23, v24, v22);
    }

    *(&v23->__r_.__value_.__l.__data_ + v22) = 47;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    __p[0] = v46;
    v19 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  if ((v19 & 0x80) == 0)
  {
    goto LABEL_28;
  }

  v25 = __p[0].__r_.__value_.__l.__size_;
LABEL_31:
  std::string::__init_copy_ctor_external(&v45, __p[0].__r_.__value_.__l.__data_, v25);
LABEL_32:
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v43, v26);
  v27 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v43);
  v28 = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v27);
  if (*(v28 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, *v28, *(v28 + 8));
  }

  else
  {
    v29 = *v28;
    v44.__r_.__value_.__r.__words[2] = *(v28 + 16);
    *&v44.__r_.__value_.__l.__data_ = v29;
  }

  pxrInternal__aapl__pxrReserved__::TfStringGetCommonPrefix();
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v30 = v43.__r_.__value_.__l.__size_;
  if (v43.__r_.__value_.__l.__size_ && atomic_fetch_add_explicit((v43.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v30 + 8))(v30);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v31 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v46.__r_.__value_.__l.__size_;
  }

  v33 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v33 = __p[0].__r_.__value_.__l.__size_;
  }

  if (v32 == v33 && ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v34 = &v46) : (v34 = v46.__r_.__value_.__r.__words[0]), (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v35 = __p) : (v35 = __p[0].__r_.__value_.__r.__words[0]), !memcmp(v34, v35, v32)))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v41, v36);
    v37 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v41);
    v38 = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v37);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v46.__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&v43, v38, v39, 0xFFFFFFFFFFFFFFFFLL, &v48);
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    *(a1 + 136) = v43;
    *(&v43.__r_.__value_.__s + 23) = 0;
    v43.__r_.__value_.__s.__data_[0] = 0;
    v40 = v42;
    if (v42 && atomic_fetch_add_explicit((v42 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v40 + 8))(v40);
    }

    if ((*(&v46.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_57;
    }
  }

  else if ((v31 & 0x80) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v46.__r_.__value_.__l.__data_);
LABEL_57:
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  goto LABEL_59;
}

void sub_2476C0428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, uint64_t a11, const void **a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(*(v51 + 384));
  if (*(v51 + 375) < 0)
  {
    operator delete(*(v51 + 352));
  }

  if (*(v51 + 351) < 0)
  {
    operator delete(*(v51 + 328));
  }

  if (*(v51 + 327) < 0)
  {
    operator delete(*(v51 + 304));
  }

  if (*(v51 + 303) < 0)
  {
    operator delete(*(v52 + 264));
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v54);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v52 + 232));
  std::mutex::~mutex(a10);
  std::__tree<std::string>::destroy(a11, *(v51 + 168));
  if (*(v51 + 159) < 0)
  {
    operator delete(*(v52 + 120));
  }

  std::__function::__value_func<void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::~__value_func[abi:ne200100](v52 + 88);
  std::__function::__value_func<void ()(REScene *,char const*,REEntity *)>::~__value_func[abi:ne200100](v52 + 56);
  std::unique_ptr<realityio::BuilderDependencyDAG>::reset[abi:ne200100](v53, 0);
  v57 = *(v51 + 48);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef(v52);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(a12);
  _Unwind_Resume(a1);
}

uint64_t *realityio::ImportSessionImpl::setMissingMaterial(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    v3 = (a1 + 248);

    return realityio::WrappedRERef<REAsset *>::operator=(v3, a2);
  }

  else
  {
    ServiceLocator = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](ServiceLocator);
    AssetHandle = REAssetManagerCreateAssetHandle();
    v8 = AssetHandle;
    if (AssetHandle)
    {
      RERetain();
    }

    v7 = *(a1 + 248);
    if (v7 != AssetHandle)
    {
      *(a1 + 248) = AssetHandle;
      v8 = v7;
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v8);
    return RERelease();
  }
}

void realityio::ImportSessionImpl::~ImportSessionImpl(realityio::ImportSessionImpl *this)
{
  *this = &unk_28595CA90;
  v2 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    v7 = (v5 + 136);
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v7);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(v5 + 112, *(v5 + 120));
    v7 = (v5 + 88);
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v7);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::BuilderRegistrationInfo>>>>::destroy(v5 + 64, *(v5 + 72));
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<realityio::OutputDescriptor const>>>>::~__hash_table((v5 + 24));
    v7 = v5;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v7);
    MEMORY[0x24C1A91B0](v5, 0x10A0C409217B224);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(*(this + 48));
  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 32);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 31);
  std::mutex::~mutex((this + 184));
  std::__tree<std::string>::destroy(this + 160, *(this + 21));
  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  std::__function::__value_func<void ()(REEntity *,REScene **,REAsset **,unsigned long,unsigned long)>::~__value_func[abi:ne200100](this + 104);
  std::__function::__value_func<void ()(REScene *,char const*,REEntity *)>::~__value_func[abi:ne200100](this + 72);
  std::unique_ptr<realityio::BuilderDependencyDAG>::reset[abi:ne200100](this + 8, 0);
  v6 = *(this + 6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef(this + 2);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(this + 1);
}

void realityio::ImportSessionImpl::queueDedupingAssetForDeferredLoad(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40))
  {
    v2 = *(*(*(*(a1 + 264) + 16) + 40) + 488);
    v3 = a2[1];
    *&v4 = *a2;
    *(&v4 + 1) = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    realityio::AssetLoadTracker::add(v2, &v4);
    if (*(&v4 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
    }
  }
}

void sub_2476C0A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::ImportSession::registerAssetDescriptorHandler(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(v3);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(v3);
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  REAssetProviderBuilderCreate();
  REAssetProviderBuilderSetUserData();
  REAssetProviderBuilderSetREAssetRefLoadCallback();
  REAssetManagerRegisterAssetProviderBuilder();
  RERelease();
  return 1;
}

void sub_2476C0B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN9realityio13ImportSession30registerAssetDescriptorHandlerEP8REEngine_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = *MEMORY[0x277D85DE8];
  v74 = *(a1 + 32);
  REAssetProviderCompiledDataLoadContextGetDescriptor();
  v75 = REAssetDescriptorCopyData();
  std::string::basic_string[abi:ne200100]<0>(v82, [v75 bytes]);
  v72 = a4;
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&__p);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v5 = MEMORY[0x277CCACA8];
  v6 = v83;
  v7 = v82[0];
  v8 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v6 >= 0)
  {
    v9 = v82;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v5 stringWithCString:v9 encoding:{v8, v72}];
  v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 scheme];
    if (v13)
    {
      v14 = [v12 host];
      if (v14)
      {
        v15 = [v12 path];
        v16 = v15 == 0;

        if (!v16)
        {
          v17 = [v12 scheme];
          v18 = v17;
          std::string::basic_string[abi:ne200100]<0>(&v91, [v17 UTF8String]);

          v19 = [v12 host];
          v20 = v19;
          std::string::basic_string[abi:ne200100]<0>(v85, [v19 UTF8String]);

          v21 = [v12 path];
          v22 = v21;
          std::string::basic_string[abi:ne200100]<0>(&v84, [v21 UTF8String]);

          MEMORY[0x24C1A5D70](&buf, &v84);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v78, &buf);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v79, buf.__r_.__value_.__r.__words + 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&buf);
          v23 = [MEMORY[0x277CCACE0] componentsWithURL:v12 resolvingAgainstBaseURL:0];
          v24 = objc_opt_new();
          v99 = 0u;
          memset(v98, 0, sizeof(v98));
          v25 = [v23 queryItems];
          v26 = [v25 countByEnumeratingWithState:v98 objects:&buf count:16];
          if (v26)
          {
            v27 = *v98[0].__r_.__value_.__r.__words[2];
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v98[0].__r_.__value_.__r.__words[2] != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(v98[0].__r_.__value_.__l.__size_ + 8 * i);
                v30 = [v29 value];
                v31 = v30 == 0;

                if (!v31)
                {
                  v32 = [v29 value];
                  v33 = [v29 name];
                  [v24 setObject:v32 forKey:v33];
                }
              }

              v26 = [v25 countByEnumeratingWithState:v98 objects:&buf count:16];
            }

            while (v26);
          }

          v34 = [v24 objectForKeyedSubscript:@"bundlepath"];
          v35 = v34;
          std::string::basic_string[abi:ne200100]<0>(v98, [v34 UTF8String]);

          MEMORY[0x24C1A4E40](&buf, v98);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = buf;
          *(&buf.__r_.__value_.__s + 23) = 0;
          buf.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v81.__r_.__value_.__l.__data_);
            v81 = v96;
            *(&v96.__r_.__value_.__s + 23) = 0;
            v96.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v81 = v96;
          }

          if (SHIBYTE(v98[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98[0].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v84.__r_.__value_.__l.__data_);
          }

          if (v86 < 0)
          {
            operator delete(v85[0]);
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          v40 = [MEMORY[0x277CCA8D8] mainBundle];
          v41 = [v40 resourcePath];

          v42 = v41;
          std::string::basic_string[abi:ne200100]<0>(v85, [v41 UTF8String]);
          memset(&v84, 0, sizeof(v84));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            if (!__p.__r_.__value_.__l.__size_)
            {
              goto LABEL_124;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&__p.__r_.__value_.__s + 23))
            {
              goto LABEL_124;
            }

            p_p = &__p;
          }

          if (p_p->__r_.__value_.__s.__data_[0] == 47)
          {
            std::string::operator=(&v84, &__p);
          }

          else
          {
            if ((v86 & 0x80u) == 0)
            {
              v45 = v86;
            }

            else
            {
              v45 = v85[1];
            }

            std::string::basic_string[abi:ne200100](&buf, v45 + 1);
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_buf = &buf;
            }

            else
            {
              p_buf = buf.__r_.__value_.__r.__words[0];
            }

            if (v45)
            {
              if ((v86 & 0x80u) == 0)
              {
                v47 = v85;
              }

              else
              {
                v47 = v85[0];
              }

              memmove(p_buf, v47, v45);
            }

            *(&p_buf->__r_.__value_.__l.__data_ + v45) = 47;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v48 = &__p;
            }

            else
            {
              v48 = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            v50 = std::string::append(&buf, v48, size);
            v51 = v50->__r_.__value_.__r.__words[0];
            v98[0].__r_.__value_.__r.__words[0] = v50->__r_.__value_.__l.__size_;
            *(v98[0].__r_.__value_.__r.__words + 7) = *(&v50->__r_.__value_.__r.__words[1] + 7);
            v52 = HIBYTE(v50->__r_.__value_.__r.__words[2]);
            v50->__r_.__value_.__l.__size_ = 0;
            v50->__r_.__value_.__r.__words[2] = 0;
            v50->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v84.__r_.__value_.__l.__data_);
            }

            v84.__r_.__value_.__r.__words[0] = v51;
            v84.__r_.__value_.__l.__size_ = v98[0].__r_.__value_.__r.__words[0];
            *(&v84.__r_.__value_.__r.__words[1] + 7) = *(v98[0].__r_.__value_.__r.__words + 7);
            *(&v84.__r_.__value_.__s + 23) = v52;
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          MEMORY[0x24C1A4E50](&buf, &__p, &v84);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = buf;
          *(&buf.__r_.__value_.__s + 23) = 0;
          buf.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v81.__r_.__value_.__l.__data_);
            v81 = v96;
            *(&v96.__r_.__value_.__s + 23) = 0;
            v96.__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v81 = v96;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v98, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v98[0] = __p;
          }

          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v98[1], v81.__r_.__value_.__l.__data_, v81.__r_.__value_.__l.__size_);
          }

          else
          {
            v98[1] = v81;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v76, &v78);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v77, &v79);
          v92 = v74;
          realityio::ImportSession::registerAssetDescriptorHandler(v74);
          v53 = std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&buf, v98, &v76);
          if (v54 != &qword_27EE526B8)
          {
            v24 = *(v54 + 11);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v97);
          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v54 == &qword_27EE526B8)
          {
            memset(&v91, 0, sizeof(v91));
            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v93, &v76);
            pxrInternal__aapl__pxrReserved__::UsdStagePopulationMask::GetUnion(&buf, &v91, &v93);
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__vdeallocate(&v91.__r_.__value_.__l.__data_);
            v91 = buf;
            v94 = &buf;
            memset(&buf, 0, sizeof(buf));
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v94);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v93);
            v56 = pxrInternal__aapl__pxrReserved__::TfPathExists();
            if (v56)
            {
              pxrInternal__aapl__pxrReserved__::UsdStage::OpenMasked();
              v57 = RIOPxrUsdStageCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &>(&v93);
              v90 = v57;
              if (v57)
              {
                CFRetain(v57);
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 0;
              LODWORD(v94) = 0;
              v58 = RIOImportSessionCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &,REEngine *&,realityio::WrappedCFRef<RIOPxrUsdStage *> &,realityio::ImportSessionImpl::PipelineVersion,realityio::ImportSessionImpl::Threading>(&v93, &v92, &v90, &buf, &v94);
              v89 = v58;
              v59 = v58[4];
              *(*(v59 + 40) + 224) = 1;
              std::string::operator=((v59 + 136), &v98[1]);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v87, &v76);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v88, &v77);
              v60 = v58[4];
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v94, &v87);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v94 + 1, &v88);
              v61 = *(v60 + 40);
              v62 = *(v60 + 48);
              if (v62)
              {
                atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&buf, &v94);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(buf.__r_.__value_.__r.__words + 1, &v94 + 1);
              realityio::LiveSceneManager::updateAsset(v61, &buf, 0);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&buf);
              if (v62)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v62);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v94);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v87);
              MEMORY[0x24C1A4E40](&buf, v58[4] + 136);
              if (SHIBYTE(v98[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v98[0].__r_.__value_.__l.__data_);
              }

              v98[0] = buf;
              *(&buf.__r_.__value_.__s + 23) = 0;
              buf.__r_.__value_.__s.__data_[0] = 0;
              if (SHIBYTE(v98[1].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v98[1].__r_.__value_.__l.__data_);
                v98[1] = v96;
                *(&v96.__r_.__value_.__s + 23) = 0;
                v96.__r_.__value_.__s.__data_[0] = 0;
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v98[1] = v96;
              }

              v64 = std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&buf, v98, &v76);
              if (v65 == &qword_27EE526B8)
              {
                v24 = 0;
              }

              else
              {
                v24 = *(v65 + 11);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v97);
              if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v96.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              realityio::WrappedCFRef<RIOImportSession *>::~WrappedCFRef(&v89);
              realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&v90);
              pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v93);
            }

            else
            {
              v63 = *realityio::logObjects(v56);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                if ((v98[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  data = &v98[1];
                }

                else
                {
                  data = v98[1].__r_.__value_.__l.__data_;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                *(buf.__r_.__value_.__r.__words + 4) = data;
                _os_log_error_impl(&dword_247485000, v63, OS_LOG_TYPE_ERROR, "AssetFile (%s) does not exist", &buf, 0xCu);
              }

              v24 = 0;
            }

            buf.__r_.__value_.__r.__words[0] = &v91;
            std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&buf);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          v67 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v76);
          if (SHIBYTE(v98[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98[1].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v98[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98[0].__r_.__value_.__l.__data_);
          }

          if (v24)
          {
            ServiceLocator = REEngineGetServiceLocator();
            MEMORY[0x24C1A4230](ServiceLocator);
            REAssetManagerReplaceAssetRefDataWith();
            v38 = 1;
LABEL_125:
            if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v84.__r_.__value_.__l.__data_);
            }

            if (v86 < 0)
            {
              operator delete(v85[0]);
            }

            goto LABEL_24;
          }

          v69 = *realityio::logObjects(v67);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v70 = v82;
            if (v83 < 0)
            {
              v70 = v82[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v70;
            _os_log_error_impl(&dword_247485000, v69, OS_LOG_TYPE_ERROR, "Invalid Asset from (%s) in USD AssetDescriptor.", &buf, 0xCu);
          }

          if (v73)
          {
            v38 = 0;
            *v73 = CFErrorCreate(0, @"REAssetRefErrorDomain", 0, 0);
            goto LABEL_125;
          }

LABEL_124:
          v38 = 0;
          goto LABEL_125;
        }
      }

      else
      {
      }
    }
  }

  v37 = *realityio::logObjects(v36);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v44 = v82;
    if (v83 < 0)
    {
      v44 = v82[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v44;
    _os_log_error_impl(&dword_247485000, v37, OS_LOG_TYPE_ERROR, "Invalid URL (%s) in USD AssetDescriptor.", &buf, 0xCu);
  }

  v38 = 0;
LABEL_24:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v78);
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v83 < 0)
  {
    operator delete(v82[0]);
  }

  return v38;
}

void sub_2476C17D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, int a13, int a14, __int16 a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, const void *a41, const void *a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void **a47, uint64_t a48, uint64_t a49)
{
  std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(&a49);
  realityio::WrappedCFRef<RIOImportSession *>::~WrappedCFRef(&a41);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&a42);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a47);
  a47 = &a43;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a47);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a13);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath((v50 - 176));
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a15);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a16);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void realityio::ImportSession::assetDescriptorCacheEject(__int128 *a1, _DWORD *a2)
{
  std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&v5, a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_2476C1B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::assetDescriptorCache(_anonymous_namespace_ *this)
{
  {
    qword_27EE526C0 = 0;
    qword_27EE526B8 = 0;
  }
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_uint **realityio::ImportSession::gatherTextureInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = (a1 + 16);
  v10 = *(*(*(a1 + 16) + 8) + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v10);
  v8 = *v7;
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::__value_func[abi:ne200100](v11, a4);
  realityio::TextureBuilder::gatherTextureInfo(&v10, a2, a3, v8 + 328, v11);
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](v11);
  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v10);
}

void sub_2476C1D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](va);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a9);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSession::allowUnsupportedTextures(realityio::ImportSession *this)
{
  v2 = *(this + 2);
  if (*(v2 + 272) == 1)
  {
    if (*(v2 + 303) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *(v2 + 280), *(v2 + 288));
    }

    else
    {
      __str = *(v2 + 280);
    }
  }

  else
  {
    v31 = *(*(v2 + 8) + 16);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v31);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v31);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&__p, v3);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&__p);
    Identifier = pxrInternal__aapl__pxrReserved__::SdfLayer::GetIdentifier(v4);
    if (*(Identifier + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, *Identifier, *(Identifier + 8));
    }

    else
    {
      v6 = *Identifier;
      __str.__r_.__value_.__r.__words[2] = *(Identifier + 16);
      *&__str.__r_.__value_.__l.__data_ = v6;
    }

    v7 = v29;
    if (v29 && atomic_fetch_add_explicit((v29 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v7 + 8))(v7);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v31);
  }

  v8 = (this + 32);
  v9 = *(this + 55);
  if (v9 < 0)
  {
    if (!*(this + 5))
    {
      goto LABEL_29;
    }
  }

  else if (!*(this + 55))
  {
    goto LABEL_29;
  }

  if (v9 >= 0)
  {
    v10 = *(this + 55);
  }

  else
  {
    v10 = *(this + 5);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (v10 == size)
  {
    v13 = v9 >= 0 ? (this + 32) : *v8;
    v14 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
    if (!memcmp(v13, v14, v10))
    {
      v25 = *(this + 56);
      if ((v12 & 0x80) == 0)
      {
        return v25 & 1;
      }

      goto LABEL_52;
    }
  }

LABEL_29:
  std::string::operator=((this + 32), &__str);
  pxrInternal__aapl__pxrReserved__::TfGetExtension();
  v15 = v30;
  v16 = v30;
  v17 = (v30 & 0x80u) != 0;
  v18 = v29;
  if ((v30 & 0x80u) != 0)
  {
    v16 = v29;
  }

  if (v16)
  {
    v19 = 0;
    do
    {
      if (v17)
      {
        p_p = __p;
      }

      else
      {
        p_p = &__p;
      }

      v21 = __tolower(p_p[v19]);
      if ((v30 & 0x80u) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p;
      }

      v22[v19++] = v21;
      v15 = v30;
      v23 = v30;
      v17 = (v30 & 0x80u) != 0;
      v18 = v29;
      if ((v30 & 0x80u) != 0)
      {
        v23 = v29;
      }
    }

    while (v23 > v19);
  }

  if (!v17)
  {
    if (v15 == 4)
    {
      v24 = &__p;
      goto LABEL_47;
    }

LABEL_48:
    v25 = 1;
    goto LABEL_49;
  }

  if (v18 != 4)
  {
    goto LABEL_48;
  }

  v24 = __p;
LABEL_47:
  if (*v24 != 2053403509)
  {
    goto LABEL_48;
  }

  if (*(this + 55) < 0)
  {
    v8 = *v8;
  }

  v27 = MEMORY[0x24C1A4970](v8, 0);
  if (v27 < 1688194860.0 || v27 == 520844460.0)
  {
    goto LABEL_48;
  }

  v25 = 0;
LABEL_49:
  *(this + 56) = v25;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_52:
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v25 & 1;
}

void sub_2476C2014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::ImportSession::reloadAsset(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v79[3] = *MEMORY[0x277D85DE8];
  if ((*(**(a1 + 16) + 48))(*(a1 + 16)))
  {
    if (a3)
    {
      std::operator+<char>();
      v5 = std::string::append(&v72, " while update is in progress");
      v6 = *&v5->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      *a3 = realityio::createError(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }
    }

    return 0;
  }

  v8 = pxrInternal__aapl__pxrReserved__::ArchNormPath();
  pxrInternal__aapl__pxrReserved__::ArGetResolver(v8);
  pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension();
  std::string::basic_string[abi:ne200100]<0>(&__p, "m4a");
  std::string::basic_string[abi:ne200100]<0>(v74, "caf");
  std::string::basic_string[abi:ne200100]<0>(v75, "ac3");
  std::string::basic_string[abi:ne200100]<0>(v76, "flac");
  std::string::basic_string[abi:ne200100]<0>(v77, "wav");
  std::string::basic_string[abi:ne200100]<0>(v78, "aiff");
  std::string::basic_string[abi:ne200100]<0>(v79, "mp3");
  v9 = 0;
  v59[0] = 0;
  v59[1] = 0;
  v58 = v59;
  do
  {
    std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(&v58, v59, (&__p.__r_.__value_.__l.__data_ + v9), &__p + v9);
    v9 += 24;
  }

  while (v9 != 168);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v79[i + 2]) < 0)
    {
      operator delete(v79[i]);
    }
  }

  v57[0] = 0;
  v57[1] = 0;
  v56 = v57;
  v11 = std::__tree<std::string>::__count_unique<std::string>(&v58, &v60);
  if (v11)
  {
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v62;
    }

    pxrInternal__aapl__pxrReserved__::ArGetResolver(v11);
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v72, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
    }

    else
    {
      v72 = v62;
    }

    pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if (!v67)
    {
      std::operator+<char>();
      v32 = std::string::append(&v71, " could not be opened for reading.");
      v33 = *&v32->__r_.__value_.__l.__data_;
      v72.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v72.__r_.__value_.__l.__data_ = v33;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      *a3 = realityio::createError(&v72);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      v7 = 0;
      goto LABEL_136;
    }

    (*(*v67 + 24))(&v64);
    v29 = v64;
    if (!v64)
    {
      std::operator+<char>();
      *a3 = realityio::createError(&v72);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      v7 = 0;
      goto LABEL_134;
    }

    v30 = (*(*v67 + 16))(v67);
    v70 = CFDataCreateWithBytesNoCopy(0, v29, v30, *MEMORY[0x277CBED00]);
    if (v70)
    {
      v31 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1 + 248, &v62.__r_.__value_.__l.__data_);
      if (a1 + 256 != v31)
      {
        if (*(v31 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&v72, *(v31 + 56), *(v31 + 64));
        }

        else
        {
          v72 = *(v31 + 56);
        }

        realityio::ImportSession::extraAssets(&v71, a1);
        v50 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v71, &v72.__r_.__value_.__l.__data_);
        v7 = &v71.__r_.__value_.__r.__words[1] != v50;
        if (&v71.__r_.__value_.__r.__words[1] == v50)
        {
          std::operator+<char>();
          v51 = std::string::append(&v66, " could not be found for replacing.");
          v52 = *&v51->__r_.__value_.__l.__data_;
          v69.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
          *&v69.__r_.__value_.__l.__data_ = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          *a3 = realityio::createError(&v69);
          if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          REAudioFileAssetMakeMutableAndReplaceWithData();
        }

        std::__tree<std::string>::destroy(&v71, v71.__r_.__value_.__l.__size_);
        if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v72.__r_.__value_.__l.__data_);
        }

        goto LABEL_133;
      }

      std::operator+<char>();
      v48 = std::string::append(&v71, " is not in use as an asset.");
      v49 = *&v48->__r_.__value_.__l.__data_;
      v72.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v72.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      *a3 = realityio::createError(&v72);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        v36 = v71.__r_.__value_.__r.__words[0];
        goto LABEL_122;
      }
    }

    else
    {
      std::operator+<char>();
      *a3 = realityio::createError(&v72);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        v36 = v72.__r_.__value_.__r.__words[0];
LABEL_122:
        operator delete(v36);
      }
    }

    v7 = 0;
LABEL_133:
    realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v70);
LABEL_134:
    if (v65)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v65);
    }

LABEL_136:
    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_159;
  }

  *&v71.__r_.__value_.__r.__words[1] = 0uLL;
  v71.__r_.__value_.__r.__words[0] = &v71.__r_.__value_.__l.__size_;
  pxrInternal__aapl__pxrReserved__::ArchNormPath();
  v12 = *(a1 + 232);
  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = a1 + 232;
  do
  {
    v14 = std::less<std::string>::operator()[abi:ne200100](a1 + 224, (v12 + 32), &v72.__r_.__value_.__l.__data_);
    if (v14)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (!v14)
    {
      v13 = v12;
    }

    v12 = *(v12 + v15);
  }

  while (v12);
  if (v13 == a1 + 232 || std::less<std::string>::operator()[abi:ne200100](a1 + 224, &v72.__r_.__value_.__l.__data_, (v13 + 32)))
  {
LABEL_27:
    v16 = 0;
  }

  else
  {
    if ((v13 + 56) != &v71)
    {
      v37 = *(v13 + 56);
      v38 = (v13 + 64);
      if (v71.__r_.__value_.__r.__words[2])
      {
        v39 = v71.__r_.__value_.__r.__words[0];
        v71.__r_.__value_.__r.__words[0] = &v71.__r_.__value_.__l.__size_;
        *(v71.__r_.__value_.__l.__size_ + 16) = 0;
        *&v71.__r_.__value_.__r.__words[1] = 0uLL;
        if (*(v39 + 8))
        {
          v40 = *(v39 + 8);
        }

        else
        {
          v40 = v39;
        }

        __p.__r_.__value_.__r.__words[0] = &v71;
        __p.__r_.__value_.__l.__size_ = v40;
        __p.__r_.__value_.__r.__words[2] = v40;
        if (!v40 || (__p.__r_.__value_.__l.__size_ = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(v40), v37 == v38))
        {
          v47 = v37;
        }

        else
        {
          do
          {
            std::string::operator=((v40 + 32), (v37 + 4));
            std::string::operator=((v40 + 56), (v37 + 7));
            std::string::operator=((v40 + 80), (v37 + 10));
            v41 = *(v37 + 13);
            *(v40 + 120) = *(v37 + 60);
            *(v40 + 104) = v41;
            std::string::operator=((v40 + 128), (v37 + 16));
            v42 = __p.__r_.__value_.__r.__words[2];
            size = v71.__r_.__value_.__l.__size_;
            p_size = &v71.__r_.__value_.__l.__size_;
            v45 = &v71.__r_.__value_.__l.__size_;
            if (v71.__r_.__value_.__l.__size_)
            {
              do
              {
                while (1)
                {
                  p_size = size;
                  if (!realityio::TextureImportOperationSettings::operator<((v42 + 4), size + 32))
                  {
                    break;
                  }

                  size = *p_size;
                  v45 = p_size;
                  if (!*p_size)
                  {
                    goto LABEL_105;
                  }
                }

                size = p_size[1];
              }

              while (size);
              v45 = p_size + 1;
            }

LABEL_105:
            *v42 = 0;
            v42[1] = 0;
            v42[2] = p_size;
            *v45 = v42;
            if (*v71.__r_.__value_.__l.__data_)
            {
              v71.__r_.__value_.__r.__words[0] = *v71.__r_.__value_.__l.__data_;
              v42 = *v45;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v71.__r_.__value_.__l.__size_, v42);
            ++v71.__r_.__value_.__r.__words[2];
            v40 = __p.__r_.__value_.__l.__size_;
            __p.__r_.__value_.__r.__words[2] = __p.__r_.__value_.__l.__size_;
            if (__p.__r_.__value_.__l.__size_)
            {
              __p.__r_.__value_.__l.__size_ = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachedTreeCache::__detach_next(__p.__r_.__value_.__l.__size_);
            }

            v46 = v37[1];
            if (v46)
            {
              do
              {
                v47 = v46;
                v46 = *v46;
              }

              while (v46);
            }

            else
            {
              do
              {
                v47 = v37[2];
                v28 = *v47 == v37;
                v37 = v47;
              }

              while (!v28);
            }

            if (!v40)
            {
              break;
            }

            v37 = v47;
          }

          while (v47 != v38);
        }

        std::__tree<realityio::TextureImportOperationSettings>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&__p);
        v37 = v47;
      }

      if (v37 != v38)
      {
        std::__tree<realityio::TextureImportOperationSettings>::__construct_node<realityio::TextureImportOperationSettings const&>();
      }
    }

    v16 = 1;
  }

  if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v16)
    {
      goto LABEL_30;
    }

LABEL_87:
    if (!a3)
    {
LABEL_157:
      v7 = 0;
      goto LABEL_158;
    }

    std::operator+<char>();
    v34 = std::string::append(&v72, "is not in use as an asset");
    v35 = *&v34->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    *a3 = realityio::createError(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_155:
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    goto LABEL_157;
  }

  operator delete(v72.__r_.__value_.__l.__data_);
  if ((v16 & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_30:
  ServiceLocator = REEngineGetServiceLocator();
  v18 = MEMORY[0x24C1A4260](ServiceLocator);
  v19 = v71.__r_.__value_.__r.__words[0];
  if (v71.__r_.__value_.__l.__data_ != &v71.__r_.__value_.__r.__words[1])
  {
    v20 = v18;
    v21 = *MEMORY[0x277CBED00];
    while (1)
    {
      realityio::TextureImportOperationSettings::makeTextureResourceKey(&v19[1].__words[1], &v72);
      realityio::ImportSession::getTextureAssetWithKey(a1, &v72.__r_.__value_.__l.__data_, &v70);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v69, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
      }

      else
      {
        v69 = v62;
      }

      pxrInternal__aapl__pxrReserved__::ArGetResolver(v22);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v62.__r_.__value_.__l.__data_, v62.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v62;
      }

      pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (!v67)
      {
        break;
      }

      (*(*v67 + 24))(&v64);
      v23 = v64;
      if (!v64)
      {
        if (a3)
        {
          std::operator+<char>();
          *a3 = realityio::createError(&__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (v65)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v65);
        }

        goto LABEL_150;
      }

      cf = 0;
      v24 = (*(*v67 + 16))(v67);
      v25 = CFDataCreateWithBytesNoCopy(0, v23, v24, v21);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = v25;
      realityio::TextureBuilder::createStandaloneTextureAssetData(&cf, &v19[1].__words[1], &__p);
      if (__p.__r_.__value_.__s.__data_[0])
      {
        v7 = MEMORY[0x24C1A4480](v20, v70, __p.__r_.__value_.__l.__size_, a3);
      }

      else
      {
        if (a3)
        {
          std::error_code::message(&v66, &__p.__r_.__value_.__r.__words[1]);
          *a3 = realityio::createError(&v66);
          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }
        }

        v7 = 0;
      }

      realityio::Result<realityio::WrappedRERef<RETextureAssetData *>,realityio::DetailedError>::~Result(&__p);
      realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&cf);
      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }

      if (v68)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v70);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      if (v7)
      {
        v26 = v19->__words[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = v26->__r_.__value_.__r.__words[0];
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v19->__words[2];
            v28 = v27->__r_.__value_.__r.__words[0] == v19;
            v19 = v27;
          }

          while (!v28);
        }

        v19 = v27;
        if (v27 != &v71.__r_.__value_.__r.__words[1])
        {
          continue;
        }
      }

      goto LABEL_158;
    }

    if (a3)
    {
      std::operator+<char>();
      v53 = std::string::append(&v66, "could not be opened for reading");
      v54 = *&v53->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      *a3 = realityio::createError(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }
    }

LABEL_150:
    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v70);
    goto LABEL_155;
  }

  v7 = 1;
LABEL_158:
  std::__tree<realityio::TextureImportOperationSettings>::destroy(&v71, v71.__r_.__value_.__l.__size_);
LABEL_159:
  std::__tree<std::string>::destroy(&v56, v57[0]);
  std::__tree<std::string>::destroy(&v58, v59[0]);
  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_2476C2D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, char *a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a42);
  if (a51 < 0)
  {
    operator delete(a46);
  }

  std::__tree<realityio::TextureImportOperationSettings>::destroy(&a43, a44);
  std::__tree<std::string>::destroy(&a9, a10);
  std::__tree<std::string>::destroy(&a12, a13);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void realityio::ImportSession::insertTextureImportSettingsIntoCache(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::ArchNormPath();
  v9 = __p;
  v5 = std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 224), __p, &std::piecewise_construct, &v9, &v8);
  std::__tree<realityio::TextureImportOperationSettings>::__emplace_unique_key_args<realityio::TextureImportOperationSettings,realityio::TextureImportOperationSettings const&>(v5 + 7, a3, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2476C31A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::ImportSession::registerAudioAsset(uint64_t a1, const void **a2, const std::string *a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::ArchNormPath();
  v12 = a2;
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 248), a2, &std::piecewise_construct, &v12, &v11);
  std::string::operator=((v8 + 7), a3);
  realityio::ImportSessionImpl::addOrReplaceExtraAsset(*(a1 + 16), &a3->__r_.__value_.__l.__data_, a4);
  if (v10 < 0)
  {
    operator delete(__p);
  }
}

void sub_2476C325C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::ImportSessionImpl::getAssetURLFromBundle(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, uint64_t a4, __n128 a5)
{
  v26[2] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  Type = REAssetGetType();
  realityio::CFStringCopyUTF8String(&v23, Type);
  if (v23 != 1)
  {
    return 0;
  }

  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a3);
  if (*(String + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *String, *(String + 8));
  }

  else
  {
    v10 = *String;
    v22.__r_.__value_.__r.__words[2] = *(String + 16);
    *&v22.__r_.__value_.__l.__data_ = v10;
  }

  v14 = REAssetCopyMetadataString();
  cf = v14;
  if (v14)
  {
    realityio::CFStringCopyUTF8String(v19, v14);
    if ((v19[0] & 1) == 0)
    {
      AssetURLFromBundle = 0;
      goto LABEL_19;
    }

    pxrInternal__aapl__pxrReserved__::TfMakeValidIdentifier();
    v15 = std::string::insert(&__p, 0, "/");
    v16 = v15->__r_.__value_.__r.__words[0];
    v26[0] = v15->__r_.__value_.__l.__size_;
    *(v26 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
    v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    v22.__r_.__value_.__r.__words[0] = v16;
    v22.__r_.__value_.__l.__size_ = v26[0];
    *(&v22.__r_.__value_.__r.__words[1] + 7) = *(v26 + 7);
    *(&v22.__r_.__value_.__s + 23) = v17;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (LOBYTE(v19[0]) == 1 && v20 < 0)
    {
      operator delete(v19[1]);
    }
  }

  AssetURLFromBundle = realityio::ImportSessionImpl::getAssetURLFromBundle(a1, &v22, &v24, v13, a4);
LABEL_19:
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&cf);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if ((v23 & 1) != 0 && v25 < 0)
  {
    operator delete(v24);
  }

  return AssetURLFromBundle;
}

void sub_2476C3460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&a22);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a29 == 1 && a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSessionImpl::getAssetURLFromBundle(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((*(a1 + 327) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 312))
    {
      return 0;
    }
  }

  else if (!*(a1 + 327))
  {
    return 0;
  }

  if ((*(a1 + 375) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 360))
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!*(a1 + 375))
  {
    return 0;
  }

LABEL_7:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v28);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "asset://", 8);
  realityio::urlSafeString(a2, __p);
  if (v27 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if (v27 >= 0)
  {
    v11 = HIBYTE(v27);
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "?", 1);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "bundleId=", 9);
  realityio::urlSafeString((a1 + 304), __p);
  if (v27 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (v27 >= 0)
  {
    v15 = HIBYTE(v27);
  }

  else
  {
    v15 = __p[1];
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v14, v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "&", 1);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "bundleName=", 11);
  realityio::urlSafeString((a1 + 352), __p);
  if (v27 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if (v27 >= 0)
  {
    v19 = HIBYTE(v27);
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "&", 1);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "assetType=", 10);
  realityio::urlSafeString(a3, __p);
  if (v27 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v27 >= 0)
  {
    v23 = HIBYTE(v27);
  }

  else
  {
    v23 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = *__p;
  *(a5 + 16) = v27;
  v28[0] = *MEMORY[0x277D82818];
  v24 = *(MEMORY[0x277D82818] + 72);
  *(v28 + *(v28[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v29 = v24;
  v30 = MEMORY[0x277D82878] + 16;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  v30 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v31);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A9110](&v33);
  return 1;
}

void sub_2476C3870(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x277D82818]);
  MEMORY[0x24C1A9110](va);
  _Unwind_Resume(a1);
}

BOOL realityio::ImportSessionImpl::addExtraAsset(uint64_t a1, const void **a2, uint64_t a3)
{
  std::mutex::lock((a1 + 184));
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1 + 160, a2);
  if (a1 + 168 == v6)
  {
    v9 = a2;
    std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 160), a2, &std::piecewise_construct, &v9, &v8)[7] = a3;
  }

  std::mutex::unlock((a1 + 184));
  return a1 + 168 == v6;
}

void realityio::ImportSessionImpl::removeExtraAsset(uint64_t a1, const void **a2)
{
  std::mutex::lock((a1 + 184));
  std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__erase_unique<std::string>((a1 + 160), a2);

  std::mutex::unlock((a1 + 184));
}

void realityio::ImportSessionImpl::addOrReplaceExtraAsset(uint64_t a1, const void **a2, uint64_t a3)
{
  std::mutex::lock((a1 + 184));
  v7 = a2;
  std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 160), a2, &std::piecewise_construct, &v7, &v6)[7] = a3;
  std::mutex::unlock((a1 + 184));
}

uint64_t realityio::ImportSessionImpl::setSceneUpdatePassCompletion(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v4, a2);
  realityio::LiveSceneManager::setSceneUpdatePassCompletion(v2, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
}

void sub_2476C3AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV1::ImportSessionV1(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t a4, const void **a5, int a6)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v10[0] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v10);
  realityio::ImportSessionImpl::ImportSessionImpl(a1, v10, a3, a4, a5);
}

void sub_2476C3D44(_Unwind_Exception *a1)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v1 + 50);
  realityio::ImportSessionImpl::~ImportSessionImpl(v1);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV1::~ImportSessionV1(realityio::ImportSessionV1 *this)
{
  *this = &unk_28595CB08;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 50);

  realityio::ImportSessionImpl::~ImportSessionImpl(this);
}

{
  *this = &unk_28595CB08;
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 50);
  realityio::ImportSessionImpl::~ImportSessionImpl(this);

  JUMPOUT(0x24C1A91B0);
}

realityio::LiveSceneManager *realityio::ImportSessionV1::updateLiveScene(realityio::ImportSessionV1 *this, unsigned __int8 a2)
{
  v4 = atomic_load(off_278EA82B0);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::TraceCollector::Clear(v4);
  v5 = atomic_load(off_278EA82B0);
  if (!v5)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::TraceCollector::SetEnabled(v5);
  result = *(this + 5);
  if (result)
  {
    if (*(this + 408) == 1)
    {
      *(*(this + 4) + 168) = 1;
      *(this + 408) = 0;
    }

    return realityio::LiveSceneManager::updateLiveScene(result, a2);
  }

  return result;
}

uint64_t realityio::ImportSessionV1::gatherFaultRecords(uint64_t result, uint64_t a2)
{
  if (atomic_load((*(result + 264) + 28)))
  {
    return std::function<void ()(char const*,ExecFault::Type,char const*)>::operator()(a2, "status", 5, "session cancelled");
  }

  return result;
}

std::string::size_type realityio::ImportSessionV1::getEntityAtPrimPath(realityio::BuilderDependencyDAG **a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (*a2 == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1))
  {
    v4 = *(*a1 + 2);

    return v4(a1);
  }

  else
  {
    v6 = a1[48];
    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = a1 + 48;
    do
    {
      v8 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v6 + 4, a2);
      if (v8)
      {
        v9 = 8;
      }

      else
      {
        v9 = 0;
      }

      if (!v8)
      {
        v7 = v6;
      }

      v6 = *(v6 + v9);
    }

    while (v6);
    if (v7 != a1 + 48 && (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v7 + 4) & 1) == 0)
    {
      return v7[5];
    }

LABEL_15:
    v10 = a1[8];
    v11 = realityio::kEntityBuilderIdentifier;
    MEMORY[0x24C1A5DE0](&v24, realityio::kEntityBuilderIdentifier);
    realityio::BuilderDependencyDAG::getBuilderAtPrimPathWithBuilderIdentifier(&v29, v10, a2, &v24);
    EntityRefFromBuilderPtr = getEntityRefFromBuilderPtr(v29);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if ((v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (!EntityRefFromBuilderPtr)
    {
      v16 = *(a1[1] + 2);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v16);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v16);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v24, v13, a2);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v16);
      if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v24))
      {
        while ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(&v24) & 1) == 0)
        {
          v14 = a1[8];
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v16, &v24);
          MEMORY[0x24C1A5DE0](&v21, v11);
          realityio::BuilderDependencyDAG::getBuilderAtPrimPathWithBuilderIdentifier(&v22, v14, &v16, &v21);
          v15 = getEntityRefFromBuilderPtr(v22);
          if (v23)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v23);
          }

          if ((v21 & 7) != 0)
          {
            atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
          if (v15)
          {
            EntityRefFromBuilderPtr = (*(*a1 + 2))(a1);
            goto LABEL_36;
          }

          pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v16, &v24);
          LODWORD(v24) = v16;
          if (v25)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
          }

          v25 = v17;
          v17 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v26, &v18);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v27, &v19);
          if ((v28 & 7) != 0)
          {
            atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v28 = v20;
          v20 = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
          if (v17)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
          }
        }
      }

      EntityRefFromBuilderPtr = 0;
LABEL_36:
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v26);
      if (v25)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
      }
    }

    return EntityRefFromBuilderPtr;
  }
}

void sub_2476C4274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

std::string::size_type getEntityRefFromBuilderPtr(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = realityio::EntityBuilder::kOutputName(v1);
  realityio::Outputs::getValue<realityio::WrappedRERef<REEntity *>>(v7, v3, v4);
  if (v7[0].__r_.__value_.__s.__data_[0])
  {
    size = v7[0].__r_.__value_.__l.__size_;
  }

  else
  {
    size = 0;
  }

  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return size;
}

void sub_2476C43F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::ImportSessionV1::dumpDiagnostics(void *a1, const void **a2)
{
  v8 = *(a1[1] + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v8);
  v4 = a1[2];
  v5 = (*(*a1 + 16))(a1);
  v6 = realityio::internal::dumpDiagnostics(a2, &v8, v4, v5);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v8);
  return v6;
}

void sub_2476C44A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV1::gatherStatistics(realityio::ImportSessionV1 *this, pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(off_278EA82B0);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
  }

  v4 = pxrInternal__aapl__pxrReserved__::TraceCollector::SetEnabled(v3);
  pxrInternal__aapl__pxrReserved__::TraceReporter::GetGlobalReporter(&__p, v4);
  v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TraceReporter>::operator->(&__p);
  MEMORY[0x24C1A5020](v5);
  v6 = v16;
  if (v16 && atomic_fetch_add_explicit(v16 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v6 = (*(*v6 + 8))(v6);
  }

  pxrInternal__aapl__pxrReserved__::TraceReporter::GetGlobalReporter(&__p, v6);
  v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TraceReporter>::operator->(&__p);
  Counters = pxrInternal__aapl__pxrReserved__::TraceReporter::GetCounters(v7);
  v9 = v16;
  if (v16 && atomic_fetch_add_explicit(v16 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v9 = (*(*v9 + 8))(v9);
  }

  for (i = *(Counters + 16); i; i = *i)
  {
    v11 = i[2];
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 &= 0xFFFFFFFFFFFFFFF8;
    }

    v12 = i[3];
    if ((v11 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
    }

    v16 = &unk_285946DC3;
    __p = v12;
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "importSessionVersion");
  v13 = 0x3FF0000000000000;
  v14 = &unk_285946DC3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v13);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "importSession:Version");
  v13 = 0x3FF0000000000000;
  v14 = &unk_285946DC3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v13);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (*(this + 409) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "importSession:TargetDirtying");
    v14 = &unk_285946C7B;
    LOBYTE(v13) = 1;
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v13);
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_2476C4788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL realityio::ImportSessionV1::dumpDependencies(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 64);
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v46 = v3;
  realityio::BuilderDependencyDAG::getAllBuilders(v3, &v59);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = fopen(v4, "w");
  if (!v5)
  {
    goto LABEL_104;
  }

  fwrite("digraph G {\n", 0xCuLL, 1uLL, v5);
  fwrite("node [shape=record];\n", 0x15uLL, 1uLL, v5);
  memset(v57, 0, sizeof(v57));
  v58 = 1065353216;
  *__p = 0u;
  v55 = 0u;
  v56 = 1065353216;
  v6 = v59;
  v7 = v60;
  if (v59 == v60)
  {
    goto LABEL_68;
  }

  v8 = 0;
  v45 = v60;
  do
  {
    v9 = v6[1];
    if (v9 && (v10 = std::__shared_weak_count::lock(v9)) != 0)
    {
      v47 = v10;
      v11 = *v6;
    }

    else
    {
      v47 = 0;
      v11 = 0;
    }

    snprintf(__str, 0x400uLL, "node_%i", v8);
    v12 = realityio::WeakBuilderPtrHash::operator()(v57, v6);
    v13 = v12;
    v14 = *(&v57[0] + 1);
    if (!*(&v57[0] + 1))
    {
      goto LABEL_27;
    }

    v15 = vcnt_s8(*(v57 + 8));
    v15.i16[0] = vaddlv_u8(v15);
    v16 = v15.u32[0];
    if (v15.u32[0] > 1uLL)
    {
      v17 = v12;
      if (v12 >= *(&v57[0] + 1))
      {
        v17 = v12 % *(&v57[0] + 1);
      }
    }

    else
    {
      v17 = (*(&v57[0] + 1) - 1) & v12;
    }

    v18 = *(*&v57[0] + 8 * v17);
    if (!v18 || (v19 = *v18) == 0)
    {
LABEL_27:
      operator new();
    }

    while (1)
    {
      v20 = v19[1];
      if (v20 == v13)
      {
        break;
      }

      if (v16 > 1)
      {
        if (v20 >= v14)
        {
          v20 %= v14;
        }
      }

      else
      {
        v20 &= v14 - 1;
      }

      if (v20 != v17)
      {
        goto LABEL_27;
      }

LABEL_26:
      v19 = *v19;
      if (!v19)
      {
        goto LABEL_27;
      }
    }

    if (!realityio::WeakBuilderPtrEqual::operator()(v57, v19 + 2, v6))
    {
      goto LABEL_26;
    }

    MEMORY[0x24C1A8D40](v19 + 4, __str);
    std::string::basic_string[abi:ne200100]<0>(&v62, __str);
    v21 = std::__string_hash<char>::operator()[abi:ne200100](__p, &v62);
    v22 = v21;
    v23 = __p[1];
    if (!__p[1])
    {
      goto LABEL_44;
    }

    v24 = vcnt_s8(__p[1]);
    v24.i16[0] = vaddlv_u8(v24);
    v25 = v24.u32[0];
    if (v24.u32[0] > 1uLL)
    {
      v26 = v21;
      if (v21 >= __p[1])
      {
        v26 = v21 % __p[1];
      }
    }

    else
    {
      v26 = (__p[1] - 1) & v21;
    }

    v27 = *(__p[0] + v26);
    if (!v27 || (v28 = *v27) == 0)
    {
LABEL_44:
      operator new();
    }

    while (2)
    {
      v29 = v28[1];
      if (v29 != v22)
      {
        if (v25 > 1)
        {
          if (v29 >= v23)
          {
            v29 %= v23;
          }
        }

        else
        {
          v29 &= v23 - 1;
        }

        if (v29 != v26)
        {
          goto LABEL_44;
        }

LABEL_43:
        v28 = *v28;
        if (!v28)
        {
          goto LABEL_44;
        }

        continue;
      }

      break;
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](__p, v28 + 2, &v62.__r_.__value_.__l.__data_))
    {
      goto LABEL_43;
    }

    v31 = *v6;
    v30 = v6[1];
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
    }

    v32 = v28[6];
    v28[5] = v31;
    v28[6] = v30;
    if (v32)
    {
      std::__shared_weak_count::__release_weak(v32);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    v33 = (*(*v11 + 24))(&v52, v11);
    if ((v52 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
    }

    std::string::basic_string[abi:ne200100]<0>(v50, "com.apple.");
    std::string::basic_string[abi:ne200100]<0>(&v62, "");
    pxrInternal__aapl__pxrReserved__::TfStringReplace();
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }

    if ((v52 & 7) != 0)
    {
      atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v11 + 8));
    v35 = &v53;
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v53.__r_.__value_.__r.__words[0];
    }

    fprintf(v5, "%s [label=%s:%s ];\n", __str, Text, v35);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
      if (v47)
      {
LABEL_63:
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }
    }

    else if (v47)
    {
      goto LABEL_63;
    }

    ++v8;
    v6 += 2;
  }

  while (v6 != v45);
  v6 = v59;
  v7 = v60;
LABEL_68:
  while (v6 != v7)
  {
    v52 = 0uLL;
    v36 = v6[1];
    if (v36)
    {
      *(&v52 + 1) = std::__shared_weak_count::lock(v36);
      if (*(&v52 + 1))
      {
        *&v52 = *v6;
      }
    }

    *__str = 0;
    v65 = 0;
    v66 = 0;
    v50[0] = 0;
    v50[1] = 0;
    v51 = 0;
    realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(v50, &v52);
    realityio::BuilderDependencyDAG::findDownstreamDependencies(v46, v50, __str);
    *&v53.__r_.__value_.__l.__data_ = v52;
    if (*(&v52 + 1))
    {
      atomic_fetch_add_explicit((*(&v52 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v48 = &v53;
    v37 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>>>::__emplace_unique_key_args<std::weak_ptr<realityio::Builder>,std::piecewise_construct_t const&,std::tuple<std::weak_ptr<realityio::Builder>&&>,std::tuple<>>(v57, &v53, &v48);
    if (*(v37 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v62, v37[4], v37[5]);
    }

    else
    {
      v62 = *(v37 + 4);
    }

    if (v53.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_weak(v53.__r_.__value_.__l.__size_);
    }

    v39 = *__str;
    v38 = v65;
    while (v39 != v38)
    {
      if (*v39 != v52)
      {
        v40 = *(v39 + 8);
        v48 = *v39;
        v49 = v40;
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v63 = &v48;
        v41 = std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>>>::__emplace_unique_key_args<std::weak_ptr<realityio::Builder>,std::piecewise_construct_t const&,std::tuple<std::weak_ptr<realityio::Builder>&&>,std::tuple<>>(v57, &v48, &v63);
        if (*(v41 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v53, v41[4], v41[5]);
        }

        else
        {
          v53 = *(v41 + 4);
        }

        if (v49)
        {
          std::__shared_weak_count::__release_weak(v49);
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = &v62;
        }

        else
        {
          v42 = v62.__r_.__value_.__r.__words[0];
        }

        if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v53;
        }

        else
        {
          v43 = v53.__r_.__value_.__r.__words[0];
        }

        fprintf(v5, "%s -> %s \n", v42, v43);
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }
      }

      v39 += 16;
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    v62.__r_.__value_.__r.__words[0] = v50;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v62);
    v50[0] = __str;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](v50);
    if (*(&v52 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v52 + 1));
    }

    v6 += 2;
  }

  fwrite("}\n", 2uLL, 1uLL, v5);
  fclose(v5);
  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>>>::~__hash_table(__p);
  std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>>>::~__hash_table(v57);
LABEL_104:
  *__str = &v59;
  std::vector<std::weak_ptr<realityio::Builder>>::__destroy_vector::operator()[abi:ne200100](__str);
  return v5 != 0;
}

void sub_2476C5354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, char *a56)
{
  a56 = &a46;
  std::vector<std::weak_ptr<realityio::Builder>>::__destroy_vector::operator()[abi:ne200100](&a56);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSessionImpl::getPrototypeEntityRoot(realityio::ImportSessionImpl *this)
{
  v6[4] = *MEMORY[0x277D85DE8];
  if (!*(this + 32))
  {
    v2 = REEntityCreate();
    RENetworkComponentGetComponentType();
    v6[0] = &unk_28594FEA8;
    v6[3] = v6;
    v3 = REEntityGetOrAddComponentByClass();
    std::function<void ()(REComponent *)>::operator()(v6, v3);
    RENetworkMarkComponentDirty();
    std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v6);
    v6[0] = v2;
    if (v2)
    {
      RERetain();
    }

    v4 = *(this + 32);
    if (v4 != v2)
    {
      *(this + 32) = v2;
      v6[0] = v4;
    }

    realityio::WrappedRERef<REEntity *>::~WrappedRERef(v6);
    RERelease();
  }

  return this + 256;
}

uint64_t realityio::ImportSessionImpl::generateOverridePrimPathToEntityForActiveSceneAssets(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = a1 + 48;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(a1[48]);
  a1[48] = 0;
  a1[49] = 0;
  a1[47] = v3;
  result = REComponentClassFromName();
  if (result)
  {
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    std::deque<REEntity *>::push_back(v19, &v21);
    for (i = *(&v20 + 1); *(&v20 + 1); i = *(&v20 + 1))
    {
      v6 = *(*(*(&v19[0] + 1) + ((v20 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v20 & 0x1FF));
      *&v20 = v20 + 1;
      *(&v20 + 1) = i - 1;
      if (v20 >= 0x400)
      {
        operator delete(**(&v19[0] + 1));
        *(&v19[0] + 1) += 8;
        *&v20 = v20 - 512;
      }

      ChildCount = REEntityGetChildCount();
      if (ChildCount)
      {
        for (j = 0; j != ChildCount; ++j)
        {
          __p[0] = REEntityGetChild();
          std::deque<REEntity *>::push_back(v19, __p);
        }
      }

      if (REEntityGetCustomComponent())
      {
        Object = RECustomComponentGetObject();
        std::string::basic_string[abi:ne200100]<0>(__p, *Object);
        MEMORY[0x24C1A5D70](v16, __p);
        v13 = v6;
        if (v6)
        {
          RERetain();
        }

        LODWORD(v17) = v16[0];
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
        HIDWORD(v17) = v16[1];
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
        v18 = v13;
        v13 = 0;
        v10 = *v3;
        if (!*v3)
        {
          goto LABEL_20;
        }

        v11 = v3;
        while (1)
        {
          while (1)
          {
            v12 = v10;
            if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v17, v10 + 4))
            {
              break;
            }

            v10 = *v12;
            v11 = v12;
            if (!*v12)
            {
              goto LABEL_20;
            }
          }

          if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v12 + 4, &v17))
          {
            break;
          }

          v11 = v12 + 1;
          v10 = v12[1];
          if (!v10)
          {
            goto LABEL_20;
          }
        }

        if (!*v11)
        {
LABEL_20:
          operator new();
        }

        realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v18);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
        realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v13);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v16);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    return std::deque<unsigned long>::~deque[abi:ne200100](v19);
  }

  return result;
}

void realityio::ImportSession::~ImportSession(realityio::ImportSession *this)
{
  realityio::ImportSession::~ImportSession(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_28595CA68;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 248, *(this + 32));
  std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::destroy(*(this + 29));
  std::mutex::~mutex((this + 160));
  v3 = *(this + 19);
  *(this + 19) = 0;
  if (v3)
  {
    realityio::ImportSession::SessionMeshAssetCacheDeleter::operator()(v2, v3);
  }

  std::mutex::~mutex((this + 88));
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(this + 64, *(this + 9));
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

atomic_uint **realityio::ImportSession::description@<X0>(realityio::ImportSession *this@<X0>, CFStringRef *a2@<X8>)
{
  v3 = *(this + 2);
  *a2 = 0;
  v9 = *(v3[1] + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v9);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v9);
  v5 = v4;
  v6 = v3[2];
  v7 = (*(*v3 + 72))(v3);
  *a2 = CFStringCreateWithFormat(0, 0, @"<ImportSession: %p { stage: %p, engine: %p, version: %d }>", v3, v5, v6, v7);
  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v9);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::SessionMeshAssetCache::CryptographicHash>,0>(a2 + 28);

    operator delete(a2);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::SessionMeshAssetCache::CryptographicHash>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::SessionMeshAssetCache::CryptographicHash>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::destroy(a1, a2[1]);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(a2 + 8);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<realityio::SessionMeshAssetCache::CryptographicHash,std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>,std::less<realityio::SessionMeshAssetCache::CryptographicHash>,true>,std::allocator<std::__value_type<realityio::SessionMeshAssetCache::CryptographicHash,realityio::WrappedRERef<REAsset *>>>>::find<realityio::SessionMeshAssetCache::CryptographicHash>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    v8 = *a2;
    if (v7 == v5)
    {
      v9 = 0;
      while (v9 != 31)
      {
        v7 = *(v3 + v9 + 33);
        v8 = a2[++v9];
        if (v7 != v8)
        {
          goto LABEL_7;
        }
      }

      v6 = v3;
    }

    else
    {
LABEL_7:
      v10 = v7 > v8;
      v11 = v7 > v8;
      if (!v10)
      {
        v6 = v3;
      }

      v3 += v11;
    }

    v3 = *v3;
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v12 = *(v6 + 32);
  if (v5 != v12)
  {
LABEL_17:
    if (v5 <= v12)
    {
      return v6;
    }

    return v2;
  }

  v13 = a2 + 1;
  v14 = 33;
  while (v14 != 64)
  {
    v15 = *v13++;
    v5 = v15;
    v12 = *(v6 + v14++);
    if (v15 != v12)
    {
      goto LABEL_17;
    }
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::SessionMeshAssetCache::CryptographicHash>>>::__erase_unique<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t **a1, void *a2)
{
  v3 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::SessionMeshAssetCache::CryptographicHash>,0>(v4 + 28);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<realityio::SessionMeshAssetCache::CryptographicHash>::__emplace_unique_key_args<realityio::SessionMeshAssetCache::CryptographicHash,realityio::SessionMeshAssetCache::CryptographicHash const&>(uint64_t *result, unsigned __int8 *a2, _OWORD *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_16:
    operator new();
  }

  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  while (1)
  {
    while (1)
    {
      v7 = v3;
      v8 = *(v3 + 25);
      v9 = v5;
      v10 = v8;
      if (v5 == v8)
      {
        break;
      }

LABEL_7:
      if (v9 <= v10)
      {
        goto LABEL_10;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_16;
      }
    }

    v11 = 0;
    while (v11 != 31)
    {
      v9 = v4[v11];
      v10 = *(v7 + v11++ + 26);
      if (v9 != v10)
      {
        goto LABEL_7;
      }
    }

LABEL_10:
    v12 = v5;
    if (v5 == v8)
    {
      break;
    }

LABEL_14:
    if (v8 <= v12)
    {
      return result;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  v13 = 0;
  while (v13 != 31)
  {
    v8 = *(v7 + v13 + 26);
    v12 = v4[v13++];
    if (v8 != v12)
    {
      goto LABEL_14;
    }
  }

  return result;
}

std::string *std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfAssetPath&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(std::string *this, __int128 *a2, _DWORD *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v7 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v7;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&this[2], a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this[2].__r_.__value_.__r.__words + 1, a3 + 1);
  return this;
}

void sub_2476C5E3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>::~pair(uint64_t a1)
{
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<realityio::TextureImportOperationSettings>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<realityio::TextureImportOperationSettings>>,0>(uint64_t a1)
{
  std::__tree<realityio::TextureImportOperationSettings>::destroy(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t *std::unique_ptr<realityio::BuilderDependencyDAG>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    realityio::WrappedRERef<REEngine *>::~WrappedRERef((v2 + 120));
    std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::~__hash_table(v2 + 80);
    std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::~__hash_table(v2 + 40);
    std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::~__hash_table(v2);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>,std::equal_to<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery>,realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::BuilderAtPrimPathQuery,std::weak_ptr<realityio::Builder>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::__unordered_map_hasher<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,realityio::BuilderDependencyDAG::SocketQuery::Hash,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,true>,std::__unordered_map_equal<realityio::BuilderDependencyDAG::SocketQuery,std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>,std::equal_to<realityio::BuilderDependencyDAG::SocketQuery>,realityio::BuilderDependencyDAG::SocketQuery::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderDependencyDAG::SocketQuery,std::pair<std::weak_ptr<realityio::Builder>,pxrInternal__aapl__pxrReserved__::TfToken>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void **std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,realityio::BuilderDependencyDAG::BuilderGraphNode>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REEntity *>>>>::destroy(a1[1]);
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(a1 + 5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

__n128 std::__function::__func<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>>,void ()(realityio::UsdStageDelta const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595CBB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>>,void ()(realityio::UsdStageDelta const&)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t std::__function::__func<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (realityio::UsdStageStateTracker::*)(realityio::UsdStageDelta const&),realityio::UsdStageStateTracker*&,std::placeholders::__ph<1> const&>>,void ()(realityio::UsdStageDelta const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>>>::__erase_unique<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>>>::find<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>>>::erase(a1, v3);
  return 1;
}

void *std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>>>::find<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = (a1 + 8);
  do
  {
    if (pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
    {
      ++v3;
    }

    else if (pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
    {
      v5 = v3;
    }

    else
    {
      v6 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v3 + 10, (a2 + 48));
      if (v6)
      {
        v7 = 8;
      }

      else
      {
        v7 = 0;
      }

      if ((v6 & 1) == 0)
      {
        v5 = v3;
      }

      v3 = (v3 + v7);
    }

    v3 = *v3;
  }

  while (v3);
  if (v5 == v2 || (pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<() & 1) != 0 || (pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<() & 1) == 0 && pxrInternal__aapl__pxrReserved__::SdfPath::operator<((a2 + 48), v5 + 10))
  {
    return v2;
  }

  return v5;
}

uint64_t *std::__tree<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::__map_value_compare<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>,std::less<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>>,true>,std::allocator<std::__value_type<std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath,pxrInternal__aapl__pxrReserved__::SdfPath>,REAsset *>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__remove_node_pointer(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 80);
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t std::__tree<realityio::TextureImportOperationSettings>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<realityio::TextureImportOperationSettings>::destroy(*a1, *(a1 + 16));
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

    std::__tree<realityio::TextureImportOperationSettings>::destroy(*a1, v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::set<realityio::TextureImportOperationSettings>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::set<realityio::TextureImportOperationSettings>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_2476C66D8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,REAsset *>,std::__map_value_compare<std::string,std::__value_type<std::string,REAsset *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,REAsset *>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

void std::__shared_ptr_emplace<realityio::LiveSceneManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595CC70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::weak_ptr<realityio::Builder> const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::weak_ptr<realityio::Builder> const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<realityio::Builder>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<realityio::Builder>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::weak_ptr<realityio::Builder> const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<realityio::Builder>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<realityio::Builder>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,std::__unordered_map_hasher<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrHash,realityio::WeakBuilderPtrEqual,true>,std::__unordered_map_equal<std::weak_ptr<realityio::Builder>,std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,realityio::WeakBuilderPtrEqual,realityio::WeakBuilderPtrHash,true>,std::allocator<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>>>::__emplace_unique_key_args<std::weak_ptr<realityio::Builder>,std::piecewise_construct_t const&,std::tuple<std::weak_ptr<realityio::Builder>&&>,std::tuple<>>(void *a1, unint64_t *a2, _OWORD **a3)
{
  v5 = realityio::WeakBuilderPtrHash::operator()(a1, a2);
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

  if (!realityio::WeakBuilderPtrEqual::operator()(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_2476C6C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::weak_ptr<realityio::Builder>,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

realityio::tokens::AnimationBuilderTokens_StaticTokenType *realityio::tokens::AnimationBuilderTokens_StaticTokenType::AnimationBuilderTokens_StaticTokenType(realityio::tokens::AnimationBuilderTokens_StaticTokenType *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "primvars:realitykit:stageTimeLine", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "primvars:realitykit:animationLibrary:timelines", 0);
  MEMORY[0x24C1A5DF0](this + 16, "primvars:realitykit:animationLibrary:times", 0);
  MEMORY[0x24C1A5DF0](this + 24, "autoPlay", 0);
  v3 = (this + 32);
  v4 = *this;
  v15 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v5;
    }
  }

  v6 = *(this + 1);
  v16 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v7;
    }
  }

  v8 = *(this + 2);
  v17 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v17 = v9;
    }
  }

  v10 = *(this + 3);
  v18 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v11;
    }
  }

  *v3 = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v15, &v19, 4uLL);
  for (i = 24; i != -8; i -= 8)
  {
    v13 = *(&v15 + i);
    if ((v13 & 7) != 0)
    {
      atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_2476C6ED4(_Unwind_Exception *a1)
{
  v3 = 24;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[3];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t realityio::PhysicsMaterialAssetBuilder::kOutputName(realityio::PhysicsMaterialAssetBuilder *this)
{
  {
    operator new();
  }

  return realityio::PhysicsMaterialAssetBuilder::kOutputName(void)::kOutputName;
}

void sub_2476C6FEC(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::PhysicsMaterialAssetBuilder::PhysicsMaterialAssetBuilder(realityio::PhysicsMaterialAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "PhysicsMaterialAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kPhysicsMaterialAssetBuilderIdentifier);
  realityio::generatePhysicsMaterialsDirtyStageSubscription(&v4);
  v8[0] = &unk_28595CD48;
  v8[3] = v8;
  v7[0] = &unk_28595CDC8;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, &v4, v8, v7);
}

void sub_2476C718C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v24 + 35);
  realityio::DynamicBuilder::~DynamicBuilder(v24);
  _Unwind_Resume(a1);
}

void realityio::PhysicsMaterialAssetBuilder::run(realityio::PhysicsMaterialAssetBuilder *this, realityio::Inputs *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v28, v4, v3);
  v26 = 0;
  v27 = 0;
  v25 = 0;
  MEMORY[0x24C1A5DE0](buf, "physics:restitution");
  v6 = MEMORY[0x277D86598];
  v7 = atomic_load(MEMORY[0x277D86598]);
  if (v7)
  {
    UsdPhysicsAttributeDoubleValue = realityio::getUsdPhysicsAttributeDoubleValue(&v28, buf, (v7 + 48), &v27, v5);
    if ((buf[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((UsdPhysicsAttributeDoubleValue & 1) == 0)
    {
      v9 = *(realityio::logObjects(UsdPhysicsAttributeDoubleValue) + 24);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v24, &v28);
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v24);
        *buf = 136315138;
        *&buf[4] = Text;
        _os_log_impl(&dword_247485000, v9, OS_LOG_TYPE_DEFAULT, "Unable to get restitution attribute value for %s", buf, 0xCu);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v24);
      }
    }

    MEMORY[0x24C1A5DE0](buf, "physics:staticFriction");
    v12 = atomic_load(v6);
    if (v12)
    {
      v13 = realityio::getUsdPhysicsAttributeDoubleValue(&v28, buf, (v12 + 40), &v26, v11);
      if ((buf[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v13 & 1) == 0)
      {
        v14 = *(realityio::logObjects(v13) + 24);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v24, &v28);
          v15 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v24);
          *buf = 136315138;
          *&buf[4] = v15;
          _os_log_impl(&dword_247485000, v14, OS_LOG_TYPE_DEFAULT, "Unable to get static friction attribute value for %s", buf, 0xCu);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v24);
        }
      }

      MEMORY[0x24C1A5DE0](buf, "physics:dynamicFriction");
      v17 = atomic_load(v6);
      if (v17)
      {
        v18 = realityio::getUsdPhysicsAttributeDoubleValue(&v28, buf, (v17 + 32), &v25, v16);
        if ((buf[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v18 & 1) == 0)
        {
          v19 = *(realityio::logObjects(v18) + 24);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v24, &v28);
            v20 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v24);
            *buf = 136315138;
            *&buf[4] = v20;
            _os_log_impl(&dword_247485000, v19, OS_LOG_TYPE_DEFAULT, "Unable to get dynamic friction attribute value for %s", buf, 0xCu);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v24);
          }
        }

        v21 = *(realityio::logObjects(v18) + 24);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_247485000, v21, OS_LOG_TYPE_INFO, "Creating and Saving physics material reference", buf, 2u);
        }

        *buf = 0;
        v22 = *(this + 35);
        if (v22)
        {
          *(this + 35) = 0;
          *buf = v22;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(buf);
        ServiceLocator = REEngineGetServiceLocator();
        v24 = MEMORY[0x24C1A4230](ServiceLocator);
        operator new();
      }

      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType>>::_TryToCreateData(MEMORY[0x277D86598]);
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType>>::_TryToCreateData(MEMORY[0x277D86598]);
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType>>::_TryToCreateData(MEMORY[0x277D86598]);
}

void sub_2476C76B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::PhysicsMaterialAssetBuilder::clear(realityio::PhysicsMaterialAssetBuilder *this, realityio::Inputs *a2)
{
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = realityio::PhysicsMaterialAssetBuilder::kOutputName(this);
  realityio::Outputs::getRawValue<REAsset *>(v5, v6, &v14);
  v8 = v14;
  if ((v14 & 1) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v5 = v13.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      if ((v14 & 1) == 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v13 = __p;
      v5 = __p.__r_.__value_.__r.__words[0];
      v2 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v8)
  {
    v10 = *(this + 2);
    v9 = *(this + 3);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = realityio::PhysicsMaterialAssetBuilder::kOutputName(v7);
    std::mutex::lock((v10 + 64));
    if (v10 + 48 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(v10 + 40, v11))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>((v10 + 40), v11);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v10, v11);
    std::mutex::unlock((v10 + 64));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v14 = 0;
    v12 = *(this + 35);
    if (v12)
    {
      *(this + 35) = 0;
      v14 = v12;
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v14);
  }

  else if (v2 < 0)
  {
    operator delete(v5);
  }
}

void sub_2476C7938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a15 & 1) == 0 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Unwind_Resume(exception_object);
}

void realityio::PhysicsMaterialAssetBuilder::~PhysicsMaterialAssetBuilder(void **this)
{
  realityio::PhysicsMaterialAssetBuilder::~PhysicsMaterialAssetBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_28595CCD0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 42));
  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  if (*(this + 311) < 0)
  {
    operator delete(this[36]);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 35);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 31));
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100]((this + 27));
  v2 = this[26];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[24];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = this[23];
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

uint64_t std::__function::__func<realityio::PhysicsMaterialAssetBuilder::PhysicsMaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::PhysicsMaterialAssetBuilder::PhysicsMaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2476C7DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::PhysicsMaterialAssetBuilder::PhysicsMaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::PhysicsMaterialAssetBuilder::PhysicsMaterialAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595CE48;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = REAssetManagerPhysicsMaterialAssetCreate2();
  v5 = v2;
  v3 = *(v1 + 280);
  if (v3 != v2)
  {
    *(v1 + 280) = v2;
    v5 = v3;
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v5);
}

uint64_t std::__function::__func<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsMaterialAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

realityio::tokens::ArbitraryComponentBuilderTokens_StaticTokenType *realityio::tokens::ArbitraryComponentBuilderTokens_StaticTokenType::ArbitraryComponentBuilderTokens_StaticTokenType(realityio::tokens::ArbitraryComponentBuilderTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "__realitykit_offset", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "__realitykit_type", 0);
  MEMORY[0x24C1A5DF0](this + 16, "info:id", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_2476C80EC(_Unwind_Exception *a1)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t realityio::internal::assertHandler(unsigned int a1, const char *a2, const char *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a1 > 1)
  {
    v14 = 0;
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v26 = 0;
    *v18 = 0xE00000001;
    v19 = 1;
    v20 = getpid();
    v17 = 648;
    sysctl(v18, 4u, buf, &v17, 0, 0);
    if ((v26 & 0x800) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = OS_LOG_TYPE_ERROR;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], v15))
  {
    *buf = 136315650;
    *&buf[4] = a3;
    v22 = 1024;
    v23 = a4;
    v24 = 2080;
    v25 = a2;
    _os_log_impl(&dword_247485000, MEMORY[0x277D86220], v15, "Assertion failed (%s:%i). Condition: %s", buf, 0x1Cu);
  }

  fprintf(*MEMORY[0x277D85DF8], "Assertion failed (%s:%i). Condition: %s\nCheck os_log for additional details!\n", a3, a4, a2);
  if (a5 >= 1)
  {
    *buf = &a10;
    os_log_with_args();
  }

  return v14;
}

uint64_t realityio::TextureAssetAction::ImportOperationSettings::idString(realityio::TextureAssetAction::ImportOperationSettings *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v29);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "swizzle_", 8);
  v4 = *(this + 71);
  if (v4 >= 0)
  {
    v5 = this + 48;
  }

  else
  {
    v5 = *(this + 6);
  }

  if (v4 >= 0)
  {
    v6 = *(this + 71);
  }

  else
  {
    v6 = *(this + 7);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "_", 1);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "textureSemantic_", 16);
  v10 = *(this + 47);
  if (v10 >= 0)
  {
    v11 = this + 24;
  }

  else
  {
    v11 = *(this + 3);
  }

  if (v10 >= 0)
  {
    v12 = *(this + 47);
  }

  else
  {
    v12 = *(this + 4);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "_", 1);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "colorSpace_", 11);
  v16 = *(this + 23);
  if (v16 >= 0)
  {
    v17 = this;
  }

  else
  {
    v17 = *this;
  }

  if (v16 >= 0)
  {
    v18 = *(this + 23);
  }

  else
  {
    v18 = *(this + 1);
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "_", 1);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "downSample_", 11);
  v22 = MEMORY[0x24C1A8F10](v21, *(this + 18));
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "_", 1);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "restictTo8_", 11);
  if (*(this + 76))
  {
    v25 = "true";
  }

  else
  {
    v25 = "false";
  }

  if (*(this + 76))
  {
    v26 = 4;
  }

  else
  {
    v26 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
  std::stringbuf::str();
  v29[0] = *MEMORY[0x277D82818];
  v27 = *(MEMORY[0x277D82818] + 72);
  *(v29 + *(v29[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v30 = v27;
  v31 = MEMORY[0x277D82878] + 16;
  if (v33 < 0)
  {
    operator delete(v32[7].__locale_);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C1A9110](&v34);
}

void sub_2476C85B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va, MEMORY[0x277D82818]);
  MEMORY[0x24C1A9110](v3 + 128);
  _Unwind_Resume(a1);
}

void realityio::TextureAssetAction::operator()(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t *a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v83 = *MEMORY[0x277D85DE8];
  ServiceLocator = REEngineGetServiceLocator();
  if (MEMORY[0x24C1A4260]())
  {
    v7 = RERenderManagerGetRenderDevice();
    [v7 supportsTextureSwizzle];
  }

  v79 = 0;
  memset(&v75, 0, sizeof(v75));
  std::string::basic_string[abi:ne200100]<0>(&v70, "");
  v62 = &v71;
  std::string::basic_string[abi:ne200100]<0>(&v71, "");
  p_p = &__p;
  IsImpl = std::string::basic_string[abi:ne200100]<0>(&__p, "rgba");
  v73 = 0;
  v74 = 0;
  v9 = *a3;
  if (a3[1] != *a3)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = (*a4 + v11);
      *(&v81 + 1) = 0;
      if (!v13[1])
      {
        goto LABEL_36;
      }

      IsImpl = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(&v77, &v81);
      v14 = v13[1];
      v15 = ~*(v13 + 2);
      *(&v81 + 1) = v14;
      if ((v15 & 3) != 0)
      {
        IsImpl = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 24))(v13, &v81);
      }

      else
      {
        *&v81 = *v13;
      }

      if (v77.__r_.__value_.__l.__size_)
      {
        IsImpl = (*(v77.__r_.__value_.__l.__size_ + 32))(&v77);
      }

      v16 = *(&v81 + 1);
      if (!*(&v81 + 1))
      {
LABEL_36:
        v23 = *(realityio::logObjects(IsImpl) + 24);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
          v25 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v9 + v10));
          LODWORD(v77.__r_.__value_.__l.__data_) = 136315394;
          *(v77.__r_.__value_.__r.__words + 4) = Text;
          WORD2(v77.__r_.__value_.__r.__words[1]) = 2080;
          *(&v77.__r_.__value_.__r.__words[1] + 6) = v25;
          _os_log_impl(&dword_247485000, v23, OS_LOG_TYPE_DEFAULT, "%s TextureAssetAction::Unused input %s\n", &v77, 0x16u);
        }

        goto LABEL_39;
      }

      v17 = *(&v81 + 1) & 0xFFFFFFFFFFFFFFF8;
      if (!strcmp((*(*(*(&v81 + 1) & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfAssetPathE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        break;
      }

      if ((v16 & 4) != 0)
      {
        v16 = *(&v81 + 1);
        if (IsImpl)
        {
          break;
        }

        if (!*(&v81 + 1))
        {
          goto LABEL_36;
        }

        v17 = *(&v81 + 1) & 0xFFFFFFFFFFFFFFF8;
      }

      IsImpl = strcmp((*(*v17 + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio18TextureAssetAction23ImportOperationSettingsE" & 0x7FFFFFFFFFFFFFFFLL));
      if (IsImpl)
      {
        if ((v16 & 4) == 0)
        {
          goto LABEL_36;
        }

        if (!IsImpl)
        {
          goto LABEL_36;
        }

        v16 = *(&v81 + 1);
      }

      if ((v16 & 4) != 0)
      {
        v21 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(&v81);
      }

      else
      {
        v21 = v81;
      }

      std::string::operator=(&v70, v21);
      std::string::operator=(&v71, (v21 + 24));
      std::string::operator=(&__p, (v21 + 48));
      v22 = *(v21 + 72);
      v74 = *(v21 + 76);
      v73 = v22;
LABEL_39:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v81);
      ++v12;
      v9 = *a3;
      v11 += 16;
      v10 += 8;
      if (v12 >= (a3[1] - *a3) >> 3)
      {
        goto LABEL_43;
      }
    }

    if ((v16 & 4) != 0)
    {
      v18 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(&v81);
    }

    else
    {
      v18 = v81;
    }

    if (*(v18 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v77, *v18, *(v18 + 8));
    }

    else
    {
      v19 = *v18;
      v77.__r_.__value_.__r.__words[2] = *(v18 + 16);
      *&v77.__r_.__value_.__l.__data_ = v19;
    }

    if (*(v18 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v78, *(v18 + 24), *(v18 + 32));
    }

    else
    {
      v20 = *(v18 + 24);
      v78.__r_.__value_.__r.__words[2] = *(v18 + 40);
      *&v78.__r_.__value_.__l.__data_ = v20;
    }

    std::string::operator=(&v75, &v78);
    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    goto LABEL_39;
  }

LABEL_43:
  pxrInternal__aapl__pxrReserved__::ArGetResolver(IsImpl);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v77, v75.__r_.__value_.__l.__data_, v75.__r_.__value_.__l.__size_);
  }

  else
  {
    v77 = v75;
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (!v69)
  {
    std::string::basic_string[abi:ne200100]<0>(&v77, "Could not retrieve asset path");
    ExecFault::errorValue(2, &v77, 0, a5);
  }

  (*(*v69 + 24))(&v68);
  v26 = v68;
  v27 = (*(*v69 + 16))(v69);
  v28 = CFDataCreateWithBytesNoCopy(0, v26, v27, *MEMORY[0x277CBED00]);
  v67[1] = v28;
  if (!v28)
  {
    std::string::basic_string[abi:ne200100]<0>(&v77, "Could not retrieve texture data");
    ExecFault::errorValue(2, &v77, 0, a5);
  }

  v67[0] = v28;
  CFRetain(v28);
  if (!ServiceLocator)
  {
    std::string::basic_string[abi:ne200100]<0>(&v80, "Could not find service locator");
    v30 = std::system_category();
    realityio::DetailedError::DetailedError(&v81, 0, v30, &v80);
    *&v77.__r_.__value_.__r.__words[1] = v81;
    *&v78.__r_.__value_.__l.__data_ = *v82;
    *(&v78.__r_.__value_.__r.__words[1] + 7) = *&v82[15];
    v31 = v82[23];
    memset(v82, 0, sizeof(v82));
    v77.__r_.__value_.__s.__data_[0] = 0;
    *(&v78.__r_.__value_.__s + 23) = v31;
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

LABEL_157:
    realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(v67);
    if (v77.__r_.__value_.__s.__data_[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
      RETextureImportOperationSetAssetResourceName();
      v76 = 0;
      if (RETextureImportOperationCreateAssetData())
      {
        MEMORY[0x24C1A4230](ServiceLocator);
        TextureAssetFromDataAsync = REAssetManagerCreateTextureAssetFromDataAsync();
        realityio::ECSAction::queueForDeferredAssetLoad(a1, &TextureAssetFromDataAsync);
        v80.__r_.__value_.__l.__size_ = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAsset *>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAsset *>>::_PlaceCopy(&v80, &TextureAssetFromDataAsync);
      }

      v55 = std::string::basic_string[abi:ne200100]<0>(&v81, "Error importing texture ");
      if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v75;
      }

      else
      {
        v56 = v75.__r_.__value_.__r.__words[0];
      }

      if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v75.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v75.__r_.__value_.__l.__size_;
      }

      std::string::append(v55, v56, size);
      ExecFault::errorValue(2, &v81, v76, a5);
    }

    std::error_code::message(&v80, &v77.__r_.__value_.__r.__words[1]);
    v53 = std::string::insert(&v80, 0, "Could not instantiate import operation");
    v54 = *&v53->__r_.__value_.__l.__data_;
    *v82 = *(&v53->__r_.__value_.__l + 2);
    v81 = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    ExecFault::errorValue(2, &v81, 0, a5);
  }

  v76 = RETextureImportOperationCreateWithData();
  if (!v76)
  {
    std::string::basic_string[abi:ne200100]<0>(&v80, "Failed to create import operation");
    v32 = std::system_category();
    realityio::DetailedError::DetailedError(&v81, 0, v32, &v80);
    *&v77.__r_.__value_.__r.__words[1] = v81;
    *&v78.__r_.__value_.__l.__data_ = *v82;
    *(&v78.__r_.__value_.__r.__words[1] + 7) = *&v82[15];
    v33 = v82[23];
    memset(v82, 0, sizeof(v82));
    v77.__r_.__value_.__s.__data_[0] = 0;
    *(&v78.__r_.__value_.__s + 23) = v33;
    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v80.__r_.__value_.__l.__data_);
    }

    goto LABEL_156;
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v71.__r_.__value_.__l.__size_ > 4)
    {
      switch(v71.__r_.__value_.__l.__size_)
      {
        case 5uLL:
          if (*v71.__r_.__value_.__l.__data_ != 1869377379 || *(v71.__r_.__value_.__r.__words[0] + 4) != 114)
          {
            goto LABEL_127;
          }

          break;
        case 6uLL:
          if ((*v71.__r_.__value_.__l.__data_ != 1818321779 || *(v71.__r_.__value_.__r.__words[0] + 4) != 29281) && (*v71.__r_.__value_.__l.__data_ != 1836216174 || *(v71.__r_.__value_.__r.__words[0] + 4) != 27745))
          {
LABEL_127:
            if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
            {
              if (!v70.__r_.__value_.__l.__size_)
              {
                goto LABEL_139;
              }

              *&v81 = 0;
              v46 = v70.__r_.__value_.__r.__words[0];
            }

            else
            {
              if (!*(&v70.__r_.__value_.__s + 23))
              {
                goto LABEL_139;
              }

              *&v81 = 0;
              v46 = &v70;
            }

            v47 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v46, 0x8000100u);
            if (v81)
            {
              CFRelease(v81);
            }

            *&v81 = v47;
            if (v47)
            {
              v80.__r_.__value_.__r.__words[0] = 0;
              v80.__r_.__value_.__r.__words[0] = MEMORY[0x24C1A4490](v47);
              if (v80.__r_.__value_.__r.__words[0])
              {
                RETextureImportOperationSetColorSpaceName();
              }

              realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v80.__r_.__value_.__l.__data_);
            }

            realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v81);
LABEL_139:
            if (v73)
            {
              RETextureImportOperationSetDimensionsMode();
              RETextureImportOperationSetDownsampleFactor();
            }

            v48 = RETextureImportOperationCopyTextureDescriptorTemplate();
            v49 = v48;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              if (__p.__r_.__value_.__l.__size_ != 1)
              {
                if (__p.__r_.__value_.__l.__size_ != 3)
                {
                  goto LABEL_152;
                }

                p_p = __p.__r_.__value_.__r.__words[0];
LABEL_148:
                if (LOWORD(p_p->__r_.__value_.__l.__data_) == 26482 && p_p->__r_.__value_.__s.__data_[2] == 98)
                {
                  v51 = 17040130;
                  goto LABEL_153;
                }

LABEL_152:
                v51 = 84148994;
LABEL_153:
                [v48 setSwizzle:v51];
                if (v74 == 1)
                {
                  RETextureImportOperationSetPixelFormatMode();
                  [v49 setPixelFormat:10];
                }

                RETextureImportOperationSetTextureDescriptorTemplate();
                v52 = v76;
                v76 = 0;
                v77.__r_.__value_.__s.__data_[0] = 1;
                v77.__r_.__value_.__l.__size_ = v52;
                *&v81 = 0;
                realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef(&v81);

LABEL_156:
                realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef(&v76);
                goto LABEL_157;
              }

              v58 = *__p.__r_.__value_.__l.__data_;
            }

            else
            {
              if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 1)
              {
                if (HIBYTE(__p.__r_.__value_.__r.__words[2]) != 3)
                {
                  goto LABEL_152;
                }

                goto LABEL_148;
              }

              v58 = __p.__r_.__value_.__s.__data_[0];
            }

            if (v58 > 102)
            {
              if (v58 == 103)
              {
                v51 = 16974595;
                goto LABEL_153;
              }

              if (v58 == 114)
              {
                v51 = 16908802;
                goto LABEL_153;
              }
            }

            else
            {
              if (v58 == 97)
              {
                v51 = 17106181;
                goto LABEL_153;
              }

              if (v58 == 98)
              {
                v51 = 17040388;
                goto LABEL_153;
              }
            }

            goto LABEL_152;
          }

          break;
        case 8uLL:
          v29 = *v71.__r_.__value_.__l.__data_;
LABEL_69:
          if (v29 != 0x726F6C6F43726468)
          {
            goto LABEL_127;
          }

          break;
        default:
          goto LABEL_127;
      }

LABEL_126:
      RETextureImportOperationSetSemantic();
      goto LABEL_127;
    }

    if (v71.__r_.__value_.__l.__size_ == 3)
    {
      if (*v71.__r_.__value_.__l.__data_ != 24946 || *(v71.__r_.__value_.__r.__words[0] + 2) != 119)
      {
        goto LABEL_127;
      }

      goto LABEL_126;
    }

    if (v71.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_127;
    }

    v62 = v71.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (HIBYTE(v71.__r_.__value_.__r.__words[2]) > 4u)
    {
      switch(HIBYTE(v71.__r_.__value_.__r.__words[2]))
      {
        case 5u:
          if (LODWORD(v71.__r_.__value_.__l.__data_) != 1869377379 || v71.__r_.__value_.__s.__data_[4] != 114)
          {
            goto LABEL_127;
          }

          break;
        case 6u:
          if ((LODWORD(v71.__r_.__value_.__l.__data_) != 1818321779 || WORD2(v71.__r_.__value_.__r.__words[0]) != 29281) && (LODWORD(v71.__r_.__value_.__l.__data_) != 1836216174 || WORD2(v71.__r_.__value_.__r.__words[0]) != 27745))
          {
            goto LABEL_127;
          }

          break;
        case 8u:
          v29 = v71.__r_.__value_.__r.__words[0];
          goto LABEL_69;
        default:
          goto LABEL_127;
      }

      goto LABEL_126;
    }

    if (HIBYTE(v71.__r_.__value_.__r.__words[2]) == 3)
    {
      if (LOWORD(v71.__r_.__value_.__l.__data_) != 24946 || v71.__r_.__value_.__s.__data_[2] != 119)
      {
        goto LABEL_127;
      }

      goto LABEL_126;
    }

    if (HIBYTE(v71.__r_.__value_.__r.__words[2]) != 4)
    {
      goto LABEL_127;
    }
  }

  v34 = bswap32(v62->__r_.__value_.__l.__data_);
  v35 = v34 >= 0x6E6F6E65;
  v36 = v34 > 0x6E6F6E65;
  v37 = !v35;
  if (v36 != v37)
  {
    goto LABEL_127;
  }

  goto LABEL_126;
}

void sub_2476C9280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, const void *a25, const void *a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53)
{
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v53 - 168));
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef((v53 - 144));
  realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef(&a53);
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&a25);
  realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&a26);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a52 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v53 - 184));
  _Unwind_Resume(a1);
}

void realityio::tokens::MaterialBuilderTokens_StaticTokenType::~MaterialBuilderTokens_StaticTokenType(realityio::tokens::MaterialBuilderTokens_StaticTokenType *this)
{
  v42 = (this + 328);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v42);
  v2 = *(this + 40);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 39);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 38);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 37);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 36);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 35);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 34);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 33);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 32);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 31);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 30);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(this + 29);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 28);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(this + 27);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(this + 26);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(this + 25);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(this + 24);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(this + 23);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(this + 22);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(this + 21);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(this + 20);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(this + 19);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(this + 18);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(this + 17);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(this + 16);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(this + 15);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(this + 14);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(this + 13);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(this + 12);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(this + 11);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(this + 10);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(this + 9);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(this + 8);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(this + 7);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(this + 6);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(this + 5);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(this + 4);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = *(this + 3);
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(this + 2);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v41 = *(this + 1);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::MaterialBuilderTokens_StaticTokenType *realityio::tokens::MaterialBuilderTokens_StaticTokenType::MaterialBuilderTokens_StaticTokenType(realityio::tokens::MaterialBuilderTokens_StaticTokenType *this)
{
  v88 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "Material", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "Shader", 0);
  MEMORY[0x24C1A5DF0](this + 16, "NodeGraph", 0);
  MEMORY[0x24C1A5DF0](this + 24, "mtlx", 0);
  MEMORY[0x24C1A5DF0](this + 32, "fallback", 0);
  MEMORY[0x24C1A5DF0](this + 40, "scale", 0);
  MEMORY[0x24C1A5DF0](this + 48, "file", 0);
  MEMORY[0x24C1A5DF0](this + 56, "index", 0);
  MEMORY[0x24C1A5DF0](this + 64, "inputs:index", 0);
  MEMORY[0x24C1A5DF0](this + 72, "geomprop", 0);
  MEMORY[0x24C1A5DF0](this + 80, "varname", 0);
  MEMORY[0x24C1A5DF0](this + 88, "RealityKit:includeUnusedMaterials", 0);
  MEMORY[0x24C1A5DF0](this + 96, "realitykit:vertex", 0);
  MEMORY[0x24C1A5DF0](this + 104, "ND_realitykit_occlusion_surfaceshader", 0);
  MEMORY[0x24C1A5DF0](this + 112, "ND_realitykit_shadowreceiver_surfaceshader", 0);
  MEMORY[0x24C1A5DF0](this + 120, "ND_texcoord_vector2", 0);
  MEMORY[0x24C1A5DF0](this + 128, "ND_texcoord_vector3", 0);
  MEMORY[0x24C1A5DF0](this + 136, "ND_texcoord_vector4", 0);
  MEMORY[0x24C1A5DF0](this + 144, "ND_realitykit_geometry_modifier_uv0", 0);
  MEMORY[0x24C1A5DF0](this + 152, "ND_realitykit_geometry_modifier_uv1", 0);
  MEMORY[0x24C1A5DF0](this + 160, "ND_realitykit_surface_uv0", 0);
  MEMORY[0x24C1A5DF0](this + 168, "ND_realitykit_surface_uv1", 0);
  MEMORY[0x24C1A5DF0](this + 176, "ND_UsdPrimvarReader_vector2", 0);
  MEMORY[0x24C1A5DF0](this + 184, "ND_UsdPrimvarReader_vector3", 0);
  MEMORY[0x24C1A5DF0](this + 192, "ND_UsdPrimvarReader_vector4", 0);
  MEMORY[0x24C1A5DF0](this + 200, "ND_UsdPrimvarReader_color3", 0);
  MEMORY[0x24C1A5DF0](this + 208, "ND_UsdPrimvarReader_color4", 0);
  MEMORY[0x24C1A5DF0](this + 216, "ND_geompropvalue_vector2", 0);
  MEMORY[0x24C1A5DF0](this + 224, "ND_geompropvalue_vector3", 0);
  MEMORY[0x24C1A5DF0](this + 232, "ND_geompropvalue_vector4", 0);
  MEMORY[0x24C1A5DF0](this + 240, "ND_geompropvalue_color3", 0);
  MEMORY[0x24C1A5DF0](this + 248, "ND_geompropvalue_color4", 0);
  MEMORY[0x24C1A5DF0](this + 256, "UV0", 0);
  MEMORY[0x24C1A5DF0](this + 264, "UV1", 0);
  MEMORY[0x24C1A5DF0](this + 272, "cullMode", 0);
  MEMORY[0x24C1A5DF0](this + 280, "front", 0);
  MEMORY[0x24C1A5DF0](this + 288, "back", 0);
  MEMORY[0x24C1A5DF0](this + 296, "none", 0);
  MEMORY[0x24C1A5DF0](this + 304, "unspecified", 0);
  MEMORY[0x24C1A5DF0](this + 312, "displayColor", 0);
  MEMORY[0x24C1A5DF0](this + 320, "displayOpacity", 0);
  v3 = *this;
  v47 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(this + 1);
  v48 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 2);
  v49 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 3);
  v50 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 4);
  v51 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 5);
  v52 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 6);
  v53 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 7);
  v54 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 8);
  v55 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 9);
  v56 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 10);
  v57 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 11);
  v58 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 12);
  v59 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *(this + 13);
  v60 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *(this + 14);
  v61 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = *(this + 15);
  v62 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = *(this + 16);
  v63 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v63 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = *(this + 17);
  v64 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v64 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = *(this + 18);
  v65 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v65 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = *(this + 19);
  v66 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v66 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = *(this + 20);
  v67 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = *(this + 21);
  v68 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = *(this + 22);
  v69 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v69 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = *(this + 23);
  v70 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v70 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = *(this + 24);
  v71 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v71 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = *(this + 25);
  v72 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v72 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = *(this + 26);
  v73 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v73 &= 0xFFFFFFFFFFFFFFF8;
  }

  v30 = *(this + 27);
  v74 = v30;
  if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v74 &= 0xFFFFFFFFFFFFFFF8;
  }

  v31 = *(this + 28);
  v75 = v31;
  if ((v31 & 7) != 0 && (atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v75 &= 0xFFFFFFFFFFFFFFF8;
  }

  v32 = *(this + 29);
  v76 = v32;
  if ((v32 & 7) != 0 && (atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v76 &= 0xFFFFFFFFFFFFFFF8;
  }

  v33 = *(this + 30);
  v77 = v33;
  if ((v33 & 7) != 0 && (atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v77 &= 0xFFFFFFFFFFFFFFF8;
  }

  v34 = *(this + 31);
  v78 = v34;
  if ((v34 & 7) != 0 && (atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v78 &= 0xFFFFFFFFFFFFFFF8;
  }

  v35 = *(this + 32);
  v79 = v35;
  if ((v35 & 7) != 0 && (atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v79 &= 0xFFFFFFFFFFFFFFF8;
  }

  v36 = *(this + 33);
  v80 = v36;
  if ((v36 & 7) != 0 && (atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v80 &= 0xFFFFFFFFFFFFFFF8;
  }

  v37 = *(this + 34);
  v81 = v37;
  if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v81 &= 0xFFFFFFFFFFFFFFF8;
  }

  v38 = *(this + 35);
  v82 = v38;
  if ((v38 & 7) != 0 && (atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v82 &= 0xFFFFFFFFFFFFFFF8;
  }

  v39 = *(this + 36);
  v83 = v39;
  if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v83 &= 0xFFFFFFFFFFFFFFF8;
  }

  v40 = *(this + 37);
  v84 = v40;
  if ((v40 & 7) != 0 && (atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v84 &= 0xFFFFFFFFFFFFFFF8;
  }

  v41 = *(this + 38);
  v85 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v85 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = *(this + 39);
  v86 = v42;
  if ((v42 & 7) != 0 && (atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v86 &= 0xFFFFFFFFFFFFFFF8;
  }

  v43 = *(this + 40);
  v87 = v43;
  if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v87 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 43) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(this + 41, &v47, &v88, 0x29uLL);
  for (i = 320; i != -8; i -= 8)
  {
    v45 = *(&v47 + i);
    if ((v45 & 7) != 0)
    {
      atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}