void sub_2474FD9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  std::__split_buffer<realityio::WrappedRERef<REAsset *>>::~__split_buffer(v27 - 160);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a27);
  a27 = a11;
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdObject::As<pxrInternal__aapl__pxrReserved__::UsdAttribute>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 3)
  {

    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(a2, 3, a1 + 1, a1 + 4, a1 + 3);
  }

  else
  {
    *a2 = 3;
    *(a2 + 8) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    *(a2 + 24) = 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(uint64_t a1, int a2, uint64_t *a3, _DWORD *a4, uint64_t *a5)
{
  *a1 = a2;
  v8 = *a3;
  *(a1 + 8) = *a3;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), a4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), a4 + 1);
  v9 = *a5;
  *(a1 + 24) = *a5;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(a1 + 8);
  if (v10 && (*(v10 + 57) & 8) == 0 && *(v10 + 16) == *(a1 + 16))
  {
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
  }

  return a1;
}

void sub_2474FDC20(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v1 + 2));
  v4 = v1[1];
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::WrappedRERef<REAsset *>>>>::destroy(a1[1]);
    realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

uint64_t std::__function::__value_func<BOOL ()(realityio::mtlx::NeoPrim const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::SdfPath,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::TextureAssetData>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(v2 + 4);

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v2 + 16);
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

uint64_t realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~Graph(uint64_t a1)
{
  v3 = (a1 + 72);
  std::vector<std::set<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 48);
  std::vector<std::set<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v3);
  std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(a1 + 32));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(*(a1 + 8));
  return a1;
}

void std::vector<std::set<unsigned long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;
        std::__tree<unsigned int>::destroy((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage>>>::destroy(a1[1]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 6));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 5));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::mtlx::MtlxActionPayload,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::mtlx::MtlxActionPayload>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::mtlx::MtlxActionPayload>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 296), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::mtlx::MtlxActionPayload,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::mtlx::MtlxActionPayload>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::mtlx::MtlxActionPayload>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::mtlx::MtlxActionPayload>>::_DecrementIfValid(0);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::mtlx::MtlxActionPayload,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::mtlx::MtlxActionPayload>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::mtlx::MtlxActionPayload>>::_MakeMutable(uint64_t result)
{
  v1 = atomic_load((*result + 296));
  if (v1 != 1)
  {
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<realityio::mtlx::MtlxActionPayload,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::mtlx::MtlxActionPayload>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::mtlx::MtlxActionPayload>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::mtlx::MtlxActionPayload>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::mtlx::MtlxActionPayload>::_PlaceCopy(a2, v2);
}

atomic_uint *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<realityio::mtlx::MtlxActionPayload>>::_DecrementIfValid(atomic_uint *result)
{
  if (result && atomic_fetch_add_explicit(result + 74, 0xFFFFFFFF, memory_order_release) == 1)
  {
    v2 = v1;
    __dmb(9u);
    realityio::mtlx::MtlxActionPayload::~MtlxActionPayload(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::vector<realityio::TexcoordID>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<realityio::TexcoordID>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

__n128 std::__function::__func<realityio::generateMtlxInputsDescriptorPaths(pxrInternal__aapl__pxrReserved__::UsdPrim const&)::$_0,std::allocator<realityio::generateMtlxInputsDescriptorPaths(pxrInternal__aapl__pxrReserved__::UsdPrim const&)::$_0>,BOOL ()(realityio::mtlx::NeoPrim const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285947A98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::generateMtlxInputsDescriptorPaths(pxrInternal__aapl__pxrReserved__::UsdPrim const&)::$_0,std::allocator<realityio::generateMtlxInputsDescriptorPaths(pxrInternal__aapl__pxrReserved__::UsdPrim const&)::$_0>,BOOL ()(realityio::mtlx::NeoPrim const&)>::operator()(uint64_t a1, uint64_t a2)
{
  realityio::mtlx::USDDataSource::getPrim(*(a1 + 8), *(a2 + 8), v7);
  if (realityio::TextureBuilder::isMtlxImageShader(v7, v3))
  {
    v4 = *(a1 + 16);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v6, v7);
    std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  }

  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  if (v8)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

  return 1;
}

void sub_2474FE460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::generateMtlxInputsDescriptorPaths(pxrInternal__aapl__pxrReserved__::UsdPrim const&)::$_0,std::allocator<realityio::generateMtlxInputsDescriptorPaths(pxrInternal__aapl__pxrReserved__::UsdPrim const&)::$_0>,BOOL ()(realityio::mtlx::NeoPrim const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(uint64_t **a1, void *a2, _DWORD **a3)
{
  v3 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

char **std::unique_ptr<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::CycleState>,0>(v2 + 28);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::CycleState>,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::deque<realityio::mtlx::NeoShadeConnectable>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<realityio::mtlx::NeoShadeConnectable *>::emplace_back<realityio::mtlx::NeoShadeConnectable *&>(a1, &v9);
}

void sub_2474FEA40(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<realityio::mtlx::NeoShadeConnectable *>::emplace_back<realityio::mtlx::NeoShadeConnectable *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath&&>,std::tuple<>>(char *a1, void *a2, _DWORD **a3)
{
  v3 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::CycleState>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,realityio::CycleState>,0>(a1 + 28);

    operator delete(a1);
  }
}

uint64_t std::deque<realityio::mtlx::NeoShadeConnectable>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 256;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<unsigned long>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    std::deque<unsigned long>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5] + result[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++result[5];
}

void realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::null_storage()
{
  {
    realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage::NodeStorage();
  }
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2474FEF68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

void std::deque<unsigned long>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v9);
}

void sub_2474FF148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<unsigned long *>::emplace_back<unsigned long *>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<unsigned long *>::emplace_front<unsigned long *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage::NodeStorage()
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  byte_27EE52D60 = 0;
  qword_27EE52D68 = 0;
}

uint64_t std::deque<unsigned long>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<unsigned long *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v6);
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

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>>(float *a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<pxrInternal__aapl__pxrReserved__::VtValue>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::vector<realityio::TexcoordID>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::TexcoordID>>(a1, a2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<realityio::TexcoordID>,realityio::TexcoordID*,realityio::TexcoordID*,realityio::TexcoordID*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      realityio::TexcoordID::TexcoordID(v4, v6);
      v6 += 48;
      v4 = v11 + 48;
      v11 += 48;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::TexcoordID>,realityio::TexcoordID*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t realityio::TexcoordID::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  pxrInternal__aapl__pxrReserved__::TfToken::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 16), (a2 + 16));
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  if (a2 != a1)
  {
    v4 = *(a1 + 8);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v5 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = v5;
  *(a2 + 39) = 0;
  *(a2 + 16) = 0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void *std::set<unsigned long>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<unsigned long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::set<unsigned long>::insert[abi:ne200100]<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(v5, (v5 + 8), v4 + 4, v4 + 4);
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

void *std::__tree<unsigned long>::__emplace_hint_unique_key_args<unsigned long,unsigned long const&>(uint64_t **a1, void *a2, unint64_t *a3, void *a4)
{
  v4 = *std::__tree<std::shared_ptr<RIO_MTLX::Element const>>::__find_equal<std::shared_ptr<RIO_MTLX::Element const>>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::VtValue const&>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
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

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>>(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue((16 * v2), a2);
  v16 = (16 * v2 + 16);
  v8 = *(a1 + 8);
  v9 = (16 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::VtValue*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::VtValue>::~__split_buffer(&v14);
  return v13;
}

void sub_2474FFFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<pxrInternal__aapl__pxrReserved__::VtValue>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<realityio::buildMaterialXAsset(realityio::MtlxSupportContext &,realityio::mtlx::NeoDataSource &)::$_0,std::allocator<realityio::buildMaterialXAsset(realityio::MtlxSupportContext &,realityio::mtlx::NeoDataSource &)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285947B28;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  *(a2 + 72) = v5;
  *(a2 + 56) = result;
  return result;
}

uint64_t std::__function::__func<realityio::buildMaterialXAsset(realityio::MtlxSupportContext &,realityio::mtlx::NeoDataSource &)::$_0,std::allocator<realityio::buildMaterialXAsset(realityio::MtlxSupportContext &,realityio::mtlx::NeoDataSource &)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::buildMaterialXAsset(realityio::MtlxSupportContext &,realityio::mtlx::NeoDataSource &)::$_0::operator()(uint64_t a1)
{
  v245 = *MEMORY[0x277D85DE8];
  ServiceLocator = REEngineGetServiceLocator();
  MEMORY[0x24C1A4230](ServiceLocator);
  v208 = a1;
  v3 = [**(a1 + 24) name];
  [v3 UTF8String];
  v4 = REAssetManagerShaderGraphMemoryAssetCreate();
  __p[0] = v4;
  v5 = *(a1 + 8);
  v6 = *(v5 + 8);
  if (v6 != v4)
  {
    *(v5 + 8) = v4;
    __p[0] = v6;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(__p);

  if (*(*(a1 + 8) + 8))
  {
    v8 = **(a1 + 32);
    v9 = [v8 lightingModel];
    if (v9 == 1)
    {
      [v8 blending];
    }

    else if (v9 == 2 || v9 == 3)
    {
      [v8 blending];
    }

    AssetHandle = REAssetManagerCreateAssetHandle();
    if (AssetHandle)
    {
      RERetain();
    }

    (*(**(a1 + 40) + 32))(*(a1 + 40), &AssetHandle);
    v220 = REMaterialAssetBuilderCreate();
    (*(***(a1 + 48) + 16))(__p);
    pxrInternal__aapl__pxrReserved__::SdfPath::GetName(__p);
    REMaterialAssetBuilderSetName();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__p);
    if ([**(a1 + 32) hasSurfaceShaderUniforms])
    {
      REMaterialAssetBuilderSetFunctionConstant();
    }

    if ([**(a1 + 32) hasGeometryModifierUniforms])
    {
      REMaterialAssetBuilderSetFunctionConstant();
    }

    if ([**(a1 + 32) hasPremultipliedAlpha])
    {
      REMaterialAssetBuilderSetFunctionConstant();
    }

    if ([**(a1 + 32) hasBackgroundBlur])
    {
      REMaterialAssetBuilderSetNeedsVCABlur();
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [**(a1 + 32) matchUnlitColor])
    {
      REMaterialAssetBuilderSetFunctionConstant();
    }

    v210 = *(a1 + 48);
    v11 = **(a1 + 56);
    v225 = 0u;
    v226 = 0u;
    v227 = 0u;
    v228 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v225 objects:v232 count:16];
    if (v13)
    {
      v14 = v13;
      v209 = *v226;
      v207 = v12;
LABEL_28:
      v15 = 0;
      while (2)
      {
        if (*v226 != v209)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v225 + 1) + 8 * v15);
        v17 = [v16 name];
        v18 = v17;
        MEMORY[0x24C1A5DE0](__p, [v17 UTF8String]);
        (*(**v210 + 144))(&v222);
        if ((__p[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v19 = v16;
        v234.__type_name = 0;
        (*(*v222 + 56))(v222, v223, &v224, &v234);
        std::string::basic_string[abi:ne200100]<0>(&v230, "$1.");
        v20 = [v19 name];
        v21 = v20;
        std::string::append(&v230, [v20 UTF8String]);

        v229 = 1;
        v22 = [v19 type];
        switch(v22)
        {
          case 2uLL:
          case 6uLL:
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned int>(&v234))
            {
              pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned int>(&v234);
              v229 = 0;
            }

            else
            {
              Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
              if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, MEMORY[0x277D827C8], v52))
              {
                v53 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned int>(&v234);
                pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__p, v53);
                pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned int>(__p);
                v229 = 0;
                pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__p);
              }

              else
              {
                v229 = 1;
              }
            }

            v22 = REMaterialAssetBuilderSetUInt();
            goto LABEL_205;
          case 3uLL:
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(&v234))
            {
              pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(&v234);
              v229 = 0;
            }

            else
            {
              v65 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
              if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(v65, MEMORY[0x277D827C0], v66))
              {
                v67 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<int>(&v234);
                pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__p, v67);
                pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(__p);
                v229 = 0;
                pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__p);
              }

              else
              {
                v229 = 1;
              }
            }

            v22 = REMaterialAssetBuilderSetInt();
            goto LABEL_205;
          case 4uLL:
          case 5uLL:
          case 8uLL:
          case 0xAuLL:
          case 0x10uLL:
          case 0x13uLL:
          case 0x17uLL:
          case 0x1BuLL:
          case 0x22uLL:
          case 0x25uLL:
          case 0x28uLL:
          case 0x2BuLL:
          case 0x2EuLL:
          case 0x30uLL:
          case 0x33uLL:
            __break(1u);
            return;
          case 7uLL:
          case 9uLL:
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<float>(&v234))
            {
              pxrInternal__aapl__pxrReserved__::VtValue::Get<float>(&v234);
              v229 = 0;
            }

            else
            {
              v48 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
              if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(v48, MEMORY[0x277D827B0], v49))
              {
                v50 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<float>(&v234);
                pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__p, v50);
                pxrInternal__aapl__pxrReserved__::VtValue::Get<float>(__p);
                v229 = 0;
                pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__p);
              }

              else
              {
                v229 = 1;
              }
            }

            v22 = REMaterialAssetBuilderSetFloat();
            goto LABEL_205;
          case 0xBuLL:
          case 0xCuLL:
          case 0xDuLL:
            v229 = 0;
            goto LABEL_205;
          case 0xEuLL:
            if (!v234.__type_name)
            {
              goto LABEL_183;
            }

            __p[0] = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v234);
            if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
            {
              if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(&v234))
              {
                v42 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(&v234);
                *__p = *v42;
                *&__p[2] = v42[1];
                v229 = 0;
              }

              else
              {
                v90 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
                {
                  goto LABEL_182;
                }

                v92 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(&v234);
                v93 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(buf, v92);
                v94 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(v93);
                *__p = *v94;
                *&__p[2] = v94[1];
                v229 = 0;
                pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
              }

              v95 = 0;
              v97 = *MEMORY[0x277D860A8];
              v96 = *(MEMORY[0x277D860A8] + 8);
              v98 = 1;
              do
              {
                v99 = v98;
                v100 = &__p[2 * v95];
                v101 = *v100;
                v215 = v97;
                *(&v215 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v95 & 1))) = v101;
                v97 = v215;
                v102 = v100[1];
                v216 = v96;
                *(&v216 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v95 & 1))) = v102;
                v96 = v216;
                v95 = 1;
                v98 = 0;
              }

              while ((v99 & 1) != 0);
            }

            else
            {
              __p[0] = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v234);
              IsA = pxrInternal__aapl__pxrReserved__::TfType::IsA();
              if (IsA)
              {
                if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(&v234))
                {
                  *__p = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(&v234);
                  v229 = 0;
                }

                else
                {
                  v136 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
                  {
LABEL_182:
                    v229 = 1;
                    goto LABEL_183;
                  }

                  v138 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(&v234);
                  v139 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(buf, v138);
                  *__p = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(v139);
                  v229 = 0;
                  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
                }

                v140 = 0;
                v142 = *MEMORY[0x277D860A8];
                v141 = *(MEMORY[0x277D860A8] + 8);
                v143 = 1;
                do
                {
                  v144 = v143;
                  v145 = &__p[v140];
                  v146 = *v145;
                  v217 = v142;
                  *(&v217 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v140 & 1))) = v146;
                  v142 = v217;
                  v147 = *(v145 + 1);
                  v218 = v141;
                  *(&v218 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v140 & 1))) = v147;
                  v141 = v218;
                  v140 = 1;
                  v143 = 0;
                }

                while ((v144 & 1) != 0);
              }

              else
              {
                v130 = *(realityio::logObjects(IsA) + 48);
                if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
                {
                  pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(__p, &v234);
                  v131 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                  *buf = 136315138;
                  *&buf[4] = v131;
                  _os_log_impl(&dword_247485000, v130, OS_LOG_TYPE_INFO, "Could not convert a value of type '%s' for type SGDataTypeMatrix2f to a SIMD value. Substituting identity matrix.", buf, 0xCu);
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }
            }

LABEL_183:
            v22 = REMaterialAssetBuilderSetFloat2x2();
            goto LABEL_205;
          case 0xFuLL:
            if (!v234.__type_name)
            {
              goto LABEL_195;
            }

            __p[0] = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v234);
            if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
            {
              if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(&v234))
              {
                v44 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(&v234);
                *&__p[2] = *(v44 + 16);
                v236 = *(v44 + 32);
                v237 = *(v44 + 48);
                *&v238 = *(v44 + 64);
                *__p = *v44;
                v229 = 0;
              }

              else
              {
                v103 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
                {
                  goto LABEL_194;
                }

                v105 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(&v234);
                v106 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(buf, v105);
                v107 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(v106);
                *&__p[2] = *(v107 + 16);
                v236 = *(v107 + 32);
                v237 = *(v107 + 48);
                *&v238 = *(v107 + 64);
                *__p = *v107;
                v229 = 0;
                pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
              }

              v108 = 0;
              memset(buf, 0, sizeof(buf));
              v243 = 0u;
              v109 = *MEMORY[0x277D860B0];
              v110 = *(MEMORY[0x277D860B0] + 16);
              v111 = *(MEMORY[0x277D860B0] + 32);
              *&buf[8] = *(MEMORY[0x277D860B0] + 8);
              *&buf[24] = DWORD2(v110);
              *buf = v109;
              *&buf[16] = v110;
              DWORD2(v243) = DWORD2(v111);
              v112 = __p;
              *&v243 = v111;
              do
              {
                v113 = 0;
                v114 = v112;
                do
                {
                  v115 = *v114++;
                  v116 = v115;
                  if (v108 >= 2uLL)
                  {
                    v117 = 2;
                  }

                  else
                  {
                    v117 = v108;
                  }

                  *&buf[4 * v117 + v113] = v116;
                  v113 += 16;
                }

                while (v113 != 48);
                ++v108;
                v112 += 3;
              }

              while (v108 != 3);
            }

            else
            {
              __p[0] = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v234);
              v85 = pxrInternal__aapl__pxrReserved__::TfType::IsA();
              if (v85)
              {
                if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(&v234))
                {
                  v86 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(&v234);
                  *buf = *v86;
                  *&buf[16] = *(v86 + 16);
                  LODWORD(v243) = *(v86 + 32);
                  v229 = 0;
                }

                else
                {
                  v148 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
                  {
LABEL_194:
                    v229 = 1;
                    goto LABEL_195;
                  }

                  v150 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(&v234);
                  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__p, v150);
                  v151 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(__p);
                  *buf = *v151;
                  *&buf[16] = *(v151 + 16);
                  LODWORD(v243) = *(v151 + 32);
                  v229 = 0;
                  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__p);
                }

                v152 = 0;
                memset(__p, 0, sizeof(__p));
                v236 = 0u;
                v153 = *MEMORY[0x277D860B0];
                v154 = *(MEMORY[0x277D860B0] + 16);
                v155 = *(MEMORY[0x277D860B0] + 32);
                LODWORD(__p[1]) = *(MEMORY[0x277D860B0] + 8);
                LODWORD(__p[3]) = DWORD2(v154);
                __p[0] = v153;
                __p[2] = v154;
                DWORD2(v236) = DWORD2(v155);
                v156 = buf;
                *&v236 = v155;
                do
                {
                  v157 = 0;
                  v158 = v156;
                  do
                  {
                    v159 = *v158;
                    v158 += 4;
                    v160 = v159;
                    if (v152 >= 2uLL)
                    {
                      v161 = 2;
                    }

                    else
                    {
                      v161 = v152;
                    }

                    *(&__p[v157] + v161) = v160;
                    v157 += 2;
                  }

                  while (v157 != 6);
                  ++v152;
                  v156 += 12;
                }

                while (v152 != 3);
              }

              else
              {
                v132 = *(realityio::logObjects(v85) + 48);
                if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
                {
                  pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(__p, &v234);
                  v133 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                  *buf = 136315138;
                  *&buf[4] = v133;
                  _os_log_impl(&dword_247485000, v132, OS_LOG_TYPE_INFO, "Could not convert a value of type '%s' for type SGDataTypeMatrix3f to a SIMD value. Substituting identity matrix.", buf, 0xCu);
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }
            }

LABEL_195:
            v22 = REMaterialAssetBuilderSetFloat3x3();
            goto LABEL_205;
          case 0x11uLL:
            if (!v234.__type_name)
            {
              goto LABEL_204;
            }

            __p[0] = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v234);
            if (pxrInternal__aapl__pxrReserved__::TfType::IsA())
            {
              if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(&v234))
              {
                v46 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(&v234);
                v238 = v46[4];
                v239 = v46[5];
                v240 = v46[6];
                v241 = v46[7];
                *__p = *v46;
                *&__p[2] = v46[1];
                v236 = v46[2];
                v237 = v46[3];
                v229 = 0;
              }

              else
              {
                v118 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
                {
                  goto LABEL_203;
                }

                v120 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(&v234);
                v121 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(buf, v120);
                v122 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(v121);
                v238 = v122[4];
                v239 = v122[5];
                v240 = v122[6];
                v241 = v122[7];
                *__p = *v122;
                *&__p[2] = v122[1];
                v236 = v122[2];
                v237 = v122[3];
                v229 = 0;
                pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
              }

              v123 = 0;
              v124 = *(MEMORY[0x277D860B8] + 16);
              v125 = *(MEMORY[0x277D860B8] + 32);
              v126 = *(MEMORY[0x277D860B8] + 48);
              *buf = *MEMORY[0x277D860B8];
              *&buf[16] = v124;
              v243 = v125;
              v244 = v126;
              v127 = __p;
              do
              {
                for (i = 0; i != 4; ++i)
                {
                  v129 = *&v127[i];
                  *(&buf[16 * i] & 0xFFFFFFFFFFFFFFF3 | (4 * (v123 & 3))) = v129;
                }

                ++v123;
                v127 += 4;
              }

              while (v123 != 4);
            }

            else
            {
              __p[0] = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v234);
              v88 = pxrInternal__aapl__pxrReserved__::TfType::IsA();
              if (v88)
              {
                if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(&v234))
                {
                  v89 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(&v234);
                  *buf = *v89;
                  *&buf[16] = v89[1];
                  v243 = v89[2];
                  v244 = v89[3];
                  v229 = 0;
                }

                else
                {
                  v162 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
                  {
LABEL_203:
                    v229 = 1;
                    goto LABEL_204;
                  }

                  v164 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(&v234);
                  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__p, v164);
                  v165 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(__p);
                  *buf = *v165;
                  *&buf[16] = v165[1];
                  v243 = v165[2];
                  v244 = v165[3];
                  v229 = 0;
                  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__p);
                }

                v166 = 0;
                v167 = *(MEMORY[0x277D860B8] + 16);
                v168 = *(MEMORY[0x277D860B8] + 32);
                v169 = *(MEMORY[0x277D860B8] + 48);
                *__p = *MEMORY[0x277D860B8];
                *&__p[2] = v167;
                v236 = v168;
                v237 = v169;
                v170 = buf;
                do
                {
                  for (j = 0; j != 4; ++j)
                  {
                    *(&__p[2 * j] & 0xFFFFFFFFFFFFFFF3 | (4 * (v166 & 3))) = *&v170[4 * j];
                  }

                  ++v166;
                  v170 += 16;
                }

                while (v166 != 4);
              }

              else
              {
                v134 = *(realityio::logObjects(v88) + 48);
                if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
                {
                  pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(__p, &v234);
                  v135 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
                  *buf = 136315138;
                  *&buf[4] = v135;
                  _os_log_impl(&dword_247485000, v134, OS_LOG_TYPE_INFO, "Could not convert a value of type '%s' for type SGDataTypeMatrix4f to a SIMD value. Substituting identity matrix.", buf, 0xCu);
                  if (SHIBYTE(__p[2]) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }
            }

LABEL_204:
            v22 = REMaterialAssetBuilderSetFloat4x4();
LABEL_205:
            if (v229 == 1)
            {
              v172 = *(realityio::logObjects(v22) + 48);
              if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
              {
                pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(__p, &v234);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v173 = __p;
                }

                else
                {
                  v173 = __p[0];
                }

                v174 = &v230;
                if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v174 = v230.__r_.__value_.__r.__words[0];
                }

                *buf = 136315394;
                *&buf[4] = v173;
                *&buf[12] = 2080;
                *&buf[14] = v174;
                _os_log_error_impl(&dword_247485000, v172, OS_LOG_TYPE_ERROR, "Value type '%s' for input '%s' is not valid. Using placeholder value.", buf, 0x16u);
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }

            if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v230.__r_.__value_.__l.__data_);
            }

            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v234);

            if ((v224 & 7) != 0)
            {
              atomic_fetch_add_explicit((v224 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if (++v15 != v14)
            {
              continue;
            }

            v175 = [v12 countByEnumeratingWithState:&v225 objects:v232 count:16];
            v14 = v175;
            if (!v175)
            {
              goto LABEL_222;
            }

            goto LABEL_28;
          case 0x12uLL:
          case 0x14uLL:
          case 0x1DuLL:
          case 0x1EuLL:
            _ZN9realityio12_GLOBAL__N_112toSimdVectorIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fEET0_RNS2_7VtValueERb(&v234, &v229);
            v22 = REMaterialAssetBuilderSetFloat4();
            goto LABEL_205;
          case 0x15uLL:
          case 0x16uLL:
          case 0x2FuLL:
          case 0x31uLL:
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2f>(&v234))
            {
              v23 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2f>(&v234);
              v25 = *v23;
              v24 = *(v23 + 1);
              v229 = 0;
            }

            else
            {
              v30 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
              {
                v229 = 1;
                goto LABEL_89;
              }

              v32 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2f>(&v234);
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__p, v32);
              v33 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2f>(&v234);
              v25 = *v33;
              v24 = *(v33 + 1);
              v229 = 0;
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__p);
            }

            v34 = 0;
            v35 = 0;
            v36 = 1;
            do
            {
              v37 = v36;
              v212 = v35;
              *(&v212 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v34 & 1))) = v25;
              v34 = 1;
              v35 = v212;
              v25 = v24;
              v36 = 0;
            }

            while ((v37 & 1) != 0);
LABEL_89:
            v22 = REMaterialAssetBuilderSetFloat2();
            goto LABEL_205;
          case 0x18uLL:
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2i>(&v234))
            {
              v38 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2i>(&v234);
              v39 = *v38;
              v40 = *(v38 + 1);
              v229 = 0;
            }

            else
            {
              v54 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
              {
                v229 = 1;
                goto LABEL_125;
              }

              v56 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2i>(&v234);
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__p, v56);
              v57 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2i>(&v234);
              v39 = *v57;
              v40 = *(v57 + 1);
              v229 = 0;
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__p);
            }

            v58 = 0;
            v59 = 0;
            v60 = 1;
            do
            {
              v61 = v60;
              v211 = v59;
              *(&v211 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v58 & 1))) = v39;
              v58 = 1;
              v59 = v211;
              v39 = v40;
              v60 = 0;
            }

            while ((v61 & 1) != 0);
LABEL_125:
            v12 = v207;
            v22 = REMaterialAssetBuilderSetInt2();
            goto LABEL_205;
          case 0x19uLL:
          case 0x1AuLL:
          case 0x20uLL:
          case 0x21uLL:
          case 0x23uLL:
          case 0x24uLL:
          case 0x26uLL:
          case 0x27uLL:
          case 0x32uLL:
          case 0x34uLL:
            _ZN9realityio12_GLOBAL__N_112toSimdVectorIN32pxrInternal__aapl__pxrReserved__7GfVec3fEDv3_fEET0_RNS2_7VtValueERb(&v234, &v229);
            v22 = REMaterialAssetBuilderSetFloat3();
            goto LABEL_205;
          case 0x1CuLL:
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3i>(&v234))
            {
              v47 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3i>(&v234);
              *buf = *v47;
              *&buf[8] = *(v47 + 8);
              v229 = 0;
            }

            else
            {
              v68 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
              {
                v229 = 1;
                goto LABEL_131;
              }

              v70 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3i>(&v234);
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__p, v70);
              v71 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3i>(&v234);
              *buf = *v71;
              *&buf[8] = *(v71 + 8);
              v229 = 0;
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__p);
            }

            v72 = 0;
            v73 = 0uLL;
            do
            {
              v74 = *&buf[4 * v72];
              v213 = v73;
              *(&v213 & 0xFFFFFFFFFFFFFFF3 | (4 * (v72 & 3))) = v74;
              v75 = v213;
              HIDWORD(v75) = HIDWORD(v73);
              ++v72;
              v73 = v75;
            }

            while (v72 != 3);
LABEL_131:
            v22 = REMaterialAssetBuilderSetInt3();
            goto LABEL_205;
          case 0x1FuLL:
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4i>(&v234))
            {
              *__p = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4i>(&v234);
              v229 = 0;
            }

            else
            {
              v76 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
              {
                v229 = 1;
                goto LABEL_133;
              }

              v78 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4i>(&v234);
              pxrInternal__aapl__pxrReserved__::VtValue::VtValue(buf, v78);
              *__p = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4i>(&v234);
              v229 = 0;
              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(buf);
            }

            v79 = 0;
            v80 = 0uLL;
            do
            {
              v81 = *(__p + v79);
              v214 = v80;
              *(&v214 & 0xFFFFFFFFFFFFFFF3 | (4 * (v79 & 3))) = v81;
              v80 = v214;
              ++v79;
            }

            while (v79 != 4);
LABEL_133:
            v22 = REMaterialAssetBuilderSetInt4();
            goto LABEL_205;
          case 0x29uLL:
          case 0x2AuLL:
            *&v28 = _ZN9realityio12_GLOBAL__N_112toSimdVectorIN32pxrInternal__aapl__pxrReserved__7GfVec3fEDv3_fEET0_RNS2_7VtValueERb(&v234, &v229);
            if (v234.__type_name)
            {
              __p[0] = v222;
              LODWORD(__p[1]) = v223;
              __p[2] = v224;
              if ((v224 & 7) != 0)
              {
                v29 = (v224 & 0xFFFFFFFFFFFFFFF8);
                if ((atomic_fetch_add_explicit((v224 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  __p[2] = v29;
                }
              }

              v231 = 0;
              HIDWORD(v28) = 0;
              *buf = v28;
              (*(*__p[0] + 216))(__p[0], buf, &v231, __p);
              if ((__p[2] & 7) != 0)
              {
                atomic_fetch_add_explicit((__p[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            v22 = REMaterialAssetBuilderSetColor3F();
            goto LABEL_205;
          case 0x2CuLL:
          case 0x2DuLL:
            *&v26 = _ZN9realityio12_GLOBAL__N_112toSimdVectorIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fEET0_RNS2_7VtValueERb(&v234, &v229);
            if (v234.__type_name)
            {
              __p[0] = v222;
              LODWORD(__p[1]) = v223;
              __p[2] = v224;
              if ((v224 & 7) != 0)
              {
                v27 = (v224 & 0xFFFFFFFFFFFFFFF8);
                if ((atomic_fetch_add_explicit((v224 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  __p[2] = v27;
                }
              }

              v231 = 0;
              *buf = v26;
              (*(*__p[0] + 216))(__p[0], buf, &v231, __p);
              if ((__p[2] & 7) != 0)
              {
                atomic_fetch_add_explicit((__p[2] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            v22 = REMaterialAssetBuilderSetColor4F();
            goto LABEL_205;
          default:
            if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(&v234))
            {
              pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(&v234);
              v229 = 0;
            }

            else
            {
              v62 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(&v234);
              if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(v62, MEMORY[0x277D82798], v63))
              {
                v64 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<BOOL>(&v234);
                pxrInternal__aapl__pxrReserved__::VtValue::VtValue(__p, v64);
                pxrInternal__aapl__pxrReserved__::VtValue::Get<BOOL>(__p);
                v229 = 0;
                pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(__p);
              }

              else
              {
                v229 = 1;
              }
            }

            v22 = REMaterialAssetBuilderSetBool();
            goto LABEL_205;
        }
      }
    }

LABEL_222:

    v176 = REMaterialCreateDefaultSamplerDescriptor();
    REMaterialAssetBuilderSetSampler();

    v219 = v220;
    if (v220)
    {
      RERetain();
    }

    for (k = *(*(a1 + 64) + 16); k; k = *k)
    {
      v178 = k[3];
      if (v178)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, [v178 UTF8String]);
        if (SHIBYTE(__p[2]) >= 0)
        {
          v179 = __p;
        }

        else
        {
          v179 = __p[0];
        }

        v180 = [MEMORY[0x277CCACA8] stringWithFormat:@"$1.%s", v179];
        v181 = v180;
        std::string::basic_string[abi:ne200100]<0>(v232, [v180 UTF8String]);

        if (*(k + 40) == 1 && k[4])
        {
          REMaterialAssetBuilderSetTextureFromAsset();
          REMaterialAssetBuilderBindTextureToSampler();
        }

        else
        {
          REMaterialAssetBuilderSetTextureFromBinding();
        }

        if (v233 < 0)
        {
          operator delete(v232[0]);
        }

        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v182 = *(realityio::logObjects(0) + 48);
        if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
        {
          String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((k + 2));
          if (*(String + 23) >= 0)
          {
            v184 = String;
          }

          else
          {
            v184 = *String;
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v184;
          _os_log_impl(&dword_247485000, v182, OS_LOG_TYPE_DEFAULT, "Error: ShaderGraphKey not found for %s.", __p, 0xCu);
        }
      }
    }

    realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&v219);
    REMaterialAssetBuilderSetMaterialDefinition();
    v232[0] = 0x200000001;
    *buf = REAssetManagerCreateAssetHandle();
    v185 = [**(v208 + 32) surfaceShaderFunctionName];
    if (!v185)
    {
      v186 = *(realityio::logObjects(0) + 48);
      if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&dword_247485000, v186, OS_LOG_TYPE_DEFAULT, "The surface shader hasn't been built.", __p, 2u);
      }

      v185 = @"surfaceShader";
    }

    v187 = v185;
    [(__CFString *)v185 UTF8String];
    REMaterialAssetBuilderAddFunctionLink();
    v188 = [**(v208 + 32) geometryModifierFunctionName];
    if (v188)
    {
      v189 = v188;
    }

    else
    {
      v189 = @"geometryModifier";
    }

    *&v225 = 0x800000004;
    v190 = v189;
    [(__CFString *)v189 UTF8String];
    v191 = REMaterialAssetBuilderAddFunctionLink();
    if (**(v208 + 72) >= 1)
    {
      v191 = REMaterialAssetBuilderSetFunctionConstant();
    }

    if (**(v208 + 80) > 1 || **(v208 + 72) > 0)
    {
      goto LABEL_258;
    }

    v192 = *(v208 + 88);
    v193 = *(v192 + 95);
    if (v193 < 0)
    {
      v193 = *(v192 + 80);
    }

    if (v193)
    {
LABEL_258:
      v191 = REMaterialAssetBuilderSetFunctionConstant();
      v192 = *(v208 + 88);
    }

    v194 = 384;
    while (1)
    {
      if ((*(v192 + 47) & 0x8000000000000000) != 0)
      {
        if (*(v192 + 32))
        {
LABEL_264:
          v195 = *(realityio::logObjects(v191) + 48);
          if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
          {
            v196 = v192;
            if (*(v192 + 23) < 0)
            {
              v196 = *v192;
            }

            v197 = (v192 + 24);
            if (*(v192 + 47) < 0)
            {
              v197 = *(v192 + 24);
            }

            LODWORD(__p[0]) = 136315394;
            *(__p + 4) = v196;
            WORD2(__p[1]) = 2080;
            *(&__p[1] + 6) = v197;
            _os_log_impl(&dword_247485000, v195, OS_LOG_TYPE_INFO, "key: %s, binding: %s", __p, 0x16u);
          }

          v191 = REMaterialAssetBuilderSetBufferFromBinding();
        }
      }

      else if (*(v192 + 47))
      {
        goto LABEL_264;
      }

      v192 += 48;
      v194 -= 48;
      if (!v194)
      {
        v198 = *(v208 + 96);
        if ((*(v198 + 8) & 1) == 0 && (*(v198 + 9) & 1) == 0)
        {
          REMaterialAssetBuilderSetMTLCullMode();
        }

        REMaterialAssetBuilderSetFunctionConstant();
        REMaterialAssetBuilderSetFunctionConstant();
        REMaterialAssetBuilderSetFunctionConstant();
        REMaterialAssetBuilderSetFunctionConstant();
        REMaterialAssetBuilderSetFunctionConstant();
        REMaterialAssetBuilderSetFunctionConstant();
        REMaterialAssetBuilderSetFunctionConstant();
        REMaterialAssetBuilderSetFunctionConstant();
        v199 = REAssetManagerMaterialAssetBuilderBuild();
        __p[0] = v199;
        v200 = *(v208 + 8);
        v201 = *v200;
        if (*v200 != v199)
        {
          *v200 = v199;
          __p[0] = v201;
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(__p);
        v202 = (*(**(v208 + 40) + 32))(*(v208 + 40), *(v208 + 8));
        v203 = *(realityio::logObjects(v202) + 48);
        if (os_log_type_enabled(v203, OS_LOG_TYPE_INFO))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&dword_247485000, v203, OS_LOG_TYPE_INFO, "Done.", __p, 2u);
        }

        realityio::WrappedRERef<REAsset *>::~WrappedRERef(buf);
        realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&v220);
        realityio::WrappedRERef<REAsset *>::~WrappedRERef(&AssetHandle);
        return;
      }
    }
  }

  v10 = *(realityio::logObjects(v7) + 48);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v204 = [**(a1 + 24) name];
    v205 = v204;
    v206 = [v204 UTF8String];
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v206;
    _os_log_error_impl(&dword_247485000, v10, OS_LOG_TYPE_ERROR, "Error creating ShaderGraph asset for node %s", __p, 0xCu);
  }
}

void sub_24750202C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((v43 - 192));
  realityio::WrappedRERef<REMaterialAssetBuilder *>::~WrappedRERef(&a42);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a43);
  _Unwind_Resume(a1);
}

double _ZN9realityio12_GLOBAL__N_112toSimdVectorIN32pxrInternal__aapl__pxrReserved__7GfVec3fEDv3_fEET0_RNS2_7VtValueERb(pxrInternal__aapl__pxrReserved__::VtValue *a1, _BYTE *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1))
  {
    v4 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1);
    v15 = *v4;
    v16 = *(v4 + 8);
    *a2 = 0;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    {
      *a2 = 1;
      return 0.0;
    }

    v7 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1);
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v17, v7);
    v8 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1);
    v15 = *v8;
    v16 = *(v8 + 8);
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v17);
  }

  v9 = 0;
  v10 = 0uLL;
  do
  {
    v11 = *(&v15 + v9);
    *v14 = v10;
    *(v14 & 0xFFFFFFFFFFFFFFF3 | (4 * (v9 & 3))) = v11;
    result = v14[0];
    v13 = *v14;
    HIDWORD(v13) = HIDWORD(v10);
    ++v9;
    v10 = v13;
  }

  while (v9 != 3);
  return result;
}

void sub_2475024C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

double _ZN9realityio12_GLOBAL__N_112toSimdVectorIN32pxrInternal__aapl__pxrReserved__7GfVec4fEDv4_fEET0_RNS2_7VtValueERb(pxrInternal__aapl__pxrReserved__::VtValue *a1, _BYTE *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4f>(a1))
  {
    v12 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4f>(a1);
    *a2 = 0;
  }

  else
  {
    Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid(a1);
    {
      *a2 = 1;
      *&v8 = 0;
      return *&v8;
    }

    v6 = pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4f>(a1);
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v13, v6);
    v12 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4f>(a1);
    *a2 = 0;
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v13);
  }

  v7 = 0;
  v8 = 0uLL;
  do
  {
    v9 = *&v13[4 * v7 - 8];
    v11 = v8;
    *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))) = v9;
    v8 = v11;
    ++v7;
  }

  while (v7 != 4);
  return *&v8;
}

void sub_2475025CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<BOOL>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<BOOL>(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v4, MEMORY[0x277D82798], v1, v2);
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 5)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827C0]);
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<int>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<int>(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v4, MEMORY[0x277D827C0], v1, v2);
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<int>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned int>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 6)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827C8]);
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::Get<unsigned int>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned int>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<unsigned int>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<unsigned int>(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v4, MEMORY[0x277D827C8], v1, v2);
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfAnyUniquePtr::_Delete<unsigned int>(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2i>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 63)
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

pxrInternal__aapl__pxrReserved__::VtValue *pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec2i>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2i>(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet();
  }
}

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec2i>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec2i>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3i>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 62)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3i>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3i>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3i>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3i>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 68)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec3f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec3f>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec3f>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4i>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 61)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfVec4i>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4i>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfVec4i>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfVec4i>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 78)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 75)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix2f>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 77)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 74)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix3f>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 76)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 73)
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

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(a1))
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

std::type_info *pxrInternal__aapl__pxrReserved__::VtValue::Cast<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(std::type_info *a1)
{
  v1 = a1;
  v4[2] = *MEMORY[0x277D85DE8];
  if ((pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::GfMatrix4f>(a1) & 1) == 0)
  {
    v1 = pxrInternal__aapl__pxrReserved__::VtValue::operator=(v1, v4);
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v4);
  }

  return v1;
}

uint64_t realityio::SkeletonPoseDefinitionBuilder::kOutputName(realityio::SkeletonPoseDefinitionBuilder *this)
{
  {
    operator new();
  }

  return realityio::SkeletonPoseDefinitionBuilder::kOutputName(void)::kOutputName;
}

void sub_2475037EC(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t realityio::SkeletonPoseDefinitionBuilder::kAnimationOutputName(realityio::SkeletonPoseDefinitionBuilder *this)
{
  if ((atomic_load_explicit(&qword_27EE52D78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE52D78))
  {
    operator new();
  }

  return _MergedGlobals_6;
}

void sub_2475038A4(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  __cxa_guard_abort(&qword_27EE52D78);
  _Unwind_Resume(a1);
}

uint64_t realityio::SkeletonPoseDefinitionBuilder::kAnimationLibraryOutputName(realityio::SkeletonPoseDefinitionBuilder *this)
{
  {
    operator new();
  }

  return realityio::SkeletonPoseDefinitionBuilder::kAnimationLibraryOutputName(void)::kOutputName;
}

void sub_24750395C(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDefinitionBuilder(realityio::SkeletonPoseDefinitionBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "SkeletonPoseDefinitionBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kSkeletonPoseDefinitionBuilderIdentifier);
  realityio::generateSkeletonDirtyStageSubscription(&v4);
  v8[0] = &unk_285947CB0;
  v8[3] = v8;
  v7[0] = &unk_285947EE0;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, &v4, v8, v7);
}

void sub_247503ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a24);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](v24 - 56);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

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

uint64_t realityio::SkeletonPoseDefinitionBuilder::run(uint64_t **this, realityio::Inputs *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = *(realityio::logObjects(this) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_247485000, v4, OS_LOG_TYPE_INFO, "Creating skeleton pose definition", buf, 2u);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v54, v5, (a2 + 32));
  v6 = std::unique_ptr<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT>::reset[abi:ne200100](this + 35, 0);
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(v6);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
  {
    realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v53, 2030, this, 0, 0, 0);
    std::string::basic_string[abi:ne200100]<0>(buf, "SkeletalAnimationViaRelationship");
    realityio::Inputs::_getValue<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT *>(v49, a2, buf);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(*buf);
    }

    if ((v49[0] & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v84, "SkeletalAnimationViaChildren");
      realityio::Inputs::_getValue<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT *>(buf, a2, &v84);
      if (buf[0])
      {
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p);
        }

        v49[0] = 1;
        *&v50 = v66;
      }

      else
      {
        v50 = v66;
        if (SHIBYTE(v52) < 0)
        {
          operator delete(__p);
        }

        __p = v67;
        v52 = v68;
      }

      if ((v85[7] & 0x80000000) != 0)
      {
        operator delete(v84);
      }
    }

    v8 = realityio::SkeletalAnimationAssetBuilder::kOutputLibraryName(v7);
    realityio::Inputs::_getValue<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>(a2, v8, v46);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v45[0] = MEMORY[0x277D86720] + 16;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    MEMORY[0x24C1A4F20](v69);
    pxrInternal__aapl__pxrReserved__::UsdSkelCache::GetSkelQuery(buf, v69, v45);
    if (*buf)
    {
      pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::GetJointOrder(v64, buf);
      v9 = v64[0];
      std::vector<char const*>::resize(&v77, v64[0]);
      if (v64[0])
      {
        v10 = v64[4];
        v11 = v77;
        for (i = 8 * v64[0]; i; i -= 8)
        {
          v13 = *v10 & 0xFFFFFFFFFFFFFFF8;
          if (v13)
          {
            v14 = *(v13 + 39);
            if (v14 < 0)
            {
              v16 = v13 + 16;
              v15 = *(v13 + 16);
              if (*(v16 + 8) > 1uLL)
              {
LABEL_25:
                if (*v15 == 47)
                {
                  ++v15;
                }
              }
            }

            else
            {
              v15 = (v13 + 16);
              if (v14 >= 2u)
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            v15 = "";
          }

          *v11++ = v15;
          ++v10;
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetRestTransformsAttr(&v60, v45);
      v81 = 0;
      v17 = pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
      if (v17 && (v17 = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(v80), v17 == v9) && (v17 = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(v80), v17))
      {
        std::vector<RESRT>::resize(&v74, v9);
        v18 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(v80);
        if (*v18)
        {
          v19 = v18[4];
          v20 = v74;
          v21 = *v18 << 7;
          __asm { FMOV            V0.4S, #1.0 }

          v43 = _Q0;
          do
          {
            MEMORY[0x24C1A4BE0](&v84, v19);
            v83 = xmmword_247757270;
            v84 = v43;
            v82 = 0uLL;
            REDecomposeMatrix();
            v28 = v83;
            v27 = v84;
            v29 = v82;
            v20[2] = DWORD2(v84);
            *v20 = v27;
            *(v20 + 1) = v28;
            v20[10] = DWORD2(v29);
            *(v20 + 4) = v29;
            v19 += 128;
            v20 += 12;
            v21 -= 128;
          }

          while (v21);
        }

        pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetBindTransformsAttr(&v84, v45);
        *(&v83 + 1) = 0;
        NumElements = pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
        if (NumElements && (NumElements = pxrInternal__aapl__pxrReserved__::VtValue::_GetNumElements(&v83), NumElements == v9) && (NumElements = pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(&v83), NumElements))
        {
          std::vector<simd_float4x4>::resize(&v71, v9);
          v31 = pxrInternal__aapl__pxrReserved__::VtValue::Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(&v83);
          v32 = RESkeletonDefinitionCreate();
          v59 = v32;
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v82, v45);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v82);
          RESkeletonDefinitionSetName();
          pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v82);
          RESkeletonDefinitionSetJointNames();
          RESkeletonDefinitionSetLocalRestPoses();
          RESkeletonDefinitionSetInverseBindPoses();
          v33 = MEMORY[0x24C1A42D0](v32, 0);
          if (!v33)
          {
            v34 = *(realityio::logObjects(0) + 24);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v58, v45);
              Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v58);
              LODWORD(v82) = 136315138;
              *(&v82 + 4) = Text;
              _os_log_impl(&dword_247485000, v34, OS_LOG_TYPE_DEFAULT, "Could not create skeleton geom from definition for (Prim %s)", &v82, 0xCu);
              pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v58);
            }
          }

          realityio::WrappedRERef<RESkeletonDefinition *>::~WrappedRERef(&v59);
        }

        else
        {
          v40 = *(realityio::logObjects(NumElements) + 24);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v59, v45);
            v42 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v59);
            LODWORD(v82) = 136315138;
            *(&v82 + 4) = v42;
            _os_log_error_impl(&dword_247485000, v40, OS_LOG_TYPE_ERROR, "Skeleton at path (%s) does not have any bind transforms property.\n", &v82, 0xCu);
            pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&v59);
          }

          v33 = 0;
        }

        pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v83);
        if ((v86 & 7) != 0)
        {
          atomic_fetch_add_explicit((v86 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v85);
        if (*(&v84 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v84 + 1));
        }
      }

      else
      {
        v36 = *(realityio::logObjects(v17) + 24);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v83, v45);
          v41 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v83);
          LODWORD(v84) = 136315138;
          *(&v84 + 4) = v41;
          _os_log_error_impl(&dword_247485000, v36, OS_LOG_TYPE_ERROR, "Skeleton at path (%s) does not have any rest transforms property.\n", &v84, 0xCu);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v83);
        }

        v33 = 0;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v80);
      if ((v63 & 7) != 0)
      {
        atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v62);
      if (v61)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v61);
      }

      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(v64);
    }

    else
    {
      v33 = 0;
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef(&v67 + 8);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(&v66);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::~TfRefPtr(buf);
    if (v70)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
    }

    if (v71)
    {
      v72 = v71;
      operator delete(v71);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }

    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }

    v44 = v33;
    if (v33)
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v84, v45);
      operator new();
    }

    realityio::WrappedRERef<REGeomSkeleton *>::~WrappedRERef(&v44);
    MEMORY[0x24C1A53A0](v45);
    if ((v46[0] & 1) == 0 && v48 < 0)
    {
      operator delete(v47);
    }

    if ((v49[0] & 1) == 0 && SHIBYTE(v52) < 0)
    {
      operator delete(__p);
    }

    realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v53, v37, v38);
  }

  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v56);
  result = v55;
  if (v55)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v55);
  }

  return result;
}

void sub_24750458C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44, __int16 a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, uint64_t _178)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a42);

  realityio::WrappedRERef<RESkeletonDefinition *>::~WrappedRERef(&a44);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v68 - 160));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute((v68 - 144));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v68 - 192));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a46);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&a50);
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::~UsdSkelSkeletonQuery(&a55);
  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a65);
  }

  if (__p)
  {
    a67 = __p;
    operator delete(__p);
  }

  v70 = *(v68 - 240);
  if (v70)
  {
    *(v68 - 232) = v70;
    operator delete(v70);
  }

  v71 = *(v68 - 216);
  if (v71)
  {
    *(v68 - 208) = v71;
    operator delete(v71);
  }

  MEMORY[0x24C1A53A0](&a15);
  if ((a18 & 1) == 0 && a26 < 0)
  {
    operator delete(a21);
  }

  if ((a27 & 1) == 0 && a35 < 0)
  {
    operator delete(a30);
  }

  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(&a36, v72, v73);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a38);
  _Unwind_Resume(a1);
}

void realityio::SkeletonPoseDefinitionBuilder::clear(uint64_t **this, realityio::Inputs *a2)
{
  v3 = std::unique_ptr<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT>::reset[abi:ne200100](this + 35, 0);
  v5 = this[2];
  v4 = this[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = realityio::SkeletonPoseDefinitionBuilder::kOutputName(v3);
  realityio::Outputs::getRawValue<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT *>(v5, v6, v33);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if ((v33[0] & 1) == 0)
  {
    goto LABEL_43;
  }

  v9 = this[2];
  v8 = this[3];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = realityio::SkeletonPoseDefinitionBuilder::kOutputName(v7);
  std::mutex::lock(v9 + 1);
  if (v9 + 6 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>((v9 + 5), v10))
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>(v9 + 5, v10);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v9, v10);
  std::mutex::unlock(v9 + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v13 = this[2];
  v12 = this[3];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = realityio::SkeletonPoseDefinitionBuilder::kAnimationOutputName(v11);
  realityio::Outputs::getRawValue<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT *>(v13, v14, v30);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if ((v30[0] & 1) == 0)
  {
    goto LABEL_40;
  }

  v17 = this[2];
  v16 = this[3];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = realityio::SkeletonPoseDefinitionBuilder::kAnimationOutputName(v15);
  std::mutex::lock(v17 + 1);
  if (v17 + 6 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>((v17 + 5), v18))
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>(v17 + 5, v18);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v17, v18);
  std::mutex::unlock(v17 + 1);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v21 = this[2];
  v20 = this[3];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = realityio::SkeletonPoseDefinitionBuilder::kAnimationLibraryOutputName(v19);
  realityio::Outputs::getRawValue<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>(v21, v22, v27);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v27[0])
  {
    v25 = this[2];
    v24 = this[3];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = realityio::SkeletonPoseDefinitionBuilder::kAnimationLibraryOutputName(v23);
    std::mutex::lock(v25 + 1);
    if (v25 + 6 != std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>((v25 + 5), v26))
    {
      std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::__erase_unique<std::string>(v25 + 5, v26);
    }

    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(v25, v26);
    std::mutex::unlock(v25 + 1);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  if ((v27[0] & 1) == 0 && v29 < 0)
  {
    operator delete(__p);
  }

  if ((v30[0] & 1) == 0)
  {
LABEL_40:
    if (v32 < 0)
    {
      operator delete(v31);
    }
  }

  if ((v33[0] & 1) == 0)
  {
LABEL_43:
    if (v35 < 0)
    {
      operator delete(v34);
    }
  }
}

void sub_247504BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::mutex::unlock(v27 + 1);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if ((a9 & 1) == 0 && a17 < 0)
  {
    operator delete(__p);
  }

  if ((a18 & 1) == 0 && a26 < 0)
  {
    operator delete(a21);
  }

  if ((*(v28 - 80) & 1) == 0 && *(v28 - 33) < 0)
  {
    operator delete(*(v28 - 56));
  }

  _Unwind_Resume(a1);
}

void realityio::Outputs::getRawValue<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT *>(std::mutex *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
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

void sub_247504DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock(v15 + 1);
  _Unwind_Resume(a1);
}

void realityio::SkeletonPoseDefinitionBuilder::~SkeletonPoseDefinitionBuilder(uint64_t **this)
{
  *this = &unk_285947C38;
  std::unique_ptr<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT>::reset[abi:ne200100](this + 35, 0);
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

{
  *this = &unk_285947C38;
  std::unique_ptr<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT>::reset[abi:ne200100](this + 35, 0);
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

  JUMPOUT(0x24C1A91B0);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 29)
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

void std::vector<simd_float4x4>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + (a2 << 6);
    }
  }

  else
  {
    std::vector<simd_float4x4>::__append(result, a2 - v2);
  }
}

double std::transform[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfMatrix4d const*,std::__wrap_iter<simd_float4x4 *>,anonymous namespace::createGeomSkeletonFromUsdSkeleton(pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton const&)::$_2>(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2, _OWORD *a3)
{
  if (this != a2)
  {
    v14 = v3;
    v15 = v4;
    v7 = this;
    do
    {
      memset(v13, 0, sizeof(v13));
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(v13, v7, 0, 0.0);
      MEMORY[0x24C1A4BE0](v12, v13);
      result = *v12;
      v9 = v12[1];
      v10 = v12[2];
      v11 = v12[3];
      *a3 = v12[0];
      a3[1] = v9;
      a3[2] = v10;
      a3[3] = v11;
      v7 = (v7 + 128);
      a3 += 4;
    }

    while (v7 != a2);
  }

  return result;
}

void std::vector<simd_float4x4>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<simd_float4x4>>(a1, v9);
    }

    v10 = (v6 >> 6 << 6);
    bzero(v10, a2 << 6);
    v11 = &v10[64 * a2];
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<simd_float4x4>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *realityio::WrappedRERef<RESkeletonDefinition *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::UsdSkelSkeletonQuery::~UsdSkelSkeletonQuery(atomic_uint **this)
{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef((this + 4));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(this + 1);

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::~TfRefPtr(this);
}

{
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef((this + 4));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_AnimQueryImpl>::~TfRefPtr(this + 1);

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdSkel_SkelDefinition>::~TfRefPtr(this);
}

uint64_t *realityio::WrappedRERef<REGeomSkeleton *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t std::__function::__func<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDefinitionBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDefinitionBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<realityio::RelatedPrimInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285947D20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *realityio::RelatedPrimInputDescriptor::RelatedPrimInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5)
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

  *a1 = &unk_285947D70;
  v9 = *a4;
  a1[6] = *a4;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a1[6] &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void sub_247505DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::RelatedPrimInputDescriptor::~RelatedPrimInputDescriptor(realityio::RelatedPrimInputDescriptor *this)
{
  *this = &unk_285947D70;
  v1 = *(this + 6);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::InputDescriptor::~InputDescriptor(this);
}

{
  *this = &unk_285947D70;
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::RelatedPrimInputDescriptor::resolvedPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::UsdStage *this@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X0>, unint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v33, this, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v33))
  {
    v6 = _ZZNK9realityio26RelatedPrimInputDescriptor17resolvedPrimPathsERKN32pxrInternal__aapl__pxrReserved__8UsdStageERKNS1_7SdfPathERKNS_8internal15PrimToEntityMapERKNSt3__13mapIS5_NSC_3setIS5_NSC_4lessIS5_EENSC_9allocatorIS5_EEEESG_NSH_INSC_4pairIS6_SJ_EEEEEEENKUlRKT_RT0_RNS1_9TfHashSetIS5_NS5_4HashENSC_8equal_toIS5_EESI_EEE_clINS1_7UsdPrimEKNS1_7TfTokenEEEDaSS_SU_S10_(&v32, &v33, (a3 + 48), a4);
    if (v6)
    {
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    }

    else
    {
      UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(v6);
      v9 = *UsdPrimDefaultPredicate;
      v8 = *(UsdPrimDefaultPredicate + 8);
      v10 = *(UsdPrimDefaultPredicate + 16);
      if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v9 & 0x2000) != 0 || (v8 & 0x2000) == 0))
      {
        v9 |= 0x2000uLL;
        v8 &= ~0x2000uLL;
      }

      v18 = v9;
      v19 = v8;
      *&v20 = v10;
      pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(&v33, &v18, &v22);
      v18 = v22;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, &v23);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19 + 1, &v24);
      v20 = v25;
      v21 = v26;
      while (1)
      {
        v14 = v27;
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, &v28);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15 + 1, &v29);
        v16 = v30;
        v17 = v31;
        if (v18 == v14 && v19 == v15)
        {
          v11 = pxrInternal__aapl__pxrReserved__::operator==(&v20, &v16) ^ 1;
        }

        else
        {
          v11 = 1;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
        if ((v11 & 1) == 0)
        {
          break;
        }

        pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v14, &v18);
        v12 = _ZZNK9realityio26RelatedPrimInputDescriptor17resolvedPrimPathsERKN32pxrInternal__aapl__pxrReserved__8UsdStageERKNS1_7SdfPathERKNS_8internal15PrimToEntityMapERKNSt3__13mapIS5_NSC_3setIS5_NSC_4lessIS5_EENSC_9allocatorIS5_EEEESG_NSH_INSC_4pairIS6_SJ_EEEEEEENKUlRKT_RT0_RNS1_9TfHashSetIS5_NS5_4HashENSC_8equal_toIS5_EESI_EEE_clINS1_7UsdPrimEKNS1_7TfTokenEEEDaSS_SU_S10_(&v32, &v14, (a3 + 48), a4);
        if ((BYTE8(v16) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v16 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
        if (v15)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15);
        }

        if (v12)
        {
          break;
        }

        pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v18);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v23);
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    }
  }

  else
  {
    if ((v36 & 7) != 0)
    {
      atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
  result = v34;
  if (v34)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v34);
  }

  return result;
}

void sub_247506170(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v2 - 112));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t _ZZNK9realityio26RelatedPrimInputDescriptor17resolvedPrimPathsERKN32pxrInternal__aapl__pxrReserved__8UsdStageERKNS1_7SdfPathERKNS_8internal15PrimToEntityMapERKNSt3__13mapIS5_NSC_3setIS5_NSC_4lessIS5_EENSC_9allocatorIS5_EEEESG_NSH_INSC_4pairIS6_SJ_EEEEEEENKUlRKT_RT0_RNS1_9TfHashSetIS5_NS5_4HashENSC_8equal_toIS5_EESI_EEE_clINS1_7UsdPrimEKNS1_7TfTokenEEEDaSS_SU_S10_(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, unint64_t a4)
{
  v6 = *a3;
  v13 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  realityio::RelatedPrimInputDescriptor::getPossiblyInheritedRelationship(a2, &v13, &v14);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v14))
  {
    v10 = 0uLL;
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::UsdRelationship::GetTargets();
    *&v8 = &v10;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v10, a2, a3);
    v8 = 0uLL;
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::GetConnections();
    v18 = &v8;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v18);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    if (*(&v10 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v10 + 1));
    }
  }

  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15);
  }

  return 0;
}

void sub_24750640C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *(v17 - 40) = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v17 - 40));
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a13);
  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::RelatedPrimInputDescriptor::getPossiblyInheritedRelationship@<X0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, uint64_t *a3@<X8>)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  v7 = *(EmptyString + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(EmptyString + 8);
  }

  if (v7 >= 5)
  {
    if (v8 < 0)
    {
      EmptyString = *EmptyString;
    }

    v9 = strncmp(EmptyString, "skel:", 5uLL) == 0;
  }

  else
  {
    v9 = 0;
  }

  v18 = *a1;
  v10 = *(a1 + 1);
  v19 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v20, a1 + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v21, a1 + 5);
  v11 = *(a1 + 3);
  v22 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  while (1)
  {
    if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v18) || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(&v18) & 1) != 0)
    {
LABEL_26:
      *a3 = 4;
      a3[1] = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      a3[3] = 0;
      goto LABEL_28;
    }

    if (pxrInternal__aapl__pxrReserved__::UsdPrim::HasRelationship(&v18, a2))
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_26;
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v13, &v18);
    v18 = v13;
    if (v19)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
    }

    v19 = v14;
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v20, &v15);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v21, &v16);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v22 = v17;
    v17 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
    if (v14)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(a3, &v18, a2);
LABEL_28:
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v20);
  result = v19;
  if (v19)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v19);
  }

  return result;
}

void sub_2475066B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent@<X0>(uint64_t *__return_ptr a1@<X8>, pxrInternal__aapl__pxrReserved__::UsdPrim *this@<X0>)
{
  v8 = *(this + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v6, this + 4);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v7, this + 5);
  pxrInternal__aapl__pxrReserved__::Usd_MoveToParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(&v8, &v6);
  v5 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 6, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(a1, &v5, &v6);
  if (v5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v5);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
}

void sub_247506788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(a5);
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Usd_PrimData *pxrInternal__aapl__pxrReserved__::Usd_MoveToParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(pxrInternal__aapl__pxrReserved__::Usd_PrimData **a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  *a1 = pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetParent(*a1);
  result = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(v8, a2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, v8);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, v8 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v8);
    v5 = *a1;
    if (*a1)
    {
      if ((*(v5 + 57) & 0x10) != 0)
      {
        result = pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath((v5 + 16));
        if (result)
        {
          result = pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetPrimDataAtPathOrInPrototype(*a1, a2);
          *a1 = result;
          if (!result)
          {
            v8[0] = "usd/primData.h";
            v8[1] = "Usd_MoveToParent";
            v8[2] = 508;
            v8[3] = "void pxrInternal__aapl__pxrReserved__::Usd_MoveToParent(PrimDataPtr &, SdfPath &) [PrimDataPtr = const pxrInternal__aapl__pxrReserved__::Usd_PrimData *]";
            v9 = 0;
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a2);
            pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("No prim at <%s>", v7, Text);
            result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
            if (!result)
            {
              return result;
            }

            result = *a1;
          }

          if (*(result + 2) == *a2)
          {
            v8[0] = 0;
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2, v8);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 4, v8 + 1);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v8);
          }
        }
      }
    }
  }

  return result;
}

void std::__shared_ptr_emplace<realityio::ChildPrimInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285947DB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *realityio::ChildPrimInputDescriptor::ChildPrimInputDescriptor(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5)
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

  *a1 = &unk_285947E00;
  v9 = *a4;
  a1[6] = *a4;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    a1[6] &= 0xFFFFFFFFFFFFFFF8;
  }

  return a1;
}

void sub_247506AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::ChildPrimInputDescriptor::~ChildPrimInputDescriptor(realityio::ChildPrimInputDescriptor *this)
{
  *this = &unk_285947E00;
  v1 = *(this + 6);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::InputDescriptor::~InputDescriptor(this);
}

{
  *this = &unk_285947E00;
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::InputDescriptor::~InputDescriptor(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::ChildPrimInputDescriptor::resolvedPrimPaths@<X0>(pxrInternal__aapl__pxrReserved__::UsdStage *this@<X1>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t a3@<X0>, unint64_t a4@<X8>)
{
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v37, this, a2);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v37);
  if (IsValid)
  {
    UsdPrimAllPrimsPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimAllPrimsPredicate(IsValid);
    v9 = *UsdPrimAllPrimsPredicate;
    v8 = *(UsdPrimAllPrimsPredicate + 8);
    v10 = *(UsdPrimAllPrimsPredicate + 16);
    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v9 & 0x2000) != 0 || (v8 & 0x2000) == 0))
    {
      v9 |= 0x2000uLL;
      v8 &= ~0x2000uLL;
    }

    v23 = v9;
    v24 = v8;
    *&v25 = v10;
    pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(&v37, &v23, &v27);
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
      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v15, &v23);
      v12 = v16;
      if (!v16 || (*(v16 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v16, v11);
      }

      if ((*(a3 + 48) ^ **(v12 + 3)) <= 7)
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

      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v23);
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

void sub_247506E24(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v2 - 112));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<realityio::RelatedPrimInputDescriptor>::__shared_ptr_emplace[abi:ne200100]<std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfToken const&,realityio::InputDescriptor::Optionality,std::allocator<realityio::RelatedPrimInputDescriptor>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285947D20;
  std::allocator<realityio::RelatedPrimInputDescriptor>::construct[abi:ne200100]<realityio::RelatedPrimInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfToken const&,realityio::InputDescriptor::Optionality>(&v7, a1 + 3, a2, a3, a4, a5);
  return a1;
}

void std::allocator<realityio::RelatedPrimInputDescriptor>::construct[abi:ne200100]<realityio::RelatedPrimInputDescriptor,std::string const&,pxrInternal__aapl__pxrReserved__::TfToken &,pxrInternal__aapl__pxrReserved__::TfToken const&,realityio::InputDescriptor::Optionality>(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, int *a6)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *a3, *(a3 + 8));
  }

  else
  {
    v13 = *a3;
  }

  v10 = *a5;
  v12 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v11;
    }
  }

  realityio::RelatedPrimInputDescriptor::RelatedPrimInputDescriptor(a2, &v13, a4, &v12, *a6);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_247507054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<realityio::UnionInputDescriptor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285947E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::UnionInputDescriptor::~UnionInputDescriptor(realityio::UnionInputDescriptor *this)
{
  *this = &unk_285947E90;
  v2 = (this + 48);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  realityio::InputDescriptor::~InputDescriptor(this);
}

{
  *this = &unk_285947E90;
  v2 = (this + 48);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  realityio::InputDescriptor::~InputDescriptor(this);
  MEMORY[0x24C1A91B0]();
}

uint64_t realityio::UnionInputDescriptor::resolvedPrimPaths@<X0>(uint64_t result@<X0>, unint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v3 = *(result + 48);
  for (i = *(result + 56); v3 != i; v3 += 16)
  {
    (*(**v3 + 16))(v6);
    for (j = v7; j; j = *j)
    {
      std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(a2, j + 4);
    }

    result = std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v6);
  }

  return result;
}

void sub_24750759C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDefinitionBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDefinitionBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **std::unique_ptr<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((v2 + 2));
    realityio::WrappedRERef<REGeomSkeleton *>::~WrappedRERef(v2);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void realityio::Inputs::_getValue<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT *>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v47 = 0;
  v48 = 0;
  v8 = a2[3];
  if (v8)
  {
    v48 = std::__shared_weak_count::lock(v8);
    if (v48)
    {
      v47 = a2[2];
    }
  }

  MEMORY[0x24C1A5E00](&v49, a3);
  v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(a2[1], &v47);
  if (v9 == v10)
  {
    std::operator+<char>();
    v11 = std::string::append(&v44, ") at prim path (");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v12;
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

    v17 = std::string::append(&v45, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v46, ")");
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
    v22 = std::string::append(&v44, ") at prim path (");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v23;
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

    v28 = std::string::append(&v45, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v46, ") because more than one connected builder produced the same output type");
LABEL_22:
    v30 = *&v19->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[0] = v19->__r_.__value_.__r.__words[2];
    *__p = v30;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v52, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a1 + 8) = *v52;
    v31 = *&v52[16];
    v53[0] = *&v52[24];
    *(v53 + 7) = *&v52[31];
    v32 = v52[39];
    memset(&v52[16], 0, 24);
    *a1 = 0;
    *(a1 + 39) = *(v53 + 7);
    v33 = v53[0];
    *(a1 + 24) = v31;
    *(a1 + 32) = v33;
    *(a1 + 47) = v32;
    if (v51.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      v34 = v44.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v34);
      goto LABEL_49;
    }

    goto LABEL_49;
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

  realityio::Outputs::getRawValue<realityio::SkeletalAnimationAssetBuilder::SkeletalAnimationAssetDataT *>(v37, EmptyString, v52);
  v40 = v52[0];
  if (v52[0])
  {
    *&v39 = *&v52[8];
  }

  else
  {
    *__p = *&v52[8];
    if ((v52[47] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v51, *&v52[24], *&v52[32]);
      v41 = v52[0] | (v52[47] >= 0);
    }

    else
    {
      v51 = *&v52[24];
      v41 = 1;
    }

    v39 = *__p;
    size = v51.__r_.__value_.__l.__size_;
    v37 = v51.__r_.__value_.__r.__words[0];
    LODWORD(v46.__r_.__value_.__l.__data_) = v51.__r_.__value_.__r.__words[2];
    *(v46.__r_.__value_.__r.__words + 3) = *(&v51.__r_.__value_.__r.__words[2] + 3);
    v4 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((v41 & 1) == 0)
    {
      v42 = *__p;
      operator delete(*&v52[24]);
      v39 = v42;
    }
  }

  if (v36)
  {
    v43 = v39;
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    v39 = v43;
  }

  if (v40)
  {
    *a1 = 1;
    *(a1 + 8) = v39;
  }

  else
  {
    *v52 = v39;
    if (v4 < 0)
    {
      std::string::__init_copy_ctor_external(&v52[16], v37, size);
      *a1 = 0;
      *(a1 + 8) = *v52;
      *(a1 + 24) = *&v52[16];
      *(a1 + 40) = *&v52[32];
      v34 = v37;
      goto LABEL_30;
    }

    *&v52[16] = v37;
    *&v52[24] = size;
    *&v52[32] = v46.__r_.__value_.__l.__data_;
    *&v52[35] = *(v46.__r_.__value_.__r.__words + 3);
    v52[39] = v4;
    *a1 = 0;
    *(a1 + 8) = *v52;
    *(a1 + 24) = *&v52[16];
    *(a1 + 40) = *&v52[32];
  }

LABEL_49:
  if ((v49 & 7) != 0)
  {
    atomic_fetch_add_explicit((v49 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }
}

void sub_247507B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33)
{
  operator delete(v33);
  if ((a33 & 7) != 0)
  {
    atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(a1);
}

void realityio::Inputs::_getValue<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = 0;
  v46 = 0;
  v8 = a1[3];
  if (v8)
  {
    v46 = std::__shared_weak_count::lock(v8);
    if (v46)
    {
      v45 = a1[2];
    }
  }

  MEMORY[0x24C1A5E00](&v47, a2);
  v9 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(a1[1], &v45);
  if (v9 == v10)
  {
    std::operator+<char>();
    v11 = std::string::append(&v42, ") at prim path (");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 4));
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

    v17 = std::string::append(&v43, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v44, ")");
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
    v22 = std::string::append(&v42, ") at prim path (");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a1 + 4));
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

    v28 = std::string::append(&v43, v26, v27);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v44, ") because more than one connected builder produced the same output type");
LABEL_22:
    v30 = *&v19->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[0] = v19->__r_.__value_.__r.__words[2];
    *__p = v30;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v50, 204, &realityio::FoundationErrorCategory(void)::instance, __p);
    *(a3 + 8) = *v50;
    v31 = *&v50[24];
    *(a3 + 24) = *&v50[16];
    *(a3 + 32) = v31;
    *(a3 + 39) = *&v50[31];
    LOBYTE(v31) = v50[39];
    memset(&v50[16], 0, 24);
    *a3 = 0;
    *(a3 + 47) = v31;
    if (v49.__r_.__value_.__s.__data_[7] < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      v32 = v42.__r_.__value_.__r.__words[0];
LABEL_30:
      operator delete(v32);
      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v33 = v9[5];
  v35 = *(v33 + 16);
  v34 = *(v33 + 24);
  if (v34)
  {
    atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((v9[7] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v9[7] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  realityio::Outputs::getRawValue<std::map<std::string,realityio::WrappedRERef<REAsset *>> *>(v35, EmptyString, v50);
  v38 = v50[0];
  if (v50[0])
  {
    *&v37 = *&v50[8];
  }

  else
  {
    *__p = *&v50[8];
    if ((v50[47] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v49, *&v50[24], *&v50[32]);
      v39 = v50[0] | (v50[47] >= 0);
    }

    else
    {
      v49 = *&v50[24];
      v39 = 1;
    }

    v37 = *__p;
    size = v49.__r_.__value_.__l.__size_;
    v35 = v49.__r_.__value_.__r.__words[0];
    LODWORD(v44.__r_.__value_.__l.__data_) = v49.__r_.__value_.__r.__words[2];
    *(v44.__r_.__value_.__r.__words + 3) = *(&v49.__r_.__value_.__r.__words[2] + 3);
    v4 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    if ((v39 & 1) == 0)
    {
      v40 = *__p;
      operator delete(*&v50[24]);
      v37 = v40;
    }
  }

  if (v34)
  {
    v41 = v37;
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    v37 = v41;
  }

  if (v38)
  {
    *a3 = 1;
    *(a3 + 8) = v37;
  }

  else
  {
    *v50 = v37;
    if (v4 < 0)
    {
      std::string::__init_copy_ctor_external(&v50[16], v35, size);
      *a3 = 0;
      *(a3 + 8) = *v50;
      *(a3 + 24) = *&v50[16];
      *(a3 + 40) = *&v50[32];
      v32 = v35;
      goto LABEL_30;
    }

    *&v50[16] = v35;
    *&v50[24] = size;
    *&v50[32] = v44.__r_.__value_.__l.__data_;
    *&v50[35] = *(v44.__r_.__value_.__r.__words + 3);
    v50[39] = v4;
    *a3 = 0;
    *(a3 + 8) = *v50;
    *(a3 + 24) = *&v50[16];
    *(a3 + 40) = *&v50[32];
  }

LABEL_49:
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }
}

void sub_247507FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33)
{
  operator delete(v33);
  if ((a33 & 7) != 0)
  {
    atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<realityio::SkeletonPoseDefinitionBuilder::SkeletonPoseDataT *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285947F60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void realityio::mtlx::anonymous namespace::BuildMtlxOcclusionAssetCommon(void (***a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = a2;
  *a3 = 0;
  a3[1] = 0;
  (**a1)(a1);
  ServiceLocator = REEngineGetServiceLocator();
  v4 = MEMORY[0x24C1A4230](ServiceLocator);
  v6 = 0;
  operator new();
}

void sub_24750824C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v7 + 1);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v7);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<realityio::mtlx::anonymous namespace::BuildMtlxOcclusionAssetCommon(realityio::MtlxSupportContext &,realityio::mtlx::NeoShadeMaterial const&,char const*)::$_0,std::allocator<realityio::mtlx::anonymous namespace::BuildMtlxOcclusionAssetCommon(realityio::MtlxSupportContext &,realityio::mtlx::NeoShadeMaterial const&,char const*)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285947FE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::mtlx::anonymous namespace::BuildMtlxOcclusionAssetCommon(realityio::MtlxSupportContext &,realityio::mtlx::NeoShadeMaterial const&,char const*)::$_0,std::allocator<realityio::mtlx::anonymous namespace::BuildMtlxOcclusionAssetCommon(realityio::MtlxSupportContext &,realityio::mtlx::NeoShadeMaterial const&,char const*)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::PhysicsSceneGroundPlaneComponentBuilder::PhysicsSceneGroundPlaneComponentBuilder(realityio::PhysicsSceneGroundPlaneComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  __src[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__src, "PhysicsSceneGroundPlaneComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kPhysicsSceneGroundPlaneComponentBuilderIdentifier);
  realityio::generatePhysicsSceneGroundPlaneDirtyStageSubscription(&v4);
  v7[0] = &unk_2859480D8;
  v7[3] = v7;
  v6[0] = &unk_285948158;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, __src, __p, &v4, v7, v6);
}

void sub_247508538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a18);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](&a22);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::PhysicsSceneGroundPlaneComponentBuilder::run(realityio::PhysicsSceneGroundPlaneComponentBuilder *this, realityio::Inputs *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v16, v4, v3);
  isSceneGroundPlane = realityio::isSceneGroundPlane(&v16, v5);
  if (isSceneGroundPlane)
  {
    v7 = *(realityio::logObjects(isSceneGroundPlane) + 24);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_247485000, v7, OS_LOG_TYPE_INFO, "Updating entity's scene ground plane.", buf, 2u);
    }

    v9 = realityio::EntityBuilder::kInputName(v8);
    realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v9, buf);
    if (buf[0])
    {
      v10 = v15;
      v13 = v15;
      if (v15)
      {
        RERetain();
        operator new();
      }
    }

    else
    {
      v13 = 0;
    }

    v11 = *(realityio::logObjects(v10) + 24);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_247485000, v11, OS_LOG_TYPE_DEFAULT, "Stopping operation to set the component because entity no longer exists", v20, 2u);
    }

    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v13);
    realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(buf);
  }

  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  result = v17;
  if (v17)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v17);
  }

  return result;
}

void sub_2475087BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v3 - 80);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va1);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va2);
  _Unwind_Resume(a1);
}

uint64_t realityio::PhysicsSceneGroundPlaneComponentBuilder::clear(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 48);
  v4 = a2;
  v5[0] = &unk_285948358;
  v5[1] = &v4;
  v5[2] = a1;
  v5[3] = v5;
  (*(*v2 + 16))(v2, v5);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_2475088D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::PhysicsSceneGroundPlaneComponentBuilder::~PhysicsSceneGroundPlaneComponentBuilder(realityio::PhysicsSceneGroundPlaneComponentBuilder *this)
{
  realityio::PhysicsSceneGroundPlaneComponentBuilder::~PhysicsSceneGroundPlaneComponentBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_285948060;
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  *this = &unk_285943338;
  std::__function::__value_func<std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 248);
  std::__function::__value_func<std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](this + 216);
  v3 = *(this + 26);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 24);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 23);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::Builder::~Builder(this);
}

void sub_247508C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::PhysicsSceneGroundPlaneComponentBuilder::PhysicsSceneGroundPlaneComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::PhysicsSceneGroundPlaneComponentBuilder::PhysicsSceneGroundPlaneComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::PhysicsSceneGroundPlaneComponentBuilder::PhysicsSceneGroundPlaneComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::PhysicsSceneGroundPlaneComponentBuilder::PhysicsSceneGroundPlaneComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::PhysicsSceneGroundPlaneComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsSceneGroundPlaneComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2859481D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::PhysicsSceneGroundPlaneComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsSceneGroundPlaneComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 24);
  REGroundPlaneComponentGetComponentType();
  v6[0] = &unk_285948248;
  v6[1] = v1;
  v6[3] = v6;
  v2 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v6, v2);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v6);
  REPhysicsOriginComponentGetComponentType();
  v5[0] = &unk_2859482C8;
  v5[3] = v5;
  v3 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v5, v3);
  RENetworkMarkComponentDirty();
  return std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v5);
}

uint64_t std::__function::__func<realityio::PhysicsSceneGroundPlaneComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsSceneGroundPlaneComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio39PhysicsSceneGroundPlaneComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285948248;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio39PhysicsSceneGroundPlaneComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  realityio::Builder::addComponent(*(a1 + 8), *a2);

  return MEMORY[0x282154340](v2, 1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio39PhysicsSceneGroundPlaneComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio39PhysicsSceneGroundPlaneComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio39PhysicsSceneGroundPlaneComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio39PhysicsSceneGroundPlaneComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::PhysicsSceneGroundPlaneComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsSceneGroundPlaneComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285948358;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::PhysicsSceneGroundPlaneComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsSceneGroundPlaneComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = **(a1 + 8);
  v3 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v2, v3, v8);
  if (v8[0])
  {
    v7 = v9;
    if (v9)
    {
      RERetain();
      v4 = *(v1 + 280);
      v5 = *(v1 + 288);
      while (v4 != v5)
      {
        REEntityRemoveComponentByClass();
        v4 += 8;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v7);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v8);
}

void sub_24750937C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::PhysicsSceneGroundPlaneComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsSceneGroundPlaneComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void TgBase::emitTargets(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath ***a2)
{
  std::mutex::lock((a1 + 24));
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    v6 = v4 + 4;
    TgBase::_emitTarget(a1, v4, v4 + 1, (v4 + 4));
    v4 = v6 + 1;
  }

  std::mutex::unlock((a1 + 24));
}

void TgBase::_emitTarget(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath **a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  Exec::ensureTarget(*(a1 + 8), a2, a3);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a4);
  MEMORY[0x24C1A5E00](&v14, String);
  (**v7)(&v15, v7, v8, a2, &v14);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(a4);
  MEMORY[0x24C1A5E00](&v14, v10);
  v11 = *(a1 + 8);
  v12 = v16;
  v13[0] = v15;
  v13[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Exec::setComputeAction(v11, a2, v13, &v14);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_24750969C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void TgBase::emitTarget(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath **a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  std::mutex::lock((a1 + 24));
  TgBase::_emitTarget(a1, a2, a3, a4);

  std::mutex::unlock((a1 + 24));
}

void TgBase::emitGroup(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 24));
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a2);
  if (*(Name + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, *Name, *(Name + 8));
  }

  else
  {
    v5 = *Name;
    v12.__r_.__value_.__r.__words[2] = *(Name + 16);
    *&v12.__r_.__value_.__l.__data_ = v5;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v9, a2);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  v7 = __p;
  std::string::basic_string[abi:ne200100](__p, size + 7);
  if (v14 < 0)
  {
    v7 = __p[0];
  }

  if (size)
  {
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v12;
    }

    else
    {
      v8 = v12.__r_.__value_.__r.__words[0];
    }

    memmove(v7, v8, size);
  }

  strcpy(v7 + size, "__group");
  MEMORY[0x24C1A5E00](&v10, __p);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v11, &v9, &v10);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  __p[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>::_PlaceCopy(__p);
}

void sub_247509ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void Exec::setComputeAction(std::mutex *a1, void *a2, uint64_t *a3, void *a4)
{
  std::mutex::lock(a1);
  v8 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&a1[1], a2);
  opaque = a1[1].__m_.__opaque;
  v10 = &v8[1].__m_.__opaque[24];
  if (a1[1].__m_.__opaque == v8)
  {
    v10 = &realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID;
  }

  if (*v10 != realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID)
  {
    v11 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&a1[1], a2);
    if (opaque == v11)
    {
      realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::null_data();
      v12 = &realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::null_data(void)::null_data;
    }

    else
    {
      v12 = (v11 + 48);
    }

    v14 = *a3;
    v13 = a3[1];
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v12 + 3);
    *(v12 + 2) = v14;
    *(v12 + 3) = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    v16 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&a1[1], a2);
    if (opaque == v16)
    {
      realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::null_data();
      v17 = &realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::null_data(void)::null_data;
    }

    else
    {
      v17 = (v16 + 48);
    }

    pxrInternal__aapl__pxrReserved__::TfToken::operator=(v17 + 1, a4);
  }

  std::mutex::unlock(a1);
}

void TgBase::emitArray(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 24));
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a2);
  if (*(Name + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *Name, *(Name + 8));
  }

  else
  {
    v6 = *Name;
    v13.__r_.__value_.__r.__words[2] = *(Name + 16);
    *&v13.__r_.__value_.__l.__data_ = v6;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v10, a2);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  v8 = __p;
  std::string::basic_string[abi:ne200100](__p, size + 12);
  if (v15 < 0)
  {
    v8 = __p[0];
  }

  if (size)
  {
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v13;
    }

    else
    {
      v9 = v13.__r_.__value_.__r.__words[0];
    }

    memmove(v8, v9, size);
  }

  strcpy(v8 + size, "__arrayOrder");
  MEMORY[0x24C1A5E00](&v11, __p);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v12, &v10, &v11);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  __p[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::_PlaceCopy(__p, a3);
}

void sub_24750A050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void TgBase::emitConstant(TgBase *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 24));
  Exec::getValue(v6, *(this + 1), a2);
  Exec::setValue(*(this + 1), a2, a3);
  if ((pxrInternal__aapl__pxrReserved__::VtValue::operator==(v6, a3) & 1) == 0)
  {
    Exec::setDirty(*(this + 1), a2, 1);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v6);
  std::mutex::unlock((this + 24));
}

pxrInternal__aapl__pxrReserved__::VtValue *Exec::getValue@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *__return_ptr a1@<X8>, Exec *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a3@<X1>)
{
  result = pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::find(this + 25, a3);
  if (result)
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a1, (result + 8));
  }

  else
  {
    *(a1 + 1) = 0;
  }

  return result;
}

void Exec::setDirty(std::mutex *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  std::mutex::lock(this);
  v6 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&this[1], a2);
  if (this[1].__m_.__opaque == v6)
  {
    v7 = &realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID;
  }

  else
  {
    v7 = &v6[1].__m_.__opaque[24];
  }

  if (*v7 != realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::nullID(void)::nullID)
  {
    if (a3)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10, a2);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v10 + 1, a2 + 1);
      realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_setAllDirty(&this[1], &v10, 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      v8 = &v10;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, a2);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9 + 1, a2 + 1);
      realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_setAllDirty(&this[1], &v9, 0);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      v8 = &v9;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v8);
  }

  std::mutex::unlock(this);
}

void sub_24750A390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a9);
  std::mutex::unlock(v9);
  _Unwind_Resume(a1);
}

void realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::null_data()
{
  {
    if (v0)
    {
      Exec::TargetVertex::TargetVertex(v0);
    }
  }
}

void Exec::TargetVertex::TargetVertex(Exec::TargetVertex *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  qword_27EE52D88 = 0;
  qword_27EE52D90 = 0;
  qword_27EE52D98 = 0;
}

void *pxrInternal__aapl__pxrReserved__::SdfPathTable<pxrInternal__aapl__pxrReserved__::VtValue>::find(void *a1, unsigned int *a2)
{
  if (!a1[3])
  {
    return 0;
  }

  for (result = *(*a1 + 8 * (bswap64(0x9E3779B97F4A7C55 * (a2[1] + ((a2[1] + *a2 + (a2[1] + *a2) * (a2[1] + *a2)) >> 1))) & a1[4])); result; result = result[3])
  {
    if (*result == *a2)
    {
      break;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 == 0) == (v3 == 0);
  }

  if (v2 == v3)
  {
    return (*((v2 & 0xFFFFFFFFFFFFFFF8) + 64))();
  }

  return MEMORY[0x282207D88]();
}

uint64_t realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_setAllDirty(uint64_t a1, void *a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, a2);
  if (a1 + 8 == v5)
  {
    return 0;
  }

  v9 = &unk_2859488D8;
  v10 = a3;
  v11 = &v9;
  v6 = 48;
  if (a3)
  {
    v6 = 72;
  }

  v7 = realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_traverse(a1, &v9, *(v5 + 96), (a1 + v6), 1);
  std::__function::__value_func<BOOL ()(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)>::~__value_func[abi:ne200100](&v9);
  return v7;
}

void sub_24750A5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_traverse(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v30[1] = *MEMORY[0x277D85DE8];
  memset(__p, 0, sizeof(__p));
  std::vector<BOOL>::resize(__p, *(a1 + 96), 0);
  v30[0] = a3;
  std::deque<unsigned long>::deque(&v25, v30, 1);
  v10 = v28;
  if (v28)
  {
    v11 = 0;
    while (1)
    {
      if (a5)
      {
        v12 = v10 - 1;
        v13 = (*(v26 + (((v27 + v12) >> 6) & 0x3FFFFFFFFFFFFF8)))[(v27 + v12) & 0x1FF];
        v28 = v12;
        std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](&v25, 1);
      }

      else
      {
        v13 = (*(v26 + ((v27 >> 6) & 0x3FFFFFFFFFFFFF8)))[v27 & 0x1FF];
        ++v27;
        v28 = v10 - 1;
        if (v27 >= 0x400)
        {
          operator delete(*v26++);
          v27 -= 512;
        }
      }

      v14 = *(__p[0] + (v13 >> 6));
      if (((1 << v13) & v14) == 0)
      {
        *(__p[0] + (v13 >> 6)) = v14 | (1 << v13);
        v15 = realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::node(a1, v13);
        v16 = *(a2 + 24);
        if (!v16)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        ++v11;
        if (!(*(*v16 + 48))(v16, v15))
        {
          goto LABEL_22;
        }

        v17 = (*a4 + 24 * v13);
        v20 = *v17;
        v18 = v17 + 1;
        v19 = v20;
        if (v20 != v18)
        {
          do
          {
            if (((*(__p[0] + ((v19[4] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19[4]) & 1) == 0)
            {
              std::deque<unsigned long>::push_back(&v25, v19 + 4);
            }

            v21 = v19[1];
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
                v22 = v19[2];
                v23 = *v22 == v19;
                v19 = v22;
              }

              while (!v23);
            }

            v19 = v22;
          }

          while (v22 != v18);
        }
      }

      v10 = v28;
      if (!v28)
      {
        goto LABEL_22;
      }
    }
  }

  v11 = 0;
LABEL_22:
  std::deque<unsigned long>::~deque[abi:ne200100](&v25);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_24750A848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::resize(uint64_t *result, unint64_t a2, int a3)
{
  v4 = result[1];
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    result[1] = a2;
    return;
  }

  v7 = result[2];
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *result;
    v13 = result[1];
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(&v18, v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *result;
    *result = v20;
    v20 = v16;
    v17 = *(result + 1);
    *(result + 1) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = (*result + 8 * (v4 >> 6));
  v15 = result[1] & 0x3F;
  result[1] = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_24750A9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::node(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::null_storage();
  }

  v3 = a1 + 32;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 != a1 + 32 && *(v3 + 32) <= a2)
  {
    return *(v3 + 40);
  }

  else
  {
    return realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::null_storage();
  }
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }
}

void sub_24750AAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, v2);
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (v6)
  {
    v8 = v7 - 1;
    if (((v7 - 1) ^ (v6 - 1)) < 0x40)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = v7 - 1;
  }

  v9 = v8 >> 6;
  if (v7 >= 0x41)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *(*a1 + 8 * v10) = 0;
LABEL_9:
  v22 = v4;
  v23 = v5;
  v11 = *(a2 + 2);
  v12 = *a3;
  v13 = *(a3 + 2);
  v14 = *a1 + 8 * (v6 >> 6);
  v20 = *a2;
  v21 = v11;
  v18 = v12;
  v19 = v13;
  v16 = v14;
  v17 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v20, &v18, &v16, v15);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t **__return_ptr a1@<X8>, unint64_t *__src@<X0>, unsigned int a3@<W1>, uint64_t a4@<X2>, unsigned int a5@<W3>, uint64_t a6@<X4>)
{
  v8 = a5 - a3 + 8 * (a4 - __src);
  if (v8 <= 0)
  {
    v16 = *a6;
  }

  else
  {
    v9 = __src;
    __src = *a6;
    if (a3)
    {
      if (v8 >= (64 - a3))
      {
        v10 = 64 - a3;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3);
      v12 = v10 + *(a6 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a6 = __src;
      *(a6 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a6;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a6 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a6 + 8) = v15;
    }
  }

  *a1 = v16;
  *(a1 + 2) = *(a6 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

unint64_t *std::deque<unsigned long>::deque(unint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  std::deque<unsigned long>::__append_with_size[abi:ne200100]<unsigned long const*>(a1, a2, (8 * a3) >> 3);
  return a1;
}

void *std::deque<unsigned long>::__append_with_size[abi:ne200100]<unsigned long const*>(unint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 6) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  if (a3 > v10)
  {
    std::deque<unsigned long>::__add_back_capacity(a1, a3 - v10);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v11 = (v6 + 8 * (v9 >> 9));
  if (v7 == v6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = *v11 + 8 * (v9 & 0x1FF);
    v13 = v12;
  }

  v20[0] = v11;
  v20[1] = v13;
  result = std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](v20, a3);
  while (v12 != v15)
  {
    v16 = (v11 == result ? v15 : *v11 + 4096);
    if (v12 == v16)
    {
      v16 = v12;
    }

    else
    {
      v17 = v12;
      do
      {
        v18 = *a2++;
        *v17++ = v18;
      }

      while (v17 != v16);
    }

    a1[5] += (v16 - v12) >> 3;
    if (v11 == result)
    {
      break;
    }

    v19 = v11[1];
    ++v11;
    v12 = v19;
  }

  return result;
}

void std::deque<unsigned long>::__add_back_capacity(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] = v6 - (v7 << 9); v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, v16);
    }
  }
}

void sub_24750B3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__deque_iterator<unsigned long,unsigned long *,unsigned long &,unsigned long **,long,512l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
    }

    else
    {
      result += v4 >> 9;
    }
  }

  return result;
}

uint64_t std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
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

void *realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::null_storage()
{
  {
    realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage::NodeStorage(&realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::null_storage(void)const::null_storage);
  }

  return &realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::null_storage(void)const::null_storage;
}

uint64_t realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage::NodeStorage(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t std::__function::__func<realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_setAllDirty(pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL)::{lambda(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)#1},std::allocator<realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_setAllDirty(pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL)::{lambda(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)#1}>,BOOL ()(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2859488D8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_setAllDirty(pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL)::{lambda(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)#1},std::allocator<realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::_setAllDirty(pxrInternal__aapl__pxrReserved__::SdfPath const&,BOOL)::{lambda(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)#1}>,BOOL ()(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(realityio::Graph<Exec::TargetVertex,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<anonymous namespace::GroupAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859483E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void anonymous namespace::GroupAction::operator()(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, std::type_info ****a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a5@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a5, a1);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a2);
  if (*(Name + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *Name, *(Name + 8));
  }

  else
  {
    v9 = *Name;
    v36.__r_.__value_.__r.__words[2] = *(Name + 16);
    *&v36.__r_.__value_.__l.__data_ = v9;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v43, a2);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, size + 7);
  if (v34 < 0)
  {
    p_p = __p;
  }

  if (size)
  {
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v36;
    }

    else
    {
      v12 = v36.__r_.__value_.__r.__words[0];
    }

    memmove(p_p, v12, size);
  }

  strcpy(p_p + size, "__group");
  MEMORY[0x24C1A5E00](&v41, &__p);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v35, &v43, &v41);
  if ((v41 & 7) != 0)
  {
    atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v43);
  v13 = *a4;
  v14 = *(a4 + 8) - *a4;
  if (v14)
  {
    v15 = v14 >> 4;
    v16 = *a3;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    while (1)
    {
      v17 = *v16++;
      if (v17 == v35)
      {
        break;
      }

      v13 = (v13 + 16);
      if (!--v15)
      {
        goto LABEL_23;
      }
    }

    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v43, v13);
    v18 = v44;
    if (v44)
    {
      if (!strcmp((*(*(v44 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__13mapIN32pxrInternal__aapl__pxrReserved__7TfTokenENS1_7SdfPathENS_4lessIS2_EENS_9allocatorINS_4pairIKS2_S3_EEEEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        goto LABEL_32;
      }

      {
        v18 = v44;
LABEL_32:
        if ((v18 & 4) != 0)
        {
          v19 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(&v43);
        }

        else
        {
          v19 = v43;
        }

        v33 = 0;
        v34 = 0;
        __p = &v33;
        v22 = *v19;
        v20 = v19 + 1;
        v21 = v22;
        if (v22 != v20)
        {
          do
          {
            std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100](&v41, v21 + 4);
            if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(&v42))
            {
              v40 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPath>(void)::ti + 1;
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v39, &v42);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v39 + 1, &v42 + 1);
              v38 = &v41;
              v23 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(&__p, &v41, &std::piecewise_construct, &v38, &v37);
            }

            else
            {
              v24 = *a4;
              v25 = *(a4 + 8) - *a4;
              if (v25)
              {
                v26 = v25 >> 4;
                v27 = *a3;
                if (v26 <= 1)
                {
                  v26 = 1;
                }

                while (1)
                {
                  v28 = *v27++;
                  if (v28 == v42)
                  {
                    break;
                  }

                  v24 = (v24 + 16);
                  if (!--v26)
                  {
                    goto LABEL_42;
                  }
                }

                pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v39, v24);
              }

              else
              {
LABEL_42:
                v40 = 0;
              }

              v38 = &v41;
              v23 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(&__p, &v41, &std::piecewise_construct, &v38, &v37);
            }

            pxrInternal__aapl__pxrReserved__::VtValue::operator=(v23 + 5, &v39);
            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v39);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42);
            if ((v41 & 7) != 0)
            {
              atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v29 = v21[1];
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = v21[2];
                v31 = *v30 == v21;
                v21 = v30;
              }

              while (!v31);
            }

            v21 = v30;
          }

          while (v30 != v20);
        }

        v42 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>::_PlaceCopy(&v41);
      }
    }
  }

  else
  {
LABEL_23:
    v44 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v43);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }
}

void sub_24750BBF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a28);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v28);
  _Unwind_Resume(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::SdfPath>::pair[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 8), a2 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 12), a2 + 3);
  return a1;
}

_DWORD *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPath>>::_CopyInit(_DWORD *a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a2, a1);

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a2 + 1, a1 + 1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPath>>::_Destroy(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPath>>::_Move(_DWORD *a1, _DWORD *a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a2, a1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a2 + 1, a1 + 1);

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPath>>::_Destroy(a1);
}

_DWORD *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::VtValue::_LocalTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPath>>::_GetProxiedAsVtValue@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPath>(void)::ti + 1;
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a2, a1) + 1;

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v3, a1 + 1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((a2 + 5));
    v3 = a2[4];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(void *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 1));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 1));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::_Hash(void **a1)
{
  v2 = *a1 + 1;
  v1 = **a1;
  if (v1 == v2)
  {
    v11 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v1[1];
      v6 = v1;
      if (v5)
      {
        do
        {
          v7 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v6[2];
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (!v8);
      }

      v9 = v1[4] & 0xFFFFFFFFFFFFFFF8;
      if (v3)
      {
        v9 += (v9 + v4 + (v9 + v4) * (v9 + v4)) >> 1;
      }

      Hash = pxrInternal__aapl__pxrReserved__::VtValue::GetHash((v1 + 5));
      v4 = Hash + ((v9 + Hash + (v9 + Hash) * (v9 + Hash)) >> 1);
      v3 = 1;
      v1 = v7;
    }

    while (v7 != v2);
    v11 = 0x9E3779B97F4A7C55 * v4;
  }

  return bswap64(v11);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::_MakeMutable(uint64_t result)
{
  v1 = atomic_load((*result + 24));
  if (v1 != 1)
  {
    operator new();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::_DecrementIfValid(uint64_t result)
{
  if (result && atomic_fetch_add_explicit((result + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(result, *(result + 8));

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_ProxyHelper<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void>::Equal(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 16) != a3)
  {
    return 0;
  }

  v3 = (a1 + 8);
  v4 = *a1;
  if (*a1 == a1 + 8)
  {
    return 1;
  }

  while ((a2[4] ^ v4[4]) <= 7)
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::operator==((v4 + 5), (a2 + 5));
    if (!result)
    {
      return result;
    }

    v7 = v4[1];
    v8 = v4;
    if (v7)
    {
      do
      {
        v4 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v4 = v8[2];
        v9 = *v4 == v8;
        v8 = v4;
      }

      while (!v9);
    }

    v10 = a2[1];
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
        v11 = a2[2];
        v9 = *v11 == a2;
        a2 = v11;
      }

      while (!v9);
    }

    a2 = v11;
    if (v4 == v3)
    {
      return 1;
    }
  }

  return 0;
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>(v5, (v5 + 8), v4 + 4, (v4 + 4));
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

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>(uint64_t **a1, void *a2, uint64_t *a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__construct_node<std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, a5, a2 + 4))
  {
    if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, a3, a5);
}

void sub_24750C7D4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::VtValue>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::VtValue((a1 + 1), (a2 + 1));
  return a1;
}

void std::__shared_ptr_emplace<anonymous namespace::ArrayAction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2859485F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void anonymous namespace::ArrayAction::operator()(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t **a3@<X3>, uint64_t a4@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a5@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a5, a1);
  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(a2);
  if (*(Name + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *Name, *(Name + 8));
  }

  else
  {
    v9 = *Name;
    v32.__r_.__value_.__r.__words[2] = *(Name + 16);
    *&v32.__r_.__value_.__l.__data_ = v9;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v35, a2);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  v11 = __p;
  std::string::basic_string[abi:ne200100](__p, size + 12);
  if (SBYTE7(v29) < 0)
  {
    v11 = __p[0];
  }

  if (size)
  {
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v32;
    }

    else
    {
      v12 = v32.__r_.__value_.__r.__words[0];
    }

    memmove(v11, v12, size);
  }

  strcpy(v11 + size, "__arrayOrder");
  MEMORY[0x24C1A5E00](&v33, __p);
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v31, &v35, &v33);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (SBYTE7(v29) < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
  v13 = *a4;
  v14 = *(a4 + 8) - *a4;
  if (v14)
  {
    v15 = v14 >> 4;
    v16 = *a3;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    while (1)
    {
      v17 = *v16++;
      if (v17 == v31)
      {
        break;
      }

      v13 = (v13 + 16);
      if (!--v15)
      {
        goto LABEL_23;
      }
    }

    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v35, v13);
    v18 = v36;
    if (v36)
    {
      if (!strcmp((*(*(v36 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16vectorIN32pxrInternal__aapl__pxrReserved__7SdfPathENS_9allocatorIS2_EEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        goto LABEL_32;
      }

      {
        v18 = v36;
LABEL_32:
        if ((v18 & 4) != 0)
        {
          v19 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(&v35);
        }

        else
        {
          v19 = v35;
        }

        v30 = 0;
        *__p = 0u;
        v29 = 0u;
        v20 = *v19;
        v21 = *(v19 + 8);
        if (*v19 != v21)
        {
          do
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v27, v20);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v27 + 1, v20 + 1);
            if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(&v27))
            {
              v34 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfPath>(void)::ti + 1;
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v33, &v27);
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v33 + 1, &v27 + 1);
              pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::emplace_back<pxrInternal__aapl__pxrReserved__::VtValue>(__p, &v33);
            }

            else
            {
              v22 = *a4;
              v23 = *(a4 + 8) - *a4;
              if (v23)
              {
                v24 = v23 >> 4;
                v25 = *a3;
                if (v24 <= 1)
                {
                  v24 = 1;
                }

                while (1)
                {
                  v26 = *v25++;
                  if (v26 == v27)
                  {
                    break;
                  }

                  v22 = (v22 + 16);
                  if (!--v24)
                  {
                    goto LABEL_42;
                  }
                }

                pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v33, v22);
              }

              else
              {
LABEL_42:
                v34 = 0;
              }

              pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::emplace_back<pxrInternal__aapl__pxrReserved__::VtValue>(__p, &v33);
            }

            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v33);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
            v20 += 2;
          }

          while (v20 != v21);
        }

        v34 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>(void)::ti;
        pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(&v33, __p);
      }
    }
  }

  else
  {
LABEL_23:
    v36 = 0;
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v35);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v31);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_24750CCFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v27 - 88));
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v26);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::emplace_back<pxrInternal__aapl__pxrReserved__::VtValue>(uint64_t *a1, void *a2)
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
      pxrInternal__aapl__pxrReserved__::VtValue::VtValue((v5 + 16 * v4), a2);
LABEL_13:
      ++*a1;
      return;
    }

LABEL_15:
    v9 = a1[4];
    v10 = 1;
    do
    {
      v11 = v10;
      v10 *= 2;
    }

    while (v11 < v4 + 1);
    New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_AllocateNew(a1, v11);
    std::__uninitialized_copy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue*,pxrInternal__aapl__pxrReserved__::VtValue*,pxrInternal__aapl__pxrReserved__::VtValue*,std::__always_false>(v9, (v9 + 16 * v4), New);
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(New + 2 * v4, a2);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DecRef(a1);
    a1[4] = New;
    goto LABEL_13;
  }

  v14[0] = "vt/array.h";
  v14[1] = "emplace_back";
  v14[2] = 416;
  v14[3] = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::emplace_back(Args &&...) [ELEM = pxrInternal__aapl__pxrReserved__::VtValue, Args = <pxrInternal__aapl__pxrReserved__::VtValue>]";
  v15 = 0;
  if (*(a1 + 3))
  {
    if (*(a1 + 4))
    {
      v13 = 4;
    }

    else
    {
      v13 = 3;
    }
  }

  else
  {
    v13 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v14, 1, "Array rank %u != 1", v13);
}

void *pxrInternal__aapl__pxrReserved__::VtValue::VtValue(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  if (a2[1])
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v7, a1);
    v4 = a2[1];
    v5 = ~*(a2 + 2);
    a1[1] = v4;
    if ((v5 & 3) != 0)
    {
      (*((v4 & 0xFFFFFFFFFFFFFFF8) + 40))(a2, a1);
    }

    else
    {
      *a1 = *a2;
    }

    a2[1] = 0;
    if (v8)
    {
      (*(v8 + 32))(v7);
    }
  }

  return a1;
}

void sub_24750D018(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DecRef(void *a1)
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
        v8 = *(*v4 + 8);
        if (v8)
        {
          v8();
        }
      }
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v5 = a1[4];
      if (*a1)
      {
        v6 = 16 * *a1;
        do
        {
          pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v5);
          v5 = (v7 + 16);
          v6 -= 16;
        }

        while (v6);
        v5 = a1[4];
      }

      operator delete(v5 - 16);
    }

    *v4 = 0;
    v4[1] = 0;
  }
}

void *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_AllocateNew(uint64_t a1, unint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::TfMallocTag::Auto::Auto<char const(&)[22],char const(&)[167]>(&v6, "VtArray::_AllocateNew", "value_type *pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_AllocateNew(size_t) [ELEM = pxrInternal__aapl__pxrReserved__::VtValue]");
  if (a2 > 0x7FFFFFFFFFFFFFELL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 16 * a2 + 16;
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

pxrInternal__aapl__pxrReserved__::VtValue *std::__uninitialized_copy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::VtValue,pxrInternal__aapl__pxrReserved__::VtValue*,pxrInternal__aapl__pxrReserved__::VtValue*,pxrInternal__aapl__pxrReserved__::VtValue*,std::__always_false>(pxrInternal__aapl__pxrReserved__::VtValue *result, const pxrInternal__aapl__pxrReserved__::VtValue *a2, pxrInternal__aapl__pxrReserved__::VtValue *this)
{
  if (result != a2)
  {
    v4 = result;
    v5 = 0;
    result = this;
    do
    {
      v6 = pxrInternal__aapl__pxrReserved__::VtValue::VtValue(result, v4);
      v4 = (v4 + 16);
      result = (v6 + 16);
      v5 -= 16;
    }

    while (v4 != a2);
  }

  return result;
}

void sub_24750D1C4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v2)
  {
    v3 = -v2;
    do
    {
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v1);
      v1 = (v1 + 16);
      v3 -= 16;
    }

    while (v3);
  }

  __cxa_rethrow();
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>::_Hash(unint64_t **a1)
{
  v1 = **a1;
  if (v1)
  {
    v2 = (*a1)[4];
    v3 = v1;
    do
    {
      --v3;
      v4 = (v2 + 16);
      Hash = pxrInternal__aapl__pxrReserved__::VtValue::GetHash(v2);
      v1 = Hash + ((Hash + v1 + (Hash + v1) * (Hash + v1)) >> 1);
      v2 = v4;
    }

    while (v3);
    v6 = 0x9E3779B97F4A7C55 * v1;
  }

  else
  {
    v6 = 0;
  }

  return bswap64(v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>::_MakeMutable(uint64_t result)
{
  v1 = atomic_load((*result + 40));
  if (v1 != 1)
  {
    operator new();
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<pxrInternal__aapl__pxrReserved__::VtArray<realityio::WrappedRERef<REAsset *>>>::_PlaceCopy(a2, v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>>>::_DecrementIfValid(uint64_t result)
{
  if (result && atomic_fetch_add_explicit((result + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::_DecRef(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::VtValue>::operator==(uint64_t *a1, uint64_t a2)
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

  v5 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  v8 = 16 * v5 - 16;
  do
  {
    result = pxrInternal__aapl__pxrReserved__::VtValue::operator==(v6, v7);
    if (!result)
    {
      break;
    }

    v6 += 16;
    v7 += 16;
    v9 = v8;
    v8 -= 16;
  }

  while (v9);
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::_Move(void *a1, void *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::_DecrementIfValid(0);
}

unint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::_Hash(void **a1)
{
  v1 = *a1 + 1;
  v2 = **a1;
  if (v2 == v1)
  {
    v13 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v2[1];
      v6 = v2;
      if (v5)
      {
        do
        {
          v7 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v6[2];
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (!v8);
      }

      v9 = v2[4] & 0xFFFFFFFFFFFFFFF8;
      if (v4)
      {
        v9 += (v9 + v3 + (v9 + v3) * (v9 + v3)) >> 1;
      }

      v11 = *(v2 + 10);
      v10 = *(v2 + 11);
      v12 = v10 + v11 + ((v9 + v11 + (v9 + v11) * (v9 + v11)) >> 1);
      v3 = v10 + ((v12 + v12 * v12) >> 1);
      v4 = 1;
      v2 = v7;
    }

    while (v7 != v1);
    v13 = 0x9E3779B97F4A7C55 * v3;
  }

  return bswap64(v13);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::_MakeMutable(uint64_t result)
{
  v1 = atomic_load((*result + 24));
  if (v1 != 1)
  {
    operator new();
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::_DecrementIfValid(uint64_t result)
{
  if (result && atomic_fetch_add_explicit((result + 24), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(result, *(result + 8));

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(a1, a2[1]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 5));
    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_ProxyHelper<std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,void>::Equal(void *a1, void *a2, uint64_t a3)
{
  if (a1[2] != a3)
  {
    return 0;
  }

  v5 = *a1;
  v3 = a1 + 1;
  v4 = v5;
  if (v5 == v3)
  {
    return 1;
  }

  do
  {
    v6 = (a2[4] ^ v4[4]) < 8 && v4[5] == a2[5];
    v7 = v6;
    if (!v6)
    {
      break;
    }

    v8 = v4[1];
    v9 = v4;
    if (v8)
    {
      do
      {
        v4 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v4 = v9[2];
        v6 = *v4 == v9;
        v9 = v4;
      }

      while (!v6);
    }

    v10 = a2[1];
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
        v11 = a2[2];
        v6 = *v11 == a2;
        a2 = v11;
      }

      while (!v6);
    }

    a2 = v11;
  }

  while (v4 != v3);
  return v7;
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,void *> *,long>>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::SdfPath> const&>(v5, (v5 + 8), v4 + 4, v4 + 4);
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

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::SdfPath>>>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::pair<pxrInternal__aapl__pxrReserved__::TfToken const,pxrInternal__aapl__pxrReserved__::SdfPath> const&>(uint64_t **a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_CopyInit(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_Move(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  return pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_DecrementIfValid(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_Equal(uint64_t **a1, char ***a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = **a2;
  if (v2 - v3 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4;
    v4 += 8;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_EqualPtr(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *a2;
  if (v2 - v3 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 8;
  do
  {
    v6 = *v4++;
    result = *(v5 - 8) == v6;
    v8 = *(v5 - 8) != v6 || v5 == v2;
    v5 += 8;
  }

  while (!v8);
  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::_TypeInfoImpl<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>,pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>,pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_GetProxiedAsVtValue(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  a2[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::_PlaceCopy(a2, v2);
}

uint64_t *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>::_DecrementIfValid(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    if (atomic_fetch_add_explicit((v1 + 24), 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      v2 = v1;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v2);
      return MEMORY[0x24C1A91B0](v1, 0x1020C4055CCDE27);
    }
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfHash::operator()<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3 >> 3;
    do
    {
      v7 = *v2;
      if (v4)
      {
        v7 += (v5 + v7 + (v5 + v7) * (v5 + v7)) >> 1;
      }

      v5 = v2[1] + ((v7 + v2[1] + (v7 + v2[1]) * (v7 + v2[1])) >> 1);
      v2 += 2;
      v4 = 1;
      --v6;
    }

    while (v6);
    v8 = 0x9E3779B97F4A7C55 * v5;
  }

  else
  {
    v8 = 0;
  }

  return bswap64(v8);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::_GetMutableObj(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 24));
  if (v1 != 1)
  {
    pxrInternal__aapl__pxrReserved__::TfMakeDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::VtValue::_Counted<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> const&>();
  }

  return *a1;
}

void realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType::~ShaderGraphUtilityTokens_StaticTokenType(realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType *this)
{
  v12 = (this + 88);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v12);
  v2 = *(this + 10);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 9);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 8);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 7);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 6);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 5);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(this + 4);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(this + 3);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(this + 2);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(this + 1);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType *realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType::ShaderGraphUtilityTokens_StaticTokenType(realityio::tokens::ShaderGraphUtilityTokens_StaticTokenType *this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "NodeGraph", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "Shader", 0);
  MEMORY[0x24C1A5DF0](this + 16, "Material", 0);
  MEMORY[0x24C1A5DF0](this + 24, "Point", 0);
  MEMORY[0x24C1A5DF0](this + 32, "Normal", 0);
  MEMORY[0x24C1A5DF0](this + 40, "Vector", 0);
  MEMORY[0x24C1A5DF0](this + 48, "Color", 0);
  MEMORY[0x24C1A5DF0](this + 56, "Frame", 0);
  MEMORY[0x24C1A5DF0](this + 64, "TextureCoordinate", 0);
  MEMORY[0x24C1A5DF0](this + 72, "inputs", 0);
  MEMORY[0x24C1A5DF0](this + 80, "outputs", 0);
  v3 = (this + 88);
  v4 = *this;
  v18 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v18 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = *(this + 1);
  v19 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = *(this + 2);
  v20 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = *(this + 3);
  v21 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(this + 4);
  v22 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = *(this + 5);
  v23 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = *(this + 6);
  v24 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = *(this + 7);
  v25 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = *(this + 8);
  v26 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = *(this + 9);
  v27 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = *(this + 10);
  v28 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v3 = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(v3, &v18, &v29, 0xBuLL);
  for (i = 80; i != -8; i -= 8)
  {
    v16 = *(&v18 + i);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_24750E55C(_Unwind_Exception *a1)
{
  v3 = 80;
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
      v5 = v1[10];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[9];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[8];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[7];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[6];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[5];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[4];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[3];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[2];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[1];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

uint64_t RIOPxrSdfNamespaceEditGetTypeID()
{
  if (RIOPxrSdfNamespaceEditGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfNamespaceEditGetTypeID::onceToken, &__block_literal_global_1);
  }

  return RIOPxrSdfNamespaceEditGetTypeID::typeID;
}

void __RIOPxrSdfNamespaceEditGetTypeID_block_invoke()
{
  if (!RIOPxrSdfNamespaceEditGetTypeID::typeID)
  {
    RIOPxrSdfNamespaceEditGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrSdfBatchNamespaceEditGetTypeID()
{
  if (qword_27EE52DB8 != -1)
  {
    dispatch_once(&qword_27EE52DB8, &__block_literal_global_2);
  }

  return _MergedGlobals_7;
}

void __RIOPxrSdfBatchNamespaceEditGetTypeID_block_invoke()
{
  if (!_MergedGlobals_7)
  {
    _MergedGlobals_7 = _CFRuntimeRegisterClass();
  }
}

_DWORD *RIOPxrSdfNamespaceEditCreateEmpty()
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v7 = -1;
  if (RIOPxrSdfNamespaceEditGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfNamespaceEditGetTypeID::onceToken, &__block_literal_global_1);
  }

  Instance = _CFRuntimeCreateInstance();
  v1 = Instance;
  if (Instance)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((Instance + 16), &v3);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v1 + 5, &v4);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v1 + 6, &v5);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v1 + 7, &v6);
    v1[8] = v7;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v3);
  return v1;
}

void pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::~SdfNamespaceEdit(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

_DWORD *RIOPxrSdfNamespaceEditCreateFromPaths(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v5, (a1 + 16), (a2 + 16), a3);
    v3 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  }

  return v3;
}

_DWORD *RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(_DWORD *a1)
{
  if (RIOPxrSdfNamespaceEditGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfNamespaceEditGetTypeID::onceToken, &__block_literal_global_1);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((Instance + 16), a1);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v3 + 5, a1 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v3 + 6, a1 + 2);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v3 + 7, a1 + 3);
    v3[8] = a1[4];
  }

  return v3;
}

pxrInternal__aapl__pxrReserved__::SdfPath *RIOPxrSdfNamespaceEditCreateRemove(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(a1);
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v4, (v1 + 16), v2, -1);
    v1 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
  }

  return v1;
}

_DWORD *RIOPxrSdfNamespaceEditCreateRename(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceName(&v7, (a1 + 16), (a2 + 16));
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v5, (a1 + 16), &v7, -2);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
    v2 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  }

  return v2;
}

_DWORD *RIOPxrSdfNamespaceEditCreateReorder(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v4, (a1 + 16), (a1 + 16), a2);
  v2 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v4);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
  return v2;
}

_DWORD *RIOPxrSdfNamespaceEditCreateReparent(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v10, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v11, (a1 + 16), &v10, (a2 + 16));
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v8, (a1 + 16), &v11, a3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
    v3 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v8);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  }

  return v3;
}

_DWORD *RIOPxrSdfNamespaceEditCreateReparentAndRename(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 0;
  if (a1 && a2 && a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v12, (a1 + 16));
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v13, (a1 + 16), &v12, (a2 + 16));
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceName(&v14, &v13, (a3 + 16));
    pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(&v10, (a1 + 16), &v14, a4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
    v4 = RIOPxrSdfNamespaceEditCreate<pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit &>(&v10);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  }

  return v4;
}

uint64_t RIOPxrSdfNamespaceEditGetCurrentPath(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((result + 16));
  }

  return result;
}

uint64_t RIOPxrSdfNamespaceEditCopyCurrentPath(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((result + 16));
  }

  return result;
}

uint64_t RIOPxrSdfNamespaceEditGetNewPath(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((result + 24));
  }

  return result;
}

uint64_t RIOPxrSdfNamespaceEditCopyNewPath(uint64_t result)
{
  if (result)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((result + 24));
  }

  return result;
}

uint64_t RIOPxrSdfNamespaceEditGetIndex(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _RIOPxrSdfNamespaceEditCFFinalize(char *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 24));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 16));
}

pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit *pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit::SdfNamespaceEdit(pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, int a4)
{
  v8 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v8 + 1, a2 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 2, a3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 3, a3 + 1);
  *(this + 4) = a4;
  return this;
}

void RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::Collection>(uint64_t a1@<X0>, std::string *a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 248);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(a1 + 240);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  RIO_MTLX::Element::getQualifiedName(a1, a2, &__p);
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::Collection>(v8, &__p, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11)
  {
    v9 = v12;
    *a3 = v11;
    a3[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    RIO_MTLX::Element::getChildOfType<RIO_MTLX::Collection>(v8, a2, a3);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_24750F1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::Element::getChildOfType<RIO_MTLX::Collection>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a1 + 96), a2);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = v4;
  v6 = v4[5];
  v7 = v5[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
LABEL_10:
    *a3 = 0;
    a3[1] = 0;
    if (!v7)
    {
      return;
    }

    goto LABEL_6;
  }

  RIO_MTLX::Element::asA<RIO_MTLX::Collection>(v6, a3);
  if (!v7)
  {
    return;
  }

LABEL_6:

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_24750F2A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}