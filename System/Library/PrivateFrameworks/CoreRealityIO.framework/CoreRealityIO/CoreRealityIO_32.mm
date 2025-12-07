void sub_2476A7094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(v9);
  std::__split_buffer<realityio::LiveSceneManager::CompatibilityFault>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void realityio::LiveSceneManager::CompatibilityFault::~CompatibilityFault(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this);
}

pxrInternal__aapl__pxrReserved__::TfBaseException *pxrInternal__aapl__pxrReserved__::TfBaseException::TfBaseException(pxrInternal__aapl__pxrReserved__::TfBaseException *this, const pxrInternal__aapl__pxrReserved__::TfBaseException *a2)
{
  *this = MEMORY[0x277D86710] + 16;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 5);
  *(this + 6) = 0;
  *(this + 5) = v6;
  *(this + 24) = v5;
  *(this + 8) = v4;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 6, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(this + 11) = *(a2 + 11);
    *(this + 72) = v7;
  }

  return this;
}

void sub_2476A71C4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[7].__vftable = v4;
    operator delete(v4);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2476A7250(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void realityio::LiveSceneManager::AssetRecord::~AssetRecord(void **this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 4));
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this);
}

uint64_t std::__function::__func<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595B5F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595B680;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_2,std::allocator<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_2>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595B700;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_2,std::allocator<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_2>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_3,std::allocator<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_3>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595B780;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_3,std::allocator<checkBuilderMatches(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_3>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595B810;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::operator()(uint64_t a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*(a1 + 8) + 8));

  return pxrInternal__aapl__pxrReserved__::UsdStage::HasMetadata(v3, a2);
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595B890;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::operator()(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*(a1 + 8) + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v8, v5, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v8))
  {
    HasMetadata = pxrInternal__aapl__pxrReserved__::UsdObject::HasMetadata(&v8, a3);
  }

  else
  {
    HasMetadata = 0;
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
  }

  return HasMetadata;
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_2,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_2>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595B910;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_2,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_2>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::operator()(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*(a1 + 8) + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v8, v5, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v8))
  {
    HasProperty = pxrInternal__aapl__pxrReserved__::UsdPrim::HasProperty(&v8, a3);
  }

  else
  {
    HasProperty = 0;
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v10);
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v9);
  }

  return HasProperty;
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_2,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_2>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_3,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_3>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595B990;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_3,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_3>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::operator()(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*(a1 + 8) + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v10, v7, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v10) && pxrInternal__aapl__pxrReserved__::UsdPrim::HasProperty(&v10, a3))
  {
    HasMetadata = pxrInternal__aapl__pxrReserved__::UsdObject::HasMetadata(&v10, a4);
  }

  else
  {
    HasMetadata = 0;
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v12);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11);
  }

  return HasMetadata;
}

uint64_t std::__function::__func<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_3,std::allocator<checkBuilderShouldBeInstancedForPrim(std::shared_ptr<realityio::DirtyStageSubscription const> &,realityio::LiveSceneUpdate const*,realityio::LiveSceneUpdate const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_3>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::shared_ptr<realityio::Builder>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::Builder>*,std::shared_ptr<realityio::Builder>*>(uint64_t result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(result, a4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REComponentClass *>::~pair(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::vector<realityio::LiveSceneManager::CompatibilityFault>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 40;
        std::allocator_traits<std::allocator<realityio::LiveSceneManager::CompatibilityFault>>::destroy[abi:ne200100]<realityio::LiveSceneManager::CompatibilityFault,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<realityio::LiveSceneManager::LiveSceneUpdateContext>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 136);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = *(v2 + 104);
    if (v4)
    {
      v5 = *(v2 + 112);
      v6 = *(v2 + 104);
      if (v5 != v4)
      {
        do
        {
          v5 = realityio::WrappedRERef<REEntity *>::~WrappedRERef(v5 - 1);
        }

        while (v5 != v4);
        v6 = *(v2 + 104);
      }

      *(v2 + 112) = v4;
      operator delete(v6);
    }

    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2 + 72);
    v7 = (v2 + 48);
    std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&v7);
    v7 = (v2 + 24);
    std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](&v7);

    realityio::WrappedCFRef<void const*>::~WrappedCFRef((v2 + 8));
    realityio::WrappedCFRef<RIOImportSession *>::~WrappedCFRef(v2);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

void std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<realityio::LiveSceneManager::AssetRecord>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 40;
        std::allocator_traits<std::allocator<realityio::LiveSceneManager::AssetRecord>>::destroy[abi:ne200100]<realityio::LiveSceneManager::AssetRecord,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::allocator_traits<std::allocator<realityio::LiveSceneManager::AssetRecord>>::destroy[abi:ne200100]<realityio::LiveSceneManager::AssetRecord,0>(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1);
}

uint64_t std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v18 = 0;
  v19 = 32 * v2;
  v21 = 0;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](32 * v2, a2);
  v7 = 32 * v2 + 32;
  v20 = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = v19 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = (v8 + 24);
    v12 = v19 + *a1 - v9;
    while (1)
    {
      v13 = *v11;
      if (*v11)
      {
        if (v11 - 3 == v13)
        {
          *(v12 + 24) = v12;
          (*(**v11 + 24))(*v11, v12);
          goto LABEL_18;
        }

        *(v12 + 24) = v13;
        v14 = v11;
      }

      else
      {
        v14 = (v12 + 24);
      }

      *v14 = 0;
LABEL_18:
      v12 += 32;
      v15 = v11 + 1;
      v11 += 4;
      if (v15 == v9)
      {
        do
        {
          std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v8);
          v8 += 32;
        }

        while (v8 != v9);
        v8 = *a1;
        v7 = v20;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = v7;
  v16 = a1[2];
  a1[2] = v21;
  v20 = v8;
  v21 = v16;
  v18 = v8;
  v19 = v8;
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(&v18);
  return v7;
}

void sub_2476A82F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::function<void ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<realityio::WrappedRERef<REEntity *>>::__emplace_back_slow_path<realityio::WrappedRERef<REEntity *> const&>(char **a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 2 > v3)
  {
    v3 = v5 >> 2;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v24 = a1;
  if (v6)
  {
    if (!(v6 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = (8 * v2);
  v20 = 0;
  v21 = v7;
  v22 = 8 * v2;
  v23 = 0;
  v8 = *a2;
  *v7 = *a2;
  if (v8)
  {
    RERetain();
    v7 = v21;
    v9 = v22;
  }

  else
  {
    v9 = 8 * v2;
  }

  v10 = *a1;
  v11 = a1[1];
  v12 = v11 - *a1;
  v13 = (v9 + 8);
  v22 = v9 + 8;
  if (v11 != v10)
  {
    v14 = 0;
    v15 = &v7[-8 * ((v11 - v10) >> 3) - 8];
    v16 = v10;
    do
    {
      v17 = *v16;
      *(v15 + 8) = *v16;
      if (v17)
      {
        RERetain();
      }

      ++v16;
      v14 -= 8;
      v15 += 8;
    }

    while (v16 != v11);
    do
    {
      realityio::WrappedRERef<REEntity *>::~WrappedRERef(v10);
      v10 += 8;
    }

    while (v10 != v11);
    v10 = *a1;
    v13 = v22;
  }

  *a1 = &v7[-v12];
  a1[1] = v13;
  v18 = a1[2];
  a1[2] = v23;
  v22 = v10;
  v23 = v18;
  v20 = v10;
  v21 = v10;
  std::__split_buffer<realityio::WrappedRERef<REEntity *>>::~__split_buffer(&v20);
  return v13;
}

void sub_2476A84D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<realityio::WrappedRERef<REEntity *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<realityio::WrappedRERef<REEntity *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    realityio::WrappedRERef<REEntity *>::~WrappedRERef((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<realityio::AssetLoadTracker::Asset>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595BA10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *std::__shared_ptr_emplace<realityio::AssetLoadTracker::Asset>::__on_zero_shared(void *a1)
{
  a1[3] = &unk_285951C30;
  realityio::WrappedRERef<REAssetLoadRequest *>::~WrappedRERef(a1 + 7);

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 4);
}

void std::__shared_ptr_emplace<realityio::LiveSceneManager::AssetDeferredLoadGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595BA60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::LiveSceneManager::AssetDeferredLoadGroup>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_28595BAB0;
  v2 = (a1 + 96);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::recursive_mutex::~recursive_mutex((a1 + 32));
}

uint64_t _ZNKSt3__110__function6__funcIN9realityio16LiveSceneManager22LiveSceneUpdateContext21sceneChangeSetupBlockMUlvE_ENS_9allocatorIS5_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN9realityio16LiveSceneManager22LiveSceneUpdateContext21sceneChangeSetupBlockMUlvE_E))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<realityio::SyncUpdateEngineQueueManager *,std::shared_ptr<realityio::EngineQueueManager>::__shared_ptr_default_delete<realityio::EngineQueueManager,realityio::SyncUpdateEngineQueueManager>,std::allocator<realityio::SyncUpdateEngineQueueManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::SyncUpdateEngineQueueManager *,std::shared_ptr<realityio::EngineQueueManager>::__shared_ptr_default_delete<realityio::EngineQueueManager,realityio::SyncUpdateEngineQueueManager>,std::allocator<realityio::SyncUpdateEngineQueueManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::default_delete<realityio::SyncUpdateEngineQueueManager>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    std::deque<std::shared_ptr<realityio::SyncUpdateEngineQueueManager::EngineQueueTask>>::~deque[abi:ne200100]((result + 88));
    std::mutex::~mutex((v1 + 24));

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t *std::unique_ptr<realityio::AsyncUpdateEngineQueueManager>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x24C1A91B0](v2, 0x81C40803F642BLL);
  }

  return a1;
}

void std::__shared_ptr_pointer<realityio::AsyncUpdateEngineQueueManager *,std::shared_ptr<realityio::EngineQueueManager>::__shared_ptr_default_delete<realityio::EngineQueueManager,realityio::AsyncUpdateEngineQueueManager>,std::allocator<realityio::AsyncUpdateEngineQueueManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__shared_ptr_pointer<realityio::AsyncUpdateEngineQueueManager *,std::shared_ptr<realityio::EngineQueueManager>::__shared_ptr_default_delete<realityio::EngineQueueManager,realityio::AsyncUpdateEngineQueueManager>,std::allocator<realityio::AsyncUpdateEngineQueueManager>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::AsyncUpdateEngineQueueManager *,std::shared_ptr<realityio::EngineQueueManager>::__shared_ptr_default_delete<realityio::EngineQueueManager,realityio::AsyncUpdateEngineQueueManager>,std::allocator<realityio::AsyncUpdateEngineQueueManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveScene(BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateLiveScene(BOOL)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595BC38;
  a2[1] = v2;
  return result;
}

void std::__function::__func<realityio::LiveSceneManager::updateLiveScene(BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateLiveScene(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v3, 2040, v1, 0, 0, 0);
  realityio::LiveSceneUpdate::makeFromTrackedStageState(*(v1 + 232), *(v1 + 24), v2);
  operator new();
}

void sub_2476A8B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x24C1A91B0](v3, 0x10F1C408B98DA2BLL);
  realityio::LiveSceneUpdate::~LiveSceneUpdate(va);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard((v4 - 48), v6, v7);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveScene(BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateLiveScene(BOOL)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

realityio::LiveSceneUpdate *realityio::LiveSceneUpdate::LiveSceneUpdate(realityio::LiveSceneUpdate *this, const realityio::LiveSceneUpdate *a2)
{
  *this = &unk_285957F10;
  *(this + 1) = *(a2 + 1);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(this + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(this + 2, *(a2 + 2), *(a2 + 3), (*(a2 + 3) - *(a2 + 2)) >> 3);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v4 = *(a2 + 5);
  v5 = *(a2 + 6);
  v55 = a2;
  v56 = this;
  v61 = this + 40;
  LOBYTE(v62) = 0;
  if (v5 != v4)
  {
    v6 = 0x4EC4EC4EC4EC4EC5 * ((v5 - v4) >> 3);
    if (v6 < 0x276276276276277)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::internal::PrimToEntityMap::EntityData>>(this + 40, v6);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  *(this + 9) = 0;
  v7 = (this + 72);
  *(this + 8) = this + 72;
  *(this + 10) = 0;
  v8 = *(a2 + 8);
  v9 = a2 + 72;
  if (v8 != a2 + 72)
  {
    do
    {
      v10 = *v7;
      if (*(this + 8) == v7)
      {
        v12 = (this + 72);
        if (!v10)
        {
LABEL_12:
          v61 = this + 72;
LABEL_17:
          operator new();
        }
      }

      else
      {
        v11 = this + 72;
        if (v10)
        {
          do
          {
            v12 = v10;
            v10 = v10[1];
          }

          while (v10);
        }

        else
        {
          do
          {
            v12 = *(v11 + 2);
            v13 = *v12 == v11;
            v11 = v12;
          }

          while (v13);
        }

        if (!pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v12 + 4, v8 + 4))
        {
          v14 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(this + 64, &v61, v8 + 4);
          goto LABEL_16;
        }

        if (!*v7)
        {
          goto LABEL_12;
        }
      }

      v61 = v12;
      v14 = v12 + 1;
LABEL_16:
      if (!*v14)
      {
        goto LABEL_17;
      }

      v15 = *(v8 + 1);
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
          v16 = *(v8 + 2);
          v13 = *v16 == v8;
          v8 = v16;
        }

        while (!v13);
      }

      v8 = v16;
    }

    while (v16 != v9);
  }

  *(this + 12) = 0;
  v17 = (this + 96);
  *(this + 11) = this + 96;
  v18 = (this + 88);
  *(this + 13) = 0;
  v19 = *(v55 + 11);
  if (v19 != (v55 + 96))
  {
    v20 = 0;
    v21 = v17;
    while (v21 != v17)
    {
      v22 = v17;
      if (v20)
      {
        do
        {
          v23 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        do
        {
          v23 = v22[2];
          v13 = *v23 == v22;
          v22 = v23;
        }

        while (v13);
      }

      if (std::less<std::string>::operator()[abi:ne200100](v18, v23 + 4, v19 + 4))
      {
        if (!*v17)
        {
          goto LABEL_33;
        }

LABEL_35:
        v60 = v23;
        v24 = v23 + 1;
        goto LABEL_37;
      }

      v24 = std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(v18, &v60, v19 + 4);
LABEL_37:
      if (!*v24)
      {
        goto LABEL_38;
      }

      v25 = v19[1];
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
          v26 = v19[2];
          v13 = *v26 == v19;
          v19 = v26;
        }

        while (!v13);
      }

      if (v26 == (v55 + 96))
      {
        goto LABEL_46;
      }

      v20 = *v17;
      v21 = *v18;
      v19 = v26;
    }

    v23 = v17;
    if (!v20)
    {
LABEL_33:
      v60 = v17;
LABEL_38:
      operator new();
    }

    goto LABEL_35;
  }

LABEL_46:
  *(v56 + 15) = 0;
  *(v56 + 14) = v56 + 120;
  v57 = (v56 + 120);
  v58 = (v56 + 112);
  *(v56 + 16) = 0;
  v27 = *(v55 + 14);
  if (v27 != (v55 + 120))
  {
    while (1)
    {
      v28 = (v56 + 120);
      v29 = *v57;
      if (*v58 == v57)
      {
        goto LABEL_54;
      }

      v30 = v56 + 120;
      if (v29)
      {
        do
        {
          v28 = v29;
          v29 = v29[1];
        }

        while (v29);
      }

      else
      {
        do
        {
          v28 = *(v30 + 2);
          v13 = *v28 == v30;
          v30 = v28;
        }

        while (v13);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v28 + 4, v27 + 4))
      {
        break;
      }

      v31 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(v58, &v59, v27 + 4);
LABEL_57:
      if (!*v31)
      {
        goto LABEL_60;
      }

      v32 = v27[1];
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
          v33 = v27[2];
          v13 = *v33 == v27;
          v27 = v33;
        }

        while (!v13);
      }

      v27 = v33;
      if (v33 == (v55 + 120))
      {
        goto LABEL_67;
      }
    }

    v29 = *v57;
LABEL_54:
    if (!v29)
    {
      v59 = v56 + 120;
LABEL_60:
      operator new();
    }

    v59 = v28;
    v31 = v28 + 1;
    goto LABEL_57;
  }

LABEL_67:
  *(v56 + 18) = 0;
  v34 = (v56 + 144);
  *(v56 + 17) = v56 + 144;
  v35 = (v56 + 136);
  *(v56 + 19) = 0;
  v36 = *(v55 + 17);
  if (v36 != (v55 + 144))
  {
    do
    {
      v37 = *v34;
      if (*v35 == v34)
      {
        v39 = (v56 + 144);
        if (!v37)
        {
LABEL_75:
          v63 = v56 + 144;
LABEL_80:
          operator new();
        }
      }

      else
      {
        v38 = v56 + 144;
        if (v37)
        {
          do
          {
            v39 = v37;
            v37 = v37[1];
          }

          while (v37);
        }

        else
        {
          do
          {
            v39 = *(v38 + 2);
            v13 = *v39 == v38;
            v38 = v39;
          }

          while (v13);
        }

        if (!pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<())
        {
          v40 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v35, &v63, (v36 + 4));
          goto LABEL_79;
        }

        if (!*v34)
        {
          goto LABEL_75;
        }
      }

      v63 = v39;
      v40 = v39 + 1;
LABEL_79:
      if (!*v40)
      {
        goto LABEL_80;
      }

      v41 = v36[1];
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = v36[2];
          v13 = *v42 == v36;
          v36 = v42;
        }

        while (!v13);
      }

      v36 = v42;
    }

    while (v42 != (v55 + 144));
  }

  std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>::map[abi:ne200100](v56 + 20, v55 + 160);
  *(v56 + 24) = 0;
  v43 = (v56 + 192);
  *(v56 + 23) = v56 + 192;
  v44 = (v56 + 184);
  *(v56 + 25) = 0;
  v45 = *(v55 + 23);
  if (v45 != (v55 + 192))
  {
    v46 = 0;
    v47 = (v56 + 192);
    while (v47 != v43)
    {
      v48 = v56 + 192;
      if (v46)
      {
        do
        {
          v49 = v46;
          v46 = v46[1];
        }

        while (v46);
      }

      else
      {
        do
        {
          v49 = *(v48 + 2);
          v13 = *v49 == v48;
          v48 = v49;
        }

        while (v13);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v49 + 4, v45 + 4))
      {
        if (!*v43)
        {
          goto LABEL_96;
        }

LABEL_98:
        v60 = v49;
        v50 = v49 + 1;
        goto LABEL_100;
      }

      v50 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(v44, &v60, v45 + 4);
LABEL_100:
      if (!*v50)
      {
        goto LABEL_101;
      }

      v51 = v45[1];
      if (v51)
      {
        do
        {
          v52 = v51;
          v51 = *v51;
        }

        while (v51);
      }

      else
      {
        do
        {
          v52 = v45[2];
          v13 = *v52 == v45;
          v45 = v52;
        }

        while (!v13);
      }

      if (v52 == (v55 + 192))
      {
        goto LABEL_109;
      }

      v46 = *v43;
      v47 = *v44;
      v45 = v52;
    }

    v49 = (v56 + 192);
    if (!v46)
    {
LABEL_96:
      v60 = (v56 + 192);
LABEL_101:
      operator new();
    }

    goto LABEL_98;
  }

LABEL_109:
  *(v56 + 27) = *(v55 + 27);
  *(v56 + 26) = &unk_285949620;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v56 + 27);
  std::map<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>::map[abi:ne200100](v56 + 28, v55 + 224);
  *(v56 + 31) = &unk_285955750;
  std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(v56 + 256, v55 + 256);
  v53 = *(v55 + 37);
  *(v56 + 304) = *(v55 + 304);
  *(v56 + 37) = v53;
  return v56;
}

void sub_2476A981C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, atomic_uint **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(v27 + 224, *(v27 + 232));
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v25);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(v29, *v26);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<BOOL,BOOL>>>>::destroy(a12 + 160, *(a12 + 168));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>,std::less<pxrInternal__aapl__pxrReserved__::SdfAssetPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfAssetPath,std::set<realityio::TextureImportOperationSettings>>>>::destroy(v28, *v30);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::map<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<realityio::internal::TexturePrimToMaterialPrimMap::MaterialData>>>>>::destroy(a17, *a16);
  realityio::internal::PrimToEntityMap::~PrimToEntityMap(a9);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(a10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveScene(BOOL)::$_1,std::allocator<realityio::LiveSceneManager::updateLiveScene(BOOL)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28595BD38;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 1));
  return a1;
}

void std::__function::__func<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28595BD38;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 1));

  JUMPOUT(0x24C1A91B0);
}

_DWORD *std::__function::__func<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595BD38;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 8), (a1 + 8));
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a2 + 12), (a1 + 12));
  *(a2 + 16) = *(a1 + 16);
  return result;
}

void std::__function::__func<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0>,void ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0>,void ()(void)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__func<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = (a1 + 8);
  v2 = *(a1 + 16);
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  realityio::UsdPrimDelta::UsdPrimDelta(v25, (a1 + 8), 1, &v16);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::destroy(&v16, v17[0]);
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  v16 = v1;
  v3 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::SdfPath const&>,std::tuple<>>(&v23, v1, &std::piecewise_construct, &v16, v22);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v3 + 6), &v26);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v3 + 52, &v27);
  *(v3 + 56) = v28;
  if (v3 + 5 != v25)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,realityio::UsdPropertyDelta>,void *> *,long>>(v3 + 8, v29, v30);
    *(v3 + 32) = v31;
    std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<pxrInternal__aapl__pxrReserved__::TfToken,void *> *>>(v3 + 12, v30[5], 0);
  }

  v21 = *(v2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v21);
  realityio::UsdStageDelta::UsdStageDelta(v22, &v21, &v23);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v21);
  realityio::UsdStageStateTracker::updateWithStageDelta(*(v2 + 232), v22);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v4 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v1) & 0xFFFFFFFFFFFFFFF8;
  if (v4)
  {
    if ((*(v4 + 39) & 0x8000000000000000) != 0)
    {
      if (!*(v4 + 24))
      {
        goto LABEL_29;
      }
    }

    else if (!*(v4 + 39))
    {
      goto LABEL_29;
    }

    NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v1);
    std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>::pair[abi:ne200100]<true,0>(&v16, v1, NameToken);
    v6 = v19;
    if (v19 >= v20)
    {
      v7 = (v19 - v18) >> 4;
      if ((v7 + 1) >> 60)
      {
        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
      }

      v8 = (v20 - v18) >> 3;
      if (v8 <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      if (v20 - v18 >= 0x7FFFFFFFFFFFFFF0)
      {
        v9 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      if (v9)
      {
        if (!(v9 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = 16 * v7;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((16 * v7), &v16);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((16 * v7 + 4), &v16 + 1);
      *(v10 + 8) = v17[0];
      v17[0] = 0;
      v11 = (16 * v7 + 16);
      v12 = v18;
      v13 = v19;
      v14 = (v10 + v18 - v19);
      if (v18 != v19)
      {
        v15 = 0;
        do
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14[v15], &v12[v15]);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14[v15 + 4], &v12[v15 + 4]);
          *&v14[v15 + 8] = *&v12[v15 + 8];
          *&v12[v15 + 8] = 0;
          v15 += 16;
        }

        while (&v12[v15] != v13);
        do
        {
          std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,0>(v12);
          v12 += 16;
        }

        while (v12 != v13);
        v12 = v18;
      }

      v18 = v14;
      v19 = v11;
      v20 = 0;
      if (v12)
      {
        operator delete(v12);
      }

      v19 = v11;
      if ((v17[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v17[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v19, &v16);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, &v16 + 1);
      *(v6 + 1) = v17[0];
      v17[0] = 0;
      v19 = v6 + 16;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
  }

LABEL_29:
  realityio::LiveSceneUpdate::makeFromTrackedStageState(*(v2 + 232), *(v2 + 24), &v16);
  operator new();
}

void sub_2476AA078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  a10 = &a49;
  std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>::__destroy_vector::operator()[abi:ne200100](&a10);
  realityio::UsdStageDelta::~UsdStageDelta(va);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,realityio::UsdPrimDelta>>>::destroy(v52 - 200, *(v52 - 192));
  realityio::UsdPrimDelta::~UsdPrimDelta((v52 - 176));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__alloc_func<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateAsset(pxrInternal__aapl__pxrReserved__::SdfPath,BOOL)::$_0>,void ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::vector<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 16;
        std::allocator_traits<std::allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::TfToken>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

_DWORD *std::vector<realityio::LiveSceneManager::AssetRecord>::__construct_one_at_end[abi:ne200100]<realityio::LiveSceneManager::AssetRecord>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *a2 = 0;
  v5 = *(a2 + 8);
  *(v4 + 24) = *(a2 + 24);
  *(v4 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 32), (a2 + 32));
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v4 + 36), (a2 + 36));
  *(a1 + 8) = v4 + 40;
  return result;
}

uint64_t std::vector<realityio::LiveSceneManager::AssetRecord>::__emplace_back_slow_path<realityio::LiveSceneManager::AssetRecord>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v27 = a1;
  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 40 * v2;
  v23 = 0;
  v24 = v7;
  v8 = 0;
  v26 = 0;
  *v7 = *a2;
  v9 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 8) = v9;
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((40 * v2 + 32), (a2 + 32));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((40 * v2 + 36), (a2 + 36));
  v10 = *a1;
  v11 = a1[1];
  v12 = v11 - *a1;
  v13 = 40 * v2 + 40;
  v25 = v13;
  if (v11 != v10)
  {
    v22 = v12;
    v14 = 0;
    v15 = 40 * v2 - 8 * ((v11 - v10) >> 3);
    do
    {
      v16 = v10 + v14;
      v17 = *(v10 + v14);
      *(v15 + v14) = v17;
      if (v17)
      {
        RERetain();
      }

      v18 = v15 + v14;
      if (*(v16 + 31) < 0)
      {
        std::string::__init_copy_ctor_external((v18 + 8), *(v16 + 8), *(v10 + v14 + 16));
      }

      else
      {
        v19 = *(v16 + 8);
        *(v18 + 24) = *(v16 + 24);
        *(v18 + 8) = v19;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v15 + v14 + 32), (v10 + v14 + 32));
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v15 + v14 + 36), (v10 + v14 + 36));
      v14 += 40;
    }

    while (v16 + 40 != v11);
    do
    {
      std::allocator_traits<std::allocator<realityio::LiveSceneManager::AssetRecord>>::destroy[abi:ne200100]<realityio::LiveSceneManager::AssetRecord,0>(v10);
      v10 += 40;
    }

    while (v10 != v11);
    v10 = *a1;
    v13 = v25;
    v8 = v26;
    v12 = v22;
  }

  *a1 = v7 - v12;
  a1[1] = v13;
  v20 = a1[2];
  a1[2] = v8;
  v25 = v10;
  v26 = v20;
  v23 = v10;
  v24 = v10;
  std::__split_buffer<realityio::LiveSceneManager::AssetRecord>::~__split_buffer(&v23);
  return v13;
}

uint64_t std::__split_buffer<realityio::LiveSceneManager::AssetRecord>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::allocator_traits<std::allocator<realityio::LiveSceneManager::AssetRecord>>::destroy[abi:ne200100]<realityio::LiveSceneManager::AssetRecord,0>(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(void *result, uint64_t a2)
{
  xmmword_27EE53590 = 0u;
  unk_27EE535A0 = 0u;
  dword_27EE535B0 = 1065353216;
  if (a2)
  {
    v2 = result;
    v3 = 8 * a2;
    do
    {
      result = std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>(&xmmword_27EE53590, v2++);
      v3 -= 8;
    }

    while (v3);
  }

  return result;
}

void *std::__hash_table<REAsset *,std::hash<REAsset *>,std::equal_to<REAsset *>,std::allocator<REAsset *>>::find<REAsset *>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == a3)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= a2)
        {
          v10 %= a2;
        }
      }

      else
      {
        v10 &= a2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__hash_table<REAsset *,std::hash<REAsset *>,std::equal_to<REAsset *>,std::allocator<REAsset *>>::__emplace_unique_key_args<REAsset *,REAsset * const&>(float *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

__n128 std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_0>,void ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595BDB8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

pxrInternal__aapl__pxrReserved__ *std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_0>,void ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::operator()(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v37 = *(a1 + 24);
  v4 = atomic_load((*(v2 + 24) + 28));
  if (v4 == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v38, "standardVisitDirtyPrimCancel");
    realityio::ImportSession::CancelledException::CancelledException(exception, &v38);
  }

  v6 = *(v2 + 240);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*(v2 + 40) + 8));
  PrimAtPath = pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v49, v7, a2);
  v48 = *a2 == *pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(PrimAtPath);
  if (v48 || (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v49) & 1) == 0)
  {
    MEMORY[0x24C1A5DE0](&v47, "");
  }

  else
  {
    v10 = v50;
    if (!v50 || (*(v50 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v50, v9);
    }

    v11 = **(v10 + 3);
    v47 = v11;
    if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v47 &= 0xFFFFFFFFFFFFFFF8;
    }
  }

  memset(v45, 0, sizeof(v45));
  v46 = 1065353216;
  *&v38 = v45;
  *(&v38 + 1) = &v48;
  v39 = v2;
  v40 = a2;
  v41 = v3;
  v42 = &v49;
  v43 = &v47;
  v44 = vextq_s8(v37, v37, 8uLL);
  if (*(v2 + 288) == 1)
  {
    v12 = 112;
  }

  else
  {
    v12 = 64;
  }

  if (*(v2 + 288) == 1)
  {
    v13 = 136;
  }

  else
  {
    v13 = 88;
  }

  v14 = *(v2 + 240);
  if ((atomic_load_explicit(&_MergedGlobals_51, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_51))
  {
    MEMORY[0x24C1A5DE0](v53, "com.apple.mesh-component-builder");
    MEMORY[0x24C1A5DE0](&v53[1], "com.apple.mesh-asset-builder");
    MEMORY[0x24C1A5DE0](&v53[2], "com.apple.mesh-model-descriptor-builder");
    MEMORY[0x24C1A5DE0](&v53[3], "com.apple.material-asset-builder");
    std::unordered_set<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::unordered_set(v53, 4);
    for (i = 3; i != -1; --i)
    {
      v36 = v53[i];
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    __cxa_guard_release(&_MergedGlobals_51);
  }

  v15 = *(v2 + 288);
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v49))
  {
    v19 = *v6;
    for (j = v6[1]; v19 != j; v19 += 2)
    {
      if (v15 != 1 || !std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(&xmmword_27EE53590, *v19))
      {
        realityio::LiveSceneManager::visitDirtyPrim(pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &)::$_0::operator()(&v38, v19);
      }
    }

    goto LABEL_62;
  }

  v16 = v14 + v12;
  v17 = (v16 + 8);
  v18 = *(v16 + 8);
  if (!v18)
  {
    goto LABEL_57;
  }

  while (std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v16, &v47, v18 + 4))
  {
    v17 = v18;
LABEL_24:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_57;
    }
  }

  if (std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v16, v18 + 4, &v47))
  {
    v18 = (v18 + 8);
    goto LABEL_24;
  }

  v21 = *v18;
  v22 = v18;
  if (*v18)
  {
    v22 = v18;
    do
    {
      v23 = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v16, v21 + 4, &v47);
      if (v23)
      {
        v24 = 8;
      }

      else
      {
        v24 = 0;
      }

      if (!v23)
      {
        v22 = v21;
      }

      v21 = *(v21 + v24);
    }

    while (v21);
  }

  for (k = *(v18 + 1); k; k = k[v27])
  {
    v26 = std::less<pxrInternal__aapl__pxrReserved__::TfToken>::operator()[abi:ne200100](v16, &v47, k + 4);
    v27 = !v26;
    if (v26)
    {
      v17 = k;
    }
  }

  if (v22 != v17)
  {
    do
    {
      if (v15 != 1 || !std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(&xmmword_27EE53590, v22[5]))
      {
        realityio::LiveSceneManager::visitDirtyPrim(pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &)::$_0::operator()(&v38, v22 + 5);
      }

      v28 = v22[1];
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
          v29 = v22[2];
          v30 = *v29 == v22;
          v22 = v29;
        }

        while (!v30);
      }

      v22 = v29;
    }

    while (v29 != v17);
  }

LABEL_57:
  v31 = *(v14 + v13);
  for (m = *(v14 + v13 + 8); v31 != m; v31 += 2)
  {
    if (v15 != 1 || !std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::find<pxrInternal__aapl__pxrReserved__::TfToken>(&xmmword_27EE53590, *v31))
    {
      realityio::LiveSceneManager::visitDirtyPrim(pxrInternal__aapl__pxrReserved__::SdfPath const&,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &,realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>> &)::$_0::operator()(&v38, v31);
    }
  }

LABEL_62:
  std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(v45);
  if ((v47 & 7) != 0)
  {
    atomic_fetch_add_explicit((v47 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v52 & 7) != 0)
  {
    atomic_fetch_add_explicit((v52 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v51);
  result = v50;
  if (v50)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v50);
  }

  return result;
}

void sub_2476AB15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v33 = 24;
  while (1)
  {
    v34 = *(v31 + v33);
    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v33 -= 8;
    if (v33 == -8)
    {
      __cxa_guard_abort(&_MergedGlobals_51);
      std::__hash_table<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::~__hash_table(&a24);
      if ((a29 & 7) != 0)
      {
        atomic_fetch_add_explicit((a29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a31);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_0,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_0>,void ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_1,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595BE48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_1,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_1>,void ()(void)>::operator()(uint64_t result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(result + 8);
  v2 = *(v1 + 464);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (v3 != v4)
  {
    do
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v5, v3);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v6 + 48))(v6);
      result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
      v3 += 32;
    }

    while (v3 != v4);
    v2 = *(v1 + 464);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
  }

  while (v4 != v3)
  {
    v4 -= 32;
    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
  }

  *(v2 + 32) = v3;
  return result;
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_1,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_2,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_2>,void ()(std::shared_ptr<realityio::Builder>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595BEC8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_2,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_2>,void ()(std::shared_ptr<realityio::Builder>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  *&v12 = v4;
  *(&v12 + 1) = v3;
  v7 = *(a1 + 24);
  v8 = *v5;
  v9 = *(v5 + 8);
  if (v8 != v9)
  {
    while (*v8 != v4)
    {
      v8 += 2;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_6:
    if (*(a1 + 16) + 8 == std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(*(a1 + 16), (v4 + 8)))
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*(v7 + 40) + 8));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v13, v10, (v4 + 8));
      IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v13);
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
      if (v14)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v14);
      }

      if (!IsValid)
      {
LABEL_15:
        realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(*v6, &v12);
        goto LABEL_16;
      }

      v4 = v12;
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(*(a1 + 16), (v12 + 8), v12 + 8);
    }

    if (!realityio::MutableDirtyPropertyTable::anyMatch((v4 + 136), *(a1 + 32)))
    {
      goto LABEL_16;
    }

    v6 = (a1 + 40);
    goto LABEL_15;
  }

LABEL_16:
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v12 + 1));
  }
}

void sub_2476AB72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_2,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_2>,void ()(std::shared_ptr<realityio::Builder>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<realityio::Builder>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::__unordered_map_hasher<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,true>,std::__unordered_map_equal<std::shared_ptr<realityio::Builder>,std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::hash<std::shared_ptr<realityio::Builder>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<realityio::Builder>,std::vector<realityio::BuilderDependencyDAG::UnsatisfiedInputDescriptorInfo>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

__n128 std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_3,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_3>,void ()(std::shared_ptr<realityio::Builder>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595BF58;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_3,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_3>,void ()(std::shared_ptr<realityio::Builder>)>::operator()(void *a1, unint64_t *a2)
{
  v2 = atomic_load((*(a1[1] + 24) + 28));
  if (v2 == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v25, "accumBuildersCancel");
    realityio::ImportSession::CancelledException::CancelledException(exception, &v25);
  }

  v5 = a1[2];
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *a2;
  if (*v5 != v7)
  {
    while (*v6 != v8)
    {
      v6 += 2;
      if (v6 == v7)
      {
        v6 = *(v5 + 8);
        break;
      }
    }
  }

  v9 = a1[3];
  v10 = *v9;
  v11 = *(v9 + 8);
  if (*v9 != v11)
  {
    while (*v10 != v8)
    {
      v10 += 2;
      if (v10 == v11)
      {
        v10 = *(v9 + 8);
        break;
      }
    }
  }

  v12 = a1[4];
  v13 = v12[1];
  if (!*&v13)
  {
    goto LABEL_26;
  }

  v14 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(*a2));
  v15 = 0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v14 >> 47) ^ v14);
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
  v17 = vcnt_s8(v13);
  v17.i16[0] = vaddlv_u8(v17);
  if (v17.u32[0] > 1uLL)
  {
    v18 = v16;
    if (v16 >= *&v13)
    {
      v18 = v16 % *&v13;
    }
  }

  else
  {
    v18 = v16 & (*&v13 - 1);
  }

  v19 = *(*v12 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_26:
    result = realityio::Builder::isResync(v8, a1[5]);
    if (v6 != v7 || v10 != v11 || (result & 1) != 0)
    {
      goto LABEL_31;
    }

    return result;
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v16)
    {
      break;
    }

    if (v17.u32[0] > 1uLL)
    {
      if (v21 >= *&v13)
      {
        v21 %= *&v13;
      }
    }

    else
    {
      v21 &= *&v13 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_26;
    }

LABEL_25:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_26;
    }
  }

  if (v20[2] != v8)
  {
    goto LABEL_25;
  }

  result = realityio::Builder::isResync(v8, a1[5]);
  if (result)
  {
LABEL_31:
    v23 = a1[6];

    return std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>(v23, a2, a2);
  }

  return result;
}

void sub_2476ABB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_3,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_3>,void ()(std::shared_ptr<realityio::Builder>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_4,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_4>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595BFD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_4,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_4>,void ()(void)>::operator()(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = *(v1 + 464);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (v3 != v4)
  {
    while (1)
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](&v13, v3);
      v6 = atomic_load((*(v1 + 24) + 28));
      if (v6 == 1)
      {
        break;
      }

      if (!v15)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v15 + 48))(v15);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v13);
      v3 += 32;
      if (v3 == v4)
      {
        goto LABEL_7;
      }
    }

    **(a1 + 16) = 0;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v13);
  }

LABEL_7:
  v7 = *(v1 + 464);
  v9 = *(v7 + 24);
    ;
  }

  *(v7 + 32) = v9;
  v10 = realityio::internal::enableSignposts(0, 0);
  if (v10)
  {
    v10 = kdebug_trace();
  }

  v11 = *(realityio::logObjects(v10) + 16);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (*(v1 + 456))
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    v13 = 136315138;
    v14 = v12;
    _os_log_impl(&dword_247485000, v11, OS_LOG_TYPE_INFO, "Phase 1 complete -> loadAssets() -- updating synchronous: %s\n", &v13, 0xCu);
  }

  std::chrono::steady_clock::now();
  realityio::AssetLoadTracker::loadAssets(*(*(v1 + 464) + 128), *(*(*(v1 + 24) + 16) + 16), *(v1 + 456));
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_4,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_4>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_5,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_5>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595C058;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_5,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_5>,void ()(void)>::operator()(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(result + 8);
  v2 = *(v1 + 464);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  if (v3 != v4)
  {
    v5 = result;
    while (1)
    {
      std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, v3);
      v6 = atomic_load((*(v1 + 24) + 28));
      if (v6 == 1)
      {
        break;
      }

      if (!v8)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v8 + 48))(v8);
      result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
      v3 += 32;
      if (v3 == v4)
      {
        return result;
      }
    }

    **(v5 + 16) = 0;
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  }

  return result;
}

void sub_2476AC048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_5,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_5>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_6,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_6>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595C0D8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_6,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_6>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 464);
  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  while (v3 != v4)
  {
    if ((REEntityGetSelfEnabled() & 1) == 0)
    {
      MEMORY[0x24C1A36E0](*v3, 1);
    }

    ++v3;
  }

  v5 = atomic_load((*(v1 + 24) + 28));
  if (v5 == 1)
  {
    (*(**(*(v1 + 24) + 16) + 16))(*(*(v1 + 24) + 16));
    ChildCount = REEntityGetChildCount();
    if (ChildCount)
    {
      v7 = ChildCount;
      for (i = 0; i != v7; ++i)
      {
        (*(**(*(v1 + 24) + 16) + 16))(*(*(v1 + 24) + 16));
        REEntityGetChild();
        REEntitySetParent();
      }
    }
  }

  v9 = *(*(v1 + 464) + 96);
  if (!v9)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v10 = *(*v9 + 48);

  return v10();
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_6,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_6>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_7,std::allocator<realityio::LiveSceneManager::updateLiveSceneImpl(std::shared_ptr<realityio::EngineQueueManager>,BOOL)::$_7>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::allocator_traits<std::allocator<realityio::LiveSceneManager::CompatibilityFault>>::destroy[abi:ne200100]<realityio::LiveSceneManager::CompatibilityFault,0>(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

void std::__tree<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REComponentClass *>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REComponentClass *>>::destroy(*a1);
    std::__tree<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REComponentClass *>>::destroy(a1[1]);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

BOOL std::less<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,REComponentClass *>>::operator()[abi:ne200100](void *a1, void *a2)
{
  if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a1, a2))
  {
    return 1;
  }

  if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(a2, a1))
  {
    return 0;
  }

  return a1[1] < a2[1];
}

uint64_t std::__split_buffer<realityio::LiveSceneManager::CompatibilityFault>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::allocator_traits<std::allocator<realityio::LiveSceneManager::CompatibilityFault>>::destroy[abi:ne200100]<realityio::LiveSceneManager::CompatibilityFault,0>(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

realityio::USDDiagnostics *realityio::USDDiagnostics::USDDiagnostics(realityio::USDDiagnostics *this, const char *a2)
{
  *this = &unk_28595C1D8;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 15) = 850045863;
  *(this + 14) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 22) = 0;
  *(this + 23) = 850045863;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 30) = 0;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = *v4;
  *v4 = v5;

  MEMORY[0x24C1A8D40](this + 64, a2);
  return this;
}

void sub_2476AC5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  std::mutex::~mutex(v12);
  std::mutex::~mutex(v11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v10 + 88);
  if (*(v10 + 87) < 0)
  {
    operator delete(*(v10 + 64));
  }

  a10 = v10 + 40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10 + 16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);

  _Unwind_Resume(a1);
}

void realityio::USDDiagnostics::~USDDiagnostics(realityio::USDDiagnostics *this)
{
  *this = &unk_28595C1D8;
  if (!atomic_load(off_278EA82B8))
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr::RemoveDelegate();
  std::mutex::~mutex((this + 184));
  std::mutex::~mutex((this + 120));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 88);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v3 = (this + 40);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  realityio::USDDiagnostics::~USDDiagnostics(this);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::USDDiagnostics::Add(realityio::USDDiagnostics *this)
{
  v2 = atomic_load(off_278EA82B8);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  return MEMORY[0x2822062D0](v2, this);
}

uint64_t realityio::USDDiagnostics::shouldSaveMessage(uint64_t a1, char *a2)
{
  v4 = 0;
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2[23];
  if ((v5 & 0x80u) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v30 = v6;
  v31 = (a1 + 64);
  v7 = 1;
  v8 = off_278EA85E8;
LABEL_5:
  v9 = v8;
  v10 = &v8[v4++];
  do
  {
    v11 = *v10;
    result = strstr(v6, *v10);
    if (result)
    {
      v13 = result;
      v14 = strlen(v11);
      v15 = *(a1 + 87);
      if ((v15 & 0x8000000000000000) != 0)
      {
        v16 = *(a1 + 64);
        v15 = *(a1 + 72);
      }

      else
      {
        v16 = v31;
      }

      v7 = 0;
      v17 = strncmp((v13 + v14), v16, v15) == 0;
      result = v17;
      v17 = v17 || v4 == 5;
      v8 = v9;
      if (v17)
      {
        return result;
      }

      goto LABEL_5;
    }

    ++v4;
    ++v10;
  }

  while (v4 != 6);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  if ((v5 & 0x80u) == 0)
  {
    v18 = v5;
  }

  else
  {
    v18 = *(a2 + 1);
  }

  v19 = *(a1 + 87);
  v20 = *(a1 + 72);
  if ((v19 & 0x80u) == 0)
  {
    v21 = v31;
  }

  else
  {
    v21 = *(a1 + 64);
  }

  if ((v19 & 0x80u) == 0)
  {
    v22 = v19;
  }

  else
  {
    v22 = v20;
  }

  if (v22)
  {
    if (v18 >= v22)
    {
      v23 = &v6[v18];
      v24 = *v21;
      do
      {
        v25 = v18 - v22;
        if (v25 == -1)
        {
          break;
        }

        v26 = memchr(v6, v24, v25 + 1);
        if (!v26)
        {
          break;
        }

        v27 = v26;
        if (!memcmp(v26, v21, v22))
        {
          result = 1;
          if (v27 == v23 || v27 - v30 == -1)
          {
            return result;
          }

          goto LABEL_39;
        }

        v6 = v27 + 1;
        v18 = v23 - v6;
      }

      while (v23 - v6 >= v22);
    }
  }

  else
  {
LABEL_39:
    v28 = *realityio::logObjects(result);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      *buf = 136315138;
      v33 = v29;
      _os_log_impl(&dword_247485000, v28, OS_LOG_TYPE_DEFAULT, "Unrecognized error pattern %s", buf, 0xCu);
    }
  }

  return 1;
}

void realityio::USDDiagnostics::saveMessage(uint64_t a1, int a2, uint64_t **a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"Unknown error.";
  }

  v7 = [(__CFString *)v6 hasPrefix:@"Usd crate file version mismatch"];
  v13 = *MEMORY[0x277CCA450];
  v14[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  if (v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = a2;
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RealityIOErrorDomain" code:v9 userInfo:v8];

  v11 = *(a1 + 8);
  objc_sync_enter(v11);
  [*(a1 + 8) addObject:v10];
  objc_sync_exit(v11);

  v12 = *(a1 + 112);
  if (v12)
  {
    (*(*v12 + 48))(v12);
  }
}

id realityio::USDDiagnostics::GetError(id *this)
{
  v2 = this[1];
  objc_sync_enter(v2);
  v3 = [this[1] firstObject];
  if ([this[1] count] >= 2)
  {
    v4 = [v3 userInfo];
    v5 = [v4 mutableCopy];

    v6 = [this[1] subarrayWithRange:{1, objc_msgSend(this[1], "count") - 1}];
    [v5 setObject:v6 forKey:@"AdditionalErrors"];
    v7 = MEMORY[0x277CCA9B8];
    v8 = [v3 domain];
    v9 = [v3 code];
    v10 = [v5 copy];
    v11 = [v7 errorWithDomain:v8 code:v9 userInfo:v10];

    v3 = v11;
  }

  objc_sync_exit(v2);

  return v3;
}

void sub_2476ACC9C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id realityio::USDDiagnostics::GetErrors(id *this)
{
  v2 = this[1];
  objc_sync_enter(v2);
  v3 = this[1];
  objc_sync_exit(v2);

  return v3;
}

void realityio::USDDiagnostics::ClearErrors(id *this)
{
  obj = this[1];
  objc_sync_enter(obj);
  [this[1] removeAllObjects];
  objc_sync_exit(obj);
}

void sub_2476ACDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void realityio::USDDiagnostics::GetWarnings(std::string *__return_ptr a1@<X8>, realityio::USDDiagnostics *this@<X0>)
{
  std::mutex::lock((this + 120));
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *(this + 2), *(this + 3), 0xAAAAAAAAAAAAAAABLL * ((*(this + 3) - *(this + 2)) >> 3));

  std::mutex::unlock((this + 120));
}

void realityio::USDDiagnostics::GetStatusMessages(std::string *__return_ptr a1@<X8>, realityio::USDDiagnostics *this@<X0>)
{
  std::mutex::lock((this + 184));
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *(this + 5), *(this + 6), 0xAAAAAAAAAAAAAAABLL * ((*(this + 6) - *(this + 5)) >> 3));

  std::mutex::unlock((this + 184));
}

void realityio::USDDiagnostics::IssueError(uint64_t a1, uint64_t a2)
{
  if (realityio::USDDiagnostics::shouldSaveMessage(a1, (a2 + 40)))
  {
    v4 = *(a2 + 72);

    realityio::USDDiagnostics::saveMessage(a1, v4, (a2 + 40));
  }
}

void realityio::USDDiagnostics::IssueFatalError(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (realityio::USDDiagnostics::shouldSaveMessage(a1, a3))
  {

    realityio::USDDiagnostics::saveMessage(a1, 4, a3);
  }
}

uint64_t realityio::USDDiagnostics::IssueStatus(uint64_t a1, uint64_t a2)
{
  result = realityio::USDDiagnostics::shouldSaveMessage(a1, (a2 + 40));
  if (result)
  {
    std::mutex::lock((a1 + 184));
    std::vector<std::string>::push_back[abi:ne200100](a1 + 40, (a2 + 40));
    std::mutex::unlock((a1 + 184));
    result = *(a1 + 112);
    if (result)
    {
      v5 = *(*result + 48);

      return v5();
    }
  }

  return result;
}

uint64_t realityio::USDDiagnostics::IssueWarning(uint64_t a1, uint64_t a2)
{
  result = realityio::USDDiagnostics::shouldSaveMessage(a1, (a2 + 40));
  if (result)
  {
    std::mutex::lock((a1 + 120));
    std::vector<std::string>::push_back[abi:ne200100](a1 + 16, (a2 + 40));
    std::mutex::unlock((a1 + 120));
    result = *(a1 + 112);
    if (result)
    {
      v5 = *(*result + 48);

      return v5();
    }
  }

  return result;
}

uint64_t RIOPxrSdfAssetPathGetTypeID()
{
  if (RIOPxrSdfAssetPathGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfAssetPathGetTypeID::onceToken, &__block_literal_global_32);
  }

  return RIOPxrSdfAssetPathGetTypeID::typeID;
}

void __RIOPxrSdfAssetPathGetTypeID_block_invoke()
{
  if (!RIOPxrSdfAssetPathGetTypeID::typeID)
  {
    RIOPxrSdfAssetPathGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrSdfAssetPathIsLessThan(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return pxrInternal__aapl__pxrReserved__::SdfAssetPath::operator<();
  }

  else
  {
    return 0;
  }
}

uint64_t RIOPxrSdfAssetPathCreateEmptyPath()
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v3);
  RIOPxrSdfAssetPathCreate<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v3);
  v1 = v0;
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  return v1;
}

__n128 RIOPxrSdfAssetPathCreate<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(__int128 *a1)
{
  if (RIOPxrSdfAssetPathGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfAssetPathGetTypeID::onceToken, &__block_literal_global_32);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = *a1;
    *(Instance + 32) = *(a1 + 2);
    *(Instance + 16) = v4;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *a1 = 0;
    result = *(a1 + 24);
    *(Instance + 56) = *(a1 + 5);
    *(Instance + 40) = result;
    *(a1 + 4) = 0;
    *(a1 + 5) = 0;
    *(a1 + 3) = 0;
  }

  return result;
}

BOOL RIOPxrSdfAssetPathIsEmpty(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 39);
    if (v1 < 0)
    {
      v1 = *(result + 24);
    }

    return v1 == 0;
  }

  return result;
}

uint64_t RIOPxrSdfAssetPathCreateFromCString(char *__s)
{
  if (__s && *__s)
  {
    std::string::basic_string[abi:ne200100]<0>(v4, __s);
    MEMORY[0x24C1A4E40](v6, v4);
    RIOPxrSdfAssetPathCreate<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v6);
    v2 = v1;
    if (v9 < 0)
    {
      operator delete(__p);
    }

    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    if (v5 < 0)
    {
      operator delete(v4[0]);
    }

    return v2;
  }

  else
  {

    return RIOPxrSdfAssetPathCreateEmptyPath();
  }
}

void sub_2476AD334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfAssetPathCreateFromCStringWithResolvedPath(char *__s, char *a2)
{
  if (__s && a2 && *__s && *a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, __s);
    std::string::basic_string[abi:ne200100]<0>(v6, a2);
    MEMORY[0x24C1A4E50](v10, v8, v6);
    RIOPxrSdfAssetPathCreate<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v10);
    v4 = v3;
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    if (v9 < 0)
    {
      operator delete(v8[0]);
    }

    return v4;
  }

  else
  {

    return RIOPxrSdfAssetPathCreateEmptyPath();
  }
}

void sub_2476AD438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21)
{
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

CFStringRef RIOPxrSdfAssetPathAssetPathCopyString(uint64_t a1)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  v1 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    v1 = *v1;
  }

  return CFStringCreateWithCString(0, v1, 0x8000100u);
}

CFStringRef RIOPxrSdfAssetPathResolvedPathCopyString(uint64_t a1)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  v1 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v1 = *v1;
  }

  return CFStringCreateWithCString(0, v1, 0x8000100u);
}

void _RIOPxrSdfAssetPathCFFinalize(void **a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(a1[5]);
  }

  if (*(a1 + 39) < 0)
  {
    v2 = a1[2];

    operator delete(v2);
  }
}

BOOL _RIOPxrSdfAssetPathCFEqual(void *a1, void *a2)
{
  v2 = *(a1 + 39);
  if (v2 >= 0)
  {
    v3 = *(a1 + 39);
  }

  else
  {
    v3 = a1[3];
  }

  v4 = *(a2 + 39);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[3];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v8 = a1 + 2;
  }

  else
  {
    v8 = a1[2];
  }

  if (v5 >= 0)
  {
    v9 = a2 + 2;
  }

  else
  {
    v9 = a2[2];
  }

  if (memcmp(v8, v9, v3))
  {
    return 0;
  }

  v10 = *(a1 + 63);
  if (v10 >= 0)
  {
    v11 = *(a1 + 63);
  }

  else
  {
    v11 = a1[6];
  }

  v12 = *(a2 + 63);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = a2[6];
  }

  if (v11 != v12)
  {
    return 0;
  }

  v16 = a1[5];
  v15 = a1 + 5;
  v14 = v16;
  if (v10 >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v20 = a2[5];
  v19 = a2 + 5;
  v18 = v20;
  if (v13 >= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v18;
  }

  return memcmp(v17, v21, v11) == 0;
}

unint64_t _RIOPxrSdfAssetPathCFHash(const char *a1)
{
  v2 = 0;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::TfHash::_CombineImpl<pxrInternal__aapl__pxrReserved__::Tf_HashState,std::string const&,std::string const&>(&v2, a1 + 16, (a1 + 40));
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

atomic_uint **realityio::mtlxFromUsd@<X0>(void *a2@<X8>)
{
  v6[37] = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::USDInitializeConfiguration(v6);
  pxrInternal__aapl__pxrReserved__::usd_initialize();
  pxrInternal__aapl__pxrReserved__::USDInitializeConfiguration::~USDInitializeConfiguration(v6);
  v3 = pxrInternal__aapl__pxrReserved__::UsdStage::Open();
  if (v5)
  {
    RIO_MTLX::Document::createDocument<RIO_MTLX::Document>(v3);
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "");
  return pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v5);
}

void sub_2476ADD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, std::__shared_weak_count *a42, atomic_uint *a43, __int16 a44, char a45, char a46)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v46 - 104));
  if ((a33 & 7) != 0)
  {
    atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a34 & 7) != 0)
  {
    atomic_fetch_add_explicit((a34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a42);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a43);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::convertMaterial(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2)
{
  v89 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v73 = MEMORY[0x277D86758] + 16;
  if (v74 && (*(v74 + 57) & 8) == 0 && ((*(MEMORY[0x277D86758] + 48))(&v73) & 1) != 0)
  {
    v72 = 0;
    MEMORY[0x24C1A5DE0](&v79, "mtlx");
    v2 = atomic_load(MEMORY[0x277D86568]);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
    }

    v3 = *(v2 + 216);
    v80 = v3;
    if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v80 &= 0xFFFFFFFFFFFFFFF8;
    }

    v85 = 0;
    v86 = 0;
    v87 = 0;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const*,pxrInternal__aapl__pxrReserved__::TfToken const*>(&v85, &v79, &v81, 2uLL);
    pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::ComputeSurfaceSource();
    v58.__r_.__value_.__r.__words[0] = &v85;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v58);
    for (i = 8; i != -8; i -= 8)
    {
      v5 = *(&v79 + i);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    if (v71 && (*(v71 + 57) & 8) == 0 && ((*(v70 + 32))(&v70) & 1) != 0)
    {
      v69[0] = 0;
      v69[1] = 0;
      v68 = v69;
      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInputs(&v66, &v70);
      v7 = v66;
      v6 = v67;
      if (v66 != v67)
      {
        v51 = v67;
        do
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v85, (v7 + 8), (v7 + 16));
          Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(v7);
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v62, &v85, Name);
          if ((v88 & 7) != 0)
          {
            atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v87);
          if (v86)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v86);
          }

          if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v62))
          {
            MEMORY[0x24C1A7410](&v79, v7, 0);
            if (v82)
            {
              v9 = &v79;
              if (v83 >= 2)
              {
                v9 = v79;
              }

              pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v85, v9 + 1, v9 + 4);
              v10 = v85 != *a2 || v86 != *(a2 + 1) || v87 != *(a2 + 2) || (*(a2 + 3) ^ v88) > 7;
              if ((v88 & 7) != 0)
              {
                atomic_fetch_add_explicit((v88 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v87);
              if (v86)
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v86);
              }

              if (v10)
              {
                v50 = v7;
                v11 = v83;
                v12 = v79;
                pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                if (v11 >= 2)
                {
                  v13 = v12;
                }

                else
                {
                  v13 = &v79;
                }

                v14 = v13[3];
                v58.__r_.__value_.__r.__words[0] = MEMORY[0x277D86728] + 16;
                v59 = v14;
                if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v59 &= 0xFFFFFFFFFFFFFFF8;
                }

                v15 = &v79;
                if (v11 >= 2)
                {
                  v15 = v12;
                }

                v16 = v15[4];
                v58.__r_.__value_.__r.__words[0] = MEMORY[0x277D867A8] + 16;
                v60 = v16;
                if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v60 &= 0xFFFFFFFFFFFFFFF8;
                }

                v17 = &v79;
                if (v11 >= 2)
                {
                  v17 = v12;
                }

                v61 = *(v17 + 5);
                pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v54, &v58.__r_.__value_.__l.__size_, &v58.__r_.__value_.__r.__words[2]);
                pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v85, &v54);
                v7 = v50;
                v18 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(&v68, &v85);
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v85);
                if (v69 == v18)
                {
                  v20 = *a1;
                  v19 = *(a1 + 8);
                  if (v19)
                  {
                    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
                  }

                  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                  v78[3] = MEMORY[0x277D86778] + 16;
                  v21 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v54);
                  if ((*v21 & 0xFFFFFFFFFFFFFFF8) != 0)
                  {
                    EmptyString = (*v21 & 0xFFFFFFFFFFFFFFF8) + 16;
                  }

                  else
                  {
                    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
                  }

                  RIO_MTLX::Element::addChild<RIO_MTLX::NodeGraph>(v20, EmptyString);
                }

                if ((v57 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v56);
                if (v55)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v55);
                }

                if ((v60 & 7) != 0)
                {
                  atomic_fetch_add_explicit((v60 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                MEMORY[0x24C1A5890](&v58);
              }
            }

            pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::UsdShadeConnectionSourceInfo,1u>::~TfSmallVector(&v79);
            v6 = v51;
          }

          if ((v65 & 7) != 0)
          {
            atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v64);
          if (v63)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v63);
          }

          v7 += 32;
        }

        while (v7 != v6);
      }

      v85 = &v66;
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeInput>::__destroy_vector::operator()[abi:ne200100](&v85);
      v78[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(&v76, "unknownNodeType");
      ShaderId = pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetShaderId(&v70, v78);
      if (ShaderId)
      {
        if ((v78[0] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v24 = (v78[0] & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          v24 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(ShaderId);
        }

        std::string::basic_string[abi:ne200100]<0>(&v85, "ND_");
        std::string::basic_string[abi:ne200100]<0>(&v79, "_surfaceshader");
        v25 = HIBYTE(v87);
        if (v87 >= 0)
        {
          v26 = &v85;
        }

        else
        {
          v26 = v85;
        }

        v27 = *(v24 + 23);
        v28 = *(v24 + 8);
        if (v27 >= 0)
        {
          v29 = *(v24 + 23);
        }

        else
        {
          v29 = *(v24 + 8);
        }

        v30 = strlen(v26);
        if (v29 >= v30 && (v27 >= 0 ? (v31 = v24) : (v31 = *v24), !strncmp(v31, v26, v30) && ((v32 = HIBYTE(v81), v81 >= 0) ? (v33 = &v79) : (v33 = v79), (v34 = strlen(v33), v29 >= v34) && !strcmp(&v31[v29 - v34], v33))))
        {
          if ((v32 & 0x80u) == 0)
          {
            v39 = v32;
          }

          else
          {
            v39 = v80;
          }

          if (v39)
          {
            v40 = &v31[v29];
            if (v29 >= v39)
            {
              v47 = *v33;
              v48 = v31;
              do
              {
                if (v29 - v39 == -1)
                {
                  break;
                }

                v49 = memchr(v48, v47, v29 - v39 + 1);
                if (!v49)
                {
                  break;
                }

                v41 = v49;
                if (!memcmp(v49, v33, v39))
                {
                  goto LABEL_108;
                }

                v48 = (v41 + 1);
                v29 = v40 - (v41 + 1);
              }

              while (v29 >= v39);
            }

            v41 = v40;
LABEL_108:
            v42 = v41 - v31;
            if (v41 == v40)
            {
              v42 = -1;
            }
          }

          else
          {
            v42 = 0;
          }

          if ((v25 & 0x80u) == 0)
          {
            v43 = v25;
          }

          else
          {
            v43 = v86;
          }

          std::string::basic_string(&v58, v24, v43, v42 - v43, &v75);
          v44 = MEMORY[0x24C1A5E00](&v77, &v58);
          if ((v77.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v45 = (v77.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) + 16;
          }

          else
          {
            v45 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v44);
          }

          if (*(v45 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v84, *v45, *(v45 + 8));
          }

          else
          {
            v46 = *v45;
            v84.__r_.__value_.__r.__words[2] = *(v45 + 16);
            *&v84.__r_.__value_.__l.__data_ = v46;
          }

          if ((v77.__r_.__value_.__s.__data_[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v77.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v58.__r_.__value_.__l.__data_);
          }
        }

        else if (v27 < 0)
        {
          std::string::__init_copy_ctor_external(&v84, *v24, v28);
        }

        else
        {
          v35 = *v24;
          v84.__r_.__value_.__r.__words[2] = *(v24 + 16);
          *&v84.__r_.__value_.__l.__data_ = v35;
        }

        if (SHIBYTE(v81) < 0)
        {
          operator delete(v79);
        }

        if (SHIBYTE(v87) < 0)
        {
          operator delete(v85);
        }

        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }

        v76 = v84;
      }

      v36 = *a1;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v79, a2);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v79);
      ValidIdentifier = pxrInternal__aapl__pxrReserved__::TfMakeValidIdentifier();
      RIO_MTLX::SURFACE_SHADER_TYPE_STRING(ValidIdentifier);
      RIO_MTLX::GraphElement::addNode(v36, &v76, &v85);
    }

    MEMORY[0x24C1A5280](&v70);
    if ((v72 & 7) != 0)
    {
      atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return MEMORY[0x24C1A5510](&v73);
}

void sub_2476AFC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if ((STACK[0x2E0] & 7) != 0)
  {
    atomic_fetch_add_explicit((STACK[0x2E0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a51 & 7) != 0)
  {
    atomic_fetch_add_explicit((a51 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x24C1A5510](&a52, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void anonymous namespace::setInput(void *a1, RIO_MTLX::Input **a2, void *a3, pxrInternal__aapl__pxrReserved__::UsdProperty *this, std::string *a5)
{
  *a1 = 0;
  a1[1] = 0;
  if (a5->__r_.__value_.__r.__words[0] <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdProperty::GetBaseName(v30, this);
    if (v30 == a5)
    {
      if ((v30[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    else
    {
      if ((a5->__r_.__value_.__r.__words[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((a5->__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      a5->__r_.__value_.__l.__data_ = v30[0];
    }
  }

  MEMORY[0x24C1A5DE0](v30, "asset");
  v8 = *a3 ^ v30[0];
  if ((v30[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v8 <= 7)
  {
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v30);
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::SdfAssetPath>();
  }

  MEMORY[0x24C1A5DE0](v30, "float2");
  v9 = *a3 ^ v30[0];
  if ((v30[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v9 <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2f>();
  }

  MEMORY[0x24C1A5DE0](v30, "float3");
  v10 = *a3 ^ v30[0];
  if ((v30[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v10 <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec3f>();
  }

  MEMORY[0x24C1A5DE0](v30, "float");
  v11 = v30[0] ^ *a3;
  if ((v30[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v11 <= 7)
  {
    LODWORD(v29[0]) = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>();
  }

  MEMORY[0x24C1A5DE0](v30, "color3f");
  v12 = v30[0] ^ *a3;
  if ((v30[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v12 <= 7)
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec3f>();
  }

  MEMORY[0x24C1A5DE0](v30, "int");
  v13 = v30[0] ^ *a3;
  if ((v30[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v30[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v13 <= 7)
  {
    LODWORD(v32) = 0;
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<int>();
  }

  v14 = *a3 & 0xFFFFFFFFFFFFFFF8;
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

  fprintf(*MEMORY[0x277D85DF8], "\n Unhandled input type = %s\n", v15);
  v16 = a5->__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8;
  if (v16)
  {
    v17 = (v16 + 16);
    if (*(v16 + 39) < 0)
    {
      v17 = *v17;
    }
  }

  else
  {
    v17 = "";
  }

  v18 = *a2;
  v19 = std::string::basic_string[abi:ne200100]<0>(v30, v17);
  __asm { FMOV            V0.2S, #1.0 }

  __p[0] = _D0;
  LODWORD(__p[1]) = 1065353216;
  v25 = RIO_MTLX::EMPTY_STRING(v19);
  RIO_MTLX::InterfaceElement::setInputValue<RIO_MTLX::Color3>(v26, v18, v30, __p, v25);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }
}

void sub_2476B0D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  v33 = *(v31 + 8);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

void *anonymous namespace::mtlxTypeString(_anonymous_namespace_ *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  MEMORY[0x24C1A5DE0](&v12, "color3f");
  v4 = v12 ^ *a2;
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v4 >= 8)
  {
    MEMORY[0x24C1A5DE0](&v12, "float");
    v6 = v12 ^ *a2;
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if (v6 >= 8)
    {
      MEMORY[0x24C1A5DE0](&v12, "float3");
      v7 = v12 ^ *a2;
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v7 >= 8)
      {
        MEMORY[0x24C1A5DE0](&v12, "int");
        v8 = v12 ^ *a2;
        if ((v12 & 7) != 0)
        {
          atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (v8 >= 8)
        {
          v9 = *a2 & 0xFFFFFFFFFFFFFFF8;
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

          fprintf(*MEMORY[0x277D85DF8], "\nUnhandled typetoke %s \n", v10);
          v5 = "";
        }

        else
        {
          v5 = "int";
        }
      }

      else
      {
        v5 = "float3";
      }
    }

    else
    {
      v5 = "float";
    }
  }

  else
  {
    v5 = "color3";
  }

  return std::string::basic_string[abi:ne200100]<0>(this, v5);
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::Node>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::Node>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::Node>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::Node>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::Node>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::Node>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::Node>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::Node>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::Node>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::UsdShadeConnectionSourceInfo,1u>::~TfSmallVector(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 60);
  if (v2 >= 2)
  {
    a1 = *a1;
  }

  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = 56 * v3;
    do
    {
      v5 = *(a1 + 32);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      a1 = MEMORY[0x24C1A5890]() + 56;
      v4 -= 56;
    }

    while (v4);
    v2 = *(v1 + 60);
  }

  if (v2 >= 2)
  {
    free(*v1);
  }

  return v1;
}

void RIO_MTLX::InterfaceElement::setInputValue<RIO_MTLX::Color3>(RIO_MTLX::Element **a1, RIO_MTLX::Input *a2, uint64_t *a3, float *a4, const std::string *a5)
{
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(a2, a3, a1);
  v11 = *a1;
  if (!*a1)
  {
    RIO_MTLX::DEFAULT_TYPE_STRING(v10);
    RIO_MTLX::InterfaceElement::addInput(a2, a3);
  }

  size = HIBYTE(a5->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a5->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v10 = RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE();
    a5 = &RIO_MTLX::TypedValue<RIO_MTLX::Color3>::TYPE(void)::v;
  }

  v13 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v10);
  RIO_MTLX::Element::setAttribute(v11, v13, a5);
  RIO_MTLX::toValueString<RIO_MTLX::Color3>(a4, &__p);
  v15 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v14);
  RIO_MTLX::Element::setAttribute(v11, v15, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2476B1270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void RIO_MTLX::InterfaceElement::setInputValue<int>(RIO_MTLX::Element **a1, RIO_MTLX::Input *a2, uint64_t *a3, unsigned int *a4, const std::string *a5)
{
  RIO_MTLX::Element::getChildOfType<RIO_MTLX::Input>(a2, a3, a1);
  v11 = *a1;
  if (!*a1)
  {
    RIO_MTLX::DEFAULT_TYPE_STRING(v10);
    RIO_MTLX::InterfaceElement::addInput(a2, a3);
  }

  size = HIBYTE(a5->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a5->__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v10 = RIO_MTLX::TypedValue<int>::TYPE();
    a5 = RIO_MTLX::TypedValue<int>::TYPE(void)::v;
  }

  v13 = RIO_MTLX::TypedElement::TYPE_ATTRIBUTE(v10);
  RIO_MTLX::Element::setAttribute(v11, v13, a5);
  v14 = RIO_MTLX::toValueString<int>(a4, &__p);
  v15 = RIO_MTLX::ValueElement::VALUE_ATTRIBUTE(v14);
  RIO_MTLX::Element::setAttribute(v11, v15, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2476B13AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *pxrInternal__aapl__pxrReserved__::TfSmallVector<pxrInternal__aapl__pxrReserved__::UsdAttribute,1u>::~TfSmallVector(unsigned int *a1)
{
  v2 = a1[9];
  v3 = a1;
  if (v2 >= 2)
  {
    v3 = *a1;
  }

  v4 = a1[8];
  if (v4)
  {
    v5 = 32 * v4;
    v6 = (v3 + 4);
    do
    {
      v7 = *(v6 + 8);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v6);
      v8 = *(v6 - 8);
      if (v8)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
      }

      v6 += 32;
      v5 -= 32;
    }

    while (v5);
    v2 = a1[9];
  }

  if (v2 >= 2)
  {
    free(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::InterfaceElement>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::InterfaceElement>>>>::destroy(*a1);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::InterfaceElement>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<RIO_MTLX::InterfaceElement>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 4));

    operator delete(a1);
  }
}

uint64_t realityio::internal::dumpDiagnostics(const void **a1, atomic_uint **a2, uint64_t a3, uint64_t a4)
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v4 = a1[1];
  }

  if (!v4 || (pxrInternal__aapl__pxrReserved__::TfIsDir() & 1) == 0 && !pxrInternal__aapl__pxrReserved__::TfMakeDirs())
  {
    return 0;
  }

  v66[0] = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(v66);
  if (*(a1 + 23) >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  std::string::basic_string[abi:ne200100](&v70, v7 + 14);
  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v70;
  }

  else
  {
    v8 = v70.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, "/snapshot.usdz");
  std::string::basic_string[abi:ne200100]<0>(&__stream, "rootLayer");
  std::string::basic_string[abi:ne200100]<0>(&__p, ".usda");
  pxrInternal__aapl__pxrReserved__::ArchMakeTmpFileName();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(__stream);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v66);
  v76 = 0;
  v77 = 0;
  __stream = &v76;
  pxrInternal__aapl__pxrReserved__::UsdStage::Export();
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__stream, v76);
  MEMORY[0x24C1A4E40](&__stream, &v72);
  memset(&__p, 0, sizeof(__p));
  pxrInternal__aapl__pxrReserved__::UsdUtilsCreateNewUsdzPackage();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v79 < 0)
  {
    operator delete(v78);
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(__stream);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(v66);
  if (*(a1 + 23) >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  std::string::basic_string[abi:ne200100](&__s, v10 + 17);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_s = &__s;
  }

  else
  {
    p_s = __s.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if (*(a1 + 23) >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    memmove(p_s, v12, v10);
  }

  strcpy(p_s + v10, "/snapshot.reality");
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
LABEL_80:
      operator delete(__s.__r_.__value_.__l.__data_);
      goto LABEL_81;
    }

    std::string::__init_copy_ctor_external(&v72, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    v13 = &__s;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __s.__r_.__value_.__r.__words[0];
    }

LABEL_49:
    if (v13->__r_.__value_.__s.__data_[0] != 47)
    {
      getcwd(&__stream, 0x400uLL);
      std::string::basic_string[abi:ne200100]<0>(&v70, &__stream);
      v15 = std::string::append(&v70, "/");
      v16 = *&v15->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &__s;
      }

      else
      {
        v17 = __s.__r_.__value_.__r.__words[0];
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __s.__r_.__value_.__l.__size_;
      }

      v19 = std::string::append(&__p, v17, size);
      v20 = v19->__r_.__value_.__r.__words[0];
      *v80 = v19->__r_.__value_.__l.__size_;
      *&v80[7] = *(&v19->__r_.__value_.__r.__words[1] + 7);
      v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
      }

      v72.__r_.__value_.__r.__words[0] = v20;
      v72.__r_.__value_.__l.__size_ = *v80;
      *(&v72.__r_.__value_.__r.__words[1] + 7) = *&v80[7];
      *(&v72.__r_.__value_.__s + 23) = v21;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }
    }

    ServiceLocator = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](ServiceLocator);
    __p.__r_.__value_.__r.__words[0] = RESceneCreate();
    RESceneAddEntity();
    v70.__r_.__value_.__r.__words[0] = REAssetManagerSceneAssetCreate();
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v72;
    }

    else
    {
      v23 = v72.__r_.__value_.__r.__words[0];
    }

    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
    *v80 = RERealityFileWritingParametersCreate();
    RERealityFileWritingParametersSetMajorVersion();
    v67[0] = RERealityFileWriterCreateWithParameters();
    if (v67[0])
    {
      RERealityFileWriterSetMetadataString();
      v25 = v24;
      [v24 cStringUsingEncoding:4];
      if (RERealityFileWriterOpen())
      {
        v64[0] = REAssetManagerCreateAssetRequest();
        REAssetLoadRequestAddAsset();
        REAssetLoadRequestWaitForCompletion();
        v74 = RERealityFileAssetWriteReportCreate();
        v73 = REAssetWithMetadataCreate();
        v66[1] = v73;
        v26 = RERealityFileWriterWriteAssetArrayAndDependencies();
        v27 = RERealityFileAssetWriteReportGetError();
        if (v27)
        {
          v28 = CFErrorCopyDescription(v27);
          realityio::CFStringCopyUTF8String(&__stream, v28);
          if (__stream == 1)
          {
            v29 = &v76;
            if (SHIBYTE(v78) < 0)
            {
              v29 = v76;
            }

            fprintf(*MEMORY[0x277D85DF8], "\n ERROR %s\n", v29);
            if ((__stream & 1) != 0 && SHIBYTE(v78) < 0)
            {
              operator delete(v76);
            }
          }
        }

        else if (v26)
        {
          RERealityFileWriterClose();
        }

        realityio::WrappedRERef<REAssetWithMetadata *>::~WrappedRERef(&v73);
        realityio::WrappedRERef<RERealityFileAssetWriteReport *>::~WrappedRERef(&v74);
        realityio::WrappedRERef<REAssetLoadRequest *>::~WrappedRERef(v64);
      }
    }

    realityio::WrappedRERef<RERealityFileWriter *>::~WrappedRERef(v67);
    realityio::WrappedRERef<RERealityFileWritingParameters *>::~WrappedRERef(v80);

    realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v70);
    realityio::WrappedRERef<REScene *>::~WrappedRERef(&__p);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (*(&__s.__r_.__value_.__s + 23))
  {
    v72 = __s;
    v13 = &__s;
    goto LABEL_49;
  }

LABEL_81:
  std::string::basic_string[abi:ne200100]<0>(v64, "reality.json");
  v30 = REEngineGetServiceLocator();
  v31 = MEMORY[0x24C1A4230](v30);
  v74 = RESceneCreate();
  RESceneAddEntity();
  v73 = REAssetManagerSceneAssetCreate();
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths();
  REAssetSerializeToJSON();
  if (SHIBYTE(v77) < 0)
  {
    operator delete(__stream);
  }

  std::string::basic_string[abi:ne200100]<0>(&v72, "assets");
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths();
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (pxrInternal__aapl__pxrReserved__::TfIsDir() & 1) != 0 || (pxrInternal__aapl__pxrReserved__::TfMakeDirs())
  {
    *&v72.__r_.__value_.__r.__words[1] = 0uLL;
    v72.__r_.__value_.__r.__words[0] = &v72.__r_.__value_.__l.__size_;
    std::string::basic_string[abi:ne200100]<0>(&v70, "assetManifest.json");
    pxrInternal__aapl__pxrReserved__::TfStringCatPaths();
    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v33 = fopen(p_p, "w");
    if (v33)
    {
      std::string::basic_string[abi:ne200100]<0>(&__s, "assetLinks.sh");
      pxrInternal__aapl__pxrReserved__::TfStringCatPaths();
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v70;
      }

      else
      {
        v34 = v70.__r_.__value_.__r.__words[0];
      }

      v35 = fopen(v34, "w");
      if (v35)
      {
        fwrite("/bin/mkdir -p assetLinks\n", 0x19uLL, 1uLL, v35);
        fwrite("{\n", 2uLL, 1uLL, v33);
        v36 = v72.__r_.__value_.__r.__words[0];
        if (v72.__r_.__value_.__l.__data_ != &v72.__r_.__value_.__r.__words[1])
        {
          v37 = 0;
          do
          {
            Type = REAssetGetType();
            v39 = Type;
            if (Type)
            {
              CStringPtr = CFStringGetCStringPtr(Type, 0x8000100u);
              if (!CStringPtr)
              {
                Length = CFStringGetLength(v39);
                MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
                v43 = MaximumSizeForEncoding;
                if (MaximumSizeForEncoding >= 0x7FFFFFFFFFFFFFF8)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (MaximumSizeForEncoding >= 0x17)
                {
                  operator new();
                }

                *(&__s.__r_.__value_.__s + 23) = MaximumSizeForEncoding;
                if (MaximumSizeForEncoding)
                {
                  bzero(&__s, MaximumSizeForEncoding);
                }

                __s.__r_.__value_.__s.__data_[v43] = 0;
                if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v44 = &__s;
                }

                else
                {
                  v44 = __s.__r_.__value_.__r.__words[0];
                }

                CFStringGetCString(v39, v44, v43, 0x8000100u);
                if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v45 = &__s;
                }

                else
                {
                  v45 = __s.__r_.__value_.__r.__words[0];
                }

                v46 = strlen(v45);
                std::string::resize(&__s, v46, 0);
                goto LABEL_118;
              }
            }

            else
            {
              CStringPtr = "";
            }

            std::string::basic_string[abi:ne200100]<0>(&__s, CStringPtr);
LABEL_118:
            AssetId = REAssetGetAssetId();
            pxrInternal__aapl__pxrReserved__::TfMakeValidIdentifier();
            if (v68 >= 0)
            {
              v49 = v67;
            }

            else
            {
              v49 = v67[0];
            }

            pxrInternal__aapl__pxrReserved__::TfStringPrintf(v80, "%llu.%s.json", v48, v37, v49);
            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            pxrInternal__aapl__pxrReserved__::TfStringCatPaths();
            REAssetSerializeToJSON();
            if (v81 >= 0)
            {
              v50 = v80;
            }

            else
            {
              v50 = *v80;
            }

            fprintf(v35, "/bin/ln -sf ../%s assetLinks/asset.%llu\n", v50, AssetId);
            if (v81 >= 0)
            {
              v51 = v80;
            }

            else
            {
              v51 = *v80;
            }

            fprintf(v33, "  %s: %llu", v51, AssetId);
            if (v37 != v72.__r_.__value_.__r.__words[2] - 1)
            {
              fputc(44, v33);
            }

            fputc(10, v33);
            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            if (v81 < 0)
            {
              operator delete(*v80);
            }

            if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__s.__r_.__value_.__l.__data_);
            }

            v52 = *(v36 + 8);
            if (v52)
            {
              do
              {
                v53 = v52;
                v52 = v52->__r_.__value_.__r.__words[0];
              }

              while (v52);
            }

            else
            {
              do
              {
                v53 = *(v36 + 16);
                v54 = v53->__r_.__value_.__r.__words[0] == v36;
                v36 = v53;
              }

              while (!v54);
            }

            ++v37;
            v36 = v53;
          }

          while (v53 != &v72.__r_.__value_.__r.__words[1]);
        }

        fwrite("}\n", 2uLL, 1uLL, v33);
        fclose(v33);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(v72.__r_.__value_.__l.__size_);
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(__stream);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v73);
  realityio::WrappedRERef<REScene *>::~WrappedRERef(&v74);
  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "info.json");
  pxrInternal__aapl__pxrReserved__::TfStringCatPaths();
  pxrInternal__aapl__pxrReserved__::TfSafeOutputFile::Replace();
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  fwrite("{\n", 2uLL, 1uLL, __stream);
  v55 = __stream;
  v56 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRE"];
  v57 = *MEMORY[0x277CBED58];
  v58 = [v56 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];
  v59 = [v58 intValue];

  fprintf(v55, "\tCoreREVersion: %lu,\n", v59);
  v60 = __stream;
  v61 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRealityIO"];
  v62 = [v61 objectForInfoDictionaryKey:v57];
  LODWORD(v57) = [v62 intValue];

  fprintf(v60, "\tCoreRealityIOVersion: %lu\n", v57);
  v14 = 1;
  fwrite("}\n", 2uLL, 1uLL, __stream);
  MEMORY[0x24C1A5410](&__stream);
  return v14;
}

void sub_2476B2110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a55, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  realityio::WrappedRERef<REAssetWithMetadata *>::~WrappedRERef(&a53);
  realityio::WrappedRERef<RERealityFileAssetWriteReport *>::~WrappedRERef(&a55);
  realityio::WrappedRERef<REAssetLoadRequest *>::~WrappedRERef(&a13);
  realityio::WrappedRERef<RERealityFileWriter *>::~WrappedRERef(&a21);
  realityio::WrappedRERef<RERealityFileWritingParameters *>::~WrappedRERef((v61 - 128));

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&a33);
  realityio::WrappedRERef<REScene *>::~WrappedRERef(&a39);
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t *realityio::WrappedRERef<REAssetWithMetadata *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t *realityio::WrappedRERef<RERealityFileAssetWriteReport *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t *realityio::WrappedRERef<RERealityFileWriter *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t *realityio::WrappedRERef<RERealityFileWritingParameters *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t *realityio::internal::anonymous namespace::getDependentAssets(unint64_t a1, uint64_t a2, uint64_t **a3)
{
  v6 = a3 + 1;
  v5 = a3[1];
  if (!v5)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = v5[4];
      if (v8 <= a1)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_7;
      }
    }

    if (v8 >= a1)
    {
      break;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v15 = REAssetCopyDependencyArray();
  Size = REAssetDynamicArrayGetSize();
  if (Size)
  {
    for (i = 0; i != Size; ++i)
    {
      Asset = REAssetDynamicArrayGetAsset();
      for (j = *v6; j; j = *j)
      {
        v13 = j[4];
        if (Asset >= v13)
        {
          if (v13 >= Asset)
          {
            goto LABEL_16;
          }

          ++j;
        }
      }

LABEL_16:
      ;
    }
  }

  return realityio::WrappedRERef<REAssetDynamicArray *>::~WrappedRERef(&v15);
}

void sub_2476B26B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedRERef<REAssetDynamicArray *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

void realityio::PhysicsRigidBodyComponentBuilder::PhysicsRigidBodyComponentBuilder(realityio::PhysicsRigidBodyComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  __src[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__src, "PhysicsRigidBodyComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kPhysicsRigidBodyComponentBuilderIdentifier);
  realityio::generatePhysicsRigidBodyDirtyStageSubscription(&v4);
  v7[0] = &unk_28595C348;
  v7[3] = v7;
  v6[0] = &unk_28595C3C8;
  v6[3] = v6;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, __src, __p, &v4, v7, v6);
}

void sub_2476B2834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
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

uint64_t realityio::PhysicsRigidBodyComponentBuilder::run(realityio::PhysicsRigidBodyComponentBuilder *this, realityio::Inputs *a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v69, v5, v4);
  v68 = 0;
  MEMORY[0x24C1A5DE0](buf, "physics:mass");
  v7 = atomic_load(MEMORY[0x277D86598]);
  if (!v7)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::AaplUsdPhysicsTokensType>>::_TryToCreateData(MEMORY[0x277D86598]);
  }

  UsdPhysicsAttributeDoubleValue = realityio::getUsdPhysicsAttributeDoubleValue(&v69, buf, (v7 + 64), &v68, v6);
  if ((buf[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((*buf & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  size = buf;
  if (UsdPhysicsAttributeDoubleValue)
  {
    v10 = *(realityio::logObjects(UsdPhysicsAttributeDoubleValue) + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v66, &v69);
      v2 = &v66;
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v66);
      *buf = 136315138;
      *&buf[4] = Text;
      _os_log_impl(&dword_247485000, v10, OS_LOG_TYPE_INFO, "Updating entity's rigid body for prim %s", buf, 0xCu);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v66);
    }

    v13 = realityio::EntityBuilder::kInputName(v12);
    realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v13, &v66);
    if (v66)
    {
      v14 = v67;
      v65 = v67;
      if (v67)
      {
        v15 = RERetain();
        v16 = realityio::PhysicsMaterialAssetBuilder::kOutputName(v15);
        realityio::Inputs::_getValue<REAsset *>(a2, v16, v61);
        if (v61[0] != 1 || !v62)
        {
          v35 = *(realityio::logObjects(v17) + 24);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_247485000, v35, OS_LOG_TYPE_DEFAULT, "No physics material asset exists for the rigid body. The rigid body's component will not be created", buf, 2u);
          }

          goto LABEL_69;
        }

        v18 = realityio::PhysicsColliderComponentBuilder::kOutputName(v17);
        v76 = 0;
        v77 = 0;
        v19 = *(a2 + 3);
        if (v19)
        {
          v77 = std::__shared_weak_count::lock(v19);
          if (v77)
          {
            v76 = *(a2 + 2);
          }
        }

        MEMORY[0x24C1A5E00](&v78, v18);
        v20 = std::__hash_table<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::__unordered_map_hasher<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,std::equal_to<realityio::BuilderAndIOName>,true>,std::__unordered_map_equal<realityio::BuilderAndIOName,std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>,std::equal_to<realityio::BuilderAndIOName>,realityio::BuilderAndIOName::Hash,true>,std::allocator<std::__hash_value_type<realityio::BuilderAndIOName,realityio::BuilderAndIOName>>>::__equal_range_multi<realityio::BuilderAndIOName>(*(a2 + 1), &v76);
        if (v20 == v21)
        {
          std::operator+<char>();
          v22 = std::string::append(&v73, ") at prim path (");
          v23 = *&v22->__r_.__value_.__l.__data_;
          v74.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
          *&v74.__r_.__value_.__l.__data_ = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v4);
          v25 = *(String + 23);
          if (v25 >= 0)
          {
            v26 = String;
          }

          else
          {
            v26 = *String;
          }

          if (v25 >= 0)
          {
            v27 = *(String + 23);
          }

          else
          {
            v27 = *(String + 8);
          }

          v28 = std::string::append(&v74, v26, v27);
          v29 = *&v28->__r_.__value_.__l.__data_;
          v75.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v75.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          v30 = std::string::append(&v75, ")");
        }

        else
        {
          v36 = 1;
          v37 = v20;
          do
          {
            v37 = *v37;
            --v36;
          }

          while (v37 != v21);
          if (!v36)
          {
            v53 = v20[5];
            v48 = *(v53 + 16);
            v54 = *(v53 + 24);
            if (v54)
            {
              atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if ((v20[7] & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = ((v20[7] & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v20);
            }

            realityio::Outputs::getRawValue<RECollisionShape *>(v48, EmptyString, buf);
            v49 = buf[0];
            if (buf[0])
            {
              *&v56 = *&buf[8];
            }

            else
            {
              v79 = *&buf[8];
              if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v80, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
                v57 = buf[0] | ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0);
              }

              else
              {
                v80 = v82;
                v57 = 1;
              }

              v56 = v79;
              size = v80.__r_.__value_.__l.__size_;
              v48 = v80.__r_.__value_.__r.__words[0];
              LOBYTE(v2) = *(&v80.__r_.__value_.__s + 23);
              if ((v57 & 1) == 0)
              {
                v59 = v79;
                operator delete(v82.__r_.__value_.__l.__data_);
                v56 = v59;
              }
            }

            if (v54)
            {
              v60 = v56;
              std::__shared_weak_count::__release_shared[abi:ne200100](v54);
              v56 = v60;
            }

            v47 = v56;
            if ((v49 & 1) == 0)
            {
              *buf = v56;
              if ((v2 & 0x80) != 0)
              {
                std::string::__init_copy_ctor_external(&buf[16], v48, size);
                v47 = *buf;
                v58 = *&buf[16];
                LOBYTE(v2) = v82.__r_.__value_.__s.__data_[15];
                operator delete(v48);
                v48 = v58;
              }
            }

            goto LABEL_55;
          }

          std::operator+<char>();
          v38 = std::string::append(&v73, ") at prim path (");
          v39 = *&v38->__r_.__value_.__l.__data_;
          v74.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
          *&v74.__r_.__value_.__l.__data_ = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          v40 = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v4);
          v41 = *(v40 + 23);
          if (v41 >= 0)
          {
            v42 = v40;
          }

          else
          {
            v42 = *v40;
          }

          if (v41 >= 0)
          {
            v43 = *(v40 + 23);
          }

          else
          {
            v43 = *(v40 + 8);
          }

          v44 = std::string::append(&v74, v42, v43);
          v45 = *&v44->__r_.__value_.__l.__data_;
          v75.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v75.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v30 = std::string::append(&v75, ") because more than one connected builder produced the same output type");
        }

        v46 = *&v30->__r_.__value_.__l.__data_;
        v80.__r_.__value_.__r.__words[0] = v30->__r_.__value_.__r.__words[2];
        v79 = v46;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        realityio::DetailedError::DetailedError(buf, 204, &realityio::FoundationErrorCategory(void)::instance, &v79);
        v47 = *buf;
        v48 = *&buf[16];
        LOBYTE(v2) = v82.__r_.__value_.__s.__data_[15];
        *&buf[16] = 0;
        *&v82.__r_.__value_.__l.__data_ = 0uLL;
        if (v80.__r_.__value_.__s.__data_[7] < 0)
        {
          operator delete(v79);
        }

        if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v75.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        v49 = 0;
LABEL_55:
        if ((v78 & 7) != 0)
        {
          atomic_fetch_add_explicit((v78 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v50 = v77;
        if (v77)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v77);
        }

        if (v49)
        {
          *&v79 = v47;
          if (v47)
          {
            operator new();
          }
        }

        v51 = *(realityio::logObjects(v50) + 24);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_247485000, v51, OS_LOG_TYPE_DEFAULT, "No physics collision shape exists for the rigid body. The rigid body's component will not be created.", buf, 2u);
        }

        if (v2 >= 0)
        {
          v52 = 1;
        }

        else
        {
          v52 = v49;
        }

        if ((v52 & 1) == 0)
        {
          operator delete(v48);
        }

LABEL_69:
        if ((v61[0] & 1) == 0 && v64 < 0)
        {
          operator delete(__p);
        }

LABEL_28:
        realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v65);
        realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&v66);
        goto LABEL_29;
      }
    }

    else
    {
      v65 = 0;
    }

    v33 = *(realityio::logObjects(v14) + 24);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247485000, v33, OS_LOG_TYPE_DEFAULT, "Stopping operation to set the rigid body component because entity no longer exists", buf, 2u);
    }

    goto LABEL_28;
  }

  v31 = *(realityio::logObjects(UsdPhysicsAttributeDoubleValue) + 24);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v66, &v69);
    v32 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v66);
    *buf = 136315138;
    *&buf[4] = v32;
    _os_log_impl(&dword_247485000, v31, OS_LOG_TYPE_DEFAULT, "Could not retrieve mass value from the attribute on prim: %s", buf, 0xCu);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v66);
  }

LABEL_29:
  if ((v72 & 7) != 0)
  {
    atomic_fetch_add_explicit((v72 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v71);
  result = v70;
  if (v70)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v70);
  }

  return result;
}

void sub_2476B3034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  operator delete(v53);
  v56 = *(v54 - 184);
  if ((v56 & 7) != 0)
  {
    atomic_fetch_add_explicit((v56 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v57 = *(v54 - 192);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if ((a12 & 1) == 0 && a20 < 0)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a21);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a22);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a31);
  _Unwind_Resume(a1);
}

uint64_t realityio::PhysicsRigidBodyComponentBuilder::clear(realityio::PhysicsRigidBodyComponentBuilder *this, realityio::Inputs *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 6);
  v4 = a2;
  v5[0] = &unk_28595C548;
  v5[1] = &v4;
  v5[2] = this;
  v5[3] = v5;
  (*(*v2 + 16))(v2, v5);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_2476B32CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::PhysicsRigidBodyComponentBuilder::~PhysicsRigidBodyComponentBuilder(realityio::PhysicsRigidBodyComponentBuilder *this)
{
  realityio::PhysicsRigidBodyComponentBuilder::~PhysicsRigidBodyComponentBuilder(this);

  JUMPOUT(0x24C1A91B0);
}

{
  *this = &unk_28595C2D0;
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

void sub_2476B36A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::PhysicsRigidBodyComponentBuilder::PhysicsRigidBodyComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::PhysicsRigidBodyComponentBuilder::PhysicsRigidBodyComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::PhysicsRigidBodyComponentBuilder::PhysicsRigidBodyComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::PhysicsRigidBodyComponentBuilder::PhysicsRigidBodyComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::PhysicsRigidBodyComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsRigidBodyComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595C448;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<realityio::PhysicsRigidBodyComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsRigidBodyComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  REMakeMassFrameFromShapeAndMass();
  RERigidBodyComponentGetComponentType();
  operator new();
}

void sub_2476B3A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::PhysicsRigidBodyComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsRigidBodyComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio32PhysicsRigidBodyComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595C4B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio32PhysicsRigidBodyComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  RERigidBodyComponentSetMaterial();
  RERigidBodyComponentSetMotionType();
  return RERigidBodyComponentSetMassFrame();
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio32PhysicsRigidBodyComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio32PhysicsRigidBodyComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::PhysicsRigidBodyComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsRigidBodyComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595C548;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::PhysicsRigidBodyComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsRigidBodyComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
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

void sub_2476B3DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::PhysicsRigidBodyComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::PhysicsRigidBodyComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t realityio::replication::write(uint64_t a1, uint64_t *a2)
{
  std::ostream::write();
  return std::ostream::write();
}

{
  realityio::replication::write(a1, a2);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((a2 + 3));
  realityio::replication::write(a1, String);

  return std::ostream::write();
}

uint64_t realityio::replication::write(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  return realityio::replication::write(a1, EmptyString);
}

__int128 *realityio::replication::details::writeMap<pxrInternal__aapl__pxrReserved__::VtDictionary>(pxrInternal__aapl__pxrReserved__::TfToken *a1, pxrInternal__aapl__pxrReserved__::VtDictionary *this)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::VtDictionary::size(this);
  std::ostream::write();
  v4 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(this);
  v6 = v5;
  v15 = v4;
  v16 = v5;
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(this);
  v9 = result;
  v10 = v8;
  if (v8)
  {
    v11 = v4 == result;
  }

  else
  {
    v11 = 1;
  }

  v12 = v11;
  if (v6 != v8 || (v12 & 1) == 0)
  {
    do
    {
      std::pair<std::string const,pxrInternal__aapl__pxrReserved__::VtValue>::pair[abi:ne200100](&v18, v4 + 2);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v18;
      }

      pxrInternal__aapl__pxrReserved__::VtValue::VtValue(v17, v19);
      realityio::replication::write(a1, &__p);
      realityio::replication::write(a1, v17);
      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v17);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v19);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      result = pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment(&v15);
      v4 = v15;
      v13 = v15 == v9 || v10 == 0;
    }

    while (v16 != v10 || !v13);
  }

  return result;
}

void realityio::replication::write(pxrInternal__aapl__pxrReserved__::TfToken *a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = a2;
  pxrInternal__aapl__pxrReserved__::VtValue::IsArrayValued(a2);
  std::ostream::write();
  v5 = (v2 + 8);
  v4 = *(v2 + 1);
  if (!v4)
  {
    goto LABEL_403;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (*((v4 & 0xFFFFFFFFFFFFFFF8) + 16) == 47)
  {
    goto LABEL_9;
  }

  if ((v4 & 4) != 0)
  {
    {
LABEL_9:
      std::ostream::write();
      v7 = *v5;
      if ((*v5 & 4) == 0)
      {
LABEL_10:
        std::ostream::write();
LABEL_11:
        std::ostream::write();
        return;
      }

LABEL_48:
      (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
      goto LABEL_10;
    }

    v4 = *v5;
    if (!*v5)
    {
      goto LABEL_403;
    }

    v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  }

  if (*(v6 + 16) == 49)
  {
    goto LABEL_9;
  }

  if ((v4 & 4) != 0)
  {
    {
      goto LABEL_9;
    }

    v4 = *v5;
    if (!*v5)
    {
      goto LABEL_403;
    }

    v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  }

  if (*(v6 + 16) == 52)
  {
    goto LABEL_17;
  }

  if ((v4 & 4) != 0)
  {
    {
LABEL_17:
      std::ostream::write();
      v7 = *v5;
      if ((*v5 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_48;
    }

    v4 = *v5;
    if (!*v5)
    {
      goto LABEL_403;
    }

    v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  }

  if (*(v6 + 16) == 53)
  {
    goto LABEL_24;
  }

  if ((v4 & 4) != 0)
  {
    {
LABEL_24:
      std::ostream::write();
      v8 = *v5;
      if ((*v5 & 4) == 0)
      {
        v9 = *v2;
LABEL_100:
        realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>(a1, v9);
        return;
      }

      goto LABEL_139;
    }

    v4 = *v5;
    if (!*v5)
    {
      goto LABEL_403;
    }

    v6 = v4 & 0xFFFFFFFFFFFFFFF8;
  }

  if (*(v6 + 16) == 54)
  {
    goto LABEL_31;
  }

  if ((v4 & 4) != 0)
  {
    {
LABEL_31:
      std::ostream::write();
      v10 = *v5;
      if ((*v5 & 4) == 0)
      {
        v11 = *v2;
LABEL_144:
        realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<long long>>(a1, v11);
        return;
      }

      goto LABEL_180;
    }

    if (!*v5)
    {
      goto LABEL_403;
    }
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(v2))
  {
    std::ostream::write();
    v10 = *v5;
    if ((*v5 & 4) == 0)
    {
      v11 = *v2;
      goto LABEL_144;
    }

LABEL_180:
    v11 = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    goto LABEL_144;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(v2))
  {
    std::ostream::write();
    if ((*v5 & 4) != 0)
    {
      v12 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v12 = *v2;
    }

    realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(a1, v12);
    return;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<float>>(v2))
  {
    std::ostream::write();
    v8 = *v5;
    if ((*v5 & 4) == 0)
    {
      v9 = *v2;
      goto LABEL_100;
    }

LABEL_139:
    v9 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    goto LABEL_100;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<double>>(v2))
  {
    std::ostream::write();
    v10 = *v5;
    if ((*v5 & 4) == 0)
    {
      v11 = *v2;
      goto LABEL_144;
    }

    goto LABEL_180;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(v2))
  {
    std::ostream::write();
    if ((*v5 & 4) != 0)
    {
      v13 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v13 = *v2;
    }

    realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(a1, v13);
    return;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(v2))
  {
    std::ostream::write();
    if ((*v5 & 4) != 0)
    {
      v14 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v14 = *v2;
    }

    realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, v14);
    return;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(v2))
  {
    std::ostream::write();
    if ((*v5 & 4) != 0)
    {
      v15 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v15 = *v2;
    }

    realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(a1, v15);
    return;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(v2))
  {
    std::ostream::write();
    v16 = *v5;
    if ((*v5 & 4) == 0)
    {
      v17 = *v2;
LABEL_156:
      realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(a1, v17);
      return;
    }

    goto LABEL_182;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(v2))
  {
    std::ostream::write();
    v18 = *v5;
    if ((*v5 & 4) == 0)
    {
      v19 = *v2;
LABEL_150:
      realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>>(a1, v19);
      return;
    }

    goto LABEL_181;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(v2))
  {
    std::ostream::write();
    v10 = *v5;
    if ((*v5 & 4) == 0)
    {
      v11 = *v2;
      goto LABEL_144;
    }

    goto LABEL_180;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(v2))
  {
    std::ostream::write();
    v18 = *v5;
    if ((*v5 & 4) == 0)
    {
      v19 = *v2;
      goto LABEL_150;
    }

LABEL_181:
    v19 = (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    goto LABEL_150;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(v2))
  {
    std::ostream::write();
    v10 = *v5;
    if ((*v5 & 4) == 0)
    {
      v11 = *v2;
      goto LABEL_144;
    }

    goto LABEL_180;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(v2))
  {
    std::ostream::write();
    v8 = *v5;
    if ((*v5 & 4) == 0)
    {
      v9 = *v2;
      goto LABEL_100;
    }

    goto LABEL_139;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(v2))
  {
    std::ostream::write();
    v10 = *v5;
    if ((*v5 & 4) == 0)
    {
      v11 = *v2;
      goto LABEL_144;
    }

    goto LABEL_180;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(v2))
  {
    std::ostream::write();
    if ((*v5 & 4) != 0)
    {
      v20 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v20 = *v2;
    }

    realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(a1, v20);
    return;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(v2))
  {
    std::ostream::write();
    v21 = *v5;
    if ((*v5 & 4) == 0)
    {
      v22 = *v2;
LABEL_117:
      realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>(a1, v22);
      return;
    }

    goto LABEL_157;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(v2))
  {
    std::ostream::write();
    if ((*v5 & 4) != 0)
    {
      v23 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v23 = *v2;
    }

    realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>(a1, v23);
    return;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(v2))
  {
    std::ostream::write();
    v21 = *v5;
    if ((*v5 & 4) == 0)
    {
      v22 = *v2;
      goto LABEL_117;
    }

LABEL_157:
    v22 = (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    goto LABEL_117;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(v2))
  {
    std::ostream::write();
    v16 = *v5;
    if ((*v5 & 4) == 0)
    {
      v17 = *v2;
      goto LABEL_156;
    }

LABEL_182:
    v17 = (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    goto LABEL_156;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(v2))
  {
    std::ostream::write();
    v18 = *v5;
    if ((*v5 & 4) == 0)
    {
      v19 = *v2;
      goto LABEL_150;
    }

    goto LABEL_181;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(v2))
  {
    std::ostream::write();
    v10 = *v5;
    if ((*v5 & 4) == 0)
    {
      v11 = *v2;
      goto LABEL_144;
    }

    goto LABEL_180;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(v2))
  {
    std::ostream::write();
    v18 = *v5;
    if ((*v5 & 4) == 0)
    {
      v19 = *v2;
      goto LABEL_150;
    }

    goto LABEL_181;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(v2))
  {
    std::ostream::write();
    v16 = *v5;
    if ((*v5 & 4) == 0)
    {
      v17 = *v2;
      goto LABEL_156;
    }

    goto LABEL_182;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(v2))
  {
    std::ostream::write();
    if ((*v5 & 4) != 0)
    {
      v24 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v24 = *v2;
    }

    realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(a1, v24);
    return;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(v2))
  {
    std::ostream::write();
    if ((*v5 & 4) != 0)
    {
      v25 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v25 = *v2;
    }

    realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(a1, v25);
    return;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<BOOL>(v2))
  {
    goto LABEL_172;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<unsigned char>(v2))
  {
    goto LABEL_172;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<int>(v2))
  {
    goto LABEL_346;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<unsigned int>(v2))
  {
    goto LABEL_346;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<long long>(v2))
  {
    goto LABEL_400;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<unsigned long long>(v2))
  {
    goto LABEL_400;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::pxr_half::half>(v2))
  {
    std::ostream::write();
    if ((*v5 & 4) != 0)
    {
      (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    goto LABEL_11;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<float>(v2))
  {
    goto LABEL_346;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<double>(v2))
  {
    goto LABEL_400;
  }

  if (!*v5)
  {
    goto LABEL_403;
  }

  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::string>(v2))
  {
LABEL_211:
    std::ostream::write();
    if ((*v5 & 4) != 0)
    {
      v26 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
    }

    else
    {
      v26 = *v2;
    }

    realityio::replication::write(a1, v26);
    return;
  }

  if (!*v5)
  {
LABEL_403:
    std::ostream::write();
    v43 = a1;
    v41 = v2;
LABEL_404:
    realityio::replication::write(v43, v41);
    return;
  }

  if (!pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::TfToken>(v2))
  {
    if (*v5)
    {
      if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(v2))
      {
        goto LABEL_211;
      }

      if (*v5)
      {
        if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfQuatd>(v2))
        {
          goto LABEL_261;
        }

        if (*v5)
        {
          if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfQuatf>(v2))
          {
            goto LABEL_257;
          }

          if (*v5)
          {
            if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfQuath>(v2))
            {
              goto LABEL_400;
            }

            if (*v5)
            {
              if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec2d>(v2))
              {
                goto LABEL_257;
              }

              if (*v5)
              {
                if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec2f>(v2))
                {
                  goto LABEL_400;
                }

                if (*v5)
                {
                  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec2h>(v2))
                  {
                    goto LABEL_346;
                  }

                  if (*v5)
                  {
                    if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec2i>(v2))
                    {
                      goto LABEL_400;
                    }

                    if (*v5)
                    {
                      if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec3d>(v2))
                      {
                        std::ostream::write();
                        if ((*v5 & 4) == 0)
                        {
                          goto LABEL_11;
                        }

                        goto LABEL_278;
                      }

                      if (*v5)
                      {
                        if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec3f>(v2))
                        {
LABEL_245:
                          std::ostream::write();
                          if ((*v5 & 4) == 0)
                          {
                            goto LABEL_11;
                          }

                          goto LABEL_278;
                        }

                        if (*v5)
                        {
                          if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec3h>(v2))
                          {
                            std::ostream::write();
                            if ((*v5 & 4) != 0)
                            {
                              (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                            }

                            goto LABEL_11;
                          }

                          if (*v5)
                          {
                            if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec3i>(v2))
                            {
                              goto LABEL_245;
                            }

                            if (*v5)
                            {
                              if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec4d>(v2))
                              {
LABEL_261:
                                std::ostream::write();
                                if ((*v5 & 4) == 0)
                                {
                                  goto LABEL_11;
                                }

                                goto LABEL_278;
                              }

                              if (*v5)
                              {
                                if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec4f>(v2))
                                {
                                  goto LABEL_257;
                                }

                                if (*v5)
                                {
                                  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec4h>(v2))
                                  {
                                    goto LABEL_400;
                                  }

                                  if (*v5)
                                  {
                                    if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec4i>(v2))
                                    {
LABEL_257:
                                      std::ostream::write();
                                      if ((*v5 & 4) == 0)
                                      {
                                        goto LABEL_11;
                                      }

                                      goto LABEL_278;
                                    }

                                    if (*v5)
                                    {
                                      if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(v2))
                                      {
                                        goto LABEL_261;
                                      }

                                      if (*v5)
                                      {
                                        if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(v2))
                                        {
                                          std::ostream::write();
                                          if ((*v5 & 4) == 0)
                                          {
                                            goto LABEL_11;
                                          }

                                          goto LABEL_278;
                                        }

                                        if (*v5)
                                        {
                                          if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfMatrix4d>(v2))
                                          {
                                            std::ostream::write();
                                            if ((*v5 & 4) == 0)
                                            {
                                              goto LABEL_11;
                                            }

LABEL_278:
                                            (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                            goto LABEL_11;
                                          }

                                          if (*v5)
                                          {
                                            if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtDictionary>(v2))
                                            {
                                              std::ostream::write();
                                              if ((*v5 & 4) != 0)
                                              {
                                                v27 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                              }

                                              else
                                              {
                                                v27 = *v2;
                                              }

                                              realityio::replication::details::writeMap<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1, v27);
                                              return;
                                            }

                                            if (*v5)
                                            {
                                              if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>(v2))
                                              {
                                                std::ostream::write();
                                                if ((*v5 & 4) != 0)
                                                {
                                                  v28 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                }

                                                else
                                                {
                                                  v28 = *v2;
                                                }

                                                realityio::replication::write<pxrInternal__aapl__pxrReserved__::TfToken>(a1, v28);
                                                return;
                                              }

                                              if (*v5)
                                              {
                                                if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>(v2))
                                                {
                                                  std::ostream::write();
                                                  if ((*v5 & 4) != 0)
                                                  {
                                                    v29 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                  }

                                                  else
                                                  {
                                                    v29 = *v2;
                                                  }

                                                  realityio::replication::write<std::string>(a1, v29);
                                                  return;
                                                }

                                                if (*v5)
                                                {
                                                  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>(v2))
                                                  {
                                                    std::ostream::write();
                                                    if ((*v5 & 4) != 0)
                                                    {
                                                      v30 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                    }

                                                    else
                                                    {
                                                      v30 = *v2;
                                                    }

                                                    realityio::replication::write<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, v30);
                                                    return;
                                                  }

                                                  if (*v5)
                                                  {
                                                    if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>(v2))
                                                    {
                                                      std::ostream::write();
                                                      if ((*v5 & 4) != 0)
                                                      {
                                                        v31 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                      }

                                                      else
                                                      {
                                                        v31 = *v2;
                                                      }

                                                      realityio::replication::write<pxrInternal__aapl__pxrReserved__::SdfReference>(a1, v31);
                                                      return;
                                                    }

                                                    if (*v5)
                                                    {
                                                      if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>(v2))
                                                      {
                                                        std::ostream::write();
                                                        if ((*v5 & 4) == 0)
                                                        {
                                                          v32 = *v2;
LABEL_314:
                                                          realityio::replication::write<int>(a1, v32);
                                                          return;
                                                        }

LABEL_313:
                                                        v32 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                        goto LABEL_314;
                                                      }

                                                      if (*v5)
                                                      {
                                                        if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>(v2))
                                                        {
                                                          std::ostream::write();
                                                          if ((*v5 & 4) == 0)
                                                          {
                                                            v33 = *v2;
LABEL_320:
                                                            realityio::replication::write<long long>(a1, v33);
                                                            return;
                                                          }

LABEL_319:
                                                          v33 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                          goto LABEL_320;
                                                        }

                                                        if (*v5)
                                                        {
                                                          if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>(v2))
                                                          {
                                                            std::ostream::write();
                                                            if ((*v5 & 4) == 0)
                                                            {
                                                              v32 = *v2;
                                                              goto LABEL_314;
                                                            }

                                                            goto LABEL_313;
                                                          }

                                                          if (*v5)
                                                          {
                                                            if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>(v2))
                                                            {
                                                              std::ostream::write();
                                                              if ((*v5 & 4) == 0)
                                                              {
                                                                v33 = *v2;
                                                                goto LABEL_320;
                                                              }

                                                              goto LABEL_319;
                                                            }

                                                            if (*v5)
                                                            {
                                                              if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(v2))
                                                              {
                                                                std::ostream::write();
                                                                if ((*v5 & 4) != 0)
                                                                {
                                                                  v34 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                }

                                                                else
                                                                {
                                                                  v34 = *v2;
                                                                }

                                                                realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, v34);
                                                                return;
                                                              }

                                                              if (*v5)
                                                              {
                                                                if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(v2))
                                                                {
                                                                  std::ostream::write();
                                                                  if ((*v5 & 4) != 0)
                                                                  {
                                                                    v35 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                  }

                                                                  else
                                                                  {
                                                                    v35 = *v2;
                                                                  }

                                                                  realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, v35);
                                                                  return;
                                                                }

                                                                if (*v5)
                                                                {
                                                                  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfSpecifier>(v2))
                                                                  {
LABEL_346:
                                                                    std::ostream::write();
                                                                    if ((*v5 & 4) != 0)
                                                                    {
                                                                      (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                    }

                                                                    goto LABEL_11;
                                                                  }

                                                                  if (*v5)
                                                                  {
                                                                    if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfPermission>(v2))
                                                                    {
                                                                      goto LABEL_346;
                                                                    }

                                                                    if (*v5)
                                                                    {
                                                                      if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfVariability>(v2))
                                                                      {
                                                                        goto LABEL_346;
                                                                      }

                                                                      if (*v5)
                                                                      {
                                                                        if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::map<std::string,std::string>>(v2))
                                                                        {
                                                                          std::ostream::write();
                                                                          if ((*v5 & 4) != 0)
                                                                          {
                                                                            v36 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                          }

                                                                          else
                                                                          {
                                                                            v36 = *v2;
                                                                          }

                                                                          realityio::replication::details::writeMap<std::map<std::string,std::string>>(a1, v36);
                                                                          return;
                                                                        }

                                                                        if (*v5)
                                                                        {
                                                                          if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfPayload>(v2))
                                                                          {
                                                                            std::ostream::write();
                                                                            if ((*v5 & 4) != 0)
                                                                            {
                                                                              v37 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                            }

                                                                            else
                                                                            {
                                                                              v37 = *v2;
                                                                            }

                                                                            realityio::replication::write(a1, v37);
                                                                            return;
                                                                          }

                                                                          if (*v5)
                                                                          {
                                                                            if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<double>>(v2))
                                                                            {
                                                                              std::ostream::write();
                                                                              if ((*v5 & 4) != 0)
                                                                              {
                                                                                v38 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                              }

                                                                              else
                                                                              {
                                                                                v38 = *v2;
                                                                              }

                                                                              realityio::replication::details::writeVector<std::vector<long long>>(a1, v38);
                                                                              return;
                                                                            }

                                                                            if (*v5)
                                                                            {
                                                                              if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(v2))
                                                                              {
                                                                                std::ostream::write();
                                                                                if ((*v5 & 4) != 0)
                                                                                {
                                                                                  v39 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                                }

                                                                                else
                                                                                {
                                                                                  v39 = *v2;
                                                                                }

                                                                                realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(a1, v39);
                                                                                return;
                                                                              }

                                                                              if (*v5)
                                                                              {
                                                                                if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<std::string>>(v2))
                                                                                {
                                                                                  std::ostream::write();
                                                                                  if ((*v5 & 4) != 0)
                                                                                  {
                                                                                    v40 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v40 = *v2;
                                                                                  }

                                                                                  realityio::replication::details::writeVector<std::vector<std::string>>(a1, v40);
                                                                                  return;
                                                                                }

                                                                                if (*v5)
                                                                                {
                                                                                  if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfValueBlock>(v2))
                                                                                  {
LABEL_172:
                                                                                    std::ostream::write();
                                                                                    if ((*v5 & 4) != 0)
                                                                                    {
                                                                                      (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                                    }

                                                                                    goto LABEL_11;
                                                                                  }

                                                                                  if (*v5)
                                                                                  {
                                                                                    if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>(v2))
                                                                                    {
                                                                                      std::ostream::write();
                                                                                      if ((*v5 & 4) != 0)
                                                                                      {
                                                                                        v41 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v41 = *v2;
                                                                                      }

                                                                                      v43 = a1;
                                                                                      goto LABEL_404;
                                                                                    }

                                                                                    if (*v5)
                                                                                    {
                                                                                      if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(v2))
                                                                                      {
                                                                                        std::ostream::write();
                                                                                        if ((*v5 & 4) != 0)
                                                                                        {
                                                                                          v42 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v42 = *v2;
                                                                                        }

                                                                                        realityio::replication::write<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>(a1, v42);
                                                                                        return;
                                                                                      }

                                                                                      if (*v5)
                                                                                      {
                                                                                        if (pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>(v2))
                                                                                        {
                                                                                          std::ostream::write();
                                                                                          if ((*v5 & 4) != 0)
                                                                                          {
                                                                                            v44 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v44 = *v2;
                                                                                          }

                                                                                          realityio::replication::write<pxrInternal__aapl__pxrReserved__::SdfPayload>(a1, v44);
                                                                                          return;
                                                                                        }

                                                                                        if (*v5 && pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfTimeCode>(v2))
                                                                                        {
LABEL_400:
                                                                                          std::ostream::write();
                                                                                          if ((*v5 & 4) != 0)
                                                                                          {
                                                                                            (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
                                                                                          }

                                                                                          goto LABEL_11;
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_403;
  }

  std::ostream::write();
  if ((*v5 & 4) != 0)
  {
    v2 = (*((*v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v2);
  }

  realityio::replication::write(a1, v2);
}

uint64_t realityio::replication::write<pxrInternal__aapl__pxrReserved__::TfToken>(pxrInternal__aapl__pxrReserved__::TfToken *a1, char *a2)
{
  std::ostream::write();
  if (*a2)
  {
    v4 = 8;
  }

  else
  {
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, a2 + 4);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, a2 + 7);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, a2 + 10);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, a2 + 13);
    v4 = 128;
  }

  return realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, &a2[v4]);
}

uint64_t realityio::replication::write<std::string>(uint64_t a1, char *a2)
{
  std::ostream::write();
  if (*a2)
  {
    v4 = 8;
  }

  else
  {
    realityio::replication::details::writeVector<std::vector<std::string>>(a1, a2 + 4);
    realityio::replication::details::writeVector<std::vector<std::string>>(a1, a2 + 7);
    realityio::replication::details::writeVector<std::vector<std::string>>(a1, a2 + 10);
    realityio::replication::details::writeVector<std::vector<std::string>>(a1, a2 + 13);
    v4 = 128;
  }

  return realityio::replication::details::writeVector<std::vector<std::string>>(a1, &a2[v4]);
}

uint64_t realityio::replication::write<pxrInternal__aapl__pxrReserved__::SdfPath>(uint64_t a1, char *a2)
{
  std::ostream::write();
  if (*a2)
  {
    v4 = 8;
  }

  else
  {
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2 + 4);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2 + 7);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2 + 10);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, a2 + 13);
    v4 = 128;
  }

  return realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(a1, &a2[v4]);
}

void *realityio::replication::write<pxrInternal__aapl__pxrReserved__::SdfReference>(pxrInternal__aapl__pxrReserved__::TfToken *a1, char *a2)
{
  std::ostream::write();
  if (*a2)
  {
    v4 = 8;
  }

  else
  {
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>>(a1, a2 + 4);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>>(a1, a2 + 7);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>>(a1, a2 + 10);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>>(a1, a2 + 13);
    v4 = 128;
  }

  return realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>>(a1, &a2[v4]);
}

uint64_t realityio::replication::write<int>(uint64_t a1, char *a2)
{
  std::ostream::write();
  if (*a2)
  {
    v4 = 8;
  }

  else
  {
    realityio::replication::details::writeVector<std::vector<int>>(a1, a2 + 4);
    realityio::replication::details::writeVector<std::vector<int>>(a1, a2 + 7);
    realityio::replication::details::writeVector<std::vector<int>>(a1, a2 + 10);
    realityio::replication::details::writeVector<std::vector<int>>(a1, a2 + 13);
    v4 = 128;
  }

  return realityio::replication::details::writeVector<std::vector<int>>(a1, &a2[v4]);
}

uint64_t realityio::replication::write<long long>(uint64_t a1, char *a2)
{
  std::ostream::write();
  if (*a2)
  {
    v4 = 8;
  }

  else
  {
    realityio::replication::details::writeVector<std::vector<long long>>(a1, a2 + 4);
    realityio::replication::details::writeVector<std::vector<long long>>(a1, a2 + 7);
    realityio::replication::details::writeVector<std::vector<long long>>(a1, a2 + 10);
    realityio::replication::details::writeVector<std::vector<long long>>(a1, a2 + 13);
    v4 = 128;
  }

  return realityio::replication::details::writeVector<std::vector<long long>>(a1, &a2[v4]);
}

void *realityio::replication::write<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>(pxrInternal__aapl__pxrReserved__::TfToken *a1, char *a2)
{
  std::ostream::write();
  if (*a2)
  {
    v4 = 8;
  }

  else
  {
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(a1, a2 + 4);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(a1, a2 + 7);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(a1, a2 + 10);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(a1, a2 + 13);
    v4 = 128;
  }

  return realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(a1, &a2[v4]);
}

uint64_t realityio::replication::write<pxrInternal__aapl__pxrReserved__::SdfPayload>(uint64_t a1, char *a2)
{
  std::ostream::write();
  if (*a2)
  {
    v4 = 8;
  }

  else
  {
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>(a1, a2 + 4);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>(a1, a2 + 7);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>(a1, a2 + 10);
    realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>(a1, a2 + 13);
    v4 = 128;
  }

  return realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>(a1, &a2[v4]);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<BOOL>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!*((v1 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D82798]);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::TfToken>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 13)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16vectorIN32pxrInternal__aapl__pxrReserved__7TfTokenENS_9allocatorIS2_EEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfSpecifier>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfSpecifierE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfValueBlock>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__13SdfValueBlockE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 55)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 58)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<float>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 57)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<double>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 56)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 59)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<std::string>>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  result = std::ostream::write();
  if (v4)
  {
    v6 = a2[4];
    v7 = 24 * v4;
    do
    {
      result = realityio::replication::write(a1, v6);
      v6 += 3;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 60)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t *a2)
{
  v4 = *a2;
  result = std::ostream::write();
  if (v4)
  {
    v6 = a2[4];
    v7 = 8 * v4;
    do
    {
      result = realityio::replication::write(a1, v6++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__7VtArrayINS_12SdfAssetPathEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::replication::details::writeVector<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  result = std::ostream::write();
  if (v4)
  {
    v6 = a2[4];
    v7 = 48 * v4;
    do
    {
      result = realityio::replication::write(a1, v6);
      v6 += 6;
      v7 -= 48;
    }

    while (v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 42)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 40)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 25)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 22)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 19)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 16)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 24)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 15)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 23)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 20)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 17)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 14)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 31)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 30)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 29)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<unsigned char>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 2)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827B8]);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<int>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 5)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827C0]);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<unsigned int>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 6)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827C8]);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<long long>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 7)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827F8]);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<unsigned long long>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 8)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D82800]);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::pxr_half::half>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 11)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<float>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 10)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827B0]);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<double>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 9)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x277D827A8]);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::string>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 12)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfAssetPath>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfAssetPathE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfQuatd>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 89)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec2d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 72)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec2f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 69)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec2h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 66)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec2i>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 63)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec3h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 65)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec3i>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 62)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec4d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 70)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec4f>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 67)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec4h>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 64)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfVec4i>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 61)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfMatrix2d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 78)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::GfMatrix3d>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 77)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::VtDictionary>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12VtDictionaryE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::TfToken>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINS_7TfTokenEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<std::string>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPath>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINS_7SdfPathEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfReference>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINS_12SdfReferenceEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

void *realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t **a2)
{
  v5 = *a2;
  v4 = a2[1];
  result = std::ostream::write();
  if (v4 != v5)
  {
    v7 = *a2;
    v8 = (v7 + v4 - v5);
    do
    {
      realityio::replication::write(a1, v7);
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString((v7 + 3));
      realityio::replication::write(a1, String);
      std::ostream::write();
      result = realityio::replication::details::writeMap<pxrInternal__aapl__pxrReserved__::VtDictionary>(a1, (v7 + 6));
      v7 += 7;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<int>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpIiEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<long long>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpIxEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned int>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpIjEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<unsigned long long>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpIyEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16vectorIN32pxrInternal__aapl__pxrReserved__7SdfPathENS_9allocatorIS2_EEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath **a2)
{
  v5 = *a2;
  v4 = a2[1];
  result = std::ostream::write();
  v7 = (v4 - v5);
  if (v7)
  {
    v8 = *a2;
    do
    {
      String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v8);
      result = realityio::replication::write(a1, String);
      v8 = (v8 + 8);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(pxrInternal__aapl__pxrReserved__::TfToken *a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  result = std::ostream::write();
  v7 = v4 - v5;
  if (v7)
  {
    v8 = *a2;
    do
    {
      result = realityio::replication::write(a1, v8++);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfPermission>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__13SdfPermissionE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfVariability>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__14SdfVariabilityE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::map<std::string,std::string>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x8000000247762DBCLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

void realityio::replication::details::writeMap<std::map<std::string,std::string>>(uint64_t a1, void *a2)
{
  v12.__r_.__value_.__r.__words[0] = a2[2];
  std::ostream::write();
  v6 = *a2;
  v4 = (a2 + 1);
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      std::pair<std::string const,std::string>::pair[abi:ne200100](&v12, v5 + 2);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v11, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
      }

      else
      {
        v11 = v12;
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v13;
      }

      realityio::replication::write(a1, &v11);
      realityio::replication::write(a1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      v7 = *(v5 + 1);
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
          v8 = *(v5 + 2);
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }
}

void sub_2476B79B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a23);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfPayload>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__10SdfPayloadE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<double>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x8000000247762E60 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16vectorIN32pxrInternal__aapl__pxrReserved__14SdfLayerOffsetENS_9allocatorIS2_EEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<std::vector<std::string>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x8000000247762EDDLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::replication::details::writeVector<std::vector<std::string>>(uint64_t a1, uint64_t **a2)
{
  v5 = *a2;
  v4 = a2[1];
  result = std::ostream::write();
  v7 = (v4 - v5);
  if (v7)
  {
    v8 = *a2;
    do
    {
      result = realityio::replication::write(a1, v8);
      v8 += 3;
      v7 -= 24;
    }

    while (v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__20SdfUnregisteredValueE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINS_20SdfUnregisteredValueEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

void *realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>>(pxrInternal__aapl__pxrReserved__::TfToken *a1, pxrInternal__aapl__pxrReserved__::VtValue **a2)
{
  v5 = *a2;
  v4 = a2[1];
  result = std::ostream::write();
  v7 = (v4 - v5);
  if (v7)
  {
    v8 = *a2;
    do
    {
      result = realityio::replication::write(a1, v8);
      v8 = (v8 + 16);
      v7 -= 16;
    }

    while (v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__9SdfListOpINS_10SdfPayloadEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::replication::details::writeVector<std::vector<pxrInternal__aapl__pxrReserved__::SdfPayload>>(uint64_t a1, uint64_t **a2)
{
  v5 = *a2;
  v4 = a2[1];
  result = std::ostream::write();
  v7 = (v4 - v5);
  if (v7)
  {
    v8 = *a2;
    do
    {
      result = realityio::replication::write(a1, v8);
      v8 += 6;
      v7 -= 48;
    }

    while (v7);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::VtValue::_TypeIs<pxrInternal__aapl__pxrReserved__::SdfTimeCode>(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v2 = *(a1 + 1);
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__11SdfTimeCodeE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }
}

uint64_t realityio::TransformComponentBuilder::kOutputName(realityio::TransformComponentBuilder *this)
{
  if ((atomic_load_explicit(&qword_27EE535C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE535C0))
  {
    operator new();
  }

  return _MergedGlobals_52;
}

void sub_2476B805C(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A91B0](v1, 0x1012C40EC159624);
  __cxa_guard_abort(&qword_27EE535C0);
  _Unwind_Resume(a1);
}

void realityio::TransformComponentBuilder::TransformComponentBuilder(realityio::TransformComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "TransformComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kTransformComponentBuilderIdentifier);
  realityio::generateTransformDirtyStageSubscription(&v4);
  v8[0] = &unk_28595C640;
  v8[3] = v8;
  v7[0] = &unk_28595C6C0;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, &v4, v8, v7);
}

void sub_2476B81D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
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

uint64_t realityio::TransformComponentBuilder::run(realityio::TransformComponentBuilder *this, realityio::Inputs *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v43, v5, v4);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v43);
  if (IsValid)
  {
    v7 = *(realityio::logObjects(IsValid) + 24);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_247485000, v7, OS_LOG_TYPE_INFO, "Updating entity transform", buf, 2u);
    }

    v9 = realityio::EntityBuilder::kInputName(v8);
    realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v9, v41);
    if (v41[0])
    {
      v11 = realityio::EntityBuilder::kPrimPathOutputName(v10);
      realityio::Inputs::_getValue<pxrInternal__aapl__pxrReserved__::SdfPath *>(a2, v11, v37);
      if (v37[0])
      {
        v13 = v38;
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(buf, &v43);
        v14 = *v13;
        v15 = *buf;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        v16 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(buf);
        if (v14 == v15)
        {
          *buf = 0;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          realityio::WrappedRERef<REAsset *>::operator=(v16, v42);
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v35 = MEMORY[0x277D86748] + 16;
          pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v34, 1.0);
          if (v36 && (*(v36 + 57) & 8) == 0 && (*(v35 + 32))(&v35))
          {
            MEMORY[0x24C1A54B0](v33, &v35);
            pxrInternal__aapl__pxrReserved__::UsdGeomXformable::XformQuery::GetLocalTransformation();
            ComponentType = v33;
            std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__destroy_vector::operator()[abi:ne200100](&ComponentType);
          }

          MEMORY[0x24C1A4BE0](v33, v34);
          REDecomposeMatrix();
          v17 = atomic_load(&realityio::tokens::TransformBuilderTokens);
          if (v17)
          {
            pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v32, &v43, (v17 + 64));
            if (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(&v32))
            {
              pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&ComponentType, &v43);
              v18 = v50;
              if (v50)
              {
                if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&v50) + 14))
                {
                  v18 = ComponentType;
                }

                else
                {
                  v18 = 0;
                }
              }

              __p = v18;
              pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&__p);
              v19 = atomic_load(&realityio::tokens::TransformBuilderTokens);
              if (!v19)
              {
                pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TransformBuilderTokens);
              }

              LOBYTE(v31[0]) = 0;
              RealityKitStage = realityio::getRealityKitStageMetadata<BOOL>(&__p, (v19 + 56), v31);
              pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&__p);
              v21 = v50;
              if (v50 && atomic_fetch_add_explicit((v50 + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                (*(*v21 + 8))(v21);
              }

              if ((RealityKitStage & 1) == 0)
              {
                v54 = 1;
                ComponentType = REAnchoringComponentGetComponentType();
                std::__tree<REComponentClass *>::__emplace_unique_key_args<REComponentClass *,REComponentClass * const&>(this + 40, &ComponentType, &ComponentType);
                pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
              }
            }

            v54 = 0;
            v47 = this;
            v48[21] = 0;
            operator new();
          }

          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TransformBuilderTokens);
        }

        v25 = *(realityio::logObjects(v16) + 24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v34, &v43);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v34);
          v28 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v38);
          *buf = 136315394;
          *&buf[4] = Text;
          v52 = 2080;
          v53 = v28;
          _os_log_impl(&dword_247485000, v25, OS_LOG_TYPE_INFO, "Skipping entity transform for %s becuase entity is for %s", buf, 0x16u);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v34);
        }
      }

      else
      {
        v25 = *(realityio::logObjects(v12) + 24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v34, &v43);
          v26 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v34);
          *buf = 136315138;
          *&buf[4] = v26;
          _os_log_impl(&dword_247485000, v25, OS_LOG_TYPE_INFO, "Skipping entity transform for %s becuase entity path is not available for some reason", buf, 0xCu);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v34);
        }
      }

      if ((v37[0] & 1) == 0 && v40 < 0)
      {
        operator delete(v39);
      }
    }

    else
    {
      v24 = *(realityio::logObjects(v10) + 24);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247485000, v24, OS_LOG_TYPE_DEFAULT, "Stopping operation to set transform component because entity no longer exists", buf, 2u);
      }
    }

    realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v41);
  }

  else
  {
    v22 = *(realityio::logObjects(IsValid) + 24);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v34, &v43);
      v23 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v34);
      *buf = 136315138;
      *&buf[4] = v23;
      _os_log_impl(&dword_247485000, v22, OS_LOG_TYPE_DEFAULT, "Stopping operation to set transform component because the prim is not valid: '%s'", buf, 0xCu);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v34);
    }
  }

  if ((v46 & 7) != 0)
  {
    atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v45);
  result = v44;
  if (v44)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v44);
  }

  return result;
}

void sub_2476B8AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&a13);
  v67 = STACK[0x2B8];
  if (STACK[0x2B8] && atomic_fetch_add_explicit(v67 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v67 + 8))(v67);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(&a23);
  MEMORY[0x24C1A54D0](&a52);
  if ((a55 & 1) == 0 && a63 < 0)
  {
    operator delete(__p);
  }

  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a64);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a65);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::TransformAnchoringData::TransformAnchoringData(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    RERetain();
  }

  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v7 = *(a2 + 3);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 16) = v5;
  v8 = a2[9];
  *(a1 + 72) = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 72) &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = a2[10];
  *(a1 + 80) = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 80) &= 0xFFFFFFFFFFFFFFF8;
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), a2[11], a2[12]);
  }

  else
  {
    v10 = *(a2 + 11);
    *(a1 + 104) = a2[13];
    *(a1 + 88) = v10;
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), a2[14], a2[15]);
  }

  else
  {
    v11 = *(a2 + 7);
    *(a1 + 128) = a2[16];
    *(a1 + 112) = v11;
  }

  return a1;
}

void sub_2476B8E0C(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  v3 = *(v1 + 80);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(v1 + 72);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(v1);
  _Unwind_Resume(a1);
}

uint64_t realityio::TransformComponentBuilder::run(realityio::Inputs *)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 96);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 88);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef((a1 + 16));
  return a1;
}

void anonymous namespace::TransformAnchoringData::~TransformAnchoringData(void **this)
{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this[10];
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = this[9];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(this);
}

uint64_t realityio::TransformComponentBuilder::clear(realityio::TransformComponentBuilder *this, realityio::Inputs *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 6);
  v4[0] = &unk_28595C990;
  v4[1] = a2;
  v4[2] = this;
  v4[3] = v4;
  (*(*v2 + 16))(v2, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
}

void sub_2476B9014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::TransformComponentBuilder::~TransformComponentBuilder(realityio::TransformComponentBuilder *this)
{
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

void sub_2476B94D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::TransformComponentBuilder::TransformComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::TransformComponentBuilder::TransformComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::referenceImageCallback@<X0>(_anonymous_namespace_ *this@<X0>, const pxrInternal__aapl__pxrReserved__::UsdStage *a2@<X1>, unint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v9, this, a2);
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v9))
  {
    v3 = atomic_load(&realityio::tokens::TransformBuilderTokens);
    if (!v3)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TransformBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TransformBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TransformBuilderTokens);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v5, &v9, (v3 + 64));
    if (pxrInternal__aapl__pxrReserved__::UsdAttribute::HasAuthoredValue(&v5))
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    if ((v8 & 7) != 0)
    {
      atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
    if (v6)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v6);
    }
  }

  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  result = v10;
  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
  }

  return result;
}

void sub_2476B9898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  *(v4 - 40) = va;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100]((v4 - 40));
  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(va1);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va2);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v4 - 72));
  std::__hash_table<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>,std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::~__hash_table(v3);
  _Unwind_Resume(a1);
}

void sub_2476B9A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}