realityio::TextureCompression *realityio::TextureCompression::TextureCompression(realityio::TextureCompression *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    v3 = 0;
  }

  else if (pxrInternal__aapl__pxrReserved__::TfToken::operator==())
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  *this = v3;
  return this;
}

void MtlxImageShaderOutput::~MtlxImageShaderOutput(MtlxImageShaderOutput *this)
{
  *this = &unk_285954280;
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(this + 160, *(this + 21));
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *anonymous namespace::InputsContext::insertTextureIntoCache(uint64_t a1, __int128 *a2, std::string::size_type *a3)
{
  v4 = *(*(a1 + 8) + 40);
  v6 = *a3;
  if (v6)
  {
    RERetain();
  }

  std::mutex::lock((v4 + 88));
  std::pair<std::string,realityio::WrappedRERef<REAsset *>>::pair[abi:ne200100]<std::string const&,realityio::WrappedRERef<REAsset *>&,0>(&__p, a2, &v6);
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::WrappedRERef<REAsset *>>>((v4 + 64), &__p.__r_.__value_.__l.__data_, &__p);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock((v4 + 88));
  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v6);
}

void sub_2476097E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  std::pair<std::string,realityio::WrappedRERef<REAsset *>>::~pair(va1);
  std::mutex::unlock((v3 + 88));
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::InputsContext::queueForDeferredAssetLoad(uint64_t a1, uint64_t *a2)
{
  result = *(*(*(*(a1 + 8) + 40) + 16) + 40);
  if (result)
  {
    realityio::LiveSceneManager::queueForDeferredAssetLoad(result, a2);
  }

  return result;
}

void realityio::ImportSession::getTextureAssetWithKey(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  std::mutex::lock((a1 + 88));
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1 + 64, a2);
  if (a1 + 72 == v6)
  {
    *a3 = 0;
  }

  else
  {
    v7 = *(v6 + 56);
    *a3 = v7;
    if (v7)
    {
      RERetain();
    }
  }

  std::mutex::unlock((a1 + 88));
}

uint64_t std::string::compare[abi:ne200100](const void ***a1, _BYTE *a2)
{
  v2 = a2[23];
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = a1;
    a1 = *a1;
    v3 = v4[1];
  }

  if (v2 >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  LODWORD(result) = memcmp(a1, a2, v6);
  if (v3 < v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = v5 < v3;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

void GatheringDestination::instance(uint64_t a1, realityio::TextureImportOperationSettings *this)
{
  realityio::TextureImportOperationSettings::makeTextureResourceKey(this, &v26);
  v4 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(a1 + 40, &v26.__r_.__value_.__l.__data_);
  if ((a1 + 48) == v4)
  {
    pxrInternal__aapl__pxrReserved__::ArGetResolver(v4);
    Extension = pxrInternal__aapl__pxrReserved__::ArResolver::GetExtension();
    v8 = v25;
    v9 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v8 = v24;
    }

    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::ArGetResolver(Extension);
      if (*(this + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, *(this + 3), *(this + 4));
      }

      else
      {
        v17 = *(this + 1);
      }

      pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset();
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (v21)
      {
        (*(*v21 + 24))(&v19);
        cf = 0;
        v10 = v19;
        v11 = (*(*v21 + 16))(v21);
        v12 = CFDataCreateWithBytesNoCopy(0, v10, v11, *MEMORY[0x277CBED00]);
        if (cf)
        {
          CFRelease(cf);
        }

        cf = v12;
        if (v12)
        {
          v13 = *(a1 + 32);
          v16 = v12;
          CFRetain(v12);
          realityio::createRETextureImportOperation(v13, this, &v17);
          realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&v16);
          if (v17.__r_.__value_.__s.__data_[0] == 1)
          {
            v14 = (a1 + 64);
            if (*(a1 + 87) < 0)
            {
              v14 = *v14;
            }

            if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = &v26;
            }

            else
            {
              v15 = v26.__r_.__value_.__r.__words[0];
            }

            std::function<void ()(RETextureImportOperation0 *,char const*,char const*)>::operator()(*(a1 + 24), v17.__r_.__value_.__l.__size_, v14, v15);
            std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>((a1 + 40), &v26.__r_.__value_.__l.__data_, &v26);
          }

          realityio::Result<realityio::WrappedRERef<RETextureImportOperation0 *>,realityio::DetailedError>::~Result(&v17);
        }

        realityio::WrappedCFRef<__CFData const*>::~WrappedCFRef(&cf);
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v9 = v25;
    }

    if ((v9 & 0x80) != 0)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = (a1 + 64);
    if (*(a1 + 87) < 0)
    {
      v5 = *v5;
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v26;
    }

    else
    {
      v6 = v26.__r_.__value_.__r.__words[0];
    }

    std::function<void ()(RETextureImportOperation0 *,char const*,char const*)>::operator()(*(a1 + 24), 0, v5, v6);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_247609BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (*(v25 - 57) < 0)
  {
    operator delete(*(v25 - 80));
  }

  if (*(v25 - 33) < 0)
  {
    operator delete(*(v25 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(RETextureImportOperation0 *,char const*,char const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v5 = a4;
  v6 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v7, &v6, &v5);
}

void UsdInfoGatherer::~UsdInfoGatherer(void **this)
{
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

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

void GatheringDestination::~GatheringDestination(GatheringDestination *this)
{
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  std::__tree<std::string>::destroy(this + 40, *(this + 6));

  std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::~__value_func[abi:ne200100](this);
}

uint64_t anonymous namespace::createTextureAssetData(realityio::TextureBuilder::Context &,anonymous namespace::TextureAssetInstance const&)::$_0::operator()(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::__shared_ptr_pointer<realityio::AssetSourceDataProvider *,anonymous namespace::createTextureAssetData(realityio::TextureBuilder::Context &,anonymous namespace::TextureAssetInstance const&)::$_0,std::allocator<realityio::AssetSourceDataProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::AssetSourceDataProvider *,anonymous namespace::createTextureAssetData(realityio::TextureBuilder::Context &,anonymous namespace::TextureAssetInstance const&)::$_0,std::allocator<realityio::AssetSourceDataProvider>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::AssetSourceDataProvider *,anonymous namespace::createTextureAssetData(realityio::TextureBuilder::Context &,anonymous namespace::TextureAssetInstance const&)::$_0,std::allocator<realityio::AssetSourceDataProvider>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::Result<realityio::WrappedRERef<RETextureAssetData *>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    realityio::WrappedRERef<RETextureAssetData *>::~WrappedRERef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t *realityio::WrappedRERef<REMemoryAssetParameters *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(a1, *(a2 + 1));
    std::__tree<realityio::TextureImportOperationSettings>::destroy((a2 + 80), *(a2 + 11));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::WrappedRERef<REAsset *>>>(uint64_t **a1, const void **a2, __int128 *a3)
{
  v3 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t realityio::Result<realityio::TextureImportOperationSettings,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      v2 = (a1 + 8);
LABEL_12:
      operator delete(*v2);
    }
  }

  else if (*(a1 + 47) < 0)
  {
    v2 = (a1 + 24);
    goto LABEL_12;
  }

  return a1;
}

uint64_t *realityio::WrappedRERef<RETextureAssetData *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t realityio::Result<realityio::WrappedRERef<RETextureImportOperation0 *>,realityio::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    realityio::WrappedRERef<RETextureImportOperation0 *>::~WrappedRERef((a1 + 8));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t std::__function::__func<realityio::TextureBuilder::TextureBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::TextureBuilder::TextureBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_24760A470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::TextureBuilder::TextureBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::TextureBuilder::TextureBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::TextureBuilder::TextureDataT *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859545A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__value_func<void ()(RETextureImportOperation0 *,char const*,char const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::find<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = a1 + 8;
  do
  {
    v5 = pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<();
    if (v5)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    if (!v5)
    {
      v4 = v3;
    }

    v3 = *(v3 + v6);
  }

  while (v3);
  if (v4 == v2 || pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
  {
    return v2;
  }

  return v4;
}

void std::__tree<realityio::TextureImportOperationSettings>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<realityio::TextureImportOperationSettings>::destroy(a1, *a2);
    std::__tree<realityio::TextureImportOperationSettings>::destroy(a1, *(a2 + 1));
    if (a2[151] < 0)
    {
      operator delete(*(a2 + 16));
    }

    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfAssetPath const,std::set<realityio::TextureImportOperationSettings>>>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_24760A840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 55) < 0)
  {
    operator delete(*(v3 + 32));
  }

  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,void *>>>::operator()[abi:ne200100](va, v3);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v6 = v4;
        if (!pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
        {
          break;
        }

        v4 = *v6;
        v5 = v6;
        if (!*v6)
        {
          goto LABEL_9;
        }
      }

      if (!pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
      {
        break;
      }

      v5 = v6 + 1;
      v4 = v6[1];
    }

    while (v4);
  }

  else
  {
    v6 = (a1 + 8);
  }

LABEL_9:
  *a2 = v6;
  return v5;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<realityio::TextureImportOperationSettings>::destroy(a2 + 80, *(a2 + 88));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__tree<realityio::TextureImportOperationSettings>::__emplace_unique_key_args<realityio::TextureImportOperationSettings,realityio::TextureImportOperationSettings const&>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  result = *std::__tree<realityio::TextureImportOperationSettings>::__find_equal<realityio::TextureImportOperationSettings>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<realityio::TextureImportOperationSettings>::__construct_node<realityio::TextureImportOperationSettings const&>();
  }

  return result;
}

void *std::__tree<realityio::TextureImportOperationSettings>::__find_equal<realityio::TextureImportOperationSettings>(uint64_t a1, void *a2, uint64_t a3)
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
        if (!realityio::TextureImportOperationSettings::operator<(a3, (v4 + 4)))
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

      if (!realityio::TextureImportOperationSettings::operator<((v7 + 4), a3))
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

void sub_24760ABA4(_Unwind_Exception *a1)
{
  if (*(v2 + 103) < 0)
  {
    operator delete(*(v2 + 80));
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath((v2 + 32));
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<realityio::TextureImportOperationSettings,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t realityio::TextureImportOperationSettings::operator<(uint64_t a1, uint64_t a2)
{
  if (pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
  {
    return 1;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator==(a1, a2))
  {
    return 0;
  }

  v5 = *(a2 + 71);
  v6 = *(a1 + 71);
  v7 = v6;
  v8 = (a1 + 48);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
  }

  if (v5 >= 0)
  {
    v9 = *(a2 + 71);
  }

  else
  {
    v9 = *(a2 + 56);
  }

  if (v5 >= 0)
  {
    v10 = (a2 + 48);
  }

  else
  {
    v10 = *(a2 + 48);
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = v7 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 1;
  }

  v14 = *(a1 + 56);
  if ((v6 & 0x80000000) == 0)
  {
    v14 = v6;
  }

  if (v14 == v9 && ((v6 & 0x80000000) == 0 ? (v15 = (a1 + 48)) : (v15 = *(a1 + 48)), !memcmp(v15, v10, v9) && ((v16 = *(a1 + 72), v17 = *(a2 + 72), v16 < v17) || v16 == v17 && (realityio::TextureSwizzleChannels::operator<((a1 + 76), (a2 + 76)) || *(a1 + 76) == *(a2 + 76) && *(a1 + 77) == *(a2 + 77) && *(a1 + 78) == *(a2 + 78) && *(a1 + 79) == *(a2 + 79) && ((v18 = *(a1 + 80), v19 = *(a2 + 80), v18 < v19) || v18 == v19 && ((v20 = *(a1 + 84), v21 = *(a2 + 84), v20 < v21) || v20 == v21 && ((v22 = *(a1 + 88), v23 = *(a2 + 88), v22 < v23) || v22 == v23 && ((v24 = *(a1 + 89), v25 = *(a2 + 89), v24 < v25) || v24 == v25 && (std::string::compare[abi:ne200100]((a1 + 96), (a2 + 96)) & 0x80000000) != 0))))))))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL realityio::TextureSwizzleChannels::operator<(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = a1[1];
  v6 = a2[1];
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 != v6)
  {
    return 0;
  }

  v7 = a1[2];
  v8 = a2[2];
  if (v7 < v8)
  {
    return 1;
  }

  if (v7 == v8)
  {
    return a1[3] < a2[3];
  }

  return 0;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<realityio::TextureImportOperationSettings,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 151) < 0)
    {
      operator delete(__p[16]);
    }

    if (*(__p + 103) < 0)
    {
      operator delete(__p[10]);
    }

    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void realityio::mtlx::fillAttr(realityio::mtlx *this, realityio::mtlx::MxDataSource *a2, const pxrInternal__aapl__pxrReserved__::UsdAttribute *a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v14, a2);
  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, v14);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15 + 1, v14 + 1);
  v16[0] = TypeName;
  v7 = (this + 184);
  v6 = *(this + 23);
  if (!v6)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v8 = v6;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v15, v6 + 4))
      {
        break;
      }

      v6 = *v8;
      v7 = v8;
      if (!*v8)
      {
        goto LABEL_7;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v8 + 4, &v15))
    {
      break;
    }

    v7 = v8 + 1;
    v6 = v8[1];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!*v7)
  {
LABEL_7:
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v14);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v14, a2);
  HasValue = pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, v14);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15 + 1, v14 + 1);
  LOBYTE(v16[0]) = HasValue;
  v11 = (this + 136);
  v10 = *(this + 17);
  if (!v10)
  {
    goto LABEL_14;
  }

  while (1)
  {
    while (1)
    {
      v12 = v10;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v15, (v10 + 28)))
      {
        break;
      }

      v10 = *v12;
      v11 = v12;
      if (!*v12)
      {
        goto LABEL_14;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<((v12 + 28), &v15))
    {
      break;
    }

    v11 = v12 + 1;
    v10 = v12[1];
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  if (!*v11)
  {
LABEL_14:
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v14);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v14, a2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetRoleName(&v13, a2);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::pair[abi:ne200100]<true,0>(&v15, v14, &v13);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>(this + 31, &v15, &v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v14);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v14, a2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::GetColorSpace(&v13, a2);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::pair[abi:ne200100]<true,0>(&v15, v14, &v13);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>(this + 34, &v15, &v15);
  if ((v16[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v16[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v14);
  if (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasValue(a2))
  {
    v14[1] = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v13, a2);
    std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100]<true,0>(&v15, &v13, v14);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>(this + 25, &v15, &v15);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v16);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v14);
  }
}

void sub_24760B324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::fillDataSourceFromShaderPrim(realityio::mtlx *a1, pxrInternal__aapl__pxrReserved__ **this, uint64_t *a3)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredAttributes(&v93, this);
  v6 = v94;
  if (v93 != v94)
  {
    v7 = v93 + 16;
    do
    {
      v8 = v7 - 16;
      LODWORD(v106) = *(v7 - 16);
      v9 = *(v7 - 8);
      v107 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, v7);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v109, (v7 + 4));
      v11 = *(v7 + 8);
      v110 = v11;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v110 &= 0xFFFFFFFFFFFFFFF8;
      }

      realityio::mtlx::fillAttr(a1, &v106, v10);
      if ((v110 & 7) != 0)
      {
        atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
      if (v107)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v107);
      }

      v7 += 32;
    }

    while (v8 + 32 != v6);
  }

  v12 = this[1];
  if (!v12 || (*(v12 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(this[1], v5);
  }

  v13 = *(v12 + 3);
  MEMORY[0x24C1A5DE0](&v106, "Shader");
  v15 = v106 ^ *v13;
  if ((v106 & 7) != 0)
  {
    atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v15 <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v92, this);
    realityio::mtlx::MxDataSource::addPrim(a1, &v92, 2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v92);
    v87 = *this;
    v16 = this[1];
    v88 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(v16 + 6, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v89, this + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v90, this + 5);
    v17 = this[3];
    v91 = v17;
    if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v91 &= 0xFFFFFFFFFFFFFFF8;
    }

    v18 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v115 = 0;
    v116[0] = MEMORY[0x277D86708] + 16;
    v113 = 0;
    v114 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v111, v18);
    v19 = v111;
    for (i = v112; v19 != i; v19 += 32)
    {
      LODWORD(v106) = *v19;
      v21 = *(v19 + 8);
      v107 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v19 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v109, (v19 + 20));
      v22 = *(v19 + 24);
      v110 = v22;
      if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v110 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v103, &v106);
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v103);
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v113, NameToken);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v103);
      realityio::mtlx::fillAttr(a1, &v106, v24);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v103, &v106);
      pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v100, &v106);
      realityio::mtlx::MxDataSource::addBaseName(a1, &v103, &v100);
      if ((v100 & 7) != 0)
      {
        atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v103);
      v103 = 0;
      v104 = 0;
      v105 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
      {
        v25 = v103;
        if (v103 != v104)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v100, v103);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v100 + 1, v25 + 1);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v97, &v100);
          std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>(&v97);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v102, &v106);
      realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v102, &v103);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
      v100 = &v103;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v100);
      if ((v110 & 7) != 0)
      {
        atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
      if (v107)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v107);
      }
    }

    v103 = 0;
    v104 = 0;
    v105 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetOutputs(&v100, v116);
    v26 = v100;
    for (j = v101; v26 != j; v26 += 32)
    {
      LODWORD(v106) = *v26;
      v28 = *(v26 + 8);
      v107 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v26 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v109, (v26 + 20));
      v29 = *(v26 + 24);
      v110 = v29;
      if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v110 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v97, &v106);
      v30 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v97);
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v103, v30);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v97);
      realityio::mtlx::fillAttr(a1, &v106, v31);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v97, &v106);
      pxrInternal__aapl__pxrReserved__::UsdShadeOutput::GetBaseName(v117, &v106);
      realityio::mtlx::MxDataSource::addBaseName(a1, &v97, v117);
      if ((v117[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v117[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v97);
      v97 = 0;
      v98 = 0;
      v99 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
      {
        v32 = v97;
        if (v97 != v98)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v117, v97);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v117 + 1, v32 + 1);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v96, v117);
          std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>(&v96);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v95, &v106);
      realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v95, &v97);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v95);
      v117[0] = &v97;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](v117);
      if ((v110 & 7) != 0)
      {
        atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
      if (v107)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v107);
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v97, &v87);
    realityio::mtlx::MxDataSource::addInputsOutputs(a1, &v97, &v113, &v103);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v97);
    v106 = &v100;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100](&v106);
    v106 = &v103;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v106);
    v106 = &v111;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v106);
    v106 = &v113;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v106);
    MEMORY[0x24C1A5280](v116);
    if ((v91 & 7) != 0)
    {
      atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v89);
    v33 = v88;
    if (!v88)
    {
      goto LABEL_154;
    }

LABEL_153:
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v33);
    goto LABEL_154;
  }

  v34 = this[1];
  if (!v34 || (*(v34 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(this[1], v14);
  }

  v35 = *(v34 + 3);
  MEMORY[0x24C1A5DE0](&v106, "NodeGraph");
  v37 = v106 ^ *v35;
  if ((v106 & 7) != 0)
  {
    atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v37 > 7)
  {
    v55 = this[1];
    if (!v55 || (*(v55 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(this[1], v36);
    }

    v56 = *(v55 + 3);
    MEMORY[0x24C1A5DE0](&v106, "Material");
    v57 = v106 ^ *v56;
    if ((v106 & 7) != 0)
    {
      atomic_fetch_add_explicit((v106 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v57 <= 7)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v80, this);
      realityio::mtlx::MxDataSource::addPrim(a1, &v80, 0);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v80);
      v75 = *this;
      v58 = this[1];
      v76 = v58;
      if (v58)
      {
        atomic_fetch_add_explicit(v58 + 6, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v77, this + 4);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v78, this + 5);
      v59 = this[3];
      v79 = v59;
      if ((v59 & 7) != 0 && (atomic_fetch_add_explicit((v59 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v79 &= 0xFFFFFFFFFFFFFFF8;
      }

      v60 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v115 = 0;
      v116[0] = MEMORY[0x277D86758] + 16;
      v113 = 0;
      v114 = 0;
      pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetInputs(&v111, v60);
      v61 = v111;
      for (k = v112; v61 != k; v61 += 32)
      {
        LODWORD(v106) = *v61;
        v63 = *(v61 + 8);
        v107 = v63;
        if (v63)
        {
          atomic_fetch_add_explicit((v63 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v61 + 16));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v109, (v61 + 20));
        v64 = *(v61 + 24);
        v110 = v64;
        if ((v64 & 7) != 0 && (atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v110 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v103, &v106);
        v65 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v103);
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v113, v65);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v103);
        realityio::mtlx::fillAttr(a1, &v106, v66);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v103, &v106);
        pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v100, &v106);
        realityio::mtlx::MxDataSource::addBaseName(a1, &v103, &v100);
        if ((v100 & 7) != 0)
        {
          atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v103);
        v103 = 0;
        v104 = 0;
        v105 = 0;
        if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
        {
          v67 = v103;
          if (v103 != v104)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v100, v103);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v100 + 1, v67 + 1);
            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v97, &v100);
            std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>(&v97);
          }
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v102, &v106);
        realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v102, &v103);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
        v100 = &v103;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v100);
        if ((v110 & 7) != 0)
        {
          atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
        if (v107)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v107);
        }
      }

      v103 = 0;
      v104 = 0;
      v105 = 0;
      pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutputs(&v100, v116);
      v68 = v100;
      for (m = v101; v68 != m; v68 += 32)
      {
        LODWORD(v106) = *v68;
        v70 = *(v68 + 8);
        v107 = v70;
        if (v70)
        {
          atomic_fetch_add_explicit((v70 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v68 + 16));
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v109, (v68 + 20));
        v71 = *(v68 + 24);
        v110 = v71;
        if ((v71 & 7) != 0 && (atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v110 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v97, &v106);
        v72 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v97);
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v103, v72);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v97);
        realityio::mtlx::fillAttr(a1, &v106, v73);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v97, &v106);
        pxrInternal__aapl__pxrReserved__::UsdShadeOutput::GetBaseName(v117, &v106);
        realityio::mtlx::MxDataSource::addBaseName(a1, &v97, v117);
        if ((v117[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v117[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v97);
        v97 = 0;
        v98 = 0;
        v99 = 0;
        if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
        {
          v74 = v97;
          if (v97 != v98)
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v117, v97);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v117 + 1, v74 + 1);
            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v96, v117);
            std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>(&v96);
          }
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v95, &v106);
        realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v95, &v97);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v95);
        v117[0] = &v97;
        std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](v117);
        if ((v110 & 7) != 0)
        {
          atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
        if (v107)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v107);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v97, &v75);
      realityio::mtlx::MxDataSource::addInputsOutputs(a1, &v97, &v113, &v103);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v97);
      v106 = &v100;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100](&v106);
      v106 = &v103;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v106);
      v106 = &v111;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v106);
      v106 = &v113;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v106);
      MEMORY[0x24C1A5510](v116);
      if ((v79 & 7) != 0)
      {
        atomic_fetch_add_explicit((v79 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v77);
      v33 = v76;
      if (v76)
      {
        goto LABEL_153;
      }
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v86, this);
    realityio::mtlx::MxDataSource::addPrim(a1, &v86, 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v86);
    v81 = *this;
    v38 = this[1];
    v82 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(v38 + 6, 1uLL, memory_order_relaxed);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v83, this + 4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v84, this + 5);
    v39 = this[3];
    v85 = v39;
    if ((v39 & 7) != 0 && (atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v85 &= 0xFFFFFFFFFFFFFFF8;
    }

    v40 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v115 = 0;
    v116[0] = MEMORY[0x277D86778] + 16;
    v113 = 0;
    v114 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetInputs(&v111, v40);
    v41 = v111;
    for (n = v112; v41 != n; v41 += 32)
    {
      LODWORD(v106) = *v41;
      v43 = *(v41 + 8);
      v107 = v43;
      if (v43)
      {
        atomic_fetch_add_explicit((v43 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v41 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v109, (v41 + 20));
      v44 = *(v41 + 24);
      v110 = v44;
      if ((v44 & 7) != 0 && (atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v110 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v103, &v106);
      v45 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v103);
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v113, v45);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v103);
      realityio::mtlx::fillAttr(a1, &v106, v46);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v103, &v106);
      pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v100, &v106);
      realityio::mtlx::MxDataSource::addBaseName(a1, &v103, &v100);
      if ((v100 & 7) != 0)
      {
        atomic_fetch_add_explicit((v100 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v103);
      v103 = 0;
      v104 = 0;
      v105 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
      {
        v47 = v103;
        if (v103 != v104)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v100, v103);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v100 + 1, v47 + 1);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v97, &v100);
          std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>(&v97);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v102, &v106);
      realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v102, &v103);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
      v100 = &v103;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v100);
      if ((v110 & 7) != 0)
      {
        atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
      if (v107)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v107);
      }
    }

    v103 = 0;
    v104 = 0;
    v105 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetOutputs(&v100, v116);
    v48 = v100;
    for (ii = v101; v48 != ii; v48 += 32)
    {
      LODWORD(v106) = *v48;
      v50 = *(v48 + 8);
      v107 = v50;
      if (v50)
      {
        atomic_fetch_add_explicit((v50 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v108, (v48 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v109, (v48 + 20));
      v51 = *(v48 + 24);
      v110 = v51;
      if ((v51 & 7) != 0 && (atomic_fetch_add_explicit((v51 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v110 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v97, &v106);
      v52 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v97);
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v103, v52);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v97);
      realityio::mtlx::fillAttr(a1, &v106, v53);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v97, &v106);
      pxrInternal__aapl__pxrReserved__::UsdShadeOutput::GetBaseName(v117, &v106);
      realityio::mtlx::MxDataSource::addBaseName(a1, &v97, v117);
      if ((v117[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v117[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v97);
      v97 = 0;
      v98 = 0;
      v99 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
      {
        v54 = v97;
        if (v97 != v98)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v117, v97);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v117 + 1, v54 + 1);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v96, v117);
          std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::__create_node[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>(&v96);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v95, &v106);
      realityio::mtlx::MxDataSource::addConnectedAttribute(a1, &v95, &v97);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v95);
      v117[0] = &v97;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](v117);
      if ((v110 & 7) != 0)
      {
        atomic_fetch_add_explicit((v110 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
      if (v107)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v107);
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v97, &v81);
    realityio::mtlx::MxDataSource::addInputsOutputs(a1, &v97, &v113, &v103);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v97);
    v106 = &v100;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100](&v106);
    v106 = &v103;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v106);
    v106 = &v111;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v106);
    v106 = &v113;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v106);
    MEMORY[0x24C1A5610](v116);
    if ((v85 & 7) != 0)
    {
      atomic_fetch_add_explicit((v85 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v83);
    v33 = v82;
    if (v82)
    {
      goto LABEL_153;
    }
  }

LABEL_154:
  v106 = &v93;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v106);
}

void sub_24760C7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a30);
  *(v37 - 200) = &a33;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__destroy_vector::operator()[abi:ne200100]((v37 - 200));
  *(v37 - 200) = &a37;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v37 - 200));
  *(v37 - 200) = v37 - 168;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100]((v37 - 200));
  *(v37 - 200) = v37 - 144;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100]((v37 - 200));
  MEMORY[0x24C1A5510](v37 - 120);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a10);
  *(v37 - 200) = &a25;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100]((v37 - 200));
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::addPrim(void *a1, _DWORD *a2, int a3)
{
  v6 = a1 + 7;
  v7 = (a1[8] - a1[7]) >> 3;
  v8 = (a1 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v13, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v13 + 1, a2 + 1);
  v13[1] = v7;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>(v8, v13, v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v13);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11 + 1, a2 + 1);
  v12 = a3;
  if (!*std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>((a1 + 4), &v14, &v11))
  {
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  v9 = a1[8];
  if (v9 >= a1[9])
  {
    result = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v6, a2);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1[8], a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v9 + 4), a2 + 1);
    result = v9 + 8;
  }

  a1[8] = result;
  return result;
}

void sub_24760CF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::chaseConnection(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  while (1)
  {
    result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
    if (!result)
    {
      break;
    }

    result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a3, a1);
    v8 = result;
    if (a3 + 8 == result)
    {
      if (*a1 == *a2)
      {
        v9 = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, &v9);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((a1 + 1), &v9 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
      }

      return result;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1, (result + 36));
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((a1 + 1), (v8 + 40));
  }

  return result;
}

uint64_t realityio::mtlx::buildConnectionsMaps(pxrInternal__aapl__pxrReserved__::UsdObject *a1, uint64_t **a2, uint64_t **a3)
{
  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v38, a1);
  v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v38);
  pxrInternal__aapl__pxrReserved__::UsdStage::Traverse(v44, v5);
  v6 = v39;
  if (v39 && atomic_fetch_add_explicit((v39 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(&v38, v44);
  v33 = v44[1];
  v34 = v44;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v36 = 0;
  v37 = 0;
  while (v39 != v34 || v38 != v33 || v40 != v35 || v41 != v36 || v42 != v37 || v43 != HIBYTE(v37))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator*(&v38, &v29);
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredAttributes(v28, &v29);
    v8 = v28[0];
    v7 = v28[1];
    while (v8 != v7)
    {
      LODWORD(v23) = *v8;
      v9 = *(v8 + 8);
      v24 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 48), 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v25, (v8 + 16));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v26, (v8 + 20));
      v10 = *(v8 + 24);
      v27 = v10;
      if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v27 &= 0xFFFFFFFFFFFFFFF8;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      if (pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections())
      {
        v11 = v20;
        v12 = v21;
        while (v11 != v12)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, v11);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, v11 + 1);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v14, &v23);
          LODWORD(v15) = v14;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
          HIDWORD(v15) = HIDWORD(v14);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v16, &v18);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, &v19);
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(a2, &v15, &v15);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v14, &v23);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, &v18);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15 + 1, &v19);
          v16 = v14;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
          v17 = HIDWORD(v14);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(a3, &v15, &v15);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
          v11 += 2;
        }
      }

      v15 = &v20;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v15);
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
      if (v24)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v24);
      }

      v8 += 32;
    }

    v23 = v28;
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v23);
    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
    if (v30)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v30);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(&v38);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v45);
}

void sub_24760D4B8(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v1 - 128);
  _Unwind_Resume(a1);
}

void sub_24760D690(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v2 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(va);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  JUMPOUT(0x24760D6BCLL);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(a2, &v6, (a1 + 16));
  result = v6;
  if (v6)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
  }

  return result;
}

void sub_24760D738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

atomic_uint **realityio::mtlx::mtlxDocToDataSource@<X0>(uint64_t a1@<X0>, RIO_MTLX::Element **a2@<X1>, realityio::mtlx **a3@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(&v36);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(&v36);
  pxrInternal__aapl__pxrReserved__::UsdStage::CreateInMemory();
  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v26, &v24);
  std::string::basic_string[abi:ne200100]<0>(&v36, "/MaterialX");
  MEMORY[0x24C1A5D70](&v41, &v36);
  std::string::basic_string[abi:ne200100]<0>(__p, "/ModelRoot");
  MEMORY[0x24C1A5D70](&v25, __p);
  realityio::mtlx::UsdMtlxRead(a2, &v26, &v41, &v25);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v36);
  }

  v5 = v27;
  if (v27 && atomic_fetch_add_explicit(v27 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v19 = 1;
  v20 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v23 = 0;
  v6 = *(a1 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 8);
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v24);
    v8 = v7;
    std::string::basic_string[abi:ne200100]<0>(__p, "/MaterialX/Materials");
    MEMORY[0x24C1A5D70](&v41, __p);
    MEMORY[0x24C1A5E00](&v25, a1);
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v26, &v41, &v25);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v36, v8, &v26);
    v19 = v36;
    v20 = v37;
    v37 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v21, &v38);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v22, &v39);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v23 = v40;
    v40 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
    if (v37)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v37);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
    if ((v25 & 7) != 0)
    {
      atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v41);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v18 = v24;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v18);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v18);
    pxrInternal__aapl__pxrReserved__::UsdStage::Traverse(&v36, v9);
    pxrInternal__aapl__pxrReserved__::UsdPrimRange::begin(__p, &v36);
    v26 = v37;
    v27 = &v36;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v29 = 0;
    v30 = 0;
    while (__p[1] != v27 || __p[0] != v26 || v32 != v28 || v33 != v29 || v34 != v30 || v35 != HIBYTE(v30))
    {
      pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::operator*(__p, &v41);
      v11 = v42;
      if (!v42 || (*(v42 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v42, v10);
      }

      v12 = *(v11 + 3);
      MEMORY[0x24C1A5DE0](&v25, "Material");
      v13 = *v12;
      v14 = v25;
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v14 ^ v13) < 8)
      {
        v15 = 0;
        goto LABEL_38;
      }

      if ((v45 & 7) != 0)
      {
        atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
      if (v42)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42);
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimRange::iterator::increment(__p);
    }

    v15 = 1;
LABEL_38:
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v38);
    if (v15)
    {
      LODWORD(v41) = 1;
      v42 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v45 = 0;
    }

    v19 = v41;
    if (v20)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
    }

    v20 = v42;
    v42 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v21, &v43);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v22, &v44);
    if ((v23 & 7) != 0)
    {
      atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v23 = v45;
    v45 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
    if (v42)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v42);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v18);
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v19))
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
  }

  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v24);
}

void sub_24760EDB0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void realityio::mtlx::mtlxToDataSource(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v6 = [v5 isFileURL];
  if (v6)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, [v5 fileSystemRepresentation]);
    realityio::mtlx::UsdMtlxGetDocument(__p, &v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v12;
    v9 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    realityio::mtlx::mtlxDocToDataSource(a1, &v8, a3);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  else
  {
    v7 = *(realityio::logObjects(v6) + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "CoreRealityIO only supports loading content from file URLs", __p, 2u);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

void sub_24760F44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

void realityio::mtlx::mtlxToDataSource(uint64_t a1@<X0>, uint64_t *a2@<X1>, realityio::mtlx **a3@<X8>)
{
  realityio::mtlx::UsdMtlxGetDocumentFromString(a2, &v7);
  v5 = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  realityio::mtlx::mtlxDocToDataSource(a1, &v5, a3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_24760F514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,BOOL>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

{
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>(uint64_t **a1, void *a2, uint64_t a3)
{
  result = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>();
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::pair[abi:ne200100]<true,0>(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  v7 = *a3;
  *(a1 + 8) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>(uint64_t **a1, void *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue,0>(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  *(a1 + 16) = 0;
  if (*(a2 + 16))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v8, a1 + 8);
    v5 = *(a2 + 16);
    v6 = ~*(a2 + 16);
    *(a1 + 16) = v5;
    if ((v6 & 3) != 0)
    {
      (*((v5 & 0xFFFFFFFFFFFFFFF8) + 40))(a2 + 8, a1 + 8);
    }

    else
    {
      *(a1 + 8) = *(a2 + 8);
    }

    *(a2 + 16) = 0;
    if (v9)
    {
      (*(v9 + 32))(v8);
    }
  }

  return a1;
}

void sub_24760F964(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>(uint64_t **a1, void *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v5, a2);
  if (!v3)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>();
  }

  return v3;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

char **std::unique_ptr<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::NeoPrimType>,0>(v2 + 28);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::NeoPrimType>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__list_imp<pxrInternal__aapl__pxrReserved__::SdfPath>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](void *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    result = v3 + 1;
  }

  a1[1] = result;
  return result;
}

uint64_t realityio::mtlx::MxDataSource::addBaseName(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::pair[abi:ne200100]<true,0>(&v5, a2, a3);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>(this + 19, &v5, &v5);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
}

uint64_t realityio::mtlx::MxDataSource::addConnectedAttribute(uint64_t a1, _DWORD *a2, _DWORD **a3)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7 + 1, a2 + 1);
  memset(v8, 0, sizeof(v8));
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(v8, *a3, a3[1], (a3[1] - *a3) >> 3);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>((a1 + 224), &v7, &v7);
  v9 = v8;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
}

void sub_24760FDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::addInputsOutputs(uint64_t a1, _DWORD *a2, uint64_t **a3, uint64_t **a4)
{
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath&,std::vector<pxrInternal__aapl__pxrReserved__::TfToken> const&,0>(&v8, a2, a3);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>((a1 + 80), &v8, &v8);
  v10 = v9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath&,std::vector<pxrInternal__aapl__pxrReserved__::TfToken> const&,0>(&v8, a2, a4);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>((a1 + 104), &v8, &v8);
  v10 = v9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
}

void sub_24760FEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::~pair(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>(uint64_t **a1, void *a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>,0>(uint64_t a1, uint64_t a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::~pair(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::~pair(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>(uint64_t **a1, void *a2, uint64_t a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v6 = v3;
      if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, v3 + 4))
      {
        break;
      }

      v3 = *v6;
      v4 = v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    result = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v6 + 4, a2);
    if (!result)
    {
      break;
    }

    v4 = v6 + 1;
    v3 = v6[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return result;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath&,std::vector<pxrInternal__aapl__pxrReserved__::TfToken> const&,0>(uint64_t a1, _DWORD *a2, uint64_t **a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>((a1 + 8), *a3, a3[1], a3[1] - *a3);
  return a1;
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t **a1, void *a2, _DWORD *a3)
{
  v3 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(a1, a2[1]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 36);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a2 + 28);

    operator delete(a2);
  }
}

void std::__shared_ptr_emplace<realityio::mtlx::MxDataSource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::mtlx::MxDataSource>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_285954670;
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1 + 296, *(a1 + 304));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1 + 272, *(a1 + 280));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(a1 + 248, *(a1 + 256));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(a1 + 224, *(a1 + 232));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>>>::destroy(*(a1 + 208));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1 + 176, *(a1 + 184));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>>>::destroy(*(a1 + 160));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(*(a1 + 136));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(*(a1 + 112));
  v2 = (a1 + 80);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>>>::destroy(*(a1 + 64));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(a1 + 32, *(a1 + 40));
}

uint64_t realityio::mtlx::MxDataSource::getIndex(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v5, a2);
  v3 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 8, &v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  if (a1 + 16 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 36);
  }
}

void sub_247610520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

double realityio::mtlx::MxDataSource::getPath@<D0>(realityio::mtlx::MxDataSource *this@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  v3 = *(this + 7);
  if (a2 >= ((*(this + 8) - v3) >> 3))
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  }

  else
  {
    v4 = (v3 + 8 * a2);
    v5 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, v4) + 1;

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v5, v4 + 1);
  }

  return result;
}

uint64_t realityio::mtlx::MxDataSource::getPath@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, uint64_t *a3@<X8>)
{
  (*(*this + 16))(&v6);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a3, &v6, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
}

void sub_247610644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::hasValue(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  v3 = *(this + 7);
  if (a2 < ((*(this + 8) - v3) >> 3))
  {
    v6 = (v3 + 8 * a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, v6);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, v6 + 1);
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v16, &v17, a3);
    v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 128, &v16);
    v8 = v7;
    if ((this + 136) == v7)
    {
      if ((*a3 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v7);
      }

      std::operator+<char>();
      MEMORY[0x24C1A5E00](&v14, __p);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v15, &v17, &v14);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v16, &v15);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v16 + 4, &v15 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 128, &v16);
      if (v8 == v10)
      {
        if ((*a3 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
        }

        std::operator+<char>();
        MEMORY[0x24C1A5E00](&v14, __p);
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v15, &v17, &v14);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v16, &v15);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v16 + 4, &v15 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
        if ((v14 & 7) != 0)
        {
          atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        v10 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 128, &v16);
        if (v8 == v10)
        {
          v9 = 0;
LABEL_22:
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
          return v9 & 1;
        }
      }

      v8 = v10;
    }

    v9 = *(v8 + 36);
    goto LABEL_22;
  }

  v9 = 0;
  return v9 & 1;
}

void sub_247610898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, int a19, __int16 a20, char a21, char a22)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a18);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a20);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getBaseName@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, int a3@<W3>, void *a4@<X8>)
{
  (*(*this + 16))(&v19);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v18, &v19, a2);
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 152, &v18);
  if ((this + 160) == v8)
  {
    if (a3)
    {
      v10 = std::string::basic_string[abi:ne200100]<0>(__p, "inputs:");
      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
      }

      realityio::mtlx::MxDataSource::stripLeading(&v17, __p, EmptyString);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v12 = std::string::basic_string[abi:ne200100]<0>(__p, "outputs:");
      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v13 = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      realityio::mtlx::MxDataSource::stripLeading(&v17, __p, v13);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    MEMORY[0x24C1A5E00](a4, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = v8[5];
    *a4 = v9;
    if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *a4 &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
}

void sub_247610AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a21);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v21 - 40));
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getTypeName(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  (*(*this + 16))(&v8);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v7, &v8, a3);
  v5 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 176, &v7);
  if ((this + 184) == v5)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v9);
  }

  else
  {
    v9 = v5[5];
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  return v9;
}

void sub_247610BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

BOOL realityio::mtlx::MxDataSource::getInputValue(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v4 = *(this + 7);
  if (a2 >= ((*(this + 8) - v4) >> 3))
  {
    return 0;
  }

  v8 = (v4 + 8 * a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, v8);
  v9 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, v8 + 1);
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  std::operator+<char>();
  MEMORY[0x24C1A5E00](&v16, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(__p, &v17, &v16);
  v10 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 200, __p);
  if (a4)
  {
    v11 = (this + 208) == v10;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::operator=(a4, v10 + 5);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__p);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  return (v12 & 1) == 0;
}

void sub_247610D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a17);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getInputValue(realityio::mtlx::MxDataSource *this, uint64_t a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v5 = (*(*this + 56))(this, a2, a3, v9) ^ 1;
  if (!a4)
  {
    LOBYTE(v5) = 1;
  }

  if ((v5 & 1) != 0 || !pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(v9))
  {
    v7 = 0;
  }

  else
  {
    if ((v10 & 4) != 0)
    {
      v6 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(v9);
    }

    else
    {
      v6 = v9;
    }

    pxrInternal__aapl__pxrReserved__::TfToken::operator=(a4, v6);
    v7 = 1;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v9);
  return v7;
}

void sub_247610E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getInputValue(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v5 = (*(*a1 + 56))(a1, a2, a3, &__str) ^ 1;
  if (!a4)
  {
    LOBYTE(v5) = 1;
  }

  if (v5)
  {
    goto LABEL_13;
  }

  v6 = v11;
  if (!v11)
  {
    goto LABEL_13;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16) != 12)
  {
    {
      v6 = v11;
      if ((v11 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(&__str);
      goto LABEL_8;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if ((v11 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v7 = __str;
LABEL_8:
  std::string::operator=(a4, v7);
  v8 = 1;
LABEL_14:
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__str);
  return v8;
}

void sub_247610FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(va);
  _Unwind_Resume(a1);
}

BOOL realityio::mtlx::MxDataSource::getRawConnectedSourcePaths(uint64_t a1, unsigned int a2, void *a3, int a4, char **a5)
{
  v5 = *(a1 + 56);
  if (a2 >= ((*(a1 + 64) - v5) >> 3))
  {
    return 0;
  }

  v10 = (v5 + 8 * a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, v10);
  v11 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21, v10 + 1);
  if (a4)
  {
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((*a3 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
LABEL_7:
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

LABEL_8:
  std::operator+<char>();
  MEMORY[0x24C1A5E00](&v18, __p);
  v13 = v18;
  v18 = 0;
  v19 = v13;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v19, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(__p, &v20, &v19);
  v14 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 224, __p);
  v12 = 0;
  if (a5 && a1 + 232 != v14)
  {
    if ((v14 + 40) != a5)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__assign_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a5, *(v14 + 40), *(v14 + 48), (*(v14 + 48) - *(v14 + 40)) >> 3);
    }

    v12 = *a5 != a5[1];
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__p);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
  return v12;
}

void sub_247611180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a17);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getAttributeConnections(uint64_t a1, unsigned int a2, atomic_uint **a3, char **a4)
{
  v4 = *(a1 + 56);
  if (a2 >= ((*(a1 + 64) - v4) >> 3))
  {
    return 0;
  }

  v8 = (v4 + 8 * a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, v8);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, v8 + 1);
  v9 = *a3;
  v16 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 = v10;
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v15, &v17, &v16);
  v11 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 224, &v15);
  if (a4)
  {
    v12 = a1 + 232 == v11;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (!v12 && (v11 + 40) != a4)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__assign_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(a4, *(v11 + 40), *(v11 + 48), (*(v11 + 48) - *(v11 + 40)) >> 3);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  return v13;
}

void sub_247611324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if ((a7 & 7) != 0)
  {
    atomic_fetch_add_explicit((a7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

void realityio::mtlx::MxDataSource::surfaceOutput(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
  }

  std::operator+<char>();
  v7 = std::string::append(&v11, ":surface");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v13 = v7->__r_.__value_.__r.__words[2];
  *__p = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  MEMORY[0x24C1A5E00](&v11, __p);
  v9 = v11.__r_.__value_.__r.__words[0];
  if ((v11.__r_.__value_.__s.__data_[0] & 7) != 0)
  {
    if ((atomic_fetch_add_explicit((v11.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v9 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((v11.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v11.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *a4 = this;
  *(a4 + 8) = a3;
  *(a4 + 16) = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      *(a4 + 16) = v10;
    }

    atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_247611480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::mtlx::MxDataSource::getAttrValue(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v4 = *(this + 7);
  if (a2 >= ((*(this + 8) - v4) >> 3))
  {
    return 0;
  }

  v8 = (v4 + 8 * a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, v8);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, v8 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v13, &v14, a3);
  v9 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 200, &v13);
  v10 = !a4 || (this + 208) == v9;
  v11 = v10;
  if (!v10)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::operator=(a4, v9 + 5);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
  return !v11;
}

void sub_24761159C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

BOOL realityio::mtlx::MxDataSource::getAttrToken(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  v4 = *(this + 7);
  if (a2 >= ((*(this + 8) - v4) >> 3))
  {
    return 0;
  }

  v8 = (v4 + 8 * a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, v8);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, v8 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v16, &v17, a3);
  v9 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 200, &v16);
  v10 = v9;
  if (a4)
  {
    v11 = (this + 208) == v9;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (!v11)
  {
    v13 = (v9 + 40);
    if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>((v9 + 40)))
    {
      v14 = *(v10 + 48);
      if ((v14 & 4) != 0)
      {
        v13 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(v10 + 40);
      }

      pxrInternal__aapl__pxrReserved__::TfToken::operator=(a4, v13);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
  return (v12 & 1) == 0;
}

void sub_2476116E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getAttrRoleName@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, unsigned int a3@<W1>, atomic_uint **a4@<X8>)
{
  v7 = (*(this + 7) + 8 * a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, v7);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, v7 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v12, &v13, a2);
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 248, &v12);
  if ((this + 256) == v8)
  {
    v10 = 0;
LABEL_6:
    *a4 = v10;
    goto LABEL_7;
  }

  v9 = v8[5];
  *a4 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
}

void sub_2476117E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getAttrColorSpace@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, unsigned int a3@<W1>, atomic_uint **a4@<X8>)
{
  v7 = (*(this + 7) + 8 * a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, v7);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, v7 + 1);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v12, &v13, a2);
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 272, &v12);
  if ((this + 280) == v8)
  {
    v10 = 0;
LABEL_6:
    *a4 = v10;
    goto LABEL_7;
  }

  v9 = v8[5];
  *a4 = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
}

void sub_2476118F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::nodeGraphGetList@<X0>(realityio::mtlx::MxDataSource *this@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  (*(*this + 16))(&v24);
  if (a3)
  {
    v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 80, &v24);
    if ((this + 88) != v8)
    {
      v9 = v8[5];
      for (i = v8[6]; v9 != i; ++v9)
      {
        v11 = *v9;
        if ((*v9 & 7) != 0)
        {
          add_explicit = atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
          v21 = this;
          if ((add_explicit & 1) == 0)
          {
            v11 &= 0xFFFFFFFFFFFFFFF8;
          }

          v22 = a2;
          v23 = v11;
          if ((v11 & 7) != 0)
          {
            v13 = 0;
            if ((atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v23 &= 0xFFFFFFFFFFFFFFF8;
            }
          }

          else
          {
            v13 = 1;
          }
        }

        else
        {
          v21 = this;
          v22 = a2;
          v13 = 1;
          v23 = v11;
        }

        std::vector<realityio::mtlx::NeoAttribute>::push_back[abi:ne200100](a4, &v21);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v13 & 1) == 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }
    }
  }

  else
  {
    v14 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 104, &v24);
    if ((this + 112) != v14)
    {
      v15 = v14[5];
      for (j = v14[6]; v15 != j; ++v15)
      {
        v17 = *v15;
        if ((*v15 & 7) != 0)
        {
          v18 = atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
          v21 = this;
          if ((v18 & 1) == 0)
          {
            v17 &= 0xFFFFFFFFFFFFFFF8;
          }

          v22 = a2;
          v23 = v17;
          if ((v17 & 7) != 0)
          {
            v19 = 0;
            if ((atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              v23 &= 0xFFFFFFFFFFFFFFF8;
            }
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          v21 = this;
          v22 = a2;
          v19 = 1;
          v23 = v17;
        }

        std::vector<realityio::mtlx::NeoAttribute>::push_back[abi:ne200100](a4, &v21);
        if ((v23 & 7) != 0)
        {
          atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v19 & 1) == 0)
        {
          atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v24);
}

void sub_247611B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::nodeGraphGetInput@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  v6 = this + 80;
  (*(*this + 16))(&v32);
  v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v6, &v32);
  if ((this + 88) == v7 || (v8 = v7[5], v9 = v7[6], v8 == v9))
  {
LABEL_31:
    v21 = *a2;
    if ((*a2 & 7) != 0)
    {
      v22 = (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0;
      *a4 = this;
      if (v22)
      {
        v21 &= 0xFFFFFFFFFFFFFFF8;
      }

      *(a4 + 8) = a3;
      *(a4 + 16) = v21;
      if ((v21 & 7) != 0)
      {
        v23 = (v21 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a4 + 16) = v23;
        }

        atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a4 = this;
      *(a4 + 8) = a3;
      *(a4 + 16) = v21;
    }
  }

  else
  {
    while (1)
    {
      v10 = *v8;
      if ((*v8 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v10 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = std::string::basic_string[abi:ne200100]<0>(__p, "inputs:");
      v12 = (v10 & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v12 + 4);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
      }

      realityio::mtlx::MxDataSource::stripLeading(&v31, __p, EmptyString);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v15 = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v15 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
      }

      v16 = *(v15 + 23);
      if (v16 >= 0)
      {
        v17 = *(v15 + 23);
      }

      else
      {
        v17 = v15[1];
      }

      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      v19 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      if (v17 == size)
      {
        if (v16 < 0)
        {
          v15 = *v15;
        }

        v20 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v31 : v31.__r_.__value_.__r.__words[0];
        if (!memcmp(v15, v20, v17))
        {
          break;
        }
      }

      if (v19 < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_release);
      }

      if (++v8 == v9)
      {
        goto LABEL_31;
      }
    }

    v24 = *a2;
    if ((*a2 & 7) != 0)
    {
      v22 = (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0;
      *a4 = this;
      if (v22)
      {
        v24 &= 0xFFFFFFFFFFFFFFF8;
      }

      *(a4 + 8) = a3;
      *(a4 + 16) = v24;
      if ((v24 & 7) != 0)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a4 + 16) = v25;
        }

        atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a4 = this;
      *(a4 + 8) = a3;
      *(a4 + 16) = v24;
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
}

uint64_t realityio::mtlx::MxDataSource::nodeGraphGetOutput@<X0>(realityio::mtlx::MxDataSource *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  v6 = this + 104;
  (*(*this + 16))(&v32);
  v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v6, &v32);
  if ((this + 112) == v7 || (v8 = v7[5], v9 = v7[6], v8 == v9))
  {
LABEL_31:
    v21 = *a2;
    if ((*a2 & 7) != 0)
    {
      v22 = (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0;
      *a4 = this;
      if (v22)
      {
        v21 &= 0xFFFFFFFFFFFFFFF8;
      }

      *(a4 + 8) = a3;
      *(a4 + 16) = v21;
      if ((v21 & 7) != 0)
      {
        v23 = (v21 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a4 + 16) = v23;
        }

        atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a4 = this;
      *(a4 + 8) = a3;
      *(a4 + 16) = v21;
    }
  }

  else
  {
    while (1)
    {
      v10 = *v8;
      if ((*v8 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v10 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11 = std::string::basic_string[abi:ne200100]<0>(__p, "outputs:");
      v12 = (v10 & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v12 + 4);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
      }

      realityio::mtlx::MxDataSource::stripLeading(&v31, __p, EmptyString);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v15 = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v15 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
      }

      v16 = *(v15 + 23);
      if (v16 >= 0)
      {
        v17 = *(v15 + 23);
      }

      else
      {
        v17 = v15[1];
      }

      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      v19 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      if (v17 == size)
      {
        if (v16 < 0)
        {
          v15 = *v15;
        }

        v20 = (v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v31 : v31.__r_.__value_.__r.__words[0];
        if (!memcmp(v15, v20, v17))
        {
          break;
        }
      }

      if (v19 < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_release);
      }

      if (++v8 == v9)
      {
        goto LABEL_31;
      }
    }

    v24 = *a2;
    if ((*a2 & 7) != 0)
    {
      v22 = (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0;
      *a4 = this;
      if (v22)
      {
        v24 &= 0xFFFFFFFFFFFFFFF8;
      }

      *(a4 + 8) = a3;
      *(a4 + 16) = v24;
      if ((v24 & 7) != 0)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a4 + 16) = v25;
        }

        atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a4 = this;
      *(a4 + 8) = a3;
      *(a4 + 16) = v24;
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v32);
}

uint64_t realityio::mtlx::MxDataSource::gatherSources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 80;
  (*(*a1 + 16))(&v19);
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(v5, &v19);
  if (a1 + 88 != v6)
  {
    v7 = *(v6 + 40);
    for (i = *(v6 + 48); v7 != i; ++v7)
    {
      v9 = *v7;
      v18 = v9;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v18 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v17, &v19, &v18);
      v10 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 224, &v17);
      if (a1 + 232 != v10)
      {
        realityio::mtlx::MxDataSource::mergeSourcePrimIndices(a1, *(v10 + 40), *(v10 + 48), a3);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  v11 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 104, &v19);
  if (a1 + 112 != v11)
  {
    v12 = *(v11 + 40);
    for (j = *(v11 + 48); v12 != j; ++v12)
    {
      v14 = *v12;
      v18 = v14;
      if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v18 &= 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v17, &v19, &v18);
      v15 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 224, &v17);
      if (a1 + 232 != v15)
      {
        realityio::mtlx::MxDataSource::mergeSourcePrimIndices(a1, *(v15 + 40), *(v15 + 48), a3);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
}

void sub_2476123E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::shaderUsesSecondUV(uint64_t a1, uint64_t *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  MEMORY[0x24C1A5DE0](&v12, "info:id");
  v3 = *(a2 + 2);
  v16 = *a2;
  v17 = v3;
  v18 = v12;
  if ((v12 & 7) != 0)
  {
    v4 = v12 & 0xFFFFFFFFFFFFFFF8;
    if ((atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v18 = v4;
    }
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = 0;
  result = (*(*v16 + 112))(v16, v17, &v18, &v15);
  if (result)
  {
    MEMORY[0x24C1A5DE0](&v12, "ND_texcoord");
    v6 = v12 ^ v15;
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v6 > 7)
    {
      goto LABEL_30;
    }

    MEMORY[0x24C1A5DE0](&v19, "index");
    v7 = *a2;
    v8 = *(a2 + 2);
    v12 = *a2;
    v13 = v8;
    v14 = v19;
    if ((v19 & 7) != 0)
    {
      v9 = v19 & 0xFFFFFFFFFFFFFFF8;
      if ((atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v14 = v9;
      }
    }

    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v7 = v12;
      v8 = v13;
    }

    v20 = 0;
    if ((*(*v7 + 104))(v7, v8, &v14, &v19))
    {
      v10 = v20;
      if (v20)
      {
        if (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16) == 5)
        {
          if ((v20 & 4) == 0)
          {
LABEL_19:
            v11 = &v19;
            goto LABEL_20;
          }

LABEL_27:
          v11 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(&v19);
LABEL_20:
          if (*v11 == 1)
          {
            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v19);
            if ((v14 & 7) != 0)
            {
              atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            result = 1;
            goto LABEL_31;
          }

          goto LABEL_28;
        }

        if ((v20 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v19, MEMORY[0x277D827C0]))
        {
          v10 = v20;
          if ((v20 & 4) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_27;
        }
      }
    }

LABEL_28:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v19);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

LABEL_30:
    result = 0;
  }

LABEL_31:
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_2476126E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

BOOL realityio::mtlx::MxDataSource::attrIsValid(realityio::mtlx::MxDataSource *this, unsigned int a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  (*(*this + 16))(&v8);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v7, &v8, a3);
  v5 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 176, &v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  return (this + 184) != v5;
}

void sub_247612828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::primType(realityio::mtlx::MxDataSource *this, unsigned int a2)
{
  v4 = *(this + 7);
  if (a2 >= ((*(this + 8) - v4) >> 3))
  {
    return 3;
  }

  v7[5] = v2;
  v7[6] = v3;
  v5 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 32, v7, (v4 + 8 * a2));
  if (!v5)
  {
    operator new();
  }

  return *(v5 + 36);
}

uint64_t realityio::mtlx::MxDataSource::getShadeInputs@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  (*(**a2 + 16))(&v25);
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 80, &v25);
  if (a1 + 88 != v6)
  {
    v8 = *(v6 + 40);
    for (i = *(v6 + 48); v8 != i; ++v8)
    {
      v9 = *v8;
      if ((*v8 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v9 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = a2[2];
      if ((v9 & 7) != 0)
      {
        if (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
        {
          v11 = v9;
        }

        else
        {
          v11 = v9 & 0xFFFFFFFFFFFFFFF8;
        }

        if ((v11 & 7) != 0)
        {
          v12 = 0;
          v13 = v11;
          if ((atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v11 &= 0xFFFFFFFFFFFFFFF8;
          }
        }

        else
        {
          v12 = 1;
          v13 = v11;
        }
      }

      else
      {
        v12 = 1;
        v13 = v9;
        v11 = v9;
      }

      v15 = a3[1];
      v14 = a3[2];
      if (v15 >= v14)
      {
        v23 = v13;
        v24 = v12;
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
        v18 = v17 + 1;
        if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x555555555555555)
        {
          v20 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v20 = v18;
        }

        v26[4] = a3;
        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeInput>>(a3, v20);
        }

        v21 = 24 * v17;
        v26[0] = 0;
        v26[1] = v21;
        v26[3] = 0;
        *v21 = a1;
        *(v21 + 8) = v10;
        *(v21 + 16) = v11;
        v26[2] = 24 * v17 + 24;
        std::vector<realityio::mtlx::NeoShadeInput>::__swap_out_circular_buffer(a3, v26);
        v16 = a3[1];
        std::__split_buffer<realityio::mtlx::NeoShadeInput>::~__split_buffer(v26);
        v12 = v24;
        v13 = v23;
      }

      else
      {
        *v15 = a1;
        *(v15 + 8) = v10;
        v16 = v15 + 24;
        *(v15 + 16) = v11;
      }

      a3[1] = v16;
      if ((v12 & 1) == 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
}

void sub_247612B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::MxDataSource::getShadeOutputs@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  (*(**a2 + 16))(&v25);
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 104, &v25);
  if (a1 + 112 != v6)
  {
    v8 = *(v6 + 40);
    for (i = *(v6 + 48); v8 != i; ++v8)
    {
      v9 = *v8;
      if ((*v8 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v9 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10 = a2[2];
      if ((v9 & 7) != 0)
      {
        if (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed))
        {
          v11 = v9;
        }

        else
        {
          v11 = v9 & 0xFFFFFFFFFFFFFFF8;
        }

        if ((v11 & 7) != 0)
        {
          v12 = 0;
          v13 = v11;
          if ((atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v11 &= 0xFFFFFFFFFFFFFFF8;
          }
        }

        else
        {
          v12 = 1;
          v13 = v11;
        }
      }

      else
      {
        v12 = 1;
        v13 = v9;
        v11 = v9;
      }

      v15 = a3[1];
      v14 = a3[2];
      if (v15 >= v14)
      {
        v23 = v13;
        v24 = v12;
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a3) >> 3);
        v18 = v17 + 1;
        if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a3) >> 3);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x555555555555555)
        {
          v20 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v20 = v18;
        }

        v26[4] = a3;
        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeInput>>(a3, v20);
        }

        v21 = 24 * v17;
        v26[0] = 0;
        v26[1] = v21;
        v26[3] = 0;
        *v21 = a1;
        *(v21 + 8) = v10;
        *(v21 + 16) = v11;
        v26[2] = 24 * v17 + 24;
        std::vector<realityio::mtlx::NeoShadeInput>::__swap_out_circular_buffer(a3, v26);
        v16 = a3[1];
        std::__split_buffer<realityio::mtlx::NeoShadeInput>::~__split_buffer(v26);
        v12 = v24;
        v13 = v23;
      }

      else
      {
        *v15 = a1;
        *(v15 + 8) = v10;
        v16 = v15 + 24;
        *(v15 + 16) = v11;
      }

      a3[1] = v16;
      if ((v12 & 1) == 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
}

void sub_247612E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  std::vector<realityio::mtlx::NeoShadeInput>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **realityio::mtlx::MxDataSource::assignGamut(uint64_t a1, const void **a2, _BYTE *a3, uint64_t a4)
{
  (*(**a4 + 24))(&v9);
  v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1 + 272, &v9);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  if (a1 + 280 != v7)
  {
    return realityio::assignGamutFromToken(a2, a3, (v7 + 40));
  }

  return result;
}

void sub_247612FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

void realityio::mtlx::MxDataSource::textureSettings(unsigned int *a1@<X1>, std::string *a2@<X2>, uint64_t a3@<X8>)
{
  v9[2] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(a3, "");
  *(a3 + 24) = 0;
  v6 = (*(**a1 + 128))(v9);
  if ((v9[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v9[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
  }

  std::string::operator=(a3, EmptyString);
  if ((v9[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9[1] = 0;
  (*(**a1 + 104))(*a1, a1[2], a1 + 4, v9);
  v8 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v9);
  std::string::operator=(a2, v8);
  std::string::operator=(a2 + 1, v8 + 1);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v9);
}

void sub_247613110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::MxDataSource::stripLeading(std::string *this, char *a2, std::string *__str)
{
  v5 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v6 = v5;
  v7 = __str->__r_.__value_.__r.__words[0];
  size = __str->__r_.__value_.__l.__size_;
  if ((v5 & 0x80u) == 0)
  {
    v9 = __str;
  }

  else
  {
    v9 = __str->__r_.__value_.__r.__words[0];
  }

  __s = v9;
  if ((v5 & 0x80u) != 0)
  {
    v5 = __str->__r_.__value_.__l.__size_;
  }

  v10 = a2[23];
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = a2[23];
  }

  else
  {
    v12 = *(a2 + 1);
  }

  if (v12)
  {
    if (v5 >= v12)
    {
      v13 = v9;
      v14 = (v9 + v5);
      v15 = *v11;
      do
      {
        v16 = v5 - v12;
        if (v16 == -1)
        {
          break;
        }

        v17 = memchr(v13, v15, v16 + 1);
        if (!v17)
        {
          break;
        }

        v18 = v17;
        if (!memcmp(v17, v11, v12))
        {
          if (v18 == v14 || v18 != __s)
          {
            break;
          }

          goto LABEL_27;
        }

        v13 = (&v18->__r_.__value_.__l.__data_ + 1);
        v5 = v14 - (&v18->__r_.__value_.__l.__data_ + 1);
      }

      while (v5 >= v12);
    }

    if (v6 < 0)
    {

      std::string::__init_copy_ctor_external(this, v7, size);
    }

    else
    {
      *&this->__r_.__value_.__l.__data_ = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
    }
  }

  else
  {
LABEL_27:
    std::string::basic_string(this, __str, v12, 0xFFFFFFFFFFFFFFFFLL, &v20);
  }
}

uint64_t realityio::mtlx::MxDataSource::mergeSourcePrimIndices(uint64_t result, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = result;
    do
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, v6);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, v6 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, &v11);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v12);
      v10 = (*(*v7 + 8))(v7, &v8);
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(a4, &v10, &v10);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
      v6 += 2;
    }

    while (v6 != a3);
  }

  return result;
}

void sub_2476133AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, char a13)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a11);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a13);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 32));
    operator delete(a2);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(a1, a2[1]);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a2 + 5));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 4));

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,pxrInternal__aapl__pxrReserved__::SdfValueTypeName>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,BOOL>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,BOOL>,0>(a1 + 28);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>>>::destroy(*(a1 + 1));
    v2 = (a1 + 40);
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 32));
    operator delete(a1);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::mtlx::NeoPrimType>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::mtlx::NeoPrimType>,0>(a1 + 28);

    operator delete(a1);
  }
}

uint64_t realityio::replication::SetFieldOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v9))
  {
    v8 = 0;
    if (realityio::replication::read(a1, a2, &v8))
    {
      v16 = 0;
      if (realityio::replication::read(a1, a2, v15))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, &v9);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, &v10);
        v13 = v8;
        if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v13 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v14, v15);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v11);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v12);
        v6 = v13;
        *(a3 + 8) = v13;
        if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 8) &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::VtValue((a3 + 16), v14);
        *(a3 + 32) = 1;
        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v14);
        if ((v13 & 7) != 0)
        {
          atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
      }

      else
      {
        *a3 = 0;
        *(a3 + 32) = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
    }

    else
    {
      *a3 = 0;
      *(a3 + 32) = 0;
    }

    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 32) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
}

void sub_247613808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::replication::SetFieldOperation::Serialize(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  realityio::replication::write(a2, a1 + 1);

  realityio::replication::write(a2, (a1 + 16));
}

uint64_t realityio::replication::SetFieldDictValueByKeyOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v11))
  {
    v10 = 0;
    if (realityio::replication::read(a1, a2, &v10))
    {
      v9 = 0;
      if (realityio::replication::read(a1, a2, &v9))
      {
        v19 = 0;
        if (realityio::replication::read(a1, a2, v18))
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, &v11);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, &v12);
          v15 = v10;
          if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v15 &= 0xFFFFFFFFFFFFFFF8;
          }

          v16 = v9;
          if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v16 &= 0xFFFFFFFFFFFFFFF8;
          }

          pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v17, v18);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v13);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v14);
          v6 = v15;
          *(a3 + 8) = v15;
          if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *(a3 + 8) &= 0xFFFFFFFFFFFFFFF8;
          }

          v7 = v16;
          *(a3 + 16) = v16;
          if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *(a3 + 16) &= 0xFFFFFFFFFFFFFFF8;
          }

          pxrInternal__aapl__pxrReserved__::VtValue::VtValue((a3 + 24), v17);
          *(a3 + 40) = 1;
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v17);
          if ((v16 & 7) != 0)
          {
            atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v15 & 7) != 0)
          {
            atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
        }

        else
        {
          *a3 = 0;
          *(a3 + 40) = 0;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v18);
      }

      else
      {
        *a3 = 0;
        *(a3 + 40) = 0;
      }

      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 40) = 0;
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 40) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
}

void sub_247613BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::replication::SetFieldDictValueByKeyOperation::Serialize(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  realityio::replication::write(a2, a1 + 1);
  realityio::replication::write(a2, a1 + 2);

  realityio::replication::write(a2, (a1 + 24));
}

uint64_t realityio::replication::SetTimeSampleOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v8) && (v7 = 0, realityio::replication::details::readBuffer<double,0>(a1, a2, &v7, 1uLL)))
  {
    v15 = 0;
    if (realityio::replication::read(a1, a2, v14))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, &v8);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, &v9);
      v12 = v7;
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v13, v14);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v10);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v11);
      *(a3 + 8) = v12;
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue((a3 + 16), v13);
      *(a3 + 32) = 1;
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v13);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
    }

    else
    {
      *a3 = 0;
      *(a3 + 32) = 0;
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v14);
  }

  else
  {
    *a3 = 0;
    *(a3 + 32) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
}

void sub_247613E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::replication::SetTimeSampleOperation::Serialize(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  std::ostream::write();

  realityio::replication::write(a2, (a1 + 16));
}

uint64_t realityio::replication::CreateSpecOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v13) && (v12 = 0, realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfSpecType,0>(a1, a2, &v12, 1uLL)) && (v11 = 0, realityio::replication::details::readBuffer<BOOL,0>(a1, a2, &v11, 1)))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, &v13);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, &v14);
    v9 = v12;
    v10 = v11;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v8);
    *(a3 + 8) = v9;
    *(a3 + 12) = v10;
    *(a3 + 16) = 1;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
}

void sub_247614078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::replication::CreateSpecOperation::Serialize(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  std::ostream::write();

  return std::ostream::write();
}

uint64_t realityio::replication::DeleteSpecOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v11) && (v10 = 0, realityio::replication::details::readBuffer<BOOL,0>(a1, a2, &v10, 1)))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, &v11);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, &v12);
    v9 = v10;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v7);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v8);
    *(a3 + 8) = v9;
    *(a3 + 12) = 1;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  }

  else
  {
    *a3 = 0;
    *(a3 + 12) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
}

void sub_2476141F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::replication::DeleteSpecOperation::Serialize(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);

  return std::ostream::write();
}

uint64_t realityio::replication::MoveSpecOperation::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v13))
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    if (realityio::replication::read(a1, a2, &v11))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, &v13);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, &v14);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v11);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, &v12);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v7);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v8);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 8), &v9);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 12), &v10);
      *(a3 + 16) = 1;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
    }

    else
    {
      *a3 = 0;
      *(a3 + 16) = 0;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  }

  else
  {
    *a3 = 0;
    *(a3 + 16) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
}

void sub_2476143D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va1);
  _Unwind_Resume(a1);
}

uint64_t realityio::replication::MoveSpecOperation::Serialize(uint64_t a1, uint64_t a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 8));

  return realityio::replication::write(a2, v5);
}

uint64_t realityio::replication::PushChildOperation_TfToken::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v15))
  {
    v14 = 0;
    if (realityio::replication::read(a1, a2, &v14))
    {
      v13 = 0;
      if (realityio::replication::read(a1, a2, &v13))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v15);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, &v16);
        v11 = v14;
        if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v11 &= 0xFFFFFFFFFFFFFFF8;
        }

        v12 = v13;
        if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v12 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v9);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v10);
        v6 = v11;
        *(a3 + 8) = v11;
        if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 8) &= 0xFFFFFFFFFFFFFFF8;
        }

        v7 = v12;
        *(a3 + 16) = v12;
        if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 16) &= 0xFFFFFFFFFFFFFFF8;
        }

        *(a3 + 24) = 1;
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
      }

      else
      {
        *a3 = 0;
        *(a3 + 24) = 0;
      }

      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 24) = 0;
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
}

void sub_24761467C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::replication::PushChildOperation_TfToken::Serialize(pxrInternal__aapl__pxrReserved__::SdfPath *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  realityio::replication::write(a2, a1 + 1);

  return realityio::replication::write(a2, a1 + 2);
}

uint64_t realityio::replication::PushChildOperation_SdfPath::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v16))
  {
    v15 = 0;
    if (realityio::replication::read(a1, a2, &v15))
    {
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      if (realityio::replication::read(a1, a2, &v13))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v8, &v16);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v17);
        v10 = v15;
        if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v10 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, &v13);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v12, &v14);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v8);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v9);
        v6 = v10;
        *(a3 + 8) = v10;
        if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 8) &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 16), &v11);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 20), &v12);
        *(a3 + 24) = 1;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
        if ((v10 & 7) != 0)
        {
          atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
      }

      else
      {
        *a3 = 0;
        *(a3 + 24) = 0;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
    }

    else
    {
      *a3 = 0;
      *(a3 + 24) = 0;
    }

    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
}

void sub_247614948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va1);
  _Unwind_Resume(a1);
}

uint64_t realityio::replication::PushChildOperation_SdfPath::Serialize(void *a1, pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a1);
  realityio::replication::write(a2, String);
  realityio::replication::write(a2, a1 + 1);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 2));

  return realityio::replication::write(a2, v5);
}

uint64_t realityio::replication::PopChildOperation_TfToken::Deserialize@<X0>(realityio *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  if (realityio::replication::read(a1, a2, &v15))
  {
    v14 = 0;
    if (realityio::replication::read(a1, a2, &v14))
    {
      v13 = 0;
      if (realityio::replication::read(a1, a2, &v13))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, &v15);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, &v16);
        v11 = v14;
        if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v11 &= 0xFFFFFFFFFFFFFFF8;
        }

        v12 = v13;
        if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v12 &= 0xFFFFFFFFFFFFFFF8;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a3, &v9);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 4), &v10);
        v6 = v11;
        *(a3 + 8) = v11;
        if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 8) &= 0xFFFFFFFFFFFFFFF8;
        }

        v7 = v12;
        *(a3 + 16) = v12;
        if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(a3 + 16) &= 0xFFFFFFFFFFFFFFF8;
        }

        *(a3 + 24) = 1;
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
      }

      else
      {
        *a3 = 0;
        *(a3 + 24) = 0;
      }

      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      *a3 = 0;
      *(a3 + 24) = 0;
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
}

void sub_247614C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

void realityio::replication::SetFieldOperation::~SetFieldOperation(realityio::replication::SetFieldOperation *this)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((this + 16));
  v2 = *(this + 1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void realityio::replication::SetFieldDictValueByKeyOperation::~SetFieldDictValueByKeyOperation(realityio::replication::SetFieldDictValueByKeyOperation *this)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((this + 24));
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

void realityio::replication::SetTimeSampleOperation::~SetTimeSampleOperation(realityio::replication::SetTimeSampleOperation *this)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((this + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

BOOL realityio::replication::details::readBuffer<pxrInternal__aapl__pxrReserved__::SdfSpecType,0>(realityio *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    v4 = *(realityio::logObjects(a1) + 40);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v6 = "Read size overflowed";
    v7 = &v11;
LABEL_7:
    _os_log_error_impl(&dword_247485000, v4, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    return 0;
  }

  v9 = std::istream::read();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    v4 = *(realityio::logObjects(v9) + 40);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v10 = 0;
    v6 = "Failed to read";
    v7 = &v10;
    goto LABEL_7;
  }

  return 1;
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::shared_ptr<Exec::ExecAction>>::~pair(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void realityio::ImportSessionV2::getAction(realityio::ImportSessionV2 *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X3>, void *a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *(this + 166);
  if (!v5)
  {
    goto LABEL_27;
  }

  v7 = (this + 1328);
  v8 = (this + 1328);
  do
  {
    v9 = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](this + 1320, v5 + 4, a2);
    v10 = v9;
    if (!v9)
    {
      v8 = v5;
    }

    v5 = v5[v10];
  }

  while (v5);
  if (v8 == v7 || std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](this + 1320, a2, v8 + 4))
  {
LABEL_27:
    if ((atomic_load_explicit(&_MergedGlobals_30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_30))
    {
      qword_27EE53200 = 0;
      qword_27EE531F8 = 0;
      qword_27EE531F0 = &qword_27EE531F8;
      __cxa_guard_release(&_MergedGlobals_30);
    }

    if (!std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__count_unique<pxrInternal__aapl__pxrReserved__::TfToken>(&qword_27EE531F0, a2))
    {
      v11 = std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&qword_27EE531F0, a2, a2);
      v12 = *(realityio::logObjects(v11) + 24);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = *a2 & 0xFFFFFFFFFFFFFFF8;
        if (v14)
        {
          v15 = (v14 + 16);
          if (*(v14 + 39) < 0)
          {
            v15 = *v15;
          }
        }

        else
        {
          v15 = "";
        }

        v16 = 136315138;
        v17 = v15;
        _os_log_error_impl(&dword_247485000, v12, OS_LOG_TYPE_ERROR, "Un-handled rule %s\n", &v16, 0xCu);
      }
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v13 = v8[6];
    *a3 = v8[5];
    a3[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void realityio::ImportSessionV2::ImportSessionV2(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const void **a5, uint64_t a6)
{
  v10[113] = *MEMORY[0x277D85DE8];
  v10[0] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v10);
  realityio::ImportSessionImpl::ImportSessionImpl(a1, v10, a3, a4, a5);
}

void sub_247617118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, pxrInternal__aapl__pxrReserved__::TfWeakBase *a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, atomic_uint *a17, atomic_uint *a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a17);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a18);
  while (v28 != &a26)
  {
    v28 -= 24;
    std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,std::shared_ptr<Exec::ExecAction>>::~pair(v28);
  }

  std::recursive_mutex::~recursive_mutex((v27 + 1520));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v27 + 1488);
  v30 = *(v27 + 1352);
  if (v30)
  {
    if (atomic_fetch_add_explicit(v30 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v30 + 8))(v30);
    }
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(*a9);
  TgECS::~TgECS((v27 + 816));
  Exec::~Exec((v27 + 432));
  realityio::WrappedRERef<REEntity *>::~WrappedRERef((v27 + 424));
  std::unique_ptr<realityio::ExecContext>::reset[abi:ne200100]((v27 + 416), 0);
  pxrInternal__aapl__pxrReserved__::TfWeakBase::~TfWeakBase(a10, v31);
  realityio::ImportSessionImpl::~ImportSessionImpl(v27);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV2::setRootEntity(std::chrono::steady_clock::time_point *this)
{
  v14 = *MEMORY[0x277D85DE8];
  this[184].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v11 = 0;
  if (this[52].__d_.__rep_ && this[5].__d_.__rep_)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    rep = this[52].__d_.__rep_;
    v3 = this[5].__d_.__rep_;
    v4 = *(v3 + 472);
    rep[25] = *(v3 + 40);
    rep[26] = v4;
    rep[27] = v3;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((rep + 28), buf);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(rep + 228, &buf[4]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
  }

  TgECS::eval(&v8, &this[102]);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(buf, &v10);
    v11 = v9;
    if ((~v9 & 3) != 0)
    {
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 40))(&v8, &v10);
    }

    else
    {
      v10 = v8;
    }

    v9 = 0;
    if (v13)
    {
      (*(v13 + 32))(buf);
    }
  }

  else
  {
    v11 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v8);
  v5 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REEntity *>>(&v10);
  if (v5)
  {
    *buf = 0;
    v6 = pxrInternal__aapl__pxrReserved__::VtValue::Get<realityio::WrappedRERef<REEntity *>>(&v10);
    realityio::WrappedRERef<REAsset *>::operator=(&this[53].__d_.__rep_, v6);
    realityio::WrappedRERef<REEntity *>::~WrappedRERef(buf);
  }

  else
  {
    v7 = *realityio::logObjects(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247485000, v7, OS_LOG_TYPE_ERROR, "Update did not produce a root entity", buf, 2u);
    }
  }

  realityio::RioTimer::stop(this + 181);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v10);
}

void sub_24761764C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::ImportSessionV2::changeNoticeCB(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged *this)
{
  ResyncedPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetResyncedPaths(this);
  v5 = ResyncedPaths + 1;
  v6 = *ResyncedPaths;
  if (*ResyncedPaths != ResyncedPaths + 1)
  {
    do
    {
      Exec::setHierarchyDirty((a1 + 432), (v6 + 4), 1);
      v7 = v6[1];
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
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != v5);
  }

  ChangedInfoOnlyPaths = pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged::GetChangedInfoOnlyPaths(this);
  v11 = ChangedInfoOnlyPaths + 1;
  v12 = *ChangedInfoOnlyPaths;
  if (*ChangedInfoOnlyPaths != ChangedInfoOnlyPaths + 1)
  {
    do
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath((v12 + 4)))
      {
        Exec::setDirty((a1 + 432), (v12 + 4), 1);
      }

      else
      {
        Exec::setPropertiesDirty((a1 + 432), (v12 + 4), 1);
        if (v12[4] == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v13))
        {
          v14 = atomic_load(&realityio::tokens::StageTokens);
          if (!v14)
          {
            pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::StageTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::StageTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::StageTokens);
          }

          v15 = *v14 & 0xFFFFFFFFFFFFFFF8;
          if (v15)
          {
            v16 = (v15 + 16);
            if (*(v15 + 39) < 0)
            {
              v16 = *v16;
            }
          }

          else
          {
            v16 = "";
          }

          std::string::basic_string[abi:ne200100]<0>(__p, v16);
          MEMORY[0x24C1A5D70](v21, __p);
          Exec::setPropertiesDirty((a1 + 432), v21, 1);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v21);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v17 = v12[1];
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
          v18 = v12[2];
          v9 = *v18 == v12;
          v12 = v18;
        }

        while (!v9);
      }

      v12 = v18;
    }

    while (v18 != v11);
  }
}

void sub_247617858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void realityio::ImportSessionV2::~ImportSessionV2(realityio::ImportSessionV2 *this)
{
  *this = &unk_285954780;
  *(this + 50) = &unk_285954800;
  std::recursive_mutex::~recursive_mutex((this + 1520));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 1488);
  v2 = *(this + 169);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(*(this + 166));
  TgECS::~TgECS((this + 816));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,realityio::SdfPathHashCompare,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,realityio::SdfPathHashCompare,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>>>::~__hash_table(this + 672);
  pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::~SdfPathTable(this + 632);
  v3 = *(this + 75);
  if (v3)
  {
    *(this + 76) = v3;
    operator delete(v3);
  }

  realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::~Graph(this + 496);
  std::mutex::~mutex((this + 432));
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this + 53);
  std::unique_ptr<realityio::ExecContext>::reset[abi:ne200100](this + 52, 0);
  pxrInternal__aapl__pxrReserved__::TfWeakBase::~TfWeakBase((this + 408), v4);

  realityio::ImportSessionImpl::~ImportSessionImpl(this);
}

{
  realityio::ImportSessionV2::~ImportSessionV2(this);

  JUMPOUT(0x24C1A91B0);
}

void non-virtual thunk torealityio::ImportSessionV2::~ImportSessionV2(realityio::ImportSessionV2 *this)
{
  realityio::ImportSessionV2::~ImportSessionV2((this - 400));
}

{
  realityio::ImportSessionV2::~ImportSessionV2((this - 400));

  JUMPOUT(0x24C1A91B0);
}

void realityio::ImportSessionV2::updateLiveScene(realityio::ImportSessionV2 *this)
{
  *(this + 920) = *(this + 272);
  *(this + 174) = std::chrono::steady_clock::now();
  *(this + 179) = std::chrono::steady_clock::now();
  v6[0] = *(*(this + 1) + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v6);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v6);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetUsedLayers(v7, v2);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v6);
  realityio::MultipleLayerMutex::MultipleLayerMutex<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>>(v6, v7[0], v7[1]);
  realityio::MultipleLayerMutex::lock(v6);
  if (*(this + 1360) == 1)
  {
    v3 = atomic_load(off_278EA82B0);
    if (!v3)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::TraceCollector::Clear(v3);
    v4 = atomic_load(off_278EA82B0);
    if (!v4)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
    }

    pxrInternal__aapl__pxrReserved__::TraceCollector::SetEnabled(v4);
  }

  TgECS::update((this + 816));
  realityio::RioTimer::stop(this + 176);
  std::chrono::steady_clock::now();
  realityio::ImportSessionV2::setRootEntity(this);
  realityio::RioTimer::stop(this + 171);
  realityio::MultipleLayerMutex::unlock(v6);
  std::recursive_mutex::lock((this + 1520));
  v5 = *(this + 189);
  if (v5)
  {
    (*(*v5 + 48))(v5);
  }

  std::recursive_mutex::unlock((this + 1520));
  v8 = v6;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v6[0] = v7;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](v6);
}

void sub_247617B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  std::recursive_mutex::unlock((v13 + 1520));
  *(v14 - 24) = &a10;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100]((v14 - 24));
  a10 = &a13;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV2::setRootEntity(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  *(a1 + 920) = *(a1 + 272);
  v6[0] = a2;
  if (a2)
  {
    RERetain();
  }

  v4 = *(a1 + 424);
  if (v4 != a2)
  {
    *(a1 + 424) = a2;
    v6[0] = v4;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v6);
  v5 = a2;
  if (a2)
  {
    RERetain();
  }

  v6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REEntity *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REEntity *>>::_PlaceCopy(v6, &v5);
}

void sub_247617D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

atomic_uint **realityio::ImportSessionV2::setStage(uint64_t a1, atomic_uint **a2)
{
  v5 = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v5);
  v3 = *(a1 + 904);
  *(a1 + 904) = v5;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v5);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::_RemoveRef(a1 + 904, v3);
  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v5);
}

void sub_247617E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSessionV2::getEntityAtPrimPath(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = atomic_load(&realityio::tokens::EcsTokens);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::EcsTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v7, a2, (v3 + 152));
  Exec::getValue(&v8, (a1 + 432), &v7);
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<realityio::WrappedRERef<REEntity *>>(&v8))
  {
    if ((v9 & 4) != 0)
    {
      v4 = (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(&v8);
    }

    else
    {
      v4 = v8;
    }

    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
  return v5;
}

void sub_247617F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::ImportSessionV2::dumpDiagnostics(void *a1, const void **a2)
{
  v8 = *(a1[1] + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v8);
  v4 = a1[2];
  v5 = (*(*a1 + 16))(a1);
  v6 = realityio::internal::dumpDiagnostics(a2, &v8, v4, v5);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v8);
  return v6;
}

void sub_24761803C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSessionV2::dumpDependencies(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = fopen(v3, "w");
  if (v4)
  {
    v5 = v4;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
    Exec::dumpDotfile((a1 + 432), &v12);
    std::stringbuf::str();
    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    fprintf(v5, "\n%s\n", p_p);
    if (v10 < 0)
    {
      operator delete(__p);
    }

    v11[0] = *MEMORY[0x277D82818];
    v7 = *(MEMORY[0x277D82818] + 72);
    *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v12 = v7;
    v13 = MEMORY[0x277D82878] + 16;
    if (v15 < 0)
    {
      operator delete(v14[7].__locale_);
    }

    v13 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v14);
    std::iostream::~basic_iostream();
    MEMORY[0x24C1A9110](&v16);
    fclose(v5);
  }

  return 1;
}

void sub_247618240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a14, MEMORY[0x277D82818]);
  MEMORY[0x24C1A9110](&a30);
  _Unwind_Resume(a1);
}

void timerStat(uint64_t a1, const void **a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = __p;
  std::string::basic_string[abi:ne200100](__p, v5 + 6);
  if (v17 < 0)
  {
    v6 = __p[0];
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    memmove(v6, v7, v5);
  }

  strcpy(v6 + v5, ":total");
  v8 = ((((std::chrono::steady_clock::now().__d_.__rep_ - *(a3 + 24)) / 1000) / 1000.0) / 1000.0);
  v19 = &unk_285946DC3;
  v18 = v8;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  v10 = __p;
  std::string::basic_string[abi:ne200100](__p, v9 + 6);
  if (v17 < 0)
  {
    v10 = __p[0];
  }

  if (v9)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, ":count");
  v18 = *(a3 + 16);
  v19 = &unk_285951DD3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 23) >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = a2[1];
  }

  v13 = __p;
  std::string::basic_string[abi:ne200100](__p, v12 + 4);
  if (v17 < 0)
  {
    v13 = __p[0];
  }

  if (v12)
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, ":avg");
  v15 = ((((std::chrono::steady_clock::now().__d_.__rep_ - *(a3 + 24)) / 1000) / 1000.0) / 1000.0) / *(a3 + 16);
  v19 = &unk_285946DC3;
  v18 = v15;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_247618570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TraceReporter>::operator->(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3 || ((v4 = *(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14), result = *a1, v4 == 1) ? (v6 = result == 0) : (v6 = 1), v6))
  {
    v7 = strrchr[abi:ne200100]("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
    FunctionLite::substringFromPreviousDelim("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v7, 0x2F);
    return pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  }

  return result;
}

uint64_t realityio::ImportSessionV2::gatherFaultRecords(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(char const*,ExecFault::Type,char const*)>::__value_func[abi:ne200100](v4, a2);
  Exec::gatherFaultRecords(a1 + 432, v4);
  return std::__function::__value_func<void ()(char const*,ExecFault::Type,char const*)>::~__value_func[abi:ne200100](v4);
}

void sub_2476186B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(char const*,ExecFault::Type,char const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::ImportSessionV2::setSceneUpdatePassCompletion(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 1520));
  std::function<void ()(void)>::operator=((a1 + 1488), a2);

  std::recursive_mutex::unlock((a1 + 1520));
}

void realityio::ImportSessionV2::gatherStatistics(realityio::ImportSessionV2 *this, pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "time:update");
  timerStat(a2, &__p, this + 1368);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "time:targetGeneration");
  timerStat(a2, &__p, this + 1408);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "time:evaluation");
  timerStat(a2, &__p, this + 1448);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  Exec::getUnreachableTargets((this + 432), (this + 912), &__p);
  std::string::basic_string[abi:ne200100]<0>(v15, "graph:unreachableTargets");
  v14[0] = v19;
  v14[1] = &unk_285951DD3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v14);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&__p, v18);
  Exec::getStatistics((this + 432), a2);
  v4 = atomic_load(off_278EA82B0);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
  }

  v5 = pxrInternal__aapl__pxrReserved__::TraceCollector::SetEnabled(v4);
  pxrInternal__aapl__pxrReserved__::TraceReporter::GetGlobalReporter(&__p, v5);
  v6 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TraceReporter>::operator->(&__p);
  MEMORY[0x24C1A5020](v6);
  v7 = v18;
  if (v18 && atomic_fetch_add_explicit(v18 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v7 = (*(*v7 + 8))(v7);
  }

  pxrInternal__aapl__pxrReserved__::TraceReporter::GetGlobalReporter(&__p, v7);
  v8 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::TraceReporter>::operator->(&__p);
  Counters = pxrInternal__aapl__pxrReserved__::TraceReporter::GetCounters(v8);
  v10 = v18;
  if (v18 && atomic_fetch_add_explicit(v18 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v10 = (*(*v10 + 8))(v10);
  }

  for (i = *(Counters + 16); i; i = *i)
  {
    v12 = i[2];
    if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 &= 0xFFFFFFFFFFFFFFF8;
    }

    v13 = i[3];
    if ((v12 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
    }

    v18 = &unk_285946DC3;
    __p = v13;
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__p);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "importSessionVersion");
  v15[0] = 0x4000000000000000;
  v15[1] = &unk_285946DC3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v15);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }
}

void sub_247618A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a12);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,realityio::SdfPathHashCompare,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,realityio::SdfPathHashCompare,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v2 + 7));
      if (*(v2 + 55) < 0)
      {
        operator delete(v2[4]);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 2));
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

uint64_t pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::~SdfPathTable(uint64_t a1)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 3;
    do
    {
      v7 = *a1;
      v8 = *(*a1 + 8 * v5);
      if (v8)
      {
        do
        {
          v9 = *(v8 + 24);
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v8 + 8));
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          v10 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v8);
          MEMORY[0x24C1A91B0](v10, 0x1060C407FF37761);
          v8 = v9;
        }

        while (v9);
        v7 = *a1;
      }

      v7[v5++] = 0;
    }

    while (v5 != v6);
    v2 = *a1;
  }

  *(a1 + 24) = 0;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::~Graph(uint64_t a1)
{
  v3 = (a1 + 72);
  std::vector<std::set<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 48);
  std::vector<std::set<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(a1 + 32));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(*(a1 + 8));
  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(a1[1]);
    v2 = a1[9];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = a1[7];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 6));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

void TgECS::~TgECS(TgECS *this)
{
  *this = &unk_28595E5D0;
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(this + 480, *(this + 61));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(this + 456, *(this + 58));
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::TfHash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>>>::~__hash_table(this + 408);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(this + 384, *(this + 49));
  pxrInternal__aapl__pxrReserved__::SdfPathTable<BOOL>::~SdfPathTable(this + 43);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(this + 320, *(this + 41));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(this + 296, *(this + 38));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(this + 272, *(this + 35));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(this + 248, *(this + 32));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(this + 224, *(this + 29));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(this + 200, *(this + 26));
  v2 = *(this + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::mutex::~mutex((this + 120));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 108);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 96);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(this + 11);
  *this = &unk_285955738;
  std::mutex::~mutex((this + 24));
}

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::TfHash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::TfHash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,pxrInternal__aapl__pxrReserved__::TfHash,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::UsdPrim,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>,std::equal_to<pxrInternal__aapl__pxrReserved__::UsdPrim>,pxrInternal__aapl__pxrReserved__::TfHash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::UsdPrim,pxrInternal__aapl__pxrReserved__::UsdGeomXformCache::_Entry>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v6 = (v2 + 48);
      std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__destroy_vector::operator()[abi:ne200100](&v6);
      v4 = *(v2 + 5);
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 32));
      v5 = *(v2 + 3);
      if (v5)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPathTable<BOOL>::~SdfPathTable(uint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::SdfPathTable<BOOL>::clear(a1);
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::SdfPathTable<BOOL>::clear(uint64_t *result)
{
  v1 = result;
  v2 = result[1] - *result;
  if (v2)
  {
    v3 = 0;
    v4 = v2 >> 3;
    do
    {
      v5 = *v1;
      v6 = *(*v1 + 8 * v3);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 16);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          v8 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v6);
          result = MEMORY[0x24C1A91B0](v8, 0x1020C4084A03ABELL);
          v6 = v7;
        }

        while (v7);
        v5 = *v1;
      }

      *(v5 + 8 * v3++) = 0;
    }

    while (v3 != v4);
  }

  v1[3] = 0;
  return result;
}

void Exec::~Exec(std::mutex *this)
{
  std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,realityio::SdfPathHashCompare,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,realityio::SdfPathHashCompare,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,ExecFault>>>::~__hash_table(&this[3].__m_.__opaque[40]);
  pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::~SdfPathTable(this[3].__m_.__opaque);
  v2 = *&this[2].__m_.__opaque[32];
  if (v2)
  {
    *&this[2].__m_.__opaque[40] = v2;
    operator delete(v2);
  }

  realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::~Graph(&this[1]);

  std::mutex::~mutex(this);
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_0,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_0>,void ()(std::function<void ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954880;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_0,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_0>,void ()(std::function<void ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (v3)
  {

    return realityio::LiveSceneManager::performBlockSyncOnEngineQueue(v3, a2);
  }

  else
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v6 = *(*v5 + 48);

    return v6();
  }
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_0,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_0>,void ()(std::function<void ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_1,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_1>,void ()(std::function<void ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954910;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_1,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_1>,void ()(std::function<void ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v4, a2);
  realityio::ImportSessionImpl::performBlockLaterOnEngineQueue(v2, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
}

void sub_2476193B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_1,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_1>,void ()(std::function<void ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::ImportSessionImpl::performBlockLaterOnEngineQueue(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, a2);
    realityio::LiveSceneManager::performBlockLaterOnEngineQueue(v2, v6);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v6);
  }

  else
  {
    v4 = *(a2 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v5 = *(*v4 + 48);

    return v5();
  }
}

void sub_2476194F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_2,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_2>,void ()(std::function<void ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954990;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_2,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_2>,void ()(std::function<void ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v4, a2);
  realityio::ImportSessionImpl::performBlockPostAssetLoadOnEngineQueue(v2, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
}

void sub_247619618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_2,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_2>,void ()(std::function<void ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_3,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_3>,void ()(realityio::WrappedRERef<REEntity *> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954A10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_3,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_3>,void ()(realityio::WrappedRERef<REEntity *> &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_4,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_4>,void ()(realityio::WrappedRERef<REAsset *> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954AA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_4,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_4>,void ()(realityio::WrappedRERef<REAsset *> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  result = *(*(a1 + 8) + 40);
  if (result)
  {
    realityio::LiveSceneManager::queueForDeferredAssetLoad(result, a2);
  }

  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_4,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_4>,void ()(realityio::WrappedRERef<REAsset *> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_5,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_5>,void ()(std::shared_ptr<realityio::AssetLoadTracker::Asset> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285954B30;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::ImportSessionV2::initActionTable(void)::$_5,std::allocator<realityio::ImportSessionV2::initActionTable(void)::$_5>,void ()(std::shared_ptr<realityio::AssetLoadTracker::Asset> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void **std::unique_ptr<realityio::ExecContext>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 28));
    v3 = v2[23];
    if (v3 == v2 + 20)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = v2[19];
    if (v4 == v2 + 16)
    {
      (*(*v4 + 32))(v4);
    }

    else if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    v5 = v2[15];
    if (v5 == v2 + 12)
    {
      (*(*v5 + 32))(v5);
    }

    else if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100]((v2 + 8));
    std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100]((v2 + 4));
    std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100](v2);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::__shared_ptr_emplace<realityio::AnchoringComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954BC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::AnimationComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954C10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::AnimationLibraryAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954C60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::AnimationLibraryComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954CB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::BlendShapeWeightsDefinitionAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954D00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::BlendShapeWeightsComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954D50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CapsuleAssetDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954DA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CapsuleMeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954DF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::ConeAssetDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::ConeMeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954E90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CubeAssetDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954EE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CubeMeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954F30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CylinderAssetDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954F80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::CylinderMeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285954FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::EntityAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955020;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::EntitySyncAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::GetFromUsdAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859550C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MapFromGroupsAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955110;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MaterialAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859551B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshDeformationComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955250;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859552A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::RenderOptionsComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859552F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::RigComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955340;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SampleAnimationFromUsdAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955390;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletalAnimationTimelineAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859553E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletalPoseAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletalPoseComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SkeletalPoseDefinitionAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859554D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SphereAssetDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::SphereMeshDescriptorAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TextureAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859555C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TransformAnimationTimelineAssetAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955610;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::TransformComponentAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285955660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(*(a1 + 16));
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

    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,std::shared_ptr<Exec::ExecAction>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = a1[4];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a1);
  }
}

__n128 pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>::_DelivererWithSender(uint64_t a1, void *a2, __n128 *a3, void *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 36) = 0;
  *a1 = &unk_2859556B0;
  v4 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v5 = a4[1];
  *(a1 + 56) = *a4;
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  result = *a3;
  *(a1 + 72) = *a3;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>::~_DelivererWithSender(pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase *this)
{
  *this = &unk_2859556B0;
  v2 = *(this + 8);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::~_DelivererBase(this);
}

{
  *this = &unk_2859556B0;
  v2 = *(this + 8);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::~_DelivererBase(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::_SendToListenerImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = a1[6];
  v8 = a1 + 6;
  if (!v9)
  {
    return 0;
  }

  v13 = v8 - 1;
  v14 = pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v8);
  v15 = *v13;
  v16 = *(v14 + 14) != 1 || v15 == 0;
  if (v16 || a1[8] && *(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(a1 + 8) + 14) != 1)
  {
    return 0;
  }

  if (*a7 != a7[1])
  {
    (*(*a1 + 40))(a1);
    pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,realityio::ImportSessionV2>::operator->(v13);
    pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::_BeginDelivery();
  }

  if (a4)
  {
    v17 = a4 - 16;
  }

  else
  {
    v17 = 0;
  }

  pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&v23, v17);
  v18 = a1[9];
  v19 = a1[10];
  v20 = (v15 + (v19 >> 1));
  if (v19)
  {
    v18 = *(*v20 + v18);
  }

  v18(v20, a2, &v23);
  v22 = v24;
  if (v24 && atomic_fetch_add_explicit((v24 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v22 + 8))(v22);
  }

  if (*a7 != a7[1])
  {
    pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::_EndDelivery();
  }

  return 1;
}

void sub_24761B1A4(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetNoticeType(uint64_t a1, const std::type_info *a2)
{
  v2 = MEMORY[0x277D86688];
  v3 = *pxrInternal__aapl__pxrReserved__::TfType::_FindByTypeid(MEMORY[0x277D86688], a2);
  pxrInternal__aapl__pxrReserved__::TfType::TfType(v14);
  if (v14[0] == v3)
  {
    v14[0] = "tf/notice.h";
    v14[1] = "GetNoticeType";
    v14[2] = 614;
    v14[3] = "virtual TfType pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>, void (realityio::ImportSessionV2::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &, const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetNoticeType() const [Derived = pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>, pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>, void (realityio::ImportSessionV2::*)(const pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged &, const pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &), pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>]";
    v15 = 0;
    v16 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled(&v10, (*(v2 + 8) & 0x7FFFFFFFFFFFFFFFLL), v4);
    v5 = std::string::insert(&v10, 0, "notice type ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v11, " undefined in the TfType system");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
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

  return v3;
}

void sub_24761B310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::Delivers(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 24))(a1);
  result = pxrInternal__aapl__pxrReserved__::TfType::IsA();
  if (result)
  {
    v8 = a1[8];
    v7 = a1 + 8;
    v6 = v8;
    if (v8)
    {
      v6 = *(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v7) + 14) ^ 1;
    }

    result = 0;
    if (a3)
    {
      if ((v6 & 1) == 0)
      {
        return pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v7 - 1) + 16 == a3;
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfNotice::_StandardDeliverer<pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererWithSender<pxrInternal__aapl__pxrReserved__::TfWeakPtr<realityio::ImportSessionV2>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,void (realityio::ImportSessionV2::*)(pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged const&,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage> const&),pxrInternal__aapl__pxrReserved__::UsdNotice::ObjectsChanged>>::GetSenderWeakBase(uint64_t a1)
{
  v2 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator pxrInternal__aapl__pxrReserved__::UsdStage* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::*)(void)const((a1 + 56));
  if (v3 & 1 | v2)
  {
    return pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((a1 + 56)) + 16;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,realityio::ImportSessionV2>::operator->(uint64_t *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3 || ((v4 = *(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(v2) + 14), result = *a1, v4 == 1) ? (v6 = result == 0) : (v6 = 1), v6))
  {
    v7 = strrchr[abi:ne200100]("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", 47);
    FunctionLite::substringFromPreviousDelim("/AppleInternal/Library/BuildRoots/4~B_v-ugDHQgwP_Kp6ogB1EI_AGOonsA17WtbqFjI/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/weakPtrFacade.h", v7, 0x2F);
    return pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::Tf_Remnant::Register((a2 + 16), &v6);
    v3 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v3 + 8))(v3);
      }

      v4 = v6;
      if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v4 + 8))(v4);
      }
    }
  }

  return a1;
}

void sub_24761B654(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *realityio::MultipleLayerMutex::MultipleLayerMutex<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *>>(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::reserve(a1, a3 - a2);
  for (; v4 != a3; ++v4)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::push_back[abi:ne200100](a1, v4);
  }

  v6 = a1[1];
  v7 = 126 - 2 * __clz((v6 - *a1) >> 4);
  if (v6 == *a1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> *,false>(*a1, v6, v10, v8, 1);
  return a1;
}

void sub_24761B73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    result = v3 + 2;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer> const&>(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>>(a1, v7);
  }

  v8 = (16 * v2);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *v8 = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1u, memory_order_relaxed);
  }

  *&v18 = v8 + 1;
  v10 = a1[1];
  v11 = (v8 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>,pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::~__split_buffer(&v16);
  return v15;
}

void sub_24761B8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

const void **realityio::UsdMetadataDelta::description@<X0>(CFStringRef *__return_ptr a1@<X8>, realityio::UsdMetadataDelta *this@<X0>)
{
  cf = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6 = Mutable;
  for (i = *(this + 3); i; i = *i)
  {
    if ((i[2] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = (i[2] & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Mutable);
    }

    if (*(EmptyString + 23) >= 0)
    {
      v9 = EmptyString;
    }

    else
    {
      v9 = *EmptyString;
    }

    v10 = CFStringCreateWithCString(0, v9, 0x8000100u);
    CFArrayAppendValue(v6, v10);
    CFRelease(v10);
  }

  v11 = realityio::joinAsCFStringRef(v6, ", ", v5);
  CFRelease(v6);
  *a1 = 0;
  *a1 = CFStringCreateWithFormat(0, 0, @"<UsdMetadataDelta: %p { metadata: (%lu) [ %@ ] }>", this, *(this + 4), v11, v11);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&cf);
}

void sub_24761BA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v7);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  _Unwind_Resume(a1);
}

void realityio::UsdMetadataDelta::~UsdMetadataDelta(void **this)
{
  *this = &unk_285955750;
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this + 1);
}

{
  *this = &unk_285955750;
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(this + 1);

  JUMPOUT(0x24C1A91B0);
}

void stripInputsPrefixString(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  v3 = *(a2 + 8);
  if (v2 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = 7;
  if (v5 < 7)
  {
    v6 = v5;
  }

  if (!v5)
  {
    goto LABEL_23;
  }

  v7 = (v4 + v6);
  v8 = v4;
  v9 = v7;
  do
  {
    if (*v8 == 105)
    {
      v10 = 1u;
      while (v10 != 7)
      {
        if (&v8[v10] == v7)
        {
          goto LABEL_20;
        }

        v11 = v8[v10];
        v12 = aInputs_0[v10++];
        if (v11 != v12)
        {
          goto LABEL_12;
        }
      }

      v9 = v8;
    }

LABEL_12:
    ++v8;
  }

  while (v8 != v7);
LABEL_20:
  if (v9 != v7 && v9 == v4)
  {
    std::string::basic_string(a1, a2, 7uLL, 0xFFFFFFFFFFFFFFFFLL, &v14);
  }

  else
  {
LABEL_23:
    if (v2 < 0)
    {
      v13 = *a2;

      std::string::__init_copy_ctor_external(a1, v13, v3);
    }

    else
    {
      *a1 = *a2;
    }
  }
}

void realityio::MaterialAssetAction::operator()(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v206 = *MEMORY[0x277D85DE8];
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v202, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&__p, a2);
  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&__p);
  MEMORY[0x24C1A5DE0](__str, "standardConstColorMaterial");
  v9 = *NameToken;
  v10 = __str[0];
  if ((__str[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__str[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
  if ((v10 ^ v9) <= 7)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      if (*(v11 + 192))
      {
        __str[0] = 0;
        *v169 = 0;
        v187 = 0;
        v186 = 0;
        realityio::MaterialAssetPair::MaterialAssetPair(&__p, &v187, &v186);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v186);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v187);
        a6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::MaterialAssetPair>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>::_PlaceCopy(a6, &__p);
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&__p, a2);
  v12 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&__p);
  MEMORY[0x24C1A5DE0](__str, "__materialAssetWithMeshVertexColors");
  v13 = *v12;
  v14 = __str[0];
  if ((__str[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__str[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
  if ((v14 ^ v13) <= 7)
  {
    *v169 = REAssetManagerCreateAssetHandle();
    realityio::ECSAction::queueForDeferredAssetLoad(a1, v169);
    v178 = 0;
    v15 = *a4;
    if (a4[1] == *a4)
    {
      __asm { FMOV            V0.2S, #1.0 }

      v155 = _D0;
      v154 = 1.0;
LABEL_127:
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v174, a2);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v174);
      v61 = REMaterialAssetBuilderCreate();
      __str[0] = v61;
      if (v61)
      {
        REMaterialAssetBuilderSetMaterialDefinition();
        *&v62 = v155;
        *(&v62 + 1) = __PAIR64__(1.0, LODWORD(v154));
        *__p.__x_ = v62;
        LOBYTE(v172) = 0;
        realityio::assignGamutFromToken(&__p, &v172, &v178);
        REMaterialAssetBuilderSetColor4F();
        v61 = REAssetManagerMaterialAssetBuilderBuild();
      }

      v176.__r_.__value_.__r.__words[0] = v61;
      realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(__str);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v174);
      realityio::ECSAction::queueForDeferredAssetLoad(a1, &v176);
      __str[0] = 0;
      v185 = v176.__r_.__value_.__r.__words[0];
      if (v176.__r_.__value_.__r.__words[0])
      {
        RERetain();
        v184 = __str[0];
        if (__str[0])
        {
          RERetain();
        }
      }

      else
      {
        v184 = 0;
      }

      realityio::MaterialAssetPair::MaterialAssetPair(&__p, &v185, &v184);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v184);
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v185);
      a6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::MaterialAssetPair>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>::_PlaceCopy(a6, &__p);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    __asm { FMOV            V0.2S, #1.0 }

    v155 = _D0;
    v154 = 1.0;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__str, (*a5 + v16));
      v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v15 + v17));
      MEMORY[0x24C1A5DE0](&__p, "primvars:displayColor");
      v25 = *__p.__x_;
      if ((*__p.__x_ ^ *v24) > 7)
      {
        if ((__p.__x_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_33;
      }

      if (!__str[1])
      {
        goto LABEL_19;
      }

      if (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 16) != 21)
      {
        break;
      }

      IsImpl = 1;
LABEL_21:
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (IsImpl)
      {
        if ((__str[1] & 4) != 0)
        {
          v27 = (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 168))(__str);
        }

        else
        {
          v27 = __str[0];
        }

        v28 = *&v27->__r_.__value_.__r.__words[2];
        *__p.__x_ = *&v27->__r_.__value_.__l.__data_;
        *&__p.__x_[4] = v28;
        size = v27[1].__r_.__value_.__l.__size_;
        *&__p.__x_[8] = size;
        if (size)
        {
          v30 = (size - 16);
          if (*&__p.__x_[6])
          {
            v30 = *&__p.__x_[6];
          }

          atomic_fetch_add_explicit(v30, 1uLL, memory_order_relaxed);
        }

        if (*__p.__x_ == 1)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&__p);
          v155 = **&__p.__x_[8];
          v154 = *(*&__p.__x_[8] + 8);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&__p);
      }

LABEL_33:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__str);
      ++v18;
      v15 = *a4;
      v17 += 8;
      v16 += 16;
      if (v18 >= (a4[1] - *a4) >> 3)
      {
        goto LABEL_127;
      }
    }

    if ((__str[1] & 4) != 0)
    {
      v25 = *__p.__x_;
      goto LABEL_21;
    }

LABEL_19:
    IsImpl = 0;
    goto LABEL_21;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(__str, a2);
  std::string::basic_string[abi:ne200100]<0>(&__p, "/__builtin/standardNoMaterial");
  MEMORY[0x24C1A5D70](v169, &__p);
  v31 = __str[0];
  v32 = *v169;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v169);
  if (SHIBYTE(__p.__x_[5]) < 0)
  {
    operator delete(*__p.__x_);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__str);
  if (v31 == v32)
  {
    v33 = *(a1 + 16);
    if (v33)
    {
      v34 = *(v33 + 192);
      if (v34)
      {
        __str[0] = 0;
        v183 = *(*(v34 + 16) + 248);
        if (v183)
        {
          RERetain();
        }

        v182 = 0;
        realityio::MaterialAssetPair::MaterialAssetPair(&__p, &v183, &v182);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v182);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v183);
        a6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::MaterialAssetPair>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>::_PlaceCopy(a6, &__p);
      }
    }

    __str[0] = REAssetManagerCreateAssetHandle();
    realityio::ECSAction::queueForDeferredAssetLoad(a1, __str);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v178, a2);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v178);
    v63 = REMaterialAssetBuilderCreate();
    *__p.__x_ = v63;
    if (v63)
    {
      REMaterialAssetBuilderSetMaterialDefinition();
      v63 = REAssetManagerMaterialAssetBuilderBuild();
    }

    *v169 = v63;
    realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&__p);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v178);
    realityio::ECSAction::queueForDeferredAssetLoad(a1, v169);
    v178 = 0;
    v181 = *v169;
    if (*v169)
    {
      RERetain();
      v180 = v178;
      if (v178)
      {
        RERetain();
      }
    }

    else
    {
      v180 = 0;
    }

    realityio::MaterialAssetPair::MaterialAssetPair(&__p, &v181, &v180);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v180);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v181);
    a6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::MaterialAssetPair>(void)::ti;
    pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::MaterialAssetPair>::_PlaceCopy(a6, &__p);
  }

  v179[0] = 0;
  v179[1] = 0;
  v177 = 0;
  v178 = v179;
  std::string::basic_string[abi:ne200100]<0>(&v176, "st");
  v175[0] = 0;
  v175[1] = 0;
  v173[1] = 0;
  v174 = v175;
  v172 = v173;
  v173[0] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v35 = *a4;
  if (a4[1] != *a4)
  {
    v36 = 0;
    while (1)
    {
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__str, (*a5 + 16 * v36));
      v37 = (v35 + 8 * v36);
      v38 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v37);
      MEMORY[0x24C1A5DE0](&__p, "info:id");
      if ((*__p.__x_ ^ *v38) > 7)
      {
        if ((__p.__x_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      else
      {
        v39 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::TfToken>(__str);
        if ((__p.__x_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v39)
        {
          if ((__str[1] & 4) != 0)
          {
            v40 = (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 168))(__str);
          }

          else
          {
            v40 = __str;
          }

          pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v177, v40);
          goto LABEL_114;
        }
      }

      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(__str))
      {
        if ((__str[1] & 4) != 0)
        {
          v41 = (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 168))(__str);
        }

        else
        {
          v41 = __str[0];
        }

        if (&v178 != v41)
        {
          std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>(&v178, *v41, v41 + 1);
        }

        v42 = v178;
        if (v178 != v179)
        {
          do
          {
            *v169 = 0;
            LODWORD(v166.__r_.__value_.__l.__data_) = 0;
            v156.__r_.__value_.__s.__data_[0] = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
            if (v167[0])
            {
              pxrInternal__aapl__pxrReserved__::TfToken::operator=(v169, v42 + 4);
              std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath&,0>(&__p, v42 + 4, v200);
              std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>(&v172, &__p, &__p);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p.__x_[2]);
              if ((__p.__x_[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v43 = v42[4];
              *__p.__x_ = v43;
              if ((v43 & 7) != 0 && (atomic_fetch_add_explicit((v43 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
              {
                *__p.__x_ &= 0xFFFFFFFFFFFFFFF8;
              }

              *&__p.__x_[2] = v167[0];
              if (v167[0])
              {
                RERetain();
              }

              v44 = v175[0];
              if (!v175[0])
              {
                goto LABEL_78;
              }

              v45 = v175;
              while (1)
              {
                while (1)
                {
                  v46 = v44;
                  if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&v174, &__p, v44 + 4))
                  {
                    break;
                  }

                  v44 = *v46;
                  v45 = v46;
                  if (!*v46)
                  {
                    goto LABEL_78;
                  }
                }

                if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](&v174, v46 + 4, &__p))
                {
                  break;
                }

                v45 = v46 + 1;
                v44 = v46[1];
                if (!v44)
                {
                  goto LABEL_78;
                }
              }

              if (!*v45)
              {
LABEL_78:
                operator new();
              }

              realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p.__x_[2]);
              if ((__p.__x_[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            realityio::WrappedRERef<REAsset *>::~WrappedRERef(v167);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v200);
            if ((v169[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((*v169 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v47 = v42[1];
            if (v47)
            {
              do
              {
                v48 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v42[2];
                _ZF = *v48 == v42;
                v42 = v48;
              }

              while (!_ZF);
            }

            v42 = v48;
          }

          while (v48 != v179);
        }

        goto LABEL_114;
      }

      v49 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v37);
      MEMORY[0x24C1A5DE0](&__p, "__defaultUV");
      v50 = *__p.__x_;
      if ((*__p.__x_ ^ *v49) > 7)
      {
        if ((__p.__x_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_105:
        v53 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v37);
        MEMORY[0x24C1A5DE0](&__p, "__shaderPrimPath");
        if ((*__p.__x_ ^ *v53) > 7)
        {
          if ((__p.__x_[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          v54 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::SdfPath>(__str);
          if ((__p.__x_[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v54)
          {
            if ((__str[1] & 4) != 0)
            {
              v55 = (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 168))(__str);
            }

            else
            {
              v55 = __str;
            }

            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v170, v55);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v171, v55 + 1);
          }
        }

        goto LABEL_114;
      }

      if (!__str[1])
      {
        goto LABEL_97;
      }

      if (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 16) != 12)
      {
        break;
      }

      v51 = 1;
LABEL_99:
      if ((v50 & 7) != 0)
      {
        atomic_fetch_add_explicit((v50 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (!v51)
      {
        goto LABEL_105;
      }

      if ((__str[1] & 4) != 0)
      {
        v52 = (*((__str[1] & 0xFFFFFFFFFFFFFFF8) + 168))(__str);
      }

      else
      {
        v52 = __str[0];
      }

      std::string::operator=(&v176, v52);
LABEL_114:
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__str);
      ++v36;
      v35 = *a4;
      if (v36 >= (a4[1] - *a4) >> 3)
      {
        goto LABEL_120;
      }
    }

    if ((__str[1] & 4) != 0)
    {
      v50 = *__p.__x_;
      goto LABEL_99;
    }

LABEL_97:
    v51 = 0;
    goto LABEL_99;
  }

LABEL_120:
  v56 = a2;
  v57 = *(a1 + 16);
  if (v57 && *(v57 + 200))
  {
    MEMORY[0x24C1A5DE0](&__p, "UsdPreviewSurface");
    if ((__p.__x_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(__str, a2);
    std::string::basic_string[abi:ne200100]<0>(&__p, "/__root");
    v58 = MEMORY[0x24C1A5D70](v169, &__p);
    if (__str[0] == *v169)
    {
      v59 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v58);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v156, v59);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v156.__r_.__value_.__r.__words + 1, v59 + 1);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v156, a2);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v169);
    if (SHIBYTE(__p.__x_[5]) < 0)
    {
      operator delete(*__p.__x_);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__str);
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v165, a2);
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&__p, a2);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&__p);
  if (*(Name + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v169, *Name, *(Name + 8));
  }

  else
  {
    v65 = *Name;
    *&v169[16] = *(Name + 16);
    *v169 = v65;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
  MEMORY[0x24C1A5DE0](&__p, "inputs:opacityThreshold");
  v66 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(&v178, &__p);
  v67 = v66;
  if (v179 != v66 && (v68 = (v66 + 5), pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v66 + 5))) && pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>((v67 + 5)))
  {
    v69 = v67[6];
    if ((v69 & 4) != 0)
    {
      v68 = (*((v69 & 0xFFFFFFFFFFFFFFF8) + 168))(v67 + 5);
    }

    v70 = *v68 > 0.0;
  }

  else
  {
    v70 = 0;
  }

  if ((__p.__x_[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (!v70)
  {
    MEMORY[0x24C1A5DE0](&__p, "inputs:diffuseColor");
    MEMORY[0x24C1A5DE0](__str, "inputs:opacity");
    LODWORD(v161) = 1065353216;
    v160.n128_u8[0] = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    LOBYTE(v199) = 0;
    if (v167[0] == v166.__r_.__value_.__l.__data_)
    {
      MEMORY[0x24C1A5DE0](&v156, "outputs:a");
      if ((v156.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v156.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v166);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(v167);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v200);
    if ((__str[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__str[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((__p.__x_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v164 = 0;
  AssetHandle = REAssetManagerCreateAssetHandle();
  *__p.__x_ = AssetHandle;
  v72 = v164;
  if (v164 != AssetHandle)
  {
    v164 = AssetHandle;
    *__p.__x_ = v72;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
  if (v164)
  {
    realityio::ECSAction::queueForDeferredAssetLoad(a1, &v164);
    v163 = REMaterialAssetBuilderCreate();
    if (v163)
    {
      REMaterialAssetBuilderSetName();
      REMaterialAssetBuilderSetMaterialDefinition();
      v73 = v163;
      v74 = *a4;
      if (a4[1] != *a4)
      {
        v75 = 0;
        v76 = 0;
        v77 = 0;
        do
        {
          if (pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath((v74 + v75)))
          {
            pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v200, (v74 + v75));
            std::string::basic_string[abi:ne200100]<0>(&__p, "/__stage.layerData");
            MEMORY[0x24C1A5D70](v167, &__p);
            if (v200[0] == v167[0])
            {
              TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath((v74 + v75));
              std::string::basic_string[abi:ne200100]<0>(__str, "/customLayerData");
              MEMORY[0x24C1A5D70](&v166, __str);
              HasPrefix = pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix(TargetPath, &v166);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v166);
              if (SHIBYTE(v204[0]) < 0)
              {
                operator delete(__str[0]);
              }
            }

            else
            {
              HasPrefix = 0;
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v167);
            if (SHIBYTE(__p.__x_[5]) < 0)
            {
              operator delete(*__p.__x_);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v200);
            if (HasPrefix)
            {
              v80 = (*a5 + v76);
              v81 = *(v80 + 1);
              if (v81)
              {
                if (!*((v81 & 0xFFFFFFFFFFFFFFF8) + 16) || (v81 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(v80, MEMORY[0x277D82798]))
                {
                  v82 = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath((*a4 + v75));
                  pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v82);
                  v83 = *(*a5 + v76 + 8);
                  if ((v83 & 4) != 0)
                  {
                    (*((v83 & 0xFFFFFFFFFFFFFFF8) + 168))();
                  }

                  REMaterialAssetBuilderSetFunctionConstant();
                }
              }
            }
          }

          ++v77;
          v74 = *a4;
          v76 += 16;
          v75 += 8;
        }

        while (v77 < (a4[1] - *a4) >> 3);
        v73 = v163;
        v56 = a2;
      }

      MEMORY[0x24C1A5DE0](&__p, "inputs:opacity");
      LODWORD(__str[0]) = 1065353216;
      if ((__p.__x_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](v200, "inputs:diffuseColor");
      __str[0] = vdup_n_s32(0x3E3851ECu);
      LODWORD(__str[1]) = 1043878380;
      if ((v200[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v200[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](v167, "inputs:realitykit:tint");
      __asm { FMOV            V0.2S, #1.0 }

      v200[0] = _D0;
      LODWORD(v200[1]) = 1065353216;
      if ((v167[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v167[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      LODWORD(v192) = 1065353216;
      MEMORY[0x24C1A5DE0](&v156, "inputs:diffuseColor");
      MEMORY[0x24C1A5DE0](&v161, "inputs:opacity");
      MEMORY[0x24C1A5DE0](&v160, "outputs:a");
      v199 = 0;
      LOBYTE(v191) = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v196 = 0;
      LOBYTE(v189) = 0;
      if (v197 != v195 || !v197 || (v160.n128_u64[0] ^ v196) >= 8)
      {
        LOBYTE(v188) = 0;
        v190 = 0;
        v194 = 0;
        v85 = v195;
        if (v195 != v193)
        {
          v195 = v193;
          v193 = v85;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v193);
        if ((v194 & 7) != 0)
        {
          atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      LOBYTE(v188) = 0;
      v190 = 0;
      v194 = 0;
      v86 = v197;
      if (v197 != v193)
      {
        v197 = v193;
        v193 = v86;
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v193);
      if ((v194 & 7) != 0)
      {
        atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v195);
      if ((v196 & 7) != 0)
      {
        atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v197);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v198);
      if ((v199 & 7) != 0)
      {
        atomic_fetch_add_explicit((v199 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v160.n128_u8[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v160.n128_u64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v161 & 7) != 0)
      {
        atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v156.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v156.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      REMaterialAssetBuilderSetColor4F();
      REMaterialAssetBuilderSetFunctionConstant();
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v170);
      v88 = std::__string_hash<char>::operator()[abi:ne200100](__str, String);
      __p.__x_[0] = v88;
      for (i = 1; i != 624; ++i)
      {
        v88 = i + 1812433253 * (v88 ^ (v88 >> 30));
        __p.__x_[i] = v88;
      }

      __p.__i_ = 0;
      std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&__p);
      std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&__p);
      std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&__p);
      REMaterialAssetBuilderSetColor3F();
      MEMORY[0x24C1A5DE0](&v156, "inputs:emissiveColor");
      v161 = 0;
      v160.n128_u64[0] = 0;
      LOBYTE(v193) = 0;
      LOBYTE(v192) = 0;
      if (v193 == 1)
      {
        __asm { FMOV            V0.4S, #1.0 }

        REMaterialAssetBuilderSetFloat4();
      }

      else
      {
        v91 = v161;
        if ((v161 & 7) != 0 && (atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v91 &= 0xFFFFFFFFFFFFFFF8;
        }

        LOBYTE(v198) = 0;
        *__str = *v200;
        if ((v91 & 7) != 0)
        {
          atomic_fetch_add_explicit((v91 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        REMaterialAssetBuilderSetColor3F();
        __asm { FMOV            V0.4S, #1.0 }

        REMaterialAssetBuilderSetFloat4();
      }

      REMaterialAssetBuilderSetFloat();
      MEMORY[0x24C1A5DE0](&v198, "inputs:metallic");
      std::string::basic_string[abi:ne200100]<0>(__str, "metallicScale");
      if (SHIBYTE(v204[0]) < 0)
      {
        operator delete(__str[0]);
      }

      MEMORY[0x24C1A5DE0](&v197, "inputs:roughness");
      std::string::basic_string[abi:ne200100]<0>(__str, "roughnessScale");
      if (SHIBYTE(v204[0]) < 0)
      {
        operator delete(__str[0]);
      }

      MEMORY[0x24C1A5DE0](&v196, "inputs:clearcoat");
      std::string::basic_string[abi:ne200100]<0>(__str, "clearcoatScale");
      if (SHIBYTE(v204[0]) < 0)
      {
        operator delete(__str[0]);
      }

      MEMORY[0x24C1A5DE0](&v195, "inputs:clearcoatRoughness");
      std::string::basic_string[abi:ne200100]<0>(__str, "clearcoatRoughnessScale");
      if (SHIBYTE(v204[0]) < 0)
      {
        operator delete(__str[0]);
      }

      MEMORY[0x24C1A5DE0](__str, "inputs:opacityThreshold");
      LODWORD(v194) = 0;
      if ((__str[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__str[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      REMaterialAssetBuilderSetFloat();
      MEMORY[0x24C1A5DE0](__str, "inputs:ior");
      LODWORD(v194) = 1069547520;
      if ((__str[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((__str[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      REMaterialAssetBuilderSetFloat();
      if ((v195 & 7) != 0)
      {
        atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v196 & 7) != 0)
      {
        atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v197 & 7) != 0)
      {
        atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v198 & 7) != 0)
      {
        atomic_fetch_add_explicit((v198 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v199);
      if ((v160.n128_u8[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v160.n128_u64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v161 & 7) != 0)
      {
        atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v156.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v156.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v93 = v163;
      MEMORY[0x24C1A5DE0](&v161, "inputs:diffuseColor");
      MEMORY[0x24C1A5DE0](&v160, "inputs:normal");
      MEMORY[0x24C1A5DE0](&v199, "inputs:emissiveColor");
      MEMORY[0x24C1A5DE0](&v198, "inputs:roughness");
      MEMORY[0x24C1A5DE0](&v197, "inputs:metallic");
      MEMORY[0x24C1A5DE0](&v196, "inputs:occlusion");
      MEMORY[0x24C1A5DE0](&v195, "inputs:specularColor");
      MEMORY[0x24C1A5DE0](&v194, "inputs:opacity");
      MEMORY[0x24C1A5DE0](&v193, "inputs:clearcoat");
      MEMORY[0x24C1A5DE0](&v192, "inputs:clearcoatRoughness");
      MEMORY[0x24C1A5DE0](&v191, "inputs:realitykitTintMask");
      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableBaseColorMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableNormalMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableEmissiveMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableRoughnessMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableMetallicMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableAOMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "EnableSpecularMap");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      v167[0] = 0;
      LOBYTE(v189) = 0;
      LOBYTE(v188) = 0;
      v166.__r_.__value_.__r.__words[0] = 0;
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v156);
      if ((v166.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v166.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v167[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v167[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      REMaterialAssetBuilderSetFunctionConstant();
      std::string::basic_string[abi:ne200100]<0>(&__p, "UseBaseColorMapAsTintMask");
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      v167[0] = 0;
      v166.__r_.__value_.__r.__words[0] = 0;
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v156);
      if ((v166.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v166.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v167[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v167[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v167[0] = 0;
      v166.__r_.__value_.__r.__words[0] = 0;
      v188 = 1008981770;
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v156);
      if ((v166.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v166.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v167[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v167[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A5DE0](&__p, "inputs:opacityThreshold");
      LODWORD(__str[0]) = 0;
      if ((__p.__x_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (ShadeInputValueWith > 0.0)
      {
        REMaterialAssetBuilderSetFunctionConstant();
      }

      if ((v191 & 7) != 0)
      {
        atomic_fetch_add_explicit((v191 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v192 & 7) != 0)
      {
        atomic_fetch_add_explicit((v192 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v193 & 7) != 0)
      {
        atomic_fetch_add_explicit((v193 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v194 & 7) != 0)
      {
        atomic_fetch_add_explicit((v194 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v195 & 7) != 0)
      {
        atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v196 & 7) != 0)
      {
        atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v197 & 7) != 0)
      {
        atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v198 & 7) != 0)
      {
        atomic_fetch_add_explicit((v198 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v199 & 7) != 0)
      {
        atomic_fetch_add_explicit((v199 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v160.n128_u8[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v160.n128_u64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v161 & 7) != 0)
      {
        atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "/__builtin/standardVertexColorMaterial");
      MEMORY[0x24C1A5D70](&v199, &__p);
      if (SHIBYTE(__p.__x_[5]) < 0)
      {
        operator delete(*__p.__x_);
      }

      v95 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v56);
      MEMORY[0x24C1A5DE0](&__p, "__materialAssetWithVertexColors");
      if ((*__p.__x_ ^ *v95) >= 8 && pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath(v56))
      {
        pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(__str, v56);
        pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(__str);
      }

      if ((__p.__x_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*__p.__x_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v96 = MEMORY[0x24C1A5DE0](v200, "inputs:diffuseColor");
      if ((v200[0] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = (v200[0] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v96);
      }

      if (*(EmptyString + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *EmptyString, *(EmptyString + 8));
      }

      else
      {
        v98 = *EmptyString;
        *&__p.__x_[4] = *(EmptyString + 16);
        *__p.__x_ = v98;
      }

      *&__p.__x_[6] = "textureBaseColor";
      v99 = MEMORY[0x24C1A5DE0](v167, "inputs:metallic");
      if ((v167[0] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v100 = (v167[0] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v100 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v99);
      }

      if (*(v100 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[8], *v100, *(v100 + 8));
      }

      else
      {
        v101 = *v100;
        *&__p.__x_[12] = *(v100 + 16);
        *&__p.__x_[8] = v101;
      }

      *&__p.__x_[14] = "textureMetallic";
      v102 = MEMORY[0x24C1A5DE0](&v166, "inputs:roughness");
      if ((v166.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v103 = (v166.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v103 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v102);
      }

      if (*(v103 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[16], *v103, *(v103 + 8));
      }

      else
      {
        v104 = *v103;
        *&__p.__x_[20] = *(v103 + 16);
        *&__p.__x_[16] = v104;
      }

      *&__p.__x_[22] = "textureRoughness";
      v105 = MEMORY[0x24C1A5DE0](&v156, "inputs:emissiveColor");
      if ((v156.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v106 = (v156.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v106 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v105);
      }

      if (*(v106 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[24], *v106, *(v106 + 8));
      }

      else
      {
        v107 = *v106;
        *&__p.__x_[28] = *(v106 + 16);
        *&__p.__x_[24] = v107;
      }

      *&__p.__x_[30] = "textureEmissive";
      v108 = MEMORY[0x24C1A5DE0](&v161, "inputs:specularColor");
      if ((v161 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v109 = (v161 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v109 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v108);
      }

      if (*(v109 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[32], *v109, *(v109 + 8));
      }

      else
      {
        v110 = *v109;
        *&__p.__x_[36] = *(v109 + 16);
        *&__p.__x_[32] = v110;
      }

      *&__p.__x_[38] = "textureSpecular";
      v111 = MEMORY[0x24C1A5DE0](&v160, "inputs:clearcoat");
      if ((v160.n128_u64[0] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v112 = (v160.n128_u64[0] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v112 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v111);
      }

      if (*(v112 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[40], *v112, *(v112 + 8));
      }

      else
      {
        v113 = *v112;
        *&__p.__x_[44] = *(v112 + 16);
        *&__p.__x_[40] = v113;
      }

      *&__p.__x_[46] = "textureClearcoat";
      v114 = MEMORY[0x24C1A5DE0](&v198, "inputs:clearcoatRoughness");
      if ((v198 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v115 = (v198 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v115 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v114);
      }

      if (*(v115 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[48], *v115, *(v115 + 8));
      }

      else
      {
        v116 = *v115;
        *&__p.__x_[52] = *(v115 + 16);
        *&__p.__x_[48] = v116;
      }

      *&__p.__x_[54] = "textureClearcoatRoughness";
      v117 = MEMORY[0x24C1A5DE0](&v197, "inputs:normal");
      if ((v197 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v118 = (v197 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v118 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v117);
      }

      if (*(v118 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[56], *v118, *(v118 + 8));
      }

      else
      {
        v119 = *v118;
        *&__p.__x_[60] = *(v118 + 16);
        *&__p.__x_[56] = v119;
      }

      *&__p.__x_[62] = "textureNormal";
      v120 = MEMORY[0x24C1A5DE0](&v196, "inputs:occlusion");
      if ((v196 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v121 = (v196 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v121 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v120);
      }

      if (*(v121 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[64], *v121, *(v121 + 8));
      }

      else
      {
        v122 = *v121;
        *&__p.__x_[68] = *(v121 + 16);
        *&__p.__x_[64] = v122;
      }

      *&__p.__x_[70] = "textureAmbientOcclusion";
      v123 = MEMORY[0x24C1A5DE0](&v195, "inputs:opacity");
      if ((v195 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v124 = (v195 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        v124 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v123);
      }

      if (*(v124 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p.__x_[72], *v124, *(v124 + 8));
      }

      else
      {
        v125 = *v124;
        *&__p.__x_[76] = *(v124 + 16);
        *&__p.__x_[72] = v125;
      }

      *&__p.__x_[78] = "textureOpacity";
      std::map<std::string,char const*>::map[abi:ne200100](__str, &__p, 10);
      v126 = 40;
      do
      {
        if (SHIBYTE(v204[v126 + 2]) < 0)
        {
          operator delete(v204[v126]);
        }

        v126 -= 4;
      }

      while (v126 * 8);
      if ((v195 & 7) != 0)
      {
        atomic_fetch_add_explicit((v195 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v196 & 7) != 0)
      {
        atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v197 & 7) != 0)
      {
        atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v198 & 7) != 0)
      {
        atomic_fetch_add_explicit((v198 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v160.n128_u8[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v160.n128_u64[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v161 & 7) != 0)
      {
        atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v156.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v156.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v166.__r_.__value_.__s.__data_[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v166.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v167[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v167[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((v200[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v200[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v127 = v174;
      if (v174 == v175)
      {
LABEL_474:
        REMaterialAssetBuilderSetFunctionConstant();
        v167[0] = REAssetManagerMaterialAssetBuilderBuild();
        realityio::ECSAction::queueForDeferredAssetLoad(a1, v167);
        v200[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REAsset *>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REAsset *>>::_PlaceCopy(v200, v167);
      }

      v128 = 0;
      v129 = 0;
      while (1)
      {
        v130 = v127[4];
        v161 = v130;
        if ((v130 & 7) != 0 && (atomic_fetch_add_explicit((v130 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v161 &= 0xFFFFFFFFFFFFFFF8;
        }

        v131 = v127[5];
        v162 = v131;
        if (v131)
        {
          v131 = RERetain();
        }

        if ((v161 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v132 = ((v161 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v132 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v131);
        }

        v133 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(__str, v132);
        if (&__str[1] == v133)
        {
          goto LABEL_466;
        }

        memset(&__p, 0, 24);
        v160 = xmmword_247757250;
        v198 = 0;
        v197 = 0;
        v196 = 0;
        v159 = v161;
        if ((v161 & 7) != 0 && (atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v159 &= 0xFFFFFFFFFFFFFFF8;
        }

        if ((v159 & 7) != 0)
        {
          atomic_fetch_add_explicit((v159 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        std::string::basic_string[abi:ne200100]<0>(v200, *(v133 + 56));
        REMaterialAssetBuilderSetTextureFromAsset();
        std::string::basic_string[abi:ne200100]<0>(&v166, *(v133 + 56));
        v134 = std::string::append(&v166, "_sampler");
        v135 = *&v134->__r_.__value_.__l.__data_;
        v168 = v134->__r_.__value_.__r.__words[2];
        *v167 = v135;
        v134->__r_.__value_.__l.__size_ = 0;
        v134->__r_.__value_.__r.__words[2] = 0;
        v134->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v166.__r_.__value_.__l.__data_);
        }

        v158 = v197;
        if ((v197 & 7) != 0)
        {
          v136 = v197 & 0xFFFFFFFFFFFFFFF8;
          if ((atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v158 = v136;
          }
        }

        v157 = v196;
        if ((v196 & 7) != 0)
        {
          v137 = v196 & 0xFFFFFFFFFFFFFFF8;
          if ((atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v157 = v137;
          }
        }
        v138 = ;
        if ((v157 & 7) != 0)
        {
          atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v158 & 7) != 0)
        {
          atomic_fetch_add_explicit((v158 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        REMaterialAssetBuilderSetSampler();
        REMaterialAssetBuilderBindTextureToSampler();
        v139 = (__p.__x_[5] & 0x80000000) == 0 ? HIBYTE(__p.__x_[5]) : *&__p.__x_[2];
        if (!v139)
        {
          break;
        }

        v140 = HIBYTE(v176.__r_.__value_.__r.__words[2]);
        if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v140 = v176.__r_.__value_.__l.__size_;
        }

        if (v139 == v140)
        {
          if ((__p.__x_[5] & 0x80000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = *__p.__x_;
          }

          if ((v176.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v142 = &v176;
          }

          else
          {
            v142 = v176.__r_.__value_.__r.__words[0];
          }

          if ((memcmp(p_p, v142, v139) == 0) | v128 & 1)
          {
            break;
          }
        }

        else if (v128)
        {
          break;
        }

        std::string::basic_string[abi:ne200100]<0>(&v156, "geometry.primvars:");
        if ((__p.__x_[5] & 0x80000000) == 0)
        {
          v143 = &__p;
        }

        else
        {
          v143 = *__p.__x_;
        }

        if ((__p.__x_[5] & 0x80000000) == 0)
        {
          v144 = HIBYTE(__p.__x_[5]);
        }

        else
        {
          v144 = *&__p.__x_[2];
        }

        v145 = std::string::append(&v156, v143, v144);
        v146 = *&v145->__r_.__value_.__l.__data_;
        v166.__r_.__value_.__r.__words[2] = v145->__r_.__value_.__r.__words[2];
        *&v166.__r_.__value_.__l.__data_ = v146;
        v145->__r_.__value_.__l.__size_ = 0;
        v145->__r_.__value_.__r.__words[2] = 0;
        v145->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v156.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v156.__r_.__value_.__l.__data_);
        }

        REMaterialAssetBuilderSetBufferFromBinding();
        REMaterialAssetBuilderSetFloat4();
        REMaterialAssetBuilderSetFloat2();
        REMaterialAssetBuilderSetUVIndexForTexture();
        if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v166.__r_.__value_.__l.__data_);
        }

        v128 = 1;
LABEL_456:

        if (SHIBYTE(v168) < 0)
        {
          operator delete(v167[0]);
        }

        if (SHIBYTE(v201) < 0)
        {
          operator delete(v200[0]);
        }

        if ((v196 & 7) != 0)
        {
          atomic_fetch_add_explicit((v196 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v197 & 7) != 0)
        {
          atomic_fetch_add_explicit((v197 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (SHIBYTE(__p.__x_[5]) < 0)
        {
          operator delete(*__p.__x_);
        }

LABEL_466:
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v162);
        if ((v161 & 7) != 0)
        {
          atomic_fetch_add_explicit((v161 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v147 = v127[1];
        if (v147)
        {
          do
          {
            v148 = v147;
            v147 = *v147;
          }

          while (v147);
        }

        else
        {
          do
          {
            v148 = v127[2];
            _ZF = *v148 == v127;
            v127 = v148;
          }

          while (!_ZF);
        }

        v127 = v148;
        if (v148 == v175)
        {
          goto LABEL_474;
        }
      }

      if ((v129 & 1) == 0)
      {
        REMaterialAssetBuilderSetFloat4();
        REMaterialAssetBuilderSetFloat2();
      }

      REMaterialAssetBuilderSetUVIndexForTexture();
      v129 = 1;
      goto LABEL_456;
    }

    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a6, &v202);
    realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&v163);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a6, &v202);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v164);
  if ((v169[23] & 0x80000000) != 0)
  {
    operator delete(*v169);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v165);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v170);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(&v172, v173[0]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::WrappedRERef<REAsset *>>>>::destroy(v175[0]);
  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  if ((v177 & 7) != 0)
  {
    atomic_fetch_add_explicit((v177 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(&v178, v179[0]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v202);
}