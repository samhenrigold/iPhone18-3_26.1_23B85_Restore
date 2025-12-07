void sub_247683000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 80));
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v20 - 56));
  _Unwind_Resume(a1);
}

realityio::MeshModelDescriptorBuilder::MeshModelDataT **std::unique_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>::~unique_ptr[abi:ne200100](realityio::MeshModelDescriptorBuilder::MeshModelDataT **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    realityio::MeshModelDescriptorBuilder::MeshModelDataT::~MeshModelDataT(v2);
    MEMORY[0x24C1A91B0]();
  }

  return a1;
}

void std::__shared_ptr_pointer<realityio::MeshModelDescriptorBuilder::MeshModelDataT *,std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>::__shared_ptr_default_delete<realityio::MeshModelDescriptorBuilder::MeshModelDataT,realityio::MeshModelDescriptorBuilder::MeshModelDataT>,std::allocator<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

realityio::MeshModelDescriptorBuilder::MeshModelDataT *std::__shared_ptr_pointer<realityio::MeshModelDescriptorBuilder::MeshModelDataT *,std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>::__shared_ptr_default_delete<realityio::MeshModelDescriptorBuilder::MeshModelDataT,realityio::MeshModelDescriptorBuilder::MeshModelDataT>,std::allocator<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    realityio::MeshModelDescriptorBuilder::MeshModelDataT::~MeshModelDataT(result);

    JUMPOUT(0x24C1A91B0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<realityio::MeshModelDescriptorBuilder::MeshModelDataT *,std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>::__shared_ptr_default_delete<realityio::MeshModelDescriptorBuilder::MeshModelDataT,realityio::MeshModelDescriptorBuilder::MeshModelDataT>,std::allocator<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *realityio::WrappedRERef<REMeshAssetDescriptor *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

uint64_t realityio::Result<MaterialIndexAssignor,realityio::DetailedError>::~Result(uint64_t a1, void *a2)
{
  if (*a1 == 1)
  {
    tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::Usd_CollectionMembershipQuery<pxrInternal__aapl__pxrReserved__::UsdObjectCollectionExpressionEvaluator>>>>,false>>::~concurrent_unordered_base(a1 + 712, a2);
    tbb::interface5::internal::concurrent_unordered_base<tbb::interface5::concurrent_unordered_map_traits<pxrInternal__aapl__pxrReserved__::SdfPath,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>,tbb::interface5::internal::hash_compare<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath::Hash,std::equal_to<pxrInternal__aapl__pxrReserved__::SdfPath>>,tbb::tbb_allocator<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,std::unique_ptr<pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::BindingsAtPrim>>>,false>>::~concurrent_unordered_base(a1 + 152, v3);
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(a1 + 136));
    v5 = (a1 + 88);
    std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v5);
    std::__tree<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::__map_value_compare<MaterialIndexAssignor::MaterialKey,std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>,std::less<MaterialIndexAssignor::MaterialKey>,true>,std::allocator<std::__value_type<MaterialIndexAssignor::MaterialKey,unsigned long>>>::destroy(*(a1 + 72));
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,MaterialIndexAssignor::GPrimInfo>>>::destroy(*(a1 + 48));
    std::__tree<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,realityio::Graph<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::NodeStorage *>>>::destroy(*(a1 + 24));
  }

  else if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t std::deque<int>::~deque[abi:ne200100](uint64_t a1)
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
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
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

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__split_buffer<int *>::emplace_back<int *&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(v11);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *realityio::WrappedRERef<REGeomInstance *>::~WrappedRERef(uint64_t *a1)
{
  if (*a1)
  {
    RERelease();
    *a1 = 0;
  }

  return a1;
}

void std::__shared_ptr_emplace<anonymous namespace::DeduplicatingMeshAsset>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595A448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void *std::__shared_ptr_emplace<anonymous namespace::DeduplicatingMeshAsset>::__on_zero_shared(void *a1)
{
  a1[3] = &unk_28595A498;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 8));
  a1[3] = &unk_285951C30;
  realityio::WrappedRERef<REAssetLoadRequest *>::~WrappedRERef(a1 + 7);

  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 4);
}

void *anonymous namespace::DeduplicatingMeshAsset::onComplete(_anonymous_namespace_::DeduplicatingMeshAsset *this)
{
  v1 = (this + 8);
  v3 = realityio::ImportSession::deduplicateMeshAsset(*(this + 6), this + 5, *(this + 1), 0);
  return realityio::WrappedRERef<REAsset *>::operator=(v1, &v3);
}

void std::__shared_ptr_emplace<realityio::MeshAssetBuilder::MeshAssetDataT>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595A4C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::MeshAssetBuilder::MeshAssetDataT>::__on_zero_shared(uint64_t a1)
{
  realityio::WrappedRERef<REAsset *>::~WrappedRERef((a1 + 224));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 208);
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>>>::destroy(a1 + 136, *(a1 + 144));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(a1 + 112, *(a1 + 120));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(a1 + 88, *(a1 + 96));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned int>>>::destroy(a1 + 64, *(a1 + 72));
  v3 = (a1 + 40);
  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595A518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

void std::__shared_ptr_emplace<realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_28595A568;
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t realityio::InputOutputWrapperObject<std::shared_ptr<realityio::MeshAssetBuilder::MeshAssetDataT>>::getRawValue(uint64_t a1)
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

void *std::__function::__func<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28595A598;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 1);
  return a1;
}

void std::__function::__func<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_28595A598;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(a1 + 1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  *a2 = &unk_28595A598;
  *(a2 + 8) = result;
  if (result)
  {
    result = RERetain();
  }

  *(a2 + 16) = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(a1 + 40);
  return result;
}

void std::__function::__func<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0::~$_0(a1 + 1);

  operator delete(a1);
}

uint64_t *std::__function::__func<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(void *a1)
{
  v1 = a1[2];
  v7 = REAssetCopyDependencyArray();
  Size = REAssetDynamicArrayGetSize();
  if (Size)
  {
    v3 = 0;
    do
    {
      Asset = REAssetDynamicArrayGetAsset();
      Type = REAssetGetType();
      if (CFStringCompare(Type, @"Skeleton", 0) == kCFCompareEqualTo)
      {
        realityio::Builder::addAsset(v1, Asset, 0);
      }

      ++v3;
    }

    while (Size != v3);
  }

  return realityio::WrappedRERef<REAssetDynamicArray *>::~WrappedRERef(&v7);
}

void sub_247683B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedRERef<REAssetDynamicArray *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::MeshAssetBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::LiveSceneManager::insertEntityBuilders(uint64_t **a1, void *a2, void **a3, uint64_t a4, void **a5)
{
  v57[0] = 0;
  v57[1] = 0;
  v56 = v57;
  v7 = a1[38];
  v8 = (a1 + 39);
  if (v7 != a1 + 39)
  {
    v9 = 0;
    v10 = v57;
    while (v10 != v57)
    {
      v11 = v57;
      if (v9)
      {
        do
        {
          v12 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        do
        {
          v12 = v11[2];
          v13 = *v12 == v11;
          v11 = v12;
        }

        while (v13);
      }

      if (pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v12 + 4, v7 + 4))
      {
        if (!v57[0])
        {
          goto LABEL_10;
        }

LABEL_12:
        v54 = v12;
        v14 = v12 + 1;
        goto LABEL_14;
      }

      v14 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(&v56, &v54, v7 + 4);
LABEL_14:
      if (!*v14)
      {
        goto LABEL_15;
      }

      v15 = v7[1];
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
          v16 = v7[2];
          v13 = *v16 == v7;
          v7 = v16;
        }

        while (!v13);
      }

      if (v16 == v8)
      {
        goto LABEL_23;
      }

      v10 = v56;
      v9 = v57[0];
      v7 = v16;
    }

    v12 = v57;
    if (!v9)
    {
LABEL_10:
      v54 = v57;
LABEL_15:
      operator new();
    }

    goto LABEL_12;
  }

LABEL_23:
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>>::destroy((a1 + 38), a1[39]);
  a1[39] = 0;
  a1[40] = 0;
  a1[38] = v8;
  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  v19 = *a2;
  v18 = a2 + 1;
  v17 = v19;
  if (v19 != v18)
  {
    __s = realityio::kEntityBuilderIdentifier;
    do
    {
      if ((atomic_load_explicit(&qword_27EE534D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE534D8))
      {
        MEMORY[0x24C1A5DE0](&_MergedGlobals_46, __s);
        __cxa_guard_release(&qword_27EE534D8);
      }

      if ((atomic_load_explicit(&qword_27EE534E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE534E8))
      {
        std::string::basic_string[abi:ne200100]<0>(&v48, __s);
        pxrInternal__aapl__pxrReserved__::TfMakeValidIdentifier();
        MEMORY[0x24C1A5E00](&qword_27EE534E0, &__p);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p);
        }

        if (v50 < 0)
        {
          operator delete(v48);
        }

        __cxa_guard_release(&qword_27EE534E8);
      }

      v48 = 0;
      v49 = 0;
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v47, (v17 + 36), &qword_27EE534E0);
      v46 = qword_27EE534E0;
      if ((qword_27EE534E0 & 7) != 0 && (atomic_fetch_add_explicit((qword_27EE534E0 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v46 &= 0xFFFFFFFFFFFFFFF8;
      }

      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath((v17 + 36)))
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "/__root");
        MEMORY[0x24C1A5D70](v44, &__p);
        pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v45, v44, &v46);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v47, &v45);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v47 + 4, &v45 + 1);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v45);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v44);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p);
        }
      }

      if ((pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsoluteRootPath((v17 + 28)) & 1) == 0)
      {
        v20 = v57[0];
        if (!v57[0])
        {
          goto LABEL_47;
        }

        v21 = v57;
        do
        {
          v22 = v21;
          v23 = v20 + 4;
          v24 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v20 + 4, &v47);
          if (v24)
          {
            v25 = 1;
          }

          else
          {
            v25 = 0;
          }

          if (!v24)
          {
            v21 = v20;
          }

          v20 = v20[v25];
        }

        while (v20);
        if (v21 == v57 || (!v24 ? (v26 = v23) : (v26 = v22 + 4), pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v47, v26)))
        {
LABEL_47:
          v27 = a1[37];
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v42, v17 + 9);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v43, v17 + 10);
          v45 = (*(*v27 + 64))(v27, &v42);
          if (v45)
          {
            RERetain();
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42);
          operator new();
        }

        v31 = v21[5];
        v30 = v21[6];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v32 = v49;
        v48 = v31;
        v49 = v30;
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath&,std::shared_ptr<realityio::Builder>&,0>(&__p, &v47, &v48);
        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>(a1 + 38, &__p, &__p);
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p);
        std::__tree<std::shared_ptr<realityio::Builder>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>(&v54, v48, &v48);
      }

      if ((v46 & 7) != 0)
      {
        atomic_fetch_add_explicit((v46 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v47);
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      v28 = v17[1];
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
          v29 = v17[2];
          v13 = *v29 == v17;
          v17 = v29;
        }

        while (!v13);
      }

      v17 = v29;
    }

    while (v29 != v18);
  }

  v52 = 0;
  v53 = 0;
  __p = &v52;
  v33 = v56;
  if (v56 == v57)
  {
    v39 = 0;
  }

  else
  {
    do
    {
      v34 = v55[0];
      if (v55[0])
      {
        v35 = v33[5];
        do
        {
          v36 = v34[4];
          if (v35 >= v36)
          {
            if (v36 >= v35)
            {
              goto LABEL_84;
            }

            ++v34;
          }

          v34 = *v34;
        }

        while (v34);
      }

      realityio::BuilderWorkingSetPriorityQueue<std::shared_ptr<realityio::Builder>>::insert(a5, (v33 + 5));
LABEL_84:
      v37 = v33[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = v33[2];
          v13 = *v38 == v33;
          v33 = v38;
        }

        while (!v13);
      }

      v33 = v38;
    }

    while (v38 != v57);
    v39 = v52;
  }

  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>>::destroy(&__p, v39);
  std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(v55[0]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>>::destroy(&v56, v57[0]);
}

void sub_2476842B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  __cxa_guard_abort(&qword_27EE534E8);
  std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(a37);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>>::destroy(v37 - 112, *(v37 - 104));
  _Unwind_Resume(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1);
}

uint64_t std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>::pair[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath&,std::shared_ptr<realityio::Builder>&,0>(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(a1, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v6 + 1, a2 + 1);
  v7 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a2 + 4));

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::shared_ptr<realityio::Builder>>>(uint64_t **a1, void *a2, uint64_t a3)
{
  result = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a1, &v4, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t *std::__tree<std::shared_ptr<realityio::Builder>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t _ZTWN9realityio33kDummyLayerMutexForInvalidObjectsE()
{
  if (!*__tls_guard(&__tls_guard))
  {
    *v0(v1) = 1;
    context = objc_autoreleasePoolPush();
    v3 = realityio::kDummyLayerMutexForInvalidObjects(&realityio::kDummyLayerMutexForInvalidObjects);
    MEMORY[0x24C1A8FC0](v3);
    objc_autoreleasePoolPop(context);
  }

  return realityio::kDummyLayerMutexForInvalidObjects(&realityio::kDummyLayerMutexForInvalidObjects);
}

realityio::tokens::TransformBuilderTokens_StaticTokenType *realityio::tokens::TransformBuilderTokens_StaticTokenType::TransformBuilderTokens_StaticTokenType(realityio::tokens::TransformBuilderTokens_StaticTokenType *this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "face", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "horizontal", 0);
  MEMORY[0x24C1A5DF0](this + 16, "image", 0);
  MEMORY[0x24C1A5DF0](this + 24, "plane", 0);
  MEMORY[0x24C1A5DF0](this + 32, "vertical", 0);
  MEMORY[0x24C1A5DF0](this + 40, "xformOp", 0);
  MEMORY[0x24C1A5DF0](this + 48, "xformOpOrder", 0);
  MEMORY[0x24C1A5DF0](this + 56, "disableAnchoringSchema", 0);
  MEMORY[0x24C1A5DF0](this + 64, "preliminary:anchoring:type", 0);
  MEMORY[0x24C1A5DF0](this + 72, "preliminary:planeAnchoring:alignment", 0);
  MEMORY[0x24C1A5DF0](this + 80, "preliminary:imageAnchoring:referenceImage", 0);
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

void sub_247684B84(_Unwind_Exception *a1)
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

void realityio::generateTransformDirtyStageSubscription(void *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_27EE53500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53500))
  {
    operator new();
  }

  v2 = *algn_27EE534F8;
  *a1 = _MergedGlobals_47;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2476850C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  v34 = *(v33 - 120);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  *(v33 - 184) = &a25;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v33 - 184));
  v35 = *(v33 - 136);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  *(v33 - 184) = &a17;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v33 - 184));
  v36 = 24;
  while (1)
  {
    v37 = *(v33 - 176 + v36);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    v36 -= 16;
    if (v36 == -8)
    {
      if (a12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a12);
      }

      if ((a10 & 7) != 0)
      {
        atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (a16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a16);
      }

      if ((a14 & 7) != 0)
      {
        atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(v33 - 176) = &a20;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v33 - 176));
      *(v33 - 176) = &a28;
      std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v33 - 176));
      MEMORY[0x24C1A91B0](v32, 0x10A1C407F0BD61ELL);
      __cxa_guard_abort(&qword_27EE53500);
      _Unwind_Resume(a1);
    }
  }
}

void realityio::RectAreaLightComponentBuilder::RectAreaLightComponentBuilder(realityio::RectAreaLightComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "RectAreaLightComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kRectAreaLightComponentBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE53528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53528))
  {
    operator new();
  }

  v4[0] = qword_27EE53518;
  v4[1] = unk_27EE53520;
  if (unk_27EE53520)
  {
    atomic_fetch_add_explicit((unk_27EE53520 + 8), 1uLL, memory_order_relaxed);
  }

  v8[0] = &unk_28595A690;
  v8[3] = v8;
  v7[0] = &unk_28595A710;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, v4, v8, v7);
}

void sub_2476859D0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  MEMORY[0x24C1A91B0](v55, 0x10A1C40F82F910ELL, a3, a4, a5, a6, a7, a8);
  *(v58 - 208) = &a44;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v58 - 208));
  MEMORY[0x24C1A91B0](v56, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v57, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE53528);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void realityio::RectAreaLightComponentBuilder::run(realityio::RectAreaLightComponentBuilder *this, realityio::Inputs *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v27[4] = a2;
  v2 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v27, v3, v2);
  v4 = atomic_load(&realityio::tokens::LightBuilderTokens);
  if (v4)
  {
    realityio::getAttributeColor4FAndGamut(&v30, v27, (v4 + 72), xmmword_247766550);
    v28 = v30;
    v29 = v31;
    v5 = atomic_load(&realityio::tokens::LightBuilderTokens);
    if (v5)
    {
      realityio::getAttributeValue<float>(&v30, v27, (v5 + 56));
      v6 = v30;
      v7 = *(&v30 + 2);
      if ((v30 & 1) == 0 && v33 < 0)
      {
        operator delete(__p);
      }

      v8 = 1.0;
      if (v6)
      {
        v8 = v7;
      }

      v26 = v8;
      v9 = atomic_load(&realityio::tokens::LightBuilderTokens);
      if (v9)
      {
        realityio::getAttributeValue<float>(&v30, v27, (v9 + 64));
        v10 = v30;
        v11 = *(&v30 + 2);
        if ((v30 & 1) == 0 && v33 < 0)
        {
          operator delete(__p);
        }

        v12 = 0.0;
        if (v10)
        {
          v12 = v11;
        }

        v25 = v12;
        v13 = atomic_load(&realityio::tokens::LightBuilderTokens);
        if (v13)
        {
          realityio::getAttributeValue<float>(&v30, v27, (v13 + 104));
          v14 = v30;
          v15 = *(&v30 + 2);
          if ((v30 & 1) == 0 && v33 < 0)
          {
            operator delete(__p);
          }

          v16 = 1.0;
          if (v14)
          {
            v16 = v15;
          }

          v24 = v16;
          v17 = atomic_load(&realityio::tokens::LightBuilderTokens);
          if (v17)
          {
            realityio::getAttributeValue<float>(&v30, v27, (v17 + 112));
            v19 = v30;
            v20 = *(&v30 + 2);
            if ((v30 & 1) == 0 && v33 < 0)
            {
              operator delete(__p);
            }

            v21 = 1.0;
            if (v19)
            {
              v21 = v20;
            }

            v23 = v21;
            v26 = realityio::scaleLightIntensityByStageUnits(v27, v18, *MEMORY[0x277D00838] * v26);
            v22 = 0;
            operator new();
          }

          pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::LightBuilderTokens);
        }

        pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::LightBuilderTokens);
      }

      pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::LightBuilderTokens);
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::LightBuilderTokens);
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::LightBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::LightBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::LightBuilderTokens);
}

void sub_247686120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x24C1A91B0](v8, 0x1012C40EC159624, a3, a4);
  __cxa_guard_abort(&qword_27EE53510);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t realityio::RectAreaLightComponentBuilder::clear(realityio::RectAreaLightComponentBuilder *this, realityio::Inputs *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 6);
  v4 = a2;
  v5[0] = &unk_28595A890;
  v5[1] = &v4;
  v5[3] = v5;
  (*(*v2 + 16))(v2, v5);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
}

void sub_24768627C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void realityio::RectAreaLightComponentBuilder::~RectAreaLightComponentBuilder(realityio::RectAreaLightComponentBuilder *this)
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

void sub_247686568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::RectAreaLightComponentBuilder::RectAreaLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::RectAreaLightComponentBuilder::RectAreaLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::RectAreaLightComponentBuilder::RectAreaLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::RectAreaLightComponentBuilder::RectAreaLightComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::RectAreaLightComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::RectAreaLightComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595A790;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::RectAreaLightComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::RectAreaLightComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = **(a1 + 8);
  v3 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v2, v3, v13);
  if (v13[0])
  {
    v4 = v14;
    v12 = v14;
    if (v14)
    {
      RERetain();
      pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&buf, *(a1 + 16));
      v5 = *(&buf + 1);
      if (*(&buf + 1))
      {
        if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&buf + 1) + 14))
        {
          v5 = buf;
        }

        else
        {
          v5 = 0;
        }
      }

      v11 = v5;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v11);
      v6 = *(&buf + 1);
      if (*(&buf + 1) && atomic_fetch_add_explicit((*(&buf + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        (*(*v6 + 8))(v6);
      }

      pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>(&buf, &v11);
      pxrInternal__aapl__pxrReserved__::UsdGeomGetStageMetersPerUnit();
      v7 = *(&buf + 1);
      if (*(&buf + 1))
      {
        if (atomic_fetch_add_explicit((*(&buf + 1) + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v7 + 8))(v7);
        }
      }

      RERectAreaLightComponentGetComponentType();
      v16 = 0;
      operator new();
    }
  }

  else
  {
    v12 = 0;
  }

  v8 = *(realityio::logObjects(v4) + 24);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v11, *(a1 + 16));
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v11);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = Text;
    _os_log_impl(&dword_247485000, v8, OS_LOG_TYPE_DEFAULT, "Stopping operation to set rectAreaLight component because entity no longer exists for prim %s", &buf, 0xCu);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v12);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v13);
}

void sub_247686B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, atomic_uint *);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v15 = *(v13 - 88);
  if (v15)
  {
    if (atomic_fetch_add_explicit(v15 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v15 + 8))(v15, a2, a3, a4, a5, a6, a7);
    }
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(va1);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::RectAreaLightComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::RectAreaLightComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio29RectAreaLightComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595A800;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio29RectAreaLightComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  **(a1 + 8) = *a2;
  exp2f(**(a1 + 24));
  RERectAreaLightComponentSetIntensity();
  RERectAreaLightComponentSetColorGamut3F();
  v4.n128_u32[0] = **(a1 + 40);
  v4.n128_u32[1] = **(a1 + 56);
  v4.n128_u64[0] = vmul_n_f32(v4.n128_u64[0], **(a1 + 48));

  return MEMORY[0x282154998](v3, v4);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio29RectAreaLightComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio29RectAreaLightComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::RectAreaLightComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::RectAreaLightComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595A890;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::RectAreaLightComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::RectAreaLightComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(realityio::EntityBuilder *a1)
{
  v1 = **(a1 + 1);
  v2 = realityio::EntityBuilder::kInputName(a1);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(v1, v2, v5);
  if (v5[0])
  {
    v4 = v6;
    if (v6)
    {
      RERetain();
      RERectAreaLightComponentGetComponentType();
      REEntityRemoveComponentByClass();
    }
  }

  else
  {
    v4 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v4);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v5);
}

void sub_247686FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::RectAreaLightComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::RectAreaLightComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void realityio::internal::PrimToEntityMap::makePrimToEntityMap(uint64_t *__return_ptr a1@<X8>, uint64_t *a2@<X0>)
{
  realityio::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v57, 2044, a2, 0, 0, 0);
  v56[0] = 0;
  v56[1] = 0;
  v55 = v56;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(v48, v4);
  if ((v48[24] & 7) != 0)
  {
    atomic_fetch_add_explicit((*&v48[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v48[16]);
  if (*&v48[8])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v48[8]);
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  PseudoRoot = pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(&v45, v5);
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(PseudoRoot);
  v9 = *UsdPrimDefaultPredicate;
  v8 = *(UsdPrimDefaultPredicate + 8);
  v10 = *(UsdPrimDefaultPredicate + 16);
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v9 & 0x2000) != 0 || (v8 & 0x2000) == 0))
  {
    v9 |= 0x2000uLL;
    v8 &= ~0x2000uLL;
  }

  v42[0] = v9;
  v42[1] = v8;
  *&v43 = v10;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(&v45, v42, v48);
  if ((BYTE8(v46) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v46 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v46);
  if (*(&v45 + 1))
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v45 + 1));
  }

  *&v45 = *v48;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v45 + 2, &v48[8]);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v45 + 3, &v48[12]);
  v46 = *&v48[16];
  v47 = v49;
  v42[0] = v50;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v42[1], &v51);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v42[1] + 1, &v52);
  v43 = v53;
  v44 = v54;
  while (v45 != *v42 || !pxrInternal__aapl__pxrReserved__::operator==(&v46, &v43))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v38, &v45);
    if ((v41 & 7) != 0)
    {
      atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v40);
    if (v39)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v39);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v45);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v42[1]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v45 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v51);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v48[8]);
  v45 = 0uLL;
  *&v46 = 0;
  v42[0] = 0;
  v42[1] = 0;
  *&v43 = 0;
  v39 = 0;
  v40 = 0;
  v37[1] = 0;
  v38 = &v39;
  v36 = v37;
  v37[0] = 0;
  v35[0] = 0;
  v35[1] = 0;
  v33[1] = 0;
  v34 = v35;
  v32 = v33;
  v33[0] = 0;
  HIBYTE(v31) = 0;
  LOBYTE(__p) = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPseudoRoot(v48, v11);
  if ((v48[24] & 7) != 0)
  {
    atomic_fetch_add_explicit((*&v48[24] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v48[16]);
  if (*&v48[8])
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*&v48[8]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  v30 = 0;
  v31 = 0;
  __p = &v30;
  v12 = v45;
  if (*(&v45 + 1) != v45)
  {
    v13 = 0;
    v14 = 0;
    if ((0x4EC4EC4EC4EC4EC5 * ((*(&v45 + 1) - v45) >> 3)) <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 0x4EC4EC4EC4EC4EC5 * ((*(&v45 + 1) - v45) >> 3);
    }

    do
    {
      v16 = (v45 + v13);
      if (*(v45 + v13 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v48, *v16, *(v16 + 1));
      }

      else
      {
        v17 = *v16;
        *&v48[16] = *(v16 + 2);
        *v48 = v17;
      }

      *&v48[24] = v14;
      if (!*std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(&__p, &v58, v48))
      {
        operator new();
      }

      if ((v48[23] & 0x80000000) != 0)
      {
        operator delete(*v48);
      }

      ++v14;
      v13 += 104;
    }

    while (v15 != v14);
    v12 = v45;
  }

  *a1 = *v42;
  a1[2] = v43;
  v42[1] = 0;
  *&v43 = 0;
  v42[0] = 0;
  *(a1 + 3) = v12;
  v18 = v46;
  *&v46 = 0;
  v45 = 0uLL;
  v20 = v38;
  v19 = v39;
  a1[5] = v18;
  a1[6] = v20;
  a1[7] = v19;
  v21 = a1 + 7;
  v22 = v40;
  a1[8] = v40;
  if (v22)
  {
    v19[2] = v21;
    v38 = &v39;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    a1[6] = v21;
  }

  v24 = __p;
  v23 = v30;
  a1[10] = v30;
  v25 = a1 + 10;
  a1[9] = v24;
  v26 = v31;
  a1[11] = v31;
  if (v26)
  {
    *(v23 + 16) = v25;
    __p = &v30;
    v30 = 0;
    v31 = 0;
    v23 = 0;
  }

  else
  {
    a1[9] = v25;
  }

  std::__tree<std::string>::destroy(&__p, v23);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v32, v33[0]);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v34, v35[0]);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v36, v37[0]);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy(&v38, v39);
  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  *v48 = &v45;
  std::vector<realityio::internal::PrimToEntityMap::EntityData>::__destroy_vector::operator()[abi:ne200100](v48);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(&v55, v56[0]);
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v57, v27, v28);
}

void sub_2476875C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v38 - 208));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&a19, a20);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&a22, a23);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&a25, a26);
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>>>::destroy(&a28, a29);
  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  *(v38 - 208) = &a38;
  std::vector<realityio::internal::PrimToEntityMap::EntityData>::__destroy_vector::operator()[abi:ne200100]((v38 - 208));
  std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::destroy(v38 - 128, *(v38 - 120));
  realityio::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard((v38 - 104), v40, v41);
  _Unwind_Resume(a1);
}

uint64_t realityio::internal::anonymous namespace::appendSkeletonsHelper(realityio::internal::_anonymous_namespace_ *a1, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  if (result)
  {
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v17[3] = 0;
    v17[0] = MEMORY[0x277D86780] + 16;
    pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedSkeleton(v16, v17);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v15, v16);
    v5 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::find<pxrInternal__aapl__pxrReserved__::SdfPath>(a2, &v15);
    v6 = a2 + 8;
    if (a2 + 8 == v5)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13, &v15);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v13 + 1, &v15 + 1);
      memset(v14, 0, sizeof(v14));
      memset(v12, 0, sizeof(v12));
      v7 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>>(a2, &v13, &v13);
      v9 = v8;
      v18 = v14;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v18);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
      v18 = v12;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v18);
      if (v9)
      {
        v5 = v7;
      }

      else
      {
        v5 = v6;
      }
    }

    if (v5 != v6)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v13, a1);
      v10 = *(v5 + 6);
      if (v10 >= *(v5 + 7))
      {
        v11 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath>((v5 + 40), &v13);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(*(v5 + 6), &v13);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v10 + 4), &v13 + 1);
        v11 = v10 + 8;
      }

      *(v5 + 6) = v11;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
    MEMORY[0x24C1A53A0](v16);
    return MEMORY[0x24C1A5620](v17);
  }

  return result;
}

void sub_2476878B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va1);
  MEMORY[0x24C1A53A0](va2);
  MEMORY[0x24C1A5620](va3);
  _Unwind_Resume(a1);
}

void realityio::internal::anonymous namespace::createEntitiesAndBuildInitialMappingsHelper(uint64_t a1, pxrInternal__aapl__pxrReserved__ **a2, unsigned int a3, uint64_t a4, const void **a5, void *a6, uint64_t **a7, uint64_t a8, uint64_t **a9, uint64_t a10, uint64_t **a11)
{
  v128 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v124, *a1, *(a1 + 8));
  }

  else
  {
    v124 = *a1;
  }

  PrimEntityProvidingSetting = realityio::getPrimEntityProvidingSetting(a2, a2);
  isEntityProviding = realityio::isEntityProviding(a2, (PrimEntityProvidingSetting | a3));
  v16 = a4;
  v101 = a6;
  if (!isEntityProviding)
  {
    goto LABEL_76;
  }

  Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(a2);
  if ((*Name & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (*Name & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Name);
  }

  if (*(EmptyString + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v110, *EmptyString, *(EmptyString + 8));
  }

  else
  {
    v19 = *EmptyString;
    *&v110[16] = *(EmptyString + 16);
    *v110 = v19;
  }

  v20 = *(a1 + 23);
  if ((v20 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      v21 = a1;
      if (*(a1 + 23) != 1)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

LABEL_19:
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, v110, v119);
    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v124.__r_.__value_.__l.__data_);
    }

    v23 = PrimEntityProvidingSetting;
    v124 = *v119;
    goto LABEL_43;
  }

  v22 = *(a1 + 8);
  if (!v22)
  {
    goto LABEL_19;
  }

  if (v22 != 1)
  {
    goto LABEL_22;
  }

  v21 = *a1;
LABEL_18:
  if (*v21 == 47)
  {
    goto LABEL_19;
  }

LABEL_22:
  if (v20 >= 0)
  {
    v24 = *(a1 + 23);
  }

  else
  {
    v24 = *(a1 + 8);
  }

  v25 = v119;
  std::string::basic_string[abi:ne200100](v119, v24 + 1);
  if (v119[23] < 0)
  {
    v25 = *v119;
  }

  if (v24)
  {
    if (*(a1 + 23) >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    memmove(v25, v26, v24);
  }

  *&v25[v24] = 47;
  if (v110[23] >= 0)
  {
    v27 = v110;
  }

  else
  {
    v27 = *v110;
  }

  if (v110[23] >= 0)
  {
    v28 = v110[23];
  }

  else
  {
    v28 = *&v110[8];
  }

  v29 = std::string::append(v119, v27, v28);
  v30 = v29->__r_.__value_.__r.__words[0];
  *&v125 = v29->__r_.__value_.__l.__size_;
  *(&v125 + 7) = *(&v29->__r_.__value_.__r.__words[1] + 7);
  v31 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }

  v124.__r_.__value_.__r.__words[0] = v30;
  v124.__r_.__value_.__l.__size_ = v125;
  *(&v124.__r_.__value_.__r.__words[1] + 7) = *(&v125 + 7);
  *(&v124.__r_.__value_.__s + 23) = v31;
  if ((v119[23] & 0x80000000) != 0)
  {
    operator delete(*v119);
  }

  v23 = PrimEntityProvidingSetting;
LABEL_43:
  v33 = *a6;
  v32 = a6[1];
  v123 = 0;
  v122 = 0u;
  v120 = 0u;
  memset(v121, 0, sizeof(v121));
  memset(v119, 0, sizeof(v119));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *&v120 = &v120 + 8;
  *(&v120 + 1) = 0;
  v121[2] = 0;
  v121[3] = 0;
  v121[0] = 0;
  v121[1] = &v121[2];
  *(&v122 + 1) = 0;
  v123 = 0;
  *&v122 = &v122 + 8;
  v35 = a6[1];
  v34 = a6[2];
  if (v35 >= v34)
  {
    v38 = 0x4EC4EC4EC4EC4EC5 * ((v35 - *a6) >> 3);
    v39 = v38 + 1;
    if ((v38 + 1) > 0x276276276276276)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
    }

    v40 = 0x4EC4EC4EC4EC4EC5 * ((v34 - *a6) >> 3);
    if (2 * v40 > v39)
    {
      v39 = 2 * v40;
    }

    if (v40 >= 0x13B13B13B13B13BLL)
    {
      v41 = 0x276276276276276;
    }

    else
    {
      v41 = v39;
    }

    v127 = a6;
    v103 = v33;
    if (v41)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::internal::PrimToEntityMap::EntityData>>(a6, v41);
    }

    v42 = v32;
    v43 = v23;
    v44 = a5;
    *&v125 = 0;
    *(&v125 + 1) = 104 * v38;
    v126 = (104 * v38);
    realityio::internal::PrimToEntityMap::EntityData::EntityData(104 * v38, v119);
    v36 = v126 + 104;
    *&v126 = v126 + 104;
    v45 = *a6;
    v46 = a6[1];
    v47 = *a6 - v46;
    v48 = *(&v125 + 1) + v47;
    if (*v101 == v46)
    {
      v37 = v101;
    }

    else
    {
      v49 = 0;
      v50 = (*(&v125 + 1) + v47);
      v51 = *v101;
      do
      {
        realityio::internal::PrimToEntityMap::EntityData::EntityData(v50, v51);
        v51 = (v51 + 104);
        v50 = (v50 + 104);
        v49 -= 104;
      }

      while (v51 != v46);
      do
      {
        std::allocator_traits<std::allocator<realityio::internal::PrimToEntityMap::EntityData>>::destroy[abi:ne200100]<realityio::internal::PrimToEntityMap::EntityData,0>(v45);
        v45 += 104;
      }

      while (v45 != v46);
      v37 = v101;
      v45 = *v101;
      v36 = v126;
    }

    *v37 = v48;
    v37[1] = v36;
    v52 = v37[2];
    v37[2] = *(&v126 + 1);
    *&v126 = v45;
    *(&v126 + 1) = v52;
    *&v125 = v45;
    *(&v125 + 1) = v45;
    std::__split_buffer<realityio::internal::PrimToEntityMap::EntityData>::~__split_buffer(&v125);
    a5 = v44;
    v23 = v43;
    v32 = v42;
    v33 = v103;
  }

  else
  {
    realityio::internal::PrimToEntityMap::EntityData::EntityData(a6[1], v119);
    v36 = v35 + 104;
    v37 = a6;
    a6[1] = v36;
  }

  v37[1] = v36;
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v122, *(&v122 + 1));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v121[1], v121[2]);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v120, *(&v120 + 1));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  isEntityProviding = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v119[24]);
  if ((v119[23] & 0x80000000) != 0)
  {
    operator delete(*v119);
  }

  v54 = a5[1];
  v53 = a5[2];
  PrimEntityProvidingSetting = v23;
  if (v54 >= v53)
  {
    v56 = *a5;
    v57 = v54 - *a5;
    v58 = v57 >> 3;
    v59 = (v57 >> 3) + 1;
    if (v59 >> 61)
    {
      std::vector<char const*>::__throw_length_error[abi:ne200100]();
    }

    v60 = v53 - v56;
    if (v60 >> 2 > v59)
    {
      v59 = v60 >> 2;
    }

    v61 = v60 >= 0x7FFFFFFFFFFFFFF8;
    v62 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v61)
    {
      v62 = v59;
    }

    if (v62)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>(a5, v62);
    }

    *(8 * v58) = a4;
    v55 = (8 * v58 + 8);
    memcpy(0, v56, v57);
    isEntityProviding = *a5;
    *a5 = 0;
    a5[1] = v55;
    a5[2] = 0;
    if (isEntityProviding)
    {
      operator delete(isEntityProviding);
    }
  }

  else
  {
    *v54 = a4;
    v55 = v54 + 8;
  }

  a5[1] = v55;
  if ((v110[23] & 0x80000000) != 0)
  {
    operator delete(*v110);
  }

  v16 = 0x4EC4EC4EC4EC4EC5 * ((v32 - v33) >> 3);
LABEL_76:
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = &v117;
  v104 = v16;
  if (v16 == a4)
  {
    v64 = a10;
  }

  else
  {
    v64 = &v116;
  }

  *&v114 = &v114 + 8;
  *(&v114 + 1) = 0;
  if (v16 != a4)
  {
    a9 = &v114;
  }

  *(&v112 + 1) = 0;
  v113 = 0;
  if (v16 != a4)
  {
    a11 = &v112;
  }

  v98 = a11;
  *&v112 = &v112 + 8;
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(isEntityProviding);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (IsA)
  {
    if ((IsA & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v119, a2);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>(v64, v119, v119);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      IsA = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v119);
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomCube::_GetStaticTfType(IsA);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  v68 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (v68)
  {
    goto LABEL_97;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomSphere::_GetStaticTfType(v68);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  v69 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (v69)
  {
    goto LABEL_97;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomCylinder::_GetStaticTfType(v69);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  v70 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (v70)
  {
    goto LABEL_97;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomCapsule::_GetStaticTfType(v70);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  v71 = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (v71)
  {
    goto LABEL_97;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomCone::_GetStaticTfType(v71);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
  {
    goto LABEL_97;
  }

  v73 = a2[1];
  if (!v73 || (*(v73 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(a2[1], v72);
  }

  v74 = *(v73 + 3);
  v75 = atomic_load(&realityio::tokens::TextBuilderTokens);
  if (!v75)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<realityio::tokens::TextBuilderTokens_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<realityio::tokens::TextBuilderTokens_StaticTokenType>>::_TryToCreateData(&realityio::tokens::TextBuilderTokens);
  }

  if ((*(v75 + 112) ^ *v74) <= 7)
  {
LABEL_97:
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v119, a2);
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>(v98, v119, v119);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v119);
  }

  memset(v119, 0, 17);
  v76 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator&=(v119, 0);
  v125 = *v76;
  *&v126 = *(v76 + 16);
  *v119 = v125;
  v119[16] = v126;
  v77 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator&=(v119, 1);
  *v110 = *v77;
  *&v110[16] = *(v77 + 16);
  *v119 = *v110;
  v119[16] = v110[16];
  v78 = pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsConjunction::operator&=(v119, 0x100000005);
  v80 = *v78;
  v79 = v78[1];
  v81 = v78[2];
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  *&v125 = v80 & 0xFFFFFFFFFFFFDFFFLL;
  *(&v125 + 1) = v79 | 0x2000;
  *&v126 = v81;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(a2, &v125, v119);
  *&v125 = *v119;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v125 + 2, &v119[8]);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v125 + 3, &v119[12]);
  v126 = *&v119[16];
  *v110 = *(&v120 + 1);
  v127 = v120;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v110[8], v121);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v110[12], v121 + 1);
  *&v110[16] = *&v121[1];
  v82 = (a8 + 8);
  v111 = v121[3];
  if (v104 == a4)
  {
    v83 = (a10 + 8);
  }

  else
  {
    v83 = &v117;
  }

  while (v125 != *v110 || !pxrInternal__aapl__pxrReserved__::operator==(&v126, &v110[16]))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v106, &v125);
    pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::_GetStaticTfType(v84);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v106);
      v85 = *v82;
      if (!*v82)
      {
        goto LABEL_114;
      }

      v86 = (a8 + 8);
      do
      {
        v87 = pxrInternal__aapl__pxrReserved__::SdfPath::operator<(v85 + 4, &v105);
        if (v87)
        {
          v88 = 1;
        }

        else
        {
          v88 = 0;
        }

        if (!v87)
        {
          v86 = v85;
        }

        v85 = v85[v88];
      }

      while (v85);
      if (v86 == v82 || pxrInternal__aapl__pxrReserved__::SdfPath::operator<(&v105, v86 + 4))
      {
LABEL_114:
        v86 = (a8 + 8);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v105);
      if (v82 != v86)
      {
        v89 = v86[5];
        v90 = v86[6];
        while (v89 != v90)
        {
          std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v64, v83, v89, v89);
          ++v89;
        }
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v106);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>(a9, &v105, &v105);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v105);
    }

    if ((v109 & 7) != 0)
    {
      atomic_fetch_add_explicit((v109 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
    if (v107)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v107);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v125);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v110[8]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v125 + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v121);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v119[8]);
  if (v104 != a4)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v125, a2);
    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v119, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
    }

    else
    {
      *v119 = v124;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v119[24], &v125);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v119[28], &v125 + 1);
    v120 = v114;
    v121[0] = v115;
    if (v115)
    {
      *(*(&v114 + 1) + 16) = &v120 + 8;
      *&v114 = &v114 + 8;
      *(&v114 + 1) = 0;
      v115 = 0;
    }

    else
    {
      *&v120 = &v120 + 8;
    }

    v121[1] = v116;
    v121[2] = v117;
    v121[3] = v118;
    if (v118)
    {
      v117[2] = &v121[2];
      v116 = &v117;
      v117 = 0;
      v118 = 0;
    }

    else
    {
      v121[1] = &v121[2];
    }

    v91 = *(&v112 + 1);
    v122 = v112;
    v123 = v113;
    if (v113)
    {
      *(*(&v112 + 1) + 16) = &v122 + 8;
      *&v112 = &v112 + 8;
      *(&v112 + 1) = 0;
      v113 = 0;
    }

    else
    {
      *&v122 = &v122 + 8;
    }

    v92 = *v101 + 104 * v104;
    if (v92 != v119)
    {
      v93 = *(v92 + 16);
      v94 = *v92;
      v95 = *&v119[16];
      *v92 = *v119;
      *(v92 + 16) = v95;
      *v119 = v94;
      *&v119[16] = v93;
      std::swap[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath>((v92 + 24), &v119[24]);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::swap((v92 + 32), &v120);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::swap((v92 + 56), &v121[1]);
      std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::swap((v92 + 80), &v122);
      v91 = *(&v122 + 1);
    }

    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v122, v91);
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v121[1], v121[2]);
    std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v120, *(&v120 + 1));
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v119[24]);
    if ((v119[23] & 0x80000000) != 0)
    {
      operator delete(*v119);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v125);
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v106, a2);
  LODWORD(v125) = v106;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator=();
  DWORD1(v125) = HIDWORD(v106);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator=();
  *(&v125 + 1) = v104;
  if (!*std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::SdfPath,std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>,std::less<pxrInternal__aapl__pxrReserved__::SdfPath>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,std::set<pxrInternal__aapl__pxrReserved__::TfToken>>>>::__find_equal<pxrInternal__aapl__pxrReserved__::SdfPath>(a7, v110, &v125))
  {
    operator new();
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v125);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v106);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v112, *(&v112 + 1));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v114, *(&v114 + 1));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&v116, v117);
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v124.__r_.__value_.__l.__data_);
  }
}

void sub_247688654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v54 - 144));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&a40, a41);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&a43, a44);
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(&a46, a47);
  if (*(v54 - 185) < 0)
  {
    operator delete(*(v54 - 208));
  }

  _Unwind_Resume(a1);
}

void *realityio::internal::PrimToEntityMap::EntityData::estimateMeshes@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v5 = result[7];
  if (v5 != result + 8)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
    v7 = v6;
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v19, (v5 + 28));
    pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(v25, v7, &v19);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v24[0] = MEMORY[0x277D866A8] + 16;
    MEMORY[0x24C1A5DE0](&v19, "primvars:st");
    realityio::approximateGeomFromUsdGeomMesh(v24, &v23);
  }

  v8 = result[10];
  v9 = result + 11;
  if (v8 != result + 11)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2);
      v11 = v10;
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(v25, (v8 + 28));
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v19, v11, v25);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v25);
      realityio::approximateGeomWithPrimitivePrim(&v19, 0x40, 64, 64, 32, v25);
      v12 = v25[0];
      if (v25[0])
      {
        ++*a3;
        v13 = *(a3 + 8) + v12;
        v14 = v25[2];
        v15 = *(a3 + 16) + v25[1];
        *(a3 + 8) = v13;
        *(a3 + 16) = v15;
        if (v14 > *(a3 + 24))
        {
          *(a3 + 24) = v14;
        }
      }

      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
      result = v20;
      if (v20)
      {
        result = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
      }

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

    while (v17 != v9);
  }

  return result;
}

void sub_247688C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  MEMORY[0x24C1A5620](va, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x24C1A4DB0](v26 - 152);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v26 - 128));
  _Unwind_Resume(a1);
}

uint64_t realityio::internal::anonymous namespace::isBoundToSkeleton(realityio::internal::_anonymous_namespace_ *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::_GetStaticTfType(this);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  if (!pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v6[3] = 0;
  v6[0] = MEMORY[0x277D86780] + 16;
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetInheritedSkeleton(&v4, v6);
  if (!v5 || (*(v5 + 57) & 8) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = (*(v4 + 32))(&v4);
  }

  MEMORY[0x24C1A53A0](&v4);
  MEMORY[0x24C1A5620](v6);
  return v2;
}

uint64_t realityio::internal::PrimToEntityMap::EntityData::EntityData(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 24), a2 + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 28), a2 + 7);
  *(a1 + 32) = *(a2 + 4);
  v6 = a2 + 5;
  v5 = *(a2 + 5);
  *(a1 + 40) = v5;
  v7 = a1 + 40;
  v8 = *(a2 + 6);
  *(a1 + 48) = v8;
  if (v8)
  {
    *(v5 + 16) = v7;
    *(a2 + 4) = v6;
    *v6 = 0;
    *(a2 + 6) = 0;
  }

  else
  {
    *(a1 + 32) = v7;
  }

  *(a1 + 56) = *(a2 + 7);
  v10 = a2 + 4;
  v9 = *(a2 + 8);
  *(a1 + 64) = v9;
  v11 = a1 + 64;
  v12 = *(a2 + 9);
  *(a1 + 72) = v12;
  if (v12)
  {
    *(v9 + 16) = v11;
    *(a2 + 7) = v10;
    *v10 = 0;
    *(a2 + 9) = 0;
  }

  else
  {
    *(a1 + 56) = v11;
  }

  *(a1 + 80) = *(a2 + 10);
  v14 = a2 + 11;
  v13 = *(a2 + 11);
  *(a1 + 88) = v13;
  v15 = a1 + 88;
  v16 = *(a2 + 12);
  *(a1 + 96) = v16;
  if (v16)
  {
    *(v13 + 16) = v15;
    *(a2 + 10) = v14;
    *v14 = 0;
    *(a2 + 12) = 0;
  }

  else
  {
    *(a1 + 80) = v15;
  }

  v18 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 24, &v18);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a2 + 28, &v18 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  MEMORY[0x24C1A8D40](a2, "");
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(a2 + 56, *(a2 + 8));
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 7) = v10;
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy((a2 + 2), *(a2 + 5));
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 4) = v6;
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy((a2 + 5), *(a2 + 11));
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 10) = v14;
  return a1;
}

void sub_247688FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(v12, *(v11 + 88));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(a10, *(v11 + 64));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(a11, *(v11 + 40));
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v11 + 24));
  if (*(v11 + 23) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::internal::PrimToEntityMap::EntityData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *realityio::internal::PrimToEntityMap::EntityData::EntityData(std::string *this, __int128 *a2)
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

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&this[1], a2 + 6);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this[1].__r_.__value_.__r.__words + 1, a2 + 7);
  std::set<pxrInternal__aapl__pxrReserved__::SdfPath>::set[abi:ne200100](&this[1].__r_.__value_.__l.__size_, (a2 + 2));
  std::set<pxrInternal__aapl__pxrReserved__::SdfPath>::set[abi:ne200100](&this[2].__r_.__value_.__l.__size_, a2 + 56);
  std::set<pxrInternal__aapl__pxrReserved__::SdfPath>::set[abi:ne200100](&this[3].__r_.__value_.__l.__size_, (a2 + 5));
  return this;
}

void sub_247689124(_Unwind_Exception *a1)
{
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(v1 + 56, *(v1 + 64));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(v1 + 32, *(v1 + 40));
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::set<pxrInternal__aapl__pxrReserved__::SdfPath>::set[abi:ne200100](uint64_t **a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::set<pxrInternal__aapl__pxrReserved__::SdfPath>::insert[abi:ne200100]<std::__tree_const_iterator<pxrInternal__aapl__pxrReserved__::SdfPath,std::__tree_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t **std::set<pxrInternal__aapl__pxrReserved__::SdfPath>::insert[abi:ne200100]<std::__tree_const_iterator<pxrInternal__aapl__pxrReserved__::SdfPath,std::__tree_node<pxrInternal__aapl__pxrReserved__::SdfPath,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>(v5, v5 + 1, (v4 + 28), v4 + 7);
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

void std::allocator_traits<std::allocator<realityio::internal::PrimToEntityMap::EntityData>>::destroy[abi:ne200100]<realityio::internal::PrimToEntityMap::EntityData,0>(uint64_t a1)
{
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(a1 + 80, *(a1 + 88));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(a1 + 56, *(a1 + 64));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(a1 + 32, *(a1 + 40));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<realityio::internal::PrimToEntityMap::EntityData>,realityio::internal::PrimToEntityMap::EntityData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    for (i = **(a1 + 16); i != v3; std::allocator_traits<std::allocator<realityio::internal::PrimToEntityMap::EntityData>>::destroy[abi:ne200100]<realityio::internal::PrimToEntityMap::EntityData,0>(i))
    {
      i -= 104;
    }
  }

  return a1;
}

uint64_t std::__split_buffer<realityio::internal::PrimToEntityMap::EntityData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 104;
    std::allocator_traits<std::allocator<realityio::internal::PrimToEntityMap::EntityData>>::destroy[abi:ne200100]<realityio::internal::PrimToEntityMap::EntityData,0>(i - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void realityio::internal::PrimToEntityMap::EntityData::~EntityData(realityio::internal::PrimToEntityMap::EntityData *this)
{
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(this + 80, *(this + 11));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(this + 56, *(this + 8));
  std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::destroy(this + 32, *(this + 5));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 24);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t **std::__tree<pxrInternal__aapl__pxrReserved__::SdfPath>::swap(uint64_t **result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = (result + 1);
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<pxrInternal__aapl__pxrReserved__::SdfPath,unsigned long>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<pxrInternal__aapl__pxrReserved__::SdfPath const,unsigned long>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t realityio::logObjects(realityio *this)
{
  {
    operator new();
  }

  return realityio::logObjects(void)::logObjects;
}

realityio::LogObjects *realityio::LogObjects::LogObjects(realityio::LogObjects *this)
{
  *this = os_log_create("com.apple.corerio", "Foundation");
  *(this + 1) = os_log_create("com.apple.corerio", "StateTracking");
  *(this + 2) = os_log_create("com.apple.corerio", "Scheduler");
  *(this + 3) = os_log_create("com.apple.corerio", "Builder");
  *(this + 4) = os_log_create("com.apple.corerio", "CDM");
  *(this + 5) = os_log_create("com.apple.corerio", "Replication");
  *(this + 6) = os_log_create("com.apple.corerio", "Mtlx");
  *(this + 7) = os_log_create("com.apple.corerio", "BuilderExecutor");
  return this;
}

uint64_t RIOPxrUsdUtilsStageGetRealityKitOptionBool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RealityKitStage = a3;
  v7 = a3;
  if (a1 && a2)
  {
    v6 = *(a1 + 16);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v6);
    RealityKitStage = realityio::getRealityKitStageMetadata<BOOL>(&v6, (a2 + 16), &v7);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v6);
  }

  return RealityKitStage;
}

void RIOPxrUsdUtilsStageSetRealityKitOptionBool(realityio::UsdLayerMutexTracker *a1, uint64_t a2, char a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v6 = realityio::UsdLayerMutexTracker::instance(a1);
    v8 = *(a1 + 2);
    v7 = (a1 + 16);
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v7);
      EditTarget = pxrInternal__aapl__pxrReserved__::UsdStage::GetEditTarget(v9);
      v11 = *(EditTarget + 8);
      __p = *EditTarget;
      v22 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
      }
    }

    else
    {
      __p = 0;
      v22 = 0;
    }

    v12 = realityio::UsdLayerMutexTracker::writeMutexForLayer(v6, &__p);
    v13 = v22;
    if (v22 && atomic_fetch_add_explicit(v22 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v13 + 8))(v13);
    }

    std::recursive_mutex::lock(v12);
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v7);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&__p, v14);
    v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&__p);
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetCustomLayerData(&v24, v15);
    v16 = v22;
    if (v22 && atomic_fetch_add_explicit(v22 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      v16 = (*(*v16 + 8))(v16);
    }

    v26 = &unk_285946C7B;
    v25[0] = a3;
    if ((*(a2 + 16) & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v16);
    }

    std::operator+<char>();
    pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath();
    if (v23 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v7);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&__p, v17);
    v18 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&__p);
    pxrInternal__aapl__pxrReserved__::SdfLayer::SetCustomLayerData(v18, &v24);
    v19 = v22;
    if (v22 && atomic_fetch_add_explicit(v22 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v19 + 8))(v19);
    }

    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v25);
    v20 = v24;
    v24 = 0;
    if (v20)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v20, *(v20 + 8));
      MEMORY[0x24C1A91B0](v20, 0x1020C4062D53EE8);
    }

    std::recursive_mutex::unlock(v12);
  }
}

void sub_2476899CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, int a17, __int16 a18, char a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a18);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a16);
  std::recursive_mutex::unlock(v20);
  _Unwind_Resume(a1);
}

CFStringRef RIOPxrUsdUtilsPrimCopyRealityKitOptionString(uint64_t a1, uint64_t a2, CFStringRef a3)
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    if ((*(a2 + 16) & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
    }

    std::operator+<char>();
    MEMORY[0x24C1A5E00](&v10, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (pxrInternal__aapl__pxrReserved__::UsdObject::HasCustomDataKey((a1 + 24), &v10))
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetCustomDataByKey(v11, (a1 + 24), &v10);
      if (pxrInternal__aapl__pxrReserved__::VtValue::IsHolding<std::string>(v11))
      {
        v5 = pxrInternal__aapl__pxrReserved__::VtValue::Get<std::string>(v11);
        if (*(v5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 8));
        }

        else
        {
          v6 = *v5;
          __p.__r_.__value_.__r.__words[2] = *(v5 + 16);
          *&__p.__r_.__value_.__l.__data_ = v6;
        }

        v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        a3 = CFStringCreateWithCString(0, v7, 0x8000100u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v11);
    }

    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return a3;
}

void sub_247689C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&a17);
  if ((a16 & 7) != 0)
  {
    atomic_fetch_add_explicit((a16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t *realityio::AnimationLibraryComponentAction::operator()@<X0>(pxrInternal__aapl__pxrReserved__::VtValue *a1@<X2>, void *a2@<X3>, void *a3@<X4>, pxrInternal__aapl__pxrReserved__::VtValue *a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::VtValue(a4, a1);
  v17 = 0;
  v7 = *(a4 + 1);
  if (v7)
  {
    if (!strcmp((*(*(v7 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP11REComponentEE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
LABEL_6:
      if ((v7 & 4) != 0)
      {
        v8 = (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a4);
      }

      else
      {
        v8 = *a4;
      }

      realityio::WrappedRERef<REAsset *>::operator=(&v17, v8);
      v7 = v17;
      goto LABEL_10;
    }

    {
      v7 = *(a4 + 1);
      goto LABEL_6;
    }

    v7 = 0;
  }

LABEL_10:
  if (a2[1] == *a2)
  {
    return realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v17);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    pxrInternal__aapl__pxrReserved__::VtValue::VtValue(&v19, (*a3 + v9));
    v12 = v20;
    if (!v20)
    {
      goto LABEL_20;
    }

    if (strcmp((*(*(v20 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N9realityio12WrappedRERefIP7REAssetEE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      {
        goto LABEL_20;
      }

      v12 = v20;
    }

    if ((v12 & 4) != 0)
    {
      v13 = (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(&v19);
    }

    else
    {
      v13 = v19;
    }

    v11 = *v13;
LABEL_20:
    pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v19);
    ++v10;
    v9 += 16;
  }

  while (v10 < (a2[1] - *a2) >> 3);
  if (v11)
  {
    if (!v7)
    {
      REAnimationLibraryComponentGetComponentType();
      v14 = REComponentCreateByClass();
      v19 = v14;
      if (v14)
      {
        RERetain();
      }

      v15 = v17;
      if (v17 != v14)
      {
        v17 = v14;
        v19 = v15;
      }

      realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v19);
      v18[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<realityio::WrappedRERef<REComponent *>>(void)::ti;
      pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<realityio::WrappedRERef<REComponent *>>::_PlaceCopy(v18, &v17);
    }

    REAnimationLibraryComponentAssignAnimationLibraryAsset();
    RENetworkMarkComponentDirty();
  }

  return realityio::WrappedRERef<REComponent *>::~WrappedRERef(&v17);
}

void sub_247689FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

realityio::tokens::CubeMeshBuilderTokens_StaticTokenType *realityio::tokens::CubeMeshBuilderTokens_StaticTokenType::CubeMeshBuilderTokens_StaticTokenType(realityio::tokens::CubeMeshBuilderTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x24C1A5DF0](this, "Cube", 0);
  MEMORY[0x24C1A5DF0](v2 + 8, "size", 0);
  MEMORY[0x24C1A5DF0](this + 16, "material:binding", 0);
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

void sub_24768A144(_Unwind_Exception *a1)
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

void sub_24768A48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  MEMORY[0x24C1A91B0](v26, 0x10A1C40F82F910ELL, a3, a4, a5, a6, a7, a8);
  *(v27 - 144) = &a24;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v27 - 144));
  MEMORY[0x24C1A91B0](v25, v24);
  _Unwind_Resume(a1);
}

void realityio::tokens::CameraBuilderTokens_StaticTokenType::~CameraBuilderTokens_StaticTokenType(realityio::tokens::CameraBuilderTokens_StaticTokenType *this)
{
  v7 = (this + 48);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = *(this + 5);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 4);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 3);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 2);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 1);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

void realityio::CameraComponentBuilder::CameraComponentBuilder(realityio::CameraComponentBuilder *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v6, "CameraComponentBuilder");
  std::string::basic_string[abi:ne200100]<0>(__p, realityio::kCameraComponentBuilderIdentifier);
  if ((atomic_load_explicit(&qword_27EE53548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE53548))
  {
    operator new();
  }

  v4[0] = qword_27EE53538;
  v4[1] = unk_27EE53540;
  if (unk_27EE53540)
  {
    atomic_fetch_add_explicit((unk_27EE53540 + 8), 1uLL, memory_order_relaxed);
  }

  v8[0] = &unk_28595A9C0;
  v8[3] = v8;
  v7[0] = &unk_28595AA40;
  v7[3] = v7;
  realityio::DynamicBuilder::DynamicBuilder(this, a2, v6, __p, v4, v8, v7);
}

void sub_24768ACB4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  MEMORY[0x24C1A91B0](v55, 0x10A1C40F82F910ELL, a3, a4, a5, a6, a7, a8);
  *(v58 - 208) = &a44;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v58 - 208));
  MEMORY[0x24C1A91B0](v56, 0x10A1C401BF1BAA1);
  MEMORY[0x24C1A91B0](v57, 0x10A1C407F0BD61ELL);
  __cxa_guard_abort(&qword_27EE53548);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::CameraComponentBuilder::run(realityio::CameraComponentBuilder *this, realityio::Inputs *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = (a2 + 32);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::operator->((*a2 + 8));
  PrimAtPath = pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v21, v4, v3);
  pxrInternal__aapl__pxrReserved__::UsdGeomCamera::_GetStaticTfType(PrimAtPath);
  pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
  IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
  if (IsA)
  {
    v7 = *(realityio::logObjects(IsA) + 24);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v8)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_247485000, v7, OS_LOG_TYPE_INFO, "Updating entity's camera", buf, 2u);
    }

    v9 = realityio::EntityBuilder::kInputName(v8);
    realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v9, v19);
    if (v19[0])
    {
      v10 = v20;
      v18 = v20;
      if (v20)
      {
        v10 = RERetain();
        if (v18)
        {
          v11 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v25[0] = MEMORY[0x277D866D8] + 16;
          v16 = 0;
          pxrInternal__aapl__pxrReserved__::UsdGeomCamera::GetCamera(buf, v11, &v16);
          MEMORY[0x24C1A5070](v25);
          pxrInternal__aapl__pxrReserved__::GfCamera::GetClippingRange(buf);
          v16 = __PAIR64__(v13, v12);
          operator new();
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v14 = *(realityio::logObjects(v10) + 24);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_247485000, v14, OS_LOG_TYPE_DEFAULT, "Stopping operation to set the component because entity no longer exists", buf, 2u);
    }

    realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v18);
    realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v19);
  }

  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v23);
  result = v22;
  if (v22)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v22);
  }

  return result;
}

void sub_24768B2C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v32 - 72);
  if (__p)
  {
    operator delete(__p);
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef((v32 - 160));
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v32 - 152);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim((v32 - 104));
  _Unwind_Resume(a1);
}

uint64_t realityio::CameraComponentBuilder::clear(realityio::CameraComponentBuilder *this, realityio::Inputs *a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = realityio::EntityBuilder::kInputName(this);
  realityio::Inputs::_getValue<realityio::WrappedRERef<REEntity *>>(a2, v3, v7);
  if (v7[0])
  {
    v6 = v8;
    if (v8)
    {
      RERetain();
      v4 = *(a2 + 6);
      v9[0] = &unk_28595AC40;
      v9[1] = &v6;
      v9[3] = v9;
      (*(*v4 + 16))(v4, v9);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);
    }
  }

  else
  {
    v6 = 0;
  }

  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&v6);
  return realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(v7);
}

void sub_24768B458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  realityio::WrappedRERef<REEntity *>::~WrappedRERef(&a9);
  realityio::Result<realityio::WrappedRERef<REEntity *>,realityio::DetailedError>::~Result(&a10);
  _Unwind_Resume(a1);
}

void realityio::CameraComponentBuilder::~CameraComponentBuilder(realityio::CameraComponentBuilder *this)
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

void sub_24768B810(_Unwind_Exception *a1)
{
  v5 = 40;
  while (1)
  {
    v6 = *(v3 + v5);
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v5 -= 8;
    if (v5 == -8)
    {
      v7 = v1[5];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[4];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[3];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[2];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[1];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x24C1A91B0](v1, v2);
      _Unwind_Resume(a1);
    }
  }
}

void sub_24768BAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

uint64_t std::__function::__func<realityio::CameraComponentBuilder::CameraComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0,std::allocator<realityio::CameraComponentBuilder::CameraComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_0>,std::shared_ptr<realityio::InputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::CameraComponentBuilder::CameraComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1,std::allocator<realityio::CameraComponentBuilder::CameraComponentBuilder(pxrInternal__aapl__pxrReserved__::SdfPath const&)::$_1>,std::shared_ptr<realityio::OutputsDescriptor const> ()(pxrInternal__aapl__pxrReserved__::SdfPath const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<realityio::CameraComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::CameraComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595AAC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<realityio::CameraComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::CameraComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  if (!pxrInternal__aapl__pxrReserved__::GfCamera::GetProjection(*(a1 + 8)))
  {
    REPerspectiveCameraComponentGetComponentType();
    operator new();
  }

  REOrthographicCameraComponentGetComponentType();
  v3 = *(a1 + 32);
  v6[0] = &unk_28595ABB0;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v6;
  v4 = REEntityGetOrAddComponentByClass();
  std::function<void ()(REComponent *)>::operator()(v6, v4);
  RENetworkMarkComponentDirty();
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](v6);
  REPerspectiveCameraComponentGetComponentType();
  return REEntityRemoveComponentByClass();
}

void sub_24768BEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(REComponent *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::CameraComponentBuilder::run(realityio::Inputs *)::$_0,std::allocator<realityio::CameraComponentBuilder::run(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio22CameraComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595AB30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio22CameraComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  REPerspectiveCameraComponentSetNear();
  REPerspectiveCameraComponentSetFar();
  pxrInternal__aapl__pxrReserved__::GfCamera::GetFieldOfView();

  return MEMORY[0x2821547F0](v2);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio22CameraComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio22CameraComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN9realityio22CameraComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595ABB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZN9realityio22CameraComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  realityio::Builder::addComponent(*(a1 + 8), *a2);
  REOrthographicCameraComponentSetNear();
  v4.n128_u32[0] = *(*(a1 + 16) + 4);

  return MEMORY[0x2821547B8](v3, v4);
}

uint64_t _ZNKSt3__110__function6__funcIZZN9realityio22CameraComponentBuilder3runEPNS2_6InputsEENK3__0clEvEUlT_E0_NS_9allocatorIS8_EEFvP11REComponentEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZN9realityio22CameraComponentBuilder3runEPNS_6InputsEENK3__0clEvEUlT_E0_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<realityio::CameraComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::CameraComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_28595AC40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<realityio::CameraComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::CameraComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  REPerspectiveCameraComponentGetComponentType();
  REEntityRemoveComponentByClass();
  REOrthographicCameraComponentGetComponentType();

  return REEntityRemoveComponentByClass();
}

uint64_t std::__function::__func<realityio::CameraComponentBuilder::clear(realityio::Inputs *)::$_0,std::allocator<realityio::CameraComponentBuilder::clear(realityio::Inputs *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void RIO_MTLX::getShaderNodes(std::string **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v129[0] = 0;
  v129[1] = 0;
  v128 = v129;
  RIO_MTLX::InterfaceElement::getActiveInputs(&v126, *a1);
  v8 = v126;
  v98 = a2;
  v99 = v127;
  if (v126 == v127)
  {
LABEL_95:
    RIO_MTLX::Node::getNodeDef(*v6, a3, 0, &v124);
    v57 = v124;
    if (v124)
    {
      v58 = RIO_MTLX::EMPTY_STRING(v56);
      RIO_MTLX::NodeDef::getImplementation(v57, v58, &v123);
      v60 = v123;
      if (v123)
      {
        v61 = RIO_MTLX::EMPTY_STRING(v59);
        if (RIO_MTLX::Element::isA<RIO_MTLX::NodeGraph>(v60, v61))
        {
          RIO_MTLX::Element::asA<RIO_MTLX::NodeGraph>(v123, &v121);
          v62 = v124;
          v64 = RIO_MTLX::EMPTY_STRING(v63);
          RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Output>(v62, v64, &v120);
          v100 = *(&v120 + 1);
          for (i = v120; i != v100; i += 16)
          {
            v67 = *i;
            v66 = *(i + 8);
            if (v66)
            {
              atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v68 = (*(*v67 + 56))(v67);
            v69 = RIO_MTLX::MATERIAL_TYPE_STRING(v68);
            v70 = *(v68 + 23);
            if (v70 >= 0)
            {
              v71 = *(v68 + 23);
            }

            else
            {
              v71 = *(v68 + 8);
            }

            v72 = *(v69 + 23);
            v73 = v72;
            if ((v72 & 0x80u) != 0)
            {
              v72 = v69[1];
            }

            if (v71 == v72)
            {
              v74 = v70 >= 0 ? v68 : *v68;
              v75 = v73 >= 0 ? v69 : *v69;
              if (!memcmp(v74, v75, v71))
              {
                RIO_MTLX::Element::getChildOfType<RIO_MTLX::Output>(v121, v67 + 6, &v118);
                RIO_MTLX::Element::traverseGraph(v118, &__p);
                if (v108 == v109)
                {
                  RIO_MTLX::GraphIterator::operator++(&__p);
                }

                *(&v110 + 1) = 0;
                v111.std::__shared_count = __p.std::__shared_count;
                if (__p.__shared_owners_)
                {
                  atomic_fetch_add_explicit((__p.__shared_owners_ + 8), 1uLL, memory_order_relaxed);
                }

                v111.__shared_weak_owners_ = __p.__shared_weak_owners_;
                v112 = v106;
                if (v106)
                {
                  atomic_fetch_add_explicit((v106 + 8), 1uLL, memory_order_relaxed);
                }

                std::set<std::shared_ptr<RIO_MTLX::Element>>::set[abi:ne200100](&p_p, &v107);
                v114 = 0;
                v115 = 0;
                v116 = 0;
                std::vector<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*,std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>*>(&v114, v108, v109, 0xAAAAAAAAAAAAAAABLL * ((v109 - v108) >> 3));
                v117 = v110;
                RIO_MTLX::GraphIterator::~GraphIterator(&__p);
                while (1)
                {
                  RIO_MTLX::NULL_GRAPH_ITERATOR(v76);
                  v77 = v111.__vftable;
                  if (v111.__vftable == RIO_MTLX::NULL_GRAPH_ITERATOR(void)::v)
                  {
                    v78 = v114;
                    v79 = qword_27EE527A8;
                    if (v115 - v114 == qword_27EE527B0 - qword_27EE527A8)
                    {
                      while (v78 != v115)
                      {
                        if (*v78 != *v79 || *(v78 + 2) != v79[2])
                        {
                          goto LABEL_131;
                        }

                        v78 += 24;
                        v79 += 3;
                      }

                      if (v117 == xmmword_27EE527C0)
                      {
                        break;
                      }
                    }
                  }

LABEL_131:
                  shared_owners = v111.__shared_owners_;
                  if (v111.__shared_owners_)
                  {
                    atomic_fetch_add_explicit((v111.__shared_owners_ + 8), 1uLL, memory_order_relaxed);
                  }

                  if (v77)
                  {
                    RIO_MTLX::Element::asA<RIO_MTLX::Node>(v77, &v103);
                    if (v103)
                    {
                      v82 = (*(*v103 + 56))(v103);
                      v83 = RIO_MTLX::MATERIAL_TYPE_STRING(v82);
                      v84 = *(v82 + 23);
                      if (v84 >= 0)
                      {
                        v85 = *(v82 + 23);
                      }

                      else
                      {
                        v85 = *(v82 + 8);
                      }

                      v86 = *(v83 + 23);
                      v87 = v86;
                      if ((v86 & 0x80u) != 0)
                      {
                        v86 = v83[1];
                      }

                      if (v85 == v86)
                      {
                        v88 = v84 >= 0 ? v82 : *v82;
                        v89 = v87 >= 0 ? v83 : *v83;
                        if (!memcmp(v88, v89, v85))
                        {
                          v90 = v104;
                          v102[0] = v103;
                          v102[1] = v104;
                          if (v104)
                          {
                            atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
                          }

                          RIO_MTLX::getShaderNodes(v102, v98, a3, &__p);
                          if (v90)
                          {
                            std::__shared_weak_count::__release_shared[abi:ne200100](v90);
                          }

                          v92 = __p.__vftable;
                          v91 = __p.__shared_owners_;
                          while (v92 != v91)
                          {
                            v93 = v92->~__shared_weak_count;
                            v94 = v92->~__shared_weak_count_0;
                            *&v101 = v92->~__shared_weak_count;
                            *(&v101 + 1) = v94;
                            if (v94)
                            {
                              atomic_fetch_add_explicit(v94 + 1, 1uLL, memory_order_relaxed);
                            }

                            for (j = v129[0]; j; j = *j)
                            {
                              v96 = j[4];
                              if (v93 >= v96)
                              {
                                if (v96 >= v93)
                                {
                                  goto LABEL_162;
                                }

                                ++j;
                              }
                            }

                            std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a4, &v101);
                            std::__tree<std::shared_ptr<realityio::Builder>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>(&v128, v101, &v101);
LABEL_162:
                            if (*(&v101 + 1))
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v101 + 1));
                            }

                            v92 = (v92 + 16);
                          }

                          *&v101 = &__p;
                          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v101);
                        }
                      }
                    }

                    if (v104)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v104);
                    }
                  }

                  else
                  {
                    LOBYTE(v117) = 1;
                  }

                  if (shared_owners)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
                  }

                  v76 = RIO_MTLX::GraphIterator::operator++(&v111);
                }

                RIO_MTLX::GraphIterator::~GraphIterator(&v111);
                if (v119)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v119);
                }
              }
            }

            if (v66)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v66);
            }
          }

          v111.__vftable = &v120;
          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v111);
          if (v122)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v122);
          }
        }
      }

      if (*(&v123 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v123 + 1));
      }
    }

    if (v125)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v125);
    }

    goto LABEL_183;
  }

  v97 = v6;
  do
  {
    v10 = *v8;
    v9 = *(v8 + 1);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v10 + 64))(&v120, v10);
    if (!v120)
    {
LABEL_33:
      v22 = RIO_MTLX::PortElement::NODE_GRAPH_ATTRIBUTE(v120);
      if (!std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v10 + 20, v22))
      {
        goto LABEL_89;
      }

      v23 = *v6;
      v24 = (*v6)[9].__r_.__value_.__r.__words[2];
      if (v24)
      {
        v25 = std::__shared_weak_count::lock(v24);
        if (v25)
        {
          size = v23[9].__r_.__value_.__l.__size_;
LABEL_39:
          NodeGraph = RIO_MTLX::Implementation::getNodeGraph(v10);
          RIO_MTLX::Element::getChildOfType<RIO_MTLX::NodeGraph>(size, NodeGraph, &v124);
          if (v124)
          {
            memset(&__p, 0, sizeof(__p));
            v29 = RIO_MTLX::PortElement::OUTPUT_ATTRIBUTE(v28);
            if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v10 + 20, v29))
            {
              v30 = v124;
              OutputString = RIO_MTLX::PortElement::getOutputString(v10);
              RIO_MTLX::Element::getChildOfType<RIO_MTLX::Output>(v30, OutputString, &v123);
              v32 = __p.__shared_owners_;
              if (__p.__shared_owners_ >= __p.__shared_weak_owners_)
              {
                v39 = __p.__vftable;
                v40 = __p.__shared_owners_ - __p.__vftable;
                v41 = (__p.__shared_owners_ - __p.__vftable) >> 4;
                v42 = v41 + 1;
                if ((v41 + 1) >> 60)
                {
                  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
                }

                v43 = __p.__shared_weak_owners_ - __p.__vftable;
                if ((__p.__shared_weak_owners_ - __p.__vftable) >> 3 > v42)
                {
                  v42 = v43 >> 3;
                }

                v44 = v43 >= 0x7FFFFFFFFFFFFFF0;
                v45 = 0xFFFFFFFFFFFFFFFLL;
                if (!v44)
                {
                  v45 = v42;
                }

                p_p = &__p;
                if (v45)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(&__p, v45);
                }

                *(16 * v41) = v123;
                v123 = 0uLL;
                memcpy(0, v39, v40);
                v46 = __p.__vftable;
                shared_weak_owners = __p.__shared_weak_owners_;
                __p.__vftable = 0;
                __p.__shared_owners_ = 16 * v41 + 16;
                __p.__shared_weak_owners_ = 0;
                v111.__shared_weak_owners_ = v46;
                v112 = shared_weak_owners;
                v111.__vftable = v46;
                v111.__shared_owners_ = v46;
                std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(&v111.__vftable);
                __p.__shared_owners_ = 16 * v41 + 16;
                if (*(&v123 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v123 + 1));
                }
              }

              else
              {
                *__p.__shared_owners_ = v123;
                __p.__shared_owners_ = v32 + 16;
              }
            }

            else
            {
              v33 = v124;
              v34 = RIO_MTLX::EMPTY_STRING(0);
              RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Output>(v33, v34, &v111);
              v35 = __p.__vftable;
              if (__p.__vftable)
              {
                v36 = __p.__shared_owners_;
                v37 = __p.__vftable;
                if (__p.__shared_owners_ != __p.__vftable)
                {
                  do
                  {
                    v38 = *(v36 - 8);
                    if (v38)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
                    }

                    v36 -= 16;
                  }

                  while (v36 != v35);
                  v37 = __p.__vftable;
                }

                __p.__shared_owners_ = v35;
                operator delete(v37);
              }

              __p = v111;
              memset(&v111, 0, sizeof(v111));
              *&v123 = &v111;
              std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v123);
            }

            v48 = __p.__vftable;
            v49 = __p.__shared_owners_;
            while (v48 != v49)
            {
              v50 = v48->~__shared_weak_count;
              v51 = v48->~__shared_weak_count_0;
              if (v51)
              {
                atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              (*(*v50 + 64))(&v111);
              if (v111.__vftable)
              {
                for (k = v129[0]; k; k = *k)
                {
                  v53 = k[4];
                  if (v111.__vftable >= v53)
                  {
                    if (v53 >= v111.__vftable)
                    {
                      goto LABEL_79;
                    }

                    ++k;
                  }
                }

                v54 = *(a3 + 23);
                if ((v54 & 0x80u) != 0)
                {
                  v54 = *(a3 + 8);
                }

                if (!v54)
                {
                  goto LABEL_78;
                }

                RIO_MTLX::Node::getNodeDef(v111.__vftable, a3, 0, &v123);
                v55 = v123;
                if (*(&v123 + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v123 + 1));
                }

                if (v55)
                {
LABEL_78:
                  std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a4, &v111);
                  std::__tree<std::shared_ptr<realityio::Builder>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>(&v128, v111.__vftable, &v111);
                }
              }

LABEL_79:
              if (v111.__shared_owners_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v111.__shared_owners_);
              }

              if (v51)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v51);
              }

              v48 = (v48 + 16);
            }

            v111.__vftable = &__p;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v111);
            if (v125)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v125);
            }

            v6 = v97;
            a2 = v98;
          }

          else if (v125)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v125);
          }

          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          goto LABEL_89;
        }
      }

      else
      {
        v25 = 0;
      }

      size = 0;
      goto LABEL_39;
    }

    for (m = v129[0]; m; m = *m)
    {
      v12 = m[4];
      if (v120 >= v12)
      {
        if (v12 >= v120)
        {
          goto LABEL_33;
        }

        ++m;
      }
    }

    v13 = *(a2 + 23);
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a2 + 8);
    }

    if (!v13)
    {
      goto LABEL_26;
    }

    v14 = (*(*v120 + 56))(v120);
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = *(v14 + 23);
    }

    else
    {
      v16 = v14[1];
    }

    v17 = *(a2 + 23);
    v18 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a2 + 8);
    }

    if (v16 == v17)
    {
      if (v15 < 0)
      {
        v14 = *v14;
      }

      v19 = v18 >= 0 ? a2 : *a2;
      if (!memcmp(v14, v19, v16))
      {
LABEL_26:
        v20 = *(a3 + 23);
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(a3 + 8);
        }

        if (!v20)
        {
          goto LABEL_32;
        }

        RIO_MTLX::Node::getNodeDef(v120, a3, 0, &v111);
        v21 = v111.__vftable;
        if (v111.__shared_owners_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v111.__shared_owners_);
        }

        if (v21)
        {
LABEL_32:
          std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](a4, &v120);
          std::__tree<std::shared_ptr<realityio::Builder>>::__emplace_unique_key_args<std::shared_ptr<realityio::Builder>,std::shared_ptr<realityio::Builder> const&>(&v128, v120, &v120);
        }
      }
    }

LABEL_89:
    if (*(&v120 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v120 + 1));
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    v8 += 16;
  }

  while (v8 != v99);
  if (v126 == v127)
  {
    goto LABEL_95;
  }

LABEL_183:
  v111.__vftable = &v126;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v111);
  std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(v129[0]);
}

void sub_24768CC94(_Unwind_Exception *a1)
{
  v4 = *(v2 - 184);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v2 - 168);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(v2 - 144);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(v2 - 152) = v2 - 136;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v2 - 152));
  std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(*(v2 - 104));
  *(v2 - 112) = v1;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t realityio::DirtyStageDescriptor::DirtyStageDescriptor(uint64_t a1, void **a2, void **a3)
{
  *a1 = &unk_28595ACC0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<std::shared_ptr<realityio::DirtyMetadataDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::DirtyMetadataDescriptor const>*,std::shared_ptr<realityio::DirtyMetadataDescriptor const>*>((a1 + 8), *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>>::__init_with_size[abi:ne200100]<std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>*,std::shared_ptr<realityio::PrimitiveDirtyPrimDescriptor const>*>((a1 + 32), *a3, a3[1], (a3[1] - *a3) >> 4);
  *(a1 + 56) = realityio::DirtyStageDescriptor::_isEmpty(a1);
  *(a1 + 57) = realityio::DirtyStageDescriptor::_isStageMetadataOnlyPredicate(a1);
  return a1;
}

void sub_24768CF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t realityio::DirtyStageDescriptor::_isEmpty(realityio::DirtyStageDescriptor *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
LABEL_7:
    v7 = 1;
    goto LABEL_9;
  }

  while (1)
  {
    v5 = *v2;
    v4 = v2[1];
    if (!v4)
    {
      break;
    }

    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(v5 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (v6 != 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    v2 += 2;
    if (v2 == v3)
    {
      goto LABEL_7;
    }
  }

  if (*(v5 + 8))
  {
    goto LABEL_6;
  }

LABEL_8:
  v7 = 0;
LABEL_9:
  v8 = *(this + 4);
  v9 = *(this + 5);
  if (v8 == v9)
  {
    v12 = 1;
  }

  else
  {
    do
    {
      v10 = *v8;
      v11 = v8[1];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = (*(*v10 + 24))(v10);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v8 += 2;
      if (v8 == v9)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12;
      }
    }

    while ((v13 & 1) != 0);
  }

  return v7 & v12;
}

void sub_24768D070(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::DirtyStageDescriptor::_isStageMetadataOnlyPredicate(realityio::DirtyStageDescriptor *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  while (1)
  {
    v5 = *v1;
    v4 = v1[1];
    if (!v4)
    {
      break;
    }

    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(v5 + 8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (v6 != 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    v1 += 2;
    if (v1 == v2)
    {
      return 0;
    }
  }

  if (*(v5 + 8))
  {
    goto LABEL_6;
  }

LABEL_8:
  v8 = *(this + 4);
  v9 = *(this + 5);
  if (v8 == v9)
  {
    return 1;
  }

  do
  {
    v10 = *v8;
    v11 = v8[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = (*(*v10 + 24))(v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v8 += 2;
    if (v8 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }
  }

  while ((v12 & 1) != 0);
  return v7;
}

void sub_24768D178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void realityio::DirtyStageDescriptor::getExplicitPrimTypes(uint64_t *__return_ptr a1@<X8>, realityio::DirtyStageDescriptor *this@<X0>)
{
  v16 = 0;
  v3 = 0uLL;
  v15 = 0u;
  v4 = *(this + 4);
  v5 = *(this + 5);
  if (v4 == v5)
  {
    v10 = 0;
LABEL_13:
    *a1 = v3;
    a1[2] = v10;
    v16 = 0;
    v15 = 0uLL;
  }

  else
  {
    while (1)
    {
      v6 = *v4;
      v7 = v4[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = 0uLL;
      v14 = 0;
      (*(*v6 + 40))(&v11);
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__vdeallocate(&v13);
      v13 = v11;
      v14 = v12;
      v12 = 0;
      v11 = 0uLL;
      v17 = &v11;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v17);
      v8 = *(&v13 + 1);
      v9 = v13;
      if (v13 == *(&v13 + 1))
      {
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
      }

      else
      {
        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__insert_with_size[abi:ne200100]<std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfToken*>,std::__wrap_iter<pxrInternal__aapl__pxrReserved__::TfToken*>>(&v15, *(&v15 + 1), v13, *(&v13 + 1), (*(&v13 + 1) - v13) >> 3);
      }

      *&v11 = &v13;
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v11);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      if (v9 == v8)
      {
        break;
      }

      v4 += 2;
      if (v4 == v5)
      {
        v3 = v15;
        v10 = v16;
        goto LABEL_13;
      }
    }
  }

  *&v13 = &v15;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_24768D300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a9 = &a13;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  a13 = &a17;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t realityio::DirtyStageDescriptor::validate(void *a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::UsdStage *this, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!*(a7 + 24) || !*(a8 + 24) || !*(a9 + 24) || !*(a10 + 24))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v33, this, a2);
  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v33);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v35);
  if (v34)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v34);
  }

  if ((IsValid & 1) == 0)
  {
    return 0;
  }

  v16 = a1[1];
  if (a1[2] != v16)
  {
    v17 = *(v16 + 8);
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](&v34, a7);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v31, &v34);
    v31[32] = v37;
    v32 = 0;
    operator new();
  }

  v20 = a1[4];
  v21 = a1[5];
  if (v20 == v21)
  {
    return 1;
  }

  do
  {
    v22 = *v20;
    v23 = v20[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v30, a8);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v29, a9);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](v28, a10);
    v18 = (*(*v22 + 16))(v22, a2, a3, this, a5, a6, v30, v29, v28);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v28);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v29);
    std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v30);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    v20 += 2;
    if (v20 == v21)
    {
      v24 = 1;
    }

    else
    {
      v24 = v18;
    }
  }

  while ((v24 & 1) == 0);
  return v18;
}

void sub_24768D6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **realityio::DirtyStageDescriptor::description@<X0>(CFStringRef *__return_ptr a1@<X8>, uint64_t **this@<X0>)
{
  v17 = 0;
  v18 = realityio::joinAsCFStringRef<realityio::DirtyMetadataDescriptor>(this + 1, realityio::DirtyMetadataDescriptor::description, 0, ", ");
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6 = this[4];
  for (i = this[5]; v6 != i; v6 += 2)
  {
    v8 = *v6;
    v9 = v6[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v8 + 32))(&value);
    CFArrayAppendValue(Mutable, value);
    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&value);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v10 = realityio::joinAsCFStringRef(Mutable, ", ", v4);
  CFRelease(Mutable);
  v11 = this[4];
  v12 = this[5];
  v13 = v18;
  v14 = this[1];
  v15 = this[2];
  *a1 = 0;
  *a1 = CFStringCreateWithFormat(0, 0, @"<DirtyStageDescriptor: %p { dirtyStageMetadataContainAnyOf: (%lu) [ %@ ], dirtyPrimsContainAnyOf: (%lu) [ %@ ] } >", this, (v15 - v14) >> 4, v13, (v12 - v11) >> 4, v10, v10);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v17);
  return realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v18);
}

void sub_24768D8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, const void *);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(v11);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(va1);
  _Unwind_Resume(a1);
}

void realityio::DirtyStageDescriptor::~DirtyStageDescriptor(realityio::DirtyStageDescriptor *this)
{
  *this = &unk_28595ACC0;
  v1 = (this + 8);
  v2 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

{
  *this = &unk_28595ACC0;
  v2 = (this + 8);
  v3 = (this + 32);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x24C1A91B0](this, 0x10A1C401BF1BAA1);
}

void *std::__function::__func<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__func(void *a1)
{
  *a1 = &unk_28595ACF0;
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__func(void *a1)
{
  *a1 = &unk_28595ACF0;
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x24C1A91B0);
}

uint64_t std::__function::__func<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28595ACF0;
  result = std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::__value_func[abi:ne200100](a2 + 16, a1 + 16);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

void std::__function::__func<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<std::function<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)> &,std::placeholders::__ph<2> const&>>,BOOL ()(pxrInternal__aapl__pxrReserved__::SdfPath const&,pxrInternal__aapl__pxrReserved__::TfToken const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t RIOPxrUsdPrimCreateEmpty()
{
  v2 = 1;
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v5 = 0;
  v6 = 1;
  v0 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v2, &v6);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }

  return v0;
}

void sub_24768DD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *RIOPxrUsdPrimCopyChildren(uint64_t a1)
{
  if (!a1 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(Mutable);
  v5 = *UsdPrimDefaultPredicate;
  v4 = *(UsdPrimDefaultPredicate + 8);
  v6 = *(UsdPrimDefaultPredicate + 16);
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v5 & 0x2000) != 0 || (v4 & 0x2000) == 0))
  {
    v5 |= 0x2000uLL;
    v4 &= ~0x2000uLL;
  }

  v17 = v5;
  v18 = v4;
  *&v19 = v6;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(a1 + 24, &v17, &v21);
  v17 = v21;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, &v22);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18 + 1, &v23);
  v19 = v24;
  v20 = v25;
  v13 = v26;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, &v27);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14 + 1, &v28);
  v15 = v29;
  v16 = v30;
  while (v17 != v13 || v18 != v14 || !pxrInternal__aapl__pxrReserved__::operator==(&v19, &v15))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v9, &v17);
    v31 = 1;
    v8 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v9, &v31);
    CFArrayAppendValue(Mutable, v8);
    realityio::WrappedCFRef<RIOPxrUsdObject *>::~WrappedCFRef(&v8);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    if (v10)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v17);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v22);
  return Mutable;
}

void sub_24768DF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::~UsdPrimSiblingIterator(va);
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::~UsdPrimSiblingIterator(va1);
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange::~UsdPrimSiblingRange(va2);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__ *RIOPxrUsdPrimCopyDescendants(uint64_t a1)
{
  if (!a1 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  UsdPrimDefaultPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimDefaultPredicate(Mutable);
  v5 = *UsdPrimDefaultPredicate;
  v4 = *(UsdPrimDefaultPredicate + 8);
  v6 = *(UsdPrimDefaultPredicate + 16);
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v5 & 0x2000) != 0 || (v4 & 0x2000) == 0))
  {
    v5 |= 0x2000uLL;
    v4 &= ~0x2000uLL;
  }

  v17 = v5;
  v18 = v4;
  *&v19 = v6;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(a1 + 24, &v17, &v21);
  v17 = v21;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18, &v22);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v18 + 1, &v23);
  v19 = v24;
  v20 = v25;
  v13 = v26;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14, &v27);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v14 + 1, &v28);
  v15 = v29;
  v16 = v30;
  while (v17 != v13 || v18 != v14 || !pxrInternal__aapl__pxrReserved__::operator==(&v19, &v15))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v9, &v17);
    v31 = 1;
    v8 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v9, &v31);
    CFArrayAppendValue(Mutable, v8);
    realityio::WrappedCFRef<RIOPxrUsdObject *>::~WrappedCFRef(&v8);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    if (v10)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v17);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v22);
  return Mutable;
}

void sub_24768E1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::~UsdPrimSubtreeIterator(va);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::~UsdPrimSubtreeIterator(va1);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange::~UsdPrimSubtreeRange(va2);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdPrimCopyFilteredDescendants(uint64_t a1, void *a2)
{
  if (!a1 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v6 & 0x2000) != 0 || (v5 & 0x2000) == 0))
  {
    v6 |= 0x2000uLL;
    v5 &= ~0x2000uLL;
  }

  v18 = v6;
  v19 = v5;
  *&v20 = v7;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeDescendantsRange(a1 + 24, &v18, &v22);
  v18 = v22;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, &v23);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19 + 1, &v24);
  v20 = v25;
  v21 = v26;
  v14 = v27;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, &v28);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15 + 1, &v29);
  v16 = v30;
  v17 = v31;
  while (v18 != v14 || v19 != v15 || !pxrInternal__aapl__pxrReserved__::operator==(&v20, &v16))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(&v10, &v18);
    v32 = 1;
    v9 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v10, &v32);
    CFArrayAppendValue(Mutable, v9);
    realityio::WrappedCFRef<RIOPxrUsdObject *>::~WrappedCFRef(&v9);
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

    pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(&v18);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v23);
  return Mutable;
}

void sub_24768E414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::~UsdPrimSubtreeIterator(va);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::~UsdPrimSubtreeIterator(va1);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeRange::~UsdPrimSubtreeRange(va2);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimCopyParent(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v3, (v1 + 24));
      v7 = 1;
      v1 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v3, &v7);
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
      if (v4)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void sub_24768E504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdPrimCopyFilteredChildren(uint64_t a1, void *a2)
{
  if (!a1 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v6 & 0x2000) != 0 || (v5 & 0x2000) == 0))
  {
    v6 |= 0x2000uLL;
    v5 &= ~0x2000uLL;
  }

  v18 = v6;
  v19 = v5;
  *&v20 = v7;
  pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(a1 + 24, &v18, &v22);
  v18 = v22;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19, &v23);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v19 + 1, &v24);
  v20 = v25;
  v21 = v26;
  v14 = v27;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15, &v28);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v15 + 1, &v29);
  v16 = v30;
  v17 = v31;
  while (v18 != v14 || v19 != v15 || !pxrInternal__aapl__pxrReserved__::operator==(&v20, &v16))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v10, &v18);
    v32 = 1;
    v9 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v10, &v32);
    CFArrayAppendValue(Mutable, v9);
    realityio::WrappedCFRef<RIOPxrUsdObject *>::~WrappedCFRef(&v9);
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

    pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v18);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v15);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v19);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v28);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v23);
  return Mutable;
}

void sub_24768E738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::~UsdPrimSiblingIterator(va);
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::~UsdPrimSiblingIterator(va1);
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingRange::~UsdPrimSiblingRange(va2);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimCopyVariantSets(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(&v6, (v1 + 24));
      if (RIOPxrUsdVariantSetsGetTypeID::onceToken != -1)
      {
        dispatch_once(&RIOPxrUsdVariantSetsGetTypeID::onceToken, &__block_literal_global_19);
      }

      Instance = _CFRuntimeCreateInstance();
      v1 = Instance;
      if (Instance)
      {
        *(Instance + 16) = v6;
        v3 = v7;
        *(Instance + 24) = v7;
        if (v3)
        {
          atomic_fetch_add_explicit((v3 + 48), 1uLL, memory_order_relaxed);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((Instance + 32), &v8);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v1 + 36), &v9);
        v4 = v10;
        *(v1 + 40) = v10;
        if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          *(v1 + 40) &= 0xFFFFFFFFFFFFFFF8;
        }
      }

      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
      if (v7)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t RIOPxrUsdPrimCopyVariantSet(uint64_t a1, char *a2)
{
  v2 = a1;
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, a2);
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSet();
      if (v6 < 0)
      {
        operator delete(__p);
      }

      v2 = RIOPxrUsdVariantSetCreate<pxrInternal__aapl__pxrReserved__::UsdVariantSet &>(&v7);
      if (v12 < 0)
      {
        operator delete(v11);
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
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t RIOPxrUsdPrimHasVariantSets(uint64_t a1)
{
  if (!a1 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  return MEMORY[0x282207C98](a1 + 24);
}

uint64_t RIOPxrUsdPrimCreateAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = (a1 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v5);
  std::recursive_mutex::lock(v6);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v5) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v5))
  {
    v7 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::CreateAttribute();
    v13 = 12;
    v7 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v9, &v13);
    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    if (v10)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v10);
    }
  }

  std::recursive_mutex::unlock(v6);
  return v7;
}

void sub_24768EB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  std::recursive_mutex::unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimSetTypeName(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v3);
  std::recursive_mutex::lock(v4);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v3) & 1) == 0 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v3))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::SetTypeName(v3, (a2 + 16));
  }

  std::recursive_mutex::unlock(v4);
  return 0;
}

uint64_t RIOPxrUsdPrimCopyTypeName(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v1))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v7, v1);
    v3 = *(v1 + 1);
    if (!v3 || (*(v3 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v3, v2);
    }

    v4 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(*(v3 + 24));
    v5 = v8;
    if (v8 && atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v5 + 8))(v5);
    }
  }

  else
  {
    v7 = 0;
    v4 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken>(&v7);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return v4;
}

void sub_24768ECD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrUsdPrimHasAuthoredType(uint64_t a1)
{
  if (!a1 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  v2 = atomic_load(MEMORY[0x277D86540]);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
  }

  return MEMORY[0x2822080E0](a1 + 24, v2 + 464);
}

BOOL RIOPxrUsdPrimHasAuthoredTypeOnLayer(uint64_t a1, uint64_t a2)
{
  v17 = *(a2 + 16);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v17);
  if (a1 && (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)) & 1) != 0)
  {
    MEMORY[0x24C1A8260](&v15, a1 + 24);
    v4 = v15;
    v5 = v16;
    if (v15 == v16)
    {
LABEL_12:
      v2 = 0;
    }

    else
    {
      while (1)
      {
        v6 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->(v4);
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetLayer(&v13, v6);
        v7 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator==<pxrInternal__aapl__pxrReserved__::SdfLayer>(&v13, &v17);
        v8 = v7;
        if (v7)
        {
          v9 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->(v4);
          pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetTypeName(&v12, v9);
          v2 = v12 != 0;
          if ((v12 & 7) != 0)
          {
            atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        v10 = v14;
        if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          (*(*v10 + 8))(v10);
        }

        if (v8)
        {
          break;
        }

        v4 = (v4 + 8);
        if (v4 == v5)
        {
          goto LABEL_12;
        }
      }
    }

    v13 = &v15;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__destroy_vector::operator()[abi:ne200100](&v13);
  }

  else
  {
    v2 = 0;
  }

  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(&v17);
  return v2;
}

void sub_24768EEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimGetSpecifier(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v1);
  result = 0;
  if (IsValid)
  {
    v5 = *(v1 + 1);
    if (!v5 || (*(v5 + 57) & 8) != 0)
    {
      pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v5, v2);
    }

    LODWORD(result) = MEMORY[0x24C1A7210](v5);
    if ((result - 1) >= 3)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t RIOPxrUsdPrimGetRootLayerSpecifier(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  v2 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v1))
  {
    MEMORY[0x24C1A8260](v6, v1);
    v3 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->(v6[0]);
    v4 = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSpecifier(v3) - 1;
    if (v4 < 3)
    {
      v2 = v4 + 1;
    }

    else
    {
      v2 = 0;
    }

    v7 = v6;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__destroy_vector::operator()[abi:ne200100](&v7);
  }

  return v2;
}

void sub_24768F05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimSetSpecifier(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = a2 == 1;
  }

  if (a1)
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v3);
  std::recursive_mutex::lock(v4);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v3) & 1) == 0 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v3))
  {
    v9 = v2;
    if (atomic_load(MEMORY[0x277D86540]))
    {
      v10 = 0;
      v7 = v3[1];
      if (!v7 || (*(v7 + 57) & 8) != 0)
      {
        pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v3[1], v5);
      }

      v12 = &v9;
      v11 = &unk_28595AE10;
      pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
  }

  std::recursive_mutex::unlock(v4);
  return 0;
}

void sub_24768F1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::recursive_mutex::unlock(v11);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimIsPseudoRoot(uint64_t a1)
{
  if (a1)
  {
    return pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24));
  }

  else
  {
    return pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(0);
  }
}

uint64_t RIOPxrUsdPrimIsActive(uint64_t a1)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::UsdPrim::IsActive((a1 + 24), v2);
}

uint64_t RIOPxrUsdPrimSetActive(uint64_t a1, char a2)
{
  if (a1)
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v3);
  std::recursive_mutex::lock(v4);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v3) & 1) == 0 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v3))
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::SetActive(v3, a2);
  }

  std::recursive_mutex::unlock(v4);
  return 0;
}

uint64_t RIOPxrUsdPrimClearActive(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v1);
  std::recursive_mutex::lock(v2);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v1) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v1))
  {
    v4 = 0;
  }

  else
  {
    v3 = atomic_load(MEMORY[0x277D86540]);
    if (!v3)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
    }

    v4 = pxrInternal__aapl__pxrReserved__::UsdObject::ClearMetadata(v1, v3);
  }

  std::recursive_mutex::unlock(v2);
  return v4;
}

uint64_t RIOPxrUsdPrimHasAuthoredActive(uint64_t a1)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  v2 = atomic_load(MEMORY[0x277D86540]);
  if (!v2)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
  }

  return MEMORY[0x2822080E0](a1 + 24, v2);
}

uint64_t RIOPxrUsdPrimIsAType(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)))
  {
    return 0;
  }

  IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24));
  if (!IsValid)
  {
    return 0;
  }

  if ((*(a2 + 16) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(IsValid);
  }

  v6 = pxrInternal__aapl__pxrReserved__::TfType::FindByName();

  return MEMORY[0x282207D40](a1 + 24, v6);
}

uint64_t RIOPxrUsdPrimHasProperty(uint64_t a1, uint64_t a2)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::UsdPrim::HasProperty((a1 + 24), (a2 + 16));
}

__CFArray *RIOPxrUsdPrimGetPropertyOrder(uint64_t a1)
{
  if (!a1 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetPropertyOrder(v6, (a1 + 24));
  v3 = v6[0];
  v4 = v6[1];
  while (v3 != v4)
  {
    v7 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v3);
    CFArrayAppendValue(Mutable, v7);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v7);
    ++v3;
  }

  v7 = v6;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v7);
  return Mutable;
}

void sub_24768F5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void RIOPxrUsdPrimSetPropertyOrder(uint64_t a1, const __CFArray *a2)
{
  v2 = (a1 + 24);
  if (a1)
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = 0;
  }

  if (a1 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    v5 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v2);
    std::recursive_mutex::lock(v5);
    Count = CFArrayGetCount(a2);
    memset(v7, 0, 24);
    v7[3] = v7;
    v8 = 0;
    if (Count)
    {
      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__vallocate[abi:ne200100](v7, Count);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::SetPropertyOrder(v3, v7);
  }
}

void sub_24768F6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](va);
  std::recursive_mutex::unlock(v9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdPrim::SetPropertyOrder(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load(MEMORY[0x277D86540]);
  if (v3)
  {
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(a1, (v3 + 280), a2, &v4);
  }

  pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
}

void RIOPxrUsdPrimClearPropertyOrder(uint64_t a1)
{
  if (a1 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>((a1 + 24));
    std::recursive_mutex::lock(v2);
    v3 = atomic_load(MEMORY[0x277D86540]);
    if (!v3)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::ClearMetadata((a1 + 24), (v3 + 280));

    std::recursive_mutex::unlock(v2);
  }
}

__CFArray *RIOPxrUsdPrimCopyChildrenReorder(uint64_t a1)
{
  if (!a1 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetChildrenReorder(v6, (a1 + 24));
  v3 = v6[0];
  v4 = v6[1];
  while (v3 != v4)
  {
    v7 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v3);
    CFArrayAppendValue(Mutable, v7);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v7);
    ++v3;
  }

  v7 = v6;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v7);
  return Mutable;
}

void sub_24768F90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void RIOPxrUsdPrimSetChildrenReorder(uint64_t a1, const __CFArray *a2)
{
  v2 = (a1 + 24);
  if (a1)
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = 0;
  }

  if (a1 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    v5 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v2);
    std::recursive_mutex::lock(v5);
    Count = CFArrayGetCount(a2);
    memset(v10, 0, sizeof(v10));
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v8 = (CFArrayGetValueAtIndex(a2, i) + 16);
        if (*v8)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](v10, v8);
        }
      }
    }

    v9 = atomic_load(MEMORY[0x277D86540]);
    if (v9)
    {
      v11 = 0;
      pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(v3, (v9 + 224), v10, &v11);
    }

    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
  }
}

void sub_24768FA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::recursive_mutex::unlock(v12);
  _Unwind_Resume(a1);
}

void RIOPxrUsdPrimClearChildrenReorder(uint64_t a1)
{
  if (a1 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>((a1 + 24));
    std::recursive_mutex::lock(v2);
    v3 = atomic_load(MEMORY[0x277D86540]);
    if (!v3)
    {
      pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::ClearMetadata((a1 + 24), (v3 + 224));

    std::recursive_mutex::unlock(v2);
  }
}

uint64_t RIOPxrUsdPrimCopyAttribute(uint64_t a1, uint64_t a2)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0)
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v6, (a1 + 24), (a2 + 16));
  v10 = 12;
  v4 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v6, &v10);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  return v4;
}

void sub_24768FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::~UsdAttribute(va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdPrimCopyPropertyNames(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6[3] = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetPropertyNames();
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v6);
  for (i = v5[0]; i != v5[1]; ++i)
  {
    v6[0] = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(i);
    CFArrayAppendValue(Mutable, v6[0]);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(v6);
  }

  v6[0] = v5;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](v6);
  return Mutable;
}

void sub_24768FD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdPrimCopyAuthoredPropertyNames(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v6[3] = 0;
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredPropertyNames();
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](v6);
  for (i = v5[0]; i != v5[1]; ++i)
  {
    v6[0] = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(i);
    CFArrayAppendValue(Mutable, v6[0]);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(v6);
  }

  v6[0] = v5;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](v6);
  return Mutable;
}

void sub_24768FE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<BOOL ()(pxrInternal__aapl__pxrReserved__::TfToken const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdPrimCopyAttributes(uint64_t a1)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttributes(&v6, (a1 + 24));
  v3 = v6;
  for (i = v7; v3 != i; v3 += 32)
  {
    v9 = 12;
    v8 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(v3, &v9);
    CFArrayAppendValue(Mutable, v8);
    realityio::WrappedCFRef<RIOPxrUsdObject *>::~WrappedCFRef(&v8);
  }

  v8 = &v6;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v8);
  return Mutable;
}

void sub_24768FF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdPrimCopyAuthoredAttributes(uint64_t a1)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAuthoredAttributes(&v6, (a1 + 24));
  v3 = v6;
  for (i = v7; v3 != i; v3 += 32)
  {
    v9 = 12;
    v8 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(v3, &v9);
    CFArrayAppendValue(Mutable, v8);
    realityio::WrappedCFRef<RIOPxrUsdObject *>::~WrappedCFRef(&v8);
  }

  v8 = &v6;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&v8);
  return Mutable;
}

void sub_247690050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimHasAttribute(uint64_t a1, uint64_t a2)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::UsdPrim::HasAttribute((a1 + 24), (a2 + 16));
}

uint64_t RIOPxrUsdPrimHasRelationship(uint64_t a1, uint64_t a2)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::UsdPrim::HasRelationship((a1 + 24), (a2 + 16));
}

uint64_t RIOPxrUsdPrimCreateCreateRelationship(uint64_t a1, uint64_t a2, BOOL a3)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  v5 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>((a1 + 24));
  std::recursive_mutex::lock(v5);
  pxrInternal__aapl__pxrReserved__::UsdPrim::CreateRelationship(&v8, (a1 + 24), (a2 + 16));
  v12 = 22;
  v6 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v8, &v12);
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

  std::recursive_mutex::unlock(v5);
  return v6;
}

void sub_24769022C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(va);
  std::recursive_mutex::unlock(v3);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimCopyRelationship(uint64_t a1, uint64_t a2)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetRelationship(&v6, (a1 + 24), (a2 + 16));
  v10 = 22;
  v4 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v6, &v10);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v8);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v7);
  }

  return v4;
}

void sub_247690308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdRelationship::~UsdRelationship(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimRemoveProperty(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v3);
  std::recursive_mutex::lock(v4);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v3) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = pxrInternal__aapl__pxrReserved__::UsdPrim::RemoveProperty(v3, (a2 + 16));
  }

  std::recursive_mutex::unlock(v4);
  return v5;
}

uint64_t RIOPxrUsdPrimClearSpecializes(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v1);
  std::recursive_mutex::lock(v2);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v1) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v1))
  {
    v3 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetSpecializes(&v5, v1);
    v3 = MEMORY[0x24C1A52B0](&v5);
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

  std::recursive_mutex::unlock(v2);
  return v3;
}

void sub_247690478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pxrInternal__aapl__pxrReserved__::UsdSpecializes::~UsdSpecializes(&a9);
  std::recursive_mutex::unlock(v9);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdSpecializes::~UsdSpecializes(pxrInternal__aapl__pxrReserved__::UsdSpecializes *this)
{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

{
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

uint64_t RIOPxrUsdPrimSetSpecializes(uint64_t a1, const __CFArray *a2)
{
  if (a1)
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v3);
  std::recursive_mutex::lock(v4);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v3) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v3))
  {
    v11 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        v8 = ValueAtIndex;
        v9 = v18;
        if (v18 >= v19)
        {
          v10 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v17, ValueAtIndex + 4);
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v18, ValueAtIndex + 4);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v9 + 1, v8 + 5);
          v10 = v9 + 2;
        }

        v18 = v10;
      }
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetSpecializes(&v13, v3);
    v11 = MEMORY[0x24C1A52A0](&v13, &v17);
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

    v13 = &v17;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v13);
  }

  std::recursive_mutex::unlock(v4);
  return v11;
}

void sub_247690664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  pxrInternal__aapl__pxrReserved__::UsdSpecializes::~UsdSpecializes(&a10);
  a10 = &a14;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::recursive_mutex::unlock(v14);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimAddReference(uint64_t a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = (a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v4);
  std::recursive_mutex::lock(v5);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v4) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v4))
  {
    v7 = 0;
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(v18, a2);
  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&__p, v4);
  pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&__p);
  pxrInternal__aapl__pxrReserved__::UsdStage::ResolveIdentifierToEditTarget();
  if (SHIBYTE(v16) < 0)
  {
    v6 = v15 == 0;
    operator delete(v14);
  }

  else
  {
    v6 = SHIBYTE(v16) == 0;
  }

  v9 = v12;
  if (v12 && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v9 + 8))(v9);
  }

  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v14, v4);
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&__p, 0.0, 1.0);
    v7 = pxrInternal__aapl__pxrReserved__::UsdReferences::AddReference();
    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    goto LABEL_27;
  }

  if (v19 < 0)
  {
    if (v18[1])
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (!v19)
  {
LABEL_22:
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v14, v4);
    std::string::basic_string[abi:ne200100]<0>(&__p, a2);
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v10, 0.0, 1.0);
    v7 = pxrInternal__aapl__pxrReserved__::UsdReferences::AddReference();
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if ((v17 & 7) != 0)
    {
      atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
LABEL_27:
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v16);
    if (v15)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v15);
    }

    goto LABEL_29;
  }

LABEL_17:
  v7 = 0;
LABEL_29:
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

LABEL_9:
  std::recursive_mutex::unlock(v5);
  return v7;
}

void sub_2476908DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  pxrInternal__aapl__pxrReserved__::UsdReferences::~UsdReferences(&a17);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock(v26);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimRemoveReference(uint64_t a1, char *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = (a1 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v5);
  std::recursive_mutex::lock(v6);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v5) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v5))
  {
    v7 = 0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v19, v5);
    std::string::basic_string[abi:ne200100]<0>(v13, a2);
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(v12, 0.0, 1.0);
    v11 = 0;
    MEMORY[0x24C1A4E70](__p, v13, a3 + 16, v12, &v11);
    v7 = MEMORY[0x24C1A7370](&v19, __p);
    v8 = v18;
    v18 = 0;
    if (v8)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v8, *(v8 + 8));
      MEMORY[0x24C1A91B0](v8, 0x1020C4062D53EE8);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = v11;
    v11 = 0;
    if (v9)
    {
      std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::less<void>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>>>::destroy(v9, *(v9 + 8));
      MEMORY[0x24C1A91B0](v9, 0x1020C4062D53EE8);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
    if (v20)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20);
    }
  }

  std::recursive_mutex::unlock(v6);
  return v7;
}

void sub_247690B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  pxrInternal__aapl__pxrReserved__::SdfReference::~SdfReference(&a19);
  pxrInternal__aapl__pxrReserved__::VtDictionary::~VtDictionary(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::UsdReferences::~UsdReferences((v20 - 64));
  std::recursive_mutex::unlock(v19);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimSetReferences(uint64_t a1, const __CFArray *a2)
{
  v2 = (a1 + 24);
  if (a1)
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v2))
  {
    return 0;
  }

  v21 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v2);
  std::recursive_mutex::lock(v21);
  v23 = 0;
  v24 = 0uLL;
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v8 = ValueAtIndex;
      v9 = v24;
      if (v24 >= *(&v24 + 1))
      {
        v11 = 0x6DB6DB6DB6DB6DB7 * ((v24 - v23) >> 3) + 1;
        if (v11 > 0x492492492492492)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((*(&v24 + 1) - v23) >> 3) > v11)
        {
          v11 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v24 + 1) - v23) >> 3);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((*(&v24 + 1) - v23) >> 3)) >= 0x249249249249249)
        {
          v12 = 0x492492492492492;
        }

        else
        {
          v12 = v11;
        }

        v28 = &v23;
        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>>(&v23, v12);
        }

        v14 = 8 * ((v24 - v23) >> 3);
        v25 = 0;
        v26 = v14;
        v27 = v14;
        if (ValueAtIndex[39] < 0)
        {
          std::string::__init_copy_ctor_external(v14, *(ValueAtIndex + 2), *(ValueAtIndex + 3));
        }

        else
        {
          v15 = *(ValueAtIndex + 1);
          *(8 * ((v24 - v23) >> 3) + 0x10) = *(ValueAtIndex + 4);
          *v14 = v15;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v14 + 24), v8 + 10);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v14 + 28), v8 + 11);
        *(v14 + 32) = *(v8 + 3);
        MEMORY[0x24C1A4F90](v14 + 48, v8 + 64);
        *&v27 = v27 + 56;
        v16 = v23 + v26 - v24;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfReference>,pxrInternal__aapl__pxrReserved__::SdfReference*>(&v23, v23, v24, v16);
        v17 = v23;
        v18 = *(&v24 + 1);
        v23 = v16;
        v22 = v27;
        v24 = v27;
        *&v27 = v17;
        *(&v27 + 1) = v18;
        v25 = v17;
        v26 = v17;
        std::__split_buffer<pxrInternal__aapl__pxrReserved__::SdfReference>::~__split_buffer(&v25);
        v13 = v22;
      }

      else
      {
        if (ValueAtIndex[39] < 0)
        {
          std::string::__init_copy_ctor_external(v24, *(ValueAtIndex + 2), *(ValueAtIndex + 3));
        }

        else
        {
          v10 = *(ValueAtIndex + 1);
          *(v24 + 16) = *(ValueAtIndex + 4);
          *v9 = v10;
        }

        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v9 + 24), v8 + 10);
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v9 + 28), v8 + 11);
        *(v9 + 32) = *(v8 + 3);
        MEMORY[0x24C1A4F90](v9 + 48, v8 + 64);
        v13 = v9 + 56;
      }

      *&v24 = v13;
    }
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v25, v3);
  v19 = MEMORY[0x24C1A7360](&v25, &v23);
  if ((BYTE8(v27) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v27 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
  if (v26)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v26);
  }

  v25 = &v23;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v25);
  std::recursive_mutex::unlock(v21);
  return v19;
}

void sub_247690E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::recursive_mutex *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *a17, ...)
{
  va_start(va, a17);
  pxrInternal__aapl__pxrReserved__::UsdReferences::~UsdReferences(va);
  a17 = &a14;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&a17);
  std::recursive_mutex::unlock(a10);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdPrimCopyRootLayerReferences(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1 && (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) == 0 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v16, (a1 + 24));
    v3 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v16);
    pxrInternal__aapl__pxrReserved__::UsdStage::GetRootLayer(&v20, v3);
    v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::SdfLayer>::operator->(&v20);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v14, (a1 + 24));
    pxrInternal__aapl__pxrReserved__::SdfLayer::GetPrimAtPath(v19, v4, &v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v14);
    v5 = v21;
    if (v21 && atomic_fetch_add_explicit(v21 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v17;
    if (v17 && atomic_fetch_add_explicit((v17 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v6 + 8))(v6);
    }

    if ((pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(v19) & 1) == 0)
    {
      v7 = pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>::operator->(v19);
      pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetReferenceList(&v14, v7);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      if (v14)
      {
        if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((v14 + 8)))
        {
          v20 = "sdf/listEditorProxy.h";
          v21 = "_Validate";
          v22 = 406;
          v23 = "BOOL pxrInternal__aapl__pxrReserved__::SdfListEditorProxy<pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy>::_Validate() const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfReferenceTypePolicy]";
          v24 = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 1, "Accessing expired list editor");
        }

        else
        {
          v23 = 0;
          (*(*v14 + 72))(v14, &v16, &v20);
          std::__function::__value_func<std::optional<pxrInternal__aapl__pxrReserved__::SdfReference> ()(pxrInternal__aapl__pxrReserved__::SdfListOpType,pxrInternal__aapl__pxrReserved__::SdfReference const&)>::~__value_func[abi:ne200100](&v20);
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v8 = v16;
      for (i = v17; v8 != i; v8 += 56)
      {
        if (RIOPxrSdfReferenceGetTypeID::onceToken != -1)
        {
          dispatch_once(&RIOPxrSdfReferenceGetTypeID::onceToken, &__block_literal_global_0);
        }

        Instance = _CFRuntimeCreateInstance();
        v11 = Instance;
        if (Instance)
        {
          if (*(v8 + 23) < 0)
          {
            std::string::__init_copy_ctor_external((Instance + 16), *v8, *(v8 + 8));
          }

          else
          {
            v12 = *v8;
            *(Instance + 32) = *(v8 + 16);
            *(Instance + 16) = v12;
          }

          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v11 + 40), (v8 + 24));
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((v11 + 44), (v8 + 28));
          *(v11 + 48) = *(v8 + 32);
          MEMORY[0x24C1A4F90](v11 + 64, v8 + 48);
        }

        v20 = v11;
        CFArrayAppendValue(Mutable, v11);
        realityio::WrappedCFRef<RIOPxrSdfReference *>::~WrappedCFRef(&v20);
      }

      v20 = &v16;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](&v20);
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v19);
  }

  return Mutable;
}

void sub_247691254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void **);
  std::__function::__value_func<std::optional<pxrInternal__aapl__pxrReserved__::SdfReference> ()(pxrInternal__aapl__pxrReserved__::SdfListOpType,pxrInternal__aapl__pxrReserved__::SdfReference const&)>::~__value_func[abi:ne200100](va3);
  va_copy(v14, va);
  std::vector<pxrInternal__aapl__pxrReserved__::SdfReference>::__destroy_vector::operator()[abi:ne200100](va2);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va1);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimCopyStage(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v1) & 1) == 0)
  {

    RIOPxrUsdStageCreateInMemory();
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v6, v1);
  v2 = v7;
  if (v7)
  {
    if (*(pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->(&v7) + 14))
    {
      v2 = v6;
    }

    else
    {
      v2 = 0;
    }
  }

  v8 = v2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef(&v8);
  v3 = v7;
  if (v7 && atomic_fetch_add_explicit(v7 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = RIOPxrUsdStageCreate<pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage> &>(&v8);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(&v8);
  return v4;
}

void sub_247691498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::~TfRefPtr(va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrUsdPrimCopyPrimStack(uint64_t a1)
{
  if (!a1 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  MEMORY[0x24C1A8260](&v8, a1 + 24);
  v3 = v8;
  for (i = v9; v3 != i; ++v3)
  {
    v5 = *v3;
    v10 = v5;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }

    v7 = RIOPxrSdfPrimSpecCreate<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> &>(&v10);
    CFArrayAppendValue(Mutable, v7);
    realityio::WrappedCFRef<RIOPxrSdfPrimSpec *>::~WrappedCFRef(&v7);
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v10);
  }

  v10 = &v8;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__destroy_vector::operator()[abi:ne200100](&v10);
  return Mutable;
}

void sub_2476915D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a14);
  a14 = &a11;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

unint64_t RIOPxrUsdPrimIsInstance(unint64_t result)
{
  if (result)
  {
    v1 = result;
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((result + 24)))
    {
      return 0;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((v1 + 24));
      if (result)
      {
        v3 = *(v1 + 32);
        if (!v3 || (v4 = *(v3 + 7), (v4 & 0x800) != 0))
        {
          pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v3, v2);
          v4 = *(v3 + 7);
        }

        return (v4 >> 8) & 1;
      }
    }
  }

  return result;
}

uint64_t RIOPxrUsdPrimIsInstanceProxy(uint64_t result)
{
  if (result)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((result + 24)))
    {
      return 0;
    }

    else
    {
      return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
    }
  }

  return result;
}

uint64_t RIOPxrUsdPrimIsInstanceable(uint64_t a1)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::UsdPrim::IsInstanceable((a1 + 24));
}

uint64_t RIOPxrUsdPrimSetInstanceable(uint64_t a1, char a2)
{
  if (a1 && (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) == 0)
  {
    v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>((a1 + 24));
    std::recursive_mutex::lock(v4);
    pxrInternal__aapl__pxrReserved__::UsdPrim::SetInstanceable((a1 + 24), a2);
  }

  return 0;
}

uint64_t RIOPxrUsdPrimClearInstanceable(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)))
    {
      return 0;
    }

    else
    {
      v2 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>((v1 + 24));
      std::recursive_mutex::lock(v2);
      v3 = atomic_load(MEMORY[0x277D86540]);
      if (!v3)
      {
        pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
      }

      v1 = pxrInternal__aapl__pxrReserved__::UsdObject::ClearMetadata((v1 + 24), (v3 + 200));
      std::recursive_mutex::unlock(v2);
    }
  }

  return v1;
}

uint64_t RIOPxrUsdPrimHasAuthoredInstanceable(uint64_t a1)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0)
  {
    return 0;
  }

  v3 = atomic_load(MEMORY[0x277D86540]);
  if (!v3)
  {
    pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::SdfFieldKeys_StaticTokenType>>::_TryToCreateData(MEMORY[0x277D86540]);
  }

  return MEMORY[0x2822080E0](a1 + 24, v3 + 200);
}

uint64_t RIOPxrUsdPrimAddAppliedSchema(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v3);
  std::recursive_mutex::lock(v4);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v3) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = pxrInternal__aapl__pxrReserved__::UsdPrim::AddAppliedSchema(v3, (a2 + 16));
  }

  std::recursive_mutex::unlock(v4);
  return v5;
}

uint64_t RIOPxrUsdPrimRemoveAppliedSchema(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v3);
  std::recursive_mutex::lock(v4);
  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot(v3) & 1) != 0 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = pxrInternal__aapl__pxrReserved__::UsdPrim::RemoveAppliedSchema(v3, (a2 + 16));
  }

  std::recursive_mutex::unlock(v4);
  return v5;
}

__CFArray *RIOPxrUsdPrimCopyAppliedSchemas(uint64_t a1)
{
  if (!a1 || !pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)) || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::GetAppliedSchemas(v6, (a1 + 24));
  v4 = v6[0];
  v5 = v6[1];
  while (v4 != v5)
  {
    v7 = RIOPxrTfTokenCreate<pxrInternal__aapl__pxrReserved__::TfToken const&>(v4);
    CFArrayAppendValue(Mutable, v7);
    realityio::WrappedCFRef<RIOPxrTfToken *>::~WrappedCFRef(&v7);
    ++v4;
  }

  v7 = v6;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v7);
  return Mutable;
}

void sub_247691A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void RIOPxrUsdPrimSetAppliedSchemas(uint64_t a1, const __CFArray *a2)
{
  v2 = (a1 + 24);
  if (a1)
  {
    v3 = (a1 + 24);
  }

  else
  {
    v3 = 0;
  }

  if (a1 && pxrInternal__aapl__pxrReserved__::UsdObject::IsValid((a1 + 24)))
  {
    v5 = realityio::writeMutexForUsdObject<pxrInternal__aapl__pxrReserved__::UsdPrim>(v2);
    std::recursive_mutex::lock(v5);
    Count = CFArrayGetCount(a2);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (Count >= 1)
    {
      v7 = 0;
      do
      {
        v8 = (CFArrayGetValueAtIndex(a2, v7) + 16);
        if (*v8)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v14, v8);
        }

        ++v7;
      }

      while (Count != v7);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAppliedSchemas(v13, v3);
    v9 = v13[0];
    v10 = v13[1];
    while (v9 != v10)
    {
      pxrInternal__aapl__pxrReserved__::UsdPrim::RemoveAppliedSchema(v3, v9);
      v9 = (v9 + 8);
    }

    v17 = v13;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&v17);
    v11 = v14;
    v12 = v15;
    while (v11 != v12)
    {
      pxrInternal__aapl__pxrReserved__::UsdPrim::AddAppliedSchema(v3, v11);
      v11 = (v11 + 8);
    }

    v13[0] = &v14;
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](v13);
    std::recursive_mutex::unlock(v5);
  }
}

void sub_247691BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::recursive_mutex::unlock(v16);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrUsdPrimIsPrototype(uint64_t a1)
{
  if (!a1 || (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)) & 1) != 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::UsdPrim::IsPrototype((a1 + 24), v2);
}

uint64_t RIOPxrUsdPrimCopyPrototype(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (pxrInternal__aapl__pxrReserved__::UsdPrim::IsPseudoRoot((a1 + 24)))
    {
      return 0;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdPrim::GetPrototype(&v3, (v1 + 24));
      v7 = 1;
      v1 = RIOPxrUsdObjectCreate<pxrInternal__aapl__pxrReserved__::UsdPrim const&,realityio::RIOPxrUsdObjectHierarchyType>(&v3, &v7);
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
      if (v4)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
      }
    }
  }

  return v1;
}

void sub_247691D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstTypedValue<pxrInternal__aapl__pxrReserved__::SdfSpecifier>::GetValue(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 8);
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = (*(a2 + 8) & 3) == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    (*((v4 & 0xFFFFFFFFFFFFFFF8) + 32))(a2);
  }

  *(a2 + 8) = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::SdfSpecifier>(void)::ti + 3;
  *a2 = v3;
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstTypedValue<pxrInternal__aapl__pxrReserved__::SdfSpecifier>::IsEqual(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = *(a2 + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__12SdfSpecifierE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    goto LABEL_7;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }

  if (result)
  {
    v2 = *(v3 + 1);
LABEL_7:
    if ((v2 & 4) != 0)
    {
      v3 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    return *v3 == **(a1 + 8);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdObject::_SetMetadataImpl<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4 || (*(v4 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(*(a1 + 8), a2);
  }

  pxrInternal__aapl__pxrReserved__::UsdStage::_SetMetadataImpl<pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstValue>();
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfAbstractDataConstTypedValue<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::IsEqual(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v2 = *(a2 + 1);
  if (!v2)
  {
    return 0;
  }

  if (!strcmp((*(*(v2 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__16vectorIN32pxrInternal__aapl__pxrReserved__7TfTokenENS_9allocatorIS2_EEEE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    goto LABEL_6;
  }

  if ((v2 & 4) == 0)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v2 = *(a2 + 1);
LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 168))(a2);
  }

  else
  {
    v6 = *a2;
  }

  v8 = *v6;
  v7 = v6[1];
  v9 = **(a1 + 8);
  if (v7 - *v6 != *(*(a1 + 8) + 8) - v9)
  {
    return 0;
  }

  if (v8 == v7)
  {
    return 1;
  }

  v10 = v8 + 8;
  do
  {
    v11 = *v9++;
    v12 = v11 ^ *(v10 - 8);
    result = v12 < 8;
    v13 = v12 > 7 || v10 == v7;
    v10 += 8;
  }

  while (!v13);
  return result;
}

void pxrInternal__aapl__pxrReserved__::VtValue::operator=<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(uint64_t *a1, uint64_t **a2)
{
  v5 = *MEMORY[0x277D85DE8];
  pxrInternal__aapl__pxrReserved__::VtValue::_HoldAside::_HoldAside(v4, a1);
  a1[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>(void)::ti;
  pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::vector<pxrInternal__aapl__pxrReserved__::TfToken>>::_PlaceCopy(a1, a2);
}

void sub_24769215C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::optional<pxrInternal__aapl__pxrReserved__::SdfReference> ()(pxrInternal__aapl__pxrReserved__::SdfListOpType,pxrInternal__aapl__pxrReserved__::SdfReference const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

const void **realityio::WrappedCFRef<RIOPxrSdfPrimSpec *>::~WrappedCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t RIOPxrSdfPathGetTypeID()
{
  if (RIOPxrSdfPathGetTypeID::onceToken != -1)
  {
    dispatch_once(&RIOPxrSdfPathGetTypeID::onceToken, &__block_literal_global_30);
  }

  return RIOPxrSdfPathGetTypeID::typeID;
}

void __RIOPxrSdfPathGetTypeID_block_invoke()
{
  if (!RIOPxrSdfPathGetTypeID::typeID)
  {
    RIOPxrSdfPathGetTypeID::typeID = _CFRuntimeRegisterClass();
  }
}

uint64_t RIOPxrSdfPathCreateFromCString(char *__s)
{
  if (__s && *__s)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, __s);
    MEMORY[0x24C1A5D70](&v5, __p);
    v1 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    return v1;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247692370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateEmptyPath()
{
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v0 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v2);
  return v0;
}

void sub_247692404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateAbsoluteRootPath(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);

  return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v1);
}

uint64_t RIOPxrSdfPathCreateReflexiveRelativePath(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::SdfPath::ReflexiveRelativePath(a1);

  return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v1);
}

CFStringRef RIOPxrSdfPathCopyString(uint64_t a1)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 16));

  return CFStringCreateWithCString(0, Text, 0x8000100u);
}

uint64_t RIOPxrSdfPathCopy(uint64_t a1)
{
  if (a1)
  {
    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((a1 + 16));
  }

  else
  {
    return RIOPxrSdfPathCreateEmptyPath();
  }
}

uint64_t RIOPxrSdfPathGetPathElementCount(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207B40](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfPathIsAbsolutePath(uint64_t result)
{
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath((result + 16));
  }

  return result;
}

uint64_t RIOPxrSdfPathIsPrimPath(uint64_t result)
{
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath((result + 16));
  }

  return result;
}

uint64_t RIOPxrSdfPathIsAbsoluteRootOrPrimPath(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207B58](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfPathIsRootPrimPath(uint64_t result)
{
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::SdfPath::IsRootPrimPath((result + 16));
  }

  return result;
}

uint64_t RIOPxrSdfPathIsPropertyPath(uint64_t result)
{
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::SdfPath::IsPropertyPath((result + 16));
  }

  return result;
}

uint64_t RIOPxrSdfPathIsPrimPropertyPath(uint64_t result)
{
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPropertyPath((result + 16));
  }

  return result;
}

uint64_t RIOPxrSdfPathIsNamespacedPropertyPath(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207B60](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfPathIsPrimVariantSelectionPath(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207B88](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfPathIsPrimOrPrimVariantSelectionPath(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207BA0](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfPathContainsPrimVariantSelection(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207B90](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfPathContainsPropertyElements(uint64_t result)
{
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  }

  return result;
}

uint64_t RIOPxrSdfPathContainsTargetPath(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207B18](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfPathIsRelationalAttributePath(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207B78](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfPathIsTargetPath(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207A80](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfPathIsMapperPath(uint64_t result)
{
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::SdfPath::IsMapperPath((result + 16));
  }

  return result;
}

uint64_t RIOPxrSdfPathIsMapperArgPath(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207AD8](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfPathIsExpressionPath(uint64_t result)
{
  if (result)
  {
    return MEMORY[0x282207AF0](result + 16);
  }

  return result;
}

uint64_t RIOPxrSdfPathIsEmpty(uint64_t result)
{
  if (result)
  {
    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() ^ 1;
  }

  return result;
}

__CFArray *RIOPxrSdfPathCopyPrefixes(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrefixes(&v7, (a1 + 16));
    v3 = v7;
    for (i = v8; v3 != i; v3 += 2)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9, v3);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v9 + 1, v3 + 1);
      v6 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v9);
      CFArrayAppendValue(Mutable, v6);
      realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v6);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
    }

    v9 = &v7;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v9);
  }

  return Mutable;
}

void sub_247692750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a14);
  a14 = &a11;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

CFStringRef RIOPxrSdfPathCopyName(uint64_t a1)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((a1 + 16));
  if (*(Name + 23) >= 0)
  {
    v2 = Name;
  }

  else
  {
    v2 = *Name;
  }

  return CFStringCreateWithCString(0, v2, 0x8000100u);
}

__CFString *RIOPxrSdfPathCopyElementString(uint64_t a1)
{
  if (!a1)
  {
    return &stru_28595E8A0;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::GetElementString(__p, (a1 + 16));
  if (v5 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_24769285C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfPathCreateCopyReplacingName(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceName(&v5, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    return v2;
  }

  else if (a1)
  {
    v4 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247692920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCopyTargetPath(uint64_t a1)
{
  if (a1)
  {
    TargetPath = pxrInternal__aapl__pxrReserved__::SdfPath::GetTargetPath((a1 + 16));

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(TargetPath);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

CFMutableArrayRef RIOPxrSdfPathCopyAllTargetPathsRecursively(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    memset(v4, 0, sizeof(v4));
    pxrInternal__aapl__pxrReserved__::SdfPath::GetAllTargetPathsRecursively();
    v5 = v4;
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  return Mutable;
}

void sub_247692A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrSdfPathCopyVariantSelection(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v3 = Mutable;
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetVariantSelection(v9, (a1 + 16));
    if (v10 >= 0)
    {
      v4 = v9;
    }

    else
    {
      v4 = v9[0];
    }

    v8 = CFStringCreateWithCString(0, v4, 0x8000100u);
    CFArrayAppendValue(v3, v8);
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v7 = CFStringCreateWithCString(0, p_p, 0x8000100u);
    CFArrayAppendValue(v3, v7);
    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v7);
    realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&v8);
    if (v12 < 0)
    {
      operator delete(__p);
    }

    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }

  else
  {
    CFArrayAppendValue(Mutable, &stru_28595E8A0);
    CFArrayAppendValue(v3, &stru_28595E8A0);
  }

  return v3;
}

void sub_247692BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, void *a11)
{
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&a9);
  realityio::WrappedCFRef<__CFString const*>::~WrappedCFRef(&a10);
  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a11);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathHasPrefix(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return pxrInternal__aapl__pxrReserved__::SdfPath::HasPrefix((a1 + 16), (a2 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t RIOPxrSdfPathIsLessThan(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return pxrInternal__aapl__pxrReserved__::SdfPath::operator<((a1 + 16), (a2 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t RIOPxrSdfPathCopyParentPath(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(&v3, (a1 + 16));
    v1 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v3);
    return v1;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247692C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCopyPrimPath(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v3, (a1 + 16));
    v1 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v3);
    return v1;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247692D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCopyPrimOrPrimVariantSelectionPath(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimOrPrimVariantSelectionPath(&v3, (a1 + 16));
    v1 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v3);
    return v1;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247692DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCopyAbsoluteRootOrPrimPath(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetAbsoluteRootOrPrimPath(&v3, (a1 + 16));
    v1 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v3);
    return v1;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247692E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyStrippingAllVariantSelections(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::StripAllVariantSelections(&v3, (a1 + 16));
    v1 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v3);
    return v1;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247692ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyAppendingPath(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendPath(&v5, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    return v2;
  }

  else if (a1)
  {
    v4 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247692F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyAppendingChild(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v5, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    return v2;
  }

  else if (a1)
  {
    v4 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_24769304C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyAppendingProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v5, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    return v2;
  }

  else if (a1)
  {
    v4 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247693108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyAppendingVariantSelection(uint64_t a1, char *a2, char *a3)
{
  if (a2 && a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, a2);
    std::string::basic_string[abi:ne200100]<0>(&__p, a3);
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendVariantSelection();
    v4 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v11);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v11);
    if (v8 < 0)
    {
      operator delete(__p);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }

    return v4;
  }

  else if (a1)
  {
    v6 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v6);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247693208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v21 - 24));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyAppendingTarget(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendTarget(&v5, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    return v2;
  }

  else if (a1)
  {
    v4 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_2476932F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyAppendingRelationalAttribute(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendRelationalAttribute(&v5, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    return v2;
  }

  else if (a1)
  {
    v4 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_2476933B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyReplacingTargetPath(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceTargetPath(&v5, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    return v2;
  }

  else if (a1)
  {
    v4 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_24769346C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyAppendingMapper(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapper(&v5, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    return v2;
  }

  else if (a1)
  {
    v4 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247693528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyAppendingMapperArg(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendMapperArg(&v5, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    return v2;
  }

  else if (a1)
  {
    v4 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_2476935E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyAppendingExpression(uint64_t a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendExpression(&v3, (a1 + 16));
    v1 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v3);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v3);
    return v1;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247693674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyAppendingElementString(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, a2);
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementString();
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
    if (v6 < 0)
    {
      operator delete(__p);
    }

    return v2;
  }

  else if (a1)
  {
    v4 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_24769374C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyAppendingElementToken(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementToken(&v5, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v5);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v5);
    return v2;
  }

  else if (a1)
  {
    v4 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v4);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247693820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyReplacingPrefix(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  if (a2 && a3)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v7, (a1 + 16), (a2 + 16), (a3 + 16));
    v4 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v7);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v7);
    return v4;
  }

  else if (a1)
  {
    v6 = (a1 + 16);

    return RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v6);
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_2476938E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCopyCommonPrefix(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::GetCommonPrefix(&v4, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
    return v2;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247693978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyMakingAbsolutePath(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(&v4, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
    return v2;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247693A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathCreateCopyMakingRelativePath(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(&v4, (a1 + 16), (a2 + 16));
    v2 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath>(&v4);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v4);
    return v2;
  }

  else
  {

    return RIOPxrSdfPathCreateEmptyPath();
  }
}

void sub_247693AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrSdfPathCreateCopyRemovingCommonSuffix(uint64_t a1, uint64_t a2, BOOL a3)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1 && a2)
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::RemoveCommonSuffix(&value, (a1 + 16), (a2 + 16));
    v6 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&value);
    v14 = v6;
    v11 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v13);
    CFArrayAppendValue(Mutable, v6);
    CFArrayAppendValue(Mutable, v11);
    realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v11);
    realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v14);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v13);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&value);
  }

  else
  {
    if (a1)
    {
      EmptyPath = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((a1 + 16));
    }

    else
    {
      EmptyPath = RIOPxrSdfPathCreateEmptyPath();
    }

    value = EmptyPath;
    if (a2)
    {
      v8 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>((a2 + 16));
    }

    else
    {
      v8 = RIOPxrSdfPathCreateEmptyPath();
    }

    v9 = v8;
    v14 = v8;
    CFArrayAppendValue(Mutable, value);
    CFArrayAppendValue(Mutable, v9);
    realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v14);
    realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&value);
  }

  return Mutable;
}

void sub_247693C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(va1);
  std::pair<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath>::~pair(va);
  _Unwind_Resume(a1);
}

uint64_t RIOPxrSdfPathIsValidPathString(char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  IsValidPathString = pxrInternal__aapl__pxrReserved__::SdfPath::IsValidPathString();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return IsValidPathString;
}

void sub_247693CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfPathIsValidIdentifier(char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  IsValidIdentifier = pxrInternal__aapl__pxrReserved__::SdfPath::IsValidIdentifier();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return IsValidIdentifier;
}

void sub_247693D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RIOPxrSdfPathIsValidNamespacedIdentifier(char *__s)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  IsValidNamespacedIdentifier = pxrInternal__aapl__pxrReserved__::SdfPath::IsValidNamespacedIdentifier();
  if (v4 < 0)
  {
    operator delete(__p);
  }

  return IsValidNamespacedIdentifier;
}

void sub_247693D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFArray *RIOPxrSdfPathArrayDoTask(const __CFArray *a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count)
    {
      v6 = Count;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      if (Count >= 1)
      {
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v9 = ValueAtIndex;
          v10 = v17;
          if (v17 >= v18)
          {
            v11 = std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(&v16, ValueAtIndex + 4);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v17, ValueAtIndex + 4);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v10 + 1, v9 + 5);
            v11 = v10 + 2;
          }

          v17 = v11;
        }
      }

      v19 = &v16;
      v12 = *(a2 + 24);
      v20 = &v19;
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v12 + 48))(v12, &v20);
      v13 = *v19;
      v14 = v19[1];
      while (v13 != v14)
      {
        v20 = RIOPxrSdfPathCreate<pxrInternal__aapl__pxrReserved__::SdfPath const&>(v13);
        CFArrayAppendValue(Mutable, v20);
        realityio::WrappedCFRef<RIOPxrSdfPath *>::~WrappedCFRef(&v20);
        v13 += 2;
      }

      v20 = &v16;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v20);
    }
  }

  return Mutable;
}

void sub_247693F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrSdfPathArrayCreateCopyConciseRelativePaths(const __CFArray *a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_28595AF00;
  v3[3] = v3;
  v1 = RIOPxrSdfPathArrayDoTask(a1, v3);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](v3);
  return v1;
}

void sub_247693FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrSdfPathArrayCreateCopyRemovingDescendentPaths(const __CFArray *a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_28595AF90;
  v3[3] = v3;
  v1 = RIOPxrSdfPathArrayDoTask(a1, v3);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](v3);
  return v1;
}

void sub_247694070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__CFArray *RIOPxrSdfPathArrayCreateCopyRemovingAncestorPaths(const __CFArray *a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_28595B010;
  v3[3] = v3;
  v1 = RIOPxrSdfPathArrayDoTask(a1, v3);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](v3);
  return v1;
}

void sub_247694110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t _RIOPxrSdfPathCFFinalize(char *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 16));
}

void std::__function::__func<RIOPxrSdfPathArrayCreateCopyConciseRelativePaths::$_0,std::allocator<RIOPxrSdfPathArrayCreateCopyConciseRelativePaths::$_0>,void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::operator()(uint64_t a1, char ****a2)
{
  v2 = *a2;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetConciseRelativePaths();
  if (*v2 != &v3)
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__assign_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(*v2, v3, v4, (v4 - v3) >> 3);
  }

  v5 = &v3;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_24769431C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RIOPxrSdfPathArrayCreateCopyConciseRelativePaths::$_0,std::allocator<RIOPxrSdfPathArrayCreateCopyConciseRelativePaths::$_0>,void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<RIOPxrSdfPathArrayCreateCopyRemovingDescendentPaths::$_0,std::allocator<RIOPxrSdfPathArrayCreateCopyRemovingDescendentPaths::$_0>,void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RIOPxrSdfPathArrayCreateCopyRemovingAncestorPaths::$_0,std::allocator<RIOPxrSdfPathArrayCreateCopyRemovingAncestorPaths::$_0>,void ()(std::vector<pxrInternal__aapl__pxrReserved__::SdfPath> **)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<realityio::BuilderIsSatisfiedTracker>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::recursive_mutex::~recursive_mutex((v2 + 96));
    std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(v2 + 56);
    std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(v2 + 16);
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x24C1A91B0](v2, 0x10E0C4020EEA917);
  }

  return a1;
}

BOOL realityio::BuilderIsSatisfiedTracker::isBuilderWaiting(uint64_t a1, unint64_t *a2)
{
  std::recursive_mutex::lock((a1 + 96));
  v4 = std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::find<std::shared_ptr<realityio::Builder>>((a1 + 16), *a2) != 0;
  std::recursive_mutex::unlock((a1 + 96));
  return v4;
}

BOOL realityio::BuilderIsSatisfiedTracker::areAllBuildersFinishedRunning(realityio::BuilderIsSatisfiedTracker *this)
{
  std::recursive_mutex::lock((this + 96));
  if (*(this + 5))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 10) == 0;
  }

  std::recursive_mutex::unlock((this + 96));
  return v2;
}

void sub_247694ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  std::unique_ptr<realityio::BuilderIsSatisfiedTracker>::~unique_ptr[abi:ne200100](va);
  std::__hash_table<std::shared_ptr<realityio::Builder>,std::hash<std::shared_ptr<realityio::Builder>>,std::equal_to<std::shared_ptr<realityio::Builder>>,std::allocator<std::shared_ptr<realityio::Builder>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

void realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(uint64_t *a1, uint64_t a2)
{
  if (realityio::BuilderIsSatisfiedTracker::areAllBuildersFinishedRunning(a1[21]))
  {
    dispatch_semaphore_signal(a1[3]);
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v4 = *(a2 + 24);
  if (v4)
  {
    if (!(v4 >> 60))
    {
      v31 = &v27;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(&v27, v4);
    }

    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
  }

  for (i = (a2 + 16); ; std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](&v27, i + 1))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v6 = 126 - 2 * __clz((v28 - v27) >> 4);
  if (v28 == v27)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,realityio::BuilderExecutor::onBuildersReadyToRunInDeterministicOrder(std::unordered_set<std::shared_ptr<realityio::Builder>> const&)::$_0 &,std::shared_ptr<realityio::Builder>*,false>(v27, v28, v7, 1);
  v8 = v27;
  for (j = v28; v8 != j; v8 += 16)
  {
    if ((*(**v8 + 56))())
    {
      v10 = a1[1];
      if (!v10 || (v11 = *a1, (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = a1[19];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3321888768;
      block[2] = ___ZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEE_block_invoke;
      block[3] = &__block_descriptor_64_ea8_32c97_ZTSKZN9realityio15BuilderExecutor19onBuilderReadyToRunERKNSt3__110shared_ptrINS_7BuilderEEEE3__0_e5_v8__0l;
      v15 = *v8;
      v16 = *(v8 + 1);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v31 = v15;
        v32 = v16;
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v31 = v15;
        v32 = 0;
      }

      v33 = v11;
      v34 = v13;
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      dispatch_async(v14, block);
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      std::mutex::lock((a1 + 10));
      v17 = a1[6];
      v18 = a1[5];
      if (v17 == v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = 32 * (v17 - v18) - 1;
      }

      v21 = a1[8];
      v20 = a1[9];
      v22 = v20 + v21;
      if (v19 == v20 + v21)
      {
        if (v21 < 0x100)
        {
          v23 = a1[7];
          v24 = a1[4];
          if (v17 - v18 < (v23 - v24))
          {
            operator new();
          }

          if (v23 == v24)
          {
            v25 = 1;
          }

          else
          {
            v25 = (v23 - v24) >> 2;
          }

          std::__allocate_at_least[abi:ne200100]<std::allocator<realityio::mtlx::NeoShadeConnectable *>>(v25);
        }

        a1[8] = v21 - 256;
        v35 = *v18;
        a1[5] = (v18 + 1);
        std::__split_buffer<realityio::mtlx::NeoShadeConnectable *>::emplace_back<realityio::mtlx::NeoShadeConnectable *&>(a1 + 4, &v35);
        v18 = a1[5];
        v20 = a1[9];
        v22 = v20 + a1[8];
      }

      v26 = *v8;
      *(*(v18 + ((v22 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v22) = *v8;
      if (*(&v26 + 1))
      {
        atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
        v20 = a1[9];
      }

      a1[9] = v20 + 1;
      dispatch_semaphore_signal(a1[3]);
      std::mutex::unlock((a1 + 10));
    }
  }

  block[0] = &v27;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](block);
}