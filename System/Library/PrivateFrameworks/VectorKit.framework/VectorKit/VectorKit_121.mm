uint64_t gdc::Registry::storage<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), a2);
  if (!v2)
  {
    operator new();
  }

  return v2[3];
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)4>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)1>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)1>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)1>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::LabelIconRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t md::Logic<md::ARLabelIconDataRequestLogic,md::ARLabelIconDataRequestContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x30B26197B2C0D9CELL && *(a3 + 32))
  {
    *&v6[2] = v4;
    v7 = v5;
    return (*(*result + 160))(result, a2, v6);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::Logic<md::ARLabelIconDataRequestLogic,md::ARLabelIconDataRequestContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x30B26197B2C0D9CELL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 152))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARLabelIconDataRequestLogic,md::ARLabelIconDataRequestContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x30B26197B2C0D9CELL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 144))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARLabelIconDataRequestLogic,md::ARLabelIconDataRequestContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x30B26197B2C0D9CELL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 136))(result, a2, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARLabelIconDataRequestLogic,md::ARLabelIconDataRequestContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x30B26197B2C0D9CELL)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 128))(result, a2, v5);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARLabelIconDataRequestContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARLabelIconDataRequestContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A2C6D0;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARLabelIconDataRequestContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A2C6D0;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARLabelIconDataRequestLogic::~ARLabelIconDataRequestLogic(md::ARLabelIconDataRequestLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::StandardLabelMarker::iconImageInfosForLabel(md::StandardLabelMarker *this@<X0>, void *a2@<X8>)
{
  md::LabelMarker::acquireDisplayLock(v6, this);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *(*(this + 36) + 272);
  if (v4)
  {
    if (((*(*v4 + 688))(v4) & 1) == 0 && !(*(*v4 + 696))(v4) || (v4 = *(v4[72] + 8)) != 0)
    {
      (*(*v4 + 728))(v4, a2);
    }
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  v5 = v7;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

void sub_1B30B7EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::recursive_mutex *a12, char a13)
{
  *(v14 - 24) = v13;
  std::vector<md::LabelImageInfo,geo::allocator_adapter<md::LabelImageInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v14 - 24));
  if (a13)
  {
    std::recursive_mutex::unlock(a12);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(a1);
}

void md::StandardLabelMarker::dataIconImageKeys(md::StandardLabelMarker *this@<X0>, id **a2@<X8>)
{
  v36[1] = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 225) == 8)
  {
    v3 = *(*(this + 36) + 8);
    v4 = v3[94];
    v5 = v3[93];
    if (v4 != v5)
    {
      v6 = 0xAAAAAAAAAAAAAAABLL * (v4 - v5);
      if (v6 >= 0xAAAAAAAAAAAAAABLL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v35 = (a2 + 3);
      v7 = mdm::zone_mallocator::instance(this);
      v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v7, v6);
      v31 = v8;
      p_isa = &v8->super.isa;
      v9 = v8 + 24 * v6;
      v33 = &v8->super.isa;
      v34 = v9;
      v10 = a2[1];
      v11 = (&v8->super.isa + *a2 - v10);
      std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>,geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(*a2, v10, v11);
      v12 = *a2;
      *a2 = v11;
      a2[1] = &v8->super.isa;
      v13 = a2[2];
      a2[2] = v9;
      v33 = v12;
      v34 = v13;
      v31 = v12;
      p_isa = v12;
      std::__split_buffer<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(&v31);
      v5 = v3[93];
      v4 = v3[94];
    }

    v29 = v4;
    if (v5 != v4)
    {
      while (1)
      {
        v14 = [[VKImageSourceKey alloc] initWithIconAttributeKey:49 attributeValue:*v5];
        v31 = v14;
        [(VKImageSourceKey *)v14 setDataType:6];
        [(VKImageSourceKey *)v14 setDataValue:*v5];
        v15 = *(v5 + 9);
        if (*(v5 + 9))
        {
          v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
          [(VKImageSourceKey *)v14 setFallbackImageKeys:v16];
          v17 = 0;
          v18 = 4 * v15;
          do
          {
            v19 = *(v3[97] + 4 * *(v5 + 8) + v17);
            v20 = [[VKImageSourceKey alloc] initWithIconAttributeKey:37 attributeValue:v19];
            [(VKImageSourceKey *)v20 setDataType:7];
            [(VKImageSourceKey *)v20 setDataValue:v19];
            [v16 addObject:v20];

            v17 += 4;
          }

          while (v18 != v17);
        }

        if (!*(v5 + 3))
        {
          v22 = a2[1];
          if (v22 >= a2[2])
          {
            v23 = std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKImageSourceKey * {__strong}&,geo::memory_management_mode const&>(a2, &v31, geo::retain);
          }

          else
          {
            v23 = (geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v22, v14) + 3);
          }

          a2[1] = v23;
          goto LABEL_25;
        }

        if (!v14)
        {
          break;
        }

        v36[0] = v14;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
        if (*(v5 + 3))
        {
          goto LABEL_17;
        }

LABEL_22:

        v14 = v31;
LABEL_25:

        v5 += 3;
        if (v5 == v29)
        {
          return;
        }
      }

      v21 = 0;
LABEL_17:
      v24 = 0;
      do
      {
        v25 = *(v3[101] + 4 * *(v5 + 2) + 4 * v24);
        v26 = [[VKImageSourceKey alloc] initWithIconAttributeKey:50 attributeValue:v25];
        v30 = v26;
        [(VKImageSourceKey *)v26 setDataType:8];
        [(VKImageSourceKey *)v26 setDataValue:v25];
        [(VKImageSourceKey *)v26 setFallbackImageKeys:v21];
        v27 = a2[1];
        if (v27 >= a2[2])
        {
          v28 = std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKImageSourceKey * {__strong}&,geo::memory_management_mode const&>(a2, &v30, geo::retain);
        }

        else
        {
          v28 = (geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v27, v26) + 3);
        }

        a2[1] = v28;

        ++v24;
      }

      while (v24 < *(v5 + 3));
      goto LABEL_22;
    }
  }
}

void sub_1B30B825C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void **);
  std::__split_buffer<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(va1);
  std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

double md::StandardLabelMarker::calloutAnchorPoint(md::StandardLabelMarker *this, int a2)
{
  md::LabelMarker::acquireDisplayLock(&v8, this);
  if (v8)
  {
    v4 = *(*(this + 36) + 432);
    v5 = roundf(v4);
    if (a2)
    {
      v4 = v5;
    }

    v6 = (v4 / *(v8 + 476));
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  return v6;
}

BOOL md::StandardLabelMarker::positionOfInterest(uint64_t a1, uint64_t a2, float *a3)
{
  v6 = (*(**(*(a1 + 288) + 8) + 248))(*(*(a1 + 288) + 8), *(a1 + 288) + 48);
  if (v6 >= 0.00000011921)
  {
    md::LabelMarker::acquireDisplayLock(&v10, a1);
    v7 = *(a1 + 288);
    v8 = *(v7 + 128);
    *(a2 + 16) = *(v7 + 144);
    *a2 = v8;
    *a3 = v6;
    if (v13 == 1)
    {
      std::recursive_mutex::unlock(v12);
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }
  }

  return v6 >= 0.00000011921;
}

uint64_t md::StandardLabelMarker::facingDirection(md::StandardLabelMarker *this)
{
  v1 = *(this + 36);
  if (*(v1 + 164) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 152);
  v3 = *(v1 + 156);
  v4 = 1.0 / sqrtf((v2 * v2) + (v3 * v3));
  v5 = v4 * v2;
  v6 = v4 * v3;
  *&v13 = v5;
  *(&v13 + 1) = v4 * v3;
  v7 = 0.0;
  if (v13)
  {
    v8 = atan2f(v6, v5);
    v9 = fmodf(4.7124 - v8, 6.2832);
    v7 = fmodf(v9 + 6.2832, 6.2832) + -3.1416;
  }

  if (v7 >= -0.0001)
  {
    v11 = v7;
  }

  else
  {
    v10 = v7 + 6.28318531;
    v11 = v10;
  }

  return COERCE_UNSIGNED_INT(fminf(fmaxf(v11 * 57.296, 0.0), 360.0)) | 0x100000000;
}

uint64_t md::StandardLabelMarker::coordinateNoFallbackElevation@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 288);
  if (*(v2 + 192) == 1)
  {
    v3 = *(v2 + 188);
  }

  else
  {
    v3 = 1.79769313e308;
  }

  *a2 = *(v2 + 128);
  *(a2 + 16) = v3;
  return this;
}

double md::StandardLabelMarker::coordinate@<D0>(md::StandardLabelMarker *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 36);
  *a2 = *(v2 + 128);
  result = *(v2 + 144);
  *(a2 + 16) = result;
  return result;
}

float md::StandardLabelMarker::screenPixelBounds(md::StandardLabelMarker *this)
{
  md::LabelMarker::acquireDisplayLock(&v5, this);
  if (v5 && (v2 = *(*(this + 36) + 272)) != 0)
  {
    v3 = (*(*v2 + 264))(v2);
  }

  else
  {
    v3 = 3.4028e38;
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return v3;
}

void sub_1B30B86D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::recursive_mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::recursive_mutex::unlock(a11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

float md::StandardLabelMarker::screenCollisionBounds(md::StandardLabelMarker *this)
{
  md::LabelMarker::acquireDisplayLock(&v5, this);
  if (v5)
  {
    v2 = *(*(this + 36) + 272);
    if (v2)
    {
      v3 = *(*(v2 + 24) + 392);
    }

    else
    {
      v3 = 3.4028e38;
    }
  }

  else
  {
    v3 = 3.4028e38;
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return v3;
}

float md::StandardLabelMarker::calloutAnchorRect(md::StandardLabelMarker *this, uint64_t a2)
{
  md::LabelMarker::acquireDisplayLock(&v24, this);
  v4 = *(this + 36);
  v5 = 0.0;
  if ((*(v4 + 1152) & 0xFD) == 1)
  {
    v28 = xmmword_1B33B0730;
    v6 = *(v4 + 272);
    if (v6)
    {
      v5 = (*(*v6 + 672))(v6, a2);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      *&v28 = __PAIR64__(LODWORD(v7), LODWORD(v5));
      *(&v28 + 1) = __PAIR64__(LODWORD(v11), LODWORD(v9));
    }

    else
    {
      v8 = 3.4028e38;
      v12 = -3.4028e38;
      v10 = -3.4028e38;
      v5 = 3.4028e38;
    }

    v13 = 0;
    v14 = 0;
    v15 = &v28;
    do
    {
      v16 = *(&v28 + v14 + 2);
      v17 = *v15;
      if (v13)
      {
        break;
      }

      v13 = 1;
      v15 = &v28 + 1;
      v14 = 1;
    }

    while (v16 >= v17);
    v18 = v16 < v17 || v10 == v5;
    if (v18 || v12 == v8)
    {
      v20 = *(*(this + 36) + 272);
      if (v20)
      {
        (*(*v20 + 264))(v20);
      }

      else
      {
        v22 = -3.4028e38;
        v21 = 3.4028e38;
      }

      v5 = -(fmaxf(v22 - v21, 0.0) * 0.5);
    }
  }

  if (v27 == 1)
  {
    std::recursive_mutex::unlock(v26);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  return v5;
}

void sub_1B30B89AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::recursive_mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::recursive_mutex::unlock(a11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::StandardLabelMarker::featureHandles(md::StandardLabelMarker *this@<X0>, void *a2@<X8>)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v4 = *(this + 30);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 29);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    if (v7)
    {
      v8 = *(this + 36);
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        v11[0] = &unk_1F2A2CC98;
        v11[1] = a2;
        v11[2] = this;
        v11[3] = v11;
        md::LabelFeature::enumerateGEOFeatures(v9, v11);
        std::__function::__value_func<void ()(GeoCodecsFeature const*)>::~__value_func[abi:nn200100](v11);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_1B30B8AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::__function::__value_func<void ()(GeoCodecsFeature const*)>::~__value_func[abi:nn200100](&a10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  std::vector<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a10);
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::StandardLabelMarker::featureHandles(void)::$_0,std::allocator<md::StandardLabelMarker::featureHandles(void)::$_0>,void ()(GeoCodecsFeature const*)>::operator()(uint64_t a1, unint64_t *a2)
{
  v3 = md::MarkerFeatureHandle::MarkerFeatureHandle(&v23, *a2, *(*(a1 + 16) + 225));
  v4 = *(a1 + 8);
  v5 = v4[1];
  v6 = v4[2];
  if (v5 >= v6)
  {
    v9 = 0x8E38E38E38E38E39 * ((v5 - *v4) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x38E38E38E38E38ELL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0x8E38E38E38E38E39 * ((v6 - *v4) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x1C71C71C71C71C7)
    {
      v12 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v12 = v10;
    }

    v33 = v4 + 3;
    if (v12)
    {
      v13 = mdm::zone_mallocator::instance(v3);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::MarkerFeatureHandle>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[72 * v9];
    *(&v32 + 1) = &v14[72 * v12];
    *v15 = v23;
    v15[40] = 0;
    *(v15 + 20) = v25;
    *(v15 + 8) = v24;
    *(v15 + 4) = v26;
    v15[40] = v27;
    *(v15 + 6) = v28;
    v16 = v30;
    *(v15 + 7) = v29;
    *(v15 + 8) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v32 = v15 + 72;
    v17 = v4[1];
    v18 = &v15[*v4 - v17];
    std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>,md::MarkerFeatureHandle*>(*v4, v17, v18);
    v19 = *v4;
    *v4 = v18;
    v20 = v4[2];
    v22 = v32;
    v21 = v32;
    v31[1] = v19;
    *&v32 = v19;
    *(v4 + 1) = v21;
    *(&v32 + 1) = v20;
    v31[0] = v19;
    std::__split_buffer<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator> &>::~__split_buffer(v31);
    v8 = v22;
  }

  else
  {
    *v5 = v23;
    *(v5 + 40) = 0;
    *(v5 + 20) = v25;
    *(v5 + 16) = v24;
    *(v5 + 32) = v26;
    *(v5 + 40) = v27;
    *(v5 + 48) = v28;
    v7 = v30;
    *(v5 + 56) = v29;
    *(v5 + 64) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = v5 + 72;
    v4[1] = v8;
  }

  v4[1] = v8;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }
}

void sub_1B30B8CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::StandardLabelMarker::featureHandles(void)::$_0,std::allocator<md::StandardLabelMarker::featureHandles(void)::$_0>,void ()(GeoCodecsFeature const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2CC98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

_BYTE *md::StandardLabelMarker::transitSystems@<X0>(_BYTE *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this[225];
  v4 = v3 > 0xD;
  v5 = (1 << v3) & 0x2600;
  if (v4 || v5 == 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = this[184];
    v7 = *(this + 20);
    v8 = *(this + 21);
    v9 = v8 - v7;
    if (v8 != v7)
    {
      if ((v9 >> 5) >> 59)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = mdm::zone_mallocator::instance(this);
      v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(v10, v9 >> 5);
      v12 = 0;
      *a2 = v11;
      *(a2 + 16) = &v11[v9];
      do
      {
        v13 = (v7 + v12);
        this = &v11[v12];
        v11[v12 + 24] = *(v7 + v12 + 24);
        if (*(v7 + v12 + 23) < 0)
        {
          this = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(this, *v13, *(v13 + 1));
        }

        else
        {
          v14 = *v13;
          *(this + 2) = *(v13 + 2);
          *this = v14;
        }

        v12 += 32;
      }

      while (v7 + v12 != v8);
      *(a2 + 8) = &v11[v12];
    }
  }

  return this;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 32 * a2, 0x1012040B602C572uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void md::StandardLabelMarker::setUseVKSelectionBalloon(md::StandardLabelMarker *this, char a2)
{
  md::LabelMarker::acquireDisplayLock(&v5, this);
  *(*(this + 36) + 1333) = a2;
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  v4 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

uint64_t md::StandardLabelMarker::featureTile@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 320);
  *a2 = *(this + 312);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void md::StandardLabelMarker::setLabelPressed(md::StandardLabelMarker *this, int a2)
{
  md::LabelMarker::acquireDisplayLock(&v10, this);
  v4 = v10;
  if (v10)
  {
    v5 = *(this + 36);
    if (*(v5 + 1159) != a2)
    {
      *(v5 + 1159) = a2;
      v6 = atomic_load((v4 + 3053));
      if (v6)
      {
        v7 = *(v4 + 136);
        if (v7)
        {
          v8 = *(v7 + 56);
          if (v8)
          {
            std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v8, v4, 9);
          }
        }
      }
    }
  }

  if (v13 == 1)
  {
    std::recursive_mutex::unlock(v12);
  }

  v9 = v11;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void sub_1B30B9094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::recursive_mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::recursive_mutex::unlock(a11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::StandardLabelMarker::setIsDragged(md::StandardLabelMarker *this, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  md::LabelMarker::acquireDisplayLock(&v6, this);
  if (v6)
  {
    v4 = *(this + 36);
    if (*(v4 + 488) != a2)
    {
      *(v4 + 488) = a2;
      v5 = *(this + 37);
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = 0;
      operator new();
    }
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void sub_1B30B91F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::recursive_mutex *a12, char a13, int a14, __int16 a15, char a16, char a17)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a15);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  if (a13 == 1)
  {
    std::recursive_mutex::unlock(a12);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t md::StandardLabelMarker::isAlongSelectedTransitLine(md::StandardLabelMarker *this)
{
  v2 = *(this + 225);
  if (v2 != 10)
  {
    if (v2 == 8)
    {
      v3 = *(this + 30);
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        if (v4)
        {
          v5 = v4;
          v6 = *(this + 29);
          if (v6)
          {
            v7 = (*(**(*(v6 + 168) + 64) + 72))(*(*(v6 + 168) + 64), *(this + 38));
          }

          else
          {
            v7 = 0;
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
          return v7;
        }
      }
    }

    return 0;
  }

  v8 = *(*(this + 36) + 8);
  v10 = *(v8 + 504);
  v9 = *(v8 + 512);
  if (v10 == v9)
  {
    return 0;
  }

  v11 = v10 + 8;
  do
  {
    v12 = *(v11 - 8);
    if (v12)
    {
      v13 = v12 + 8;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v13 + 42);
    v7 = v14 != 0xFFFF;
    v15 = v14 != 0xFFFF || v11 == v9;
    v11 += 8;
  }

  while (!v15);
  return v7;
}

uint64_t md::StandardLabelMarker::isTextVisible(md::StandardLabelMarker *this)
{
  v1 = *(this + 36);
  if ((*(v1 + 1152) & 0xFD) == 1 && (v2 = *(v1 + 272)) != 0)
  {
    return (*(*v2 + 752))();
  }

  else
  {
    return 0;
  }
}

id md::StandardLabelMarker::externalFeatureAnnotation(md::StandardLabelMarker *this)
{
  md::LabelMarker::acquireDisplayLock(&v8, this);
  v2 = (*(**(*(this + 36) + 8) + 232))(*(*(this + 36) + 8));
  v3 = v2;
  if (v2 && ([v2 feature], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isInjectedFeature"), v4, v5))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  return v6;
}

void sub_1B30B94CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::recursive_mutex *a11, char a12)
{
  v14 = v13;

  if (a12 == 1)
  {
    std::recursive_mutex::unlock(a11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t md::StandardLabelMarker::routeAnnotations(md::StandardLabelMarker *this)
{
  if ((*(*this + 192))(this) && (v2 = *(*(this + 36) + 8)) != 0)
  {
    return v2 + 296;
  }

  else
  {
    return this + 256;
  }
}

id md::StandardLabelMarker::arWalkingFeature(md::StandardLabelMarker *this)
{
  v2 = *(*(this + 36) + 8);
  if (v2)
  {
    v2 = (*(*v2 + 208))(v2);
    v1 = vars8;
  }

  return v2;
}

id md::StandardLabelMarker::waypointInfo(md::StandardLabelMarker *this)
{
  if ((*(*this + 184))(this) && (v2 = *(*(this + 36) + 8)) != 0)
  {
    v3 = md::LabelExternalPointFeature::incident(*(v2 + 720));
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void md::StandardLabelMarker::populateClusterWaypointInfos(void *a1, id **a2)
{
  v44 = *MEMORY[0x1E69E9840];
  md::LabelMarker::acquireDisplayLock(&v34, a1);
  if ((*(*a1 + 320))(a1))
  {
    v4 = (*(**(a1[36] + 8) + 72))(*(a1[36] + 8));
    if (v4)
    {
      md::ClusterNodeContext::LockedPtr::LockedPtr(&v38, (v4 + 288));
      if (v40 && (*(*v40 + 80))(v40))
      {
        v5 = (*(*v40 + 80))(v40);
        v41 = 0;
        v42 = 0;
        v43 = 0;
        (*(*v5 + 16))(v5, &v41, 1, 0);
        v6 = 126 - 2 * __clz(v42 - v41);
        if (v42 == v41)
        {
          v7 = 0;
        }

        else
        {
          v7 = v6;
        }

        std::__introsort<std::_ClassicAlgPolicy,SortFeatureNodes(std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,false>(v41, v42, v7, 1);
        v8 = v41;
        if (v42 != v41)
        {
          v9 = 0;
          do
          {
            v10 = v8[v9];
            v11 = (*(*v10 + 88))(v10);
            v12 = v11 == 0;

            if (!v12)
            {
              v13 = (*(*v10 + 88))(v10);
              v14 = v13;
              v16 = a2[1];
              v15 = a2[2];
              if (v16 >= v15)
              {
                v18 = (v16 - *a2) >> 3;
                if ((v18 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v19 = v15 - *a2;
                v20 = v19 >> 2;
                if (v19 >> 2 <= (v18 + 1))
                {
                  v20 = v18 + 1;
                }

                if (v19 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v21 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v21 = v20;
                }

                if (v21)
                {
                  v22 = mdm::zone_mallocator::instance(v13);
                  v23 = pthread_rwlock_rdlock((v22 + 32));
                  if (v23)
                  {
                    geo::read_write_lock::logFailure(v23, "read lock", v24);
                  }

                  v25 = malloc_type_zone_malloc(*v22, 8 * v21, 0x80040B8603338uLL);
                  atomic_fetch_add((v22 + 24), 1u);
                  geo::read_write_lock::unlock((v22 + 32));
                }

                else
                {
                  v25 = 0;
                }

                v26 = &v25[8 * v18];
                *v26 = v14;
                v17 = (v26 + 1);
                v28 = *a2;
                v27 = a2[1];
                v29 = &v25[8 * v18 + *a2 - v27];
                if (v27 != *a2)
                {
                  v30 = *a2;
                  v31 = v29;
                  do
                  {
                    v32 = *v30;
                    *v30++ = 0;
                    *v31++ = v32;
                  }

                  while (v30 != v27);
                  do
                  {
                  }

                  while (v28 != v27);
                  v28 = *a2;
                }

                *a2 = v29;
                a2[1] = v17;
                a2[2] = &v25[8 * v21];
                if (v28)
                {
                  v33 = mdm::zone_mallocator::instance(v13);
                  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKRouteWaypointInfo * {__strong}>(v33, v28);
                }
              }

              else
              {
                *v16 = v13;
                v17 = (v16 + 1);
              }

              a2[1] = v17;
            }

            ++v9;
            v8 = v41;
          }

          while (v9 < v42 - v41);
        }

        std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v41);
      }

      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v39);
      }
    }
  }

  if (v37 == 1)
  {
    std::recursive_mutex::unlock(v36);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }
}

void sub_1B30B9A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::recursive_mutex *a11, char a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a12 == 1)
  {
    std::recursive_mutex::unlock(a11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

void md::StandardLabelMarker::populateClusterFeatureAnnotations(void *a1, uint64_t *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  md::LabelMarker::acquireDisplayLock(v27, a1);
  if ((*(*a1 + 320))(a1))
  {
    v4 = (*(**(a1[36] + 8) + 72))(*(a1[36] + 8));
    if (v4)
    {
      md::ClusterNodeContext::LockedPtr::LockedPtr(&v31, (v4 + 288));
      if (v33 && (*(*v33 + 72))(v33))
      {
        v5 = (*(*v33 + 72))(v33);
        v39 = 0;
        v40 = 0;
        v41 = 0;
        (*(*v5 + 16))(v5, &v39, 1, 0);
        v6 = 126 - 2 * __clz(v40 - v39);
        if (v40 == v39)
        {
          v7 = 0;
        }

        else
        {
          v7 = v6;
        }

        v8 = std::__introsort<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,false>(v39, v40, v7, 1);
        v9 = v39;
        v10 = v40;
        v11 = v40 - v39;
        v12 = *a2;
        if (a2[2] - *a2 < (v40 - v39))
        {
          if ((v11 >> 3) >> 61)
          {
LABEL_33:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v13 = a2[1];
          v38 = a2 + 3;
          v14 = mdm::zone_mallocator::instance(v8);
          v34 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong}>(v14, v11 >> 3);
          v35 = &v34[v13 - v12];
          v36 = v35;
          v37 = &v34[v11];
          std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(a2, &v34);
          std::__split_buffer<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator> &>::~__split_buffer(&v34);
          v9 = v39;
          v10 = v40;
        }

        for (; v9 != v10; ++v9)
        {
          v15 = (*(**v9 + 88))();
          v16 = v15;
          v18 = a2[1];
          v17 = a2[2];
          if (v18 >= v17)
          {
            v20 = (v18 - *a2) >> 3;
            if ((v20 + 1) >> 61)
            {
              goto LABEL_33;
            }

            v21 = v17 - *a2;
            v22 = v21 >> 2;
            if (v21 >> 2 <= (v20 + 1))
            {
              v22 = v20 + 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF8)
            {
              v23 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v22;
            }

            v38 = a2 + 3;
            if (v23)
            {
              v24 = mdm::zone_mallocator::instance(v15);
              v25 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong}>(v24, v23);
            }

            else
            {
              v25 = 0;
            }

            v26 = &v25[8 * v20];
            v34 = v25;
            v35 = v26;
            v37 = &v25[8 * v23];
            *v26 = v16;
            v36 = (v26 + 1);
            std::vector<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator>>::__swap_out_circular_buffer(a2, &v34);
            v19 = a2[1];
            std::__split_buffer<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator> &>::~__split_buffer(&v34);
          }

          else
          {
            *v18 = v15;
            v19 = (v18 + 1);
          }

          a2[1] = v19;
        }

        std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v39);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v32);
      }
    }
  }

  if (v30 == 1)
  {
    std::recursive_mutex::unlock(v29);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }
}

void sub_1B30B9DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::recursive_mutex *a12, char a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a13 == 1)
  {
    std::recursive_mutex::unlock(a12);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(a1);
}

void md::StandardLabelMarker::parentClusterLabelMarker(md::StandardLabelMarker *this@<X0>, void *a2@<X8>)
{
  md::LabelMarker::acquireDisplayLock(v6, this);
  v4 = (*(**(*(this + 36) + 8) + 72))(*(*(this + 36) + 8));
  v5 = v4;
  if (v4 && md::LabelExternalPointFeature::isClusterChild(v4))
  {
    md::ClusterNodeContext::LockedPtr::LockedPtr(&v10, v5 + 36);
    if (v12 && *(v12 + 72))
    {
      (*(*v10 + 16))(v10);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void sub_1B30B9F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::recursive_mutex *a12, char a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a13 == 1)
  {
    std::recursive_mutex::unlock(a12);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL md::LabelExternalPointFeature::isClusterChild(md::LabelExternalPointFeature *this)
{
  md::ClusterNodeContext::LockedPtr::LockedPtr(&v3, this + 36);
  if (v5)
  {
    v1 = *(v5 + 72) != 0;
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return v1;
}

BOOL md::StandardLabelMarker::isClusterChild(md::StandardLabelMarker *this)
{
  md::LabelMarker::acquireDisplayLock(&v5, this);
  v2 = (*(**(*(this + 36) + 8) + 72))(*(*(this + 36) + 8));
  if (v2)
  {
    isClusterChild = md::LabelExternalPointFeature::isClusterChild(v2);
  }

  else
  {
    isClusterChild = 0;
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return isClusterChild;
}

void sub_1B30BA070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::recursive_mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::recursive_mutex::unlock(a11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

VKObjectBoundsContext *md::StandardLabelMarker::clusterContentBounds(md::StandardLabelMarker *this)
{
  v35 = *MEMORY[0x1E69E9840];
  md::LabelMarker::acquireDisplayLock(v22, this);
  if ((*(*this + 320))(this) && (v2 = (*(**(*(this + 36) + 8) + 72))(*(*(this + 36) + 8))) != 0)
  {
    md::ClusterNodeContext::LockedPtr::LockedPtr(&v26, (v2 + 288));
    if (v28 && (*(*v28 + 72))(v28))
    {
      v3 = (*(*v28 + 72))(v28);
      v4 = objc_alloc_init(VKObjectBoundsContext);
      __p = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      (*(*v3 + 16))(v3, &v32, 5, 16);
      std::vector<gm::Matrix<double,2,1>>::reserve(&__p, (v33 - v32) >> 3);
      v9 = v32;
      v10 = v33;
      if (v32 != v33)
      {
        v11 = v30;
        do
        {
          v12 = md::LabelPoint::mercatorPoint((*v9 + 16));
          v13 = v12;
          if (v11 >= v31)
          {
            v14 = __p;
            v15 = (v11 - __p) >> 4;
            v16 = v15 + 1;
            if ((v15 + 1) >> 60)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v17 = v31 - __p;
            if ((v31 - __p) >> 3 > v16)
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
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v18);
            }

            v5 = *v13;
            *(16 * v15) = *v13;
            if (v14 != v11)
            {
              v19 = 0;
              do
              {
                v20 = *v14;
                v14 += 16;
                DWORD1(v5) = DWORD1(v20);
                *v19++ = v20;
              }

              while (v14 != v11);
              v14 = __p;
            }

            v11 = (16 * v15 + 16);
            __p = 0;
            v31 = 0;
            if (v14)
            {
              operator delete(v14);
            }
          }

          else
          {
            v5 = *v12;
            *v11 = *v12;
            v11 += 16;
          }

          v30 = v11;
          v9 += 8;
        }

        while (v9 != v10);
      }

      LODWORD(v5) = 15.0;
      LODWORD(v6) = 30.0;
      LODWORD(v7) = 25.0;
      LODWORD(v8) = 30.0;
      [(VKObjectBoundsContext *)v4 setEdgePadding:*&v5, v6, v7, v8];
      [(VKObjectBoundsContext *)v4 addPoints:&__p];
      std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v32);
      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v4 = 0;
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }
  }

  else
  {
    v4 = 0;
  }

  if (v25 == 1)
  {
    std::recursive_mutex::unlock(v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  return v4;
}

void sub_1B30BA3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::recursive_mutex *a12, char a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  if (a13 == 1)
  {
    std::recursive_mutex::unlock(a12);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::StandardLabelMarker::isLeafCluster(md::StandardLabelMarker *this)
{
  md::LabelMarker::acquireDisplayLock(&v5, this);
  v2 = (*(**(*(this + 36) + 8) + 72))(*(*(this + 36) + 8));
  if (v2)
  {
    isLeafCluster = md::LabelExternalPointFeature::isLeafCluster(v2);
  }

  else
  {
    isLeafCluster = 0;
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return isLeafCluster;
}

void sub_1B30BA4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::recursive_mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::recursive_mutex::unlock(a11);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LabelExternalPointFeature::isLeafCluster(md::LabelExternalPointFeature *this)
{
  md::ClusterNodeContext::LockedPtr::LockedPtr(&v3, this + 36);
  if (v5)
  {
    v1 = (*(*v5 + 40))(v5);
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return v1;
}

void sub_1B30BA56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::StandardLabelMarker::isTrail(md::StandardLabelMarker *this)
{
  (*(*this + 96))(&v9);
  if (!v9)
  {
    v4 = 0;
    goto LABEL_14;
  }

  v1 = *(v9 + 33);
  if (*(v9 + 33))
  {
    v2 = *v9;
    if (**v9 == 185)
    {
      v3 = 0;
      LODWORD(v1) = 1;
LABEL_10:
      v7 = (v2[2 * v3 + 1] & 0xFFFFFFFD) == 0;
      goto LABEL_13;
    }

    v3 = 0;
    v5 = v2 + 2;
    while (v1 - 1 != v3)
    {
      v6 = *v5;
      v5 += 2;
      ++v3;
      if (v6 == 185)
      {
        LODWORD(v1) = v3 < v1;
        goto LABEL_10;
      }
    }

    LODWORD(v1) = 0;
  }

  v7 = 1;
LABEL_13:
  v4 = v1 & v7;
LABEL_14:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  return v4;
}

void md::StandardLabelMarker::locale(md::StandardLabelMarker *this@<X0>, void *a2@<X8>)
{
  v3 = (*(**(*(this + 36) + 8) + 488))(*(*(this + 36) + 8), 0);
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  if (*(v3 + 23) < 0)
  {
    v4 = *v3;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  if (v5)
  {
    v8 = v5;
    v6 = v5;
    v7 = [v8 UTF8String];
  }

  else
  {
LABEL_6:
    v8 = 0;
    v7 = "";
  }

  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(a2, v7);
}

void md::StandardLabelMarker::subtext(md::StandardLabelMarker *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 36);
  v4 = (*(*v3 + 32))(v3);

  if (v4 && ((*(*v3 + 32))(v3), v5 = objc_claimAutoreleasedReturnValue(), [v5 subtitle], v8 = objc_claimAutoreleasedReturnValue(), v5, v8))
  {
    v6 = v8;
    v7 = [v8 UTF8String];
  }

  else
  {
    v8 = 0;
    v7 = "";
  }

  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(a2, v7);
}

void md::StandardLabelMarker::text(md::StandardLabelMarker *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 36);
  v4 = (*(*v3 + 32))(v3);

  if (!v4)
  {
    v7 = *(v3 + 272);
    if (!v7 || (v8 = (*(*v7 + 840))(v7)) == 0)
    {
      v9 = *(v3 + 1290);
      v10 = v9 == 7 || v9 == 4;
      if (!v10 || (v8 = (*(**(v3 + 8) + 504))(*(v3 + 8))) == 0)
      {
        v8 = (*(**(v3 + 8) + 480))(*(v3 + 8), 0);
        if (!v8)
        {
          goto LABEL_17;
        }
      }
    }

    v11 = v8;
    if (*(v8 + 23) < 0)
    {
      v11 = *v8;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    if (!v6)
    {
      goto LABEL_17;
    }

LABEL_16:
    v15 = v6;
    v12 = v6;
    v13 = [v15 UTF8String];
    goto LABEL_18;
  }

  v14 = (*(*v3 + 32))(v3);
  v5 = [v14 title];

  v6 = v5;
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_17:
  v15 = 0;
  v13 = "";
LABEL_18:
  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(a2, v13);
}

void md::StandardLabelMarker::populateRelatedTextFromTransitLines(md::StandardLabelMarker *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v17 = &v18;
  v18 = 0;
  v1 = *(this + 4);
  v2 = *(this + 5);
  if (v1 == v2)
  {
    v13 = 0;
  }

  else
  {
    do
    {
      v4 = *(this + 39);
      v5 = geo::codec::VectorTile::transitSystemInfoForFeatureID(v4, *v1);
      v14 = 0;
      __s = 0;
      LocalizedLabel = geo::codec::transitSystemInfoGetLocalizedLabel(v4, *(v5 + 40), *(v5 + 48), &__s, &v14);
      if (__s && *__s || (LocalizedLabel = geo::codec::transitSystemInfoGetNativeLabel(*(this + 39), v5, &__s, &v14), __s))
      {
        v7 = mdm::zone_mallocator::instance(LocalizedLabel);
        v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,void *>>(v7);
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(v8 + 4, __s);
        v9 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(&v17, &v16, v8 + 4);
        if (*v9)
        {
          if (v8)
          {
            std::__tree_node_destructor<geo::allocator_adapter<std::__tree_node<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v8);
          }
        }

        else
        {
          v10 = v16;
          *v8 = 0;
          v8[1] = 0;
          v8[2] = v10;
          *v9 = v8;
          if (*v17)
          {
            v17 = *v17;
            v8 = *v9;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v18, v8);
          ++v19;
          v11 = *(this + 21);
          if (v11 >= *(this + 22))
          {
            v12 = std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__emplace_back_slow_path<char const*&>((this + 160), &__s);
          }

          else
          {
            std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(*(this + 21), __s);
            v12 = (v11 + 32);
            *(this + 21) = v11 + 32;
          }

          *(this + 21) = v12;
        }
      }

      ++v1;
    }

    while (v1 != v2);
    v13 = v18;
  }

  std::__tree<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::less<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::destroy(v13);
}

void sub_1B30BAF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char **a13)
{
  *(v13 + 168) = v14;
  std::__tree<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::less<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::destroy(a13);
  _Unwind_Resume(a1);
}

void md::StandardLabelMarker::populateRelatedSubTextFromTransitLines(md::StandardLabelMarker *this)
{
  v1 = *(this + 4);
  for (i = *(this + 5); v1 != i; ++v1)
  {
    v4 = geo::codec::VectorTile::transitLineForFeatureID(*(*(this + 39) + 1288), *(*(this + 39) + 1296), *v1);
    v8 = 0;
    __s = 0;
    geo::codec::featureGetLocalizedLabel(v4, &__s, &v8);
    v5 = __s;
    if (!__s || !*__s)
    {
      geo::codec::featureGetNativeLabel(v4, 0, &__s, &v8);
      v5 = __s;
      if (!__s)
      {
        continue;
      }
    }

    v6 = *(this + 25);
    if (v6 >= *(this + 26))
    {
      v7 = std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__emplace_back_slow_path<char const*&>((this + 192), &__s);
    }

    else
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(*(this + 25), v5);
      v7 = (v6 + 32);
      *(this + 25) = v6 + 32;
    }

    *(this + 25) = v7;
  }
}

void *std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__construct_one_at_end[abi:nn200100]<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const&>(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  *(v3 + 24) = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    result = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 32;
  return result;
}

uint64_t std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__emplace_back_slow_path<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const&>(mdm::zone_mallocator *a1, __int128 *a2)
{
  v2 = (*(a1 + 1) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = *(a1 + 2) - *a1;
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

  v24 = a1 + 24;
  if (v7)
  {
    v8 = mdm::zone_mallocator::instance(a1);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(v8, v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[32 * v2];
  v20 = v9;
  v21 = v10;
  v11 = &v9[32 * v7];
  v22 = v10;
  v23 = v11;
  *(v10 + 24) = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
    v10 = v21;
    v13 = v22;
    v11 = v23;
  }

  else
  {
    v12 = *a2;
    *(v10 + 2) = *(a2 + 2);
    *v10 = v12;
    v13 = v10;
  }

  v14 = v13 + 32;
  v15 = *(a1 + 1) - *a1;
  v16 = v10 - v15;
  memcpy(v10 - v15, *a1, v15);
  v17 = *a1;
  *a1 = v16;
  *(a1 + 1) = v14;
  v18 = *(a1 + 2);
  *(a1 + 2) = v11;
  v22 = v17;
  v23 = v18;
  v20 = v17;
  v21 = v17;
  std::__split_buffer<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator> &>::~__split_buffer(&v20);
  return v14;
}

void sub_1B30BB228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__emplace_back_slow_path<VKImageSourceKey * {__strong}&,geo::memory_management_mode const&>(id **a1, void **a2, unsigned __int8 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v4)
  {
    v4 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  v19 = (a1 + 3);
  if (v7)
  {
    v8 = mdm::zone_mallocator::instance(a1);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v8, v7);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[3 * v3];
  *(&v18 + 1) = &v9[3 * v7];
  geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v17, *a2);
  *&v18 = v17 + 24;
  v10 = a1[1];
  v11 = &v17[*a1 - v10];
  std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>,geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(*a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(&v16);
  return v15;
}

void sub_1B30BB368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A381B8;
  a1[1] = v3;
  return a1;
}

uint64_t (***std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>,geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t (***result)(void), uint64_t (***a2)(void), id *a3))(void)
{
  if (result != a2)
  {
    v4 = result;
    v5 = a3;
    v6 = result;
    v7 = a3;
    do
    {
      *v7 = &unk_1F2A381B8;
      v7 += 3;
      a3[1] = 0;
      objc_storeStrong(a3 + 1, v6[1]);
      v8 = v6[1];
      v6[1] = 0;

      v6 += 3;
      v5 += 3;
      a3 = v7;
    }

    while (v6 != a2);
    v9 = v4;
    v10 = v4;
    do
    {
      v11 = *v10;
      v10 += 3;
      result = (*v11)(v4);
      v9 += 3;
      v4 = v10;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 3);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = mdm::zone_mallocator::instance(i);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKImageSourceKey * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v6, v5);
  }

  return a1;
}

char *std::__split_buffer<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator> &>::~__split_buffer(char *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 32;
    std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>((i - 32));
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(v5, v4);
  }

  return a1;
}

void *std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__emplace_back_slow_path<char const*&>(mdm::zone_mallocator *a1, char **a2)
{
  v2 = (*(a1 + 1) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v6 = *(a1 + 2) - *a1;
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

  v20 = a1 + 24;
  if (v7)
  {
    v8 = mdm::zone_mallocator::instance(a1);
    v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(v8, v7);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[32 * v2];
  v18 = v17;
  v19 = &v9[32 * v7];
  std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(v17, *a2);
  v10 = v17 + 32;
  v11 = *(a1 + 1) - *a1;
  v12 = &v17[-v11];
  memcpy(&v17[-v11], *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 1) = v10;
  v14 = *(a1 + 2);
  *(a1 + 2) = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  std::__split_buffer<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator> &>::~__split_buffer(&v16);
  return v10;
}

void sub_1B30BB658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__tree<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::less<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::destroy(char **result)
{
  if (result)
  {
    std::__tree<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::less<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::destroy(*result);
    std::__tree<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::less<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::destroy(result[1]);
    std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>((result + 4));
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,void *>>(v3, result);
  }
}

void std::__tree_node_destructor<geo::allocator_adapter<std::__tree_node<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *result, uint64_t a2)
{
  if (result)
  {
    std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>((a2 + 32));
  }

  if (a2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,void *>>(v3, a2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,void *>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x40uLL, 0x10320406BBCC2ABuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned long long>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x100004000313F17uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void md::RasterOverlayData::~RasterOverlayData(md::RasterOverlayData *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    CGContextRelease(v2);
  }

  if (*this)
  {
    (*(**this + 8))(*this);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__shared_ptr_emplace<md::TransitInterTileMediator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2CCE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MuninRoadLabelPart::debugCompositeClassName@<X0>(_BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v8);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v8, "MuninRoadLabelPart", 18);
  v3 = v8;
  *(&v8 + *(v8 - 24) + 8) = *(&v8 + *(v8 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v10[0].__locale_ + *(v3 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v8, "\n  padding:", 11);
  std::ostream::operator<<();
  if ((v15 & 0x10) != 0)
  {
    v5 = v14;
    if (v14 < v11)
    {
      v14 = v11;
      v5 = v11;
    }

    locale = v10[4].__locale_;
  }

  else
  {
    if ((v15 & 8) == 0)
    {
      v4 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v10[1].__locale_;
    v5 = v10[3].__locale_;
  }

  v4 = v5 - locale;
  if ((v5 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, locale, v4);
  }

LABEL_14:
  a2[v4] = 0;
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(__p);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v16);
}

void sub_1B30BBC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a10 = *MEMORY[0x1E69E54E8];
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a11 = MEMORY[0x1E69E5548] + 16;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  a11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

uint64_t md::MuninRoadLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = **(a1 + 576);
  v50.f64[0] = 0.0;
  result = (*(*v8 + 120))(v8, a2, a3, a4, &v50);
  if (result == 37)
  {
    v10 = 0;
    v11 = 0;
    v12 = v8[3];
    v13 = (v12 + 312);
    v14 = (v12 + 320);
    do
    {
      v15 = v14[v11];
      v16 = v13[v11];
      if (v10)
      {
        break;
      }

      v10 = 1;
      v11 = 1;
    }

    while (v15 >= v16);
    if (v15 < v16)
    {
      return 14;
    }

    v17 = 0;
    v18 = *(a1 + 32);
    do
    {
      v50.f64[v17] = *(a2 + v17 * 8 + 568) - *(v18 + 32 + v17 * 8);
      ++v17;
    }

    while (v17 != 3);
    v19 = gm::Matrix<double,3,1>::normalized<int,void>(&v50);
    v21 = v20;
    v23 = v22;
    v24 = gm::Matrix<double,3,1>::normalized<int,void>(v18 + 32);
    v27 = -(v25 * v23 - v26 * v21);
    v28 = -(v26 * v19 - v24 * v23);
    v29 = -(v24 * v21 - v25 * v19);
    v61[0] = -(v28 * v26 - v29 * v25);
    v61[1] = -(v29 * v24 - v27 * v26);
    v61[2] = -(v27 * v25 - v28 * v24);
    *&v60[16] = *(a1 + 656);
    *v60 = *(a1 + 640);
    *&v30.f64[0] = vdupq_laneq_s64(*&v60[8], 1).u64[0];
    v30.f64[1] = *v60;
    v31.f64[0] = v25;
    v31.f64[1] = v26;
    v32.f64[0] = v26;
    v32.f64[1] = v24;
    v33 = vmlaq_f64(vnegq_f64(vmulq_f64(v30, v31)), v32, *&v60[8]);
    v34 = -(v24 * *&v60[8] - *v60 * v25);
    v58 = v33;
    v59 = v34;
    if (*(a1 + 665) == 2)
    {
      goto LABEL_14;
    }

    if (!*(a1 + 665))
    {
      v35 = 0;
      v36 = 0.0;
      do
      {
        v36 = v36 + v58.f64[v35] * v61[v35];
        ++v35;
      }

      while (v35 != 3);
      if (v36 < 0.0)
      {
LABEL_14:
        for (i = 0; i != 3; ++i)
        {
          v50.f64[i] = -*&v60[i * 8];
        }

        v38 = 0;
        *v60 = v50;
        *&v60[16] = v51.f64[0];
        do
        {
          v50.f64[v38] = -v58.f64[v38];
          ++v38;
        }

        while (v38 != 3);
        v33 = v50;
        v34 = v51.f64[0];
      }
    }

    v39 = 0;
    v62 = *v60;
    v63 = *&v60[16];
    v64 = v24;
    v65 = v25;
    v66 = v26;
    v67 = v33;
    v68 = v34;
    v40 = *(a2 + 752) * *(v18 + 72) * *(v18 + 68);
    do
    {
      *(&v62 + v39) = *(&v62 + v39) * v40;
      v39 += 8;
    }

    while (v39 != 24);
    do
    {
      *(&v62 + v39) = *(&v62 + v39) * v40;
      v39 += 8;
    }

    while (v39 != 48);
    v41 = 0;
    v42 = &v50;
    v43 = &v62;
    do
    {
      v44 = 0;
      f64 = v42->f64;
      do
      {
        *f64 = *(v43 + v44);
        f64 += 4;
        v44 += 24;
      }

      while (v44 != 72);
      ++v41;
      v42 = (v42 + 8);
      v43 = (v43 + 8);
    }

    while (v41 != 3);
    v51.f64[1] = 0.0;
    v53.f64[1] = 0.0;
    v55.f64[1] = 0.0;
    v56 = *(v18 + 32);
    v57.f64[0] = *(v18 + 48);
    v57.f64[1] = 1.0;
    v46 = *(a1 + 632);
    *v46 = v50;
    v46[2] = v52;
    v46[4] = v54;
    v46[3] = v53;
    v46[1] = v51;
    v46[5] = v55;
    v46[7] = v57;
    v46[6] = v56;
    if (*(a1 + 664))
    {
      v47 = 0.0;
      if (*(a1 + 664) != 4)
      {
        goto LABEL_31;
      }

      v48 = -0.5;
    }

    else
    {
      v48 = 0.5;
    }

    v47 = (*v14 - *v13) * v48;
LABEL_31:
    *&v50.f64[0] = LODWORD(v47);
    result = (*(*v8 + 120))(v8, a2, a3, a4, &v50);
    if (result == 37)
    {
      v49 = v8[3];
      *(a1 + 392) = v49[98];
      *(a1 + 396) = v49[99];
      *(a1 + 400) = v49[100];
      *(a1 + 404) = v49[101];
    }
  }

  return result;
}

uint64_t md::MuninRoadLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = **(a1 + 576);
  v18 = 0;
  result = (*(*v6 + 80))(v6, a2, a3, &v18);
  if (result == 37)
  {
    v8 = 0;
    v9 = 0;
    v10 = v6[3];
    v11 = (v10 + 72);
    v12 = (v10 + 80);
    do
    {
      v13 = v12[v9];
      v14 = v11[v9];
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v13 >= v14);
    if (v13 < v14)
    {
      return 14;
    }

    if (*(a1 + 664))
    {
      v15 = 0.0;
      if (*(a1 + 664) != 4)
      {
        goto LABEL_12;
      }

      v16 = -0.5;
    }

    else
    {
      v16 = 0.5;
    }

    v15 = (*v12 - *v11) * v16;
LABEL_12:
    v18 = LODWORD(v15);
    result = (*(*v6 + 80))(v6, a2, a3, &v18);
    if (result == 37)
    {
      v17 = (*(*v6 + 256))(v6);
      *(a1 + 152) = *v17;
      *(a1 + 156) = v17[1];
      *(a1 + 160) = v17[2];
      *(a1 + 164) = v17[3];
      return 37;
    }
  }

  return result;
}

void md::MuninRoadLabelPart::~MuninRoadLabelPart(md::MuninRoadLabelPart *this)
{
  *this = &unk_1F2A2CD50;
  v2 = *(this + 79);
  *(this + 79) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
  v4 = mdm::zone_mallocator::instance(v3);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, this);
}

{
  *this = &unk_1F2A2CD50;
  v2 = *(this + 79);
  *(this + 79) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

uint64_t gdc::ServiceLocator::resolve<md::YFlipPassInjector>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0x15CDDE628588B5E5)
  {
    a1 += 5;
    if (a1 == a2)
    {
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return v3;
}

char *std::vector<ggl::CopyItem,geo::allocator_adapter<ggl::CopyItem,ggl::zone_mallocator>>::__emplace_back_slow_path<ggl::CopyItem const&>(ggl::zone_mallocator *a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((*(a1 + 1) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0xD79435E50D79436 * ((*(a1 + 2) - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((*(a1 + 2) - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((*(a1 + 2) - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v3;
  }

  v31[4] = a1 + 24;
  if (v6)
  {
    v7 = ggl::zone_mallocator::instance(a1);
    v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::CopyItem>(v7, v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[152 * v2];
  v10 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 1) = v10;
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  v13 = *(a2 + 80);
  *(v9 + 4) = *(a2 + 64);
  *(v9 + 5) = v13;
  *(v9 + 2) = v11;
  *(v9 + 3) = v12;
  v14 = *(a2 + 96);
  v15 = *(a2 + 112);
  v16 = *(a2 + 128);
  *(v9 + 18) = *(a2 + 144);
  *(v9 + 7) = v15;
  *(v9 + 8) = v16;
  *(v9 + 6) = v14;
  v17 = *a1;
  v18 = *(a1 + 1);
  v19 = &v9[*a1 - v18];
  if (v18 != *a1)
  {
    v20 = &v9[*a1 - v18];
    do
    {
      v21 = *(v17 + 16);
      *v20 = *v17;
      *(v20 + 1) = v21;
      v22 = *(v17 + 32);
      v23 = *(v17 + 48);
      v24 = *(v17 + 80);
      *(v20 + 4) = *(v17 + 64);
      *(v20 + 5) = v24;
      *(v20 + 2) = v22;
      *(v20 + 3) = v23;
      v25 = *(v17 + 96);
      v26 = *(v17 + 112);
      v27 = *(v17 + 128);
      *(v20 + 18) = *(v17 + 144);
      *(v20 + 7) = v26;
      *(v20 + 8) = v27;
      *(v20 + 6) = v25;
      v17 += 152;
      v20 += 152;
    }

    while (v17 != v18);
    v17 = *a1;
  }

  v28 = v9 + 152;
  *a1 = v19;
  *(a1 + 1) = v9 + 152;
  v29 = *(a1 + 2);
  *(a1 + 2) = &v8[152 * v6];
  v31[2] = v17;
  v31[3] = v29;
  v31[0] = v17;
  v31[1] = v17;
  std::__split_buffer<ggl::CopyItem,geo::allocator_adapter<ggl::CopyItem,ggl::zone_mallocator> &>::~__split_buffer(v31);
  return v28;
}

void ggl::RenderBuffer::RenderBuffer(uint64_t a1, int a2, int a3, int a4, int a5)
{
  ggl::Texture::Texture(a1, "DrawableFailureFallback", 0, 2, 2, a2, a5, 1);
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *v7 = &unk_1F2A341D8;
  *(v7 + 40) = &unk_1F2A341F8;
  *(v7 + 80) = a3;
  *(v7 + 84) = a4;
}

void sub_1B30BC9AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_1,std::allocator<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_1>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_1,std::allocator<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_1>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_1,std::allocator<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A2D358;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_1,std::allocator<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2D358;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_1,std::allocator<md::MapEngineFrameService::makeDrawableReady(geo::handle<void>)::$_1>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2D358;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<ggl::RenderBuffer *,std::shared_ptr<ggl::Texture>::__shared_ptr_default_delete<ggl::Texture,ggl::RenderBuffer>,std::allocator<ggl::RenderBuffer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::RenderBuffer *,std::shared_ptr<ggl::Texture>::__shared_ptr_default_delete<ggl::Texture,ggl::RenderBuffer>,std::allocator<ggl::RenderBuffer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::MapEngineFrameService::presentDrawable(geo::handle<void>)::$_0,std::allocator<md::MapEngineFrameService::presentDrawable(geo::handle<void>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  (*(***(a1 + 8) + 32))(**(a1 + 8));
  v2 = *(a1 + 24);
  v3 = **(a1 + 16);
  v4 = *geo::linear_map<md::FrameCallback,geo::handle<gdc::tf::Taskflow>,std::equal_to<md::FrameCallback>,std::allocator<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>,std::vector<std::pair<md::FrameCallback,geo::handle<gdc::tf::Taskflow>>>>::operator[]((v2 + 96), 2);
  v5 = *(*v3 + 56);

  return v5(v3, v4);
}

__n128 std::__function::__func<md::MapEngineFrameService::presentDrawable(geo::handle<void>)::$_0,std::allocator<md::MapEngineFrameService::presentDrawable(geo::handle<void>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2D3A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::MapEngineFrameService::dispatchAsync(void *a1, unint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = md::MapEngineFrameService::get(a1, a2);
  if (result)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3321888768;
    v10[2] = ___ZN2md21MapEngineFrameService13dispatchAsyncEN3geo6handleIvEENSt3__18functionIFvvEEE_block_invoke;
    v10[3] = &__block_descriptor_80_ea8_48c27_ZTSNSt3__18functionIFvvEEE_e5_v8__0l;
    v10[4] = a1;
    v10[5] = a2;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](&v11, a3);
    v7 = v10;
    v13 = &unk_1F2A2D210;
    v14 = 0;
    v8 = [v7 copy];
    v9 = v14;
    v14 = v8;

    geo::_retain_ptr<void({block_pointer} {__strong})(void),geo::_copy_block_arc<void({block_pointer} {__strong})(void)>,geo::_release_block_arc<void({block_pointer} {__strong})(void)>,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(v12, &v13);
    v12[6] = 0;
    operator new();
  }

  return result;
}

void sub_1B30BCFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v25 - 112);

  *(v25 - 80) = v23;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v24 + 48);
  _Unwind_Resume(a1);
}

uint64_t ___ZN2md21MapEngineFrameService13dispatchAsyncEN3geo6handleIvEENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v4, a1 + 48);
  (*(*v1 + 32))(v1, v2, v4);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v4);
}

void sub_1B30BD0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<void({block_pointer} {__strong})(void),geo::_copy_block_arc<void({block_pointer} {__strong})(void)>,geo::_release_block_arc<void({block_pointer} {__strong})(void)>,geo::_hash_ptr,geo::_equal_ptr>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A2D210;
  a1[1] = 0;
  v3 = MEMORY[0x1B8C62DA0](*(a2 + 8));
  if (v3)
  {
    v4 = v3;
    v5 = [v3 copy];
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1B8C62DA0](v5);
  v7 = a1[1];
  a1[1] = v6;

  return a1;
}

void geo::_retain_ptr<void({block_pointer} {__strong})(void),geo::_copy_block_arc<void({block_pointer} {__strong})(void)>,geo::_release_block_arc<void({block_pointer} {__strong})(void)>,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2D210;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<void({block_pointer} {__strong})(void),geo::_copy_block_arc<void({block_pointer} {__strong})(void)>,geo::_release_block_arc<void({block_pointer} {__strong})(void)>,geo::_hash_ptr,geo::_equal_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2D210;

  return a1;
}

void ___ZN3geo9TaskQueue12barrierAsyncENSt3__18functionIFvvEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = ___ZN3geo9TaskQueue12barrierAsyncENSt3__18functionIFvvEEE_block_invoke_2;
  v5[3] = &__block_descriptor_48_ea8_32c37_ZTSNSt3__110shared_ptrIN3geo4TaskEEE_e5_v8__0l;
  v4 = a1[5];
  v3 = a1[6];
  v5[4] = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_barrier_async(v2, v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void ___ZN3geo9TaskQueue12barrierAsyncENSt3__18functionIFvvEEE_block_invoke_18(uint64_t result)
{
  v1 = atomic_load((*(result + 32) + 32));
  if ((v1 & 1) == 0)
  {
    v3 = *(*(result + 32) + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3);
      atomic_store(1u, (*(result + 32) + 33));
    }

    else
    {
      v4 = std::__throw_bad_function_call[abi:nn200100]();
      __destroy_helper_block_ea8_32c37_ZTSNSt3__110shared_ptrIN3geo4TaskEEE(v4);
    }
  }
}

void __destroy_helper_block_ea8_32c37_ZTSNSt3__110shared_ptrIN3geo4TaskEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c37_ZTSNSt3__110shared_ptrIN3geo4TaskEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c37_ZTSNSt3__110shared_ptrIN3geo4TaskEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_40c37_ZTSNSt3__110shared_ptrIN3geo4TaskEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN3geo9TaskQueue12barrierAsyncENSt3__18functionIFvvEEE_block_invoke_2(uint64_t result)
{
  v1 = atomic_load((*(result + 32) + 32));
  if ((v1 & 1) == 0)
  {
    v3 = *(*(result + 32) + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3);
      atomic_store(1u, (*(result + 32) + 33));
    }

    else
    {
      v4 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__func<geo::TaskQueue::barrierAsync_b(void({block_pointer})(void))::{lambda(void)#1},std::allocator<geo::TaskQueue::barrierAsync_b(void({block_pointer})(void))::{lambda(void)#1}>,void ()(void)>::operator()(v4);
    }
  }
}

void std::__function::__func<geo::TaskQueue::barrierAsync_b(void({block_pointer})(void))::{lambda(void)#1},std::allocator<geo::TaskQueue::barrierAsync_b(void({block_pointer})(void))::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = MEMORY[0x1B8C62DA0](*(a1 + 16));
  v1[2]();
}

void std::__function::__func<geo::TaskQueue::barrierAsync_b(void({block_pointer})(void))::{lambda(void)#1},std::allocator<geo::TaskQueue::barrierAsync_b(void({block_pointer})(void))::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 8) = &unk_1F2A2D210;

  operator delete(a1);
}

void std::__function::__func<geo::TaskQueue::barrierAsync_b(void({block_pointer})(void))::{lambda(void)#1},std::allocator<geo::TaskQueue::barrierAsync_b(void({block_pointer})(void))::{lambda(void)#1}>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A2D230;
  *(a1 + 8) = &unk_1F2A2D210;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<geo::TaskQueue::barrierAsync_b(void({block_pointer})(void))::{lambda(void)#1},std::allocator<geo::TaskQueue::barrierAsync_b(void({block_pointer})(void))::{lambda(void)#1}>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A2D230;
  *(a1 + 8) = &unk_1F2A2D210;

  return a1;
}

void md::MapEngineFrameService::Data::~Data(md::MapEngineFrameService::Data *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](this + 10, 0);
}

uint64_t md::MapEngineFrameService::Data::{unnamed type#2}::~Data(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](a1, 0);
  return a1;
}

void md::MapEngineFrameService::~MapEngineFrameService(md::MapEngineFrameService *this)
{
  md::MapEngineFrameService::~MapEngineFrameService(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2D0F0;
  v2 = *(this + 48);
  if (v2)
  {
    *(this + 49) = v2;
    operator delete(v2);
  }

  v3 = *(this + 45);
  if (v3)
  {
    *(this + 46) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>>>::~__hash_table(this + 40);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::tf::Task)>>>>::~__hash_table(this + 34);
  v30 = (this + 216);
  std::vector<ecs2::Transaction>::__destroy_vector::operator()[abi:nn200100](&v30);
  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    *(this + 15) = v5;
    operator delete(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    *(this + 12) = v6;
    operator delete(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    *(this + 9) = v7;
    operator delete(v7);
  }

  v31 = 0;
  v32 = 0;
  v30 = &v31;
  v9 = (this + 56);
  v8 = *(this + 7);
  if (v8)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v30, v8, this + 7);
      v8 = **v9;
      *v9 = v8;
    }

    while (v8);
    v10 = v32;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 5);
  v12 = *(this + 2);
  v13 = this + 24;
  v14 = v10 == *(this + 4) * v11 || v12 == v13;
  if (!v14)
  {
    v15 = *(this + 5);
    do
    {
      if (v15)
      {
        v16 = 0;
        v17 = *(v12 + 4);
        do
        {
          v18 = v17 + (v16 << 7);
          v19 = v31;
          if (!v31)
          {
            goto LABEL_33;
          }

          v20 = &v31;
          do
          {
            v21 = v19;
            v22 = v20;
            v23 = v19[4];
            if (v23 >= v18)
            {
              v20 = v19;
            }

            v19 = v19[v23 < v18];
          }

          while (v19);
          if (v20 == &v31)
          {
            goto LABEL_33;
          }

          if (v23 < v18)
          {
            v21 = v22;
          }

          if (v18 < v21[4])
          {
LABEL_33:
            v24 = *(v18 + 96);
            if (v24)
            {
              *(v18 + 104) = v24;
              operator delete(v24);
            }

            v25 = *(v18 + 88);
            *(v18 + 88) = 0;
            if (v25)
            {
              (*(*v25 + 8))(v25);
            }

            std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100]((v18 + 80), 0);
            v11 = *(this + 5);
          }

          ++v16;
          v15 = v11;
        }

        while (v16 < v11);
      }

      v26 = *(v12 + 1);
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = *(v12 + 2);
          v14 = *v27 == v12;
          v12 = v27;
        }

        while (!v14);
      }

      v12 = v27;
    }

    while (v27 != v13);
    v12 = *(this + 2);
  }

  if (v12 != v13)
  {
    do
    {
      free(*(v12 + 4));
      v28 = *(v12 + 1);
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
          v29 = *(v12 + 2);
          v14 = *v29 == v12;
          v12 = v29;
        }

        while (!v14);
      }

      v12 = v29;
    }

    while (v29 != v13);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v13;
  *(this + 7) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v31);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 3));
}

void sub_1B30BDBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 24));
  _Unwind_Resume(a1);
}

uint64_t md::MapEngineCallbackGraphService::get(uint64_t a1, unint64_t a2)
{
  std::__shared_mutex_base::lock_shared((a1 + 8));
  v4 = *(a1 + 248);
  if (a2 >= ((*(a1 + 256) - v4) >> 3) || ((v5 = *(v4 + 8 * a2)) != 0 ? (v6 = (v5 ^ a2) >> 32 == 0) : (v6 = 0), !v6 || (v7 = (16 * *(v4 + 8 * a2) + *(a1 + 272)), *(a1 + 280) == v7)))
  {
    std::__shared_mutex_base::unlock_shared((a1 + 8));
    return 0;
  }

  else
  {
    v9 = *v7;
    v8 = v7[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_mutex_base::unlock_shared((a1 + 8));
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    else
    {
      std::__shared_mutex_base::unlock_shared((a1 + 8));
      return *v9;
    }
  }

  return v10;
}

void std::vector<geo::handle<gdc::tf::Taskflow>>::emplace_back<geo::handle<gdc::tf::Taskflow>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::__shared_ptr_pointer<md::TrackedWeakPtr<gdc::tf::Taskflow>::Resource *,std::shared_ptr<md::TrackedWeakPtr<gdc::tf::Taskflow>::Resource>::__shared_ptr_default_delete<md::TrackedWeakPtr<gdc::tf::Taskflow>::Resource,md::TrackedWeakPtr<gdc::tf::Taskflow>::Resource>,std::allocator<md::TrackedWeakPtr<gdc::tf::Taskflow>::Resource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MapEngineCallbackGraphService::~MapEngineCallbackGraphService(md::MapEngineCallbackGraphService *this)
{
  md::MapEngineCallbackGraphService::~MapEngineCallbackGraphService(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2D1B8;
  v2 = *(this + 37);
  if (v2)
  {
    *(this + 38) = v2;
    operator delete(v2);
  }

  v3 = *(this + 34);
  if (v3)
  {
    v4 = *(this + 35);
    v5 = *(this + 34);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 8);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v3);
      v5 = *(this + 34);
    }

    *(this + 35) = v3;
    operator delete(v5);
  }

  v7 = *(this + 31);
  if (v7)
  {
    *(this + 32) = v7;
    operator delete(v7);
  }

  v8 = *(this + 28);
  if (v8)
  {
    *(this + 29) = v8;
    operator delete(v8);
  }

  v31 = 0;
  v32 = 0;
  v30 = &v31;
  v10 = (this + 216);
  v9 = *(this + 27);
  if (v9)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v30, v9, this + 27);
      v9 = **v10;
      *v10 = v9;
    }

    while (v9);
    v11 = v32;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 25);
  v13 = *(this + 22);
  v14 = this + 184;
  v15 = v11 == *(this + 24) * v12 || v13 == v14;
  if (!v15)
  {
    v16 = *(this + 25);
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = *(v13 + 4);
        do
        {
          v19 = (v18 + 88 * v17);
          v20 = v31;
          if (!v31)
          {
            goto LABEL_34;
          }

          v21 = &v31;
          do
          {
            v22 = v20;
            v23 = v21;
            v24 = v20[4];
            if (v24 >= v19)
            {
              v21 = v20;
            }

            v20 = v20[v24 < v19];
          }

          while (v20);
          if (v21 == &v31)
          {
            goto LABEL_34;
          }

          if (v24 < v19)
          {
            v22 = v23;
          }

          if (v19 < v22[4])
          {
LABEL_34:
            std::unique_ptr<geo::Pool<geo::IntrusiveNode<gdc::tf::TaskData>>>::~unique_ptr[abi:nn200100](v19 + 10);
            v25 = v19[7];
            if (v25)
            {
              v19[8] = v25;
              operator delete(v25);
            }

            std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>>>::~__hash_table((v19 + 2));
            v12 = *(this + 25);
          }

          ++v17;
          v16 = v12;
        }

        while (v17 < v12);
      }

      v26 = *(v13 + 1);
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = *(v13 + 2);
          v15 = *v27 == v13;
          v13 = v27;
        }

        while (!v15);
      }

      v13 = v27;
    }

    while (v27 != v14);
    v13 = *(this + 22);
  }

  if (v13 != v14)
  {
    do
    {
      free(*(v13 + 4));
      v28 = *(v13 + 1);
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
          v29 = *(v13 + 2);
          v15 = *v29 == v13;
          v13 = v29;
        }

        while (!v15);
      }

      v13 = v29;
    }

    while (v29 != v14);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 23));
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 22) = v14;
  *(this + 27) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v31);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 23));
  std::condition_variable::~condition_variable((this + 120));
  std::condition_variable::~condition_variable((this + 72));
  std::mutex::~mutex((this + 8));
}

void sub_1B30BE0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 184));
  _Unwind_Resume(a1);
}

void md::OverlayLayerDataSource::createLayerData(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  gdc::Tiled::tileFromLayerDataKey(v8, *(a2 + 16));
  v5 = *(a1 + 616);
  (*(*[v5 gglDevice] + 24))(&v7);

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v6);
}

void sub_1B30BFC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, std::__shared_weak_count *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v68);
  }

  std::mutex::unlock((v69 + 8));
  geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>::~fast_shared_ptr(&a68);
  if (a67 == 1)
  {
    std::mutex::unlock(a66);
  }

  v72 = a65;
  std::vector<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x220]);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v72);
  }

  shared_owners = a22[12].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  std::__tree<std::weak_ptr<md::OverlayLineLabelFeature>,std::owner_less<std::weak_ptr<md::OverlayLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::OverlayLineLabelFeature>,mdm::zone_mallocator>>::destroy(&a22[11].~__shared_weak_count);
  std::__tree<std::weak_ptr<md::PointLabelFeature>,std::owner_less<std::weak_ptr<md::PointLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PointLabelFeature>,mdm::zone_mallocator>>::destroy(a22[9].__shared_weak_owners_);
  std::__tree<std::weak_ptr<md::TransitLineLabelFeature>,std::owner_less<std::weak_ptr<md::TransitLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::TransitLineLabelFeature>,mdm::zone_mallocator>>::destroy(a22[8].__shared_owners_);
  std::__tree<std::weak_ptr<md::ContourLineLabelFeature>,std::owner_less<std::weak_ptr<md::ContourLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::ContourLineLabelFeature>,mdm::zone_mallocator>>::destroy(&a22[7].~__shared_weak_count);
  std::__tree<std::weak_ptr<md::PhysicalLabelFeature>,std::owner_less<std::weak_ptr<md::PhysicalLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::PhysicalLabelFeature>,mdm::zone_mallocator>>::destroy(a22[5].__shared_weak_owners_);
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(a22[4].__shared_owners_);
  std::__tree<std::weak_ptr<md::UniLineLabelFeature>,std::owner_less<std::weak_ptr<md::UniLineLabelFeature>>,geo::allocator_adapter<std::weak_ptr<md::UniLineLabelFeature>,mdm::zone_mallocator>>::destroy(&a22[3].~__shared_weak_count);
  v74 = a22[2].__shared_owners_;
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v74);
  }

  shared_weak_owners = a22[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(a22);
  operator delete(v76);
  std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(&a38);
  *(v70 - 256) = &a41;
  std::vector<md::LabelClientTileOverlay>::__destroy_vector::operator()[abi:nn200100]((v70 - 256));
  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a45);
  }

  if (a47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a47);
  }

  ggl::Loader::~Loader(&a48);
  _Unwind_Resume(a1);
}

void _processOverlays(uint64_t a1, _OWORD *a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, md::MaskingOverlayRenderable **a7, uint64_t *a8, float a9, uint64_t *a10, uint64_t a11, uint64_t *a12, unsigned __int8 a13, void *a14)
{
  v360 = *MEMORY[0x1E69E9840];
  v260 = a3;
  v20 = *(a1 + 4);
  v19 = *(a1 + 8);
  v283 = a1;
  v21 = *(a1 + 1);
  v302[0] = v19 | (v20 << 32);
  v302[1] = v21 | 0x200000000;
  v301 = 0;
  v22 = 0uLL;
  *__p = 0u;
  v23 = *a5;
  v24 = a5[1];
  if (*a5 != v24)
  {
    v25 = 0;
    while (1)
    {
      v14 = *(v23 + 8);
      if ([v14 areResourcesRequired] != a13)
      {
        goto LABEL_50;
      }

      v26 = v14;
      if ([v26 canProvideVectorData])
      {
        v27 = 2;
      }

      else
      {
        v28 = [v26 rasterTileProvider];
        v29 = v28 == 0;

        if (v29)
        {
          v30 = [v26 customTileProvider];
          v31 = v30 == 0;

          if (v31)
          {
            v27 = 1;
          }

          else
          {
            v27 = 4;
          }
        }

        else
        {
          v27 = 3;
        }
      }

      v16 = __p[1];
      if (__p[0] == __p[1] || *(__p[1] - 32) != v27)
      {
        goto LABEL_15;
      }

      v15 = 0xAAAAAAAAAAAAAAALL;
      LOBYTE(v16) = -85;
      if ([v26 blendMode] != v25)
      {
        break;
      }

LABEL_34:
      v25 = [v26 blendMode];
      if ([v26 canProvideVectorData])
      {
        goto LABEL_38;
      }

      v43 = [v26 rasterTileProvider];
      if (v43)
      {

LABEL_38:
        v44 = __p[1];
        v45 = *(__p[1] - 2);
        v46 = *(__p[1] - 1);
        if (v45 >= v46)
        {
          v48 = *(__p[1] - 3);
          v49 = 0xAAAAAAAAAAAAAAABLL * ((v45 - v48) >> 3);
          v50 = v49 + 1;
          if (v49 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v51 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v48) >> 3);
          if (2 * v51 > v50)
          {
            v50 = 2 * v51;
          }

          if (v51 >= 0x555555555555555)
          {
            v52 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v52 = v50;
          }

          *v359 = __p[1] - 24;
          if (v52)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(v52);
          }

          v357[0] = 0;
          v357[1] = (24 * v49);
          v358 = (24 * v49);
          geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((24 * v49), v23);
          v358.i64[0] += 24;
          v53 = *(__p[1] - 3);
          v54 = *(__p[1] - 2);
          v55 = v357[1] + v53 - v54;
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(v53, v54, v55);
          v56 = *(__p[1] - 3);
          *(__p[1] - 3) = v55;
          v357[1] = v56;
          v57 = v44[-1].i64[1];
          v296 = v358;
          v358.i64[0] = v56;
          v44[-1] = v296;
          v358.i64[1] = v57;
          v357[0] = v56;
          std::__split_buffer<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(v357);
          v47 = v296.i64[0];
        }

        else
        {
          v47 = geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v45, v23) + 3;
          *(__p[1] - 2) = v47;
        }

        v44[-1].i64[0] = v47;
        goto LABEL_50;
      }

      if ([v26 canDrawKey:v302])
      {
        goto LABEL_38;
      }

LABEL_50:

      v23 += 24;
      if (v23 == v24)
      {
        LOBYTE(v21) = *(v283 + 1);
        LODWORD(v20) = *(v283 + 4);
        LODWORD(v19) = *(v283 + 8);
        v22 = *__p;
        goto LABEL_52;
      }
    }

    v16 = __p[1];
LABEL_15:
    if (v16 >= v301)
    {
      v33 = __p[0];
      v34 = (v16 - __p[0]) >> 5;
      v35 = v34 + 1;
      if ((v34 + 1) >> 59)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v36 = v301 - __p[0];
      if ((v301 - __p[0]) >> 4 > v35)
      {
        v35 = v36 >> 4;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFE0)
      {
        v37 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        if (!(v37 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v38 = (v16 - __p[0]) >> 5;
      v39 = 32 * v34;
      *v39 = v27;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 8) = 0;
      v40 = (v39 - 32 * v38);
      if (v33 != v16)
      {
        v41 = v33;
        v42 = v40;
        do
        {
          *v42 = *v41;
          *(v42 + 2) = 0;
          *(v42 + 3) = 0;
          *(v42 + 8) = *(v41 + 8);
          *(v42 + 3) = *(v41 + 3);
          *(v41 + 1) = 0;
          *(v41 + 2) = 0;
          *(v41 + 3) = 0;
          v41 += 32;
          v42 += 32;
        }

        while (v41 != v16);
        do
        {
          v357[0] = v33 + 8;
          std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](v357);
          v33 += 32;
        }

        while (v33 != v16);
        v33 = __p[0];
      }

      v32 = (v39 + 32);
      __p[0] = v40;
      __p[1] = (v39 + 32);
      v301 = 0;
      v15 = 0xAAAAAAAAAAAAAAALL;
      LOBYTE(v16) = -85;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v16 = v27;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v32 = (v16 + 32);
      *(v16 + 8) = 0;
      v15 = 0xAAAAAAAAAAAAAAALL;
      LOBYTE(v16) = -85;
    }

    __p[1] = v32;
    goto LABEL_34;
  }

LABEL_52:
  v58 = 1 << v21;
  v59 = 1.0;
  v60 = 1.0 / v58;
  v297 = v60 * v19;
  v298 = v60 * (v58 + ~v20);
  v299[0] = v297 + v60;
  v299[1] = v298 + v60;
  v264 = *(&v22 + 1);
  v61 = v22;
  if (v22 != *(&v22 + 1))
  {
    do
    {
      v267 = v61;
      v62 = *v61;
      if (!a14[3] || std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a14, *v61))
      {
        if (v62 > 2)
        {
          if (v62 == 3)
          {
            v24 = *(v267 + 1);
            v256 = *(v267 + 2);
            v290 = v256;
            while (v24 != v256)
            {
              v257 = *(v24 + 8);
              v258 = [v257 rasterTileProvider];
              if (v258)
              {
                [v258 keyframesCount];
                *&v309 = 0;
                operator new();
              }

              v24 += 24;
              v256 = v290;
            }
          }

          else if (v62 == 4)
          {
            v232 = *(v267 + 1);
            v231 = *(v267 + 2);
            v287 = v231;
            while (v232 != v231)
            {
              v292 = v232;
              v295 = *(v232 + 8);
              [v295 customTileProvider];
              if (objc_claimAutoreleasedReturnValue())
              {
                operator new();
              }

              v232 = v292 + 24;
              v231 = v287;
            }
          }
        }

        else if (v62 == 1)
        {
          v233 = *(v267 + 2);
          v14 = *(v267 + 1);
          if (v233 != v14)
          {
            do
            {
              v234 = v14[1];
              [v234 replaceMapContentInRect];
              v236 = v235;
              v238 = v237;
              v240 = v239;
              v242 = v241;
              if ((GEOMapRectIsNull() & 1) == 0)
              {
                v243 = 0;
                v244 = *(MEMORY[0x1E69A1688] + 16);
                v245 = *(MEMORY[0x1E69A1688] + 24);
                *v357 = v236 / v244;
                *&v357[1] = v59 - (v242 + v238) / v245;
                *v358.i64 = (v240 + v236) / v244;
                *&v358.i64[1] = v59 - v238 / v245;
                v246 = &v297;
                v247 = v357;
                v248 = 1;
                while (*v246 >= *v247 && v299[v243] <= *&v358.i64[v243])
                {
                  v249 = v248;
                  v248 = 0;
                  v247 = &v357[1];
                  v246 = &v298;
                  v243 = 1;
                  if ((v249 & 1) == 0)
                  {

                    goto LABEL_282;
                  }
                }
              }

              v14 += 3;
            }

            while (v14 != v233);
LABEL_282:
            v311[1] = 0;
            v311[0] = 0;
            *&v312 = 0;
            *c = 0u;
            *v349 = 0u;
            LODWORD(v351) = 512;
            *(&v351 + 1) = a9;
            LODWORD(v352) = 0;
            v250 = (*(v283 + 1) | 0x200000000);
            LODWORD(__src[0]) = *(v283 + 8);
            HIDWORD(__src[0]) = *(v283 + 4);
            __src[1] = v250;
            v24 = *(v267 + 1);
            v15 = *(v267 + 2);
            if (v24 != v15)
            {
              v16 = 0;
              do
              {
                v251 = *(v24 + 8);
                if ([v251 canDrawKey:__src])
                {
                  v14 = c[1];
                  if (!c[1])
                  {
                    operator new();
                  }

                  *v359 = 0u;
                  v358 = 0u;
                  *v357 = 0u;
                  CGContextGetBaseCTM();
                  CGContextSaveGState(v14);
                  [v251 drawKey:__src inContext:v14];
                  CGContextRestoreGState(v14);
                  *&v339.a = *v357;
                  *&v339.c = v358;
                  *&v339.tx = *v359;
                  CGContextSetBaseCTM();
                  LODWORD(v14) = [v251 identifier];
                  v252 = v16;
                  v253 = v16 >> 2;
                  if (((v16 >> 2) + 1) >> 62)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  if (v16 >> 2 != -1)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v16 >> 2) + 1);
                  }

                  *(4 * v253) = v14;
                  v16 = 4 * v253 + 4;
                  memcpy(0, 0, v252);
                }

                v24 += 24;
              }

              while (v24 != v15);
              *&v312 = 0;
              v311[1] = v16;
              v311[0] = 0;
              if (v16)
              {
                generateTexture(&v339, &v349[1], v260);
                __src[0] = 0;
                v254 = *(*(v267 + 1) + 8);
                v255 = v254;
                if (v254)
                {
                  objc_msgSend_rasterStyle(v254);
                }

                else
                {
                  v329.b = 0.0;
                  v329.a = 0.0;
                }

                operator new();
              }
            }

            md::RasterOverlayData::~RasterOverlayData(v349);
          }
        }

        else if (v62 == 2)
        {
          v64 = *(v267 + 1);
          v63 = *(v267 + 2);
          v265 = v63;
          while (v64 != v63)
          {
            v269 = *(v64 + 8);
            v65 = [v269 vectorData];
            if (v65 && ([v269 canDrawKey:v302] & 1) != 0)
            {
              objc_opt_class();
              v262 = v65;
              v263 = v64;
              if (objc_opt_isKindOfClass())
              {
                v66 = v65;
                [v269 identifier];
                v268 = v66;
                v349[0] = 0;
                v349[1] = v349;
                c[0] = 0x5812000000;
                c[1] = __Block_byref_object_copy__28640;
                v351 = __Block_byref_object_dispose__28641;
                v352 = "";
                memset(v353, 0, sizeof(v353));
                v354 = 1065353216;
                v322 = 0;
                v321 = 0;
                v323 = 0;
                v319 = 0;
                v318 = 0;
                v320 = 0;
                v316 = 0;
                v315 = 0;
                v317 = 0;
                v313 = 0u;
                v314 = 0u;
                *v311 = 0u;
                v312 = 0u;
                v67 = [v268 polylines];
                v68 = [v67 countByEnumeratingWithState:v311 objects:v357 count:16];
                if (v68)
                {
                  v270 = *v312;
                  v274 = v67;
                  do
                  {
                    v271 = v68;
                    for (i = 0; i != v271; ++i)
                    {
                      if (*v312 != v270)
                      {
                        objc_enumerationMutation(v67);
                      }

                      v69 = *(v311[1] + i);
                      if (v69)
                      {
                        objc_msgSend_simplifiedGeometryAtZoomLevel_(*(v311[1] + i));
                      }

                      else
                      {
                        v309 = 0u;
                        v310 = 0u;
                      }

                      LODWORD(v14) = [v69 worldIndexes];
                      v273 = v69;
                      while (v14 < ([v69 worldIndexes] >> 8))
                      {
                        v71 = v309;
                        if (*(&v309 + 1))
                        {
                          atomic_fetch_add_explicit((*(&v309 + 1) + 8), 1uLL, memory_order_relaxed);
                        }

                        v72 = v310;
                        if (*(&v310 + 1))
                        {
                          atomic_fetch_add_explicit((*(&v310 + 1) + 8), 1uLL, memory_order_relaxed);
                        }

                        v73 = 1 << *(v283 + 1);
                        v74 = v59 / v73;
                        v75 = v74 * (v73 + ~*(v283 + 4));
                        *&v76 = v74 * *(v283 + 8) + v74;
                        *__src = v74 * *(v283 + 8);
                        __src[1] = *&v75;
                        v304 = v76;
                        v305 = v75 + v74;
                        v327 = 0;
                        v326 = 0;
                        v328 = 0;
                        if (v72)
                        {
                          v77 = *(v72 + 8);
                          v78 = v77 == *v72;
                          v282 = v77 != *v72;
                          if (v77 == *v72)
                          {
                            v79 = 0;
                          }

                          else
                          {
                            v79 = &v318;
                          }

                          v80 = &v326;
                          if (v78)
                          {
                            v80 = 0;
                          }

                          v279 = v80;
                          v280 = v79;
                        }

                        else
                        {
                          v279 = 0;
                          v280 = 0;
                          v282 = 0;
                        }

                        v81 = *v71;
                        v82 = *(v71 + 8);
                        if (*v71 != v82)
                        {
                          v83 = 0.0;
                          v84 = 0.0;
                          v85 = *v71;
                          v86 = 0.0;
                          do
                          {
                            v87 = v85[1];
                            v88 = *v85 - v14;
                            if (v85 != v81)
                            {
                              v83 = sqrt((v88 - v84) * (v88 - v84) + (v87 - v86) * (v87 - v86)) + v83;
                            }

                            v85 += 2;
                            v84 = v88;
                            v86 = v87;
                          }

                          while (v85 != v82);
                          v281 = v14;
                          v276 = v14;
                          v65 = 0;
                          v89 = 0;
                          LODWORD(v24) = 0;
                          image = 0;
                          v90 = 0.0;
                          v288 = 0.0;
                          v286 = 0.0;
                          v91 = 1;
                          v285 = 0.0;
                          v92 = 0.0;
                          v93 = 0.0;
                          v70.f64[0] = 0.0;
                          v289 = v70;
                          v94 = 0.0;
                          v95 = *v71;
                          v275 = v83;
                          v278 = v59 / v83;
                          do
                          {
                            v96 = *v95;
                            v97 = v95[1];
                            v293 = 0.0;
                            if (v282)
                            {
                              if (v89 >= ((*(v72 + 8) - *v72) >> 3))
                              {
                                std::__throw_bad_array_new_length[abi:nn200100]();
                              }

                              v293 = *(*v72 + 8 * v89);
                            }

                            v15 = 0;
                            v98 = v96 - v281;
                            v99 = __src;
                            v100 = 1;
                            v101 = v96 - v281;
                            while (v101 >= *v99)
                            {
                              v102 = v100;
                              if (v101 >= *(&v304 + v15))
                              {
                                break;
                              }

                              v100 = 0;
                              v15 = 1;
                              v101 = v95[1];
                              v99 = &__src[1];
                              if ((v102 & 1) == 0)
                              {
                                goto LABEL_101;
                              }
                            }

                            v103 = 1 << *(v283 + 1);
                            v104 = -1.0 / v103;
                            v105 = (v98 + v104 * *(v283 + 8)) * v103;
                            v106 = (v97 + v104 * (v103 + ~*(v283 + 4))) * v103;
                            v15 = (fabsf(v105 + -1.0) <= 0.00000011921 && v106 > 0.0 && v106 <= 1.0) | (fabsf(v106 + -1.0) <= 0.00000011921 && v105 > 0.0 && v105 <= 1.0);
LABEL_101:
                            if (v95 != v81)
                            {
                              v355[0] = *&v92;
                              v355[1] = *&v93;
                              v356.f64[0] = v98 - v92;
                              v356.f64[1] = v97 - v93;
                              v325 = 0.0;
                              v324 = 0.0;
                              if ((v24 & v15 & 1) != 0 || !gm::Ray<double,2>::segmentIntersectsBox(v355, __src, &v325, &v324, 1.0e-10))
                              {
                                goto LABEL_128;
                              }

                              if (v325 > 0.0 && v325 < 1.0)
                              {
                                v107 = v91;
                                v108 = 1 << *(v283 + 1);
                                v109.i64[0] = *(v283 + 8);
                                v109.i64[1] = v108 + ~*(v283 + 4);
                                v289 = vmlaq_n_f64(*v355, v356, v325);
                                v110 = vcvt_f32_f64(vmulq_n_f64(vmlsq_lane_f64(v289, vcvtq_f64_s64(v109), 1.0 / v108, 0), v108));
                                if (((v65 >> 3) + 1) >> 61)
                                {
                                  goto LABEL_308;
                                }

                                if (v65 >> 3 != -1)
                                {
                                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v65 >> 3) + 1);
                                }

                                *(8 * (v65 >> 3)) = v110;
                                if (v65)
                                {
                                  v111 = 0;
                                  v112 = 0;
                                  do
                                  {
                                    v113 = *v111++;
                                    *v112++ = v113;
                                  }

                                  while (v111 != v65);
                                }

                                v114 = 8 * (v65 >> 3);
                                v115 = v90 + v325 * (v293 - v90);
                                __powidf2();
                                *&v116 = v116 * 0.0000000249532021;
                                v117 = v115 * *&v116;
                                v118 = v327;
                                if (v327 >= v328)
                                {
                                  v121 = v326;
                                  v122 = v327 - v326;
                                  v123 = (v327 - v326) >> 2;
                                  v124 = v123 + 1;
                                  if ((v123 + 1) >> 62)
                                  {
                                    goto LABEL_307;
                                  }

                                  v125 = v328 - v326;
                                  if ((v328 - v326) >> 1 > v124)
                                  {
                                    v124 = v125 >> 1;
                                  }

                                  if (v125 >= 0x7FFFFFFFFFFFFFFCLL)
                                  {
                                    v126 = 0x3FFFFFFFFFFFFFFFLL;
                                  }

                                  else
                                  {
                                    v126 = v124;
                                  }

                                  if (v126)
                                  {
                                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v126);
                                  }

                                  LOBYTE(v16) = 0;
                                  v127 = (4 * v123);
                                  v128 = v117;
                                  *v127 = v128;
                                  v120 = (v127 + 1);
                                  memcpy(0, v121, v122);
                                  v326 = 0;
                                  v328 = 0;
                                  if (v121)
                                  {
                                    operator delete(v121);
                                  }
                                }

                                else
                                {
                                  v119 = v117;
                                  *v327 = v119;
                                  v120 = (v118 + 4);
                                }

                                v65 = v114 + 8;
                                v327 = v120;
                                v94 = v289.f64[1];
                                v285 = sqrt((v289.f64[0] - v92) * (v289.f64[0] - v92) + (v289.f64[1] - v93) * (v289.f64[1] - v93)) + v286;
                                v288 = 0.0;
                                v91 = v107;
                              }

                              if (v324 <= 0.0 || v324 >= 1.0)
                              {
LABEL_128:
                                v133 = v94;
                                v134 = v289;
                              }

                              else
                              {
                                v129 = v91;
                                v130 = 1 << *(v283 + 1);
                                v131.i64[0] = *(v283 + 8);
                                v131.i64[1] = v130 + ~*(v283 + 4);
                                v277 = vmlaq_n_f64(*v355, v356, v324);
                                v132 = vcvt_f32_f64(vmulq_n_f64(vmlsq_lane_f64(v277, vcvtq_f64_s64(v131), 1.0 / v130, 0), v130));
                                if (((v65 >> 3) + 1) >> 61)
                                {
                                  goto LABEL_308;
                                }

                                if (v65 >> 3 != -1)
                                {
                                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v65 >> 3) + 1);
                                }

                                *(8 * (v65 >> 3)) = v132;
                                if (v65)
                                {
                                  v162 = 0;
                                  v163 = 0;
                                  do
                                  {
                                    v164 = *v162++;
                                    *v163++ = v164;
                                  }

                                  while (v162 != v65);
                                }

                                v165 = 8 * (v65 >> 3);
                                v166 = v90 + v324 * (v293 - v90);
                                __powidf2();
                                *&v167 = v167 * 0.0000000249532021;
                                v168 = v166 * *&v167;
                                v169 = v327;
                                if (v327 >= v328)
                                {
                                  v172 = v326;
                                  v173 = v327 - v326;
                                  v174 = (v327 - v326) >> 2;
                                  v175 = v174 + 1;
                                  if ((v174 + 1) >> 62)
                                  {
LABEL_307:
                                    std::__throw_bad_array_new_length[abi:nn200100]();
                                  }

                                  v176 = v328 - v326;
                                  if ((v328 - v326) >> 1 > v175)
                                  {
                                    v175 = v176 >> 1;
                                  }

                                  if (v176 >= 0x7FFFFFFFFFFFFFFCLL)
                                  {
                                    v177 = 0x3FFFFFFFFFFFFFFFLL;
                                  }

                                  else
                                  {
                                    v177 = v175;
                                  }

                                  if (v177)
                                  {
                                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v177);
                                  }

                                  LOBYTE(v16) = 0;
                                  v178 = (4 * v174);
                                  v179 = v168;
                                  *v178 = v179;
                                  v171 = (v178 + 1);
                                  memcpy(0, v172, v173);
                                  v326 = 0;
                                  v328 = 0;
                                  if (v172)
                                  {
                                    operator delete(v172);
                                  }
                                }

                                else
                                {
                                  v170 = v168;
                                  *v327 = v170;
                                  v171 = (v169 + 4);
                                }

                                v133 = v277.f64[1];
                                v327 = v171;
                                v180 = (v165 + 8);
                                v65 = 0;
                                PolylineOverlayRibbonBuilder::finalizePolylineBatch(0, v180, v279, &v321, v280, &v315, v129 & 1, image & 1, v285 * v278, (sqrt((v277.f64[0] - v289.f64[0]) * (v277.f64[0] - v289.f64[0]) + (v277.f64[1] - v94) * (v277.f64[1] - v94)) + v288) * v278);
                                v91 = 0;
                                v327 = v326;
                                v288 = 0.0;
                                v134 = v277;
                              }

                              v94 = v133;
                              v289 = v134;
                            }

                            if (!(v15 & 1 | ((v24 & 1) == 0)) && v65)
                            {
                              PolylineOverlayRibbonBuilder::finalizePolylineBatch(0, v65, v279, &v321, v280, &v315, v91 & 1, image & 1, v285 * v278, v288 * v278);
                              v91 = 0;
                              v327 = v326;
                              v288 = 0.0;
                              v65 = 0;
                            }

                            if (v15)
                            {
                              v135 = v91;
                              v136 = *(v283 + 1);
                              v137 = (1 << v136);
                              v138 = (v98 + -1.0 / v137 * *(v283 + 8)) * v137;
                              v139 = (v97 + -1.0 / v137 * ((1 << v136) + ~*(v283 + 4))) * v137;
                              __powidf2();
                              v141 = v140;
                              v143.f64[1] = v289.f64[1];
                              v143.f64[0] = sqrt((v97 - v94) * (v97 - v94) + (v98 - v289.f64[0]) * (v98 - v289.f64[0]));
                              v142 = v288;
                              v143.f64[0] = v288 + v143.f64[0];
                              v144 = v285;
                              if (!v65)
                              {
                                v144 = v286;
                              }

                              v285 = v144;
                              if (v65)
                              {
                                v142 = v143.f64[0];
                              }

                              v145 = (v65 >> 3) + 1;
                              if (v145 >> 61)
                              {
LABEL_308:
                                std::__throw_bad_array_new_length[abi:nn200100]();
                              }

                              if (v65 >> 3 != -1)
                              {
                                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v145);
                              }

                              v146 = (8 * (v65 >> 3));
                              *v146 = v138;
                              v146[1] = v139;
                              if (v65)
                              {
                                v147 = 0;
                                v148 = 0;
                                do
                                {
                                  v149 = *v147++;
                                  *v148++ = v149;
                                }

                                while (v147 != v65);
                              }

                              v150 = 8 * (v65 >> 3);
                              v151 = v141 * 0.0000000249532021;
                              v152 = v293 * v151;
                              v153 = v327;
                              v288 = v142;
                              if (v327 >= v328)
                              {
                                v155 = v326;
                                v156 = v327 - v326;
                                v157 = (v327 - v326) >> 2;
                                v158 = v157 + 1;
                                if ((v157 + 1) >> 62)
                                {
                                  goto LABEL_307;
                                }

                                v159 = v328 - v326;
                                if ((v328 - v326) >> 1 > v158)
                                {
                                  v158 = v159 >> 1;
                                }

                                if (v159 >= 0x7FFFFFFFFFFFFFFCLL)
                                {
                                  v160 = 0x3FFFFFFFFFFFFFFFLL;
                                }

                                else
                                {
                                  v160 = v158;
                                }

                                if (v160)
                                {
                                  std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v160);
                                }

                                LOBYTE(v16) = 0;
                                v161 = (4 * v157);
                                *v161 = v152;
                                v154 = (v161 + 1);
                                memcpy(0, v155, v156);
                                v326 = 0;
                                v328 = 0;
                                if (v155)
                                {
                                  operator delete(v155);
                                }
                              }

                              else
                              {
                                *v327 = v152;
                                v154 = (v153 + 4);
                              }

                              v65 = v150 + 8;
                              v327 = v154;
                              v81 = *v71;
                              image |= v95 == (*(v71 + 8) - 16);
                              v94 = v97;
                              v143.f64[0] = v98;
                              v289 = v143;
                              v91 = v135;
                            }

                            else
                            {
                              v81 = *v71;
                              v91 = (v95 != *v71) & v91;
                            }

                            if (v95 != v81)
                            {
                              v286 = sqrt((v98 - v92) * (v98 - v92) + (v97 - v93) * (v97 - v93)) + v286;
                            }

                            v95 += 2;
                            ++v89;
                            v90 = v293;
                            LODWORD(v24) = v15;
                            v92 = v98;
                            v93 = v97;
                          }

                          while (v95 != *(v71 + 8));
                          if (v65)
                          {
                            PolylineOverlayRibbonBuilder::finalizePolylineBatch(0, v65, v279, &v321, v280, &v315, v91 & 1, image & 1, v285 / v275, v288 / v275);
                          }

                          v59 = 1.0;
                          v69 = v273;
                          LODWORD(v14) = v276;
                        }

                        if (v326)
                        {
                          operator delete(v326);
                        }

                        if (*(&v72 + 1))
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v72 + 1));
                        }

                        v67 = v274;
                        if (*(&v71 + 1))
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v71 + 1));
                        }

                        LODWORD(v14) = v14 + 1;
                      }

                      if (*(&v310 + 1))
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v310 + 1));
                      }

                      if (*(&v309 + 1))
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v309 + 1));
                      }
                    }

                    v68 = [v67 countByEnumeratingWithState:v311 objects:v357 count:16];
                  }

                  while (v68);
                }

                v294 = v318;
                if (v319 == v318)
                {
                  v181 = 0;
                }

                else
                {
                  LOBYTE(v24) = *(v283 + 1);
                  LODWORD(v65) = *(v283 + 4);
                  LODWORD(v14) = *(v283 + 8);
                  v181 = *v283;
                  v15 = *(v283 + 16);
                  LOBYTE(v16) = *(v283 + 24);
                }

                v291 = v319;
                objc_msgSend_style(v268);
                v210 = __src[0];
                os_unfair_lock_lock(__src[0] + 49);
                os_unfair_lock_unlock(v210 + 49);
                v212 = *&v210[42]._os_unfair_lock_opaque;
                v211 = *&v210[44]._os_unfair_lock_opaque;
                if (__src[1])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](__src[1]);
                }

                v213 = v315;
                v214 = v316;
                if (v211 == v212)
                {
                  v217 = v315;
                  if (v315 != v316)
                  {
                    do
                    {
                      if (v319 == v318)
                      {
                        v218 = 0;
                      }

                      else
                      {
                        v218 = v318 + 4 * *v217;
                      }

                      PolylineOverlayRibbonBuilder::addPolylineRibbonTo(v349[1] + 12, *(v217 + 10), v268, *(v217 + 1), v321 + 8 * *v217, v218, v217[16], v217[17], *(v217 + 3), *(v217 + 4));
                      v217 += 48;
                    }

                    while (v217 != v214);
                  }

                  v64 = v263;
                  if (*(v349[1] + 9))
                  {
                    __src[0] = 0;
                    __src[1] = __src;
                    v304 = 0x3812000000;
                    v305 = COERCE_DOUBLE(__Block_byref_object_copy__75);
                    v306 = __Block_byref_object_dispose__76;
                    v307 = "";
                    v308 = 0;
                    *&v329.a = MEMORY[0x1E69E9820];
                    *&v329.b = 3321888768;
                    *&v329.c = ___ZN28PolylineOverlayRibbonBuilder11buildRibbonERKN3geo8QuadTileEP28VKVectorOverlayPolylineGroupRN3ggl6LoaderERNSt3__14listIN2md15OverlayTileData19OverlayTileResourceENS9_9allocatorISD_EEEEjRKNS9_10shared_ptrINS6_17ConstantDataTypedINS6_4Tile4ViewEEEEERKNSI_INSJ_INSK_9TransformEEEEE_block_invoke_78;
                    *&v329.d = &unk_1F2A2D510;
                    *&v329.tx = __src;
                    *&v329.ty = v349;
                    v330 = a8;
                    v331 = a10;
                    v332 = 0;
                    v338 = 0;
                    if (v291 != v294)
                    {
                      v333 = v24;
                      v334 = v65;
                      v335 = v14;
                      v332 = v181;
                      v336 = v15;
                      v337 = v16;
                      v338 = 1;
                    }

                    v356.f64[1] = 0.0;
                    v355[0] = &unk_1F2A59B50;
                    v355[1] = MEMORY[0x1B8C62DA0](&v329);
                    *&v356.f64[1] = v355;
                    v309 = 0uLL;
                    ggl::Loader::performWithAccessor(*a4);
                    if (*(&v309 + 1))
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v309 + 1));
                    }

                    std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](v355);
                    if (v291 == v294)
                    {
                      v230 = *(__src[1] + 6);
                      if (v230)
                      {
                        if (*(v230 + 40) != *(v230 + 32))
                        {
                          *&v309 = 0;
                          operator new();
                        }
                      }
                    }

                    v355[1] = 0;
                    v355[0] = 0;
                    v356.f64[0] = 0.0;
                    operator new();
                  }
                }

                else
                {
                  v215 = v315;
                  if (v315 != v316)
                  {
                    do
                    {
                      if (v319 == v318)
                      {
                        v216 = 0;
                      }

                      else
                      {
                        v216 = v318 + 4 * *v215;
                      }

                      PolylineOverlayRibbonBuilder::addPolylineRibbonTo(v349[1] + 12, *(v215 + 10), v268, *(v215 + 1), v321 + 8 * *v215, v216, v215[16], v215[17], *(v215 + 3), *(v215 + 4));
                      v215 += 48;
                    }

                    while (v215 != v214);
                  }

                  v64 = v263;
                  if (*(v349[1] + 9))
                  {
                    __src[0] = 0;
                    __src[1] = __src;
                    v304 = 0x3812000000;
                    v305 = COERCE_DOUBLE(__Block_byref_object_copy__71);
                    v306 = __Block_byref_object_dispose__72;
                    v307 = "";
                    v308 = 0;
                    *&v339.a = MEMORY[0x1E69E9820];
                    *&v339.b = 3321888768;
                    *&v339.c = ___ZN28PolylineOverlayRibbonBuilder11buildRibbonERKN3geo8QuadTileEP28VKVectorOverlayPolylineGroupRN3ggl6LoaderERNSt3__14listIN2md15OverlayTileData19OverlayTileResourceENS9_9allocatorISD_EEEEjRKNS9_10shared_ptrINS6_17ConstantDataTypedINS6_4Tile4ViewEEEEERKNSI_INSJ_INSK_9TransformEEEEE_block_invoke;
                    *&v339.d = &unk_1F2A2D510;
                    *&v339.tx = __src;
                    *&v339.ty = v349;
                    v340 = a8;
                    v341 = a10;
                    v342 = 0;
                    v348 = 0;
                    if (v291 != v294)
                    {
                      v343 = v24;
                      v344 = v65;
                      v345 = v14;
                      v342 = v181;
                      v346 = v15;
                      v347 = v16;
                      v348 = 1;
                    }

                    v356.f64[1] = 0.0;
                    v355[0] = &unk_1F2A59B50;
                    v355[1] = MEMORY[0x1B8C62DA0](&v339);
                    *&v356.f64[1] = v355;
                    v309 = 0uLL;
                    ggl::Loader::performWithAccessor(*a4);
                    if (*(&v309 + 1))
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v309 + 1));
                    }

                    std::__function::__value_func<void ()(ggl::ResourceAccessor *)>::~__value_func[abi:nn200100](v355);
                    v355[1] = 0;
                    v355[0] = 0;
                    v356.f64[0] = 0.0;
                    operator new();
                  }
                }

                if (v213)
                {
                  operator delete(v213);
                }

                v65 = v262;
                if (v318)
                {
                  v319 = v318;
                  operator delete(v318);
                }

                if (v321)
                {
                  v322 = v321;
                  operator delete(v321);
                }

                _Block_object_dispose(v349, 8);
                std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(v353);
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v182 = v65;
                  v183 = 1 << *(v283 + 1);
                  v184 = v59 / v183;
                  v185 = v184 * (v183 + ~*(v283 + 4));
                  v186 = v184 * *(v283 + 8) + v184;
                  v339.a = v184 * *(v283 + 8);
                  v339.b = v185;
                  v339.c = v186;
                  v339.d = v185 + v184;
                  [v182 _bounds];
                  v187 = 0;
                  v357[0] = v188;
                  v357[1] = v189;
                  p_b = &v339;
                  v191 = v357;
                  v192 = 1;
                  v358.i64[0] = v193;
                  v358.i64[1] = v194;
                  while (1)
                  {
                    v195 = v192;
                    if (*(&v339.c + v187) <= *v191 || p_b->a >= *&v358.i64[v187])
                    {
                      break;
                    }

                    v192 = 0;
                    v191 = &v357[1];
                    p_b = &v339.b;
                    v187 = 1;
                    if ((v195 & 1) == 0)
                    {
                      operator new();
                    }
                  }

                  [v182 _bounds];
                  v197 = v196;
                  [v182 _bounds];
                  v198 = 0;
                  v199 = 0;
                  LODWORD(v14) = vcvtmd_s64_f64(v197);
                  v349[0] = v200;
                  v349[1] = v201;
                  v202 = v349;
                  c[0] = v203;
                  c[1] = v204;
                  do
                  {
                    v205 = c[v199];
                    v206 = *v202;
                    if (v198)
                    {
                      break;
                    }

                    v198 = 1;
                    v202 = &v349[1];
                    v199 = 1;
                  }

                  while (*&v205 >= v206);
                  if (v14 >= 0)
                  {
                    v207 = -1;
                  }

                  else
                  {
                    v207 = 1;
                  }

                  if (*&v205 >= v206)
                  {
                    v219 = 0;
                    v220 = 0;
                    v221 = v207;
                    *v357 = *v349;
                    v358 = *c;
                    v222 = v357;
                    do
                    {
                      v223 = *&v358.i64[v220];
                      v224 = *v222;
                      if (v219)
                      {
                        break;
                      }

                      v219 = 1;
                      v222 = &v357[1];
                      v220 = 1;
                    }

                    while (v223 >= v224);
                    v209 = *v357;
                    v208 = v358;
                    if (v223 >= v224)
                    {
                      *v357 = *v357 - v221;
                      *v358.i64 = *v358.i64 - v221;
                      v209.i64[0] = v357[0];
                      v208.i64[0] = v358.i64[0];
                    }
                  }

                  else
                  {
                    v208 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
                    v209 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
                  }

                  v225 = 0;
                  *&v329.a = v209;
                  *&v329.c = v208;
                  v226 = &v339;
                  v227 = &v329;
                  v228 = 1;
                  while (1)
                  {
                    v229 = v228;
                    if (*(&v339.c + v225) <= v227->a || v226->a >= *(&v329.c + v225))
                    {
                      break;
                    }

                    v228 = 0;
                    v227 = &v329.b;
                    v226 = &v339.b;
                    v225 = 1;
                    if ((v229 & 1) == 0)
                    {
                      operator new();
                    }
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                  {
                    v309 = 0uLL;
                    [v269 identifier];
                    v311[1] = 0;
                    v311[0] = 0;
                    *&v312 = 0;
                    __src[1] = 0;
                    __src[0] = 0;
                    v304 = 0;
                    [v269 identifier];
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
                  }
                }
              }
            }

            v64 += 24;
            v63 = v265;
          }
        }
      }

      v61 = v267 + 32;
    }

    while (v267 + 32 != v264);
  }

  std::vector<_processOverlays(geo::QuadTile const&,unsigned int,float,CGSize const&,VKSharedResources const*,ggl::Loader &,std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>> const&,std::list<md::OverlayTileData::OverlayTileResource> &,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::vector<md::LabelClientTileOverlay> *,BOOL,std::unordered_set<md::OverlayTileDataType> const&)::OverlaysBucket,std::allocator<_processOverlays(geo::QuadTile const&,unsigned int,float,CGSize const&,VKSharedResources const*,ggl::Loader &,std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>> const&,std::list<md::OverlayTileData::OverlayTileResource> &,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::vector<md::LabelClientTileOverlay> *,BOOL,std::unordered_set<md::OverlayTileDataType> const&)::OverlaysBucket>>::~vector[abi:nn200100](__p);
}

void sub_1B30C47D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, void *a42)
{
  std::unique_ptr<std::vector<md::PolylineOverlayRenderable>>::reset[abi:nn200100](&STACK[0x340], 0);
  _Block_object_dispose(&STACK[0x300], 8);
  v43 = STACK[0x330];
  STACK[0x330] = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  if (STACK[0x3A0])
  {
    operator delete(STACK[0x3A0]);
  }

  v44 = STACK[0x3B8];
  if (STACK[0x3B8])
  {
    STACK[0x3C0] = v44;
    operator delete(v44);
  }

  v45 = STACK[0x3D0];
  if (STACK[0x3D0])
  {
    STACK[0x3D8] = v45;
    operator delete(v45);
  }

  _Block_object_dispose(&STACK[0x4F0], 8);
  std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::~__hash_table(&STACK[0x520]);

  std::vector<_processOverlays(geo::QuadTile const&,unsigned int,float,CGSize const&,VKSharedResources const*,ggl::Loader &,std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>> const&,std::list<md::OverlayTileData::OverlayTileResource> &,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::vector<md::LabelClientTileOverlay> *,BOOL,std::unordered_set<md::OverlayTileDataType> const&)::OverlaysBucket,std::allocator<_processOverlays(geo::QuadTile const&,unsigned int,float,CGSize const&,VKSharedResources const*,ggl::Loader &,std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>> const&,std::list<md::OverlayTileData::OverlayTileResource> &,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::vector<md::LabelClientTileOverlay> *,BOOL,std::unordered_set<md::OverlayTileDataType> const&)::OverlaysBucket>>::~vector[abi:nn200100](&STACK[0x2D0]);
  _Unwind_Resume(a1);
}

void std::vector<md::LabelClientTileOverlay>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 56;
        std::__destroy_at[abi:nn200100]<md::LabelClientTileOverlay,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<md::LabelClientTileOverlay,0>(uint64_t a1)
{
  v3 = (a1 + 32);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_emplace<md::OverlayTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2D768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelClientTile>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2D730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

char **std::vector<_processOverlays(geo::QuadTile const&,unsigned int,float,CGSize const&,VKSharedResources const*,ggl::Loader &,std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>> const&,std::list<md::OverlayTileData::OverlayTileResource> &,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::vector<md::LabelClientTileOverlay> *,BOOL,std::unordered_set<md::OverlayTileDataType> const&)::OverlaysBucket,std::allocator<_processOverlays(geo::QuadTile const&,unsigned int,float,CGSize const&,VKSharedResources const*,ggl::Loader &,std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>> const&,std::list<md::OverlayTileData::OverlayTileResource> &,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::vector<md::LabelClientTileOverlay> *,BOOL,std::unordered_set<md::OverlayTileDataType> const&)::OverlaysBucket>>::~vector[abi:nn200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 32;
        v7 = (v3 - 24);
        std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v7);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void generateTexture(void *a1, uint64_t *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *a1 = 0;
  a1[1] = 0;
  if (*a2)
  {
    LODWORD(v8) = 1;
    LODWORD(v6) = 1;
    std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,0>(&v7, &v8, &v6);
  }
}

void sub_1B30C5448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<md::PolygonOverlayRenderable>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<md::PolygonOverlayRenderable>::~unique_ptr[abi:nn200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

md::PolygonOverlayRenderable **std::unique_ptr<md::PolygonOverlayRenderable>::~unique_ptr[abi:nn200100](md::PolygonOverlayRenderable **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    md::PolygonOverlayRenderable::~PolygonOverlayRenderable(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

float std::vector<gm::Matrix<float,2,1>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<gm::Matrix<float,2,1> const*>,std::__wrap_iter<gm::Matrix<float,2,1> const*>>(uint64_t *a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = a3;
    v6 = a2;
    v8 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v8) >> 3)
    {
      v15 = (v8 - a2) >> 3;
      if (v15 >= a5)
      {
        v18 = &a2[8 * a5];
        v19 = (v8 - 8 * a5);
        v20 = a1[1];
        while (v19 < v8)
        {
          v21 = *v19++;
          *v20++ = v21;
        }

        a1[1] = v20;
        if (v8 != v18)
        {
          v22 = &v18[-v8];
          v23 = (v8 - 4);
          v24 = &v23[-2 * a5];
          do
          {
            *(v23 - 1) = *(v24 - 1);
            v25 = *v24;
            v24 -= 2;
            *v23 = v25;
            v23 -= 2;
            v22 += 8;
          }

          while (v22);
        }

        do
        {
          *v6 = *v5;
          result = *(v5 + 1);
          *(v6 + 1) = result;
          ++v5;
          v6 += 8;
        }

        while (v5 != &a3[a5]);
      }

      else
      {
        v16 = (a3 + v8 - a2);
        if (v16 == a4)
        {
          v17 = a1[1];
        }

        else
        {
          v30 = (a3 + v8 - a2);
          v17 = a1[1];
          do
          {
            v31 = *v30++;
            *v17++ = v31;
          }

          while (v30 != a4);
        }

        a1[1] = v17;
        if (v15 >= 1)
        {
          v32 = &a2[8 * a5];
          v33 = &v17[-a5];
          v34 = v17;
          while (v33 < v8)
          {
            v35 = *v33++;
            *v34++ = v35;
          }

          a1[1] = v34;
          if (v17 != v32)
          {
            v36 = v32 - v17;
            v37 = v17 - 1;
            v38 = &v37[-2 * a5];
            do
            {
              *(v37 - 1) = *(v38 - 1);
              v39 = *v38;
              v38 -= 2;
              result = v39;
              *v37 = v39;
              v37 -= 2;
              v36 += 8;
            }

            while (v36);
          }

          if (v8 != a2)
          {
            do
            {
              *v6 = *v5;
              result = *(v5 + 1);
              *(v6 + 1) = result;
              ++v5;
              v6 += 8;
            }

            while (v5 != v16);
          }
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 + ((v8 - *a1) >> 3);
      if (v11 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = v9 - v10;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v14 = &a2[-v10] >> 3;
      __p[4] = a1;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v13);
      }

      v27 = (8 * v14);
      __p[0] = 0;
      __p[1] = (8 * v14);
      __p[3] = 0;
      v28 = 8 * a5;
      do
      {
        v29 = *v5++;
        *v27++ = v29;
        v28 -= 8;
      }

      while (v28);
      __p[2] = (8 * v14 + 8 * a5);
      std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(a1, __p, a2);
      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }
  }

  return result;
}

void std::vector<md::MaskingOverlayMeshProcessor::MaskingOverlayPolygonData>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 5);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v7 = *(v4 - 7);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v4 -= 12;
        std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void md::OverlayTileData::OverlayTileResource::CustomTile::CustomTile(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, char a8, uint64_t a9)
{
  *(a1 + 24) = 0;
  *(a1 + 4) = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = a7;
  geo::_retain_ptr<objc_object * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((a1 + 40), a3);
  v13 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a5[1];
  *(a1 + 80) = *a5;
  *(a1 + 88) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a6[1];
  *(a1 + 96) = *a6;
  *(a1 + 104) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_8Blending14SRGBBlendStyleEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_((a1 + 112));
}

void sub_1B30C5900(_Unwind_Exception *a1)
{
  v3 = *(v1 + 104);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 88);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 72);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(v1 + 40) = off_1F2A4C810;

  _Unwind_Resume(a1);
}

void ***std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>>::~unique_ptr[abi:nn200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x1B8C62190](v2, 0x20C40960023A9);
  }

  return a1;
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<geo::QuadTile,unsigned long>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,unsigned long>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,unsigned long>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,unsigned long>>>::__emplace_unique_key_args<geo::QuadTile,std::piecewise_construct_t const&,std::tuple<geo::QuadTile const&>,std::tuple<>>(float *a1, geo::QuadTile *this, uint64_t *a3)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v5 = *(this + 2);
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = *(this + 2);
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_31:
    operator new();
  }

  v12 = *(this + 2);
  while (1)
  {
    v13 = *(v11 + 1);
    if (v13 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v13 >= *&v6)
      {
        v13 %= *&v6;
      }
    }

    else
    {
      v13 &= *&v6 - 1;
    }

    if (v13 != v9)
    {
      goto LABEL_31;
    }

LABEL_26:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_31;
    }
  }

  if (v11[40] == 1)
  {
    geo::QuadTile::computeHash(v11 + 16);
    v11[40] = 0;
    v14 = *(v11 + 4);
    if (*(this + 24))
    {
      v15 = (*(this + 1) + ((*this - 0x61C8864680B583EBLL) << 6) + ((*this - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*this - 0x61C8864680B583EBLL);
      v16 = (*(this + 1) + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583EBLL) ^ v15;
      v12 = (*(this + 2) + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583EBLL) ^ v16;
      *(this + 2) = v12;
      *(this + 24) = 0;
    }

    else
    {
      v12 = *(this + 2);
    }
  }

  else
  {
    v14 = *(v11 + 4);
  }

  if (v14 != v12 || v11[16] != *this || v11[17] != *(this + 1) || *(v11 + 5) != *(this + 1) || *(v11 + 6) != *(this + 2))
  {
    goto LABEL_26;
  }

  return v11;
}

void md::OverlayTileData::OverlayTileResource::RasterTile::RasterTile(uint64_t a1, uint64_t a2, void *a3, __int16 a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, char a10)
{
  *a1 = a8;
  *(a1 + 8) = a9;
  if (a9)
  {
    atomic_fetch_add_explicit((a9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
  *(a1 + 36) = *(a2 + 4);
  *(a1 + 32) = *a2;
  *(a1 + 48) = *(a2 + 16);
  *(a1 + 56) = *(a2 + 24);
  *(a1 + 64) = a4;
  v11 = a5[1];
  *(a1 + 72) = *a5;
  *(a1 + 80) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a6[1];
  *(a1 + 88) = *a6;
  *(a1 + 96) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a7[1];
  *(a1 + 104) = *a7;
  *(a1 + 112) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_8Blending14SRGBBlendStyleEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_((a1 + 120));
}

void sub_1B30C5FFC(_Unwind_Exception *exception_object)
{
  v3 = v1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = v1[12];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = v1[10];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = v1[3];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = v1[1];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<md::OverlayTileData::OverlayTileResource::RasterTile>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    std::allocator_traits<std::allocator<md::OverlayTileData::OverlayTileResource::RasterTile>>::destroy[abi:nn200100]<md::OverlayTileData::OverlayTileResource::RasterTile,void,0>((i - 144));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<md::OverlayTileData::OverlayTileResource::RasterTile>>::destroy[abi:nn200100]<md::OverlayTileData::OverlayTileResource::RasterTile,void,0>(void *a1)
{
  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[12];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a1[10];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a1[3];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = a1[1];
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2D5B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<_processOverlays(geo::QuadTile const&,unsigned int,float,CGSize const&,VKSharedResources const*,ggl::Loader &,std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>> const&,std::list<md::OverlayTileData::OverlayTileResource> &,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::vector<md::LabelClientTileOverlay> *,BOOL,std::unordered_set<md::OverlayTileDataType> const&)::$_0,std::allocator<_processOverlays(geo::QuadTile const&,unsigned int,float,CGSize const&,VKSharedResources const*,ggl::Loader &,std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>> const&,std::list<md::OverlayTileData::OverlayTileResource> &,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::View>>,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> const&,std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&,std::vector<md::LabelClientTileOverlay> *,BOOL,std::unordered_set<md::OverlayTileDataType> const&)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2D610;
  a2[1] = v2;
  return result;
}

uint64_t std::__split_buffer<md::OverlayTileData::OverlayTileResource::CustomTile>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    std::allocator_traits<std::allocator<md::OverlayTileData::OverlayTileResource::CustomTile>>::destroy[abi:nn200100]<md::OverlayTileData::OverlayTileResource::CustomTile,void,0>((i - 144));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<md::OverlayTileData::OverlayTileResource::CustomTile>>::destroy[abi:nn200100]<md::OverlayTileData::OverlayTileResource::CustomTile,void,0>(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[13];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[11];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a1[9];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  a1[5] = off_1F2A4C810;
  v6 = a1[6];
}

void *geo::_retain_ptr<objc_object * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1F2A4C810;
  a1[1] = v3;
  return a1;
}

uint64_t __Block_byref_object_copy__28640(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

void PolylineOverlayRibbonBuilder::addPolylineRibbonTo(float *a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, double a9, double a10)
{
  v19 = a3;
  v20 = [v19 lineCap];
  v55 = a4;
  v21 = a8;
  v22 = [v19 lineJoin];
  v23 = a5;
  if (v22 == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = v22 == 1;
  }

  v25 = ([v19 lineCap] - 1) < 2;
  v26 = [v19 miterLimit];
  v28 = v27;
  v29 = mdm::zone_mallocator::instance(v26);
  v30 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PolylineOverlayRibbon>(v29);
  *(v30 + 49) = 0u;
  *(v30 + 40) = 0u;
  *(v30 + 24) = 0u;
  *(v30 + 8) = 0u;
  v31 = v28;
  *v30 = &unk_1F2A2D908;
  *(v30 + 13) = a9;
  *(v30 + 14) = a10;
  v30[120] = v25;
  v30[121] = v24;
  *(v30 + 31) = v31;
  *(v30 + 32) = 1043511491;
  v59 = v30;
  if (v20 == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = a7;
  }

  v30[96] = v32;
  if (v20 == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = v21;
  }

  v30[97] = v33;
  *(v30 + 10) = a6;
  *(v30 + 11) = v55;
  *(v30 + 9) = v23;
  v56 = a2;
  objc_msgSend_style(v19);
  v57 = v60;
  v58 = a6 != 0;
  *&v60 = &v56;
  v34 = std::__hash_table<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::hash<md::PolylineOverlayBatchKey>,std::equal_to<md::PolylineOverlayBatchKey>,true>,std::__unordered_map_equal<md::PolylineOverlayBatchKey,std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::PolylineOverlayBatchKey>,std::hash<md::PolylineOverlayBatchKey>,true>,std::allocator<std::__hash_value_type<md::PolylineOverlayBatchKey,std::vector<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::PolylineOverlayBatchKey,std::piecewise_construct_t const&,std::tuple<md::PolylineOverlayBatchKey const&>,std::tuple<>>(a1, a2, a6 != 0, &v60);
  v35 = v34;
  v37 = v34[7];
  v36 = v34[8];
  if (v37 >= v36)
  {
    v40 = v34[6];
    v41 = v37 - v40;
    v42 = (v37 - v40) >> 3;
    v43 = v42 + 1;
    if ((v42 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v44 = v36 - v40;
    if (v44 >> 2 > v43)
    {
      v43 = v44 >> 2;
    }

    if (v44 >= 0x7FFFFFFFFFFFFFF8)
    {
      v45 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v45 = v43;
    }

    v63 = v34 + 9;
    if (v45)
    {
      v46 = mdm::zone_mallocator::instance(v34);
      v47 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>>(v46, v45);
      v40 = v35[6];
      v41 = v35[7] - v40;
      v48 = v41 >> 3;
    }

    else
    {
      v47 = 0;
      v48 = v42;
    }

    v49 = &v47[8 * v42];
    v50 = &v47[8 * v45];
    v51 = v59;
    v59 = 0;
    v52 = &v49[-8 * v48];
    *v49 = v51;
    v39 = v49 + 8;
    memcpy(v52, v40, v41);
    v53 = v35[6];
    v35[6] = v52;
    v35[7] = v39;
    v54 = v35[8];
    v35[8] = v50;
    v61 = v53;
    v62 = v54;
    *&v60 = v53;
    *(&v60 + 1) = v53;
    std::__split_buffer<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,geo::allocator_adapter<std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v60);
  }

  else
  {
    v38 = v59;
    v59 = 0;
    *v37 = v38;
    v39 = v37 + 8;
  }

  v35[7] = v39;
  if (*(&v57 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v57 + 1));
  }

  std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](&v59);
}

void sub_1B30C67C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<md::PolylineOverlayRibbon,mdm::TypeDeleter<md::PolylineOverlayRibbon>>::~unique_ptr[abi:nn200100](va);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__72(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_dispose__76(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1B30C8E68(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  MEMORY[0x1B8C62190](v3, v1);
  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_64c38_ZTSNSt3__18optionalIN3geo8QuadTileEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0;
  *(a1 + 96) = 0;
  if (*(a2 + 96) == 1)
  {
    *(a1 + 88) = 0;
    result = *(a2 + 68);
    *(a1 + 68) = result;
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = 1;
  }

  return result;
}

void PolylineOverlayRibbonBuilder::finalizePolylineBatch(uint64_t *a1, uint64_t *a2, int **a3, uint64_t *a4, void *a5, uint64_t a6, char a7, char a8, double a9, double a10)
{
  v19 = *a4;
  v18 = a4[1];
  std::vector<gm::Matrix<float,2,1>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<gm::Matrix<float,2,1> const*>,std::__wrap_iter<gm::Matrix<float,2,1> const*>>(a4, a4[1], a1, a2, a2 - a1);
  if (a5)
  {
    v21 = *a3;
    v20 = a3[1];
    v22 = v20 - *a3;
    if (v22 >> 2 >= 1)
    {
      v24 = a5[1];
      v23 = a5[2];
      if (v23 - v24 >= v22)
      {
        while (v21 != v20)
        {
          v31 = *v21++;
          *v24++ = v31;
        }

        a5[1] = v24;
      }

      else
      {
        v55 = a7;
        v25 = *a5;
        v26 = v24 - *a5;
        v27 = (v22 >> 2) + (v26 >> 2);
        if (v27 >> 62)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v28 = v23 - v25;
        v29 = (v23 - v25) >> 1;
        if (v29 > v27)
        {
          v27 = v29;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v30 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v27;
        }

        v54 = a8;
        if (v30)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v30);
        }

        v32 = 4 * (v26 >> 2);
        v33 = (v32 + v22);
        v34 = v32;
        do
        {
          v35 = *v21++;
          *v34++ = v35;
          v22 -= 4;
        }

        while (v22);
        memcpy(v33, v24, a5[1] - v24);
        v36 = *a5;
        v37 = &v33[a5[1] - v24];
        a5[1] = v24;
        v38 = v24 - v36;
        v39 = (v32 - (v24 - v36));
        memcpy(v39, v36, v38);
        v40 = *a5;
        *a5 = v39;
        a5[1] = v37;
        a5[2] = 0;
        a8 = v54;
        a7 = v55;
        if (v40)
        {
          operator delete(v40);
        }
      }
    }
  }

  v41 = (v18 - v19) >> 3;
  v42 = ((a4[1] - *a4) >> 3) - v41;
  v43 = *(a6 + 8);
  v44 = *(a6 + 16);
  if (v43 >= v44)
  {
    v46 = *a6;
    v47 = v43 - *a6;
    v48 = 0xAAAAAAAAAAAAAAABLL * (v47 >> 4) + 1;
    if (v48 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v49 = a7;
    v50 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v46) >> 4);
    if (2 * v50 > v48)
    {
      v48 = 2 * v50;
    }

    if (v50 >= 0x2AAAAAAAAAAAAAALL)
    {
      v51 = 0x555555555555555;
    }

    else
    {
      v51 = v48;
    }

    if (v51)
    {
      if (v51 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v52 = 16 * (v47 >> 4);
    *v52 = v41;
    *(v52 + 8) = v42;
    *(v52 + 16) = v49;
    *(v52 + 17) = a8;
    *(v52 + 24) = a9;
    *(v52 + 32) = a10;
    *(v52 + 40) = 0;
    v45 = v52 + 48;
    v53 = v52 - v47;
    memcpy((v52 - v47), v46, v47);
    *a6 = v53;
    *(a6 + 8) = v45;
    *(a6 + 16) = 0;
    if (v46)
    {
      operator delete(v46);
    }
  }

  else
  {
    *v43 = v41;
    *(v43 + 8) = v42;
    *(v43 + 16) = a7;
    *(v43 + 17) = a8;
    *(v43 + 24) = a9;
    *(v43 + 32) = a10;
    v45 = v43 + 48;
    *(v43 + 40) = 0;
  }

  *(a6 + 8) = v45;
}

uint64_t std::__function::__func<generateTexture(std::shared_ptr<ggl::TextureData2D> const&,VKSharedResources const*)::$_0,std::allocator<generateTexture(std::shared_ptr<ggl::TextureData2D> const&,VKSharedResources const*)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2D570;
  a2[1] = v2;
  return result;
}

void md::OverlayLayerDataSource::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  gdc::LayerDataSource::createDebugNode(a1, a2);
  v9 = 13;
  strcpy(&v8, "Content Scale");
  v4 = COERCE_FLOAT(atomic_load((a1 + 632)));
  gdc::DebugTreeValue::DebugTreeValue(v5, v4);
  gdc::DebugTreeNode::addProperty(a2, &v8, v5);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }
}

void md::OverlayLayerDataSource::constructRequests(uint64_t a1, void **a2, void **a3)
{
  v84 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      gdc::Tiled::tileFromLayerDataKey(&v65, (*v3)[2]);
      v5 = *(v4 + 32);
      if (v5 == 71 || v5 == 11)
      {
        md::OverlayContainer::belowOverlays(&v70, *(v4 + 640));
      }

      else
      {
        md::OverlayContainer::aboveOverlays(&v70, *(v4 + 640));
      }

      v7 = v70;
      v8 = v71;
      if (v70 != v71)
      {
        v57 = *(v4 + 32) - 71;
        v54 = v71;
        do
        {
          v9 = *(v7 + 8);
          v10 = [v9 areResourcesRequired];

          if (v57 < 2 == v10)
          {
            v68 = 0;
            v69 = 0;
            v67 = 0;
            v11 = *(v7 + 8);
            v64 = [v11 customTileProvider];

            if (v64)
            {
              v12 = v66;
              if ([v64 maximumZ] >= v12 && objc_msgSend(v64, "minimumZ") <= v12)
              {
                v60 = (*v3)[14];
                if (((*v3)[12] & 0x100000000) != 0)
                {
                  v13 = (*v3)[12];
                }

                else
                {
                  v13 = 2147483646;
                }

                v14 = v64;
                v15 = [v14 tileSize];
                v16 = [v14 minimumZ];
                v62 = v14;
                v17 = [v14 maximumZ];
                v55 = v7;
                v77 = 0;
                v78 = 0;
                v79 = 0;
                md::TileAdjustmentHelpers::adjustTileForSize(0x200u, v15, &v65, &v77);
                v19 = v77;
                v18 = v78;
                if (*&v77 != *&v78)
                {
                  do
                  {
                    v20 = *(*&v19 + 1);
                    if (v16 <= v20 && v17 >= v20)
                    {
                      v81 = vrev64_s32(*(*&v19 + 4));
                      v82.i32[0] = v20;
                      v82.i32[1] = [v62 providerID];
                      LODWORD(v83) = v15;
                      gdc::ResourceKey::ResourceKey(&v72, 0, 41, &v81, 5, v60, v13);
                      v22 = v68;
                      if (v68 >= v69)
                      {
                        v26 = std::vector<gdc::ResourceKey>::__emplace_back_slow_path<gdc::ResourceKey>(&v67, &v72);
                      }

                      else
                      {
                        v23 = v68 + 5;
                        *v68 = v72;
                        v22[1] = v22 + 5;
                        v22[2] = v22 + 5;
                        v22[3] = v22 + 5;
                        v24 = v74;
                        v22[4] = *(&v74 + 1);
                        v25 = v73;
                        if (v73 == v24)
                        {
                          v22[2] = &v23[*(&v73 + 1) - v73];
                          v27 = *(&v73 + 1);
                          while (v25 != v27)
                          {
                            v28 = *v25++;
                            *v23++ = v28;
                          }
                        }

                        else
                        {
                          *(v22 + 1) = v73;
                          v74 = 0u;
                          v73 = 0u;
                        }

                        v22[9] = v75;
                        *(v22 + 5) = v76;
                        v26 = (v22 + 12);
                      }

                      v68 = v26;
                      if (v73 != v74)
                      {
                        free(v73);
                      }
                    }

                    *&v19 += 32;
                  }

                  while (*&v19 != *&v18);
                  v19 = v77;
                }

                v8 = v54;
                if (v19)
                {
                  v78 = v19;
                  operator delete(*&v19);
                }

                v7 = v55;
              }
            }

            v29 = *(v7 + 8);
            v30 = [v29 rasterTileProvider];

            v58 = v30;
            if (v30)
            {
              v31 = v66;
              if ([v58 maximumZ] >= v31 && objc_msgSend(v58, "minimumZ") <= v31)
              {
                v56 = v7;
                v32 = (*v3)[14];
                if (((*v3)[12] & 0x100000000) != 0)
                {
                  v33 = (*v3)[12];
                }

                else
                {
                  v33 = 2147483646;
                }

                v34 = v58;
                v35 = [v34 tileSize];
                v63 = [v34 minimumZ];
                v61 = [v34 maximumZ];
                v36 = [v34 colorMap];
                v81 = 0;
                v82 = 0;
                v83 = 0;
                md::TileAdjustmentHelpers::adjustTileForSize(0x200u, v35, &v65, &v81);
                v37 = v81;
                v59 = v82;
                if (*&v81 != *&v82)
                {
                  v38 = v36 != 0;
                  do
                  {
                    v39 = *(*&v37 + 1);
                    if (v63 <= v39 && v61 >= v39)
                    {
                      for (i = 0; i < [v34 keyframesCount]; ++i)
                      {
                        v77 = vrev64_s32(*(*&v37 + 4));
                        v78.i32[0] = *(*&v37 + 1);
                        v78.i32[1] = [v34 providerID];
                        v79 = __PAIR64__(i, v35);
                        v80 = v38;
                        gdc::ResourceKey::ResourceKey(&v72, 0, 35, &v77, 7, v32, v33);
                        v42 = v68;
                        if (v68 >= v69)
                        {
                          v46 = std::vector<gdc::ResourceKey>::__emplace_back_slow_path<gdc::ResourceKey>(&v67, &v72);
                        }

                        else
                        {
                          v43 = v68 + 5;
                          *v68 = v72;
                          v42[1] = v42 + 5;
                          v42[2] = v42 + 5;
                          v42[3] = v42 + 5;
                          v44 = v74;
                          v42[4] = *(&v74 + 1);
                          v45 = v73;
                          if (v73 == v44)
                          {
                            v42[2] = &v43[*(&v73 + 1) - v73];
                            v47 = *(&v73 + 1);
                            while (v45 != v47)
                            {
                              v48 = *v45++;
                              *v43++ = v48;
                            }
                          }

                          else
                          {
                            *(v42 + 1) = v73;
                            v74 = 0u;
                            v73 = 0u;
                          }

                          v42[9] = v75;
                          *(v42 + 5) = v76;
                          v46 = (v42 + 12);
                        }

                        v68 = v46;
                        if (v73 != v74)
                        {
                          free(v73);
                        }
                      }
                    }

                    *&v37 += 32;
                  }

                  while (*&v37 != *&v59);
                  v37 = v81;
                  v4 = a1;
                }

                v8 = v54;
                v7 = v56;
                if (v37)
                {
                  v82 = v37;
                  operator delete(*&v37);
                }
              }
            }

            v49 = v67;
            v50 = v68;
            while (v49 != v50)
            {
              if (v10)
              {
                v51 = 0;
              }

              else
              {
                v51 = *(v4 + 636) ^ 1;
              }

              gdc::LayerDataRequest::request(*v3, v49, v51);
              v49 += 96;
            }

            v72 = &v67;
            std::vector<gdc::ResourceKey>::__destroy_vector::operator()[abi:nn200100](&v72);
          }

          v7 += 24;
        }

        while (v7 != v8);
      }

      v72 = &v70;
      std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v72);
      v3 += 2;
    }

    while (v3 != a3);
  }
}

void sub_1B30C9928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char *a30, void *a31, uint64_t a32, uint64_t a33)
{
  a30 = &a24;
  std::vector<gdc::ResourceKey>::__destroy_vector::operator()[abi:nn200100](&a30);
  a30 = &a27;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a30);
  _Unwind_Resume(a1);
}

uint64_t std::vector<gdc::ResourceKey>::__emplace_back_slow_path<gdc::ResourceKey>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::ResourceKey>>(v6);
  }

  v7 = 96 * v2;
  *(&v15 + 1) = 0;
  *v7 = *a2;
  geo::small_vector_base<unsigned char>::small_vector_base((v7 + 8), a2 + 8, (v7 + 40));
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 80) = *(a2 + 80);
  *&v15 = v7 + 96;
  v8 = a1[1];
  v9 = v7 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::ResourceKey>,gdc::ResourceKey*>(*a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v15;
  *(a1 + 1) = v15;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v14[0] = v10;
  v14[1] = v10;
  std::__split_buffer<gdc::ResourceKey>::~__split_buffer(v14);
  return v13;
}

void md::OverlayLayerDataSource::addFallbackData(md::OverlayLayerDataSource *this, const gdc::SelectionContext *a2)
{
  v3 = *(a2 + 1);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  gdc::LayerDataCollector::missingData(&v20, v3, *(this + 16));
  v34[0] = v20;
  v34[1] = *v21;
  while (1)
  {
    v33[0] = v22;
    v33[1] = v23;
    if (!gdc::MissingDataIterator::operator!=(v34, v33))
    {
      break;
    }

    v4 = *(*(&v34[0] + 1) + 113);
    v5 = *(*(&v34[0] + 1) + 116);
    v6 = *(*(&v34[0] + 1) + 112);
    v7 = *(*(&v34[0] + 1) + 128);
    v8 = *(*(&v34[0] + 1) + 136);
    gdc::Tiled::tileFromLayerDataKey(v33, *(*(&v34[0] + 1) + 16));
    v9 = 1 << SBYTE1(v33[0]);
    v28[0] = v33[0];
    v29 = (SDWORD1(v33[0]) % v9 + v9) % v9;
    v30 = (SDWORD2(v33[0]) % v9 + v9) % v9;
    v31 = 0;
    v32 = 1;
    gdc::FallbackCollector::start((this + 648), v28);
    md::TileAdjustmentHelpers::getFallbackDataForTile(this + 94, *(this + 16), v28, *(this + 2), this + 648);
    v24[1] = v4;
    v25 = v5;
    v24[0] = v6;
    v26 = v7;
    v27 = v8;
    gdc::FallbackCollector::collectFallbackData(this + 648, &v35, 1, 0, v24);
    gdc::FallbackCollector::end((this + 648), v10);
    gdc::MissingDataIterator::operator++(v34);
  }

  v11 = v36;
  if (v35 != v36)
  {
    v12 = v35 + 120;
    do
    {
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!md::OverlayTileData::hasTileData(v13) || *(this + 16) - 71 <= 1)
      {
        v15 = *grl::IconMetricsRenderResult::getFillRect(*v12);
        gdc::LayerDataKey::LayerDataKey(v17, v12 - 88);
        gdc::LayerDataRequestKey::LayerDataRequestKey(&v20, v15, v17);
        gdc::LayerDataCollector::addFallbackData(v3, &v20, (v12 - 120), v12);
        if (v21[0] != v22)
        {
          free(v21[0]);
        }

        if (v18 != v19)
        {
          free(v18);
        }
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }

      v16 = v12 + 16;
      v12 += 136;
    }

    while (v16 != v11);
  }

  *&v20 = &v35;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&v20);
}

void sub_1B30C9DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  a21 = (v22 - 120);
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&a21);
  _Unwind_Resume(a1);
}

void md::OverlayLayerDataSource::didDeactivate(md::OverlayLayerDataSource *this)
{
  v1 = (this + 888);
  v2 = *(this + 112);
  *v1 = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void md::OverlayLayerDataSource::didActivate(md::OverlayLayerDataSource *this)
{
  v2 = *(this + 110);
  if (v2)
  {
    (*(*v2 + 48))(&v7);
    v4 = v7;
    v3 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *(this + 111) = v4;
    v5 = *(this + 112);
    *(this + 112) = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
      v3 = v8;
    }

    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    md::OverlayLayerDataSource::~OverlayLayerDataSource(v6);
  }
}

void md::OverlayLayerDataSource::~OverlayLayerDataSource(md::OverlayLayerDataSource *this)
{
  md::OverlayLayerDataSource::~OverlayLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  v12[4] = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A2D3E8;
  v2 = *(*(this + 74) + 56);
  v12[0] = &unk_1F2A2D6E8;
  v12[3] = v12;
  geo::TaskQueue::barrierSync(v2, v12);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v12);
  v3 = *(this + 100);
  os_unfair_lock_lock((v3 + 8));
  *v3 = 0;
  os_unfair_lock_unlock((v3 + 8));
  v4 = *(this + 101);
  *(this + 50) = 0u;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  objc_storeStrong(this + 114, 0);

  *(this + 113) = &unk_1F2A2D6C8;
  v5 = *(this + 112);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](this + 856);
  v6 = *(this + 106);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 103);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 101);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 97);
  if (v9)
  {
    *(this + 98) = v9;
    operator delete(v9);
  }

  v10 = *(this + 94);
  if (v10)
  {
    *(this + 95) = v10;
    operator delete(v10);
  }

  geo::Pool<gdc::FallbackNode>::~Pool(this + 704);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 85));
  *(this + 76) = &unk_1F2A59028;

  v11 = *(this + 75);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  gdc::LayerDataSource::~LayerDataSource(this);
}

void sub_1B30CA0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  *(v7 + 904) = &unk_1F2A2D6C8;

  v9 = *(v7 + 896);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  std::__function::__value_func<std::shared_ptr<md::LabelManager> ()(void)>::~__value_func[abi:nn200100](v7 + 856);
  v10 = *(v7 + 848);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(v7 + 824);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(v7 + 808);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(v7 + 776);
  if (v13)
  {
    *(v7 + 784) = v13;
    operator delete(v13);
  }

  v14 = *(v7 + 752);
  if (v14)
  {
    *(v7 + 760) = v14;
    operator delete(v14);
  }

  geo::Pool<gdc::FallbackNode>::~Pool(v7 + 704);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v7 + 680));
  *(v7 + 608) = &unk_1F2A59028;

  v15 = *(v7 + 600);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  gdc::LayerDataSource::~LayerDataSource(v7);
  _Unwind_Resume(a1);
}

void geo::_retain_ptr<OverlayLayerDataSourceRenderTargetSizeObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2D6C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<OverlayLayerDataSourceRenderTargetSizeObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2D6C8;

  return a1;
}

uint64_t std::__shared_ptr_pointer<md::RasterTileOverlayStyle *,std::shared_ptr<md::RasterTileOverlayStyle>::__shared_ptr_default_delete<md::RasterTileOverlayStyle,md::RasterTileOverlayStyle>,std::allocator<md::RasterTileOverlayStyle>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::RasterTileOverlayStyle *,std::shared_ptr<md::RasterTileOverlayStyle>::__shared_ptr_default_delete<md::RasterTileOverlayStyle,md::RasterTileOverlayStyle>,std::allocator<md::RasterTileOverlayStyle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__shared_ptr_pointer<md::CallbackHolder<md::OverlayLayerDataSource> *,std::shared_ptr<md::CallbackHolder<md::OverlayLayerDataSource>>::__shared_ptr_default_delete<md::CallbackHolder<md::OverlayLayerDataSource>,md::CallbackHolder<md::OverlayLayerDataSource>>,std::allocator<md::CallbackHolder<md::OverlayLayerDataSource>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    *result = 0;
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::CallbackHolder<md::OverlayLayerDataSource> *,std::shared_ptr<md::CallbackHolder<md::OverlayLayerDataSource>>::__shared_ptr_default_delete<md::CallbackHolder<md::OverlayLayerDataSource>,md::CallbackHolder<md::OverlayLayerDataSource>>,std::allocator<md::CallbackHolder<md::OverlayLayerDataSource>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::OverlayLayerDataSource::conditionalInvalidate(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 800);
  v11 = *(a1 + 808);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = **(a1 + 592);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = ___ZN2md22OverlayLayerDataSource21conditionalInvalidateENSt3__18functionIFbRKNS1_10shared_ptrINS_15OverlayTileDataEEEEEES9_bNS1_13unordered_setINS_19OverlayTileDataTypeENS1_4hashISB_EENS1_8equal_toISB_EENS1_9allocatorISB_EEEE_block_invoke;
  v13[3] = &__block_descriptor_161_ea8_40c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE56c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE88c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE120c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE_e5_v8__0l;
  v13[4] = a1;
  v13[5] = v10;
  v14 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v15, a2);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v16, a3);
  v17[40] = a4;
  std::unordered_set<md::OverlayTileDataType>::unordered_set(v17, a5);
  dispatch_async(v12, v13);

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v17);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v16);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v15);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_1B30CA524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v17 + 88);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v18 + 56);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void ___ZN2md22OverlayLayerDataSource21conditionalInvalidateENSt3__18functionIFbRKNS1_10shared_ptrINS_15OverlayTileDataEEEEEES9_bNS1_13unordered_setINS_19OverlayTileDataTypeENS1_4hashISB_EENS1_8equal_toISB_EENS1_9allocatorISB_EEEE_block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 40))
      {
        v5 = *(*(v3 + 592) + 8);
        v9[0] = &unk_1F2A2D7A0;
        v9[3] = v9;
        geo::TaskQueue::barrierSync(v5, v9);
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v6, a1 + 56);
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v7, a1 + 88);
        v7[32] = *(a1 + 160);
        std::unordered_set<md::OverlayTileDataType>::unordered_set(v8, a1 + 120);
        v8[8] = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }
}

void sub_1B30CA71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  std::__function::__value_func<void ()(md::OverlayLayerDataSource *)>::~__value_func[abi:nn200100](va1);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v5 + 72);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v4 + 32);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_ea8_40c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE56c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE88c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE120c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 120);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 88);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __copy_helper_block_ea8_40c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE56c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE88c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE120c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a1 + 56, a2 + 56);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a1 + 88, a2 + 88);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a1 + 120, a2 + 120);
}

void sub_1B30CA904(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 88);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void md::CallbackHolder<md::OverlayLayerDataSource>::call(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 2);
  if (*&a1->_os_unfair_lock_opaque)
  {
    v6 = *&a1->_os_unfair_lock_opaque;
    v4 = *(a2 + 24);
    if (!v4)
    {
      v5 = std::__throw_bad_function_call[abi:nn200100]();
      os_unfair_lock_unlock(a1 + 2);
      _Unwind_Resume(v5);
    }

    (*(*v4 + 48))(v4, &v6);
  }

  os_unfair_lock_unlock(a1 + 2);
}

uint64_t std::__function::__value_func<void ()(md::OverlayLayerDataSource *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EEclEOSN_(uint64_t a1, gdc::LayerDataStore ***a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v37, a1 + 8);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v35, a1 + 40);
  v4 = *(a1 + 72);
  gdc::LayerDataSource::cancelAllLayerDataRequests(v3);
  v29 = 0;
  v30 = 0uLL;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v5 = v3[2];
  v6 = *(v5 + 8);
  if (v6 != v5)
  {
    do
    {
      v7 = *(v6 + 136);
      v25[0] = *(v6 + 128);
      v25[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
      }

      if (!v38)
      {
        goto LABEL_46;
      }

      if ((*(*v38 + 48))(v38, v25))
      {
        gdc::LayerDataSource::cancelLayerDataRequest(v3, (v6 + 16));
        if (!v36)
        {
          goto LABEL_46;
        }

        if ((((*(*v36 + 48))(v36, v25) | v4 ^ 1) & 1) != 0 || !md::OverlayTileData::hasTileData(v25[0]))
        {
          if (!v36)
          {
            goto LABEL_46;
          }

          if ((*(*v36 + 48))(v36, v25))
          {
            if (v30 >= *(&v30 + 1))
            {
              v9 = 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 4) + 1;
              if (v9 > 0x249249249249249)
              {
                goto LABEL_47;
              }

              if (0xDB6DB6DB6DB6DB6ELL * ((*(&v30 + 1) - v29) >> 4) > v9)
              {
                v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v30 + 1) - v29) >> 4);
              }

              if ((0x6DB6DB6DB6DB6DB7 * ((*(&v30 + 1) - v29) >> 4)) >= 0x124924924924924)
              {
                v10 = 0x249249249249249;
              }

              else
              {
                v10 = v9;
              }

              v34 = &v29;
              if (v10)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v10);
              }

              v31 = 0;
              v32 = 16 * ((v30 - v29) >> 4);
              v33 = v32;
              gdc::LayerDataRequestKey::LayerDataRequestKey(v32, v6 + 16);
              *&v33 = v33 + 112;
              v11 = &v29[v32 - v30];
              std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(v29, v30, v11);
              v12 = v29;
              v13 = *(&v30 + 1);
              v29 = v11;
              v22 = v33;
              v30 = v33;
              *&v33 = v12;
              *(&v33 + 1) = v13;
              v31 = v12;
              v32 = v12;
              std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(&v31);
              v8 = v22;
            }

            else
            {
              v8 = gdc::LayerDataRequestKey::LayerDataRequestKey(v30, v6 + 16) + 112;
            }

            *&v30 = v8;
          }

          else
          {
            gdc::LayerData::invalidate(v25[0]);
          }
        }

        else
        {
          std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>(&v26, v25);
        }
      }

      if (v25[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v25[1]);
      }

      v6 = *(v6 + 8);
    }

    while (v6 != v5);
    v14 = v29;
    v15 = v30;
    while (v14 != v15)
    {
      gdc::LayerDataStore::remove(v3[2], v14);
      v14 += 112;
    }
  }

  if ((v4 & 1) != 0 && v26 != v27)
  {
    v17 = *v26;
    v16 = v26[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::unordered_set<md::OverlayTileDataType>::unordered_set(&v31, a1 + 80);
    md::OverlayLayerDataSource::_updateNonTileOverlays(v3, v17, v16, &v31);
  }

  gdc::LayerDataStore::pending(v25, v3[2]);
  v18 = v25[0];
  v19 = v25[1];
  if (v25[0] != v25[1])
  {
    while (1)
    {
      v20 = *(v18 + 15);
      v23 = *(v18 + 14);
      v24 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v38)
      {
        break;
      }

      if ((*(*v38 + 48))(v38, &v23))
      {
        gdc::LayerDataSource::cancelLayerDataRequest(v3, v18);
        gdc::LayerData::invalidate(v23);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      }

      v18 = (v18 + 128);
      if (v18 == v19)
      {
        goto LABEL_45;
      }
    }

LABEL_46:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_47:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_45:
  gdc::LayerDataSource::requestUpdate(v3);
  v23 = v25;
  std::vector<std::pair<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>::__destroy_vector::operator()[abi:nn200100](&v23);
  v25[0] = &v26;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](v25);
  v26 = &v29;
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v26);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v35);
  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v37);
}

uint64_t std::vector<gdc::LayerDataRequestKey>::__emplace_back_slow_path<gdc::LayerDataRequestKey&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v5);
  }

  v6 = 112 * v2;
  gdc::LayerDataRequestKey::LayerDataRequestKey(v6, a2);
  v14 = (v6 + 112);
  v7 = a1[1];
  v8 = v6 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(*a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v14;
  *(a1 + 1) = v14;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v13[0] = v9;
  v13[1] = v9;
  std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(v13);
  return v12;
}

void md::OverlayLayerDataSource::_updateNonTileOverlays(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4)
{
  v4[13] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&a3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::unordered_set<md::OverlayTileDataType>::unordered_set(v4, a4);
  v4[12] = 0;
  operator new();
}

void sub_1B30CB1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v14 - 88);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v13 + 24);
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::pair<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__function::__func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[2];
      if (!v6)
      {
LABEL_59:
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        return;
      }

      v7 = *(v3 + 616);
      (*(*[v7 gglDevice] + 24))(&v38);

      v35 = &v35;
      v36 = &v35;
      v37 = 0;
      memset(v34, 0, sizeof(v34));
      [*(v3 + 912) size];
      *&v33 = v8;
      *(&v33 + 1) = v9;
      v10 = *(grl::IconMetricsRenderResult::getFillRect(v6) + 8);
      if (v10 > 0x46)
      {
        if (v10 == 72)
        {
LABEL_13:
          v11 = *(v3 + 616);
          md::OverlayContainer::aboveOverlays(v32, *(v3 + 640));
          v13 = *(v6 + 736);
          v30 = *(v6 + 728);
          v31 = v13;
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

LABEL_15:
          _processOverlays(v6 + 168, &v33, v11, &v38, v32, &v35, v34, &v30, 1.0, (v6 + 744), v3 + 840, 0, *(v3 + 32) - 71 < 2, a1 + 4);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v31);
          }

          v39 = v32;
          std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v39);

LABEL_18:
          v32[0] = (v6 + 880);
          v14 = pthread_rwlock_wrlock((v6 + 880));
          if (v14)
          {
            geo::read_write_lock::logFailure(v14, "write lock", v15);
          }

          for (i = *(v6 + 768); i != v6 + 760; i = *(i + 8))
          {
            if (std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1 + 4, *(i + 152)))
            {
              atomic_store(1u, (i + 153));
            }
          }

          geo::write_lock_guard::~write_lock_guard(v32);
          if (!a1[7])
          {
            goto LABEL_58;
          }

          v32[0] = (v6 + 880);
          v17 = pthread_rwlock_wrlock((v6 + 880));
          if (v17)
          {
            geo::read_write_lock::logFailure(v17, "write lock", v18);
          }

          v19 = a1[7];
          if (v19 == 2)
          {
            std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v6 + 784));
            std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v6 + 808));
            if (std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1 + 4, 2u))
            {
              for (j = v36; j != &v35; j = j->n128_u64[1])
              {
                if (j[1].n128_u64[1])
                {
                  std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>>,std::vector<unsigned int>>((v6 + 784), &j[1].n128_i64[1], j + 8);
                }

                if (j[2].n128_u64[0])
                {
                  std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>>,std::vector<unsigned int>>((v6 + 784), &j[2], j + 8);
                }

                if (j[2].n128_u64[1])
                {
                  std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::OverlayTileData::OverlayTileResource::CircleResource>,std::vector<unsigned int>>((v6 + 784), &j[2].n128_i64[1], &j[8]);
                }

                if (j[3].n128_u64[0] != j[3].n128_u64[1])
                {
                  std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>,std::vector<unsigned int>>(&j[3], &j[8]);
                }

                if (j[5].n128_u64[1])
                {
                  std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedRibbonLayer>,std::vector<unsigned int>>(&j[5].n128_i64[1], &j[8]);
                }

                if (j[6].n128_u64[0])
                {
                  std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedGradientRibbonLayer>,std::vector<unsigned int>>(&j[6], &j[8]);
                }
              }
            }

            if (std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1 + 4, 1u))
            {
              for (k = v36; k != &v35; k = k[1])
              {
                if (k[2])
                {
                  std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>,std::vector<unsigned int>>(k + 2, (k + 16));
                }
              }
            }

            goto LABEL_57;
          }

          if (v19 == 1)
          {
            if (std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1 + 4, 2u))
            {
              v20 = 784;
              goto LABEL_55;
            }

            if (std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a1 + 4, 1u))
            {
              v20 = 808;
LABEL_55:
              v23 = (v6 + v20);
              std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(v23);
              v24 = v37;
              if (v37)
              {
                v26 = v35;
                v25 = v36;
                v27 = *(v35 + 8);
                v28 = *v36;
                *(v28 + 8) = v27;
                *v27 = v28;
                v29 = *v23;
                *(v29 + 8) = v25;
                *v25 = v29;
                *v23 = v26;
                *(v26 + 8) = v23;
                v23[2] += v24;
                v37 = 0;
              }
            }
          }

LABEL_57:
          geo::write_lock_guard::~write_lock_guard(v32);
LABEL_58:
          v32[0] = v34;
          std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>::__destroy_vector::operator()[abi:nn200100](v32);
          std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(&v35);
          ggl::Loader::~Loader(&v38);
          goto LABEL_59;
        }

        if (v10 != 71)
        {
          goto LABEL_18;
        }
      }

      else if (v10 != 11)
      {
        if (v10 != 12)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      v11 = *(v3 + 616);
      md::OverlayContainer::belowOverlays(v32, *(v3 + 640));
      v12 = *(v6 + 736);
      v30 = *(v6 + 728);
      v31 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_15;
    }
  }
}

void sub_1B30CB790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, char a21)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  *(v23 - 72) = &a16;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100]((v23 - 72));

  a19 = &a21;
  std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>::__destroy_vector::operator()[abi:nn200100](&a19);
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v23 - 104));
  ggl::Loader::~Loader((v23 - 80));
  std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::destroy[abi:nn200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::destroy[abi:nn200100](uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t std::__function::__func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2D830;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a2 + 32, a1 + 32);
}

void sub_1B30CB91C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30CB9BC(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2D830;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0,std::allocator<md::OverlayLayerDataSource::_updateNonTileOverlays(std::shared_ptr<md::OverlayTileData> const&,std::unordered_set<md::OverlayTileDataType>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2D830;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EE18destroy_deallocateEv(void *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 80);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 40);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EE7destroyEv(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 80);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 40);

  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 8);
}

uint64_t _ZNKSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2D7E8;
  v4 = a2 + 40;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a2 + 8, a1 + 8);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v4, a1 + 40);
  *(a2 + 72) = *(a1 + 72);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a2 + 80, a1 + 80);
}

void sub_1B30CBBA4(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1B30CBC5C(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 40);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EED0Ev(void *a1)
{
  *a1 = &unk_1F2A2D7E8;
  v2 = a1 + 5;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 10));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *_ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource21conditionalInvalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEESB_bNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb_E3__2NSI_ISL_EEFvPS3_EED1Ev(void *a1)
{
  *a1 = &unk_1F2A2D7E8;
  v2 = a1 + 5;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 10));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void md::OverlayLayerDataSource::invalidateRect(uint64_t a1, __int128 *a2, __int16 a3, uint64_t a4, char a5, uint64_t a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v13 = *a2;
  v14 = a2[1];
  v10 = *(a1 + 800);
  v11 = *(a1 + 808);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = **(a1 + 592);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENSt3__18optionalIhEENS6_8functionIFbRKNS6_10shared_ptrINS_15OverlayTileDataEEEEEEbNS6_13unordered_setINS_19OverlayTileDataTypeENS6_4hashISI_EENS6_8equal_toISI_EENS6_9allocatorISI_EEEE_block_invoke;
  block[3] = &__block_descriptor_155_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE80c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE112c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE_e5_v8__0l;
  block[4] = v10;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = v13;
  v18 = v14;
  v20[20] = a3;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v19, a4);
  v21 = a5;
  std::unordered_set<md::OverlayTileDataType>::unordered_set(v20, a6);
  dispatch_async(v12, block);

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v20);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v19);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_1B30CBF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v21 + 80);
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(a1);
}

void ___ZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENSt3__18optionalIhEENS6_8functionIFbRKNS6_10shared_ptrINS_15OverlayTileDataEEEEEEbNS6_13unordered_setINS_19OverlayTileDataTypeENS6_4hashISI_EENS6_8equal_toISI_EENS6_9allocatorISI_EEEE_block_invoke(uint64_t a1)
{
  v5[9] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 32))
      {
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v4, a1 + 80);
        v4[32] = *(a1 + 154);
        std::unordered_set<md::OverlayTileDataType>::unordered_set(v5, a1 + 112);
        v5[8] = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

void sub_1B30CC0F8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(md::OverlayLayerDataSource *)>::~__value_func[abi:nn200100](v3 - 72);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 80);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2 + 40);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE80c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE112c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 112);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 80);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __copy_helper_block_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE80c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE112c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a1 + 80, a2 + 80);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a1 + 112, a2 + 112);
}

void sub_1B30CC204(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 80);
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EEclEOSU_(uint64_t a1, uint64_t **a2)
{
  i = a1;
  v94 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *(a1 + 40);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v92, a1 + 48);
  v5 = i + 8;
  v70 = *(i + 80);
  v80 = 0;
  v81 = 0uLL;
  v6 = v3[7];
  v69 = i;
  if (v6)
  {
    v7 = 0;
    v8 = i + 24;
    do
    {
      gdc::Tiled::tileFromLayerDataKey(&v88, *(v6 + 32));
      v9 = BYTE1(v88);
      if ((v4 & 0x100) == 0 || (v9 = v4, BYTE1(v88) == v4))
      {
        v10 = 0;
        v11 = 1;
        v12 = 1 << v9;
        v13 = 1.0 / v12;
        *&v85 = v13 * v89;
        *(&v85 + 1) = v13 * (v12 + ~HIDWORD(v88));
        v86 = *&v85 + v13;
        v87 = *(&v85 + 1) + v13;
        v14 = &v85;
        while (*(&v86 + v10) > *(v5 + 8 * v10) && *v14 < *(v8 + 8 * v10))
        {
          v15 = v11;
          v11 = 0;
          v14 = (&v85 + 8);
          v10 = 1;
          if ((v15 & 1) == 0)
          {
            if (v7 >= *(&v81 + 1))
            {
              v16 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v80) >> 4);
              v17 = v16 + 1;
              if ((v16 + 1) > 0x249249249249249)
              {
                goto LABEL_90;
              }

              if (0xDB6DB6DB6DB6DB6ELL * ((*(&v81 + 1) - v80) >> 4) > v17)
              {
                v17 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v81 + 1) - v80) >> 4);
              }

              if ((0x6DB6DB6DB6DB6DB7 * ((*(&v81 + 1) - v80) >> 4)) >= 0x124924924924924)
              {
                v18 = 0x249249249249249;
              }

              else
              {
                v18 = v17;
              }

              v91 = &v80;
              if (v18)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v18);
              }

              v88 = 0;
              v89 = 112 * v16;
              v90 = (112 * v16);
              gdc::LayerDataRequestKey::LayerDataRequestKey(112 * v16, v6 + 16);
              *&v90 = v90 + 112;
              v19 = (v80 + v89 - v81);
              std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(v80, v81, v19);
              v20 = v80;
              v21 = *(&v81 + 1);
              v80 = v19;
              v71 = v90;
              v81 = v90;
              *&v90 = v20;
              *(&v90 + 1) = v21;
              v88 = v20;
              v89 = v20;
              std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(&v88);
              v7 = v71;
            }

            else
            {
              gdc::LayerDataRequestKey::LayerDataRequestKey(v7, v6 + 16);
              v7 += 112;
            }

            *&v81 = v7;
            break;
          }
        }
      }

      v6 = *v6;
    }

    while (v6);
    v22 = v80;
    for (i = v69; v22 != v7; v22 = (v22 + 112))
    {
      gdc::LayerDataSource::cancelLayerDataRequest(v3, v22);
    }
  }

  v23 = v3[12];
  while (v23)
  {
    gdc::Tiled::tileFromLayerDataKey(&v88, *(v23 + 32));
    v24 = BYTE1(v88);
    if ((v4 & 0x100) == 0 || (v24 = v4, BYTE1(v88) == v4))
    {
      v25 = 0;
      v26 = 1;
      v27 = 1 << v24;
      v28 = 1.0 / v27;
      *&v85 = v28 * v89;
      *(&v85 + 1) = v28 * (v27 + ~HIDWORD(v88));
      v86 = *&v85 + v28;
      v87 = *(&v85 + 1) + v28;
      v29 = &v85;
      while (*(&v86 + v25) > *(v5 + 8 * v25) && *v29 < *(i + 24 + 8 * v25))
      {
        v30 = v26;
        v26 = 0;
        v29 = (&v85 + 8);
        v25 = 1;
        if ((v30 & 1) == 0)
        {
          v23 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::erase(v3 + 10, v23);
          goto LABEL_33;
        }
      }
    }

    v23 = *v23;
LABEL_33:
    ;
  }

  for (j = v3[17]; j; j = *j)
  {
LABEL_35:
    gdc::Tiled::tileFromLayerDataKey(&v88, *(j + 32));
    v32 = BYTE1(v88);
    if ((v4 & 0x100) != 0)
    {
      v32 = v4;
      if (BYTE1(v88) != v4)
      {
        continue;
      }
    }

    v33 = 0;
    v34 = 1;
    v35 = 1 << v32;
    v36 = 1.0 / v35;
    *&v85 = v36 * v89;
    *(&v85 + 1) = v36 * (v35 + ~HIDWORD(v88));
    v86 = *&v85 + v36;
    v87 = *(&v85 + 1) + v36;
    v37 = &v85;
    while (*(&v86 + v33) > *(v5 + 8 * v33) && *v37 < *(i + 24 + 8 * v33))
    {
      v38 = v34;
      v34 = 0;
      v37 = (&v85 + 8);
      v33 = 1;
      if ((v38 & 1) == 0)
      {
        j = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::erase(v3 + 15, j);
        if (j)
        {
          goto LABEL_35;
        }

        goto LABEL_44;
      }
    }
  }

LABEL_44:
  v78 = 0;
  v79 = 0uLL;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  v39 = v3[2];
  for (k = *(v39 + 8); k != v39; k = *(k + 8))
  {
    gdc::Tiled::tileFromLayerDataKey(&v88, *(k + 32));
    v41 = BYTE1(v88);
    if ((v4 & 0x100) == 0 || (v41 = v4, BYTE1(v88) == v4))
    {
      v42 = 0;
      v43 = 1;
      v44 = 1 << v41;
      v45 = 1.0 / v44;
      *&v85 = v45 * v89;
      *(&v85 + 1) = v45 * (v44 + ~HIDWORD(v88));
      v86 = *&v85 + v45;
      v87 = *(&v85 + 1) + v45;
      v46 = &v85;
      do
      {
        if (*(&v86 + v42) <= *(v5 + 8 * v42) || *v46 >= *(v69 + 24 + 8 * v42))
        {
          goto LABEL_72;
        }

        v47 = v43;
        v43 = 0;
        v46 = (&v85 + 8);
        v42 = 1;
      }

      while ((v47 & 1) != 0);
      v48 = *(k + 136);
      *&v85 = *(k + 128);
      *(&v85 + 1) = v48;
      if (v48)
      {
        atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
      }

      gdc::LayerDataSource::cancelLayerDataRequest(v3, (k + 16));
      if (!v93)
      {
        std::__throw_bad_function_call[abi:nn200100]();
LABEL_90:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if ((*(*v93 + 48))(v93, &v85))
      {
        if (v79 >= *(&v79 + 1))
        {
          v50 = 0x6DB6DB6DB6DB6DB7 * ((v79 - v78) >> 4) + 1;
          if (v50 > 0x249249249249249)
          {
            goto LABEL_90;
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((*(&v79 + 1) - v78) >> 4) > v50)
          {
            v50 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v79 + 1) - v78) >> 4);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((*(&v79 + 1) - v78) >> 4)) >= 0x124924924924924)
          {
            v51 = 0x249249249249249;
          }

          else
          {
            v51 = v50;
          }

          v91 = &v78;
          if (v51)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v51);
          }

          v88 = 0;
          v89 = 16 * ((v79 - v78) >> 4);
          v90 = v89;
          gdc::LayerDataRequestKey::LayerDataRequestKey(v89, k + 16);
          *&v90 = v90 + 112;
          v52 = &v78[v89 - v79];
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(v78, v79, v52);
          v53 = v78;
          v54 = *(&v79 + 1);
          v78 = v52;
          v72 = v90;
          v79 = v90;
          *&v90 = v53;
          *(&v90 + 1) = v54;
          v88 = v53;
          v89 = v53;
          std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(&v88);
          v49 = v72;
        }

        else
        {
          v49 = gdc::LayerDataRequestKey::LayerDataRequestKey(v79, k + 16) + 112;
        }

        *&v79 = v49;
      }

      else if (v70)
      {
        std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>(&v75, &v85);
      }

      else
      {
        gdc::LayerData::invalidate(v85);
      }

      if (*(&v85 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v85 + 1));
      }
    }

LABEL_72:
    ;
  }

  if (v70)
  {
    v55 = v75;
    if (v75 != v76)
    {
      std::unordered_set<md::OverlayTileDataType>::unordered_set(&v88, v69 + 88);
      md::OverlayLayerDataSource::_updateNonTileOverlays(v3, *v55, *(v55 + 8), &v88);
    }
  }

  v57 = v78;
  v56 = v79;
  while (v57 != v56)
  {
    gdc::LayerDataStore::remove(v3[2], v57);
    v57 += 112;
  }

  gdc::LayerDataStore::pending(&v73, v3[2]);
  v58 = v73;
  for (m = v74; v58 != m; v58 += 128)
  {
    gdc::Tiled::tileFromLayerDataKey(&v85, *(v58 + 16));
    v60 = BYTE1(v85);
    if ((v4 & 0x100) != 0)
    {
      v60 = v4;
      if (BYTE1(v85) != v4)
      {
        continue;
      }
    }

    v61 = 0;
    v62 = 1;
    v63 = 1 << v60;
    v64 = 1.0 / v63;
    v82 = v64 * SDWORD2(v85);
    v83 = v64 * (v63 + ~DWORD1(v85));
    v84[0] = v82 + v64;
    v84[1] = v83 + v64;
    v65 = &v82;
    while (v84[v61] > *(v5 + 8 * v61) && *v65 < *(v69 + 24 + 8 * v61))
    {
      v66 = v62;
      v62 = 0;
      v65 = &v83;
      v61 = 1;
      if ((v66 & 1) == 0)
      {
        v67 = *(v58 + 112);
        gdc::LayerDataSource::cancelLayerDataRequest(v3, v58);
        gdc::LayerData::invalidate(v67);
        break;
      }
    }
  }

  gdc::LayerDataSource::requestUpdate(v3);
  *&v85 = &v73;
  std::vector<std::pair<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>::__destroy_vector::operator()[abi:nn200100](&v85);
  *&v85 = &v75;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v85);
  *&v85 = &v78;
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v85);
  *&v85 = &v80;
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v85);
  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v92);
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::__unordered_map_hasher<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::hash<gdc::EntityId>,std::equal_to<gdc::EntityId>,true>,std::__unordered_map_equal<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::equal_to<gdc::EntityId>,std::hash<gdc::EntityId>,true>,std::allocator<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>>>::remove(&__p, a1, a2);
  v3 = __p;
  if (__p)
  {
    if (v6 == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>(__p + 2);
    }

    operator delete(v3);
  }

  return v2;
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EE18destroy_deallocateEv(void *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 88);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 48);

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EE7destroyEv(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 88);

  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 48);
}

uint64_t _ZNKSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EE7__cloneEPNS0_6__baseISV_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2D878;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v5;
  *(a2 + 8) = v4;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a2 + 48, a1 + 48);
  *(a2 + 80) = *(a1 + 80);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a2 + 88, a1 + 88);
}

void sub_1B30CCD10(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 48);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EED0Ev(void *a1)
{
  *a1 = &unk_1F2A2D878;
  v1 = a1 + 6;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 11));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

void *_ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource14invalidateRectERKN2gm3BoxIdLi2EEENS_8optionalIhEENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISK_EENS_8equal_toISK_EENS_9allocatorISK_EEEEEUb0_E3__4NSP_ISS_EEFvPS3_EED1Ev(void *a1)
{
  *a1 = &unk_1F2A2D878;
  v2 = a1 + 6;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 11));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  return a1;
}

void md::OverlayLayerDataSource::invalidate(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 800);
  v8 = *(a1 + 808);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = **(a1 + 592);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2md22OverlayLayerDataSource10invalidateENSt3__18functionIFbRKNS1_10shared_ptrINS_15OverlayTileDataEEEEEEbNS1_13unordered_setINS_19OverlayTileDataTypeENS1_4hashISB_EENS1_8equal_toISB_EENS1_9allocatorISB_EEEE_block_invoke;
  block[3] = &__block_descriptor_121_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE48c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE80c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE_e5_v8__0l;
  block[4] = v7;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v12, a2);
  v13[40] = a3;
  std::unordered_set<md::OverlayTileDataType>::unordered_set(v13, a4);
  dispatch_async(v9, block);

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v13);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v12);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_1B30CCF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v17 + 48);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void ___ZN2md22OverlayLayerDataSource10invalidateENSt3__18functionIFbRKNS1_10shared_ptrINS_15OverlayTileDataEEEEEEbNS1_13unordered_setINS_19OverlayTileDataTypeENS1_4hashISB_EENS1_8equal_toISB_EENS1_9allocatorISB_EEEE_block_invoke(uint64_t a1)
{
  v5[9] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 32))
      {
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v4, a1 + 48);
        v4[32] = *(a1 + 120);
        std::unordered_set<md::OverlayTileDataType>::unordered_set(v5, a1 + 80);
        v5[8] = 0;
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

void sub_1B30CD0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  std::__function::__value_func<void ()(md::OverlayLayerDataSource *)>::~__value_func[abi:nn200100](va1);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v4 + 40);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE48c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE80c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 80);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __copy_helper_block_ea8_32c75_ZTSNSt3__18weak_ptrIN2md14CallbackHolderINS1_22OverlayLayerDataSourceEEEEE48c68_ZTSNSt3__18functionIFbRKNS_10shared_ptrIN2md15OverlayTileDataEEEEEE80c107_ZTSKNSt3__113unordered_setIN2md19OverlayTileDataTypeENS_4hashIS2_EENS_8equal_toIS2_EENS_9allocatorIS2_EEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a1 + 48, a2 + 48);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a1 + 80, a2 + 80);
}

void sub_1B30CD1D0(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v1 + 48);
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EEclEOSN_(uint64_t a1, gdc::LayerDataStore ***a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](v29, a1 + 8);
  v4 = *(a1 + 40);
  gdc::LayerDataSource::cancelAllLayerDataRequests(v3);
  v23 = 0;
  v24 = 0uLL;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v5 = *(v3 + 2);
  for (i = v5[1]; i != v5; i = i[1])
  {
    v7 = i[17];
    *&v19 = i[16];
    *(&v19 + 1) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    if (!v30)
    {
      std::__throw_bad_function_call[abi:nn200100]();
LABEL_32:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if ((*(*v30 + 48))(v30, &v19))
    {
      if (v24 >= *(&v24 + 1))
      {
        v9 = 0x6DB6DB6DB6DB6DB7 * ((v24 - v23) >> 4) + 1;
        if (v9 > 0x249249249249249)
        {
          goto LABEL_32;
        }

        if (0xDB6DB6DB6DB6DB6ELL * ((*(&v24 + 1) - v23) >> 4) > v9)
        {
          v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v24 + 1) - v23) >> 4);
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((*(&v24 + 1) - v23) >> 4)) >= 0x124924924924924)
        {
          v10 = 0x249249249249249;
        }

        else
        {
          v10 = v9;
        }

        v28 = &v23;
        if (v10)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v10);
        }

        v25 = 0;
        v26 = 16 * ((v24 - v23) >> 4);
        v27 = v26;
        gdc::LayerDataRequestKey::LayerDataRequestKey(v26, (i + 2));
        *&v27 = v27 + 112;
        v11 = &v23[v26 - v24];
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKey*>(v23, v24, v11);
        v12 = v23;
        v13 = *(&v24 + 1);
        v23 = v11;
        v18 = v27;
        v24 = v27;
        *&v27 = v12;
        *(&v27 + 1) = v13;
        v25 = v12;
        v26 = v12;
        std::__split_buffer<gdc::LayerDataRequestKey>::~__split_buffer(&v25);
        v8 = v18;
      }

      else
      {
        v8 = gdc::LayerDataRequestKey::LayerDataRequestKey(v24, (i + 2)) + 112;
      }

      *&v24 = v8;
    }

    else if (v4)
    {
      std::vector<std::shared_ptr<md::RouteLineOverlayGroup>>::emplace_back<std::shared_ptr<md::RouteLineOverlayGroup> const&>(&v20, &v19);
    }

    else
    {
      gdc::LayerData::invalidate(v19);
    }

    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v19 + 1));
    }
  }

  if (v4)
  {
    v14 = v20;
    if (v20 != v21)
    {
      std::unordered_set<md::OverlayTileDataType>::unordered_set(&v25, a1 + 48);
      md::OverlayLayerDataSource::_updateNonTileOverlays(v3, *v14, v14[1], &v25);
    }
  }

  v15 = v23;
  v16 = v24;
  while (v15 != v16)
  {
    gdc::LayerDataStore::remove(*(v3 + 2), v15);
    v15 += 112;
  }

  gdc::LayerDataSource::requestUpdate(v3);
  *&v19 = &v20;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v19);
  v20 = &v23;
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v20);
  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v29);
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EE18destroy_deallocateEv(void *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 48);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EE7destroyEv(uint64_t a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(a1 + 48);

  return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](a1 + 8);
}

uint64_t _ZNKSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2D8C0;
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__value_func[abi:nn200100](a2 + 8, a1 + 8);
  *(a2 + 40) = *(a1 + 40);
  return std::unordered_set<md::OverlayTileDataType>::unordered_set(a2 + 48, a1 + 48);
}

void sub_1B30CD6B0(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EED0Ev(void *a1)
{
  *a1 = &unk_1F2A2D8C0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 6));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *_ZNSt3__110__function6__funcIZZN2md22OverlayLayerDataSource10invalidateENS_8functionIFbRKNS_10shared_ptrINS2_15OverlayTileDataEEEEEEbNS_13unordered_setINS2_19OverlayTileDataTypeENS_4hashISD_EENS_8equal_toISD_EENS_9allocatorISD_EEEEEUb1_E3__6NSI_ISL_EEFvPS3_EED1Ev(void *a1)
{
  *a1 = &unk_1F2A2D8C0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 6));
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void md::LabelLineSegment::LabelLineSegment(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = &unk_1F2A2D928;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 33) = *(a3 + 88);
  *(a1 + 34) = *(a3 + 8);
  *(a1 + 36) = 0;
  *(a1 + 38) = *(a3 + 72);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(a3 + 4);
  *(a1 + 46) = *(a3 + 60);
  operator new();
}

{
  *a1 = &unk_1F2A2D928;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 33) = *(a3 + 88);
  *(a1 + 34) = *(a3 + 8);
  *(a1 + 36) = 0;
  *(a1 + 38) = *(a3 + 72);
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 46) = *(a3 + 60);
  operator new();
}

void sub_1B30CD890(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v3)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30CD9AC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v3)
  {
    std::default_delete<md::LabelLineSegment::ExtendedData>::operator()[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelLineSegment::createLists(unsigned __int16 *a1, uint64_t a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a1[23] >= 2u)
  {
    md::LabelLineSegment::createPointList(a1, a2);
    v4 = (*(*a1 + 64))(a1);
    v5 = v4;
    v6 = a1[23];
    if (v6 > 0x2000)
    {
      v9 = malloc_type_malloc(a1[23], 0x100004077774924uLL);
      if (!v9)
      {
        return;
      }

      v8 = v9;
      v10 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      v8 = v24 - v7;
      bzero(v24 - v7, v6);
      v10 = v6;
    }

    v11 = *(a2 + 32);
    v12 = *(a2 + 56);
    if (v10 > 0x400)
    {
      v14 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
      if (!v14)
      {
LABEL_20:
        free(v14);
LABEL_21:
        if (v6 > 0x2000)
        {
          free(v8);
        }

        return;
      }

      v16 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v9);
      v14 = v24 - v13;
      bzero(v24 - v13, v15);
      v16 = v10;
    }

    bzero(v14, 8 * v16);
    md::LabelLineSegment::computeRadiusOfCurvature((v11 + 8 * v12), a1[23], *(a2 + 16), v14);
    if (a1[23])
    {
      v17 = 0;
      v18 = 8 * a1[23];
      v19 = (v5 + 3);
      do
      {
        v20 = 512.0;
        if (v17 && v18 - 8 != v17)
        {
          v20 = *&v14[v17] * 512.0;
        }

        *(v19 - 3) = 32512;
        *v19 = 0;
        v21 = (26.0 / v20);
        v22 = 31 - __clz(v21);
        if (v21)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        *(v19 - 1) = v23;
        v17 += 8;
        v19 += 4;
      }

      while (v18 != v17);
    }

    if (v10 < 0x401)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a1[23] >= 2u)
  {
    md::LabelLineSegment::createPointList(a1, a2);
    v4 = (*(*a1 + 64))(a1);
    v5 = v4;
    v6 = a1[23];
    if (v6 > 0x2000)
    {
      v9 = malloc_type_malloc(a1[23], 0x100004077774924uLL);
      if (!v9)
      {
        return;
      }

      v8 = v9;
      v10 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      v8 = v24 - v7;
      bzero(v24 - v7, v6);
      v10 = v6;
    }

    v11 = *(a2 + 32);
    v12 = *(a2 + 56);
    if (v10 > 0x400)
    {
      v14 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
      if (!v14)
      {
LABEL_20:
        free(v14);
LABEL_21:
        if (v6 > 0x2000)
        {
          free(v8);
        }

        return;
      }

      v16 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v9);
      v14 = v24 - v13;
      bzero(v24 - v13, v15);
      v16 = v10;
    }

    bzero(v14, 8 * v16);
    md::LabelLineSegment::computeRadiusOfCurvature((v11 + 8 * v12), a1[23], *(a2 + 16), v14);
    if (a1[23])
    {
      v17 = 0;
      v18 = 8 * a1[23];
      v19 = (v5 + 3);
      do
      {
        v20 = 512.0;
        if (v17 && v18 - 8 != v17)
        {
          v20 = *&v14[v17] * 512.0;
        }

        *(v19 - 3) = 32512;
        *v19 = 0;
        v21 = (1000.0 / v20);
        v22 = 31 - __clz(v21);
        if (v21)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        *(v19 - 1) = v23;
        v17 += 8;
        v19 += 4;
      }

      while (v18 != v17);
    }

    if (v10 < 0x401)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

{
  v27[1] = *MEMORY[0x1E69E9840];
  if (a1[23] >= 2u)
  {
    md::LabelLineSegment::createPointList(a1, a2);
    v4 = (*(*a1 + 64))(a1);
    v5 = v4;
    v6 = a1[23];
    if (v6 > 0x2000)
    {
      v10 = malloc_type_malloc(a1[23], 0x100004077774924uLL);
      if (!v10)
      {
        return;
      }

      v8 = v10;
      v9 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      v8 = v27 - v7;
      bzero(v27 - v7, v6);
      v9 = v6;
    }

    v11 = memset(v8, 127, v9);
    v8[a1[23] - 1] = 1;
    *v8 = 1;
    v12 = *(a2 + 32);
    v13 = *(a2 + 56);
    v14 = a1[23];
    if (v14 > 0x400)
    {
      v16 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
      if (!v16)
      {
LABEL_20:
        free(v16);
LABEL_21:
        if (v6 > 0x2000)
        {
          free(v8);
        }

        return;
      }

      v18 = a1[23];
    }

    else
    {
      MEMORY[0x1EEE9AC00](v11);
      v16 = v27 - v15;
      bzero(v27 - v15, v17);
      v18 = v14;
    }

    bzero(v16, 8 * v18);
    md::LabelLineSegment::computeRadiusOfCurvature((v12 + 8 * v13), a1[23], *(a2 + 16), v16);
    v19 = a1[23];
    if (a1[23])
    {
      v20 = 0;
      v21 = (v5 + 3);
      do
      {
        v22 = 512.0;
        if (v20 && v19 - 1 != v20)
        {
          v22 = *&v16[8 * v20] * 512.0;
        }

        v23 = v8[v20];
        *(v21 - 3) = v23;
        *(v21 - 2) = v23;
        *v21 = 0;
        v24 = (26.0 / v22);
        v25 = 31 - __clz(v24);
        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        *(v21 - 1) = v26;
        ++v20;
        v21 += 4;
      }

      while (v19 != v20);
    }

    if (v14 < 0x401)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}