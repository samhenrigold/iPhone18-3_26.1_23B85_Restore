uint64_t *realityio::WrappedRERef<REComponent *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<realityio::WrappedRERef<REComponent *>>(uint64_t *result)
{
  if (result)
  {
    realityio::WrappedRERef<REComponent *>::~WrappedRERef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REComponent *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REComponent *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>>::_Move(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>>::_DecrementIfValid(a1);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::WrappedRERef<REComponent *>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>>::_GetProxiedAsVtValue(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy(a2, v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>>::_DecrementIfValid(uint64_t *a1)
{
  result = *a1;
  if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    v3 = v1;
    __dmb(9u);
    realityio::WrappedRERef<REComponent *>::~WrappedRERef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 8));
  if (v1 != 1)
  {
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::WrappedRERef<REComponent *>>,realityio::WrappedRERef<REComponent *> const&>();
  }

  return *a1;
}

const void **realityio::ObjCCustomInputDescriptor::resolvedPrimPaths@<X0>(const void **result@<X0>, void **a2@<X1>, _DWORD *a3@<X2>, unint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  if (result[6])
  {
    v6 = result;
    values = a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&values);
    if (RIOPxrUsdStageGetTypeID::onceToken != -1)
    {
      dispatch_once(&RIOPxrUsdStageGetTypeID::onceToken, &__block_literal_global_23);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v8 = values;
      values = 0;
      Instance[3] = 0;
      Instance[4] = 0;
      Instance[2] = v8;
    }

    v18 = Instance;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&values);
    v17 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3);
    theSet = (*(v6[6] + 2))();
    if (theSet)
    {
      if (RIOPxrSdfPathGetTypeID::onceToken != -1)
      {
        dispatch_once(&RIOPxrSdfPathGetTypeID::onceToken, &__block_literal_global_30);
      }

      v9 = RIOPxrSdfPathGetTypeID::typeID;
      values = 0;
      v14 = 0;
      v15 = 0;
      Count = CFSetGetCount(theSet);
      std::vector<void const*>::resize(&values, Count);
      CFSetGetValues(theSet, values);
      v11 = values;
      v12 = v14;
      if (values != v14)
      {
        do
        {
          if (CFGetTypeID(*v11) == v9)
          {
            std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a4, *v11 + 4);
          }

          ++v11;
        }

        while (v11 != v12);
        v11 = values;
      }

      if (v11)
      {
        v14 = v11;
        operator delete(v11);
      }
    }

    realityio::WrappedCFRef<__CFSet const*>::~WrappedCFRef(&theSet);
    realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v17);
    return realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&v18);
  }

  return result;
}

void sub_2474B8008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, const void *a18)
{
  realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&a14);
  realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(&a18);
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(_DWORD *a1)
{
  if (RIOPxrSdfPathGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfPathGetTypeID::onceToken, &__block_literal_global_30);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((Instance + 16), a1);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v3 + 20), a1 + 1);
  }

  return v3;
}

void std::vector<void const*>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<void const*>::__append(result, a2 - v2);
  }
}

void realityio::ObjCCustomInputDescriptor::~ObjCCustomInputDescriptor(id *this)
{

  realityio::InputDescriptor::~InputDescriptor(this);
}

{

  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

const void **realityio::WrappedCFRef<RIOPxrUsdStage *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **realityio::WrappedCFRef<__CFSet const*>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType::~AcousticMeshBuilderTokens_StaticTokenType(realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType *this)
{
  v13 = (this + 96);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v13);
  v2 = *(this + 11);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 9);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 8);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 7);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 6);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 5);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 4);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 3);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 2);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(this + 1);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType *realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType::AcousticMeshBuilderTokens_StaticTokenType(realityio::tokens::AcousticMeshBuilderTokens_StaticTokenType *this)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "AcousticMeshComponent", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "AcousticMesh", 0);
  MEMORY[0x24C1A5DF0](this + 16, "Mesh", 0);
  MEMORY[0x24C1A5DF0](this + 24, "includeChildObjects", 0);
  MEMORY[0x24C1A5DF0](this + 32, "info:id", 0);
  MEMORY[0x24C1A5DF0](this + 40, "material:binding", 0);
  MEMORY[0x24C1A5DF0](this + 48, "RealityKit.AcousticMesh", 0);
  MEMORY[0x24C1A5DF0](this + 56, "RealityKit.AcousticAdjustments", 0);
  MEMORY[0x24C1A5DF0](this + 64, "realityKit:acousticMaterialName", 0);
  MEMORY[0x24C1A5DF0](this + 72, "customAcousticMesh", 0);
  MEMORY[0x24C1A5DF0](this + 80, "realityKit:AcousticMaterialOrderedPaths", 0);
  MEMORY[0x24C1A5DF0](this + 88, "realityKit:AcousticMaterialOrderedDescriptors", 0);
  v3 = (this + 96);
  v4 = *this;
  v19 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v20 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v21 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v22 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v23 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v24 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v25 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v26 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v27 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v28 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v29 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = *(this + 11);
  v30 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v19, &v31, 0xCuLL);
  for (i = 88; i != -8; i -= 8)
  {
    v17 = *(&v19 + i);
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_2474B88BC(_Unwind_Exception *a1)
{
  v3 = 88;
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
      v5 = v1[11];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[10];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[9];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[8];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[7];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[6];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[5];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[4];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[3];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[2];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[1];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, uint64_t a2@<X0>, realityio *a3@<X1>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v338 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v327, a1);
  ServiceLocator = REEngineGetServiceLocator();
  v266 = MEMORY[0x24C1A4230](ServiceLocator);
  v307 = 0;
  v305 = 0u;
  v306 = 0u;
  v303 = 0;
  v302 = 0;
  v304 = 0;
  v8 = *a4;
  if (a4[1] == *a4)
  {
    v70 = 0;
    v80 = xmmword_247753B60;
    goto LABEL_88;
  }

  v283 = a2;
  v9 = 0;
  v10 = "NSt3__13mapIN32pxrInternal__aapl__pxrReserved__7TfTokenENS1_7VtValueENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEEE";
  while (1)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v328, (*a5 + 16 * v9));
    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v8 + 8 * v9));
    v12 = atomic_load(&realityio::tokens::EcsTokens);
    if (!v12)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::EcsTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::EcsTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::EcsTokens);
    }

    if ((*(v12 + 352) ^ *NameToken) > 7)
    {
      goto LABEL_73;
    }

    v13 = v328[1];
    if (!v328[1])
    {
      goto LABEL_73;
    }

    if (!strcmp((*(*(v328[1] & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (v10 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      goto LABEL_10;
    }

    {
      break;
    }

LABEL_73:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v328);
    ++v9;
    v8 = *a4;
    if (v9 >= (a4[1] - *a4) >> 3)
    {
      v70 = v302;
      a2 = v283;
      if (v303 != v302)
      {
        v71 = 0xEF7BDEF7BDEF7BDFLL * ((v303 - v302) >> 3);
        if (v71 <= 1)
        {
          v71 = 1;
        }

        v72 = xmmword_247753B60;
        v73 = v302 + 208;
        do
        {
          v74.f64[0] = *(v73 - 5);
          v74.f64[1] = *(v73 - 9);
          v75.f64[0] = *(v73 - 10);
          v75.f64[1] = *(v73 - 4);
          v76 = vbslq_s8(vcgtq_f64(v75, v74), *(v73 - 40), *(v73 - 5));
          v77 = *v73;
          v73 = (v73 + 248);
          *&v74.f64[0] = v77.i64[0];
          *&v74.f64[1] = v76.i64[1];
          *&v75.f64[0] = v76.i64[0];
          *&v75.f64[1] = v77.i64[1];
          v78 = vbslq_s8(vcgtq_f64(v75, v74), v77, v76);
          *&v79.f64[0] = v78.i64[0];
          *&v79.f64[1] = v72.i64[1];
          *&v74.f64[0] = v72.i64[0];
          *&v74.f64[1] = v78.i64[1];
          v72 = vbslq_s8(vcgtq_f64(v74, v79), v78, v72);
          --v71;
        }

        while (v71);
        v268 = v72;
        goto LABEL_89;
      }

      v80 = xmmword_247753B60;
LABEL_88:
      v268 = v80;
      LODWORD(v71) = 1;
LABEL_89:
      v81 = *(a2 + 16);
      if (v81 && *(v81 + 200))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v82 = v302;
        if (v303 != v302)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&__p, v302);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&__p + 4, v82 + 1);
        }

        v308 = 0u;
        v309 = 0u;
        LODWORD(v310) = 1065353216;
        operator new();
      }

      v300 = 0uLL;
      *&v301 = 0;
      v83 = 0;
      if (v71)
      {
        v84 = 0;
        v85 = *&v268;
        v86 = *(&v268 + 1);
        v259 = v86;
        v260 = v85;
        goto LABEL_281;
      }

      v261 = 0;
      v87 = 0;
      v267 = *(&v268 + 1) - *&v268;
      v275 = *(MEMORY[0x277D86650] + 254);
      v88 = *&v268;
      v89 = *(&v268 + 1);
      v259 = v89;
      v260 = v88;
      v262 = *MEMORY[0x277D82818];
      v263 = *(MEMORY[0x277D82818] + 64);
      v264 = *(MEMORY[0x277D82818] + 72);
      while (2)
      {
        v269 = v87;
        v90 = &v70[248 * v87];
        __p = 0;
        v298 = 0;
        v299 = 0;
        v91 = v90 + 1;
        std::vector<char const*>::reserve(&__p, v90[1]);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique((v90 + 1));
        v92 = v90[5];
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique((v90 + 1));
        v93 = v90[1];
        v94 = v90[5] + 8 * v93;
        if (v92 == v94)
        {
          goto LABEL_120;
        }

LABEL_98:
        v95 = *v92 & 0xFFFFFFFFFFFFFFF8;
        if (!v95)
        {
          v96 = "";
          goto LABEL_106;
        }

        if (*(v95 + 39) < 0)
        {
          v96 = *(v95 + 16);
          if (*(v95 + 24) <= 1uLL)
          {
            goto LABEL_106;
          }
        }

        else
        {
          v96 = (v95 + 16);
          if (*(v95 + 39) < 2u)
          {
            goto LABEL_106;
          }
        }

        if (*v96 == 47)
        {
          ++v96;
        }

LABEL_106:
        v97 = v298;
        if (v298 >= v299)
        {
          v99 = (v298 - __p) >> 3;
          if ((v99 + 1) >> 61)
          {
            std::vector<char const*>::__throw_length_error[abi:ne200100]();
          }

          v100 = (v299 - __p) >> 2;
          if (v100 <= v99 + 1)
          {
            v100 = v99 + 1;
          }

          if (v299 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v101 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v101 = v100;
          }

          if (v101)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(&__p, v101);
          }

          v102 = (8 * v99);
          *v102 = v96;
          v98 = 8 * v99 + 8;
          v103 = v102 - (v298 - __p);
          memcpy(v103, __p, v298 - __p);
          v104 = __p;
          __p = v103;
          v298 = v98;
          v299 = 0;
          if (v104)
          {
            operator delete(v104);
          }
        }

        else
        {
          *v298 = v96;
          v98 = (v97 + 8);
        }

        v298 = v98;
        if (++v92 == v94)
        {
          v93 = *v91;
LABEL_120:
          v281 = v83;
          if (v93)
          {
            if (!(v93 >> 60))
            {
              operator new();
            }

            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v311);
          v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v311.__r_.__value_.__r.__words[2], "[", 1);
          v106 = MEMORY[0x24C1A8F30](v105, v269);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, "]", 1);
          realityio::entityPath(v331, a3);
          String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v331);
          if (*(String + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v296, *String, *(String + 8));
          }

          else
          {
            v108 = *String;
            v296.__r_.__value_.__r.__words[2] = *(String + 16);
            *&v296.__r_.__value_.__l.__data_ = v108;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v331);
          std::string::basic_string[abi:ne200100]<0>(v331, "SkeletalPose.SkeletalPoses");
          std::stringbuf::str();
          if ((SBYTE7(v329) & 0x80u) == 0)
          {
            v109 = v328;
          }

          else
          {
            v109 = v328[0];
          }

          if ((SBYTE7(v329) & 0x80u) == 0)
          {
            v110 = BYTE7(v329);
          }

          else
          {
            v110 = v328[1];
          }

          v111 = std::string::append(v331, v109, v110);
          v112 = *&v111->__r_.__value_.__l.__data_;
          v295 = v111->__r_.__value_.__r.__words[2];
          *v294 = v112;
          v111->__r_.__value_.__l.__size_ = 0;
          v111->__r_.__value_.__r.__words[2] = 0;
          v111->__r_.__value_.__r.__words[0] = 0;
          if (SBYTE7(v329) < 0)
          {
            operator delete(v328[0]);
          }

          if ((v331[23] & 0x80000000) != 0)
          {
            operator delete(*v331);
          }

          *v331 = 0;
          v328[0] = 0;
          *&v308 = 0;
          v291 = 0;
          realityio::getAnimInputControlsFromInputs(a4, a5, v331, v328, &v308, &v291);
          if (*(&v268 + 1) >= *&v268)
          {
            v113 = (v267 * *v331 + 1.0 + 0.5);
          }

          else
          {
            v113 = 0;
          }

          std::vector<RESRT>::vector[abi:ne200100](&v291, v113);
          __src = 0;
          v289 = 0;
          v290 = 0;
          std::vector<unsigned long>::reserve(&__src, v113);
          if (v113)
          {
            v114 = 0;
            v115 = v267 / (v113 + -1.0);
            v116 = *&v268;
            v282 = v90 + 1;
            v284 = v90;
            v272 = v113;
            while (1)
            {
              v117 = 0xAAAAAAAAAAAAAAABLL * ((v292 - v291) >> 4);
              v118 = v289;
              v273 = v114;
              if (v289 >= v290)
              {
                v120 = __src;
                v121 = v289 - __src;
                v122 = (v289 - __src) >> 3;
                v123 = v122 + 1;
                if ((v122 + 1) >> 61)
                {
                  std::vector<char const*>::__throw_length_error[abi:ne200100]();
                }

                v124 = v290 - __src;
                if ((v290 - __src) >> 2 > v123)
                {
                  v123 = v124 >> 2;
                }

                v125 = v124 >= 0x7FFFFFFFFFFFFFF8;
                v126 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v125)
                {
                  v126 = v123;
                }

                if (v126)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(&__src, v126);
                }

                *(8 * v122) = v117;
                v119 = 8 * v122 + 8;
                memcpy(0, v120, v121);
                v127 = __src;
                __src = 0;
                v289 = v119;
                v290 = 0;
                if (v127)
                {
                  operator delete(v127);
                }
              }

              else
              {
                *v289 = v117;
                v119 = (v118 + 8);
              }

              v289 = v119;
              if (*v91)
              {
                break;
              }

LABEL_237:
              v114 = v273 + 1;
              v116 = v115 + v116;
              v91 = v282;
              if (v273 + 1 == v272)
              {
                goto LABEL_238;
              }
            }

            v128 = 0;
            while (2)
            {
              DWORD2(v287) = 0;
              *&v287 = 0;
              LODWORD(v285.f64[1]) = 0;
              v285.f64[0] = 0.0;
              v129 = *(16 * v128 + 8);
              if (*(16 * v128) == 1)
              {
                v130 = v275;
                v131 = v275;
                v132 = v275;
                if (!v275)
                {
                  v131 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0x3F800000);
                  v130 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0x3F800000);
                  v132 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(0x3F800000);
                }

                v133 = v284[25];
                if ((v133 & 4) != 0)
                {
                  v134 = (*((v133 & 0xFFFFFFFFFFFFFFF8) + 168))(v284 + 24);
                }

                else
                {
                  v134 = v284[24];
                }

                v135 = *v134;
                if (*v134)
                {
                  v136 = *(v284 + 21);
                  if (v136 >= v116)
                  {
                    v149 = v134[4];
                    v140 = *(v149 + 16);
                    *v331 = *v149;
                    *&v331[16] = v140;
                    v141 = *(v149 + 32);
                    goto LABEL_167;
                  }

                  if (*(v284 + 22) > v116 && (v137 = *(v284 + 23), v138 = ((v116 - v136) / v137), v135 - 2 >= v138))
                  {
                    v186 = (v134[4] + 40 * v138);
                    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::VtArray(v331, *v186);
                    if (*v186 == v186[5])
                    {
                      v188 = *v331;
                      if (*v331)
                      {
                        v189 = 0;
                        v190 = (v116 - (v136 + v138 * v137)) / v137;
                        do
                        {
                          v191 = (v186[4] + v189);
                          v192 = v186[9];
                          v193 = *v191;
                          WORD2(v328[0]) = *(v191 + 2);
                          LODWORD(v328[0]) = v193;
                          v194 = pxrInternal__aapl__pxrReserved__::GfVec3h::operator*=(v328, v187, 1.0 - v190);
                          v195 = (v192 + v189);
                          v196 = v194[2];
                          v197 = *v194;
                          v198 = *v195;
                          WORD2(v328[0]) = *(v195 + 2);
                          LODWORD(v328[0]) = v198;
                          v200 = pxrInternal__aapl__pxrReserved__::GfVec3h::operator*=(v328, v199, v190);
                          v201 = *v200;
                          WORD2(v308) = v200[2];
                          LODWORD(v308) = v201;
                          WORD2(v328[0]) = (v197 | (v196 << 32)) >> 32;
                          LODWORD(v328[0]) = v197;
                          v202 = pxrInternal__aapl__pxrReserved__::GfVec3h::operator+=(v328, &v308);
                          v203 = v202[2];
                          v204 = *v202;
                          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique(v331);
                          v205 = __sz[0] + v189;
                          *v205 = v204;
                          *(v205 + 4) = (v204 | (v203 << 32)) >> 32;
                          v189 += 6;
                          --v188;
                        }

                        while (v188);
                      }
                    }
                  }

                  else
                  {
                    v139 = v134[4] + 40 * v135;
                    v140 = *(v139 - 24);
                    *v331 = *(v139 - 40);
                    *&v331[16] = v140;
                    v141 = *(v139 - 8);
LABEL_167:
                    __sz[0] = v141;
                    if (v141)
                    {
                      v150 = (v141 - 16);
                      if (*&v331[24])
                      {
                        v150 = *&v331[24];
                      }

                      atomic_fetch_add_explicit(v150, 1uLL, memory_order_relaxed);
                    }
                  }
                }

                else
                {
                  __sz[0] = 0;
                  HIDWORD(v140) = 0;
                  memset(v331, 0, sizeof(v331));
                }

                v83 = v281;
                if (*v331 > v129)
                {
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique(v331);
                  v151 = (__sz[0] + 6 * v129);
                  v131 = *v151;
                  v130 = v151[1];
                  v132 = v151[2];
                }

                LODWORD(v140) = *(MEMORY[0x277D86658] + 4 * v131);
                DWORD1(v140) = *(MEMORY[0x277D86658] + 4 * v130);
                DWORD2(v140) = *(MEMORY[0x277D86658] + 4 * v132);
                v287 = v140;
                v90 = v284;
                v152 = v284[20];
                if ((v152 & 4) != 0)
                {
                  v153 = (*((v152 & 0xFFFFFFFFFFFFFFF8) + 168))(v284 + 19);
                }

                else
                {
                  v153 = v284[19];
                }

                v154 = *v153;
                if (*v153)
                {
                  v155 = *(v284 + 16);
                  if (v155 >= v116)
                  {
                    v161 = v153[4];
                    v162 = *(v161 + 16);
                    *v328 = *v161;
                    v329 = v162;
                    v160 = *(v161 + 32);
                    goto LABEL_182;
                  }

                  if (*(v284 + 17) > v116 && (v156 = *(v284 + 18), v157 = ((v116 - v155) / v156), v154 - 2 >= v157))
                  {
                    v206 = (v153[4] + 40 * v157);
                    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::VtArray(v328, *v206);
                    if (*v206 == v206[5])
                    {
                      v207 = v328[0];
                      if (v328[0])
                      {
                        v208 = 0;
                        v209 = (v116 - (v155 + v157 * v156)) / v156;
                        v210 = 1.0 - v209;
                        v276 = v210;
                        *&v209 = v209;
                        v274 = *&v209;
                        do
                        {
                          v277 = *(v206[9] + 16 * v208);
                          v279 = *(v206[4] + 16 * v208);
                          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(v328);
                          *(v330 + 16 * v208) = vaddq_f32(vmulq_n_f32(v279, v276), vmulq_n_f32(v277, v274));
                          v208 = v208 + 1;
                        }

                        while (v207 != v208);
                      }
                    }
                  }

                  else
                  {
                    v158 = v153[4] + 40 * v154;
                    v159 = *(v158 - 24);
                    *v328 = *(v158 - 40);
                    v329 = v159;
                    v160 = *(v158 - 8);
LABEL_182:
                    *&v330 = v160;
                    if (v160)
                    {
                      v163 = (v160 - 16);
                      if (*(&v329 + 1))
                      {
                        v163 = *(&v329 + 1);
                      }

                      atomic_fetch_add_explicit(v163, 1uLL, memory_order_relaxed);
                    }
                  }
                }

                else
                {
                  *&v330 = 0;
                  *v328 = 0u;
                  v329 = 0u;
                }

                v164 = xmmword_247753B70;
                if (v328[0] > v129)
                {
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique(v328);
                  v164 = *(v330 + 16 * v129);
                }

                v286 = v164;
                v165 = v284[30];
                if ((v165 & 4) != 0)
                {
                  v166 = (*((v165 & 0xFFFFFFFFFFFFFFF8) + 168))(v284 + 29);
                }

                else
                {
                  v166 = v284[29];
                }

                v167 = *v166;
                if (*v166)
                {
                  v168 = *(v284 + 26);
                  if (v168 >= v116)
                  {
                    v174 = v166[4];
                    v172 = v174[1];
                    v308 = *v174;
                    v309 = v172;
                    v173 = *(v174 + 4);
                    goto LABEL_197;
                  }

                  if (*(v284 + 27) > v116 && (v169 = *(v284 + 28), v170 = ((v116 - v168) / v169), v167 - 2 >= v170))
                  {
                    v211 = (v166[4] + 40 * v170);
                    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::VtArray(&v308, *v211);
                    if (*v211 == v211[5])
                    {
                      v212 = v308;
                      if (v308)
                      {
                        v213 = 0;
                        v280 = (v116 - (v168 + v170 * v169)) / v169;
                        v278 = 1.0 - v280;
                        do
                        {
                          v214 = (v211[4] + v213);
                          v215 = (v211[9] + v213);
                          v216 = v214[1].f32[0];
                          v217 = *v214;
                          v218 = *v215;
                          v219 = v215[1].f32[0];
                          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v308);
                          v220 = v278 * v216;
                          v221 = v280 * v219;
                          v222 = (v310 + v213);
                          v172 = vmulq_n_f64(vcvtq_f64_f32(v217), v278);
                          *v222 = vadd_f32(vcvt_f32_f64(v172), vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v218), v280)));
                          v222[1].f32[0] = v220 + v221;
                          v213 += 12;
                          --v212;
                        }

                        while (v212);
                      }
                    }
                  }

                  else
                  {
                    v171 = v166[4] + 40 * v167;
                    v172 = *(v171 - 24);
                    v308 = *(v171 - 40);
                    v309 = v172;
                    v173 = *(v171 - 8);
LABEL_197:
                    v310 = v173;
                    if (v173)
                    {
                      v175 = (v173 - 16);
                      if (*&v309.f64[1])
                      {
                        v175 = *&v309.f64[1];
                      }

                      atomic_fetch_add_explicit(v175, 1uLL, memory_order_relaxed);
                    }
                  }
                }

                else
                {
                  v310 = 0;
                  HIDWORD(v172.f64[1]) = 0;
                  v308 = 0u;
                  v309 = 0u;
                }

                if (v308 <= v129)
                {
                  v172.f64[0] = 0.0;
                  v177 = 0;
                }

                else
                {
                  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique(&v308);
                  v176 = v310 + 12 * v129;
                  v172.f64[0] = *v176;
                  v177 = *(v176 + 8);
                }

                LODWORD(v172.f64[1]) = v177;
                v285 = v172;
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v308);
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v328);
                pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(v331);
              }

              else
              {
                v142 = (v90[15] + (v129 << 7));
                v143 = *v142;
                v144 = v142[1];
                v145 = v142[2];
                v333 = v142[3];
                *__sz = v145;
                *v331 = v143;
                *&v331[16] = v144;
                v146 = v142[4];
                v147 = v142[5];
                v148 = v142[6];
                v337 = v142[7];
                v336 = v148;
                v335 = v147;
                v334 = v146;
                MEMORY[0x24C1A4BE0](v328, v331);
                REDecomposeMatrix();
                v83 = v281;
                v90 = v284;
              }

              v178 = v292;
              if (v292 >= v293)
              {
                v180 = 0xAAAAAAAAAAAAAAABLL * ((v292 - v291) >> 4);
                v181 = v180 + 1;
                if (v180 + 1 > 0x555555555555555)
                {
                  std::vector<char const*>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v293 - v291) >> 4) > v181)
                {
                  v181 = 0x5555555555555556 * ((v293 - v291) >> 4);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v293 - v291) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                {
                  v182 = 0x555555555555555;
                }

                else
                {
                  v182 = v181;
                }

                if (v182)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<RESRT>>(&v291, v182);
                }

                v183 = (16 * ((v292 - v291) >> 4));
                *v183 = v287;
                v183[1] = v286;
                v183[2] = v285;
                v179 = 48 * v180 + 48;
                v184 = (48 * v180 - (v292 - v291));
                memcpy(v183 - (v292 - v291), v291, v292 - v291);
                v185 = v291;
                v291 = v184;
                v292 = v179;
                v293 = 0;
                if (v185)
                {
                  operator delete(v185);
                }
              }

              else
              {
                *v292 = v287;
                *(v178 + 1) = v286;
                v179 = (v178 + 48);
                *(v178 + 2) = v285;
              }

              v292 = v179;
              if (*v282 <= ++v128)
              {
                goto LABEL_237;
              }

              continue;
            }
          }

LABEL_238:
          v223 = __src;
          if (v298 != __p && v289 != __src)
          {
            memset(v331, 0, 24);
            std::vector<RESRT const*>::reserve(v331, (v289 - __src) >> 3);
            v224 = __src;
            v225 = v289;
            if (__src != v289)
            {
              v226 = *&v331[8];
              do
              {
                v227 = v291 + 48 * *v224;
                if (v226 >= *&v331[16])
                {
                  v228 = (v226 - *v331) >> 3;
                  if ((v228 + 1) >> 61)
                  {
                    std::vector<char const*>::__throw_length_error[abi:ne200100]();
                  }

                  v229 = (*&v331[16] - *v331) >> 2;
                  if (v229 <= v228 + 1)
                  {
                    v229 = v228 + 1;
                  }

                  if (*&v331[16] - *v331 >= 0x7FFFFFFFFFFFFFF8uLL)
                  {
                    v230 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v230 = v229;
                  }

                  if (v230)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(v331, v230);
                  }

                  v231 = (8 * v228);
                  *v231 = v227;
                  v226 = (8 * v228 + 8);
                  v232 = v231 - (*&v331[8] - *v331);
                  memcpy(v232, *v331, *&v331[8] - *v331);
                  v233 = *v331;
                  *v331 = v232;
                  *&v331[8] = v226;
                  if (v233)
                  {
                    operator delete(v233);
                  }
                }

                else
                {
                  *v226++ = v227;
                }

                *&v331[8] = v226;
                v224 += 8;
              }

              while (v224 != v225);
            }

            SampledSkeletalPoseAnimation = RETimelineDefinitionCreateSampledSkeletalPoseAnimation();
            RETimelineDefinitionSetFillMode();
            RETimelineDefinitionSetTargetPath();
            RETimelineDefinitionSetAdditive();
            RETimelineDefinitionSetFrameInterval();
            RETimelineDefinitionSetStartTime();
            RETimelineDefinitionSetEndTime();
            RETimelineDefinitionSetSkeletalPoses();
            v235 = (v261 - v83) >> 3;
            v236 = v235 + 1;
            if ((v235 + 1) >> 61)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
            }

            if (-v83 >> 2 > v236)
            {
              v236 = -v83 >> 2;
            }

            if (-v83 >= 0x7FFFFFFFFFFFFFF8)
            {
              v237 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v237 = v236;
            }

            if (v237)
            {
              if (!(v237 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v238 = (8 * v235);
            *v238 = SampledSkeletalPoseAnimation;
            memcpy(0, v83, v261 - v83);
            v83 = 0;
            std::vector<std::string>::push_back[abi:ne200100](&v300, &v296);
            v261 = v238 + 1;
            if (*v331)
            {
              *&v331[8] = *v331;
              operator delete(*v331);
            }

            v223 = __src;
          }

          if (v223)
          {
            v289 = v223;
            operator delete(v223);
          }

          if (v291)
          {
            v292 = v291;
            operator delete(v291);
          }

          if (SHIBYTE(v295) < 0)
          {
            operator delete(v294[0]);
          }

          if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v296.__r_.__value_.__l.__data_);
          }

          v311.__r_.__value_.__r.__words[0] = v262;
          *(v311.__r_.__value_.__r.__words + *(v262 - 24)) = v263;
          v311.__r_.__value_.__r.__words[2] = v264;
          *&v312 = MEMORY[0x277D82878] + 16;
          if (SBYTE7(v318) < 0)
          {
            operator delete(v317);
          }

          *&v312 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v312 + 1);
          std::iostream::~basic_iostream();
          MEMORY[0x24C1A9110](&v320);
          if (__p)
          {
            v298 = __p;
            operator delete(__p);
          }

          v87 = v269 + 1;
          v70 = v302;
          if (0xEF7BDEF7BDEF7BDFLL * ((v303 - v302) >> 3) <= v269 + 1)
          {
            v84 = v261;
LABEL_281:
            realityio::entityPath(v328, a3);
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v328);
            std::string::basic_string[abi:ne200100]<0>(v331, Text);
            if ((v331[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(&v311, *v331, *&v331[8]);
              *&v312 = __PAIR64__(LODWORD(v259), LODWORD(v260));
              DWORD2(v312) = -8388609;
              v313 = 0;
              v314 = 0uLL;
              if ((v331[23] & 0x80000000) != 0)
              {
                operator delete(*v331);
              }
            }

            else
            {
              v311 = *v331;
              *&v312 = __PAIR64__(LODWORD(v259), LODWORD(v260));
              DWORD2(v312) = -8388609;
              v313 = 0;
              v314 = 0uLL;
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v328);
            if (v84 != v83)
            {
              v240 = 0;
              if (((v84 - v83) >> 3) <= 1)
              {
                v241 = 1;
              }

              else
              {
                v241 = (v84 - v83) >> 3;
              }

              v242 = v83;
              do
              {
                RETimelineDefinitionGetStartTime();
                v244 = v243;
                RETimelineDefinitionGetEndTime();
                v246 = v245;
                v247 = v300;
                TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
                v249 = (v247 + v240);
                v250 = (v247 + v240);
                if (*(v247 + v240 + 23) < 0)
                {
                  v250 = *v249;
                }

                v251 = realityio::TimelineGroupFactory::addTimeline(&v311, TimelineAsset, (v247 + v240), v250, v244, v246);
                if ((v251 & 1) == 0)
                {
                  v252 = *(realityio::logObjects(v251) + 24);
                  if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
                  {
                    if (v249[23] < 0)
                    {
                      v249 = *v249;
                    }

                    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v328, a3);
                    Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(v328);
                    if (*(Name + 23) >= 0)
                    {
                      v254 = Name;
                    }

                    else
                    {
                      v254 = *Name;
                    }

                    realityio::entityPath(&v308, a3);
                    v255 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v308);
                    *v331 = 136315650;
                    *&v331[4] = v249;
                    *&v331[12] = 2080;
                    *&v331[14] = v254;
                    *&v331[22] = 2080;
                    *&v331[24] = v255;
                    _os_log_error_impl(&dword_247485000, v252, OS_LOG_TYPE_ERROR, "ERROR ADDING TIME LINE %s to %s entity %s\n", v331, 0x20u);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v308);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v328);
                  }
                }

                RERelease();
                v240 += 24;
                v242 += 8;
                --v241;
              }

              while (v241);
            }

            v328[0] = realityio::TimelineGroupFactory::createTimelineAsset(&v311.__r_.__value_.__l.__data_, v266, "default scene animation");
            if (v328[0])
            {
              RERetain();
            }

            RERelease();
            __sz[0] = 0;
            memset(v331, 0, sizeof(v331));
            Copy = pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_AllocateCopy(v331, 0, 1uLL, 0);
            v257 = v328[0];
            *Copy = v328[0];
            if (v257)
            {
              RERetain();
            }

            pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_DecRef(v331);
            __sz[0] = Copy;
            ++*v331;
            a6[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>(void)::ti;
            pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(a6, v331);
          }

          continue;
        }

        goto LABEL_98;
      }
    }
  }

  v13 = v328[1];
LABEL_10:
  if ((v13 & 4) != 0)
  {
    v14 = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(v328);
  }

  else
  {
    v14 = v328[0];
  }

  MEMORY[0x24C1A5DE0](&v308, "anim");
  v15 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v14, &v308);
  v16 = (v15 + 5);
  v17 = v15[6];
  if (v17)
  {
    if (!strcmp((*(*(v17 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7SdfPathE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
LABEL_17:
      if ((v17 & 4) == 0)
      {
LABEL_18:
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v311, v16);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v311.__r_.__value_.__r.__words + 1, v16 + 1);
        MEMORY[0x24C1A5DE0](&v300, "joints");
        v18 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v14, &v300);
        v19 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>((v18 + 5));
        v20 = *v19;
        v312 = *(v19 + 16);
        *&v311.__r_.__value_.__r.__words[1] = v20;
        v21 = *(v19 + 32);
        v313 = v21;
        if (v21)
        {
          v22 = (v21 - 16);
          if (*(&v312 + 1))
          {
            v22 = *(&v312 + 1);
          }

          atomic_fetch_add_explicit(v22, 1uLL, memory_order_relaxed);
        }

        MEMORY[0x24C1A5DE0](&__p, "animJoints");
        v23 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v14, &__p);
        v24 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>((v23 + 5));
        v25 = *(v24 + 16);
        v314 = *v24;
        v315 = v25;
        v26 = *(v24 + 32);
        v316 = v26;
        if (v26)
        {
          v27 = (v26 - 16);
          if (*(&v315 + 1))
          {
            v27 = *(&v315 + 1);
          }

          atomic_fetch_add_explicit(v27, 1uLL, memory_order_relaxed);
        }

        MEMORY[0x24C1A5DE0](&v296, "restTransforms");
        v28 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v14, &v296);
        v29 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>((v28 + 5));
        v30 = *v29;
        v318 = *(v29 + 16);
        v317 = v30;
        v31 = *(v29 + 32);
        v319 = v31;
        if (v31)
        {
          v32 = (v31 - 16);
          if (*(&v318 + 1))
          {
            v32 = *(&v318 + 1);
          }

          atomic_fetch_add_explicit(v32, 1uLL, memory_order_relaxed);
        }

        MEMORY[0x24C1A5DE0](v294, "rotations_samples");
        v33 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v14, v294);
        v34 = pxrInternal__aapl__pxrReserved__::VtValue::Get<TimeSampledDataT>((v33 + 5));
        v35 = *v34;
        v321 = *(v34 + 16);
        v320 = v35;
        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v322, (v34 + 24));
        MEMORY[0x24C1A5DE0](&v291, "scales_samples");
        v36 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v14, &v291);
        v37 = pxrInternal__aapl__pxrReserved__::VtValue::Get<TimeSampledDataT>((v36 + 5));
        v38 = *v37;
        v323 = *(v37 + 16);
        v322[1] = v38;
        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v324, (v37 + 24));
        MEMORY[0x24C1A5DE0](&__src, "translations_samples");
        v39 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(v14, &__src);
        v40 = pxrInternal__aapl__pxrReserved__::VtValue::Get<TimeSampledDataT>((v39 + 5));
        v41 = *v40;
        v325 = *(v40 + 16);
        v324[1] = v41;
        pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v326, (v40 + 24));
        v42 = v303;
        if (v303 >= v304)
        {
          v44 = 0xEF7BDEF7BDEF7BDFLL * ((v303 - v302) >> 3) + 1;
          if (v44 > 0x108421084210842)
          {
            std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
          }

          if (0xDEF7BDEF7BDEF7BELL * ((v304 - v302) >> 3) > v44)
          {
            v44 = 0xDEF7BDEF7BDEF7BELL * ((v304 - v302) >> 3);
          }

          if (0xEF7BDEF7BDEF7BDFLL * ((v304 - v302) >> 3) >= 0x84210842108421)
          {
            v45 = 0x108421084210842;
          }

          else
          {
            v45 = v44;
          }

          __sz[0] = &v302;
          if (v45)
          {
            if (v45 <= 0x108421084210842)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v46 = v10;
          *v331 = 0;
          *&v331[8] = 8 * ((v303 - v302) >> 3);
          *&v331[16] = *&v331[8];
          *&v331[24] = 0;
          std::allocator_traits<std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo>>::construct[abi:ne200100]<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,0>(*&v331[8], &v311);
          v47 = v303;
          v48 = v302;
          v49 = (*&v331[8] - (v303 - v302));
          v43 = (*&v331[16] + 248);
          *&v331[16] += 248;
          if (v303 != v302)
          {
            v50 = 0;
            do
            {
              v51 = &v48[v50];
              v52 = &v49[v50];
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v49[v50], &v48[v50]);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v49[v50 + 4], &v48[v50 + 4]);
              v53 = *&v48[v50 + 8];
              *(v52 + 24) = *&v48[v50 + 24];
              *(v52 + 8) = v53;
              v54 = *&v48[v50 + 40];
              *(v52 + 5) = v54;
              if (v54)
              {
                v55 = (v54 - 16);
                if (*(v52 + 4))
                {
                  v55 = *(v52 + 4);
                }

                atomic_fetch_add_explicit(v55, 1uLL, memory_order_relaxed);
              }

              v56 = *(v51 + 4);
              *(v52 + 3) = *(v51 + 3);
              *(v52 + 4) = v56;
              v57 = *(v51 + 10);
              *(v52 + 10) = v57;
              if (v57)
              {
                v58 = (v57 - 16);
                if (*&v49[v50 + 72])
                {
                  v58 = *&v49[v50 + 72];
                }

                atomic_fetch_add_explicit(v58, 1uLL, memory_order_relaxed);
              }

              v59 = &v49[v50];
              v60 = &v48[v50];
              v61 = *&v48[v50 + 88];
              *(v59 + 104) = *&v48[v50 + 104];
              *(v59 + 88) = v61;
              v62 = *&v48[v50 + 120];
              *(v59 + 15) = v62;
              if (v62)
              {
                v63 = (v62 - 16);
                if (*(v59 + 14))
                {
                  v63 = *(v59 + 14);
                }

                atomic_fetch_add_explicit(v63, 1uLL, memory_order_relaxed);
              }

              v64 = *(v60 + 8);
              *(v59 + 18) = *(v60 + 18);
              *(v59 + 8) = v64;
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue((v59 + 152), (v60 + 152));
              v65 = &v49[v50];
              v66 = *&v48[v50 + 168];
              *(v65 + 23) = *&v48[v50 + 184];
              *(v65 + 168) = v66;
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v49[v50 + 192], &v48[v50 + 192]);
              v67 = *&v48[v50 + 208];
              *(v65 + 28) = *&v48[v50 + 224];
              *(v65 + 13) = v67;
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v49[v50 + 232], &v48[v50 + 232]);
              v50 += 248;
            }

            while (&v48[v50] != v47);
            do
            {
              realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::SkelPoseInfo::~SkelPoseInfo(v48);
              v48 += 248;
            }

            while (v48 != v47);
            v48 = v302;
            v43 = *&v331[16];
          }

          v302 = v49;
          v303 = v43;
          v68 = v304;
          v304 = *&v331[24];
          *&v331[16] = v48;
          *&v331[24] = v68;
          *&v331[8] = v48;
          *v331 = v48;
          std::__split_buffer<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo> &>::~__split_buffer(v331);
          v10 = v46;
        }

        else
        {
          std::allocator_traits<std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo>>::construct[abi:ne200100]<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,0>(v303, &v311);
          v43 = v42 + 248;
        }

        v303 = v43;
        realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::SkelPoseInfo::~SkelPoseInfo(&v311);
        if ((__src & 7) != 0)
        {
          atomic_fetch_add_explicit((__src & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v291 & 7) != 0)
        {
          atomic_fetch_add_explicit((v291 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v294[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v294[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v296.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v296.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((__p & 7) != 0)
        {
          atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v300 & 7) != 0)
        {
          atomic_fetch_add_explicit((v300 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v308 & 7) != 0)
        {
          atomic_fetch_add_explicit((v308 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_73;
      }

      v69 = (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(v16);
LABEL_79:
      v16 = v69;
      goto LABEL_18;
    }

    {
      v17 = v15[6];
      goto LABEL_17;
    }
  }

  v69 = pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  goto LABEL_79;
}

void sub_2474BAC2C(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3B0]);
  std::vector<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo>>::~vector[abi:ne200100](&STACK[0x208]);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&STACK[0x220]);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&STACK[0x3A0]);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::VtValue(pxrInternal__aapl__pxrReserved__::VtValue *this, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0;
  if (*(a2 + 1))
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v7, this);
    v4 = *(a2 + 1);
    v5 = ~*(a2 + 2);
    *(this + 1) = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, this);
    }

    else
    {
      *this = *a2;
    }

    if (v8)
    {
      (*(v8 + 32))(v7);
    }
  }

  return this;
}

void sub_2474BB540(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 60)
    {
      goto LABEL_6;
    }

    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16) == 29)
    {
      goto LABEL_6;
    }

    {
      v2 = *(this + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *this;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(this);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<TimeSampledDataT>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("16TimeSampledDataT" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      goto LABEL_6;
    }

    {
      v2 = *(a1 + 1);
LABEL_6:
      if ((v2 & 4) == 0)
      {
        return *a1;
      }

      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
}

uint64_t realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::SkelPoseInfo::~SkelPoseInfo(char *a1)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 232));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 192));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a1 + 152));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef((a1 + 88));
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1 + 6);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(a1 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void realityio::entityPath(uint64_t *__return_ptr a1@<X8>, realityio *this@<X0>)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v9, this);
  std::string::basic_string[abi:ne200100]<0>(__p, "/__root");
  MEMORY[0x24C1A5D70](&v8, __p);
  v5 = v8;
  v4 = v9;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  if (v4 == v5)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/");
    MEMORY[0x24C1A5D70](a1, __p);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(a1, this);
  }
}

void sub_2474BB920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::TimelineGroupFactory::addTimeline(char *a1, std::string::size_type a2, char **a3, char *__s, float32_t a5, float a6)
{
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 < 0)
  {
    v10 = a3[1];
  }

  v12 = a1[23];
  if (v12 >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  if (v12 >= 0)
  {
    v14 = a1[23];
  }

  else
  {
    v14 = *(a1 + 1);
  }

  if (v14)
  {
    if (v10 >= v14)
    {
      v16 = &v10[v11];
      v17 = *v13;
      v18 = v11;
      do
      {
        v19 = &v10[-v14];
        if (v19 == -1)
        {
          break;
        }

        result = memchr(v18, v17, (v19 + 1));
        if (!result)
        {
          return result;
        }

        v20 = result;
        result = memcmp(result, v13, v14);
        if (!result)
        {
          if (v20 == v16 || v20 != v11)
          {
            return result;
          }

          goto LABEL_23;
        }

        v18 = (v20 + 1);
        v10 = &v16[-v20 - 1];
      }

      while (v10 >= v14);
    }

    return 0;
  }

  else
  {
LABEL_23:
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    realityio::TimelineGroupFactory::TimelineData::TimelineData(&v31, __p, a3, a2, a5, a6);
    v21 = *(a1 + 6);
    if (v21 >= *(a1 + 7))
    {
      v22 = std::vector<realityio::TimelineGroupFactory::TimelineData>::__emplace_back_slow_path<realityio::TimelineGroupFactory::TimelineData>(a1 + 5, &v31);
    }

    else
    {
      realityio::TimelineGroupFactory::TimelineData::TimelineData(*(a1 + 6), &v31);
      v22 = v21 + 64;
      *(a1 + 6) = v21 + 64;
    }

    *(a1 + 6) = v22;
    realityio::TimelineGroupFactory::TimelineData::~TimelineData(&v31);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v23.i32[0] = *(a1 + 3);
    v23.f32[1] = a6;
    v24.i32[1] = HIDWORD(*(a1 + 3));
    v24.f32[0] = a5;
    v25 = vcgt_f32(v23, v24);
    v23.f32[0] = a5;
    *(a1 + 3) = vbsl_s8(v25, v23, *(a1 + 24));
    v26 = *(a1 + 8);
    if (v26 < a6)
    {
      v26 = a6;
    }

    *(a1 + 8) = v26;
    return 1;
  }
}

void sub_2474BBB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  realityio::TimelineGroupFactory::TimelineData::~TimelineData(&a20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void realityio::TimelineGroupFactory::~TimelineGroupFactory(void **this)
{
  v2 = this + 5;
  std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

realityio::Inputs **std::unique_ptr<realityio::Inputs>::~unique_ptr[abi:ne200100](realityio::Inputs **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    realityio::Inputs::~Inputs(v2);
    MEMORY[0x24C1A91B0]();
  }

  return a1;
}

uint64_t realityio::TimelineGroupFactory::createTimelineAsset(const void **a1, uint64_t a2, const char *a3)
{
  TimelineGroup = RETimelineDefinitionCreateTimelineGroup();
  v4 = a1[5];
  for (i = a1[6]; v4 != i; v4 += 64)
  {
    memset(&v30, 0, sizeof(v30));
    v6 = (v4 + 24);
    v7 = v4[47];
    if (v7 >= 0)
    {
      v8 = v4[47];
    }

    else
    {
      v8 = *(v4 + 4);
    }

    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = a1[1];
    }

    if (v8 != v10 || (v7 >= 0 ? (v11 = v4 + 24) : (v11 = *v6), v9 >= 0 ? (v12 = a1) : (v12 = *a1), memcmp(v11, v12, v8)))
    {
      v13 = v4 + 24;
      if (v7 < 0)
      {
        v13 = *v6;
      }

      if (v10[v13] == 47)
      {
        v14 = (v10 + 1);
      }

      else
      {
        v14 = v10;
      }

      std::string::basic_string(&__str, v4 + 1, v14, 0xFFFFFFFFFFFFFFFFLL, &TimelineClip);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      for (; size; --size)
      {
        if (p_str->__r_.__value_.__s.__data_[0] == 47)
        {
          p_str->__r_.__value_.__s.__data_[0] = 46;
        }

        p_str = (p_str + 1);
      }

      std::string::operator=(&v30, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    __str.__r_.__value_.__r.__words[0] = RETimelineDefinitionCreateFromTimeline();
    v17 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v30.__r_.__value_.__l.__size_;
    }

    if (!v17 && ((v18 = *(v4 + 12), v19 = *(a1 + 6), v18 == v19) || vabds_f32(v18, v19) < (((fabsf(v18) + fabsf(v19)) + 1.0) * 0.00001)) && ((v20 = *(v4 + 13), v21 = *(a1 + 7), v20 == v21) || vabds_f32(v20, v21) < (((fabsf(v20) + fabsf(v21)) + 1.0) * 0.00001)))
    {
      RETimelineDefinitionAddChildTimeline();
    }

    else
    {
      TimelineClip = RETimelineDefinitionCreateTimelineClip();
      RETimelineDefinitionSetClipDelay();
      RETimelineDefinitionSetFillMode();
      RETimelineDefinitionSetTargetPath();
      RETimelineDefinitionAddChildTimeline();
      realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&TimelineClip);
    }

    realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&__str);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  v22 = *(a1 + 7);
  v23 = *(a1 + 8);
  if (v22 == v23 || vabds_f32(v22, v23) < (((fabsf(v22) + fabsf(v23)) + 1.0) * 0.00001))
  {
    TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v30);
    v26 = strlen(a3);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30.__r_.__value_.__r.__words[2], a3, v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "_Fill", 5);
    std::stringbuf::str();
    TimelineClip = RETimelineDefinitionCreateTimelineClip();
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    *&__str.__r_.__value_.__l.__data_ = (*(a1 + 7) - *(a1 + 6));
    RETimelineDefinitionSetClipDuration();
    RETimelineDefinitionSetFillMode();
    TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
    realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&TimelineClip);
    v30.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
    v28 = *(MEMORY[0x277D82818] + 72);
    *(v30.__r_.__value_.__r.__words + *(v30.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v30.__r_.__value_.__r.__words[2] = v28;
    v31 = MEMORY[0x277D82878] + 16;
    if (v33 < 0)
    {
      operator delete(v32[7].__locale_);
    }

    v31 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v32);
    std::iostream::~basic_iostream();
    MEMORY[0x24C1A9110](&v34);
  }

  realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&TimelineGroup);
  return TimelineAsset;
}

void sub_2474BC0AC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  if (*(v25 - 113) < 0)
  {
    operator delete(*(v25 - 136));
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x277D82818]);
  MEMORY[0x24C1A9110](va);
  realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef((v25 - 112));
  _Unwind_Resume(a1);
}

char **std::vector<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo>>::~vector[abi:ne200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::SkelPoseInfo::~SkelPoseInfo(v3 - 248);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::vector<realityio::TimelineGroupFactory::TimelineData>::__emplace_back_slow_path<realityio::TimelineGroupFactory::TimelineData>(std::string **a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TimelineGroupFactory::TimelineData>>(a1, v7);
  }

  v14 = 0;
  v15 = (v2 << 6);
  realityio::TimelineGroupFactory::TimelineData::TimelineData(v2 << 6, a2);
  v16 = ((v2 << 6) + 64);
  v8 = a1[1];
  v9 = ((v2 << 6) + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::TimelineGroupFactory::TimelineData>,realityio::TimelineGroupFactory::TimelineData*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<realityio::TimelineGroupFactory::TimelineData>::~__split_buffer(&v14);
  return v13;
}

void sub_2474BC2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<realityio::TimelineGroupFactory::TimelineData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::TimelineGroupFactory::TimelineData::TimelineData(uint64_t a1, __int128 *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 56) = 0;
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 24);
  v6 = *(a2 + 5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v6;
  *(a2 + 24) = v5;
  *(a2 + 5) = v4;
  LODWORD(v5) = *(a1 + 48);
  *(a1 + 48) = *(a2 + 12);
  *(a2 + 12) = v5;
  LODWORD(v5) = *(a1 + 52);
  *(a1 + 52) = *(a2 + 13);
  *(a2 + 13) = v5;
  v7 = *(a1 + 56);
  v10 = v7;
  *(a1 + 56) = 0;
  v8 = *(a2 + 7);
  if (v8)
  {
    *(a1 + 56) = v8;
    *(a2 + 7) = 0;
  }

  if (v7)
  {
    *(a2 + 7) = v7;
    v10 = 0;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v10);
  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TimelineGroupFactory::TimelineData>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<realityio::TimelineGroupFactory::TimelineData>,realityio::TimelineGroupFactory::TimelineData*>(int a1, realityio::TimelineGroupFactory::TimelineData *a2, realityio::TimelineGroupFactory::TimelineData *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      realityio::TimelineGroupFactory::TimelineData::TimelineData(this, v8);
      v8 += 4;
      this = (this + 64);
      v7 -= 64;
    }

    while (v8 != a3);
    do
    {
      realityio::TimelineGroupFactory::TimelineData::~TimelineData(v6);
      v6 = (v6 + 64);
    }

    while (v6 != a3);
  }
}

void sub_2474BC46C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 64);
    do
    {
      realityio::TimelineGroupFactory::TimelineData::~TimelineData(v4);
      v4 = (v5 - 64);
      v2 += 64;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *realityio::TimelineGroupFactory::TimelineData::TimelineData(std::string *this, __int128 *a2)
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

  this[2].__r_.__value_.__r.__words[0] = *(a2 + 6);
  v6 = *(a2 + 7);
  this[2].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    RERetain();
  }

  return this;
}

void sub_2474BC520(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<realityio::TimelineGroupFactory::TimelineData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    realityio::TimelineGroupFactory::TimelineData::~TimelineData((i - 64));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *realityio::TimelineGroupFactory::TimelineData::TimelineData(std::string *this, __int128 *a2, __int128 *a3, std::string::size_type a4, float a5, float a6)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v11 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v11;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v12;
  }

  *&this[2].__r_.__value_.__l.__data_ = a5;
  *(this[2].__r_.__value_.__r.__words + 1) = a6;
  this[2].__r_.__value_.__l.__size_ = a4;
  if (a4)
  {
    RERetain();
  }

  return this;
}

void sub_2474BC650(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void realityio::TimelineGroupFactory::TimelineData::~TimelineData(realityio::TimelineGroupFactory::TimelineData *this)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 7);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        realityio::TimelineGroupFactory::TimelineData::~TimelineData((v4 - 64));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::VtArray(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
  v7 = &v5;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3h const&)::_Filler>(a1, a2, &v7);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    if (a1[3] || (v3 = atomic_load((v1 - 16)), v3 != 1))
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
    }

    *a1 = 0;
  }
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3h const&)::_Filler>(unint64_t *a1, unint64_t a2, int **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load((v7 - 16));
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(a1, a2);
              v7 = New;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = New + v11;
                  v13 = *(v9 + v11);
                  *(v12 + 2) = *(v9 + v11 + 4);
                  *v12 = v13;
                  v11 += 6;
                }

                while (6 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 6 * v3;
            do
            {
              v16 = v7 + v15;
              v17 = *v14;
              *(v16 + 4) = *(v14 + 2);
              *v16 = v17;
              v15 += 6;
            }

            while (6 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 6 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          *(v27 + 2) = *(v7 + 4);
          *v27 = v28;
          v27 = (v27 + 6);
          v7 += 6;
          v26 -= 6;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 6 * v3;
        do
        {
          v31 = v25 + v30;
          v32 = *v29;
          *(v31 + 2) = *(v29 + 2);
          *v31 = v32;
          v30 += 6;
        }

        while (6 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0x2AAAAAAAAAAAAAABLL)
    {
      v19 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_AllocateNew(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = v19 + v20;
        v23 = *v21;
        *(v22 + 2) = *(v21 + 2);
        *v22 = v23;
        v20 += 6;
      }

      while (6 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
}

unsigned __int16 *pxrInternal__aapl__pxrReserved__::GfVec3h::operator+=(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = MEMORY[0x277D86658];
  v5 = *(MEMORY[0x277D86658] + 4 * *a1) + *(MEMORY[0x277D86658] + 4 * *a2);
  if (v5 == 0.0)
  {
    v6 = HIWORD(LODWORD(v5));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v5) >> 23)))
  {
    v6 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v5) >> 23)) + (((LODWORD(v5) & 0x7FFFFF) + ((LODWORD(v5) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v5));
  }

  *a1 = v6;
  v7 = *(v4 + 4 * a1[1]) + *(v4 + 4 * a2[1]);
  if (v7 == 0.0)
  {
    v8 = HIWORD(LODWORD(v7));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v7) >> 23)))
  {
    v8 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v7) >> 23)) + (((LODWORD(v7) & 0x7FFFFF) + ((LODWORD(v7) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v8) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v7));
  }

  a1[1] = v8;
  v9 = *(v4 + 4 * a1[2]) + *(v4 + 4 * a2[2]);
  if (v9 == 0.0)
  {
    v10 = HIWORD(LODWORD(v9));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v9) >> 23)))
  {
    v10 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v9) >> 23)) + (((LODWORD(v9) & 0x7FFFFF) + ((LODWORD(v9) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v10) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v9));
  }

  a1[2] = v10;
  return a1;
}

unsigned __int16 *pxrInternal__aapl__pxrReserved__::GfVec3h::operator*=(unsigned __int16 *a1, int a2, double a3)
{
  v4 = a3;
  v5 = MEMORY[0x277D86658];
  v6 = *(MEMORY[0x277D86658] + 4 * *a1) * v4;
  if (v6 == 0.0)
  {
    v7 = HIWORD(LODWORD(v6));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v6) >> 23)))
  {
    v7 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v6) >> 23)) + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
  }

  *a1 = v7;
  v8 = *(v5 + 4 * a1[1]) * v4;
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v8) >> 23)))
  {
    v9 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v8) >> 23)) + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  a1[1] = v9;
  v10 = *(v5 + 4 * a1[2]) * v4;
  if (v10 == 0.0)
  {
    v11 = HIWORD(LODWORD(v10));
  }

  else if (*(MEMORY[0x277D86650] + 2 * (LODWORD(v10) >> 23)))
  {
    v11 = *(MEMORY[0x277D86650] + 2 * (LODWORD(v10) >> 23)) + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
  }

  a1[2] = v11;
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::VtArray(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
  v6 = &v5;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfQuatf const&)::_Filler>(a1, a2, &v6);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfQuatf const&)::_Filler>(unint64_t *a1, unint64_t a2, _OWORD **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_AllocateNew(a1, a2);
              v7 = New;
              if (v3)
              {
                v11 = 0;
                do
                {
                  *&New[v11] = *(v9 + v11 * 8);
                  v11 += 2;
                }

                while (2 * v3 != v11);
              }
            }

            v12 = *a3;
            v13 = 2 * v3;
            do
            {
              *&v7[v13] = *v12;
              v13 += 2;
            }

            while (2 * a2 != v13);
          }

          v14 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a1;
      }

      v20 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_AllocateNew(a1, a2);
      v14 = v20;
      if (v3)
      {
        v21 = 16 * v19;
        v22 = v20;
        do
        {
          v23 = *v7;
          v7 += 2;
          *v22++ = v23;
          v21 -= 16;
        }

        while (v21);
      }

      if (v3 < a2)
      {
        v24 = *a3;
        v25 = 2 * v3;
        do
        {
          *&v20[v25] = *v24;
          v25 += 2;
        }

        while (2 * a2 != v25);
      }

      goto LABEL_31;
    }

    v15 = 16 * a2;
    if (16 * a2 / a2 == 16)
    {
      v16 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_AllocateNew(a1, a2);
      v14 = v16;
      v17 = 0;
      v18 = *a3;
      do
      {
        *&v16[v17 / 8] = *v18;
        v17 += 16;
      }

      while (v15 != v17);
LABEL_31:
      if (v14 != a1[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
        a1[4] = v14;
      }

      *a1 = a2;
      return;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::VtArray(uint64_t a1, unint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = 0;
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
  v7 = &v5;
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3f const&)::_Filler>(a1, a2, &v7);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::resize<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::assign(unsigned long,pxrInternal__aapl__pxrReserved__::GfVec3f const&)::_Filler>(unint64_t *a1, unint64_t a2, uint64_t **a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    return;
  }

  if (a2)
  {
    v7 = a1[4];
    if (v7)
    {
      if (!a1[3])
      {
        v8 = atomic_load((v7 - 16));
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = a1[4];
            if (*(v9 - 8) < a2)
            {
              New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(a1, a2);
              v7 = New;
              if (v3)
              {
                v11 = 0;
                do
                {
                  v12 = New + v11;
                  v13 = *(v9 + v11);
                  *(v12 + 2) = *(v9 + v11 + 8);
                  *v12 = v13;
                  v11 += 12;
                }

                while (12 * v3 != v11);
              }
            }

            v14 = *a3;
            v15 = 12 * v3;
            do
            {
              v16 = v7 + v15;
              v17 = *v14;
              *(v16 + 8) = *(v14 + 2);
              *v16 = v17;
              v15 += 12;
            }

            while (12 * a2 != v15);
          }

          v18 = v7;
          goto LABEL_31;
        }

        v7 = a1[4];
      }

      if (v3 >= a2)
      {
        v24 = a2;
      }

      else
      {
        v24 = *a1;
      }

      v25 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(a1, a2);
      v18 = v25;
      if (v3)
      {
        v26 = 12 * v24;
        v27 = v25;
        do
        {
          v28 = *v7;
          *(v27 + 2) = *(v7 + 8);
          *v27 = v28;
          v27 = (v27 + 12);
          v7 += 12;
          v26 -= 12;
        }

        while (v26);
      }

      if (v3 < a2)
      {
        v29 = *a3;
        v30 = 12 * v3;
        do
        {
          v31 = v25 + v30;
          v32 = *v29;
          *(v31 + 2) = *(v29 + 2);
          *v31 = v32;
          v30 += 12;
        }

        while (12 * a2 != v30);
      }

      goto LABEL_31;
    }

    if (a2 < 0x1555555555555556)
    {
      v19 = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_AllocateNew(a1, a2);
      v18 = v19;
      v20 = 0;
      v21 = *a3;
      do
      {
        v22 = v19 + v20;
        v23 = *v21;
        *(v22 + 2) = *(v21 + 2);
        *v22 = v23;
        v20 += 12;
      }

      while (12 * a2 != v20);
LABEL_31:
      if (v18 != a1[4])
      {
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(a1);
        a1[4] = v18;
      }

      *a1 = a2;
      return;
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::clear(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(void *result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = *a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 16;
  v7 = (a1 + 8);
  do
  {
    v8 = v3[4];
    if (v8)
    {
      v9 = v4 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (v4)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        goto LABEL_15;
      }
    }

    else if (v8 != v4)
    {
      v11 = v8 & 0xFFFFFFFFFFFFFFF8;
      v12 = *(v11 + 8);
      v13 = *(v5 + 8);
      if (v12 < v13)
      {
        goto LABEL_15;
      }

      if (v12 == v13)
      {
        v14 = *(v5 + 39);
        v17 = *(v11 + 16);
        v15 = v11 + 16;
        v16 = v17;
        v18 = *(v15 + 23);
        if (v18 >= 0)
        {
          v19 = *(v15 + 23);
        }

        else
        {
          v19 = *(v15 + 8);
        }

        if (v18 >= 0)
        {
          v20 = v15;
        }

        else
        {
          v20 = v16;
        }

        if (v14 >= 0)
        {
          v21 = *(v5 + 39);
        }

        else
        {
          v21 = *(v5 + 24);
        }

        if (v14 >= 0)
        {
          v22 = (v5 + 16);
        }

        else
        {
          v22 = *(v5 + 16);
        }

        if (v21 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v21;
        }

        v24 = memcmp(v20, v22, v23);
        v25 = v19 < v21;
        if (v24)
        {
          v25 = v24 < 0;
        }

        if (v25)
        {
LABEL_15:
          ++v3;
          goto LABEL_36;
        }
      }
    }

    v7 = v3;
LABEL_36:
    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v26 = v7[4];
  if (!v4 || !v26)
  {
    if (v4 || !v26)
    {
      return v7;
    }

    return v2;
  }

  if (v4 != v26)
  {
    v27 = v26 & 0xFFFFFFFFFFFFFFF8;
    v28 = *(v5 + 8);
    v29 = *(v27 + 8);
    if (v28 < v29)
    {
      return v2;
    }

    if (v28 == v29)
    {
      v32 = *(v27 + 16);
      v30 = v27 + 16;
      v31 = v32;
      v33 = *(v30 + 23);
      v34 = *(v5 + 39);
      v35 = *(v5 + 16);
      v36 = v34 >= 0 ? *(v5 + 39) : *(v5 + 24);
      v37 = (v34 >= 0 ? v6 : v35);
      v38 = v33 >= 0 ? *(v30 + 23) : *(v30 + 8);
      v39 = (v33 >= 0 ? v30 : v31);
      v40 = v38 >= v36 ? v36 : v38;
      v41 = memcmp(v37, v39, v40);
      v42 = v36 < v38;
      if (v41)
      {
        v42 = v41 < 0;
      }

      if (v42)
      {
        return v2;
      }
    }
  }

  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<TimeSampledDataT>(uint64_t result)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((result + 24));

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t std::allocator_traits<std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo>>::construct[abi:ne200100]<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,0>(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v4 + 1, (a2 + 4));
  v6 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v6;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v7 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  v9 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v9;
  *(a1 + 160) = 0;
  if (*(a2 + 160))
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v18, a1 + 152);
    v10 = *(a2 + 160);
    v11 = ~*(a2 + 160);
    *(a1 + 160) = v10;
    if ((v11 & 3) != 0)
    {
      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 40))(a2 + 152, a1 + 152);
    }

    else
    {
      *(a1 + 152) = *(a2 + 152);
    }

    *(a2 + 160) = 0;
    if (v19)
    {
      result = (*(v19 + 32))(v18);
    }
  }

  v12 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v12;
  *(a1 + 200) = 0;
  if (*(a2 + 200))
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v18, a1 + 192);
    v13 = *(a2 + 200);
    v14 = ~*(a2 + 200);
    *(a1 + 200) = v13;
    if ((v14 & 3) != 0)
    {
      result = (*((v13 & 0xFFFFFFFFFFFFFFF8) + 40))(a2 + 192, a1 + 192);
    }

    else
    {
      *(a1 + 192) = *(a2 + 192);
    }

    *(a2 + 200) = 0;
    if (v19)
    {
      result = (*(v19 + 32))(v18);
    }
  }

  v15 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v15;
  *(a1 + 240) = 0;
  if (*(a2 + 240))
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v18, a1 + 232);
    v16 = *(a2 + 240);
    v17 = ~*(a2 + 240);
    *(a1 + 240) = v16;
    if ((v17 & 3) != 0)
    {
      result = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 40))(a2 + 232, a1 + 232);
    }

    else
    {
      *(a1 + 232) = *(a2 + 232);
    }

    *(a2 + 240) = 0;
    if (v19)
    {
      return (*(v19 + 32))(v18);
    }
  }

  return result;
}

void sub_2474BDA78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo,std::allocator<realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)::SkelPoseInfo> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    realityio::SkeletalAnimationTimelineAssetAction::operator()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::VtValue const&,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&,std::vector<pxrInternal__aapl__pxrReserved__::VtValue> const&)const::SkelPoseInfo::~SkelPoseInfo((i - 248));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v5 = v2[6];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      v6 = v2[4];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v2[3];
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__shared_ptr_emplace<realityio::SkeletalAnimationAssetBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859459A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_DecRef(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v4 = a1 + 3;
    v3 = a1[3];
    if (v3)
    {
      if (atomic_fetch_add_explicit(v3, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
      {
        __dmb(9u);
        v7 = *(*v4 + 8);
        if (v7)
        {
          v7();
        }
      }
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 8 * *a1;
        do
        {
          v5 = realityio::WrappedRERef<REAsset *>::~WrappedRERef(v5) + 1;
          v6 -= 8;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete(v5 - 2);
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void realityio::Inputs::~Inputs(realityio::Inputs *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 32);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void realityio::Outputs::getRawValue<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT *>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  std::mutex::lock(a1 + 1);
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&a1->__m_.__opaque[32], a2);
  if (&a1->__m_.__opaque[40] == v6)
  {
    std::operator+<char>();
    v8 = std::string::append(&v11, " does not exist in the builder outputs");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13 = v8->__r_.__value_.__r.__words[2];
    *__p = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(&v14, 207, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = v14;
    v10 = v16;
    *(a3 + 24) = v15;
    *(a3 + 32) = v10;
    *(a3 + 39) = *(&v16 + 7);
    LOBYTE(v10) = HIBYTE(v16);
    v16 = 0uLL;
    v15 = 0;
    *a3 = 0;
    *(a3 + 47) = v10;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *(*(v6 + 56) + 8);
    *a3 = 1;
    *(a3 + 8) = v7;
  }

  std::mutex::unlock(a1 + 1);
}

void sub_2474BDE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::emplace_back<realityio::WrappedRERef<REAsset *>>(uint64_t *a1, void *a2)
{
  if (!*(a1 + 2))
  {
    v4 = *a1;
    if (a1[3])
    {
      goto LABEL_15;
    }

    v5 = a1[4];
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = atomic_load((v5 - 16));
    if (v6 != 1)
    {
      goto LABEL_15;
    }

    v5 = a1[4];
    if (v5)
    {
      if (a1[3])
      {
        v7 = a1;
      }

      else
      {
        v7 = (v5 - 8);
      }

      v8 = *v7;
    }

    else
    {
LABEL_10:
      v8 = 0;
    }

    if (v4 != v8)
    {
      *(v5 + 8 * v4) = *a2;
      *a2 = 0;
LABEL_13:
      ++*a1;
      return;
    }

LABEL_15:
    v9 = 1;
    do
    {
      v10 = v9;
      v9 *= 2;
    }

    while (v10 < v4 + 1);
    Copy = pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_AllocateCopy(a1, a1[4], v10, *a1);
    Copy[v4] = *a2;
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_DecRef(a1);
    a1[4] = Copy;
    goto LABEL_13;
  }

  v13[0] = "vt/array.h";
  v13[1] = "emplace_back";
  v13[2] = 416;
  v13[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::emplace_back(Args &&...) [ELEM = realityio::WrappedRERef<REAsset *>, Args = <realityio::WrappedRERef<REAsset *>>]";
  v14 = 0;
  if (*(a1 + 3))
  {
    if (*(a1 + 4))
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }
  }

  else
  {
    v12 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v13, 1, "Array rank %u != 1", v12);
}

void *pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_AllocateCopy(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  New = pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_AllocateNew(a1, a3);
  if (a4)
  {
    v7 = 0;
    v8 = 8 * a4;
    do
    {
      v9 = *(a2 + v7);
      New[v7 / 8] = v9;
      if (v9)
      {
        RERetain();
      }

      v7 += 8;
    }

    while (v8 != v7);
  }

  return New;
}

void sub_2474BE060(void *a1)
{
  __cxa_begin_catch(a1);
  for (; v2; v2 -= 8)
  {
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(v1++);
  }

  __cxa_rethrow();
}

void *pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_AllocateNew(size_t) [ELEM = realityio::WrappedRERef<REAsset *>]");
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>::_Move(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>::_DecrementIfValid(a1);
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(a2, v2);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::_DecRef(v1);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>::operator==(void *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2) && a1[3] == *(a2 + 24))
  {
    return 1;
  }

  result = pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  v7 = 8 * *a1 - 8;
  do
  {
    v9 = *v5++;
    v8 = v9;
    v10 = *v6++;
    result = v8 == v10;
    v11 = v8 != v10 || v7 == 0;
    v7 -= 8;
  }

  while (!v11);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Vt_ShapeData::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    if (*(a1 + 12))
    {
      v7 = *(a1 + 16) ? 4 : 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = (a2 + 8);
  if (*(a2 + 8))
  {
    if (*(a2 + 12))
    {
      v9 = *(a2 + 16) ? 4 : 3;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (v5)
  {
    if (*(a1 + 12))
    {
      v10 = *(a1 + 16) == 0;
      v11 = 3;
      if (!v10)
      {
        v11 = 4;
      }
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 1;
  }

  return memcmp(v4, v8, 4 * v11 - 4) == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>,pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>> const&>();
  }

  return *a1;
}

uint64_t *std::vector<RESRT>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<RESRT>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2474BE6B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<RESRT>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RESRT>>(a1, a2);
  }

  std::vector<char const*>::__throw_length_error[abi:ne200100]();
}

void realityio::anonymous namespace::copyAnimationLibraryEntryAndAssignToEntityHelper(realityio *a1, uint64_t a2, uint64_t *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v4 = *realityio::logObjects(a1);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v5 = "To and from entities must be valid.";
LABEL_13:
    _os_log_impl(&dword_247485000, v4, OS_LOG_TYPE_DEFAULT, v5, &buf, 2u);
    return;
  }

  {
    v4 = *realityio::logObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v5 = "Could not find animation components to copy to and from.";
    goto LABEL_13;
  }

  if (!REAnimationLibraryComponentGetAnimationLibraryAsset())
  {
    v4 = *realityio::logObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v5 = "Could not find animation library assets to copy from and into.";
    goto LABEL_13;
  }

  v25 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
  if (v25)
  {
    if (*(a3 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, a3[3], a3[4]);
    }

    else
    {
      buf = *(a3 + 1);
    }

    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v7 = REAnimationLibraryComponentDefaultLocalSubtreeSceneName();
      MEMORY[0x24C1A8D40](&buf, v7);
    }

    EntryAssetByKey = REAnimationLibraryDefinitionGetEntryAssetByKey();
    if (!EntryAssetByKey)
    {
      goto LABEL_54;
    }

    RERetain();
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *a3, a3[1]);
    }

    else
    {
      v22 = *a3;
    }

    if (*(a3 + 9) <= 0.0 && *(a3 + 10) <= 0.0 && *(a3 + 88) != 1)
    {
      goto LABEL_39;
    }

    v21 = 0;
    Type = REAssetGetType();
    if (CFStringCompare(Type, @"Timeline", 0))
    {
      *v26 = EntryAssetByKey;
      realityio::WrappedRERef<REAsset *>::operator=(&v21, v26);
      RootTimeline = REAnimationSceneAssetGetRootTimeline();
      if (RootTimeline)
      {
LABEL_28:
        *v26 = 0;
        v10 = RETimelineDefinitionCreateFromTimeline();
        if (*v26)
        {
          RERelease();
        }

        *v26 = v10;
        TimelineClip = RETimelineDefinitionCreateTimelineClip();
        if (*(a3 + 9) > 0.0)
        {
          RETimelineDefinitionSetClipStart();
        }

        if (*(a3 + 10) > 0.0)
        {
          RETimelineDefinitionSetClipEnd();
        }

        if (*(a3 + 88) == 1)
        {
          RETimelineDefinitionSetClipLoopBehavior();
          TimelineAsset = 0x7FF0000000000000;
          RETimelineDefinitionSetClipDuration();
          RETimelineDefinitionSetFillMode();
          std::string::append(&v22, "__auto_generated_looping");
        }

        TimelineAsset = RETimelineDefinitionCreateTimelineAsset();
        if (TimelineAsset)
        {
          v18 = REAnimationSceneAssetCreateWithTimeline();
          realityio::WrappedRERef<REAsset *>::operator=(&EntryAssetByKey, &v18);
          realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v18);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&TimelineAsset);
        realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(&TimelineClip);
        realityio::WrappedRERef<RETimelineDefinition *>::~WrappedRERef(v26);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v21);
LABEL_39:
        REAnimationLibraryDefinitionAddEntryAsset();
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v22;
        }

        else
        {
          v11 = v22.__r_.__value_.__r.__words[0];
        }

        v12 = REAnimationLibraryDefinitionAddKeyedEntryIndex();
        if ((v12 & 1) == 0)
        {
          v13 = *realityio::logObjects(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *v26 = 136315138;
            *&v26[4] = v11;
            _os_log_impl(&dword_247485000, v13, OS_LOG_TYPE_DEFAULT, "Could not add key for animation named: %s.", v26, 0xCu);
          }
        }

        *v26 = 0;
        *v26 = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
        REAnimationLibraryComponentAssignAnimationLibraryAsset();
        v14 = v26;
LABEL_52:
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(v14);
        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

LABEL_54:
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&EntryAssetByKey);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        goto LABEL_56;
      }
    }

    else
    {
      *v26 = REAnimationSceneEntityDefinitionCreate();
      v15 = EntryAssetByKey;
      v21 = REAnimationSceneAssetCreateWithTimelineAndEntityDefinition();
      RootTimeline = realityio::WrappedRERef<REAnimationSceneEntityDefinition *>::~WrappedRERef(v26);
      if (v15)
      {
        goto LABEL_28;
      }
    }

    v16 = *realityio::logObjects(RootTimeline);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      p_buf = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      *v26 = 136315138;
      *&v26[4] = p_buf;
      _os_log_impl(&dword_247485000, v16, OS_LOG_TYPE_DEFAULT, "Could not add animation clip for animation named: %s.", v26, 0xCu);
    }

    v14 = &v21;
    goto LABEL_52;
  }

LABEL_56:
  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&v25);
}

void sub_2474BEC64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, __int16 a32, char a33, char a34)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a16);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a23);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&a30);
  _Unwind_Resume(a1);
}

void realityio::anonymous namespace::AnimationLibraryEntry::~AnimationLibraryEntry(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void realityio::AnimationSceneAssetBuilder::AnimationSceneAssetBuilder(realityio::AnimationSceneAssetBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[11] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "AnimationSceneAssetBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kAnimationSceneAssetBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE52CC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52CC8))
  {
    operator new();
  }

  v4[0] = _MergedGlobals_2;
  v4[1] = unk_27EE52CC0;
  if (unk_27EE52CC0)
  {
    atomic_fetch_add_explicit((unk_27EE52CC0 + 8), 1uLL, memory_order_relaxed);
  }

  v8[0] = &unk_285945C50;
  v8[3] = v8;
  v7[0] = &unk_285945EA0;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, v4, v8, v7);
}

void sub_2474BF1F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  MEMORY[0x24C1A91B0](v38, 0x1060C40E5A1EACFLL, a3, a4, a5, a6, a7, a8);
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  v41 = *(v39 - 120);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  MEMORY[0x24C1A91B0](v37, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v36, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE52CC8);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void realityio::buildSceneAssetsAndAnimationLibraries(uint64_t a1, int a2, uint64_t a3, unint64_t a4, const void **a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, void *a11)
{
  v182[4] = *MEMORY[0x277D85DE8];
  v176 = a4;
  if (!a4 || std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::find<REEntity *>(a11, &v176))
  {
    return;
  }

  v175 = *(*(*(a3 + 40) + 16) + 16);
  std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::__emplace_unique_key_args<REEntity *,REEntity * const&>(a11, &v176, &v176);
  v144 = a2;
  if (a2)
  {
    Name = REEntityGetName();
    std::string::basic_string[abi:ne200100]<0>(&v174, Name);
  }

  else
  {
    if (*(a5 + 23) >= 0)
    {
      v19 = *(a5 + 23);
    }

    else
    {
      v19 = a5[1];
    }

    std::string::basic_string[abi:ne200100](&v179, v19 + 1);
    v20 = a1;
    if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v179;
    }

    else
    {
      v21 = v179.__r_.__value_.__r.__words[0];
    }

    if (v19)
    {
      if (*(a5 + 23) >= 0)
      {
        v22 = a5;
      }

      else
      {
        v22 = *a5;
      }

      memmove(v21, v22, v19);
    }

    *(&v21->__r_.__value_.__l.__data_ + v19) = 47;
    v23 = REEntityGetName();
    v24 = std::string::append(&v179, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v174.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v174.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    a1 = v20;
    if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v179.__r_.__value_.__l.__data_);
    }
  }

  if ((SHIBYTE(v174.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v168 = v174;
    v169 = 0xFF7FFFFF7F7FFFFFLL;
    v170 = -8388609;
    v172 = 0;
    v173 = 0;
    v171 = 0;
LABEL_21:
    v162 = v174;
    goto LABEL_22;
  }

  std::string::__init_copy_ctor_external(&v168, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
  v169 = 0xFF7FFFFF7F7FFFFFLL;
  v170 = -8388609;
  v172 = 0;
  v173 = 0;
  v171 = 0;
  if ((SHIBYTE(v174.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  std::string::__init_copy_ctor_external(&v162, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
LABEL_22:
  v163 = 0xFF7FFFFF7F7FFFFFLL;
  v164 = -8388609;
  v166 = 0;
  v167 = 0;
  v165 = 0;
  v161[0] = 0;
  v161[1] = 0;
  v159 = 0;
  v160 = v161;
  v157 = &v158;
  v158 = 0;
  ChildCount = REEntityGetChildCount();
  if (ChildCount)
  {
    for (i = 0; i != ChildCount; ++i)
    {
      Child = REEntityGetChild();
      realityio::buildSceneAssetsAndAnimationLibraries(a1, 0, a3, Child, &v174.__r_.__value_.__l.__data_, a6, a7, a8, a9, &v162, a11);
    }
  }

  v29 = a6[1];
  v30 = 0x9DDFEA08EB382D69 * ((8 * (v176 & 0x1FFFFFFF) + 8) ^ HIDWORD(v176));
  v31 = 0x9DDFEA08EB382D69 * (HIDWORD(v176) ^ (v30 >> 47) ^ v30);
  v32 = 0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47));
  if (!*&v29)
  {
    goto LABEL_42;
  }

  v33 = vcnt_s8(v29);
  v33.i16[0] = vaddlv_u8(v33);
  if (v33.u32[0] > 1uLL)
  {
    v34 = v32;
    if (v32 >= *&v29)
    {
      v34 = v32 % *&v29;
    }
  }

  else
  {
    v34 = v32 & (*&v29 - 1);
  }

  v35 = *(*a6 + 8 * v34);
  if (v35)
  {
    v36 = *v35;
    if (*v35)
    {
      do
      {
        v37 = v36[1];
        if (v32 == v37)
        {
          if (v36[2] == v176)
          {
            break;
          }
        }

        else
        {
          if (v33.u32[0] > 1uLL)
          {
            if (v37 >= *&v29)
            {
              v37 %= *&v29;
            }
          }

          else
          {
            v37 &= *&v29 - 1;
          }

          if (v37 != v34)
          {
            goto LABEL_42;
          }
        }

        v36 = *v36;
      }

      while (v36);
    }
  }

  else
  {
LABEL_42:
    v36 = 0;
  }

  v38 = a7[1];
  if (!*&v38)
  {
    goto LABEL_60;
  }

  v39 = vcnt_s8(v38);
  v39.i16[0] = vaddlv_u8(v39);
  if (v39.u32[0] > 1uLL)
  {
    v40 = v32;
    if (v32 >= *&v38)
    {
      v40 = v32 % *&v38;
    }
  }

  else
  {
    v40 = (*&v38 - 1) & v32;
  }

  v41 = *(*a7 + 8 * v40);
  if (v41)
  {
    v42 = *v41;
    if (*v41)
    {
      do
      {
        v43 = v42[1];
        if (v32 == v43)
        {
          if (v42[2] == v176)
          {
            break;
          }
        }

        else
        {
          if (v39.u32[0] > 1uLL)
          {
            if (v43 >= *&v38)
            {
              v43 %= *&v38;
            }
          }

          else
          {
            v43 &= *&v38 - 1;
          }

          if (v43 != v40)
          {
            goto LABEL_60;
          }
        }

        v42 = *v42;
      }

      while (v42);
    }
  }

  else
  {
LABEL_60:
    v42 = 0;
  }

  v44 = a8[1];
  if (!*&v44)
  {
    goto LABEL_78;
  }

  v45 = vcnt_s8(v44);
  v45.i16[0] = vaddlv_u8(v45);
  if (v45.u32[0] > 1uLL)
  {
    v46 = v32;
    if (v32 >= *&v44)
    {
      v46 = v32 % *&v44;
    }
  }

  else
  {
    v46 = (*&v44 - 1) & v32;
  }

  v47 = *(*a8 + 8 * v46);
  if (v47)
  {
    v48 = *v47;
    if (*v47)
    {
      do
      {
        v49 = v48[1];
        if (v32 == v49)
        {
          if (v48[2] == v176)
          {
            break;
          }
        }

        else
        {
          if (v45.u32[0] > 1uLL)
          {
            if (v49 >= *&v44)
            {
              v49 %= *&v44;
            }
          }

          else
          {
            v49 &= *&v44 - 1;
          }

          if (v49 != v46)
          {
            goto LABEL_78;
          }
        }

        v48 = *v48;
      }

      while (v48);
    }
  }

  else
  {
LABEL_78:
    v48 = 0;
  }

  v50 = a9[1];
  if (!*&v50)
  {
    goto LABEL_96;
  }

  v51 = vcnt_s8(v50);
  v51.i16[0] = vaddlv_u8(v51);
  if (v51.u32[0] > 1uLL)
  {
    v52 = v32;
    if (v32 >= *&v50)
    {
      v52 = v32 % *&v50;
    }
  }

  else
  {
    v52 = (*&v50 - 1) & v32;
  }

  v53 = *(*a9 + 8 * v52);
  if (v53)
  {
    v54 = *v53;
    if (*v53)
    {
      do
      {
        v55 = v54[1];
        if (v32 == v55)
        {
          if (v54[2] == v176)
          {
            break;
          }
        }

        else
        {
          if (v51.u32[0] > 1uLL)
          {
            if (v55 >= *&v50)
            {
              v55 %= *&v50;
            }
          }

          else
          {
            v55 &= *&v50 - 1;
          }

          if (v55 != v52)
          {
            goto LABEL_96;
          }
        }

        v54 = *v54;
      }

      while (v54);
    }
  }

  else
  {
LABEL_96:
    v54 = 0;
  }

  v145 = v36;
  v146 = v48;
  v147 = v42;
  if (v36)
  {
    v56 = v36[3];
    v57 = v56[6] - v56[5];
    if (v57)
    {
      v58 = 0;
      v59 = v57 >> 3;
      if (v59 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = v59;
      }

      do
      {
        v61 = *(v56[5] + 8 * v58);
        __p.__r_.__value_.__r.__words[0] = *(v56[2] + 8 * v58);
        if (__p.__r_.__value_.__r.__words[0])
        {
          RERetain();
          v62 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          v62 = 0;
        }

        v63 = *(v61 + 8);
        v64 = *(v61 + 16);
        if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v65 = &v174;
        }

        else
        {
          v65 = v174.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:ne200100]<0>(&v179, v65);
        v66 = v64;
        v67 = v63;
        realityio::TimelineGroupFactory::addTimeline(&v168, v62, &v179.__r_.__value_.__l.__data_, "entitySceneClip", v67, v66);
        if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v179.__r_.__value_.__l.__data_);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
        ++v58;
      }

      while (v60 != v58);
    }
  }

  v155 = 0;
  v156 = 0;
  v154 = &v155;
  REAnimationLibraryComponentGetComponentType();
  if (REEntityGetComponentByClass() && REAnimationLibraryComponentGetAnimationLibraryAsset())
  {
    ServiceLocator = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](ServiceLocator);
    v178 = 0;
    v69 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
    if (v178)
    {
      RERelease();
    }

    v178 = v69;
    KeyCount = REAnimationLibraryAssetGetKeyCount();
    memset(&__p, 0, sizeof(__p));
    if (KeyCount)
    {
      std::vector<char const*>::__vallocate[abi:ne200100](&__p, KeyCount);
    }

    REAnimationLibraryAssetGetKeys();
    if (v178)
    {
      REAnimationLibraryDefinitionClearEntries();
      v179.__r_.__value_.__r.__words[0] = 0;
      v179.__r_.__value_.__r.__words[0] = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
      if (v179.__r_.__value_.__r.__words[0])
      {
        REAnimationLibraryComponentAssignAnimationLibraryAsset();
      }

      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v179);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&v178);
  }

  if (v156)
  {
    v71 = v154;
    if (v154 != &v155)
    {
      do
      {
        v72 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v160, v71 + 4);
        if (v161 == v72)
        {
          if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v174;
          }

          v149 = 0xFF7FFFFF7F7FFFFFLL;
          v150 = -8388609;
          v152 = 0;
          v153 = 0;
          v151 = 0;
          std::pair<std::string,realityio::TimelineGroupFactory>::pair[abi:ne200100]<std::string const&,realityio::TimelineGroupFactory,0>(&v179, v71 + 2, &__p);
          std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::TimelineGroupFactory>>(&v160, &v179.__r_.__value_.__l.__data_, &v179);
          v177 = v182;
          std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v177);
          if (v181 < 0)
          {
            operator delete(v180);
          }

          if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v179.__r_.__value_.__l.__data_);
          }

          v177 = &v151;
          std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v177);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v72 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v160, v71 + 4);
        }

        v73 = v71[7];
        if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = &v174;
        }

        else
        {
          v74 = v174.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:ne200100]<0>(&v179, v74);
        realityio::TimelineGroupFactory::addTimeline((v72 + 56), v73, &v179.__r_.__value_.__l.__data_, "entitySceneClip", 0.0, 0.0);
        if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v179.__r_.__value_.__l.__data_);
        }

        v75 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v157, v71 + 4);
        if (&v158 == v75)
        {
          if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v174.__r_.__value_.__l.__data_, v174.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v174;
          }

          v149 = 0xFF7FFFFF7F7FFFFFLL;
          v150 = -8388609;
          v152 = 0;
          v153 = 0;
          v151 = 0;
          std::pair<std::string,realityio::TimelineGroupFactory>::pair[abi:ne200100]<std::string const&,realityio::TimelineGroupFactory,0>(&v179, v71 + 2, &__p);
          std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::__emplace_unique_key_args<std::string,std::pair<std::string,realityio::TimelineGroupFactory>>(&v157, &v179.__r_.__value_.__l.__data_, &v179);
          v177 = v182;
          std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v177);
          if (v181 < 0)
          {
            operator delete(v180);
          }

          if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v179.__r_.__value_.__l.__data_);
          }

          v177 = &v151;
          std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v177);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v75 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v157, v71 + 4);
        }

        v76 = v71[7];
        if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = &v174;
        }

        else
        {
          v77 = v174.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:ne200100]<0>(&v179, v77);
        realityio::TimelineGroupFactory::addTimeline((v75 + 56), v76, &v179.__r_.__value_.__l.__data_, "defaultSceneClip", 0.0, 0.0);
        if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v179.__r_.__value_.__l.__data_);
        }

        v78 = v71[1];
        if (v78)
        {
          do
          {
            v79 = v78;
            v78 = *v78;
          }

          while (v78);
        }

        else
        {
          do
          {
            v79 = v71[2];
            v80 = *v79 == v71;
            v71 = v79;
          }

          while (!v80);
        }

        v71 = v79;
      }

      while (v79 != &v155);
    }
  }

  if (v147 && ((v81 = *(v147[3] + 8), v83 = *(v81 + 16), v82 = *(v81 + 24), v84 = *(v81 + 8), v85 = *v81, (v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v86 = &v174) : (v86 = v174.__r_.__value_.__r.__words[0]), std::string::basic_string[abi:ne200100]<0>(&v179, v86), v87 = v82 * v83, v88 = v84 * v82, realityio::TimelineGroupFactory::addTimeline(&v168, v85, &v179.__r_.__value_.__l.__data_, "entitySceneClip", v88, v87), SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(v179.__r_.__value_.__l.__data_);
    if (!v146)
    {
      goto LABEL_185;
    }
  }

  else if (!v146)
  {
    goto LABEL_185;
  }

  v89 = v146[3];
  v90 = *(v89 + 8);
  if (v90)
  {
    v91 = *(v89 + 24);
    v92 = *(v89 + 32);
    v93 = (v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v174 : v174.__r_.__value_.__r.__words[0];
    std::string::basic_string[abi:ne200100]<0>(&v179, v93);
    v94 = v92;
    v95 = v91;
    realityio::TimelineGroupFactory::addTimeline(&v168, v90, &v179.__r_.__value_.__l.__data_, "entitySceneClip", v95, v94);
    if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v179.__r_.__value_.__l.__data_);
    }
  }

  v96 = *(v89 + 16);
  if (v96)
  {
    v97 = *(v89 + 24);
    v98 = *(v89 + 32);
    v99 = (v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v174 : v174.__r_.__value_.__r.__words[0];
    std::string::basic_string[abi:ne200100]<0>(&v179, v99);
    v100 = v98;
    v101 = v97;
    realityio::TimelineGroupFactory::addTimeline(&v168, v96, &v179.__r_.__value_.__l.__data_, "entitySceneClip", v101, v100);
    if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v179.__r_.__value_.__l.__data_);
    }
  }

LABEL_185:
  if (v54)
  {
    v102 = v54[3];
    v103 = v102[6] - v102[5];
    if (v103)
    {
      v104 = 0;
      v105 = v103 >> 3;
      if (v105 <= 1)
      {
        v106 = 1;
      }

      else
      {
        v106 = v105;
      }

      do
      {
        v107 = *(v102[5] + 8 * v104);
        __p.__r_.__value_.__r.__words[0] = *(v102[2] + 8 * v104);
        if (__p.__r_.__value_.__r.__words[0])
        {
          RERetain();
          v108 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          v108 = 0;
        }

        v109 = *(v107 + 16);
        v110 = *(v107 + 24);
        if ((v174.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v111 = &v174;
        }

        else
        {
          v111 = v174.__r_.__value_.__r.__words[0];
        }

        std::string::basic_string[abi:ne200100]<0>(&v179, v111);
        v112 = v110;
        v113 = v109;
        realityio::TimelineGroupFactory::addTimeline(&v168, v108, &v179.__r_.__value_.__l.__data_, "entitySceneClip", v113, v112);
        if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v179.__r_.__value_.__l.__data_);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&__p);
        ++v104;
      }

      while (v106 != v104);
    }
  }

  v177 = 0;
  REAnimationLibraryComponentGetComponentType();
  if (REEntityGetComponentByClass() && REAnimationLibraryComponentGetAnimationLibraryAsset())
  {
    v114 = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](v114);
    v115 = v147;
    v116 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
    if (v177)
    {
      RERelease();
    }

    v177 = v116;
    if (v116)
    {
      goto LABEL_209;
    }

    goto LABEL_206;
  }

  v115 = v147;
  if (!v177)
  {
LABEL_206:
    v117 = REAnimationLibraryDefinitionCreate();
    if (v177)
    {
      RERelease();
    }

    v177 = v117;
  }

LABEL_209:
  if (v172 != v171)
  {
    REEntityGetName();
    v178 = REAnimationSceneEntityDefinitionCreate();
    if (v145)
    {
      v118 = v145[3];
      v119 = v118[6] - v118[5];
      if (v119)
      {
        v120 = 0;
        if ((v119 >> 3) <= 1)
        {
          v121 = 1;
        }

        else
        {
          v121 = v119 >> 3;
        }

        do
        {
          REAnimationLibraryDefinitionAddEntryAsset();
          std::to_string(&__p, ++v120);
          v122 = std::string::insert(&__p, 0, "skeletal animation ");
          v123 = *&v122->__r_.__value_.__l.__data_;
          v179.__r_.__value_.__r.__words[2] = v122->__r_.__value_.__r.__words[2];
          *&v179.__r_.__value_.__l.__data_ = v123;
          v122->__r_.__value_.__l.__size_ = 0;
          v122->__r_.__value_.__r.__words[2] = 0;
          v122->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          REAnimationLibraryDefinitionAddKeyedEntryIndex();
          if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v179.__r_.__value_.__l.__data_);
          }
        }

        while (v121 != v120);
        v118 = v145[3];
      }

      v179.__r_.__value_.__r.__words[0] = v118[1];
      if (v179.__r_.__value_.__r.__words[0])
      {
        RERetain();
      }

      REAnimationSceneEntityDefinitionSetSkeletalPoseDefinitionAsset();
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v179);
    }

    if (v115)
    {
      REAnimationLibraryDefinitionAddEntryAsset();
      REAnimationLibraryDefinitionAddKeyedEntryIndex();
      REAnimationSceneEntityDefinitionSetHasTransformAnimations();
    }

    if (v146)
    {
      v124 = v146[3];
      if (*(v124 + 8))
      {
        REAnimationLibraryDefinitionAddEntryAsset();
        REAnimationLibraryDefinitionAddKeyedEntryIndex();
        v124 = v146[3];
      }

      if (*(v124 + 16))
      {
        REAnimationLibraryDefinitionAddEntryAsset();
        REAnimationLibraryDefinitionAddKeyedEntryIndex();
      }
    }

    if (v54)
    {
      v125 = *(v54[3] + 48) - *(v54[3] + 40);
      if (v125)
      {
        v126 = 0;
        v127 = v125 >> 3;
        if (v127 <= 1)
        {
          v128 = 1;
        }

        else
        {
          v128 = v127;
        }

        do
        {
          v129 = v54[3];
          REAnimationLibraryDefinitionAddEntryAsset();
          String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(*(*(v129 + 40) + 8 * v126));
          REAnimationLibraryDefinitionAddKeyedEntryIndex();
          v131 = v54[3];
          v132 = *(v131 + 87);
          if (v132 >= 0)
          {
            v133 = *(v131 + 87);
          }

          else
          {
            v133 = *(v131 + 72);
          }

          v134 = *(String + 23);
          v135 = v134;
          if ((v134 & 0x80u) != 0)
          {
            v134 = String[1];
          }

          if (v133 == v134)
          {
            v138 = *(v131 + 64);
            v136 = (v131 + 64);
            v137 = v138;
            if (v132 >= 0)
            {
              v139 = v136;
            }

            else
            {
              v139 = v137;
            }

            if (v135 < 0)
            {
              String = *String;
            }

            if (!memcmp(v139, String, v133))
            {
              REAnimationLibraryDefinitionSetDefaultEntryKey();
            }
          }

          ++v126;
        }

        while (v128 != v126);
      }
    }

    v180 = 0;
    operator new();
  }

  if (v166 != v165)
  {
    REEntityGetName();
    __p.__r_.__value_.__r.__words[0] = REAnimationSceneEntityDefinitionCreate();
    if (v145)
    {
      v179.__r_.__value_.__r.__words[0] = *(v145[3] + 8);
      if (v179.__r_.__value_.__r.__words[0])
      {
        RERetain();
      }

      REAnimationSceneEntityDefinitionSetSkeletalPoseDefinitionAsset();
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v179);
    }

    if (v115)
    {
      REAnimationSceneEntityDefinitionSetHasTransformAnimations();
    }

    v180 = 0;
    operator new();
  }

  if (v172 != v171 || v166 != v165 || v159)
  {
    if (v144 && v166 != v165)
    {
      v140 = REEntityGetName();
      v141 = std::string::basic_string[abi:ne200100]<0>(&v179, v140);
      v142 = std::string::append(v141, "__rootAnimationScene");
      v143 = *&v142->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v142->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v143;
      v142->__r_.__value_.__l.__size_ = 0;
      v142->__r_.__value_.__r.__words[2] = 0;
      v142->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      v178 = REAnimationSceneEntityDefinitionCreate();
      v180 = 0;
      operator new();
    }

    if (REAnimationLibraryDefinitionGetEntryCount())
    {
      operator new();
    }
  }

  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&v177);
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(&v154, v155);
  std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::destroy(v158);
  std::__tree<std::__value_type<std::string,realityio::TimelineGroupFactory>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::TimelineGroupFactory>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::TimelineGroupFactory>>>::destroy(v161[0]);
  v179.__r_.__value_.__r.__words[0] = &v165;
  std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v179);
  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  v179.__r_.__value_.__r.__words[0] = &v171;
  std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v179);
  if (SHIBYTE(v168.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v168.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v174.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v174.__r_.__value_.__l.__data_);
  }
}

void sub_2474C09EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  realityio::TimelineGroupFactory::~TimelineGroupFactory(&a51);
  if (a64 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string,realityio::TimelineGroupFactory>::~pair(uint64_t a1)
{
  v3 = (a1 + 64);
  std::vector<realityio::TimelineGroupFactory::TimelineData>::__destroy_vector::operator()[abi:ne200100](&v3);
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

uint64_t realityio::removeAnimationLibraries(uint64_t result, uint64_t a2, void *a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (a2)
  {
    v4 = result;
    result = std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::find<REEntity *>(a3, &v9);
    if (!result)
    {
      std::__hash_table<REEntity *,std::hash<REEntity *>,std::equal_to<REEntity *>,std::allocator<REEntity *>>::__emplace_unique_key_args<REEntity *,REEntity * const&>(a3, &v9, &v9);
      v5 = *(v4 + 48);
      v10[0] = &unk_2859461A0;
      v10[1] = &v9;
      v10[3] = v10;
      (*(*v5 + 16))(v5, v10);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v10);
      result = REEntityGetChildCount();
      v6 = result;
      if (result)
      {
        v7 = 0;
        do
        {
          Child = REEntityGetChild();
          result = realityio::removeAnimationLibraries(v4, Child, a3);
          ++v7;
        }

        while (v6 != v7);
      }
    }
  }

  return result;
}

void sub_2474C0EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::AnimationSceneAssetBuilder::run(realityio::AnimationSceneAssetBuilder *this, std::__shared_weak_count **a2)
{
  v319 = *MEMORY[0x277D85DE8];
  v5 = realityio::EntityBuilder::kRootEntityInputName(this);
  v261 = a2;
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v5, v296);
  if (v296[0] == 1 && v297)
  {
    v6 = realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v295, 2032, this, 0, 0, 0);
    v7 = realityio::SkeletalAnimationAggregationBuilder::kOutputName(v6);
    v284[0] = 0;
    v284[1] = 0;
    v8 = a2[3];
    if (v8)
    {
      v284[1] = std::__shared_weak_count::lock(v8);
      if (v284[1])
      {
        v284[0] = a2[2];
      }
    }

    MEMORY[0x24C1A5E00](&v284[2], v7);
    v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(a2[1], v284);
    v10 = v9;
    v12 = v11;
    v262 = this;
    if (v9 == v11)
    {
      std::operator+<char>();
      v13 = std::string::append(v278, ") at prim path (");
      v14 = *&v13->__r_.__value_.__l.__data_;
      *&v281[16] = *(&v13->__r_.__value_.__l + 2);
      *v281 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 4));
      v16 = *(String + 23);
      if (v16 >= 0)
      {
        v17 = String;
      }

      else
      {
        v17 = *String;
      }

      if (v16 >= 0)
      {
        v18 = *(String + 23);
      }

      else
      {
        v18 = *(String + 8);
      }

      v19 = std::string::append(v281, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      *&v287[16] = *(&v19->__r_.__value_.__l + 2);
      *v287 = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v21 = std::string::append(v287, ")");
      v22 = *&v21->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v21->__r_.__value_.__l + 2);
      *__p = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v314, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
      v291 = *&v314.__r_.__value_.__l.__data_;
      v23 = v314.__r_.__value_.__r.__words[2];
      *v293 = v315.__r_.__value_.__r.__words[0];
      *&v293[7] = *(v315.__r_.__value_.__r.__words + 7);
      v24 = v315.__r_.__value_.__s.__data_[15];
      *&v315.__r_.__value_.__l.__data_ = 0uLL;
      v314.__r_.__value_.__r.__words[2] = 0;
      v290[0] = 0;
      v292 = v23;
      v294 = v24;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((v287[23] & 0x80000000) != 0)
      {
        operator delete(*v287);
      }

      if ((v281[23] & 0x80000000) != 0)
      {
        operator delete(*v281);
      }

      if ((v278[23] & 0x80000000) != 0)
      {
        operator delete(*v278);
      }
    }

    else
    {
      memset(v281, 0, 24);
      do
      {
        v25 = *(v10 + 5);
        v2 = *(v25 + 16);
        v26 = *(v25 + 24);
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(v10 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*(v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
        }

        realityio::Outputs::getRawValue<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>(v2, EmptyString, &v314);
        if (v314.__r_.__value_.__s.__data_[0])
        {
          v28 = *&v314.__r_.__value_.__r.__words[1];
          if (v314.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v314.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit((*(&v28 + 1) + 8), 1uLL, memory_order_relaxed);
            __p[0] = 1;
            *&__p[8] = v28;
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
          }

          else
          {
            __p[0] = 1;
            *&__p[8] = v314.__r_.__value_.__l.__size_;
            *&__p[16] = 0;
          }
        }

        else
        {
          *v287 = *&v314.__r_.__value_.__r.__words[1];
          if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v287[16], v315.__r_.__value_.__l.__data_, v315.__r_.__value_.__l.__size_);
          }

          else
          {
            *&v287[16] = *&v315.__r_.__value_.__l.__data_;
            *v288 = *(&v315.__r_.__value_.__l + 2);
          }

          __p[0] = 0;
          *&__p[8] = *v287;
          *&__p[24] = *&v287[16];
          *&__p[40] = *v288;
        }

        realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&v314);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (__p[0] == 1)
        {
          v29 = *&v281[8];
          if (*&v281[8] >= *&v281[16])
          {
            v31 = (*&v281[8] - *v281) >> 4;
            v32 = v31 + 1;
            if ((v31 + 1) >> 60)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
            }

            v33 = *&v281[16] - *v281;
            if ((*&v281[16] - *v281) >> 3 > v32)
            {
              v32 = v33 >> 3;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFF0)
            {
              v34 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v34 = v32;
            }

            if (v34)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v34);
            }

            v35 = 16 * v31;
            v36 = *&__p[16];
            *(16 * v31) = *&__p[8];
            if (v36)
            {
              atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
            }

            v2 = (v35 + 16);
            v37 = (v35 - (*&v281[8] - *v281));
            memcpy(v37, *v281, *&v281[8] - *v281);
            v38 = *v281;
            *v281 = v37;
            *&v281[8] = v2;
            if (v38)
            {
              operator delete(v38);
            }
          }

          else
          {
            **&v281[8] = *&__p[8];
            v30 = *&__p[16];
            *(v29 + 8) = *&__p[16];
            if (v30)
            {
              atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
            }

            v2 = (v29 + 16);
          }

          *&v281[8] = v2;
        }

        v9 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(__p);
        v10 = *v10;
      }

      while (v10 != v12);
      LOBYTE(a2) = v281[8];
      memset(&v314, 0, sizeof(v314));
      *__p = &v314;
      __p[8] = 0;
      v39 = *&v281[8] - *v281;
      if (*&v281[8] != *v281)
      {
        if (!((v39 >> 4) >> 60))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v39 >> 4);
        }

        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v290[0] = 1;
      *&v291 = 0;
      *(&v291 + 1) = *&v281[8] - *v281;
      v292 = 0;
      memset(&v314, 0, sizeof(v314));
      *__p = &v314;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](__p);
      v314.__r_.__value_.__r.__words[0] = v281;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v314);
    }

    if ((v284[2] & 7) != 0)
    {
      atomic_fetch_add_explicit((v284[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v40 = v284[1];
    if (v284[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v284[1]);
    }

    v41 = realityio::TransformAnimationAggregationBuilder::kOutputName(v40);
    v284[0] = 0;
    v284[1] = 0;
    v42 = *(v261 + 3);
    if (v42)
    {
      v284[1] = std::__shared_weak_count::lock(v42);
      if (v284[1])
      {
        v284[0] = *(v261 + 2);
      }
    }

    MEMORY[0x24C1A5E00](&v284[2], v41);
    v43 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v261 + 1), v284);
    v44 = v43;
    v46 = v45;
    if (v43 == v45)
    {
      std::operator+<char>();
      v47 = std::string::append(&v298, ") at prim path (");
      v48 = *&v47->__r_.__value_.__l.__data_;
      *&v278[16] = *(&v47->__r_.__value_.__l + 2);
      *v278 = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      v49 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v261 + 32));
      v50 = *(v49 + 23);
      if (v50 >= 0)
      {
        v51 = v49;
      }

      else
      {
        v51 = *v49;
      }

      if (v50 >= 0)
      {
        v52 = *(v49 + 23);
      }

      else
      {
        v52 = *(v49 + 8);
      }

      v53 = std::string::append(v278, v51, v52);
      v54 = *&v53->__r_.__value_.__l.__data_;
      *&v281[16] = *(&v53->__r_.__value_.__l + 2);
      *v281 = v54;
      v53->__r_.__value_.__l.__size_ = 0;
      v53->__r_.__value_.__r.__words[2] = 0;
      v53->__r_.__value_.__r.__words[0] = 0;
      v55 = std::string::append(v281, ")");
      v56 = *&v55->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v55->__r_.__value_.__l + 2);
      *__p = v56;
      v55->__r_.__value_.__l.__size_ = 0;
      v55->__r_.__value_.__r.__words[2] = 0;
      v55->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v314, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
      *&v287[8] = v314;
      *v288 = v315.__r_.__value_.__r.__words[0];
      *&v288[7] = *(v315.__r_.__value_.__r.__words + 7);
      v57 = v315.__r_.__value_.__s.__data_[15];
      *&v315.__r_.__value_.__l.__data_ = 0uLL;
      v314.__r_.__value_.__r.__words[2] = 0;
      v287[0] = 0;
      v289 = v57;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((v281[23] & 0x80000000) != 0)
      {
        operator delete(*v281);
      }

      if ((v278[23] & 0x80000000) != 0)
      {
        operator delete(*v278);
      }

      if (v299.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v298);
      }
    }

    else
    {
      do
      {
        v58 = *(v44 + 5);
        v60 = *(v58 + 16);
        v59 = *(v58 + 24);
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(v44 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v61 = ((*(v44 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v61 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v43);
        }

        realityio::Outputs::getRawValue<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>(v60, v61, &v314);
        v62 = v314.__r_.__value_.__s.__data_[0];
        if ((v314.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
          *__p = *&v314.__r_.__value_.__r.__words[1];
          if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[16], v315.__r_.__value_.__l.__data_, v315.__r_.__value_.__l.__size_);
            v2 = *&__p[16];
            LOBYTE(a2) = __p[39];
            if ((v314.__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v315.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            *&__p[16] = v315;
            v2 = v315.__r_.__value_.__r.__words[0];
            LOBYTE(a2) = *(&v315.__r_.__value_.__s + 23);
          }
        }

        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v59);
        }

        if (v62)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(1uLL);
        }

        if ((a2 & 0x80) != 0)
        {
          operator delete(v2);
        }

        v44 = *v44;
      }

      while (v44 != v46);
      v287[0] = 1;
      memset(&v287[8], 0, 24);
    }

    if ((v284[2] & 7) != 0)
    {
      atomic_fetch_add_explicit((v284[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v63 = v284[1];
    if (v284[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v284[1]);
    }

    v64 = realityio::SpatialAudioComponentBuilder::kOutputName(v63);
    *v281 = 0uLL;
    v65 = *(v261 + 3);
    if (v65)
    {
      *&v281[8] = std::__shared_weak_count::lock(v65);
      if (*&v281[8])
      {
        *v281 = *(v261 + 2);
      }
    }

    MEMORY[0x24C1A5E00](&v281[16], v64);
    v66 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v261 + 1), v281);
    v67 = v66;
    v69 = v68;
    if (v66 == v68)
    {
      std::operator+<char>();
      v70 = std::string::append(v276, ") at prim path (");
      v71 = *&v70->__r_.__value_.__l.__data_;
      v299.__r_.__value_.__r.__words[0] = v70->__r_.__value_.__r.__words[2];
      v298 = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      v72 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v261 + 32));
      v73 = *(v72 + 23);
      if (v73 >= 0)
      {
        v74 = v72;
      }

      else
      {
        v74 = *v72;
      }

      if (v73 >= 0)
      {
        v75 = *(v72 + 23);
      }

      else
      {
        v75 = *(v72 + 8);
      }

      v76 = std::string::append(&v298, v74, v75);
      v77 = *&v76->__r_.__value_.__l.__data_;
      *&v278[16] = *(&v76->__r_.__value_.__l + 2);
      *v278 = v77;
      v76->__r_.__value_.__l.__size_ = 0;
      v76->__r_.__value_.__r.__words[2] = 0;
      v76->__r_.__value_.__r.__words[0] = 0;
      v78 = std::string::append(v278, ")");
      v79 = *&v78->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v78->__r_.__value_.__l + 2);
      *__p = v79;
      v78->__r_.__value_.__l.__size_ = 0;
      v78->__r_.__value_.__r.__words[2] = 0;
      v78->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v314, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
      *&v284[1] = v314;
      *v285 = v315.__r_.__value_.__r.__words[0];
      *&v285[7] = *(v315.__r_.__value_.__r.__words + 7);
      v80 = v315.__r_.__value_.__s.__data_[15];
      *&v315.__r_.__value_.__l.__data_ = 0uLL;
      v314.__r_.__value_.__r.__words[2] = 0;
      LOBYTE(v284[0]) = 0;
      v286 = v80;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((v278[23] & 0x80000000) != 0)
      {
        operator delete(*v278);
      }

      if (v299.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v298);
      }

      if ((v276[23] & 0x80000000) != 0)
      {
        operator delete(*v276);
      }
    }

    else
    {
      do
      {
        v81 = *(v67 + 5);
        v83 = *(v81 + 16);
        v82 = *(v81 + 24);
        if (v82)
        {
          atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(v67 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v84 = ((*(v67 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v84 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v66);
        }

        realityio::Outputs::getRawValue<realityio::SpatialAudioComponentBuilder::SpatialAudioComponentDataT const*>(v83, v84, &v314);
        v85 = v314.__r_.__value_.__s.__data_[0];
        if ((v314.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
          *__p = *&v314.__r_.__value_.__r.__words[1];
          if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[16], v315.__r_.__value_.__l.__data_, v315.__r_.__value_.__l.__size_);
            v2 = *&__p[16];
            LOBYTE(a2) = __p[39];
            if ((v314.__r_.__value_.__s.__data_[0] & 1) == 0 && SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v315.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            *&__p[16] = v315;
            v2 = v315.__r_.__value_.__r.__words[0];
            LOBYTE(a2) = *(&v315.__r_.__value_.__s + 23);
          }
        }

        if (v82)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v82);
        }

        if (v85)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>>(1uLL);
        }

        if ((a2 & 0x80) != 0)
        {
          operator delete(v2);
        }

        v67 = *v67;
      }

      while (v67 != v69);
      LOBYTE(v284[0]) = 1;
      memset(&v284[1], 0, 24);
    }

    if ((v281[16] & 7) != 0)
    {
      atomic_fetch_add_explicit((*&v281[16] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v86 = *&v281[8];
    if (*&v281[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v281[8]);
    }

    v87 = realityio::SkeletalAnimationAggregationBuilder::kOutputBlendShapeName(v86);
    v298 = 0uLL;
    v88 = *(v261 + 3);
    if (v88)
    {
      *(&v298 + 1) = std::__shared_weak_count::lock(v88);
      if (*(&v298 + 1))
      {
        *&v298 = *(v261 + 2);
      }
    }

    MEMORY[0x24C1A5E00](&v299, v87);
    v89 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v261 + 1), &v298);
    v90 = v89;
    v92 = v91;
    if (v89 == v91)
    {
      std::operator+<char>();
      v93 = std::string::append(&v273, ") at prim path (");
      v94 = *&v93->__r_.__value_.__l.__data_;
      *&v276[16] = *(&v93->__r_.__value_.__l + 2);
      *v276 = v94;
      v93->__r_.__value_.__l.__size_ = 0;
      v93->__r_.__value_.__r.__words[2] = 0;
      v93->__r_.__value_.__r.__words[0] = 0;
      v95 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v261 + 32));
      v96 = *(v95 + 23);
      if (v96 >= 0)
      {
        v97 = v95;
      }

      else
      {
        v97 = *v95;
      }

      if (v96 >= 0)
      {
        v98 = *(v95 + 23);
      }

      else
      {
        v98 = *(v95 + 8);
      }

      v99 = std::string::append(v276, v97, v98);
      v100 = *&v99->__r_.__value_.__l.__data_;
      *&v278[16] = *(&v99->__r_.__value_.__l + 2);
      *v278 = v100;
      v99->__r_.__value_.__l.__size_ = 0;
      v99->__r_.__value_.__r.__words[2] = 0;
      v99->__r_.__value_.__r.__words[0] = 0;
      v101 = std::string::append(v278, ")");
      v102 = *&v101->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v101->__r_.__value_.__l + 2);
      *__p = v102;
      v101->__r_.__value_.__l.__size_ = 0;
      v101->__r_.__value_.__r.__words[2] = 0;
      v101->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v314, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
      *&v281[8] = v314;
      *v282 = v315.__r_.__value_.__r.__words[0];
      *&v282[7] = *(v315.__r_.__value_.__r.__words + 7);
      v103 = v315.__r_.__value_.__s.__data_[15];
      *&v315.__r_.__value_.__l.__data_ = 0uLL;
      v314.__r_.__value_.__r.__words[2] = 0;
      v281[0] = 0;
      v283 = v103;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((v278[23] & 0x80000000) != 0)
      {
        operator delete(*v278);
      }

      if ((v276[23] & 0x80000000) != 0)
      {
        operator delete(*v276);
      }

      if (SBYTE7(v274) < 0)
      {
        operator delete(v273);
      }
    }

    else
    {
      memset(v276, 0, 24);
      do
      {
        v104 = *(v90 + 5);
        v106 = *(v104 + 16);
        v105 = *(v104 + 24);
        if (v105)
        {
          atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(v90 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v107 = ((*(v90 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v107 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v89);
        }

        realityio::Outputs::getRawValue<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::BlendShapeAnimationSceneDataT>>(v106, v107, &v314);
        if (v314.__r_.__value_.__s.__data_[0])
        {
          v108 = *&v314.__r_.__value_.__r.__words[1];
          if (v314.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v314.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit((*(&v108 + 1) + 8), 1uLL, memory_order_relaxed);
            __p[0] = 1;
            *&__p[8] = v108;
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v108 + 1));
          }

          else
          {
            __p[0] = 1;
            *&__p[8] = v314.__r_.__value_.__l.__size_;
            *&__p[16] = 0;
          }
        }

        else
        {
          *v278 = *&v314.__r_.__value_.__r.__words[1];
          if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v278[16], v315.__r_.__value_.__l.__data_, v315.__r_.__value_.__l.__size_);
          }

          else
          {
            *&v278[16] = *&v315.__r_.__value_.__l.__data_;
            *v279 = *(&v315.__r_.__value_.__l + 2);
          }

          __p[0] = 0;
          *&__p[8] = *v278;
          *&__p[24] = *&v278[16];
          *&__p[40] = *v279;
        }

        realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&v314);
        if (v105)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v105);
        }

        if (__p[0] == 1)
        {
          v109 = *&v276[8];
          if (*&v276[8] >= *&v276[16])
          {
            v112 = (*&v276[8] - *v276) >> 4;
            v113 = v112 + 1;
            if ((v112 + 1) >> 60)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
            }

            v114 = *&v276[16] - *v276;
            if ((*&v276[16] - *v276) >> 3 > v113)
            {
              v113 = v114 >> 3;
            }

            if (v114 >= 0x7FFFFFFFFFFFFFF0)
            {
              v115 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v115 = v113;
            }

            if (v115)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v115);
            }

            v116 = 16 * v112;
            v117 = *&__p[16];
            *(16 * v112) = *&__p[8];
            if (v117)
            {
              atomic_fetch_add_explicit((v117 + 8), 1uLL, memory_order_relaxed);
            }

            v111 = v116 + 16;
            v118 = (v116 - (*&v276[8] - *v276));
            memcpy(v118, *v276, *&v276[8] - *v276);
            v119 = *v276;
            *v276 = v118;
            *&v276[8] = v111;
            if (v119)
            {
              operator delete(v119);
            }
          }

          else
          {
            **&v276[8] = *&__p[8];
            v110 = *&__p[16];
            *(v109 + 8) = *&__p[16];
            if (v110)
            {
              atomic_fetch_add_explicit((v110 + 8), 1uLL, memory_order_relaxed);
            }

            v111 = v109 + 16;
          }

          *&v276[8] = v111;
        }

        v89 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(__p);
        v90 = *v90;
      }

      while (v90 != v92);
      memset(&v314, 0, sizeof(v314));
      *__p = &v314;
      __p[8] = 0;
      v120 = *&v276[8] - *v276;
      if (*&v276[8] != *v276)
      {
        if (!((v120 >> 4) >> 60))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v120 >> 4);
        }

        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v281[0] = 1;
      *&v281[8] = 0;
      *&v281[16] = *&v276[8] - *v276;
      *&v281[24] = 0;
      memset(&v314, 0, sizeof(v314));
      *__p = &v314;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](__p);
      v314.__r_.__value_.__r.__words[0] = v276;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v314);
    }

    if ((v299.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v299.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (*(&v298 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v298 + 1));
    }

    std::string::basic_string[abi:ne200100]<0>(&v300, "arbitraryComponentAnimationLibrary");
    v270[0] = 0;
    v270[1] = 0;
    v121 = *(v261 + 3);
    if (v121)
    {
      v270[1] = std::__shared_weak_count::lock(v121);
      if (v270[1])
      {
        v270[0] = *(v261 + 2);
      }
    }

    MEMORY[0x24C1A5E00](&v271, &v300);
    v122 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(v261 + 1), v270);
    v123 = v122;
    v125 = v124;
    if (v122 == v124)
    {
      std::operator+<char>();
      v126 = std::string::append(&v273, ") at prim path (");
      v127 = *&v126->__r_.__value_.__l.__data_;
      *&v276[16] = *(&v126->__r_.__value_.__l + 2);
      *v276 = v127;
      v126->__r_.__value_.__l.__size_ = 0;
      v126->__r_.__value_.__r.__words[2] = 0;
      v126->__r_.__value_.__r.__words[0] = 0;
      v128 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v261 + 32));
      v129 = *(v128 + 23);
      if (v129 >= 0)
      {
        v130 = v128;
      }

      else
      {
        v130 = *v128;
      }

      if (v129 >= 0)
      {
        v131 = *(v128 + 23);
      }

      else
      {
        v131 = *(v128 + 8);
      }

      v132 = std::string::append(v276, v130, v131);
      v133 = *&v132->__r_.__value_.__l.__data_;
      v299.__r_.__value_.__r.__words[0] = v132->__r_.__value_.__r.__words[2];
      v298 = v133;
      v132->__r_.__value_.__l.__size_ = 0;
      v132->__r_.__value_.__r.__words[2] = 0;
      v132->__r_.__value_.__r.__words[0] = 0;
      v134 = std::string::append(&v298, ")");
      v135 = *&v134->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v134->__r_.__value_.__l + 2);
      *__p = v135;
      v134->__r_.__value_.__l.__size_ = 0;
      v134->__r_.__value_.__r.__words[2] = 0;
      v134->__r_.__value_.__r.__words[0] = 0;
      realityio::DetailedError::DetailedError(&v314, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
      *&v278[8] = v314;
      *v279 = v315.__r_.__value_.__r.__words[0];
      *&v279[7] = *(v315.__r_.__value_.__r.__words + 7);
      v136 = v315.__r_.__value_.__s.__data_[15];
      *&v315.__r_.__value_.__l.__data_ = 0uLL;
      v314.__r_.__value_.__r.__words[2] = 0;
      v278[0] = 0;
      v280 = v136;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (v299.__r_.__value_.__s.__data_[7] < 0)
      {
        operator delete(v298);
      }

      if ((v276[23] & 0x80000000) != 0)
      {
        operator delete(*v276);
      }

      if (SBYTE7(v274) < 0)
      {
        operator delete(v273);
      }
    }

    else
    {
      v267[0] = 0;
      v267[1] = 0;
      *&v268 = 0;
      do
      {
        v137 = *(v123 + 5);
        v138 = *(v137 + 16);
        v139 = *(v137 + 24);
        if (v139)
        {
          atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(v123 + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v140 = ((*(v123 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v140 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v122);
        }

        std::mutex::lock(v138 + 1);
        v141 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v138->__m_.__opaque[32], v140);
        if (&v138->__m_.__opaque[40] == v141)
        {
          std::operator+<char>();
          v145 = std::string::append(&v273, " does not exist in the builder outputs");
          v146 = *&v145->__r_.__value_.__l.__data_;
          *&v276[16] = *(&v145->__r_.__value_.__l + 2);
          *v276 = v146;
          v145->__r_.__value_.__l.__size_ = 0;
          v145->__r_.__value_.__r.__words[2] = 0;
          v145->__r_.__value_.__r.__words[0] = 0;
          realityio::DetailedError::DetailedError(&v298, 207, &realityio::FoundationErrorCategory(void)::instance, v276);
          *&v314.__r_.__value_.__r.__words[1] = v298;
          v315.__r_.__value_.__l.__size_ = v299.__r_.__value_.__l.__size_;
          v147 = v299.__r_.__value_.__r.__words[0];
          *(&v315.__r_.__value_.__r.__words[1] + 7) = *(&v299.__r_.__value_.__r.__words[1] + 7);
          v148 = HIBYTE(v299.__r_.__value_.__r.__words[2]);
          memset(&v299, 0, sizeof(v299));
          v314.__r_.__value_.__s.__data_[0] = 0;
          v315.__r_.__value_.__r.__words[0] = v147;
          *(&v315.__r_.__value_.__s + 23) = v148;
          if ((v276[23] & 0x80000000) != 0)
          {
            operator delete(*v276);
          }

          if (SBYTE7(v274) < 0)
          {
            operator delete(v273);
          }
        }

        else
        {
          v142 = *(v141 + 56);
          v144 = *(v142 + 8);
          v143 = *(v142 + 16);
          if (v143)
          {
            atomic_fetch_add_explicit((v143 + 8), 1uLL, memory_order_relaxed);
          }

          v314.__r_.__value_.__s.__data_[0] = 1;
          v314.__r_.__value_.__l.__size_ = v144;
          v314.__r_.__value_.__r.__words[2] = v143;
        }

        std::mutex::unlock(v138 + 1);
        if (v314.__r_.__value_.__s.__data_[0])
        {
          v149 = *&v314.__r_.__value_.__r.__words[1];
          if (v314.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v314.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit((*(&v149 + 1) + 8), 1uLL, memory_order_relaxed);
            __p[0] = 1;
            *&__p[8] = v149;
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v149 + 1));
          }

          else
          {
            __p[0] = 1;
            *&__p[8] = v314.__r_.__value_.__l.__size_;
            *&__p[16] = 0;
          }
        }

        else
        {
          v298 = *&v314.__r_.__value_.__r.__words[1];
          if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v299, v315.__r_.__value_.__l.__data_, v315.__r_.__value_.__l.__size_);
          }

          else
          {
            v299 = v315;
          }

          __p[0] = 0;
          *&__p[8] = v298;
          *&__p[24] = v299;
        }

        realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(&v314);
        if (v139)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v139);
        }

        if (__p[0] == 1)
        {
          v150 = v267[1];
          if (v267[1] >= v268)
          {
            v153 = (v267[1] - v267[0]) >> 4;
            v154 = v153 + 1;
            if ((v153 + 1) >> 60)
            {
              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
            }

            v155 = v268 - v267[0];
            if ((v268 - v267[0]) >> 3 > v154)
            {
              v154 = v155 >> 3;
            }

            if (v155 >= 0x7FFFFFFFFFFFFFF0)
            {
              v156 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v156 = v154;
            }

            if (v156)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v156);
            }

            v157 = 16 * v153;
            v158 = *&__p[16];
            *(16 * v153) = *&__p[8];
            if (v158)
            {
              atomic_fetch_add_explicit((v158 + 8), 1uLL, memory_order_relaxed);
            }

            v152 = (v157 + 16);
            v159 = (v157 - (v267[1] - v267[0]));
            memcpy(v159, v267[0], v267[1] - v267[0]);
            v160 = v267[0];
            v267[0] = v159;
            v267[1] = v152;
            *&v268 = 0;
            if (v160)
            {
              operator delete(v160);
            }
          }

          else
          {
            *v267[1] = *&__p[8];
            v151 = *&__p[16];
            v150[1] = *&__p[16];
            if (v151)
            {
              atomic_fetch_add_explicit((v151 + 8), 1uLL, memory_order_relaxed);
            }

            v152 = v150 + 2;
          }

          v267[1] = v152;
        }

        v122 = realityio::Result<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>,realityio::DetailedError>::~Result(__p);
        v123 = *v123;
      }

      while (v123 != v125);
      memset(&v314, 0, sizeof(v314));
      *__p = &v314;
      __p[8] = 0;
      v161 = v267[1] - v267[0];
      if (v267[1] != v267[0])
      {
        if (!((v161 >> 4) >> 60))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>>(v161 >> 4);
        }

        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v278[0] = 1;
      *&v278[8] = 0;
      *&v278[16] = v267[1] - v267[0];
      *&v278[24] = 0;
      memset(&v314, 0, sizeof(v314));
      *__p = &v314;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](__p);
      v314.__r_.__value_.__r.__words[0] = v267;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v314);
    }

    if ((v271 & 7) != 0)
    {
      atomic_fetch_add_explicit((v271 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v270[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v270[1]);
    }

    if (SHIBYTE(v302) < 0)
    {
      operator delete(v300);
    }

    v298 = 0u;
    *&v299.__r_.__value_.__l.__data_ = 0u;
    LODWORD(v299.__r_.__value_.__r.__words[2]) = 1065353216;
    memset(v276, 0, sizeof(v276));
    v277 = 1065353216;
    v273 = 0u;
    v274 = 0u;
    v275 = 1065353216;
    *v270 = 0u;
    v271 = 0u;
    v272 = 1065353216;
    if (v290[0] == 1)
    {
      v163 = *(&v291 + 1);
      for (i = v291; i != v163; i += 2)
      {
        v314.__r_.__value_.__r.__words[0] = **i;
        if (v314.__r_.__value_.__r.__words[0])
        {
          RERetain();
          v164 = v314.__r_.__value_.__r.__words[0];
        }

        else
        {
          v164 = 0;
        }

        realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v314);
        v165 = 0x9DDFEA08EB382D69 * ((8 * (v164 & 0x1FFFFFFF) + 8) ^ HIDWORD(v164));
        v166 = 0x9DDFEA08EB382D69 * (HIDWORD(v164) ^ (v165 >> 47) ^ v165);
        v167 = 0x9DDFEA08EB382D69 * (v166 ^ (v166 >> 47));
        if (!*(&v298 + 1))
        {
          goto LABEL_299;
        }

        v168 = vcnt_s8(*(&v298 + 8));
        v168.i16[0] = vaddlv_u8(v168);
        if (v168.u32[0] > 1uLL)
        {
          v169 = 0x9DDFEA08EB382D69 * (v166 ^ (v166 >> 47));
          if (v167 >= *(&v298 + 1))
          {
            v169 = v167 % *(&v298 + 1);
          }
        }

        else
        {
          v169 = v167 & (*(&v298 + 1) - 1);
        }

        v170 = *(v298 + 8 * v169);
        if (!v170 || (v171 = *v170) == 0)
        {
LABEL_299:
          operator new();
        }

        while (1)
        {
          v172 = v171[1];
          if (v172 == v167)
          {
            break;
          }

          if (v168.u32[0] > 1uLL)
          {
            if (v172 >= *(&v298 + 1))
            {
              v172 %= *(&v298 + 1);
            }
          }

          else
          {
            v172 &= *(&v298 + 1) - 1;
          }

          if (v172 != v169)
          {
            goto LABEL_299;
          }

LABEL_298:
          v171 = *v171;
          if (!v171)
          {
            goto LABEL_299;
          }
        }

        if (v171[2] != v164)
        {
          goto LABEL_298;
        }
      }
    }

    if (v287[0] == 1)
    {
      v173 = *&v287[8];
      if (*&v287[8] != *&v287[16])
      {
LABEL_303:
        v174 = **v173;
        v175 = 0x9DDFEA08EB382D69 * ((8 * (v174 & 0x1FFFFFFF) + 8) ^ HIDWORD(v174));
        v176 = 0x9DDFEA08EB382D69 * (HIDWORD(v174) ^ (v175 >> 47) ^ v175);
        v177 = 0x9DDFEA08EB382D69 * (v176 ^ (v176 >> 47));
        if (!*&v276[8])
        {
          goto LABEL_319;
        }

        v178 = vcnt_s8(*&v276[8]);
        v178.i16[0] = vaddlv_u8(v178);
        if (v178.u32[0] > 1uLL)
        {
          v179 = 0x9DDFEA08EB382D69 * (v176 ^ (v176 >> 47));
          if (v177 >= *&v276[8])
          {
            v179 = v177 % *&v276[8];
          }
        }

        else
        {
          v179 = v177 & (*&v276[8] - 1);
        }

        v180 = *(*v276 + 8 * v179);
        if (!v180 || (v181 = *v180) == 0)
        {
LABEL_319:
          operator new();
        }

        while (1)
        {
          v182 = v181[1];
          if (v182 == v177)
          {
            if (v181[2] == v174)
            {
              if (++v173 == *&v287[16])
              {
                break;
              }

              goto LABEL_303;
            }
          }

          else
          {
            if (v178.u32[0] > 1uLL)
            {
              if (v182 >= *&v276[8])
              {
                v182 %= *&v276[8];
              }
            }

            else
            {
              v182 &= *&v276[8] - 1;
            }

            if (v182 != v179)
            {
              goto LABEL_319;
            }
          }

          v181 = *v181;
          if (!v181)
          {
            goto LABEL_319;
          }
        }
      }
    }

    if (LOBYTE(v284[0]) == 1)
    {
      v183 = v284[1];
      if (v284[1] != v284[2])
      {
LABEL_323:
        v184 = **v183;
        v185 = 0x9DDFEA08EB382D69 * ((8 * (v184 & 0x1FFFFFFF) + 8) ^ HIDWORD(v184));
        v186 = 0x9DDFEA08EB382D69 * (HIDWORD(v184) ^ (v185 >> 47) ^ v185);
        v187 = 0x9DDFEA08EB382D69 * (v186 ^ (v186 >> 47));
        if (!*(&v273 + 1))
        {
          goto LABEL_339;
        }

        v188 = vcnt_s8(*(&v273 + 8));
        v188.i16[0] = vaddlv_u8(v188);
        if (v188.u32[0] > 1uLL)
        {
          v189 = 0x9DDFEA08EB382D69 * (v186 ^ (v186 >> 47));
          if (v187 >= *(&v273 + 1))
          {
            v189 = v187 % *(&v273 + 1);
          }
        }

        else
        {
          v189 = v187 & (*(&v273 + 1) - 1);
        }

        v190 = *(v273 + 8 * v189);
        if (!v190 || (v191 = *v190) == 0)
        {
LABEL_339:
          operator new();
        }

        while (1)
        {
          v192 = v191[1];
          if (v192 == v187)
          {
            if (v191[2] == v184)
            {
              if (++v183 == v284[2])
              {
                break;
              }

              goto LABEL_323;
            }
          }

          else
          {
            if (v188.u32[0] > 1uLL)
            {
              if (v192 >= *(&v273 + 1))
              {
                v192 %= *(&v273 + 1);
              }
            }

            else
            {
              v192 &= *(&v273 + 1) - 1;
            }

            if (v192 != v189)
            {
              goto LABEL_339;
            }
          }

          v191 = *v191;
          if (!v191)
          {
            goto LABEL_339;
          }
        }
      }
    }

    if (v281[0] == 1)
    {
      v194 = *&v281[16];
      v193 = *&v281[8];
      if (*&v281[8] != *&v281[16])
      {
LABEL_343:
        v314.__r_.__value_.__r.__words[0] = **v193;
        if (v314.__r_.__value_.__r.__words[0])
        {
          RERetain();
          v195 = v314.__r_.__value_.__r.__words[0];
        }

        else
        {
          v195 = 0;
        }

        realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v314);
        v196 = 0x9DDFEA08EB382D69 * ((8 * (v195 & 0x1FFFFFFF) + 8) ^ HIDWORD(v195));
        v197 = 0x9DDFEA08EB382D69 * (HIDWORD(v195) ^ (v196 >> 47) ^ v196);
        v198 = 0x9DDFEA08EB382D69 * (v197 ^ (v197 >> 47));
        if (!v270[1])
        {
          goto LABEL_362;
        }

        v199 = vcnt_s8(v270[1]);
        v199.i16[0] = vaddlv_u8(v199);
        if (v199.u32[0] > 1uLL)
        {
          v200 = 0x9DDFEA08EB382D69 * (v197 ^ (v197 >> 47));
          if (v198 >= v270[1])
          {
            v200 = v198 % v270[1];
          }
        }

        else
        {
          v200 = v198 & (v270[1] - 1);
        }

        v201 = *(v270[0] + v200);
        if (!v201 || (v202 = *v201) == 0)
        {
LABEL_362:
          operator new();
        }

        while (1)
        {
          v203 = v202[1];
          if (v203 == v198)
          {
            if (v202[2] == v195)
            {
              v193 += 2;
              if (v193 == v194)
              {
                break;
              }

              goto LABEL_343;
            }
          }

          else
          {
            if (v199.u32[0] > 1uLL)
            {
              if (v203 >= v270[1])
              {
                v203 %= v270[1];
              }
            }

            else
            {
              v203 &= v270[1] - 1;
            }

            if (v203 != v200)
            {
              goto LABEL_362;
            }
          }

          v202 = *v202;
          if (!v202)
          {
            goto LABEL_362;
          }
        }
      }
    }

    if (!v299.__r_.__value_.__l.__size_ && !*&v276[24] && !*(&v274 + 1) && !*(&v271 + 1))
    {
LABEL_533:
      std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(v270);
      std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&v273);
      std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(v276);
      std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&v298);
      realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(v278);
      realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(v281);
      realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(v284);
      realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(v287);
      realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(v290);
      realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v295, v256, v257);
      return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v296);
    }

    *v267 = 0u;
    v268 = 0u;
    v269 = 1065353216;
    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(v267, 0x64uLL);
    EntityAtPrimPath = v297;
    v266 = v297;
    v205 = v262;
    v206 = *(v261 + 5);
    if (*(*(v206 + 16) + 272) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v314, "/model");
      MEMORY[0x24C1A5D70](&v265, &v314);
      EntityAtPrimPath = realityio::ImportSession::getEntityAtPrimPath(v206, &v265);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v265);
      if (SHIBYTE(v314.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v314.__r_.__value_.__l.__data_);
      }

      if (EntityAtPrimPath)
      {
        v266 = EntityAtPrimPath;
      }

      else
      {
        EntityAtPrimPath = v266;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v314, "");
    realityio::buildSceneAssetsAndAnimationLibraries(v262, 1, v261, EntityAtPrimPath, &v314.__r_.__value_.__l.__data_, &v298, v276, &v273, v270, 0, v267);
    if (SHIBYTE(v314.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v314.__r_.__value_.__l.__data_);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*v261 + 8));
    if (!v266)
    {
LABEL_410:
      if (v278[0] == 1)
      {
        v302 = 0;
        v301 = 0;
        v300 = &v301;
        v259 = *&v278[16];
        v219 = *&v278[8];
        if (*&v278[8] == *&v278[16])
        {
          goto LABEL_494;
        }

        v260 = *MEMORY[0x277CCA150];
        do
        {
          v263 = *v219;
          if (!*v219)
          {
            goto LABEL_493;
          }

          v220 = [MEMORY[0x277CCAA00] defaultManager];
          ServiceLocator = *(*(*(v261 + 5) + 16) + 16);
          if (ServiceLocator)
          {
            ServiceLocator = REEngineGetServiceLocator();
            if (ServiceLocator)
            {
              ServiceLocator = MEMORY[0x24C1A4230]();
            }
          }

          v308 = ServiceLocator;
          v223 = v263[4];
          v222 = v263[5];
          v264 = v222;
          while (v223 != v222)
          {
            if (*(v223 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v314, *v223, *(v223 + 8));
            }

            else
            {
              v224 = *v223;
              v314.__r_.__value_.__r.__words[2] = *(v223 + 16);
              *&v314.__r_.__value_.__l.__data_ = v224;
            }

            if (*(v223 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v315, *(v223 + 24), *(v223 + 32));
            }

            else
            {
              v225 = *(v223 + 24);
              v315.__r_.__value_.__r.__words[2] = *(v223 + 40);
              *&v315.__r_.__value_.__l.__data_ = v225;
            }

            if (*(v223 + 71) < 0)
            {
              std::string::__init_copy_ctor_external(&v316, *(v223 + 48), *(v223 + 56));
            }

            else
            {
              v226 = *(v223 + 48);
              v316.__r_.__value_.__r.__words[2] = *(v223 + 64);
              *&v316.__r_.__value_.__l.__data_ = v226;
            }

            v227 = *(v223 + 72);
            v318 = *(v223 + 88);
            v317 = v227;
            v306 = 0;
            if ((SHIBYTE(v316.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              __s = &v316;
              v228 = &v316;
LABEL_431:
              v229 = [MEMORY[0x277CCACA8] stringWithUTF8String:v228];
              size = HIBYTE(v316.__r_.__value_.__r.__words[2]);
              goto LABEL_432;
            }

            v228 = v316.__r_.__value_.__r.__words[0];
            __s = v316.__r_.__value_.__r.__words[0];
            if (v316.__r_.__value_.__r.__words[0])
            {
              goto LABEL_431;
            }

            v229 = 0;
            size = HIBYTE(v316.__r_.__value_.__r.__words[2]);
LABEL_432:
            if ((size & 0x80u) != 0)
            {
              size = v316.__r_.__value_.__l.__size_;
            }

            if (size)
            {
              if ([v220 fileExistsAtPath:v229])
              {
                [v220 attributesOfItemAtPath:v229 error:0];
                v304 = [objc_claimAutoreleasedReturnValue() valueForKey:v260];
                std::string::basic_string[abi:ne200100]<0>(__p, __s);
                v231 = std::__string_hash<char>::operator()[abi:ne200100](v205 + 280, __p);
                v232 = *(v205 + 288);
                if (!*&v232)
                {
                  v237 = 0;
                  goto LABEL_474;
                }

                v233 = v231;
                v234 = vcnt_s8(v232);
                v234.i16[0] = vaddlv_u8(v234);
                v235 = v234.u32[0];
                if (v234.u32[0] > 1uLL)
                {
                  v236 = v231;
                  if (v231 >= *&v232)
                  {
                    v236 = v231 % *&v232;
                  }
                }

                else
                {
                  v236 = (*&v232 - 1) & v231;
                }

                v238 = *(*(v205 + 35) + 8 * v236);
                if (!v238)
                {
                  v237 = 0;
                  goto LABEL_474;
                }

                v237 = *v238;
                if (!*v238)
                {
                  goto LABEL_474;
                }

                while (1)
                {
                  v239 = v237[1];
                  if (v239 == v233)
                  {
                    if (std::equal_to<std::string>::operator()[abi:ne200100](v262 + 280, v237 + 2, __p))
                    {
                      goto LABEL_474;
                    }
                  }

                  else
                  {
                    if (v235 > 1)
                    {
                      if (v239 >= *&v232)
                      {
                        v239 %= *&v232;
                      }
                    }

                    else
                    {
                      v239 &= *&v232 - 1;
                    }

                    if (v239 != v236)
                    {
                      v237 = 0;
LABEL_474:
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                      }

                      v303 = 0;
                      std::string::basic_string[abi:ne200100]<0>(__p, __s);
                      std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v300, __p, __p);
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                        if (!v237)
                        {
                          goto LABEL_482;
                        }
                      }

                      else if (!v237)
                      {
                        goto LABEL_482;
                      }

                      v240 = *(v237 + 6);
                      [v304 timeIntervalSince1970];
                      if (v240 == v241)
                      {
                        realityio::WrappedRERef<REAsset *>::operator=(&v303, v237 + 5);
                      }

LABEL_482:
                      if (!v303)
                      {
                        RIOPxrUsdStageCreateWithFilePathWithErrorReporting(__s, &v306);
                      }

                      *&__p[24] = 0;
                      operator new();
                    }
                  }

                  v237 = *v237;
                  if (!v237)
                  {
                    goto LABEL_474;
                  }
                }
              }
            }

            else
            {
              if (SHIBYTE(v314.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(__p, v314.__r_.__value_.__l.__data_, v314.__r_.__value_.__l.__size_);
              }

              else
              {
                *__p = v314;
              }

              if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&__p[24], v315.__r_.__value_.__l.__data_, v315.__r_.__value_.__l.__size_);
              }

              else
              {
                *&__p[24] = v315;
              }

              if (SHIBYTE(v316.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v311, v316.__r_.__value_.__l.__data_, v316.__r_.__value_.__l.__size_);
              }

              else
              {
                v311 = v316;
              }

              v312 = v317;
              v313 = 0;
              if (v318 == 1)
              {
                v313 = 1;
              }

              if (SHIBYTE(v311.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v311.__r_.__value_.__l.__data_);
              }

              if ((__p[47] & 0x80000000) != 0)
              {
                operator delete(*&__p[24]);
              }

              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }

            if (SHIBYTE(v316.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v316.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v315.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v315.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v314.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v314.__r_.__value_.__l.__data_);
            }

            v223 += 96;
            v222 = v264;
          }

LABEL_493:
          v219 += 2;
        }

        while (v219 != v259);
LABEL_494:
        v242 = *(v205 + 37);
        if (v242)
        {
          v243 = (v262 + 280);
          while (&v301 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>(&v300, (v242 + 16)))
          {
            v244 = *v242;
LABEL_525:
            v242 = v244;
            if (!v244)
            {
              goto LABEL_526;
            }
          }

          v245 = *(v262 + 288);
          v246 = *(v242 + 8);
          v247 = vcnt_s8(v245);
          v247.i16[0] = vaddlv_u8(v247);
          if (v247.u32[0] > 1uLL)
          {
            if (v246 >= *&v245)
            {
              v246 %= *&v245;
            }
          }

          else
          {
            v246 &= *&v245 - 1;
          }

          v244 = *v242;
          v248 = *(*v243 + 8 * v246);
          do
          {
            v249 = v248;
            v248 = *v248;
          }

          while (v248 != v242);
          if (v249 == (v262 + 296))
          {
            goto LABEL_544;
          }

          v250 = v249[1];
          if (v247.u32[0] > 1uLL)
          {
            if (v250 >= *&v245)
            {
              v250 %= *&v245;
            }
          }

          else
          {
            v250 &= *&v245 - 1;
          }

          v251 = *v242;
          if (v250 != v246)
          {
LABEL_544:
            if (v244)
            {
              v252 = *(v244 + 8);
              if (v247.u32[0] > 1uLL)
              {
                if (v252 >= *&v245)
                {
                  v252 %= *&v245;
                }
              }

              else
              {
                v252 &= *&v245 - 1;
              }

              v251 = *v242;
              if (v252 == v246)
              {
                goto LABEL_518;
              }
            }

            *(*v243 + 8 * v246) = 0;
            v251 = *v242;
          }

          if (!v251)
          {
LABEL_524:
            *v249 = v251;
            *v242 = 0;
            --*(v262 + 38);
            v314.__r_.__value_.__r.__words[0] = v242;
            v314.__r_.__value_.__l.__size_ = v262 + 280;
            v314.__r_.__value_.__s.__data_[16] = 1;
            *(&v314.__r_.__value_.__r.__words[2] + 1) = 0;
            HIDWORD(v314.__r_.__value_.__r.__words[2]) = 0;
            std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,void *>>>>::~unique_ptr[abi:ne200100](&v314);
            goto LABEL_525;
          }

LABEL_518:
          v253 = *(v251 + 8);
          if (v247.u32[0] > 1uLL)
          {
            if (v253 >= *&v245)
            {
              v253 %= *&v245;
            }
          }

          else
          {
            v253 &= *&v245 - 1;
          }

          if (v253 != v246)
          {
            *(*v243 + 8 * v253) = v249;
            v251 = *v242;
          }

          goto LABEL_524;
        }

LABEL_526:
        std::__tree<std::string>::destroy(&v300, v301);
      }

      else if (*(v205 + 38))
      {
        std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::__deallocate_node(*(v205 + 37));
        *(v205 + 37) = 0;
        v254 = *(v205 + 36);
        if (v254)
        {
          for (j = 0; j != v254; ++j)
          {
            *(*(v205 + 35) + 8 * j) = 0;
          }
        }

        *(v205 + 38) = 0;
      }

      std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(v267);
      goto LABEL_533;
    }

    v208 = v207;
    MEMORY[0x24C1A5DE0](&v314, "autoPlay");
    HasAuthoredMetadata = pxrInternal__aapl__pxrReserved__::UsdStage::HasAuthoredMetadata(v208, &v314);
    if ((v314.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v314.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    MEMORY[0x24C1A5DE0](&v306, "autoPlay");
    v309 = 0;
    if (pxrInternal__aapl__pxrReserved__::UsdStage::GetMetadata(v208, &v306, &v308))
    {
      v211 = v309;
      if (v309)
      {
        if (!*((v309 & 0xFFFFFFFFFFFFFFF8) + 16))
        {
LABEL_385:
          if ((v211 & 4) != 0)
          {
            v212 = (*((v211 & 0xFFFFFFFFFFFFFFF8) + 168))(&v308);
          }

          else
          {
            v212 = &v308;
          }

          v213 = *v212;
          goto LABEL_402;
        }

        if ((v309 & 4) != 0 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(&v308, MEMORY[0x277D82798]))
        {
          v211 = v309;
          goto LABEL_385;
        }
      }

      v314.__r_.__value_.__r.__words[0] = "usd/stage.h";
      v314.__r_.__value_.__l.__size_ = "GetMetadata";
      v314.__r_.__value_.__r.__words[2] = 2472;
      v315.__r_.__value_.__r.__words[0] = "BOOL pxrInternal__aapl__pxrReserved__::UsdStage::GetMetadata(const TfToken &, T *) const [T = BOOL]";
      v315.__r_.__value_.__s.__data_[8] = 0;
      v214 = __p;
      pxrInternal__aapl__pxrReserved__::ArchGetDemangled(__p, (*(MEMORY[0x277D82798] + 8) & 0x7FFFFFFFFFFFFFFFLL), v210);
      if (__p[23] < 0)
      {
        v214 = *__p;
      }

      v215 = v306 & 0xFFFFFFFFFFFFFFF8;
      if ((v306 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v216 = (v215 + 16);
        if (*(v215 + 39) < 0)
        {
          v216 = *v216;
        }
      }

      else
      {
        v216 = "";
      }

      pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v300, &v308);
      if (v302 >= 0)
      {
        v217 = &v300;
      }

      else
      {
        v217 = v300;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v314, 1, "Requested type %s for stage metadatum %s does not match retrieved type %s", v214, v216, v217);
      v205 = v262;
      if (SHIBYTE(v302) < 0)
      {
        operator delete(v300);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v213 = 0;
LABEL_402:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v308);
    if ((v306 & 7) != 0)
    {
      atomic_fetch_add_explicit((v306 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((HasAuthoredMetadata & v213) == 1)
    {
      REAnimationLibraryComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        *__p = REAnimationLibraryComponentGetAnimationLibraryAsset();
        if (*__p)
        {
          RERetain();
        }

        operator new();
      }
    }

    else
    {
      REAnimationComponentGetComponentType();
      v307[0] = &unk_2859462A0;
      v307[3] = v307;
      v218 = REEntityGetOrAddComponentByClass();
      std::function<void ()(REComponent *)>::operator()(v307, v218);
      RENetworkMarkComponentDirty();
      std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v307);
    }

    goto LABEL_410;
  }

  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v296);
}

void sub_2474C4208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v66 - 224);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&STACK[0x300]);
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&a23);
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&a29);
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&a35);
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&a41);
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&STACK[0x260]);
  realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(&a47);
  realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(&a53);
  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&a59);
  realityio::Result<std::vector<realityio::TransformAnimationAggregationBuilder::TransformAnimationSceneDataT const*>,realityio::DetailedError>::~Result(&a65);
  realityio::Result<std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>,realityio::DetailedError>::~Result(&a66);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&STACK[0x220], v68, v69);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t realityio::ImportSession::getEntityAtPrimPath(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v6, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, a2 + 1);
  v4 = (*(*v3 + 64))(v3, &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  return v4;
}

void sub_2474C4A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::AnimationSceneAssetBuilder::clear(realityio::AnimationSceneAssetBuilder *this, realityio::Inputs *a2)
{
  v3 = realityio::EntityBuilder::kRootEntityInputName(this);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v3, v7);
  if (v7[0] == 1 && a2 && v8)
  {
    memset(v5, 0, sizeof(v5));
    v6 = 1065353216;
    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__rehash<true>(v5, 0x64uLL);
    realityio::removeAnimationLibraries(a2, v8, v5);
    std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(v5);
  }

  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v7);
}

void sub_2474C4AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::__unordered_map_hasher<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::hash<REEntity *>,std::equal_to<REEntity *>,true>,std::__unordered_map_equal<REEntity *,std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>,std::equal_to<REEntity *>,std::hash<REEntity *>,true>,std::allocator<std::__hash_value_type<REEntity *,realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT const*>>>::~__hash_table(&a9);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

void realityio::AnimationSceneAssetBuilder::~AnimationSceneAssetBuilder(realityio::AnimationSceneAssetBuilder *this)
{
  *this = &unk_285945AD8;
  std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::~__hash_table(this + 280);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

{
  *this = &unk_285945AD8;
  std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::~__hash_table(this + 280);
  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 24);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 23);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::anonymous namespace::findFirstAnimationLibraryComponentInHierarchy(uint64_t a1)
{
  REAnimationLibraryComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (!result)
  {
    result = REEntityGetChildCount();
    if (result)
    {
      v2 = result;
      v3 = 0;
      while (1)
      {
        Child = REEntityGetChild();
        if (result)
        {
          break;
        }

        if (v2 == ++v3)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void std::vector<char const*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<char const*>::__throw_length_error[abi:ne200100]();
}

std::string *std::pair<std::string,realityio::TimelineGroupFactory>::pair[abi:ne200100]<std::string const&,realityio::TimelineGroupFactory,0>(std::string *this, __int128 *a2, __int128 *a3)
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
  this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
  *&this[1].__r_.__value_.__l.__data_ = v6;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v7 = *(a3 + 3);
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = *(a3 + 8);
  this[2].__r_.__value_.__r.__words[0] = v7;
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[3].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  *&this[2].__r_.__value_.__r.__words[2] = *(a3 + 40);
  this[3].__r_.__value_.__l.__size_ = *(a3 + 7);
  *(a3 + 5) = 0;
  *(a3 + 6) = 0;
  *(a3 + 7) = 0;
  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::WrappedRERef<REAsset *>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

const void **realityio::WrappedCFRef<RIOImportSession *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t *realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t *realityio::WrappedRERef<REAnimationSceneEntityDefinition *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

__n128 std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285945B50;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(**(a1 + 8) + 32);
  (*(*v3 + 24))(v3, 1);
  v4 = *(**(a1 + 8) + 32);
  Child = (*(*v4 + 16))(v4);
  if (REEntityGetChildCount() == 1)
  {
    Child = REEntityGetChild();
  }

  {
    AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
    v24 = AnimationLibraryAsset;
    if (AnimationLibraryAsset)
    {
      RERetain();
    }

    v7 = *(a1 + 16);
    v8 = *v7;
    if (*v7 != AnimationLibraryAsset)
    {
      *v7 = AnimationLibraryAsset;
      v24 = v8;
    }

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v24);
    if (**(a1 + 16))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, **(a1 + 32));
      v20 = **(a1 + 16);
      if (v20)
      {
        RERetain();
      }

      [**(a1 + 40) timeIntervalSince1970];
      v21 = v9;
      v10 = std::__string_hash<char>::operator()[abi:ne200100](&v2[35], __p);
      v11 = v10;
      v12 = v2[36];
      if (!*&v12)
      {
        goto LABEL_28;
      }

      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      v14 = v13.u32[0];
      if (v13.u32[0] > 1uLL)
      {
        v15 = v10;
        if (v10 >= *&v12)
        {
          v15 = v10 % *&v12;
        }
      }

      else
      {
        v15 = (*&v12 - 1) & v10;
      }

      v16 = *(*&v2[35] + 8 * v15);
      if (!v16 || (v17 = *v16) == 0)
      {
LABEL_28:
        operator new();
      }

      while (1)
      {
        v18 = v17[1];
        if (v18 == v11)
        {
          if (std::equal_to<std::string>::operator()[abi:ne200100](&v2[35], v17 + 2, __p))
          {
            v19 = v17[5];
            if (v19 != v20)
            {
              v17[5] = v20;
              v20 = v19;
            }

            v17[6] = v21;
            realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v20);
            if (SHIBYTE(v23) < 0)
            {
              operator delete(__p[0]);
            }

            return;
          }
        }

        else
        {
          if (v14 > 1)
          {
            if (v18 >= *&v12)
            {
              v18 %= *&v12;
            }
          }

          else
          {
            v18 &= *&v12 - 1;
          }

          if (v18 != v15)
          {
            goto LABEL_28;
          }
        }

        v17 = *v17;
        if (!v17)
        {
          goto LABEL_28;
        }
      }
    }
  }
}

void sub_2474C56B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,realityio::AnimationSceneAssetBuilder::AnimationLibraryCacheItem>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,realityio::WrappedRERef<REAsset *>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

__n128 std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285945BD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 16) + 24);
  v3 = **(a1 + 24);
  v26 = v3;
  if (v3)
  {
    v3 = RERetain();
  }

  v4 = *(a1 + 32);
  if (*(v4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    v25.__r_.__value_.__r.__words[2] = *(v4 + 2);
    *&v25.__r_.__value_.__l.__data_ = v5;
  }

  if (!v2)
  {
    v11 = *realityio::logObjects(v3);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v12 = "To and from entities must be valid.";
LABEL_21:
    _os_log_impl(&dword_247485000, v11, OS_LOG_TYPE_DEFAULT, v12, &buf, 2u);
    goto LABEL_37;
  }

  if (!v26 || !FirstAnimationLibraryComponentInHierarchy)
  {
    v11 = *realityio::logObjects(FirstAnimationLibraryComponentInHierarchy);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v12 = "Could not find animation components to copy to and from.";
    goto LABEL_21;
  }

  AnimationLibraryAsset = REAnimationLibraryComponentGetAnimationLibraryAsset();
  if (!v26)
  {
    v11 = *realityio::logObjects(AnimationLibraryAsset);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_37;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v12 = "Could not find animation library assets to copy from.";
    goto LABEL_21;
  }

  v8 = AnimationLibraryAsset;
  v28 = 0;
  v9 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
  if (v28)
  {
    RERelease();
  }

  v27 = 0;
  v28 = v9;
  if (v8)
  {
    v10 = REAnimationLibraryDefinitionCreateFromAnimationLibraryAsset();
    if (v27)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v10 = REAnimationLibraryDefinitionCreate();
    if (v27)
    {
LABEL_23:
      RERelease();
    }
  }

  v27 = v10;
  EntryCount = REAnimationLibraryDefinitionGetEntryCount();
  if (EntryCount)
  {
    for (i = 0; i != EntryCount; ++i)
    {
      EntryAsset = REAnimationLibraryDefinitionGetEntryAsset();
      REAnimationLibraryDefinitionAddEntryAsset();
      if (REAnimationLibraryDefinitionGetDefaultEntry() == EntryAsset)
      {
        v16 = REAnimationLibraryDefinitionAddKeyedEntryIndex();
        if ((v16 & 1) == 0)
        {
          v17 = *realityio::logObjects(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v18 = &v25;
            }

            else
            {
              v18 = v25.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v18;
            _os_log_impl(&dword_247485000, v17, OS_LOG_TYPE_DEFAULT, "Could not add key for animation named: %s.", &buf, 0xCu);
          }
        }
      }
    }
  }

  buf.__r_.__value_.__r.__words[0] = 0;
  buf.__r_.__value_.__r.__words[0] = REAnimationLibraryDefinitionCreateAnimationLibraryAsset();
  if (buf.__r_.__value_.__r.__words[0])
  {
    REAnimationLibraryComponentAssignAnimationLibraryAsset();
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&buf);
  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&v27);
  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&v28);
LABEL_37:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v26);
  v19 = *(a1 + 32);
  if (*(v19 + 88) == 1)
  {
    v20 = **(a1 + 8);
    v21 = *(*(a1 + 16) + 24);
    if (*(v19 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *v19, *(v19 + 1));
      v19 = *(a1 + 32);
    }

    else
    {
      v22 = *v19;
      buf.__r_.__value_.__r.__words[2] = *(v19 + 2);
      *&buf.__r_.__value_.__l.__data_ = v22;
    }

    if (*(v19 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *(v19 + 3), *(v19 + 4));
      v19 = *(a1 + 32);
    }

    else
    {
      v23 = *(v19 + 24);
      v30.__r_.__value_.__r.__words[2] = *(v19 + 5);
      *&v30.__r_.__value_.__l.__data_ = v23;
    }

    if (*(v19 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v19 + 6), *(v19 + 7));
      v19 = *(a1 + 32);
    }

    else
    {
      v24 = v19[3];
      __p.__r_.__value_.__r.__words[2] = *(v19 + 8);
      *&__p.__r_.__value_.__l.__data_ = v24;
    }

    v32 = *(v19 + 72);
    v33 = 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2474C5C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&a18);
  realityio::WrappedRERef<REAnimationLibraryDefinition *>::~WrappedRERef(&a19);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a17);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1,std::allocator<realityio::AnimationSceneAssetBuilder::coalesceRealityKitComponentAnimationsIntoAnimationLibraries(realityio::Inputs const*,realityio::ArbitraryComponentBuilder::AnimationLibrary const&,std::set<std::string> &)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2474C6284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::AnimationSceneAssetBuilder::AnimationSceneAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::AnimationSceneAssetBuilder::AnimationSceneAssetBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::anonymous namespace::getAllEntityGeneratingPrimPathsForSubtree@<X0>(pxrInternal__aapl__pxrReserved__::UsdStage *a1@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, unint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v34, a1, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v34))
  {
    IsEntityProviding = realityio::calculateIsEntityProviding(&v34, v5);
    if (IsEntityProviding)
    {
      IsEntityProviding = std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, a2);
    }

    UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(IsEntityProviding);
    v9 = *UsdPrimDefaultPredicate;
    v8 = *(UsdPrimDefaultPredicate + 8);
    v10 = *(UsdPrimDefaultPredicate + 16);
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v9 & 0x2000) != 0 || (v8 & 0x2000) == 0))
    {
      v9 |= 0x2000uLL;
      v8 &= ~0x2000uLL;
    }

    v20 = v9;
    v21 = v8;
    *&v22 = v10;
    pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(&v34, &v20, &v24);
    v20 = v24;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21, &v25);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21 + 1, &v26);
    v22 = v27;
    v23 = v28;
    while (1)
    {
      v16 = v29;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17, &v30);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v17 + 1, &v31);
      v18 = v32;
      v19 = v33;
      if (v20 == v16 && v21 == v17)
      {
        v11 = pxrInternal__aapl__pxrReserved__::operator==(&v22, &v18) ^ 1;
      }

      else
      {
        v11 = 1;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
      if ((v11 & 1) == 0)
      {
        break;
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v16, &v20);
      v13 = realityio::calculateIsEntityProviding(&v16, v12);
      if ((BYTE8(v18) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v18 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
      if (v17)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
      }

      if (v13)
      {
        pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v16, &v20);
        PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v16);
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a3, PrimPath);
        if ((BYTE8(v18) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v18 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
        if (v17)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v20);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v30);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v25);
  }

  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v36);
  result = v35;
  if (v35)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v35);
  }

  return result;
}

void sub_2474C66DC(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v2 - 96));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<realityio::StaticPrimInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::InputDescriptor::Optionality,std::allocator<realityio::StaticPrimInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, _DWORD *a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285946320;
  std::allocator<realityio::StaticPrimInputDescriptor>::construct[abi:ne200100]<realityio::StaticPrimInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::InputDescriptor::Optionality>(&v7, (a1 + 3), a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<realityio::StaticPrimInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285946320;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::allocator<realityio::StaticPrimInputDescriptor>::construct[abi:ne200100]<realityio::StaticPrimInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::InputDescriptor::Optionality>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5, unsigned int *a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a3, *(a3 + 8));
  }

  else
  {
    v12 = *a3;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, a5);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v11, a5 + 1);
  realityio::StaticPrimInputDescriptor::StaticPrimInputDescriptor(a2, &v12, a4, &v10, *a6);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_2474C69AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::StaticPrimInputDescriptor::StaticPrimInputDescriptor(uint64_t a1, uint64_t a2, uint64_t *a3, _DWORD *a4, int a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &__p, a3, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_285946370;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 44), a4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 48), a4 + 1);
  return a1;
}

void sub_2474C6A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::StaticPrimInputDescriptor::~StaticPrimInputDescriptor(realityio::StaticPrimInputDescriptor *this)
{
  *this = &unk_285946370;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 44);

  realityio::InputDescriptor::~InputDescriptor(this);
}

{
  *this = &unk_285946370;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 44);
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

char *realityio::StaticPrimInputDescriptor::resolvedPrimPaths@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  return std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a2, (a1 + 44));
}

void *std::__shared_ptr_emplace<realityio::CustomInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (&)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&),realityio::InputDescriptor::Optionality,std::allocator<realityio::CustomInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285945CC0;
  std::allocator<realityio::CustomInputDescriptor>::construct[abi:ne200100]<realityio::CustomInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (&)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&),realityio::InputDescriptor::Optionality>(&v7, a1 + 3, a2, a3, a4, a5);
  return a1;
}

void std::__shared_ptr_emplace<realityio::CustomInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285945CC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::allocator<realityio::CustomInputDescriptor>::construct[abi:ne200100]<realityio::CustomInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (&)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&),realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, unsigned int *a6)
{
  v11[4] = *MEMORY[0x277D85DE8];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v11[0] = &unk_285945D10;
  v11[1] = a5;
  v11[3] = v11;
  realityio::CustomInputDescriptor::CustomInputDescriptor(a2, &__p, a4, v11, *a6);
  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::~__value_func[abi:ne200100](v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t std::__function::__func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (*)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&),std::allocator<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (*)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285945D10;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (*)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&),std::allocator<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> (*)(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>,pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *realityio::CustomInputDescriptor::CustomInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &__p, a3, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_285945DC0;
  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::__value_func[abi:ne200100]((a1 + 6), a4);
  return a1;
}

void realityio::CustomInputDescriptor::~CustomInputDescriptor(realityio::CustomInputDescriptor *this)
{
  *this = &unk_285945DC0;
  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::~__value_func[abi:ne200100](this + 48);

  realityio::InputDescriptor::~InputDescriptor(this);
}

{
  *this = &unk_285945DC0;
  std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::~__value_func[abi:ne200100](this + 48);
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::CustomInputDescriptor::resolvedPrimPaths(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<pxrInternal__aapl__pxrReserved__::TfHashSet<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>> ()(pxrInternal__aapl__pxrReserved__::UsdStage const&,pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::internal::PrimToEntityMap const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange::~UsdPrimSubtreeRange(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *(a1 + 8);
  v6 = v24;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v22, (a1 + 16));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v23, (a1 + 20));
  v21 = v6;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, &v22);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, &v23);
  if (pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(&v24, &v22, 0, a2))
  {
      ;
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::UsdPrimSubtreeIterator(&v14, &v24, &v22, a2);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::UsdPrimSubtreeIterator(&v9, &v21, &v19, a2);
  *a3 = v14;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 8), &v15);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 12), &v16);
  *(a3 + 16) = v17;
  v7 = v9;
  *(a3 + 32) = v18;
  *(a3 + 40) = v7;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 48), &v10);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a3 + 52), &v11);
  *(a3 + 56) = v12;
  *(a3 + 72) = v13;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v22);
}

void sub_2474C74A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::~UsdPrimSubtreeIterator(va);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va1);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v11 - 64));
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(pxrInternal__aapl__pxrReserved__::Usd_PrimData **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::Usd_PrimData *a3, uint64_t *a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (*(*a1 + 57))
  {
    v9 = *(pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetPrototype(*a1) + 32);
    if (v9)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v9 = *(*a1 + 4);
  if (!v9)
  {
    return 0;
  }

  if (!v8)
  {
    v10 = 0;
    goto LABEL_10;
  }

LABEL_6:
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    v11 = a2;
  }

  else
  {
    v11 = (*a1 + 16);
  }

  NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((v9 + 16));
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v14, v11, NameToken);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, &v14);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, &v14 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
  v10 = 1;
LABEL_10:
  *a1 = v9;
  return pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate::_Eval<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(a4, a1, v10) || !pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(a1, a2, a3, a4);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(pxrInternal__aapl__pxrReserved__::Usd_PrimData **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, pxrInternal__aapl__pxrReserved__::Usd_PrimData *a3, uint64_t *a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  v9 = *(*a1 + 5);
  if ((v9 & 7) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
  }

  v28 = v10;
  if (v10)
  {
    v11 = v10 == a3;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = v8;
    do
    {
      v13 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate::_Eval<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(a4, &v28, v12);
      v10 = v28;
      if (v13)
      {
        break;
      }

      *a1 = v28;
      v14 = *(v10 + 5);
      v10 = (v14 & 7) != 0 ? 0 : (v14 & 0xFFFFFFFFFFFFFFF8);
      v28 = v10;
    }

    while (v10 && v10 != a3);
  }

  if (!v10)
  {
    v16 = *(*a1 + 5);
    if ((v16 & 7) != 0)
    {
      v10 = (v16 & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v10 = 0;
    }
  }

  *a1 = v10;
  if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
  {
    if (*a1 == a3)
    {
      v25[0] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, v25);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, v25 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
LABEL_32:
      v19 = v25;
LABEL_34:
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v19);
      goto LABEL_35;
    }

    if (*a1 == v28)
    {
      pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v27, a2);
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken((*a1 + 16));
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v25, &v27, NameToken);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, v25);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, v25 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      v19 = &v27;
      goto LABEL_34;
    }

    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v25, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, v25);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, v25 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v25);
    v17 = *a1;
    if (!*a1 || (v17[57] & 0x10) == 0 || !pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath((v17 + 16)))
    {
      goto LABEL_35;
    }

    PrimDataAtPathOrInPrototype = pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetPrimDataAtPathOrInPrototype(*a1, a2);
    *a1 = PrimDataAtPathOrInPrototype;
    if (PrimDataAtPathOrInPrototype)
    {
LABEL_29:
      if (*(PrimDataAtPathOrInPrototype + 2) != *a2)
      {
        goto LABEL_35;
      }

      v25[0] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, v25);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, v25 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      goto LABEL_32;
    }

    v25[0] = "usd/primData.h";
    v25[1] = "Usd_MoveToNextSiblingOrParent";
    v25[2] = 557;
    v25[3] = "BOOL pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent(PrimDataPtr &, SdfPath &, PrimDataPtr, const Usd_PrimFlagsPredicate &) [PrimDataPtr = const pxrInternal__aapl__pxrReserved__::Usd_PrimData *]";
    v26 = 0;
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
    pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("No prim at <%s>", v24, Text);
    if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper())
    {
      PrimDataAtPathOrInPrototype = *a1;
      goto LABEL_29;
    }
  }

LABEL_35:
  if (v28)
  {
    v21 = 1;
  }

  else
  {
    v21 = *a1 == 0;
  }

  return !v21;
}

void sub_2474C78DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate::_Eval<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(uint64_t *a1, uint64_t a2, int a3)
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  v4 = *(*a2 + 56) & 0xFFFFFFFFFFFFDFFFLL | v3;
  v5 = *a1;
  v6 = a1[1];
  v9 = *a1 & v4;
  v8 = v6 & v5;
  return *(a1 + 16) != std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,15ul>,true,true>(&v9, 0, &v9, 0xFu, &v8);
}

uint64_t std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,15ul>,true,true>(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::UsdPrimSubtreeIterator(uint64_t a1, void *a2, _DWORD *a3, __int128 *a4)
{
  *a1 = *a2;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 8), a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 12), a3 + 1);
  v7 = *a4;
  *(a1 + 32) = *(a4 + 2);
  *(a1 + 16) = v7;
  if (*a1 && !pxrInternal__aapl__pxrReserved__::Usd_EvalPredicate<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>((a1 + 16), a1, a1 + 8) && pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(a1, (a1 + 8), 0, (a1 + 16)))
  {
    *a1 = 0;
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 8, &v9);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 12, &v9 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  }

  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_EvalPredicate<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate::_Eval<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(a1, a2, v5);
}

uint64_t pxrInternal__aapl__pxrReserved__::operator==(uint64_t a1, uint64_t a2)
{
  result = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,15ul>,true,true>(a1, 0, a1, 0xFu, a2);
  if (result)
  {
    result = std::__equal_aligned[abi:ne200100]<std::__bitset<1ul,15ul>,true,true>((a1 + 8), 0, a1 + 8, 0xFu, (a2 + 8));
    if (result)
    {
      return *(a1 + 16) == *(a2 + 16);
    }
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t **this@<X0>)
{
  v4 = *this;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 6, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(a1, &v6, this + 2);
  result = v6;
  if (v6)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
  }

  return result;
}

void sub_2474C7C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(pxrInternal__aapl__pxrReserved__::Usd_PrimData **this)
{
  result = pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(this, (this + 1), 0, this + 2);
  if (!result)
  {
    do
    {
      result = pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(this, (this + 1), 0, this + 2);
    }

    while (result);
  }

  return result;
}

void std::__shared_ptr_emplace<realityio::DescendantPrimInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285945E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t **realityio::DescendantPrimInputDescriptor::DescendantPrimInputDescriptor(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *a2, *(a2 + 8));
  }

  else
  {
    v12 = *a2;
  }

  realityio::InputDescriptor::InputDescriptor(a1, &v12, a3, a5);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_285945E50;
  v9 = *a4;
  v13[0] = v9;
  if ((v9 & 7) != 0)
  {
    v10 = (v9 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13[0] = v10;
    }
  }

  std::set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::set[abi:ne200100](a1 + 6, v13, 1);
  if ((v13[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v13[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void realityio::DescendantPrimInputDescriptor::~DescendantPrimInputDescriptor(realityio::DescendantPrimInputDescriptor *this)
{
  *this = &unk_285945E50;
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(this + 48, *(this + 7));

  realityio::InputDescriptor::~InputDescriptor(this);
}

{
  *this = &unk_285945E50;
  std::__tree<pxrInternal__aapl__pxrReserved__::TfToken>::destroy(this + 48, *(this + 7));
  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::DescendantPrimInputDescriptor::resolvedPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::UsdStage *this@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X0>, unint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v37, this, a2);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v37);
  if (IsValid)
  {
    UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(IsValid);
    v9 = *UsdPrimDefaultPredicate;
    v8 = *(UsdPrimDefaultPredicate + 8);
    v10 = *(UsdPrimDefaultPredicate + 16);
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v9 & 0x2000) != 0 || (v8 & 0x2000) == 0))
    {
      v9 |= 0x2000uLL;
      v8 &= ~0x2000uLL;
    }

    v23 = v9;
    v24 = v8;
    *&v25 = v10;
    pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(&v37, &v23, &v27);
    v23 = v27;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v24, &v28);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v24 + 1, &v29);
    v25 = v30;
    v26 = v31;
    v19 = v32;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, &v33);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20 + 1, &v34);
    v21 = v35;
    v22 = v36;
    while (v23 != v19 || v24 != v20 || !pxrInternal__aapl__pxrReserved__::operator==(&v25, &v21))
    {
      pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v15, &v23);
      v12 = v16;
      if (!v16 || (*(v16 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v16, v11);
      }

      if (a3 + 56 != std::__tree<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfTokenFastArbitraryLessThan,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(a3 + 48, *(v12 + 3)))
      {
        PrimPath = pxrInternal__aapl__pxrReserved__::UsdObject::GetPrimPath(&v15);
        std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a4, PrimPath);
      }

      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
      if (v16)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
      }

      pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v23);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v24);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v33);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
  }

  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v39);
  result = v38;
  if (v38)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v38);
  }

  return result;
}