BOOL gdc::ComponentStorageWrapper<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)1>>::remove(void *a1, uint64_t a2)
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

uint64_t *stopAndReleaseAnimation(unint64_t a1, int a2, void *a3, unint64_t a4)
{
  v4 = a4;
  v18 = a2;
  result = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(a3, a1);
  if (result)
  {
    v7 = result;
    v15 = v4;
    memset(v16, 0, sizeof(v16));
    v17 = *(result + 14);
    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(v16, result[4]);
    v8 = v7[5];
    if (!v8)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v9 = *(v8 + 16);
      if (!*(&v16[0] + 1))
      {
        goto LABEL_19;
      }

      v10 = vcnt_s8(*(v16 + 8));
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = *(v8 + 16);
        if (*(&v16[0] + 1) <= v9)
        {
          v11 = v9 % *(&v16[0] + 1);
        }
      }

      else
      {
        v11 = (*(&v16[0] + 1) - 1) & v9;
      }

      v12 = *(*&v16[0] + 8 * v11);
      if (!v12 || (v13 = *v12) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v14 = v13[1];
        if (v14 == v9)
        {
          break;
        }

        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= *(&v16[0] + 1))
          {
            v14 %= *(&v16[0] + 1);
          }
        }

        else
        {
          v14 &= *(&v16[0] + 1) - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_19;
        }

LABEL_18:
        v13 = *v13;
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      if (*(v13 + 4) != v9)
      {
        goto LABEL_18;
      }

      v8 = *v8;
      if (!v8)
      {
LABEL_21:
        v19 = &v18;
        [std::__hash_table<std::__hash_value_type<int VKTimedAnimation * {:std::__unordered_map_hasher<int :{std::__hash_value_type<int, VKTimedAnimation * {__strong}>, std::hash<int>, std::equal_to<int>, true>, std::__unordered_map_equal<int, std::__hash_value_type<int, VKTimedAnimation * {__strong}>, std::equal_to<int>, std::hash<int>, true>, std::allocator<std::__hash_value_type<int, VKTimedAnimation * {__strong}>>>::__emplace_unique_key_args<int, std::piecewise_construct_t const&, std::tuple<int const&>, std::tuple<>>(v16, a2, &v19)[3], "stopAnimation:", v15}strong}>];
        return std::__hash_table<std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::__unordered_map_hasher<int,std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,VKTimedAnimation * {__strong}>>>::~__hash_table(v16);
      }
    }
  }

  return result;
}

void sub_1B2D251DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::__unordered_map_hasher<int,std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,VKTimedAnimation * {__strong}>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void gdc::ComponentStorageWrapper<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)1>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)1>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)0>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)0>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::StopAnimationRequest<(arComponents::StopAnimationType)0>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::Logic<md::ARAnimationLogic,md::ARAnimationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x148CB13E59522D82 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>(uint64_t *a1, void *a2)
{
  v4 = gdc::Context::context<md::ARLogicContext>(a2);
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v5 && (v6 = v5[5], *(v6 + 8) == 0x1AF456233693CD46))
  {
    v7 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
  }

  result = gdc::Context::context<md::LabelsExternalMeshContext>(a2);
  *a1 = v4;
  a1[1] = v7;
  a1[2] = result;
  return result;
}

void *gdc::Context::context<md::LabelsExternalMeshContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xF409241CDA31AF08);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xF409241CDA31AF08)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAnimationLogic,md::ARAnimationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x148CB13E59522D82)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAnimationLogic,md::ARAnimationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x148CB13E59522D82)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAnimationLogic,md::ARAnimationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x148CB13E59522D82)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAnimationLogic,md::ARAnimationContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x148CB13E59522D82)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>,gdc::TypeList<>>::buildRequiredTuple<md::ARLogicContext,md::CameraContext,md::LabelsExternalMeshContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARAnimationContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARAnimationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EF588;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARAnimationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EF588;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void *md::ARAnimationLogic::didBecomeInactive(md::ARAnimationLogic *this)
{
  v2 = gdc::Registry::storage<arComponents::AnimationInfo>(*(this + 15));
  v3 = v2[7];
  v4 = v2[8];
  if (v3 != v4)
  {
    v5 = v2[10];
    do
    {
      stopAndReleaseAnimation(*v5, *(v5 + 8), this + 16, 0);
      v5 += 16;
      v3 += 8;
    }

    while (v3 != v4);
  }

  result = gdc::Registry::storage<arComponents::AnimationInfo>(*(this + 15));
  v7 = result;
  if (result[29])
  {
    v8 = result[28];
    if (v8)
    {
      v9 = result[31];
      v10 = result[7];
      v11 = (result[8] - v10) >> 3;
      do
      {
        result = std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, v10, v11);
        v8 = *v8;
      }

      while (v8);
    }
  }

  v7[8] = v7[7];
  v7[11] = v7[10];
  return result;
}

void md::ARAnimationLogic::~ARAnimationLogic(md::ARAnimationLogic *this)
{
  md::ARAnimationLogic::~ARAnimationLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EEF48;
  v2 = *(this + 23);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    do
    {
      v4 = *v3;
      std::__hash_table<std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::__unordered_map_hasher<int,std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,VKTimedAnimation * {__strong}>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,VKTimedAnimation * {__strong}>>>::~__hash_table((v3 + 3));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(this + 16);
  *(this + 16) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t md::LabelStyle::getZoomRange(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    v3 = v2;
    std::function<BOOL ()(unsigned char)>::operator()(*(a1 + 24), v2);
    if (v4)
    {
      break;
    }

    ++v2;
    if (v3 >= 0x17)
    {
      v2 = -4;
LABEL_6:
      v6 = 252;
      return v2 | (v6 << 8);
    }
  }

  std::function<BOOL ()(unsigned char)>::operator()(*(a1 + 24), 23);
  if (v5)
  {
    goto LABEL_6;
  }

  if (v2 <= 0x16u)
  {
    v8 = 22;
    while (1)
    {
      std::function<BOOL ()(unsigned char)>::operator()(*(a1 + 24), v8);
      if (v9)
      {
        break;
      }

      if (--v8 < v2)
      {
        v6 = 0;
        return v2 | (v6 << 8);
      }
    }

    v6 = v8 + 1;
  }

  else
  {
    v6 = 0;
    v2 = 23;
  }

  return v2 | (v6 << 8);
}

void std::function<BOOL ()(unsigned char)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v4);
  }

  else
  {
    v2 = std::__throw_bad_function_call[abi:nn200100]();
    md::LabelStyle::styleName(v2, v3);
  }
}

void md::LabelStyle::styleName(md::LabelStyle *this, uint64_t *a2)
{
  v4 = *a2;
  if (v4)
  {
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v11, v4, v5);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    if (v14 == 1)
    {
      v6 = v11[3];
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = "";
      if (v7)
      {
        v10 = *(v7 + 104);
        if (v10)
        {
          v9 = v10;
        }
      }

      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(this, v9);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    else
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(this, "");
    }

    if (v14 == 1)
    {
      (*(*v11 + 56))(v11);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }
  }

  else
  {

    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(this, "<<NO STYLE RESOLVED>>");
  }
}

void sub_1B2D25F8C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a14 == 1)
  {
    (*(*a10 + 56))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<BOOL ()(unsigned char)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(unsigned char)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::LabelStyle::updateZoomInvariantStyles(void)::$_3,std::allocator<md::LabelStyle::updateZoomInvariantStyles(void)::$_3>,BOOL ()(unsigned char)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(**(a1 + 8) + 24);
  if (*a2 >= 0x17u)
  {
    v3 = 23;
  }

  else
  {
    v3 = *a2;
  }

  return gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v2, 460, v3, 1u, 0);
}

uint64_t std::__function::__func<md::LabelStyle::updateZoomInvariantStyles(void)::$_3,std::allocator<md::LabelStyle::updateZoomInvariantStyles(void)::$_3>,BOOL ()(unsigned char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EF688;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::LabelStyle::updateZoomInvariantStyles(void)::$_2,std::allocator<md::LabelStyle::updateZoomInvariantStyles(void)::$_2>,BOOL ()(unsigned char)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(**(a1 + 8) + 24);
  if (*a2 >= 0x17u)
  {
    v3 = 23;
  }

  else
  {
    v3 = *a2;
  }

  return gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v2, 128, v3, 1u, 0);
}

uint64_t std::__function::__func<md::LabelStyle::updateZoomInvariantStyles(void)::$_2,std::allocator<md::LabelStyle::updateZoomInvariantStyles(void)::$_2>,BOOL ()(unsigned char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EF640;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<md::LabelStyle::updateZoomInvariantStyles(void)::$_1,std::allocator<md::LabelStyle::updateZoomInvariantStyles(void)::$_1>,BOOL ()(unsigned char)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(**(a1 + 8) + 24);
  if (*a2 >= 0x17u)
  {
    v3 = 23;
  }

  else
  {
    v3 = *a2;
  }

  return gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v2, 123, v3, 1, 0) != 0;
}

uint64_t std::__function::__func<md::LabelStyle::updateZoomInvariantStyles(void)::$_1,std::allocator<md::LabelStyle::updateZoomInvariantStyles(void)::$_1>,BOOL ()(unsigned char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EF5F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::LabelStyle::updateZoomInvariantStyles(void)::$_0,std::allocator<md::LabelStyle::updateZoomInvariantStyles(void)::$_0>,BOOL ()(unsigned char)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(**(a1 + 8) + 24);
  if (*a2 >= 0x17u)
  {
    v3 = 23;
  }

  else
  {
    v3 = *a2;
  }

  return gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v2, 91, v3, 1u, 0);
}

uint64_t std::__function::__func<md::LabelStyle::updateZoomInvariantStyles(void)::$_0,std::allocator<md::LabelStyle::updateZoomInvariantStyles(void)::$_0>,BOOL ()(unsigned char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EF5B0;
  a2[1] = v2;
  return result;
}

uint64_t *md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(uint64_t a1)
{
  v49 = 0;
  v50 = 1;
  v2 = *(a1 + 336);
  v3 = *(a1 + 344);
  while (1)
  {
    if (v2 == v3)
    {
      goto LABEL_13;
    }

    v4 = !*v2 && *(v2 + 1) == 0;
    if (v4 && *(v2 + 2) == 1)
    {
      break;
    }

    v2 += 16;
  }

  if (v2 == v3)
  {
LABEL_13:
    operator new();
  }

  v6 = *(v2 + 8);
  if ((*(v6 + 12) & 1) == 0)
  {
    v7 = *v6;
    *(v6 + 12) = 1;
    if (*a1)
    {
      v8 = md::LabelStyle::styleQueryForComponent(a1, 0, 0);
      v9 = *v8;
      if (*v8)
      {
        v10 = v8[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v45, v9, v10);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        if (v48 != 1)
        {
          goto LABEL_79;
        }

        v11 = *(a1 + 16);
        v12 = *(a1 + 88);
        v13 = *(a1 + 93);
        v14 = *(a1 + 104);
        if (v14 >= 0x17)
        {
          v15 = 23;
        }

        else
        {
          v15 = v14;
        }

        *(v7 + 52) = 0u;
        *(v7 + 40) = 0u;
        *(v7 + 24) = 0u;
        *(v7 + 8) = 0u;
        if (*(v7 + 95) < 0)
        {
          **(v7 + 72) = 0;
          *(v7 + 80) = 0;
        }

        else
        {
          *(v7 + 72) = 0;
          *(v7 + 95) = 0;
        }

        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(120, 1, v45[3], 0);
        *(v7 + 16) = v16;
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(121, 1, v45[3], 0);
        *(v7 + 20) = v17;
        v18 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(v45[3], 133, v15, 1, 0);
        v19 = v18;
        if (v18 <= -3)
        {
          v19 = -3;
        }

        if (v19 >= 7)
        {
          LOBYTE(v19) = 7;
        }

        if ((v18 - 8) >= 0xF5u)
        {
          LOBYTE(v19) = v18;
        }

        *(v7 + 63) = v19;
        *(v7 + 56) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v45[3], 91, v15, 1u, 0);
        v20 = *(a1 + 241);
        if (v20)
        {
          v20 = v15 >= *(v7 + 16);
        }

        *(v7 + 60) = v20;
        if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v45[3], 460, v15, 1u, 0))
        {
          v21 = v15 >= *(v7 + 16);
        }

        else
        {
          v21 = 0;
        }

        *(v7 + 59) = v21;
        if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v45[3], 128, v15, 1u, 0))
        {
          v22 = v15 >= *(v7 + 20);
        }

        else
        {
          v22 = 0;
        }

        *(v7 + 58) = v22;
        *(v7 + 57) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v45[3], 129, v15, 1u, 0);
        if (v13 <= 2)
        {
          if (v13)
          {
            if (v13 != 1)
            {
              v23 = v45[3];
LABEL_51:
              v24 = 23;
              v27 = v23;
              v28 = 23;
              goto LABEL_55;
            }

            v23 = v45[3];
            v24 = 22;
            v27 = v23;
            v28 = 22;
          }

          else
          {
            v23 = v45[3];
            v24 = 21;
            v27 = v23;
            v28 = 21;
          }

LABEL_55:
          if ((gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v27, v28, v15) & 1) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        if ((v13 - 4) >= 2)
        {
          if (v13 != 3)
          {
            v23 = v45[3];
LABEL_56:
            v24 = 122;
            goto LABEL_57;
          }

          v23 = v45[3];
          v24 = 32;
          v25 = v23;
          v26 = 32;
        }

        else
        {
          v23 = v45[3];
          v24 = 39;
          v25 = v23;
          v26 = 39;
        }

        if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v25, v26, v15))
        {
LABEL_57:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v23, v24, v15, 1u, 0);
          *(v7 + 24) = v29;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v45[3], 131, v15, 1u, 0);
          *(v7 + 28) = v30;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v45[3], 226, v15, 1u, 0);
          *(v7 + 32) = v31;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v45[3], 227, v15, 1u, 0);
          *(v7 + 36) = v32;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v45[3], 228, v15, 1u, 0);
          *(v7 + 40) = v33;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v45[3], 432, v15, 1u, 0);
          *(v7 + 52) = v34;
          __p.__r_.__value_.__s.__data_[0] = 1;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v45[3], 476, v15, 1u, &__p);
          if (!__p.__r_.__value_.__s.__data_[0])
          {
            v35 = -1.0;
          }

          *(v7 + 44) = v35;
          v36 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v45[3], 233, v15, 1, 0);
          *(v7 + 61) = gss::MaskToLabelPosition(v36);
          __p.__r_.__value_.__s.__data_[0] = 1;
          v37 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v45[3], 477, v15, 1, &__p);
          if (__p.__r_.__value_.__s.__data_[0] == 1)
          {
            v38 = gss::MaskToLabelPosition(v37);
          }

          else
          {
            v38 = *(v7 + 61);
          }

          *(v7 + 62) = v38;
          *(v7 + 8) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(v45[3], 219, v15, 1, 0);
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v45[3], 130, v15, 1u, 0);
          *(v7 + 48) = ((v12 * 1.3) * *(v11 + 20 * v13)) * v39;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, v45[3], 0x71u, v15, 1);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external((v7 + 72), p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v42 = *(v7 + 95);
          if (v42 < 0)
          {
            v42 = *(v7 + 80);
          }

          if (!v42)
          {
            if (*(v11 + 128))
            {
              v43 = "roadArrow_hybrid";
            }

            else
            {
              v43 = "roadArrow_standard";
            }

            std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external((v7 + 72), v43);
          }

          *(v7 + 12) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v45[3], 409, v15, 1, 0);
          *(v7 + 64) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v45[3], 411, v15, 1, 0);
          if (v48)
          {
            (*(*v45 + 56))(v45);
          }

LABEL_79:
          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v47);
          }

          if (v46)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v46);
          }

          return v6;
        }

        goto LABEL_51;
      }
    }
  }

  return v6;
}

void sub_1B2D26BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *geo::linear_map<std::pair<md::LabelStyle::StyleQueryOptions,md::LabelStyleGroupType>,std::unique_ptr<md::LabelStyleGroupInfo>,std::equal_to<std::pair<md::LabelStyle::StyleQueryOptions,md::LabelStyleGroupType>>,std::allocator<std::pair<std::pair<md::LabelStyle::StyleQueryOptions,md::LabelStyleGroupType>,std::unique_ptr<md::LabelStyleGroupInfo>>>,std::vector<std::pair<std::pair<md::LabelStyle::StyleQueryOptions,md::LabelStyleGroupType>,std::unique_ptr<md::LabelStyleGroupInfo>>>>::emplace<std::pair<md::LabelStyle::StyleQueryOptions,md::LabelStyleGroupType> const&,std::unique_ptr<md::LabelStyleGroupInfo>>(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t **a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = *a3;
  *a3 = 0;
  v9 = *a1;
  v8 = a1[1];
  if (*a1 == v8)
  {
    goto LABEL_15;
  }

  v10 = *a1;
  while (1)
  {
    v11 = v4 == *v10 && v5 == v10[1];
    if (v11 && v6 == v10[2])
    {
      break;
    }

    v10 += 16;
    if (v10 == v8)
    {
      goto LABEL_15;
    }
  }

  if (v10 == v8)
  {
LABEL_15:
    v13 = a1[2];
    if (v8 >= v13)
    {
      v15 = v8 - v9;
      v16 = (v8 - v9) >> 4;
      v17 = v16 + 1;
      if ((v16 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v9;
      if (v18 >> 3 > v17)
      {
        v17 = v18 >> 3;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF0)
      {
        v19 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v16;
      v21 = 16 * v16;
      *v21 = v4;
      *(v21 + 1) = v5;
      *(v21 + 2) = v6;
      *(v21 + 8) = v7;
      v14 = (16 * v16 + 16);
      v22 = (v21 - 16 * v20);
      memcpy(v22, v9, v15);
      *a1 = v22;
      a1[1] = v14;
      a1[2] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v8 = v4;
      v8[1] = v5;
      v8[2] = v6;
      v14 = v8 + 16;
      *(v8 + 1) = v7;
    }

    a1[1] = v14;
    return v14 - 16;
  }

  else if (v7)
  {
    std::default_delete<md::LabelStyleGroupInfo>::operator()[abi:nn200100](v7);
  }

  return v10;
}

void sub_1B2D26DA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<md::LabelStyleGroupInfo>::operator()[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

gss::zone_mallocator *std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::push_back[abi:nn200100](gss::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = gss::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t *md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(uint64_t a1)
{
  v58 = 0;
  v59 = 2;
  v2 = *(a1 + 336);
  v3 = *(a1 + 344);
  while (1)
  {
    if (v2 == v3)
    {
      goto LABEL_13;
    }

    v4 = !*v2 && *(v2 + 1) == 0;
    if (v4 && *(v2 + 2) == 2)
    {
      break;
    }

    v2 += 16;
  }

  if (v2 == v3)
  {
LABEL_13:
    operator new();
  }

  v6 = *(v2 + 8);
  if ((*(v6 + 12) & 1) == 0)
  {
    v7 = *v6;
    *(v6 + 12) = 1;
    if (*a1)
    {
      v8 = md::LabelStyle::styleQueryForComponent(a1, 0, 0);
      v9 = *v8;
      if (*v8)
      {
        v10 = v8[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v54, v9, v10);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        if (v57 == 1)
        {
          v11 = *(a1 + 16);
          v12 = *(a1 + 88);
          v13 = *(a1 + 104);
          if (v13 >= 0x17)
          {
            v14 = 23;
          }

          else
          {
            v14 = v13;
          }

          md::LabelPointStyleGroup::clear(v7);
          v15 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v54 + 24), 124, v14, 1u, 0);
          *(v7 + 71) = v15;
          v16 = *(a1 + 142) & v15 ^ 1;
          __p.__r_.__value_.__s.__data_[0] = 1;
          v17 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v54 + 24), 215, v14, 1u, &__p);
          if (__p.__r_.__value_.__s.__data_[0])
          {
            v18 = v17;
          }

          else
          {
            v18 = v16;
          }

          *(v7 + 72) = v18;
          __p.__r_.__value_.__s.__data_[0] = 1;
          v19 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v54 + 24), 216, v14, 1u, &__p);
          if (__p.__r_.__value_.__s.__data_[0])
          {
            v20 = v19;
          }

          else
          {
            v20 = v16;
          }

          *(v7 + 73) = v20;
          *(v7 + 70) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v54 + 24), 206, v14, 1u, 0);
          *(v7 + 60) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v54 + 24), 159, v14, 1, 0);
          v21 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(v11 + 120), *(*(v11 + 120) + 8));
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v61, *(v54 + 24), 286, v14, 1u, 0, v22, v23);
          *&__p.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v61.f32)), vdupq_n_s32(0x37800080u));
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 486, v14, 1u, 0);
          md::AccessibilityHelper::luminanceAdjustedColor(&v61, *v21, &__p, v24);
          v25 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v61, vdupq_n_s32(0x437F0000u))));
          *(v7 + 65) = vuzp1_s8(v25, v25).u32[0];
          *(v7 + 69) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v54 + 24), 378, v14, 1, 0);
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, *(v54 + 24), 0x71u, v14, 1);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external((v7 + 80), p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, *(v54 + 24), 0x16Eu, v14, 1);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v28 = __p.__r_.__value_.__l.__size_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v29 = &__p;
          }

          else
          {
            v29 = __p.__r_.__value_.__r.__words[0];
          }

          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external((v7 + 112), v29, v28);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, *(v54 + 24), 0x181u, v14, 1);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v30 = __p.__r_.__value_.__l.__size_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &__p;
          }

          else
          {
            v31 = __p.__r_.__value_.__r.__words[0];
          }

          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external((v7 + 144), v31, v30);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, *(v54 + 24), 0xBCu, v14, 1);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v32 = __p.__r_.__value_.__l.__size_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = &__p;
          }

          else
          {
            v33 = __p.__r_.__value_.__r.__words[0];
          }

          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external((v7 + 240), v33, v32);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, *(v54 + 24), 0xB8u, v14, 1);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v34 = __p.__r_.__value_.__l.__size_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v35 = &__p;
          }

          else
          {
            v35 = __p.__r_.__value_.__r.__words[0];
          }

          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external((v7 + 176), v35, v34);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, *(v54 + 24), 0xD0u, v14, 1);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v36 = __p.__r_.__value_.__l.__size_;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = &__p;
          }

          else
          {
            v37 = __p.__r_.__value_.__r.__words[0];
          }

          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external((v7 + 208), v37, v36);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 152, v14, 1u, 0);
          v39 = v38;
          __p.__r_.__value_.__s.__data_[0] = 1;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 153, v14, 1u, &__p);
          if (!__p.__r_.__value_.__s.__data_[0])
          {
            v40 = v39;
          }

          *(v7 + 24) = v40 * v12;
          __p.__r_.__value_.__s.__data_[0] = 1;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 156, v14, 1u, &__p);
          if (!__p.__r_.__value_.__s.__data_[0])
          {
            v41 = v39;
          }

          *(v7 + 28) = v41 * v12;
          __p.__r_.__value_.__s.__data_[0] = 1;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 154, v14, 1u, &__p);
          if (!__p.__r_.__value_.__s.__data_[0])
          {
            v42 = v39;
          }

          *(v7 + 36) = v42 * v12;
          __p.__r_.__value_.__s.__data_[0] = 1;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 155, v14, 1u, &__p);
          if (!__p.__r_.__value_.__s.__data_[0])
          {
            v43 = v39;
          }

          *(v7 + 32) = v43 * v12;
          __p.__r_.__value_.__s.__data_[0] = 1;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 230, v14, 1u, &__p);
          if (!__p.__r_.__value_.__s.__data_[0])
          {
            v44 = v39;
          }

          *(v7 + 52) = v44 * v12;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 231, v14, 1u, 0);
          *(v7 + 56) = v45 * v12;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 281, v14, 1u, 0);
          *(v7 + 40) = v46 * v12;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 282, v14, 1u, 0);
          *(v7 + 44) = v47 * v12;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 283, v14, 1u, 0);
          *(v7 + 48) = v48 * v12;
          *(v7 + 64) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v54 + 24), 229, v14, 1, 0);
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v54 + 24), 402, v14, 1u, 0);
          *(v7 + 8) = v49;
          *(v7 + 12) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(v54 + 24), 112, v14, 1, 0);
          v50 = *(v54 + 24);
          if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v50, 0xE8u, v14))
          {
            v51 = 232;
          }

          else
          {
            v51 = 112;
          }

          *(v7 + 16) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v50, v51, v14, 1, 0);
          v52 = v54;
          *(v7 + 20) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned char>(*(v54 + 24), 369, v14, 0);
          if (v57)
          {
            (*(*v52 + 56))(v52);
          }
        }

        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v56);
        }

        if (v55)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v55);
        }
      }
    }
  }

  return v6;
}

void sub_1B2D276E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v19 = v3 | 1;
  v20 = 3;
  v4 = *(a1 + 336);
  v5 = *(a1 + 344);
  if (v4 == v5)
  {
    goto LABEL_17;
  }

  v6 = v3 >> 8;
  while (1)
  {
    v7 = *v4 == 1 && *(v4 + 1) == v6;
    if (v7 && *(v4 + 2) == 3)
    {
      break;
    }

    v4 += 16;
    if (v4 == v5)
    {
      goto LABEL_17;
    }
  }

  if (v4 == v5)
  {
LABEL_17:
    operator new();
  }

  v9 = *(v4 + 8);
  if ((*(v9 + 12) & 1) == 0)
  {
    v10 = *v9;
    *(v9 + 12) = 1;
    if (*a1)
    {
      v11 = md::LabelStyle::styleQueryForComponent(a1, 1, a2);
      v12 = *v11;
      if (*v11)
      {
        v13 = v11[1];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v15, v12, v13);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        if (v18 == 1)
        {
          md::LabelIconStyleGroup::update(v10, &v15, *(a1 + 16), *(a1 + 93), *(a1 + 104), *(a1 + 88));
          if (v18)
          {
            (*(*v15 + 56))(v15);
          }
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v17);
        }

        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }
      }
    }
  }

  return v9;
}

void sub_1B2D27988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(uint64_t a1)
{
  v28 = 6;
  v29 = 4;
  v2 = *(a1 + 336);
  v3 = *(a1 + 344);
  while (1)
  {
    if (v2 == v3)
    {
      goto LABEL_13;
    }

    v4 = *v2 == 6 && *(v2 + 1) == 0;
    if (v4 && *(v2 + 2) == 4)
    {
      break;
    }

    v2 += 16;
  }

  if (v2 == v3)
  {
LABEL_13:
    operator new();
  }

  v6 = *(v2 + 8);
  if ((*(v6 + 12) & 1) == 0)
  {
    v7 = *v6;
    *(v6 + 12) = 1;
    if (*a1)
    {
      v8 = md::LabelStyle::styleQueryForComponent(a1, 6, 0);
      v9 = *v8;
      if (*v8)
      {
        v10 = v8[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v24, v9, v10);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        if (v27 == 1)
        {
          v11 = *(a1 + 88);
          v12 = *(a1 + 104);
          v13 = v12 >= 0x17 ? 23 : v12;
          *(v7 + 56) = 0;
          *(v7 + 40) = 0u;
          *(v7 + 24) = 0u;
          *(v7 + 8) = 0u;
          v30 = 1;
          v14 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 212, v13, 1, &v30);
          v15 = v30 ? v14 : 1;
          *(v7 + 45) = v15;
          *(v7 + 46) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 374, v13, 1, 0);
          *(v7 + 47) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 339, v13, 1, 0);
          *(v7 + 48) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 365, v13, 1, 0);
          *(v7 + 49) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 367, v13, 1, 0);
          *(v7 + 50) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 368, v13, 1, 0);
          *(v7 + 51) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 375, v13, 1, 0);
          *(v7 + 52) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 376, v13, 1, 0);
          *(v7 + 53) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 377, v13, 1, 0);
          *(v7 + 56) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 409, v13, 1, 0);
          *(v7 + 60) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 410, v13, 1, 0);
          *(v7 + 54) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 411, v13, 1, 0);
          *(v7 + 55) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 412, v13, 1, 0);
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v24[3], 284, v13, 1u, 0);
          *(v7 + 32) = v16 * v11;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v24[3], 402, v13, 1u, 0);
          *(v7 + 8) = v17;
          *(v7 + 12) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 112, v13, 1, 0);
          v18 = v24[3];
          v19 = gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v18, 0xE8u, v13) ? 232 : 112;
          *(v7 + 16) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v18, v19, v13, 1, 0);
          v20 = v24[3];
          *(v7 + 20) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned char>(v20, 369, v13, 0);
          *(v7 + 24) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v20, 364, v13, 1, 0);
          *(v7 + 28) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v24[3], 372, v13, 1, 0);
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v24[3], 479, v13, 1u, 0);
          *(v7 + 40) = v21;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v24[3], 475, v13, 1u, 0);
          *(v7 + 36) = v22;
          if (v27)
          {
            (*(*v24 + 56))(v24);
          }
        }

        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v26);
        }

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v25);
        }
      }
    }
  }

  return v6;
}

void sub_1B2D27F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::LabelStyle::prepareStyleGroup<md::LabelComponentStyleGroup>(uint64_t a1)
{
  v23 = 6;
  v24 = 5;
  v2 = *(a1 + 336);
  v3 = *(a1 + 344);
  while (1)
  {
    if (v2 == v3)
    {
      goto LABEL_13;
    }

    v4 = *v2 == 6 && *(v2 + 1) == 0;
    if (v4 && *(v2 + 2) == 5)
    {
      break;
    }

    v2 += 16;
  }

  if (v2 == v3)
  {
LABEL_13:
    operator new();
  }

  v6 = *(v2 + 8);
  if ((*(v6 + 12) & 1) == 0)
  {
    v7 = *v6;
    *(v6 + 12) = 1;
    if (*a1)
    {
      v8 = md::LabelStyle::styleQueryForComponent(a1, 6, 0);
      v9 = *v8;
      if (*v8)
      {
        v10 = v8[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v19, v9, v10);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        if (v22 == 1)
        {
          v11 = *(a1 + 88);
          v12 = *(a1 + 104);
          v13 = v12 >= 0x17 ? 23 : v12;
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v19[3], 444, v13, 1u, 0);
          *(v7 + 8) = v14 * v11;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v19[3], 443, v13, 1u, 0);
          *(v7 + 12) = v15 * v11;
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v19[3], 445, v13, 1u, 0);
          *(v7 + 16) = v16;
          v17 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v19[3], 233, v13, 1, 0);
          *(v7 + 20) = gss::MaskToLabelPosition(v17);
          if (v22)
          {
            (*(*v19 + 56))(v19);
          }
        }

        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        }
      }
    }
  }

  return v6;
}

void sub_1B2D28214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::LabelStyle::prepareAlternateStyles(md::LabelStyle *this)
{
  v32[4] = *MEMORY[0x1E69E9840];
  if (*(this + 145))
  {
    v2 = 0;
    __asm
    {
      FMOV            V0.4S, #1.0
      FMOV            V10.2S, #1.0
    }

    v9 = this;
    do
    {
      v10 = *(v9 + 4);
      if (v10)
      {
        goto LABEL_4;
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v28, *this + 240);
      if (v2)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      LODWORD(v32[0]) = 65623;
      WORD2(v32[0]) = v18;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::push_back[abi:nn200100](&v28, v32);
      v19 = *this;
      v20 = *(*this + 16);
      if (v20)
      {
        v21 = std::__shared_weak_count::lock(v20);
        if (v21)
        {
          v22 = v21;
          v23 = *(v19 + 8);
          if (v23)
          {
            std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v32, &v28);
            gss::FeatureAttributeSet::sort(v32[0], v32[1]);
            gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v27, v23, v32, (*this + 272));
            v24 = v27;
            v27 = 0uLL;
            v25 = *(v9 + 5);
            *(v9 + 2) = v24;
            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v25);
              if (*(&v27 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*(&v27 + 1));
              }
            }

            std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v32);
            v26 = *(v9 + 4);
            std::__shared_weak_count::__release_shared[abi:nn200100](v22);
            std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v28);
            if (!v26)
            {
              goto LABEL_33;
            }

            v10 = *(v9 + 4);
LABEL_4:
            v11 = *(v9 + 5);
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v28, v10, v11);
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v11);
            }

            if (v31 == 1)
            {
              v12 = *(this + 2);
              v13 = *(this + 26);
              v14 = *(this + 22);
              v15 = *(this + 93);
              *(v9 + 360) = 1;
              if (v13 >= 0x17)
              {
                v16 = 23;
              }

              else
              {
                v16 = v13;
              }

              *(v9 + 361) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v28[3], 123, v16, 1, 0);
              *(v9 + 362) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v28[3], 378, v16, 1, 0);
              v17 = *(v9 + 46);
              if (!v17)
              {
                operator new();
              }

              md::LabelIconStyleGroup::update(v17, &v28, v12, v15, v13, v14);
              if (v31)
              {
                (*(*v28 + 56))(v28);
              }
            }

            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v30);
            }

            if (v29)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v29);
            }

            goto LABEL_33;
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v28);
LABEL_33:
      ++v2;
      v9 = (v9 + 16);
    }

    while (v2 < *(this + 145));
  }

  *(this + 457) = 1;
}

void sub_1B2D285B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B2D287A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::LabelDisplayCoreStyleGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EF6D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2D28BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::LabelDisplayTextStyleGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EF708;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2D28F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::LabelDisplayIconStyleGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EF740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelStyle::populateDebugNode(md::LabelStyle *this, gdc::DebugTreeNode *a2, const md::LabelManager *a3)
{
  v155 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&v152, "Name");
  md::LabelStyle::styleName(&__src, this);
  v6 = v154;
  if ((v154 & 0x8000000000000000) != 0)
  {
    v6 = *(&__src + 1);
    if (*(&__src + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      goto LABEL_218;
    }

    p_src = __src;
  }

  else
  {
    p_src = &__src;
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memmove(&__dst, p_src, v6);
  }

  __dst.__r_.__value_.__s.__data_[v6] = 0;
  gdc::DebugTreeValue::DebugTreeValue(v149, &__dst);
  gdc::DebugTreeNode::addProperty(a2, &v152, v149);
  if (v151 < 0)
  {
    operator delete(v150);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v154 < 0)
  {
    v9 = __src;
    v10 = mdm::zone_mallocator::instance(v8);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v10, v9);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if (*this)
  {
    gss::StylesheetQuery<gss::PropertyID>::debugClientAttributes(&__src, *this);
    std::string::basic_string[abi:nn200100]<0>(&v152, "Client Attributes");
    ChildNode = gdc::DebugTreeNode::createChildNode(a2, &v152);
    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v12 = WORD6(__src);
    if (WORD6(__src))
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = WORD6(__src);
      do
      {
        if ((v15 >= v16) | v13 & 1)
        {
          v17 = v13;
        }

        else
        {
          v14 = (__src + 4 * v15);
          v3 = (__src + DWORD2(__src) + 2 * v15);
          v17 = 1;
        }

        v18 = gss::to_string(*v14);
        std::string::basic_string[abi:nn200100]<0>(&v152, v18);
        gdc::DebugTreeValue::DebugTreeValue(v145, *v3);
        gdc::DebugTreeNode::addProperty(ChildNode, &v152, v145);
        if (v147 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v152.__r_.__value_.__l.__data_);
        }

        v16 = WORD6(__src);
        if (v15 + 1 < WORD6(__src))
        {
          ++v15;
        }

        else
        {
          v15 = WORD6(__src);
        }

        if (v17)
        {
          v13 = 0;
        }

        else
        {
          v13 = v17;
        }
      }

      while (v15 != v12);
    }

    std::string::basic_string[abi:nn200100]<0>(&v152, "Feature Attributes");
    v19 = gdc::DebugTreeNode::createChildNode(a2, &v152);
    if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v152.__r_.__value_.__l.__data_);
    }

    v20 = *(*this + 240);
    v21 = *(*this + 248);
    while (v20 != v21)
    {
      v22 = gss::to_string(*v20);
      std::string::basic_string[abi:nn200100]<0>(&v152, v22);
      gdc::DebugTreeValue::DebugTreeValue(v142, *(v20 + 4));
      gdc::DebugTreeNode::addProperty(v19, &v152, v142);
      if (v144 < 0)
      {
        operator delete(v143);
      }

      if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v152.__r_.__value_.__l.__data_);
      }

      v20 += 8;
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Visible Zoom Range");
  v23 = gdc::DebugTreeNode::createChildNode(a2, &__src);
  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Min");
  gdc::DebugTreeValue::DebugTreeValue(v139, *(this + 112));
  gdc::DebugTreeNode::addProperty(v23, &__src, v139);
  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Max");
  gdc::DebugTreeValue::DebugTreeValue(v136, *(this + 113));
  gdc::DebugTreeNode::addProperty(v23, &__src, v136);
  if (v138 < 0)
  {
    operator delete(v137);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Is Default");
  gdc::DebugTreeValue::DebugTreeValue(v133, *this == 0);
  gdc::DebugTreeNode::addProperty(a2, &__src, v133);
  if (v135 < 0)
  {
    operator delete(v134);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Font Options");
  v24 = gdc::DebugTreeNode::createChildNode(a2, &__src);
  if (v154 < 0)
  {
    operator delete(__src);
  }

  v25 = md::LabelStyle::textStyleGroup(this, 0);
  std::string::basic_string[abi:nn200100]<0>(&__src, "Family Name");
  if (*(v25 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v152, *(v25 + 72), *(v25 + 80));
  }

  else
  {
    v152 = *(v25 + 72);
  }

  gdc::DebugTreeValue::DebugTreeValue(v130, &v152);
  gdc::DebugTreeNode::addProperty(v24, &__src, v130);
  if (v132 < 0)
  {
    operator delete(v131);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Font Size");
  gdc::DebugTreeValue::DebugTreeValue(v127, *(v25 + 100));
  gdc::DebugTreeNode::addProperty(v24, &__src, v127);
  if (v129 < 0)
  {
    operator delete(v128);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Font Expansion");
  gdc::DebugTreeValue::DebugTreeValue(v124, *(v25 + 96));
  gdc::DebugTreeNode::addProperty(v24, &__src, v124);
  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Is Upper Case");
  gdc::DebugTreeValue::DebugTreeValue(v121, *(v25 + 109));
  gdc::DebugTreeNode::addProperty(v24, &__src, v121);
  if (v123 < 0)
  {
    operator delete(v122);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Is Down Case");
  gdc::DebugTreeValue::DebugTreeValue(v118, *(v25 + 110));
  gdc::DebugTreeNode::addProperty(v24, &__src, v118);
  if (v120 < 0)
  {
    operator delete(v119);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Is Title Case");
  gdc::DebugTreeValue::DebugTreeValue(v115, *(v25 + 111));
  gdc::DebugTreeNode::addProperty(v24, &__src, v115);
  if (v117 < 0)
  {
    operator delete(v116);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Is Raised Initial");
  gdc::DebugTreeValue::DebugTreeValue(v112, *(v25 + 108));
  gdc::DebugTreeNode::addProperty(v24, &__src, v112);
  if (v114 < 0)
  {
    operator delete(v113);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Has Small Caps");
  gdc::DebugTreeValue::DebugTreeValue(v109, *(v25 + 112));
  gdc::DebugTreeNode::addProperty(v24, &__src, v109);
  if (v111 < 0)
  {
    operator delete(v110);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Line Style Group");
  v26 = gdc::DebugTreeNode::createChildNode(a2, &__src);
  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Road Crossing Threshold");
  v27 = *(this + 33);
  if (!v27)
  {
    v28 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v27 = *v28;
    *(this + 33) = *v28;
  }

  gdc::DebugTreeValue::DebugTreeValue(v106, *(v27 + 8));
  gdc::DebugTreeNode::addProperty(v26, &__src, v106);
  if (v108 < 0)
  {
    operator delete(v107);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Road Rank");
  v29 = *(this + 33);
  if (!v29)
  {
    v30 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v29 = *v30;
    *(this + 33) = *v30;
  }

  gdc::DebugTreeValue::DebugTreeValue(v103, *(v29 + 16));
  gdc::DebugTreeNode::addProperty(v26, &__src, v103);
  if (v105 < 0)
  {
    operator delete(v104);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Shield Rank");
  v31 = *(this + 33);
  if (!v31)
  {
    v32 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v31 = *v32;
    *(this + 33) = *v32;
  }

  gdc::DebugTreeValue::DebugTreeValue(v100, *(v31 + 20));
  gdc::DebugTreeNode::addProperty(v26, &__src, v100);
  if (v102 < 0)
  {
    operator delete(v101);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Road Label Spacing");
  v33 = *(this + 33);
  if (!v33)
  {
    v34 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v33 = *v34;
    *(this + 33) = *v34;
  }

  gdc::DebugTreeValue::DebugTreeValue(v97, *(v33 + 24));
  gdc::DebugTreeNode::addProperty(v26, &__src, v97);
  if (v99 < 0)
  {
    operator delete(v98);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Arrow Spacing");
  v35 = *(this + 33);
  if (!v35)
  {
    v36 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v35 = *v36;
    *(this + 33) = *v36;
  }

  gdc::DebugTreeValue::DebugTreeValue(v94, *(v35 + 28));
  gdc::DebugTreeNode::addProperty(v26, &__src, v94);
  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Shield Spacing");
  v37 = *(this + 33);
  if (!v37)
  {
    v38 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v37 = *v38;
    *(this + 33) = *v38;
  }

  gdc::DebugTreeValue::DebugTreeValue(v91, *(v37 + 32));
  gdc::DebugTreeNode::addProperty(v26, &__src, v91);
  if (v93 < 0)
  {
    operator delete(v92);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Multi Shield Gap");
  v39 = *(this + 33);
  if (!v39)
  {
    v40 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v39 = *v40;
    *(this + 33) = *v40;
  }

  gdc::DebugTreeValue::DebugTreeValue(v88, *(v39 + 36));
  gdc::DebugTreeNode::addProperty(v26, &__src, v88);
  if (v90 < 0)
  {
    operator delete(v89);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Road With Shield Gap");
  v41 = *(this + 33);
  if (!v41)
  {
    v42 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v41 = *v42;
    *(this + 33) = *v42;
  }

  gdc::DebugTreeValue::DebugTreeValue(v85, *(v41 + 40));
  gdc::DebugTreeNode::addProperty(v26, &__src, v85);
  if (v87 < 0)
  {
    operator delete(v86);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Arrow Height");
  v43 = *(this + 33);
  if (!v43)
  {
    v44 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v43 = *v44;
    *(this + 33) = *v44;
  }

  gdc::DebugTreeValue::DebugTreeValue(v82, *(v43 + 48));
  gdc::DebugTreeNode::addProperty(v26, &__src, v82);
  if (v84 < 0)
  {
    operator delete(v83);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Arrows Visible");
  v45 = *(this + 33);
  if (!v45)
  {
    v46 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v45 = *v46;
    *(this + 33) = *v46;
  }

  if (*(v45 + 56) == 1)
  {
    v47 = *(v45 + 57);
  }

  else
  {
    v47 = 0;
  }

  gdc::DebugTreeValue::DebugTreeValue(v79, v47);
  gdc::DebugTreeNode::addProperty(v26, &__src, v79);
  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Shields Visible");
  v48 = *(this + 33);
  if (!v48)
  {
    v49 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v48 = *v49;
    *(this + 33) = *v49;
  }

  if (*(v48 + 56) == 1)
  {
    v50 = *(v48 + 58);
  }

  else
  {
    v50 = 0;
  }

  gdc::DebugTreeValue::DebugTreeValue(v76, v50);
  gdc::DebugTreeNode::addProperty(v26, &__src, v76);
  if (v78 < 0)
  {
    operator delete(v77);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Road Names Visible");
  v51 = *(this + 33);
  if (!v51)
  {
    v52 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v51 = *v52;
    *(this + 33) = *v52;
  }

  if (*(v51 + 56) == 1)
  {
    v53 = *(v51 + 60);
  }

  else
  {
    v53 = 0;
  }

  gdc::DebugTreeValue::DebugTreeValue(v73, v53);
  gdc::DebugTreeNode::addProperty(v26, &__src, v73);
  if (v75 < 0)
  {
    operator delete(v74);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Offset Position");
  v54 = *(this + 33);
  if (!v54)
  {
    v55 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v54 = *v55;
    *(this + 33) = *v55;
  }

  v56 = *(v54 + 61);
  if (v56 > 0xA)
  {
    v57 = "";
  }

  else
  {
    v57 = off_1E7B3D340[v56];
  }

  std::string::basic_string[abi:nn200100]<0>(&v152, v57);
  gdc::DebugTreeValue::DebugTreeValue(v70, &v152);
  gdc::DebugTreeNode::addProperty(v26, &__src, v70);
  if (v72 < 0)
  {
    operator delete(v71);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Arrow Layer");
  v58 = *(this + 33);
  if (!v58)
  {
    v59 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v58 = *v59;
    *(this + 33) = *v59;
  }

  gdc::DebugTreeValue::DebugTreeValue(v67, *(v58 + 63));
  gdc::DebugTreeNode::addProperty(v26, &__src, v67);
  if (v69 < 0)
  {
    operator delete(v68);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }

  std::string::basic_string[abi:nn200100]<0>(&__src, "Arrow Icon Name");
  v60 = *(this + 33);
  if (!v60)
  {
    v61 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(this);
    v60 = *v61;
    *(this + 33) = *v61;
  }

  v62 = *(v60 + 95);
  if ((v62 & 0x8000000000000000) == 0)
  {
    v63 = (v60 + 72);
    goto LABEL_206;
  }

  v62 = *(v60 + 80);
  if (v62 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_218:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v63 = *(v60 + 72);
LABEL_206:
  if (v62 >= 0x17)
  {
    operator new();
  }

  *(&v152.__r_.__value_.__s + 23) = v62;
  if (v62)
  {
    memmove(&v152, v63, v62);
  }

  v152.__r_.__value_.__s.__data_[v62] = 0;
  gdc::DebugTreeValue::DebugTreeValue(v64, &v152);
  gdc::DebugTreeNode::addProperty(v26, &__src, v64);
  if (v66 < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v152.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v152.__r_.__value_.__l.__data_);
  }

  if (v154 < 0)
  {
    operator delete(__src);
  }
}

void sub_1B2D29E4C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

void gss::StylesheetQuery<gss::PropertyID>::debugClientAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 8);
      if (!v7)
      {
LABEL_21:
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        return;
      }

      __p = 0;
      v17 = 0;
      v18 = 0;
      v8 = *(v7 + 520);
      v9 = *(v7 + 528);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        if (v8)
        {
          v10 = *(v7 + 528);
          v8 = *(v7 + 520);
          if (v10)
          {
            v11 = 0;
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_11:
            v12 = pthread_rwlock_rdlock((v8 + 16));
            if (v12)
            {
              geo::read_write_lock::logFailure(v12, "read lock", v13);
            }

            std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, v17, (v8 + 216), 0, (v8 + 216), *(v8 + 228));
            geo::read_write_lock::unlock((v8 + 16));
            if ((v11 & 1) == 0)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v10);
            }

            std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, v17, (a2 + 272), 0, (a2 + 272), *(a2 + 284));
            goto LABEL_17;
          }

LABEL_10:
          v11 = 1;
          goto LABEL_11;
        }
      }

      else if (v8)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v14 = 0;
      *v15 = 0;
      *&v15[8] = 256;
      gss::DisplayStyle::applyDisplayStyle(gss::DisplayStyleDay, &v14);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, 0, &v14, 0, &v14, *&v15[4]);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>>::insert[abi:nn200100]<geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::Iterator,0>(&__p, v17, (a2 + 272), 0, (a2 + 272), *(a2 + 284));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v14);
LABEL_17:
      gss::ResolveMultiAttributeVectorToMap(&v14, &__p);
      if (&v14 != a1)
      {
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(a1);
        *a1 = v14;
        *(a1 + 8) = *v15;
        *(a1 + 12) = *&v15[4];
        *(a1 + 14) = *&v15[6];
        *&v15[8] = 256;
        v14 = 0;
        *v15 = 0;
      }

      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v14);
      if (__p)
      {
        operator delete(__p);
      }

      goto LABEL_21;
    }
  }
}

void sub_1B2D2A0E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&a9);
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v13);
  _Unwind_Resume(a1);
}

void non-virtual thunk tomd::MapNavLabeler::worldTraitsDidChange(uint64_t this)
{
  v1 = *(*(*(this + 8) + 232) + 31);
  if (*(this + 812) != v1)
  {
    *(this + 812) = v1;
    md::LabelNavEtaLabeler::clearETALabels(*(this + 704));
  }
}

uint64_t non-virtual thunk tomd::MapNavLabeler::setInOverviewMode(uint64_t this, int a2)
{
  if (*(this + 122) != a2)
  {
    *(this + 122) = a2;
    v2 = *(this + 16);
    v3 = atomic_load((v2 + 3053));
    if (v3)
    {
      v4 = *(v2 + 136);
      if (v4)
      {
        this = *(v4 + 56);
        if (this)
        {
          return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(this, v2, 9);
        }
      }
    }
  }

  return this;
}

void md::MapNavLabeler::setNavActive(uint64_t this, int a2)
{
  if (*(this + 128) != a2)
  {
    *(this + 128) = a2;
    v3 = *(this + 64);
    if (*(v3 + 276) != a2)
    {
      *(v3 + 276) = a2;
      if ((a2 & 1) == 0)
      {
        *(v3 + 248) = 0;
      }
    }

    v4 = *(this + 720);
    if (*(v4 + 136) != a2)
    {
      *(v4 + 136) = a2;
      md::LabelNavEtaLabeler::clearEtaFeatures(v4);
      a2 = *(this + 128);
    }

    if (!a2)
    {
      md::RouteLineSupport::setRouteUserOffset(*(this + 64), MEMORY[0x1E69A1918]);
      [*(this + 56) clearSceneIsMemoryWarning:0];
      v5 = *(this + 720);

      md::LabelNavEtaLabeler::clearEtaFeatures(v5);
    }
  }
}

uint64_t non-virtual thunk tomd::MapNavLabeler::setIsNavCameraDetached(uint64_t this, int a2)
{
  if (*(this + 121) != a2)
  {
    *(this + 121) = a2;
    v2 = *(this + 16);
    v3 = atomic_load((v2 + 3053));
    if (v3)
    {
      v4 = *(v2 + 136);
      if (v4)
      {
        this = *(v4 + 56);
        if (this)
        {
          return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(this, v2, 9);
        }
      }
    }
  }

  return this;
}

uint64_t md::MapNavLabeler::setInOverviewMode(uint64_t this, int a2)
{
  if (*(this + 130) != a2)
  {
    *(this + 130) = a2;
    v2 = *(this + 24);
    v3 = atomic_load((v2 + 3053));
    if (v3)
    {
      v4 = *(v2 + 136);
      if (v4)
      {
        this = *(v4 + 56);
        if (this)
        {
          return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(this, v2, 9);
        }
      }
    }
  }

  return this;
}

uint64_t md::MapNavLabeler::setIsNavCameraDetached(uint64_t this, int a2)
{
  if (*(this + 129) != a2)
  {
    *(this + 129) = a2;
    v2 = *(this + 24);
    v3 = atomic_load((v2 + 3053));
    if (v3)
    {
      v4 = *(v2 + 136);
      if (v4)
      {
        this = *(v4 + 56);
        if (this)
        {
          return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(this, v2, 9);
        }
      }
    }
  }

  return this;
}

uint64_t md::MapNavLabeler::computeRoutePositionForPOI(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 424);
  v6[0] = &unk_1F29EFAF8;
  v6[1] = v3;
  v6[2] = a1;
  v6[3] = v4;
  v6[4] = a1 + 136;
  return [*(a1 + 56) computeRoutePositionForPOIAtPixel:a2 currentPosition:a3 context:v6];
}

uint64_t md::MapNavLabeler::isNavHighZoomActive(md::MapNavLabeler *this)
{
  result = (*(*this + 360))(this);
  if (result)
  {
    return *(this + 131) == 1;
  }

  return result;
}

char *md::MapNavLabeler::setRouteLabelBoundingRects(uint64_t a1, __int128 **a2)
{
  result = (a1 + 736);
  if (result != a2)
  {
    result = std::vector<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<md::LabelBoundingRect*,md::LabelBoundingRect*>(result, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  *(a1 + 800) = 1;
  return result;
}

void md::MapNavLabeler::debugDraw(uint64_t a1, void *a2, float32x2_t *a3)
{
  v84[3] = *MEMORY[0x1E69E9840];
  v75 = a2;
  if ([*(a1 + 56) needsDebugDraw])
  {
    v5 = *(a1 + 24);
    *&v80 = &unk_1F29EFAF8;
    *(&v80 + 1) = v5;
    *&v81 = a1;
    *(&v81 + 1) = v5 + 432;
    v82 = a1 + 360;
    [*(a1 + 56) debugDraw:v75 overlayConsole:a3 navContext:&v80];
  }

  v6 = *(a1 + 72);
  if (*(v6 + 232) != 1)
  {
    goto LABEL_50;
  }

  v76 = v75;
  v82 = 0;
  v80 = 0u;
  v81 = 0u;
  v84[2] = 0;
  v83 = v84;
  v84[0] = 0;
  v8 = v6[10];
  v7 = v6[11];
  if (v7 != v8)
  {
    v79 = 0;
    *&v77 = &v79;
    std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::__emplace_unique_key_args<VKTrafficFeatureType,std::piecewise_construct_t const&,std::tuple<VKTrafficFeatureType&&>,std::tuple<>>(&v83, 0, &v77)[5] = ((v7 - v8) >> 3);
  }

  v74 = a1;
  v10 = v6[6];
  v9 = v6[7];
  if (v10 == v9)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v11 = 0;
  do
  {
    v12 = *v10;
    v13 = [v12 trafficFeatureType];
    v14 = v84[0];
    if (!v84[0])
    {
LABEL_13:
      v79 = [v12 trafficFeatureType];
      *&v77 = &v79;
      v16 = std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::__emplace_unique_key_args<VKTrafficFeatureType,std::piecewise_construct_t const&,std::tuple<VKTrafficFeatureType&&>,std::tuple<>>(&v83, v79, &v77);
      v17 = 1;
      goto LABEL_15;
    }

    while (1)
    {
      v15 = v14[4];
      if (v13 >= v15)
      {
        break;
      }

LABEL_12:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    if (v15 < v13)
    {
      ++v14;
      goto LABEL_12;
    }

    v79 = [v12 trafficFeatureType];
    *&v77 = &v79;
    v16 = std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::__emplace_unique_key_args<VKTrafficFeatureType,std::piecewise_construct_t const&,std::tuple<VKTrafficFeatureType&&>,std::tuple<>>(&v83, v79, &v77);
    v17 = v16[5] + 1;
LABEL_15:
    v16[5] = v17;
    v18 = [v12 navigationState];
    v19 = [v12 navigationState];
    ++*(&v80 + v19);

    v11 |= v18 != 0;
    ++v10;
  }

  while (v10 != v9);
LABEL_18:
  [v76 appendFormat:@"RouteAnnotationSupport\n"];
  [v76 appendFormat:@"\tFeatureCount:%lu\n", ((v6[11] - v6[10]) >> 3) + ((v6[7] - v6[6]) >> 3)];
  v20 = v83;
  if (v83 != v84)
  {
    do
    {
      v21 = [VKTrafficFeature stringForFeatureType:v20[4]];
      [v76 appendFormat:@"\t\t%@:%lu\n", v21, v20[5]];

      v22 = v20[1];
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
          v23 = v20[2];
          v24 = *v23 == v20;
          v20 = v23;
        }

        while (!v24);
      }

      v20 = v23;
    }

    while (v23 != v84);
  }

  if (v11)
  {
    [v76 appendFormat:@"\tNavigationStates\n"];
    for (i = 0; i != 5; ++i)
    {
      v26 = [VKTrafficFeature stringForNavState:i];
      v27 = v26;
      v28 = *(&v80 + i);
      if (v28)
      {
        [v76 appendFormat:@"\t\t%@:%lu\n", v26, v28];
      }
    }
  }

  a3[12].i32[0] = -1;
  v29 = v6[14];
  for (j = v6[15]; v29 != j; v29 += 2)
  {
    v31 = *v29;
    LODWORD(v77) = 0;
    v32 = (*(*v31 + 112))(v31, &v77);
    v33 = md::LabelPoint::mercatorPoint(v32);
    v34 = *v6;
    v35 = v32[10];
    if (v35 == 3.4028e38)
    {
      v35 = 0.0;
    }

    v77 = *v33;
    v78 = v35;
    v36 = md::LabelLayoutContext::mercatorPointToPixel(v34 + 432, &v77);
    v38 = v36;
    v39 = v37;
    v40 = 0;
    v41 = 1;
    while (v36 >= *(v34 + 1536 + 4 * v40) && v36 < *(v34 + 1544 + 4 * v40))
    {
      v42 = v41;
      v41 = 0;
      v36 = v37;
      v40 = 1;
      if ((v42 & 1) == 0)
      {
        v43 = (*(**(*(v34 + 168) + 32) + 72))(*(*(v34 + 168) + 32), v37);
        v44 = vabdd_f64(v43, (*(**v29 + 648))(*v29)) / 0xFA;
        if (v44 >= 2)
        {
          v44 = 2;
        }

        v45 = dword_1B33B2998[v44];
        a3[1].f32[0] = v38;
        a3[1].f32[1] = v39;
        ggl::DebugConsole::drawSymbol(a3, v45);
        break;
      }
    }
  }

  a3[12].i32[0] = -16776961;
  v46 = v6[10];
  v47 = v6[11];
  while (v46 != v47)
  {
    v48 = *v46;
    [v48 mercatorPoint];
    *&v77 = v49;
    *(&v77 + 1) = v50;
    v78 = v51;
    v52 = *v6;
    v53 = md::LabelLayoutContext::mercatorPointToPixel(*v6 + 432, &v77);
    v55 = 0;
    v56 = 1;
    v57 = v53;
    while (v57 >= *(v52 + 1536 + 4 * v55) && v57 < *(v52 + 1544 + 4 * v55))
    {
      v58 = v56;
      v56 = 0;
      v57 = v54;
      v55 = 1;
      if ((v58 & 1) == 0)
      {
        a3[1].f32[0] = v53;
        a3[1].f32[1] = v54;
        ggl::DebugConsole::drawSymbol(a3, 0);
        break;
      }
    }

    ++v46;
  }

  std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::destroy(v84[0]);

  a1 = v74;
LABEL_50:
  v59 = *(a1 + 64);
  if (*(v59 + 273) == 1)
  {
    v60 = v75;
    v61 = *(v59 + 8);
    v62 = v61[73];
    v63 = v61[71] * 6.28318531;
    v64 = exp(v61[72] * 6.28318531 + -3.14159265);
    v65 = atan(v64);
    v66 = fmod(v63, 6.28318531);
    v67 = fmod(v66 + 6.28318531, 6.28318531);
    [v60 appendString:@"RouteLineSupport:\n"];
    [v60 appendFormat:@"\tMapType:%d\n", *(*(v59 + 8) + 3588)];
    [v60 appendFormat:@"\tEye:%.8f, %.8f, %.2f\n", v65 * 114.591559 + -90.0, v67 * 57.2957795 + -180.0, v62 * 40075017.0];
    [v60 appendFormat:@"\tWaypoints:%lu\n", (*(v59 + 96) - *(v59 + 88)) >> 4];
    v68 = *(v59 + 40);
    v69 = (v59 + 48);
    if (v68 != v69)
    {
      do
      {
        v70 = [v68[4] route];
        v71 = [v70 uniqueRouteID];
        [v60 appendFormat:@"\tRoute:%@\n", v71];

        [v60 appendFormat:@"\t\tClusteringZoomRange:%f-%f\n", *(v68[5] + 280), *(v68[5] + 284)];
        v72 = v68[1];
        if (v72)
        {
          do
          {
            v73 = v72;
            v72 = *v72;
          }

          while (v72);
        }

        else
        {
          do
          {
            v73 = v68[2];
            v24 = *v73 == v68;
            v68 = v73;
          }

          while (!v24);
        }

        v68 = v73;
      }

      while (v73 != v69);
    }
  }
}

void sub_1B2D2AC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::destroy(a26);

  _Unwind_Resume(a1);
}

void md::MapNavLabeler::populateDebugNode(void *a1, void *a2)
{
  v10[18] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(__p, "MapNavLabeler");
  gdc::DebugTreeNode::createChildNode(a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&__dst, "RouteUserOffset");
  v3 = a1[3];
  gdc::DebugTreeValue::DebugTreeValue(__p, *(v3 + 3600));
  gdc::DebugTreeValue::DebugTreeValue(&v9, *(v3 + 3604));
  memset(v5, 0, sizeof(v5));
  std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v5, __p, v10, 2uLL);
}

void sub_1B2D2B554(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, std::locale a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  a58 = &unk_1F29EFB48;
  if (a54 < 0)
  {
    v59 = a49;
    v60 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v60, v59);
  }

  std::locale::~locale(&a42);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a58);
  _Unwind_Resume(a1);
}

void md::Labeler::debugString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t md::MapNavLabeler::isLabelHitAtPixel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 224) != 1)
  {
    return 0;
  }

  md::NavLabelMarker::navLabel(&v7, a2);
  isNavLabelHitAtPixel = md::MapNavLabeler::isNavLabelHitAtPixel(v7, a3, &v6);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  return isNavLabelHitAtPixel;
}

uint64_t md::MapNavLabeler::isNavLabelHitAtPixel(uint64_t a1, uint64_t a2, float *a3)
{
  if (!a1)
  {
    v7 = 0;
    return v7 & 1;
  }

  v3 = 0;
  v4 = &v13;
  v13 = *(a1 + 424);
  v5 = 0.0;
  v6 = 1;
  v7 = 1;
  do
  {
    v8 = v6;
    v9 = *(a2 + 4 * v3);
    v10 = *(&v13 + v3 + 2);
    if (v9 <= v10)
    {
      if (v9 >= *v4)
      {
        goto LABEL_8;
      }

      v7 = 0;
      v11 = *v4 - v9;
    }

    else
    {
      v7 = 0;
      v11 = v9 - v10;
    }

    v5 = v5 + (v11 * v11);
LABEL_8:
    v6 = 0;
    v4 = &v13 + 1;
    v3 = 1;
  }

  while ((v8 & 1) != 0);
  *a3 = sqrtf(v5);
  return v7 & 1;
}

void md::MapNavLabeler::getLabelMarkers(void *a1, mdm::zone_mallocator *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v34, *(a1[3] + 8), *(a1[3] + 16));
  v37 = 0;
  v3 = 0uLL;
  v36 = 0u;
  if (a1[13])
  {
    if (*(a1[90] + 24))
    {
      v4 = a1[81];
      v5 = a1[82];
      if (v4 != v5)
      {
        do
        {
          geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v38, v4);
          v6 = *(&v38[0] + 1);
          v7 = v6;
          v8 = *(&v36 + 1);
          if (*(&v36 + 1) >= v37)
          {
            v10 = (*(&v36 + 1) - v36) >> 3;
            if ((v10 + 1) >> 61)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v11 = &v37[-v36] >> 2;
            if (v11 <= v10 + 1)
            {
              v11 = v10 + 1;
            }

            if (&v37[-v36] >= 0x7FFFFFFFFFFFFFF8)
            {
              v12 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            if (v12)
            {
              v13 = mdm::zone_mallocator::instance(v6);
              v14 = pthread_rwlock_rdlock((v13 + 32));
              if (v14)
              {
                geo::read_write_lock::logFailure(v14, "read lock", v15);
              }

              v16 = malloc_type_zone_malloc(*v13, 8 * v12, 0x80040B8603338uLL);
              atomic_fetch_add((v13 + 24), 1u);
              geo::read_write_lock::unlock((v13 + 32));
            }

            else
            {
              v16 = 0;
            }

            v17 = &v16[8 * v10];
            *v17 = v7;
            v9 = v17 + 1;
            v18 = *(&v36 + 1);
            v19 = v36;
            v20 = &v16[8 * v10 + v36 - *(&v36 + 1)];
            if (*(&v36 + 1) != v36)
            {
              v21 = v36;
              v22 = v20;
              do
              {
                v23 = *v21;
                *v21++ = 0;
                *v22++ = v23;
              }

              while (v21 != v18);
              do
              {
              }

              while (v19 != v18);
              v19 = v36;
            }

            *&v36 = v20;
            *(&v36 + 1) = v9;
            v37 = &v16[8 * v12];
            if (v19)
            {
              v24 = mdm::zone_mallocator::instance(v6);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKLabelNavRoadLabel * {__strong}>(v24, v19);
            }
          }

          else
          {
            **(&v36 + 1) = v6;
            v9 = (v8 + 8);
          }

          *(&v36 + 1) = v9;
          *&v38[0] = off_1F2A59C08;

          v4 += 24;
        }

        while (v4 != v5);
        v3 = v36;
      }
    }
  }

  v26 = *(&v3 + 1);
  for (i = v3; i != v26; ++i)
  {
    v27 = *i;
    v28 = a1[3];
    v29 = [v27 label];
    v30 = 0;
    v38[0] = *(*v29 + 424);
    v31 = v38;
    v32 = 1;
    while (*(v28 + 1512 + 4 * v30) > *v31 && *(v28 + 1504 + 4 * v30) < *(v38 + v30 + 2))
    {
      v33 = v32;
      v32 = 0;
      v31 = v38 + 1;
      v30 = 1;
      if ((v33 & 1) == 0)
      {
        [v27 navFeature];
        objc_claimAutoreleasedReturnValue();
        operator new();
      }
    }
  }

  *&v38[0] = &v36;
  std::vector<VKLabelNavRoadLabel * {__strong},geo::allocator_adapter<VKLabelNavRoadLabel * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v38);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }
}

void sub_1B2D2BC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, id location, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, void *a24)
{
  geo::read_write_lock::unlock((v25 + 32));

  a23 = off_1F2A59C08;
  a23 = &a19;
  std::vector<VKLabelNavRoadLabel * {__strong},geo::allocator_adapter<VKLabelNavRoadLabel * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a23);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  _Unwind_Resume(a1);
}

void std::vector<VKLabelNavRoadLabel * {__strong},geo::allocator_adapter<VKLabelNavRoadLabel * {__strong},mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKLabelNavRoadLabel * {__strong}>(v7, v4);
  }
}

void std::__shared_ptr_emplace<md::NavLabelMarker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EFBF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKLabelNavRoadLabel * {__strong}>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = off_1F2A59C08;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A59C08;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A59C08;

  return a1;
}

void md::MapNavLabeler::setSelectedLabelMarker(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (*(v3 + 224) == 1)
    {
      v4 = a2[1];
      if (v4)
      {
        atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
      }

      v5 = *(a1 + 120);
      *(a1 + 112) = v3;
      *(a1 + 120) = v4;
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v3 = *(a1 + 112);
      }

      md::NavLabelMarker::setLabelPicked(v3, 1);
    }
  }

  else
  {
    v6 = *(a1 + 112);
    if (v6)
    {
      md::NavLabelMarker::setLabelPicked(v6, 0);
      v7 = *(a1 + 120);
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      if (v7)
      {

        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }
  }
}

uint64_t md::MapNavLabeler::stylesheetAnimationDidFinish(md::RouteAnnotationSupport **this)
{
  md::RouteAnnotationSupport::restyleFeatures(this[9]);
  v2 = this[7];

  return [(md::RouteAnnotationSupport *)v2 styleManagerDidFinishAnimating];
}

void std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = v4 - a4;
  v6 = a2 + v4 - a4;
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = *v6;
    v7 += 16;
    *v6 = 0;
    *(v6 + 8) = 0;
    v6 += 16;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v8 = (v4 - 8);
    v9 = a2 - 16;
    do
    {
      v10 = (v9 + v5);
      v11 = *(v9 + v5);
      *v10 = 0;
      v10[1] = 0;
      v12 = *v8;
      *(v8 - 1) = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }

      v8 -= 2;
      v5 -= 16;
    }

    while (v5);
  }
}

void std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<md::NavLabel> *,std::shared_ptr<md::NavLabel> *,std::shared_ptr<md::NavLabel> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::NavLabel>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 16;
    a1 = *(shared_weak_owners - 8);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 16;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::NavLabel>>(v5, v4);
  }

  return v1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::NavLabel>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::vector<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = v7 - a4;
  v9 = a2 + v7 - a4;
  if (v9 >= a3)
  {
    v11 = *(a1 + 8);
  }

  else
  {
    v11 = *(a1 + 8);
    do
    {
      v12 = geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v11, v9);
      v9 += 24;
      v11 = v12 + 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v11;
  if (v7 != a4)
  {
    v13 = (v7 - 16);
    v14 = a2 - 16;
    do
    {
      objc_storeStrong(v13, *(v14 + v8));
      v15 = *(v14 + v8);
      *(v14 + v8) = 0;

      v13 -= 3;
      v8 -= 24;
    }

    while (v8);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x81040B49F1EBBuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t std::__split_buffer<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator> &>::~__split_buffer(uint64_t a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(v6, v5);
  }

  return a1;
}

uint64_t (***std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,mdm::zone_mallocator>,geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t (***result)(void), uint64_t (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a3, v6);
      v6 += 3;
      a3 += 24;
    }

    while (v6 != a2);
    v7 = v5;
    v8 = v5;
    do
    {
      v9 = *v8;
      v8 += 3;
      result = (*v9)(v5);
      v7 += 3;
      v5 = v8;
    }

    while (v8 != a2);
  }

  return result;
}

uint64_t geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = off_1F2A59C08;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::AvoidanceRectWithPriority>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::AvoidanceRectWithPriority>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x10000402C707793uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::RouteFeatureAnchorWithPixelBounds>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 72 * a2, 0x1020040BE2F4802uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::RouteFeatureAnchorWithPixelBounds,mdm::zone_mallocator>,md::RouteFeatureAnchorWithPixelBounds*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *v5 = 0;
      *(v5 + 8) = 0;
      v6 = *(v5 + 16);
      v7 = *(v5 + 32);
      v8 = *(v5 + 48);
      *(a3 + 64) = *(v5 + 64);
      *(a3 + 32) = v7;
      *(a3 + 48) = v8;
      *(a3 + 16) = v6;
      v5 += 72;
      a3 += 72;
    }

    while (v5 != a2);
    do
    {
      v9 = *(v4 + 8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v4 += 72;
    }

    while (v4 != a2);
  }
}

std::__shared_weak_count *std::__split_buffer<md::RouteFeatureAnchorWithPixelBounds,geo::allocator_adapter<md::RouteFeatureAnchorWithPixelBounds,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 72;
    a1 = *(shared_weak_owners - 64);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 72;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteFeatureAnchorWithPixelBounds>(v5, v4);
  }

  return v1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteFeatureAnchorWithPixelBounds>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::_retain_ptr<LabelNavRouteLabeler * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29EFBD8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<LabelNavRouteLabeler * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29EFBD8;

  return a1;
}

uint64_t **md::MuninRoadFeature::MuninRoadFeature(uint64_t **a1, uint64_t *a2, int a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = geo::GEOFeature_retain_ptr::GEOFeature_retain_ptr(a1, a2);
  v5[3] = 0;
  v6 = (v5 + 3);
  v5[4] = 0;
  v5[5] = 0;
  v5[7] = 0;
  v7 = (v5 + 7);
  v5[8] = 0;
  v5[9] = 0;
  v26 = 0uLL;
  v27 = 0;
  v24 = 0uLL;
  v25 = 0;
  md::LabelFeature::textFromFeature(&v20, *v5, a3, &v24, 0);
  v27 = v21;
  v26 = v20;
  v9 = SHIBYTE(v21);
  v10 = *(&v20 + 1);
  if (v21 >= 0)
  {
    v10 = SHIBYTE(v21);
  }

  if (v10)
  {
    md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&v20, &v26, &v24);
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v6, &v20);
    v8 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v7, &v22);
    if (v23 < 0)
    {
      v11 = v22;
      v12 = mdm::zone_mallocator::instance(v8);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v12, v11);
    }

    if (SHIBYTE(v21) < 0)
    {
      v13 = v20;
      v14 = mdm::zone_mallocator::instance(v8);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v14, v13);
    }
  }

  if (SHIBYTE(v25) < 0)
  {
    v16 = v24;
    v17 = mdm::zone_mallocator::instance(v8);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v17, v16);
    if ((v9 & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_12:
    v18 = v26;
    v19 = mdm::zone_mallocator::instance(v8);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v19, v18);
    return a1;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  return a1;
}

void sub_1B2D2CB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24)
{
  v28 = v27;
  if (a22 < 0)
  {
    v30 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v30, a17);
  }

  if (v28)
  {
    v31 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v31, a24);
  }

  if (*(v24 + 79) < 0)
  {
    v32 = *v26;
    v33 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v33, v32);
  }

  if (*(v24 + 47) < 0)
  {
    v34 = *v25;
    v35 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v35, v34);
  }

  v36 = *(v24 + 16);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2D2CEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2D2CFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2D2D160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

double VKPointForVKLocationCoordinate2D(double a1, double a2)
{
  v3 = tan(a1 * 0.00872664626 + 0.785398163);
  log(v3);
  return a2 * 0.00277777778 + 0.5;
}

long double VKLocationCoordinate2DForVKPoint(double a1, double a2)
{
  v4 = a1;
  v5 = a2;
  VKPointMapToWorldZero(&v4);
  v2 = exp(v5 * -6.28318531 + 3.14159265);
  return atan(v2) * -114.591559 + 90.0;
}

double VKWorldBoundsFromGEOTileKey(uint64_t a1, __int16 a2)
{
  LOWORD(v3) = HIWORD(a1);
  HIWORD(v3) = a2;
  return 1.0 / (1 << SBYTE6(a1)) * (v3 >> 6);
}

uint64_t VKPointInPolygon(float *a1, uint64_t a2, double a3, double a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1[1];
  if (v6 <= a4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  if (v6 > a4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (*a1 <= a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = -a2;
  v11 = 1;
  v12 = a1;
  do
  {
    v13 = v9;
    if (v10 + v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    v15 = &a1[2 * v14];
    v16 = v15[1];
    v17 = *v15;
    if (v16 <= a4)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    if (v16 > a4)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    if (v17 <= a3)
    {
      v9 = v18;
    }

    v19 = v9 - v13;
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        goto LABEL_31;
      }

      if (v19 == 3)
      {
        v19 = -1;
      }
    }

    else
    {
      if (v19 == -3)
      {
        v19 = 1;
        goto LABEL_35;
      }

      if (v19 == -2)
      {
LABEL_31:
        if (v17 + (a4 - v16) * ((*v12 - *v15) / (v12[1] - v16)) > a3)
        {
          v19 = -v19;
        }
      }
    }

LABEL_35:
    v5 += v19;
    ++v11;
    v12 = v15;
  }

  while (v10 + v11 != 1);
  return (v5 >> 2) & 1;
}

__n128 std::__function::__func<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat::operator()(ecs2::Query<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>)::$_0,std::allocator<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat::operator()(ecs2::Query<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>)::$_0>,void ()(md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EFC98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe::operator()(ecs2::Query<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>)::$_0,std::allocator<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe::operator()(ecs2::Query<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>)::$_0>,void ()(md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v6 = **(a1 + 8);
  v7 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v6 + 177, *a4);
  if (v7 == v6[182])
  {
    v10 = 0;
  }

  else
  {
    v8 = (((v7 - v6[181]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
    v9 = ((v7 - v6[181]) >> 3) & 0x3F;
    v10 = (*(v6[190] + v8) + 16 * v9);
    ++*(*(v6[184] + v8) + 24 * v9);
  }

  BaseMapTileDataRenderable = md::VKMRenderResourcesStore::getBaseMapTileDataRenderable(v6, *a2);
  v12 = 0;
  v13 = BaseMapTileDataRenderable[37];
  v14 = BaseMapTileDataRenderable[38];
  v15 = BaseMapTileDataRenderable[39];
  v16 = BaseMapTileDataRenderable[40];
  v17 = v14 + v14;
  v18 = (v14 + v14) * v14;
  v19 = (v15 + v15) * v15;
  v20 = v13 + v13;
  v21 = (v13 + v13) * v14;
  v22 = (v15 + v15) * v16;
  v23 = v21 - v22;
  v24 = v15 * (v13 + v13);
  v25 = v16 * v17;
  v26 = v22 + v21;
  v27 = v16 * v17 + v24;
  v59[0] = 1.0 - (v18 + v19);
  v59[1] = v26;
  v28 = 1.0 - (v13 + v13) * v13;
  v29 = v17 * v15;
  v30 = v16 * v20;
  v59[6] = v27;
  v59[7] = v29 - v30;
  v59[2] = v24 - v25;
  v59[3] = v23;
  v59[4] = v28 - v19;
  v59[5] = v30 + v29;
  v59[8] = v28 - v18;
  v31 = v54;
  v32 = v59;
  do
  {
    v33 = 0;
    v34 = v31;
    do
    {
      *v34 = v32[v33];
      v34 += 4;
      v33 += 3;
    }

    while (v33 != 9);
    ++v12;
    ++v31;
    ++v32;
  }

  while (v12 != 3);
  v54[3] = 0.0;
  v54[7] = 0.0;
  memset(&v54[11], 0, 32);
  v54[15] = 1.0;
  gm::Matrix<double,4,4>::inverted<int,void>(v55[0].i64, v54);
  v35 = 0;
  v36 = *(a1 + 16);
  do
  {
    _H0 = *(v36 + 2 * v35);
    __asm { FCVT            D0, H0 }

    v53[v35++] = _D0;
  }

  while (v35 != 4);
  v43 = gm::operator*<double,4,4,1>(v55[0].i64, v53);
  v45 = 0;
  *v56 = v43;
  v56[1] = v46;
  v56[2] = v44;
  v56[3] = v47;
  do
  {
    _D0 = v56[v45];
    __asm { FCVT            H0, D0 }

    *(&v57 + v45++) = _D0;
  }

  while (v45 != 4);
  _H0 = v58;
  __asm { FCVT            S0, H0 }

  v51 = **(a1 + 24);
  v44.i32[0] = v57;
  v55[0].i64[0] = vcvtq_f32_f16(v44).u64[0];
  v55[0].i64[1] = __PAIR64__(v51, _S0);
  storeDirectionForKey(v6, v10, v55);
  return result;
}

__n128 std::__function::__func<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe::operator()(ecs2::Query<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>)::$_0,std::allocator<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe::operator()(ecs2::Query<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>)::$_0>,void ()(md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EFCE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float std::__function::__func<md::ita::PrepareStyleConstantDataHandleForGlobeTiles::operator()(ecs2::Query<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1> const&,md::ls::TileStyleDataKeyHandle &>)::$_0,std::allocator<md::ita::PrepareStyleConstantDataHandleForGlobeTiles::operator()(ecs2::Query<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1> const&,md::ls::TileStyleDataKeyHandle &>)::$_0>,void ()(md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1> const&,md::ls::TileStyleDataKeyHandle &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = **(a1 + 8);
  v5 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v4 + 177, *a3);
  if (v5 == v4[182])
  {
    v9 = 0;
  }

  else
  {
    v7 = (((v5 - v4[181]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
    v8 = ((v5 - v4[181]) >> 3) & 0x3F;
    v9 = (*(v4[190] + v7) + 16 * v8);
    ++*(*(v4[184] + v7) + 24 * v8);
  }

  v10 = *(a1 + 16);
  _H0 = *(v10 + 4);
  __asm { FCVT            S0, H0 }

  v17 = **(a1 + 24);
  v6.i32[0] = *v10;
  v19.i64[0] = vcvtq_f32_f16(v6).u64[0];
  v19.i64[1] = __PAIR64__(v17, _S0);
  storeDirectionForKey(v4, v9, &v19);
  return result;
}

__n128 std::__function::__func<md::ita::PrepareStyleConstantDataHandleForGlobeTiles::operator()(ecs2::Query<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1> const&,md::ls::TileStyleDataKeyHandle &>)::$_0,std::allocator<md::ita::PrepareStyleConstantDataHandleForGlobeTiles::operator()(ecs2::Query<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1> const&,md::ls::TileStyleDataKeyHandle &>)::$_0>,void ()(md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1> const&,md::ls::TileStyleDataKeyHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29EFD90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ggl::BuildingTopDepth::CompressedMeshPipelineSetup::~CompressedMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LayoutContext::debugConsoleForId(void **a1, uint64_t a2)
{
  if (!*a1 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v4 = *a1;

  return [v4 debugConsoleForId:a2];
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::MaskingOverlay::FillPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::MaskingOverlay::FillPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void ggl::ConstantDataTyped<ggl::MaskingOverlay::Fill>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::MaskingOverlay::Fill>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EFEB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::MaskingOverlay::FillPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EFF50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::MaskingOverlay::MaskingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::MaskingOverlay::MaskingPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__shared_ptr_emplace<ggl::MaskingOverlay::MaskingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EFE30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::zone_mallocator *std::vector<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::MaskingOverlay::MaskingPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::MaskingOverlay::FillPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void md::MaskingOverlayRenderable::buildRenderItems(md::MaskingOverlayRenderable *this)
{
  v2 = *(this + 21) + 1;
  v3 = *(this + 9);
  v4 = *(this + 10);
  v5 = (v4 - v3) >> 3;
  if (v2 <= v5)
  {
    if (v2 < v5)
    {
      v10 = (v3 + 8 * v2);
      while (v4 != v10)
      {
        v12 = *--v4;
        v11 = v12;
        *v4 = 0;
        if (v12)
        {
          (*(*v11 + 8))(v11);
        }
      }

      *(this + 10) = v10;
    }
  }

  else
  {
    v6 = v2 - v5;
    v7 = *(this + 11);
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(v2 >> 61))
      {
        v8 = v7 - v3;
        if (v8 >> 2 > v2)
        {
          v2 = v8 >> 2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v2;
        }

        if (!(v9 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(*(this + 10), 8 * v6);
    *(this + 10) = &v4[v6];
  }

  std::vector<BOOL>::resize(this + 96, *(this + 21) + 1, 0);
  operator new();
}

void sub_1B2D2E8C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  MEMORY[0x1B8C62190](v36, 0x10F1C4093A39A99, a3, a4, a5, a6, a7, a8);
  a17 = a11;
  *(&a17 + *(a11 - 24)) = a10;
  a19 = a12;
  a20 = MEMORY[0x1E69E5548] + 16;
  if (a33 < 0)
  {
    operator delete(__p);
  }

  a20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a21);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a36);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<ggl::RenderItem>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

ecs2::ExecutionTaskContext *md::MaskingOverlayRenderable::collectRenderItems(ecs2::ExecutionTaskContext *result, int a2, uint64_t a3)
{
  v4 = result;
  if (a2 == 1)
  {
    v6 = *(result + 9);
    v5 = *(result + 10);
    if ((v5 - v6) >= 9)
    {
      v7 = *(result + 12);
      v8 = 1;
      do
      {
        if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
        {
          result = std::function<void ()(ggl::RenderItem *)>::operator()(*(a3 + 24), *(v6 + 8 * v8));
          v7 = *(v4 + 12);
          *(v7 + 8 * (v8 >> 6)) &= ~(1 << v8);
          v6 = *(v4 + 9);
          v5 = *(v4 + 10);
        }

        ++v8;
      }

      while (v8 < (v5 - v6) >> 3);
    }
  }

  else if (**(result + 12))
  {
    result = std::function<void ()(ggl::RenderItem *)>::operator()(*(a3 + 24), **(result + 9));
    **(v4 + 12) &= ~1uLL;
  }

  return result;
}

void md::Logic<md::LabelsLogic,md::LabelsContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

__n128 std::__function::__func<md::LabelsLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>::ResolvedDependencies const&,md::LabelsContext &)::$_0,std::allocator<md::LabelsLogic::runBeforeLayout(md::LayoutContext const&,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>::ResolvedDependencies const&,md::LabelsContext &)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F01C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *md::Logic<md::LabelsLogic,md::LabelsContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0xA588623CD4116DAELL && (v5 = *(a3 + 32)) != 0)
  {
    v9[0] = md::LogicDependencies<gdc::TypeList<md::StyleLogicContext>,gdc::TypeList<md::MeshRenderableContext>>::resolveDependencies(*(a2 + 8));
    v9[1] = v8;
    return (*(*a1 + 160))(a1, a2, v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::LabelsContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::LabelsContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::LabelsContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::LabelsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29F0318;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    MEMORY[0x1B8C62190](v2, 0x20C40960023A9);
  }

  return a1;
}

void md::LabelsLogic::createDebugNode(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  md::LogicBase::createDebugNode(a1, a3);
  v4 = *(a1 + 192);
  if (v4)
  {
    v5 = "cacheHits";
    do
    {
      v6 = v4[3];
      v7 = gdc::to_string(*(v4 + 16));
      std::string::basic_string[abi:nn200100]<0>(v30, v7);
      gdc::DebugTreeNode::DebugTreeNode(&v32, v30);
      std::string::basic_string[abi:nn200100]<0>(&v92, "Layout Zoom");
      gdc::DebugTreeValue::DebugTreeValue(v88, *(v6 + 116));
      gdc::DebugTreeNode::addProperty(&v32, &v92, v88);
      if (v90 < 0)
      {
        operator delete(__p);
      }

      if (v93 < 0)
      {
        operator delete(v92);
      }

      v8 = v6[27];
      v9 = dispatch_time(0, 500000000);
      v10 = dispatch_semaphore_wait(v8, v9);

      if (v10)
      {
        std::string::basic_string[abi:nn200100]<0>(&v92, "<<Unable to lock label background state>>");
        gdc::DebugTreeNode::createChildNode(&v32, &v92);
        if (v93 < 0)
        {
          operator delete(v92);
        }
      }

      else
      {
        std::string::basic_string[abi:nn200100]<0>(&v92, "Is Background Update Running");
        gdc::DebugTreeValue::DebugTreeValue(v85, *(v6 + 3419));
        gdc::DebugTreeNode::addProperty(&v32, &v92, v85);
        if (v87 < 0)
        {
          operator delete(v86);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "Route traffic features active");
        v11 = (*(**(v6[21] + 48) + 16))(*(v6[21] + 48));
        gdc::DebugTreeValue::DebugTreeValue(v82, v11);
        gdc::DebugTreeNode::addProperty(&v32, &v92, v82);
        if (v84 < 0)
        {
          operator delete(v83);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "Loading Counts");
        v12 = gdc::DebugTreeNode::createChildNode(&v32, &v92);
        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "image");
        v13 = atomic_load((v6[33] + 140));
        gdc::DebugTreeValue::DebugTreeValue(v79, v13);
        gdc::DebugTreeNode::addProperty(v12, &v92, v79);
        if (v81 < 0)
        {
          operator delete(v80);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "textData");
        v14 = atomic_load((v6[34] + 56));
        gdc::DebugTreeValue::DebugTreeValue(v76, v14);
        gdc::DebugTreeNode::addProperty(v12, &v92, v76);
        if (v78 < 0)
        {
          operator delete(v77);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "glyphImage");
        v15 = atomic_load((v6[35] + 64));
        gdc::DebugTreeValue::DebugTreeValue(v73, v15);
        gdc::DebugTreeNode::addProperty(v12, &v92, v73);
        if (v75 < 0)
        {
          operator delete(v74);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "totalGlyphCount");
        v16 = (*(**v6[35] + 24))(*v6[35]);
        gdc::DebugTreeValue::DebugTreeValue(v70, v16);
        gdc::DebugTreeNode::addProperty(v12, &v92, v70);
        if (v72 < 0)
        {
          operator delete(v71);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "glyphsUsingLargeScaleFactorCount");
        v17 = (*(**v6[35] + 32))(*v6[35]);
        gdc::DebugTreeValue::DebugTreeValue(v67, v17);
        gdc::DebugTreeNode::addProperty(v12, &v92, v67);
        if (v69 < 0)
        {
          operator delete(v68);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "Staging Glyph Cache");
        v18 = gdc::DebugTreeNode::createChildNode(&v32, &v92);
        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, v5);
        gdc::DebugTreeValue::DebugTreeValue(v64, *(v6[396] + 144));
        gdc::DebugTreeNode::addProperty(v18, &v92, v64);
        if (v66 < 0)
        {
          operator delete(v65);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "cacheMisses");
        gdc::DebugTreeValue::DebugTreeValue(v61, *(v6[396] + 148));
        gdc::DebugTreeNode::addProperty(v18, &v92, v61);
        if (v63 < 0)
        {
          operator delete(v62);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "cachedItemCount");
        gdc::DebugTreeValue::DebugTreeValue(v58, *(v6[396] + 152));
        gdc::DebugTreeNode::addProperty(v18, &v92, v58);
        if (v60 < 0)
        {
          operator delete(v59);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "Display Glyph Cache");
        v19 = gdc::DebugTreeNode::createChildNode(&v32, &v92);
        if (v93 < 0)
        {
          operator delete(v92);
        }

        v20 = *(v6[38] + 128);
        std::string::basic_string[abi:nn200100]<0>(&v92, v5);
        gdc::DebugTreeValue::DebugTreeValue(v55, v20[36]);
        gdc::DebugTreeNode::addProperty(v19, &v92, v55);
        if (v57 < 0)
        {
          operator delete(v56);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "cacheMisses");
        gdc::DebugTreeValue::DebugTreeValue(v52, v20[37]);
        gdc::DebugTreeNode::addProperty(v19, &v92, v52);
        if (v54 < 0)
        {
          operator delete(v53);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "cachedItemCount");
        gdc::DebugTreeValue::DebugTreeValue(v49, v20[38]);
        gdc::DebugTreeNode::addProperty(v19, &v92, v49);
        if (v51 < 0)
        {
          operator delete(v50);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "Renderer");
        v21 = gdc::DebugTreeNode::createChildNode(&v32, &v92);
        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "descriptors");
        gdc::DebugTreeValue::DebugTreeValue(v46, *(v6[41] + 1808));
        gdc::DebugTreeNode::addProperty(v21, &v92, v46);
        if (v48 < 0)
        {
          operator delete(v47);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "renderItems");
        gdc::DebugTreeValue::DebugTreeValue(v43, (*(v6[41] + 1812) + *(v6[41] + 1816)));
        gdc::DebugTreeNode::addProperty(v21, &v92, v43);
        if (v45 < 0)
        {
          operator delete(v44);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "glyph renderItems");
        gdc::DebugTreeValue::DebugTreeValue(v40, *(v6[41] + 1812));
        gdc::DebugTreeNode::addProperty(v21, &v92, v40);
        if (v42 < 0)
        {
          operator delete(v41);
        }

        if (v93 < 0)
        {
          operator delete(v92);
        }

        std::string::basic_string[abi:nn200100]<0>(&v92, "icon renderItems");
        gdc::DebugTreeValue::DebugTreeValue(v37, *(v6[41] + 1816));
        gdc::DebugTreeNode::addProperty(v21, &v92, v37);
        if (v39 < 0)
        {
          operator delete(v38);
        }

        v22 = v5;
        if (v93 < 0)
        {
          operator delete(v92);
        }

        v23 = v6[32];
        std::string::basic_string[abi:nn200100]<0>(&v92, "Texture Atlases");
        v24 = gdc::DebugTreeNode::createChildNode(&v32, &v92);
        if (v93 < 0)
        {
          operator delete(v92);
        }

        v25 = 0;
        v26 = v23 + 8;
        do
        {
          std::string::basic_string[abi:nn200100]<0>(&v96, "atlas");
          (*(**(v26 + v25) + 48))(&v91);
          gdc::DebugTreeValue::DebugTreeValue(&v92, &v91);
          gdc::DebugTreeNode::addProperty(v24, &v96, &v92);
          if (v95 < 0)
          {
            operator delete(v94);
          }

          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }

          if (v97 < 0)
          {
            operator delete(v96);
          }

          v25 += 8;
        }

        while (v25 != 16);
        (*(*v6[30] + 296))(v6[30], &v32, a2);
        v27 = v6[27];
        dispatch_semaphore_signal(v27);

        v5 = v22;
      }

      gdc::DebugTreeNode::addChildNode(a3, &v32);
      *&v92 = &v36;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v92);
      *&v92 = &v35;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v92);
      if (v34 < 0)
      {
        operator delete(v33);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      v4 = *v4;
    }

    while (v4);
  }
}

void sub_1B2D2F7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  *(v30 - 200) = a10;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v30 - 200));
  *(v30 - 200) = a11;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v30 - 200));
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  a19 = (a12 + 72);
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a19);
  a19 = (a12 + 48);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a19);
  v32 = a12;
  if (*(a12 + 47) < 0)
  {
    operator delete(*(a12 + 24));
    v32 = a12;
  }

  if (*(v32 + 23) < 0)
  {
    operator delete(*v32);
  }

  _Unwind_Resume(a1);
}

void md::LabelsLogic::~LabelsLogic(md::LabelsLogic *this)
{
  md::LabelsLogic::~LabelsLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F0018;
  for (i = (this + 192); ; md::LabelManager::willShutdown(i[3]))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  if (*(this + 25))
  {
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(*(this + 24));
    *(this + 24) = 0;
    v3 = *(this + 23);
    if (v3)
    {
      for (j = 0; j != v3; ++j)
      {
        *(*(this + 22) + 8 * j) = 0;
      }
    }

    *(this + 25) = 0;
  }

  v5 = *(this + 30);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 22);
  v6 = *(this + 21);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::unique_ptr<md::LabelManagerCreationParams>::reset[abi:nn200100](this + 19, 0);
  std::unique_ptr<md::LabelSettings>::reset[abi:nn200100](this + 18, 0);
  v7 = *(this + 16);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B2D2FA5C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 240);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((v1 + 176));
  v4 = *(v1 + 168);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::unique_ptr<md::LabelManagerCreationParams>::reset[abi:nn200100]((v1 + 152), 0);
  std::unique_ptr<md::LabelSettings>::reset[abi:nn200100]((v1 + 144), 0);
  v5 = *(v1 + 128);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F0298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_emplace<md::LabelManagerDelegates>::__on_zero_shared(uint64_t a1)
{
  std::__function::__value_func<void ()(VKARWalkingElevationRequestFailureInfo *)>::~__value_func[abi:nn200100](a1 + 312);
  std::__function::__value_func<void ()(VKARWalkingFeatureSet *)>::~__value_func[abi:nn200100](a1 + 280);
  std::__function::__value_func<void ()(VKARWalkingFeatureDidUpdateInfo *)>::~__value_func[abi:nn200100](a1 + 248);
  std::__function::__value_func<void ()(md::MuninJunction const*,md::MuninRoadEdge const*,BOOL)>::~__value_func[abi:nn200100](a1 + 216);
  std::__function::__value_func<void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::~__value_func[abi:nn200100](a1 + 184);
  std::__function::__value_func<void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::~__value_func[abi:nn200100](a1 + 152);
  std::__function::__value_func<void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::~__value_func[abi:nn200100](a1 + 120);
  std::__function::__value_func<void ()(md::LabelManager *)>::~__value_func[abi:nn200100](a1 + 88);
  std::__function::__value_func<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::~__value_func[abi:nn200100](a1 + 56);

  return std::__function::__value_func<void ()(md::LabelManager *,md::NeedsLayoutReason)>::~__value_func[abi:nn200100](a1 + 24);
}

void std::__shared_ptr_emplace<md::LabelManagerDelegates>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F0188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelsLogic::setNeedsLayoutCallback(std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>)::$_0,std::allocator<md::LabelsLogic::setNeedsLayoutCallback(std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>)::$_0>,void ()(md::LabelManager const*,md::NeedsLayoutReason)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F29F0208;
  result = std::__function::__value_func<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void std::__function::__func<md::LabelsLogic::setNeedsLayoutCallback(std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>)::$_0,std::allocator<md::LabelsLogic::setNeedsLayoutCallback(std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>)::$_0>,void ()(md::LabelManager const*,md::NeedsLayoutReason)>::~__func(void *a1)
{
  *a1 = &unk_1F29F0208;
  std::__function::__value_func<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelsLogic::setNeedsLayoutCallback(std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>)::$_0,std::allocator<md::LabelsLogic::setNeedsLayoutCallback(std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>)::$_0>,void ()(md::LabelManager const*,md::NeedsLayoutReason)>::~__func(void *a1)
{
  *a1 = &unk_1F29F0208;
  std::__function::__value_func<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<md::LabelsLogic::setDidLayoutCallback(std::function<void ()(md::LabelManager *)>)::$_0,std::allocator<md::LabelsLogic::setDidLayoutCallback(std::function<void ()(md::LabelManager *)>)::$_0>,void ()(md::LabelManager *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F29F0250;
  result = std::__function::__value_func<void ()(md::LabelManager *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void std::__function::__func<md::LabelsLogic::setDidLayoutCallback(std::function<void ()(md::LabelManager *)>)::$_0,std::allocator<md::LabelsLogic::setDidLayoutCallback(std::function<void ()(md::LabelManager *)>)::$_0>,void ()(md::LabelManager *)>::~__func(void *a1)
{
  *a1 = &unk_1F29F0250;
  std::__function::__value_func<void ()(md::LabelManager *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelsLogic::setDidLayoutCallback(std::function<void ()(md::LabelManager *)>)::$_0,std::allocator<md::LabelsLogic::setDidLayoutCallback(std::function<void ()(md::LabelManager *)>)::$_0>,void ()(md::LabelManager *)>::~__func(void *a1)
{
  *a1 = &unk_1F29F0250;
  std::__function::__value_func<void ()(md::LabelManager *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void ggl::BuildingFacadeDepth::BuildingPipelineSetup::~BuildingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::StandardPostchain::SSAOPipelineSetup::~SSAOPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPart *>(uint64_t a1, void *a2)
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

void std::vector<md::FrameGraphLogicalResource *>::resize(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[8 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = &v4[8 * v6];
  }

  a1[1] = v11;
}

__n128 std::__function::__func<md::FrameGraphBuilder::createResource(md::FrameGraphAttachmentDescriptor const&,geo::StringLiteral,unsigned long)::$_0,std::allocator<md::FrameGraphBuilder::createResource(md::FrameGraphAttachmentDescriptor const&,geo::StringLiteral,unsigned long)::$_0>,md::FrameGraphLogicalResource * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F03F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void geo::DirectedGraph<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::vector<md::FrameGraphPass *>>::addEdge(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v13 = a3;
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v4;
      v8 = **(v4 + 32);
      if (v6 >= v8)
      {
        break;
      }

      v4 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= v6)
    {
      break;
    }

    v4 = v7[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>::insert(v7 + 5, &v13);
  v9 = *v5;
  if (*v5)
  {
    v10 = *v13;
    do
    {
      v11 = *v9[4];
      if (v10 >= v11)
      {
        if (v11 >= v10)
        {
          return;
        }

        ++v9;
      }

      v9 = *v9;
    }

    while (v9);
  }

  memset(v12, 0, sizeof(v12));
  std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::__emplace_unique_key_args<md::FrameGraphPass *,md::FrameGraphPass *&,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>(a1, v13, &v13, v12);
}

void std::vector<ggl::RenderTarget *>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

unsigned __int8 **geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>::find(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  if (a1 != a2)
  {
    v3 = *a3;
    while (1)
    {
      v4 = **a1;
      if (v4 == v3)
      {
        break;
      }

      ++a1;
      if (v3 < v4 || a1 == a2)
      {
        return a2;
      }
    }

    return a1;
  }

  return a2;
}

unsigned __int8 ***geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>::erase(unsigned __int8 ***result, unsigned __int8 *a2)
{
  v3 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v4 = result;
    v5 = *a2;
    while (1)
    {
      v6 = **v3;
      if (v6 == v5)
      {
        break;
      }

      ++v3;
      if (v5 < v6 || v3 == v2)
      {
        return result;
      }
    }

    if (v2 != v3)
    {
      v8 = v2 - (v3 + 1);
      if (v2 != v3 + 1)
      {
        result = memmove(v3, v3 + 1, v2 - (v3 + 1));
      }

      v4[1] = (v3 + v8);
    }
  }

  return result;
}

unsigned __int8 **std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 **a3, unsigned __int8 **a4)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  v11 = **a4;
  v12 = **a3;
  v13 = v11 >= v12;
  if (v11 == v12)
  {
    v13 = *(v9 + 24) + *(v9 + 20) >= *(v10 + 3) + *(v10 + 5);
  }

  if (!v13)
  {
    *a3 = v9;
    *a4 = v10;
    v14 = *a3;
    v15 = *a2;
    v16 = **a3;
    v17 = **a2;
    v18 = v16 >= v17;
    if (v16 == v17)
    {
      v18 = *(v14 + 3) + *(v14 + 5) >= *(v15 + 3) + *(v15 + 5);
    }

    if (!v18)
    {
      *a2 = v14;
      *a3 = v15;
      v19 = *a2;
      v20 = *a1;
      v21 = **a2;
      v22 = **a1;
      v23 = v21 >= v22;
      if (v21 == v22)
      {
        v23 = *(v19 + 3) + *(v19 + 5) >= *(v20 + 3) + *(v20 + 5);
      }

      if (!v23)
      {
        *a1 = v19;
        *a2 = v20;
      }
    }
  }

  return result;
}

unsigned __int8 **std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(unsigned __int8 **a1, unsigned __int8 **a2, unsigned __int8 **a3, unsigned __int8 **a4, unsigned __int8 **a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  v13 = **a4;
  v14 = **a3;
  v15 = v13 >= v14;
  if (v13 == v14)
  {
    v15 = *(v11 + 24) + *(v11 + 20) >= *(v12 + 3) + *(v12 + 5);
  }

  if (!v15)
  {
    *a3 = v11;
    *a4 = v12;
    v16 = *a3;
    v17 = *a2;
    v18 = **a3;
    v19 = **a2;
    v20 = v18 >= v19;
    if (v18 == v19)
    {
      v20 = *(v16 + 3) + *(v16 + 5) >= *(v17 + 3) + *(v17 + 5);
    }

    if (!v20)
    {
      *a2 = v16;
      *a3 = v17;
      v21 = *a2;
      v22 = *a1;
      v23 = **a2;
      v24 = **a1;
      v25 = v23 >= v24;
      if (v23 == v24)
      {
        v25 = *(v21 + 3) + *(v21 + 5) >= *(v22 + 3) + *(v22 + 5);
      }

      if (!v25)
      {
        *a1 = v21;
        *a2 = v22;
      }
    }
  }

  v26 = *a5;
  v27 = *a4;
  v28 = **a5;
  v29 = **a4;
  v30 = v28 >= v29;
  if (v28 == v29)
  {
    v30 = *(v26 + 24) + *(v26 + 20) >= *(v27 + 24) + *(v27 + 20);
  }

  if (!v30)
  {
    *a4 = v26;
    *a5 = v27;
    v31 = *a4;
    v32 = *a3;
    v33 = **a4;
    v34 = **a3;
    v35 = v33 >= v34;
    if (v33 == v34)
    {
      v35 = *(v31 + 24) + *(v31 + 20) >= *(v32 + 3) + *(v32 + 5);
    }

    if (!v35)
    {
      *a3 = v31;
      *a4 = v32;
      v36 = *a3;
      v37 = *a2;
      v38 = **a3;
      v39 = **a2;
      v40 = v38 >= v39;
      if (v38 == v39)
      {
        v40 = *(v36 + 3) + *(v36 + 5) >= *(v37 + 3) + *(v37 + 5);
      }

      if (!v40)
      {
        *a2 = v36;
        *a3 = v37;
        v41 = *a2;
        v42 = *a1;
        v43 = **a2;
        v44 = **a1;
        v45 = v43 >= v44;
        if (v43 == v44)
        {
          v45 = *(v41 + 3) + *(v41 + 5) >= *(v42 + 3) + *(v42 + 5);
        }

        if (!v45)
        {
          *a1 = v41;
          *a2 = v42;
        }
      }
    }
  }

  return result;
}

unsigned __int8 **std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **>(unsigned __int8 **result, unsigned __int8 **a2)
{
  if (result != a2)
  {
    while (result + 1 != a2)
    {
      v2 = result++;
      v4 = *v2;
      v3 = v2[1];
      v5 = *v3;
      v6 = **v2;
      v7 = v5 >= v6;
      if (v5 == v6)
      {
        v7 = *(v3 + 3) + *(v3 + 5) >= *(v4 + 3) + *(v4 + 5);
      }

      if (!v7)
      {
        do
        {
          v8 = v2;
          v9 = *--v2;
          v2[2] = v4;
          v4 = v9;
          v10 = *v9;
          v11 = v5 >= v10;
          if (v5 == v10)
          {
            v11 = *(v3 + 3) + *(v3 + 5) >= *(v4 + 3) + *(v4 + 5);
          }
        }

        while (!v11);
        *v8 = v3;
      }
    }
  }

  return result;
}

uint64_t std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,md::FrameGraphLogicalResource **>(uint64_t result, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 8 * v7);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **>(v5, v6, v9--);
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = *v5;
      v11 = v4;
      do
      {
        v12 = *v11;
        v13 = **v11;
        v14 = *v10;
        v15 = v13 >= v14;
        if (v13 == v14)
        {
          v15 = *(v12 + 3) + *(v12 + 5) >= *(v10 + 3) + *(v10 + 5);
        }

        if (!v15)
        {
          *v11 = v10;
          *v5 = v12;
          result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **>(v5, v6, v5);
          v10 = *v5;
        }

        ++v11;
      }

      while (v11 != a3);
    }

    if (v6 >= 2)
    {
      do
      {
        v16 = 0;
        v17 = *v5;
        v18 = v5;
        do
        {
          v19 = &v18[v16];
          v20 = v19 + 1;
          v21 = (2 * v16) | 1;
          v16 = 2 * v16 + 2;
          if (v16 >= v6)
          {
            v16 = v21;
          }

          else
          {
            v24 = v19[2];
            v22 = v19 + 2;
            v23 = v24;
            v25 = *(v22 - 1);
            v26 = *v25;
            result = *v24;
            v27 = v26 >= result;
            if (v26 == result)
            {
              v27 = *(v25 + 3) + *(v25 + 5) >= *(v23 + 3) + *(v23 + 5);
            }

            if (!v27)
            {
              v20 = v22;
            }

            else
            {
              v16 = v21;
            }
          }

          *v18 = *v20;
          v18 = v20;
        }

        while (v16 <= ((v6 - 2) >> 1));
        if (v20 == --v4)
        {
          *v20 = v17;
        }

        else
        {
          *v20 = *v4;
          *v4 = v17;
          v29 = (v20 - v5 + 8) >> 3;
          v30 = v29 < 2;
          v31 = v29 - 2;
          if (!v30)
          {
            v32 = v31 >> 1;
            v33 = &v5[v32];
            v34 = *v33;
            v35 = *v20;
            v36 = **v33;
            v37 = **v20;
            v38 = v36 >= v37;
            if (v36 == v37)
            {
              v38 = *(v34 + 3) + *(v34 + 5) >= *(v35 + 3) + *(v35 + 5);
            }

            if (!v38)
            {
              while (1)
              {
                v39 = v33;
                *v20 = v34;
                if (!v32)
                {
                  break;
                }

                v32 = (v32 - 1) >> 1;
                v33 = &v5[v32];
                v34 = *v33;
                v40 = **v33;
                v41 = v40 >= v37;
                if (v40 == v37)
                {
                  v20 = v39;
                  if (*(v34 + 3) + *(v34 + 5) >= *(v35 + 3) + *(v35 + 5))
                  {
                    break;
                  }
                }

                else
                {
                  v20 = v39;
                  if (v41)
                  {
                    break;
                  }
                }
              }

              *v39 = v35;
            }
          }
        }

        v30 = v6-- <= 2;
      }

      while (!v30);
    }
  }

  return result;
}

unsigned __int8 **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphLogicalResource **,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = *(a2 - 1);
  v4 = **a1;
  v5 = *v3;
  if (v4 == v5)
  {
    if (*(v2 + 24) + *(v2 + 20) >= *(v3 + 3) + *(v3 + 5))
    {
      goto LABEL_3;
    }
  }

  else if (v4 >= v5)
  {
LABEL_3:
    for (i = a1 + 1; i < a2; ++i)
    {
      v7 = **i;
      v8 = v4 >= v7;
      if (v4 == v7)
      {
        v8 = *(v2 + 24) + *(v2 + 20) >= *(*i + 3) + *(*i + 5);
      }

      if (!v8)
      {
        break;
      }
    }

    goto LABEL_17;
  }

  for (i = a1 + 1; ; ++i)
  {
    v9 = **i;
    v10 = v4 >= v9;
    if (v4 == v9)
    {
      v10 = *(v2 + 24) + *(v2 + 20) >= *(*i + 3) + *(*i + 5);
    }

    if (!v10)
    {
      break;
    }
  }

LABEL_17:
  if (i < a2)
  {
    for (--a2; ; --a2)
    {
      v11 = v4 >= v5;
      if (v4 == v5)
      {
        v11 = *(v2 + 24) + *(v2 + 20) >= *(v3 + 3) + *(v3 + 5);
      }

      if (v11)
      {
        break;
      }

      v12 = *(a2 - 1);
      v3 = v12;
      v5 = *v12;
    }
  }

  if (i < a2)
  {
    v13 = *i;
    v14 = *a2;
    do
    {
      *i++ = v14;
      *a2 = v13;
      while (1)
      {
        v13 = *i;
        v15 = **i;
        v16 = v4 >= v15;
        if (v4 == v15)
        {
          v16 = *(v2 + 24) + *(v2 + 20) >= *(v13 + 3) + *(v13 + 5);
        }

        if (!v16)
        {
          break;
        }

        ++i;
      }

      do
      {
        v17 = *--a2;
        v14 = v17;
        v18 = *v17;
        v19 = v4 >= v18;
        if (v4 == v18)
        {
          v19 = *(v2 + 24) + *(v2 + 20) >= *(v14 + 3) + *(v14 + 5);
        }
      }

      while (!v19);
    }

    while (i < a2);
  }

  if (i - 1 != a1)
  {
    *a1 = *(i - 1);
  }

  *(i - 1) = v2;
  return i;
}

unsigned __int8 **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphLogicalResource **,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &>(unsigned __int8 **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v2 = *a1;
  v4 = **a1;
  while (1)
  {
    v5 = *v3;
    v6 = **v3;
    v7 = v6 >= v4;
    if (v6 == v4)
    {
      v7 = *(v5 + 3) + *(v5 + 5) >= *(v2 + 24) + *(v2 + 20);
    }

    if (v7)
    {
      break;
    }

    ++v3;
  }

  v8 = v3 - 1;
  v9 = (a2 - 8);
  if (v3 - 1 == a1)
  {
    while (v3 < v9 + 1)
    {
      v12 = **v9;
      v13 = v12 >= v4;
      if (v12 == v4)
      {
        v13 = *(*v9 + 3) + *(*v9 + 5) >= *(v2 + 24) + *(v2 + 20);
      }

      if (!v13)
      {
        goto LABEL_19;
      }

      --v9;
    }

    ++v9;
  }

  else
  {
    while (1)
    {
      v10 = **v9;
      v11 = v10 >= v4;
      if (v10 == v4)
      {
        v11 = *(*v9 + 3) + *(*v9 + 5) >= *(v2 + 24) + *(v2 + 20);
      }

      if (!v11)
      {
        break;
      }

      --v9;
    }
  }

LABEL_19:
  if (v3 < v9)
  {
    v14 = *v9;
    v15 = v3;
    v16 = v9;
    do
    {
      *v15++ = v14;
      *v16 = v5;
      while (1)
      {
        v5 = *v15;
        v17 = **v15;
        v18 = v17 >= v4;
        if (v17 == v4)
        {
          v18 = *(v5 + 3) + *(v5 + 5) >= *(v2 + 24) + *(v2 + 20);
        }

        if (v18)
        {
          break;
        }

        ++v15;
      }

      v8 = v15 - 1;
      do
      {
        v19 = *--v16;
        v14 = v19;
        v20 = *v19;
        v21 = v20 >= v4;
        if (v20 == v4)
        {
          v21 = *(v14 + 3) + *(v14 + 5) >= *(v2 + 24) + *(v2 + 20);
        }
      }

      while (v21);
    }

    while (v15 < v16);
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v2;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(a1, a1 + 1, a1 + 2);
        v21 = *(a2 - 1);
        v22 = a1[2];
        v23 = *v21;
        v24 = *v22;
        v25 = v23 >= v24;
        if (v23 == v24)
        {
          v25 = *(v21 + 3) + *(v21 + 5) >= *(v22 + 3) + *(v22 + 5);
        }

        if (!v25)
        {
          a1[2] = v21;
          *(a2 - 1) = v22;
          v27 = a1[1];
          v26 = a1[2];
          v28 = *v26;
          v29 = *v27;
          v30 = v28 >= v29;
          if (v28 == v29)
          {
            v30 = *(v26 + 3) + *(v26 + 5) >= *(v27 + 3) + *(v27 + 5);
          }

          if (!v30)
          {
            a1[1] = v26;
            a1[2] = v27;
            v31 = **a1;
            v32 = v28 >= v31;
            if (v28 == v31)
            {
              v32 = *(v26 + 3) + *(v26 + 5) >= *(*a1 + 3) + *(*a1 + 5);
            }

            if (!v32)
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = *v5;
      v8 = **a1;
      v9 = v7 >= v8;
      if (v7 == v8)
      {
        v9 = *(v5 + 3) + *(v5 + 5) >= *(v6 + 3) + *(v6 + 5);
      }

      if (!v9)
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v10 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **,0>(a1, a1 + 1, a1 + 2);
  v11 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    v16 = **v11;
    v17 = **v10;
    v18 = v16 >= v17;
    if (v16 == v17)
    {
      v18 = *(v14 + 3) + *(v14 + 5) >= *(v15 + 3) + *(v15 + 5);
    }

    if (v18)
    {
      goto LABEL_28;
    }

    for (i = v12; ; i -= 8)
    {
      *(a1 + i + 24) = v15;
      if (i == -16)
      {
        v10 = a1;
        goto LABEL_27;
      }

      v15 = *(a1 + i + 8);
      v20 = *v15;
      if (v16 != v20)
      {
        break;
      }

      if (*(v14 + 3) + *(v14 + 5) >= *(v15 + 3) + *(v15 + 5))
      {
        goto LABEL_27;
      }

LABEL_24:
      --v10;
    }

    if (v16 < v20)
    {
      goto LABEL_24;
    }

    v10 = (a1 + i + 16);
LABEL_27:
    *v10 = v14;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 8;
      if (++v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 1 == a2;
  }
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_1 &,md::FrameGraphLogicalResource **>(uint64_t result, uint64_t a2, unsigned __int8 **a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 3)
    {
      v5 = v3 >> 2;
      v6 = (v3 >> 2) + 1;
      v7 = (result + 8 * v6);
      v8 = v5 + 2;
      if (v8 < a2)
      {
        v9 = v7[1];
        v10 = **v7;
        v11 = *v9;
        v12 = v10 >= v11;
        if (v10 == v11)
        {
          v12 = *(*v7 + 3) + *(*v7 + 5) >= *(v9 + 3) + *(v9 + 5);
        }

        if (!v12)
        {
          ++v7;
          v6 = v8;
        }
      }

      v14 = *v7;
      v15 = *a3;
      v16 = **v7;
      v17 = **a3;
      v18 = v16 >= v17;
      if (v16 == v17)
      {
        v18 = *(v14 + 3) + *(v14 + 5) >= *(v15 + 24) + *(v15 + 20);
      }

      if (v18)
      {
        while (1)
        {
          v19 = v7;
          *a3 = v14;
          if (v4 < v6)
          {
            break;
          }

          v20 = (2 * v6) | 1;
          v7 = (result + 8 * v20);
          v6 = 2 * v6 + 2;
          if (v6 >= a2)
          {
            v6 = v20;
          }

          else
          {
            v21 = v7[1];
            v22 = **v7;
            v23 = *v21;
            v24 = v22 >= v23;
            if (v22 == v23)
            {
              v24 = *(*v7 + 3) + *(*v7 + 5) >= *(v21 + 3) + *(v21 + 5);
            }

            if (!v24)
            {
              ++v7;
            }

            else
            {
              v6 = v20;
            }
          }

          v14 = *v7;
          v26 = **v7;
          if (v26 == v17)
          {
            a3 = v19;
            if (*(v14 + 3) + *(v14 + 5) < *(v15 + 24) + *(v15 + 20))
            {
              break;
            }
          }

          else
          {
            a3 = v19;
            if (v26 < v17)
            {
              break;
            }
          }
        }

        *v19 = v15;
      }
    }
  }

  return result;
}

unsigned __int8 **std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(unsigned __int8 **result, unsigned __int8 **a2, unsigned __int8 **a3, unsigned __int8 **a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = **a2;
  v7 = **result;
  v8 = *a3;
  v9 = **a3;
  if (v6 >= v7)
  {
    if (v9 >= v6)
    {
      v4 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v4;
      v10 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v10;
        v4 = *a3;
      }
    }
  }

  else
  {
    if (v9 < v6)
    {
      *result = v8;
LABEL_9:
      *a3 = v5;
      v4 = v5;
      goto LABEL_11;
    }

    *result = v4;
    *a2 = v5;
    v4 = *a3;
    if (**a3 < v7)
    {
      *a2 = v4;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (**a4 < *v4)
  {
    *a3 = *a4;
    *a4 = v4;
    v11 = *a2;
    if (**a3 < **a2)
    {
      *a2 = *a3;
      *a3 = v11;
      v12 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v12;
      }
    }
  }

  return result;
}

unsigned __int8 **std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(unsigned __int8 **result, unsigned __int8 **a2, unsigned __int8 **a3, unsigned __int8 **a4, unsigned __int8 **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a2;
  v8 = **result;
  v9 = *a3;
  v10 = **a3;
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (**a3 < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (**a4 < *v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (**a3 < **a2)
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (**a5 < **a4)
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (**a4 < **a3)
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (**a3 < **a2)
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (**a2 < **result)
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

unsigned __int8 **std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **>(unsigned __int8 **result, unsigned __int8 **a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = *v4;
        v5 = v4[1];
        v4 = v2;
        v7 = *v5;
        if (v7 < *v6)
        {
          v8 = v3;
          while (1)
          {
            *(result + v8 + 8) = v6;
            if (!v8)
            {
              break;
            }

            v6 = *(result + v8 - 8);
            v8 -= 8;
            if (v7 >= *v6)
            {
              v9 = (result + v8 + 8);
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v5;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

unsigned __int8 **std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **>(unsigned __int8 **result, unsigned __int8 **a2)
{
  if (result != a2)
  {
    while (result + 1 != a2)
    {
      v3 = *result;
      v2 = result[1];
      ++result;
      v4 = *v2;
      if (v4 < *v3)
      {
        v5 = result;
        do
        {
          *v5 = v3;
          v3 = *(v5 - 2);
          --v5;
        }

        while (v4 < *v3);
        *v5 = v2;
      }
    }
  }

  return result;
}

uint64_t std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,md::FrameGraphPass **>(uint64_t result, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 3;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 8 * v7);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **>(v5, v6, v9--);
        --v8;
      }

      while (v8);
    }

    if (v4 != a3)
    {
      v10 = *v5;
      v11 = v4;
      do
      {
        v12 = *v11;
        if (**v11 < *v10)
        {
          *v11 = v10;
          *v5 = v12;
          result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **>(v5, v6, v5);
          v10 = *v5;
        }

        ++v11;
      }

      while (v11 != a3);
    }

    if (v6 >= 2)
    {
      do
      {
        v13 = 0;
        v14 = *v5;
        v15 = v5;
        do
        {
          v16 = &v15[v13];
          v17 = v16 + 1;
          v18 = v16[1];
          v19 = (2 * v13) | 1;
          v13 = 2 * v13 + 2;
          if (v13 >= v6)
          {
            v13 = v19;
          }

          else
          {
            v22 = v16[2];
            v20 = v16 + 2;
            v21 = v22;
            result = *v22;
            if (*v18 >= result)
            {
              v13 = v19;
            }

            else
            {
              v18 = v21;
              v17 = v20;
            }
          }

          *v15 = v18;
          v15 = v17;
        }

        while (v13 <= ((v6 - 2) >> 1));
        if (v17 == --v4)
        {
          *v17 = v14;
        }

        else
        {
          *v17 = *v4;
          *v4 = v14;
          v23 = (v17 - v5 + 8) >> 3;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (!v24)
          {
            v26 = v25 >> 1;
            v27 = &v5[v26];
            v28 = *v27;
            v29 = *v17;
            v30 = **v17;
            if (**v27 < v30)
            {
              do
              {
                v31 = v27;
                *v17 = v28;
                if (!v26)
                {
                  break;
                }

                v26 = (v26 - 1) >> 1;
                v27 = &v5[v26];
                v28 = *v27;
                v17 = v31;
              }

              while (**v27 < v30);
              *v31 = v29;
            }
          }
        }

        v24 = v6-- <= 2;
      }

      while (!v24);
    }
  }

  return result;
}

unsigned __int8 **std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphPass **,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3 >= **(a2 - 1))
  {
    v6 = a1 + 1;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      ++v6;
    }

    while (v3 >= **v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[1];
      ++v4;
    }

    while (v3 >= *v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *--a2;
    }

    while (v3 < *v7);
  }

  if (v4 < a2)
  {
    v8 = *v4;
    v9 = *a2;
    do
    {
      *v4 = v9;
      *a2 = v8;
      do
      {
        v10 = v4[1];
        ++v4;
        v8 = v10;
      }

      while (v3 >= *v10);
      do
      {
        v11 = *--a2;
        v9 = v11;
      }

      while (v3 < *v11);
    }

    while (v4 < a2);
  }

  if (v4 - 1 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

unsigned __int8 **std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphPass **,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = a1;
  do
  {
    v5 = v4;
    v7 = v4[1];
    ++v4;
    v6 = v7;
  }

  while (*v7 < v3);
  if (v5 == a1)
  {
    do
    {
      if (v4 >= a2)
      {
        break;
      }

      v9 = *--a2;
    }

    while (*v9 >= v3);
  }

  else
  {
    do
    {
      v8 = *--a2;
    }

    while (*v8 >= v3);
  }

  if (v4 < a2)
  {
    v10 = *a2;
    v11 = v4;
    v12 = a2;
    do
    {
      *v11 = v10;
      *v12 = v6;
      do
      {
        v5 = v11;
        v13 = v11[1];
        ++v11;
        v6 = v13;
      }

      while (*v13 < v3);
      do
      {
        v14 = *--v12;
        v10 = v14;
      }

      while (*v14 >= v3);
    }

    while (v11 < v12);
  }

  if (v5 != a1)
  {
    *a1 = *v5;
  }

  *v5 = v2;
  return v5;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **>(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *v6;
      v8 = **a1;
      v9 = *(a2 - 1);
      v10 = *v9;
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v30 = *a1;
          v29 = a1[1];
          if (*v29 < **a1)
          {
            *a1 = v29;
            a1[1] = v30;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v36 = *(a2 - 1);
        if (*v36 >= v8)
        {
          return 1;
        }

        a1[1] = v36;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1 + 2;
    v21 = a1[2];
    v22 = *a1;
    v23 = *v19;
    v24 = **a1;
    v25 = *v21;
    if (v23 >= v24)
    {
      if (v25 >= v23)
      {
LABEL_29:
        v19 = v21;
        goto LABEL_30;
      }

      *v18 = v21;
      *v20 = v19;
      v26 = a1;
      v27 = a1 + 1;
      v28 = v19;
      if (v25 >= v24)
      {
LABEL_30:
        v32 = *(a2 - 1);
        if (*v32 < *v19)
        {
          *v20 = v32;
          *(a2 - 1) = v19;
          v33 = *v20;
          v34 = *v18;
          v35 = *v33;
          if (v35 < *v34)
          {
            a1[1] = v33;
            a1[2] = v34;
            if (v35 < **a1)
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v26 = a1;
      v27 = a1 + 2;
      v28 = *a1;
      if (v25 >= v23)
      {
        *a1 = v19;
        a1[1] = v22;
        v26 = a1 + 1;
        v27 = a1 + 2;
        v28 = v22;
        if (v25 >= v24)
        {
          goto LABEL_29;
        }
      }
    }

    *v26 = v21;
    *v27 = v22;
    v19 = v28;
    goto LABEL_30;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*v3 < **a1)
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = *a1;
  v14 = a1[1];
  v15 = *v14;
  v16 = **a1;
  v17 = *v11;
  if (v15 >= v16)
  {
    if (v17 < v15)
    {
      a1[1] = v11;
      a1[2] = v14;
      if (v17 < v16)
      {
        v31 = *a1;
        *a1 = v11;
        a1[1] = v31;
      }
    }
  }

  else
  {
    if (v17 >= v15)
    {
      *a1 = v14;
      a1[1] = v13;
      if (v17 >= v16)
      {
        goto LABEL_40;
      }

      a1[1] = v11;
    }

    else
    {
      *a1 = v11;
    }

    a1[2] = v13;
  }

LABEL_40:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v37;
    v41 = *v12;
    v42 = **v37;
    if (v42 < *v41)
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 8;
        if (v43 == 8)
        {
          break;
        }

        v41 = *(a1 + v43 - 16);
        v43 -= 8;
        if (v42 >= *v41)
        {
          v45 = (a1 + v44);
          goto LABEL_48;
        }
      }

      v45 = a1;
LABEL_48:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v12 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::FrameGraphBuilder::build(md::FrameGraphResourceRegistry *)::$_0 &,md::FrameGraphPass **>(uint64_t result, uint64_t a2, unsigned __int8 **a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 3)
    {
      v5 = v3 >> 2;
      v6 = (v3 >> 2) + 1;
      v7 = (result + 8 * v6);
      v8 = v5 + 2;
      v9 = *v7;
      if (v8 >= a2)
      {
        v10 = *v9;
      }

      else
      {
        v10 = *v9;
        v11 = *v7[1];
        v12 = v10 >= v11;
        if (v10 <= v11)
        {
          v10 = *v7[1];
        }

        if (!v12)
        {
          v9 = v7[1];
          ++v7;
          v6 = v8;
        }
      }

      v13 = *a3;
      v14 = **a3;
      if (v10 >= v14)
      {
        do
        {
          v15 = v7;
          *a3 = v9;
          if (v4 < v6)
          {
            break;
          }

          v16 = (2 * v6) | 1;
          v7 = (result + 8 * v16);
          v6 = 2 * v6 + 2;
          v9 = *v7;
          if (v6 >= a2)
          {
            v17 = *v9;
            v6 = v16;
          }

          else
          {
            v17 = *v9;
            v18 = *v7[1];
            v19 = v17 >= v18;
            if (v17 <= v18)
            {
              v17 = *v7[1];
            }

            if (v19)
            {
              v6 = v16;
            }

            else
            {
              v9 = v7[1];
              ++v7;
            }
          }

          a3 = v15;
        }

        while (v17 >= v14);
        *v15 = v13;
      }
    }
  }

  return result;
}

uint64_t *md::RouteWaypointLabelFeature::additionalIconAttributeValues@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 24) = 0;
  if (*(this + 768) == 1)
  {
    this = std::vector<unsigned int>::vector[abi:nn200100](a2, this + 93);
    *(a2 + 24) = 1;
  }

  return this;
}

void sub_1B2D31C98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

char *md::RouteWaypointLabelFeature::newIconPart(mdm::zone_mallocator *a1, void *a2)
{
  if (*(a1 + 737) == 2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    v4 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v3, 0x3D0uLL);
    v9[0] = 0;
    v9[1] = 0;
    v5 = md::IconLabelPart::IconLabelPart(v4, v9, 0, 0);
    *v4 = &unk_1F2A34838;
    v4[52] = 0u;
    *(v4 + 106) = -1;
    *(v4 + 107) = -1;
    *(v4 + 108) = -1;
    *(v4 + 872) = 0u;
    *(v4 + 111) = -1;
    *(v4 + 112) = -1;
    *(v4 + 113) = -1;
    v4[57] = xmmword_1B33B0730;
    v4[58] = xmmword_1B33B0720;
    v4[59] = xmmword_1B33B0730;
    v4[60] = 0u;
    *(v4 + 716) = 8;
    v6 = mdm::zone_mallocator::instance(v5);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v6, 0x288uLL);
    md::WorldSpaceLabelPart::WorldSpaceLabelPart(v7, v4, a2[1], 50, 1);
    return v7;
  }

  else
  {

    return md::PointLabelFeature::newIconPart(a1, a2);
  }
}

void sub_1B2D31DD8(mdm::zone_mallocator *a1)
{
  v3 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v1);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *md::RouteWaypointLabelFeature::populateAdditionalStyleAttributes(mdm::zone_mallocator *a1, uint64_t a2)
{
  result = md::PointLabelFeature::populateAdditionalStyleAttributes(a1, a2);
  if (*(a1 + 739) == 1)
  {
    v5 = *(a1 + 738);
    v7 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        goto LABEL_43;
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      v56 = a2 + 24;
      if (v12)
      {
        v13 = mdm::zone_mallocator::instance(result);
        v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v13, v12);
      }

      else
      {
        v14 = 0;
      }

      v16 = &v14[8 * v12];
      v15 = &v14[8 * v9];
      *v15 = ((v5 << 32) | 0x10002) + 7;
      v8 = v15 + 8;
      v17 = *(a2 + 8) - *a2;
      v18 = &v15[-v17];
      memcpy(&v15[-v17], *a2, v17);
      v19 = *a2;
      *a2 = v18;
      *(a2 + 8) = v8;
      v20 = *(a2 + 16);
      *(a2 + 16) = v16;
      v54 = v19;
      v55 = v20;
      v52 = v19;
      v53 = v19;
      result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v52);
    }

    else
    {
      *v7 = ((v5 << 32) | 0x10002) + 7;
      v8 = v7 + 1;
    }

    *(a2 + 8) = v8;
  }

  if (*(a1 + 741))
  {
    v21 = *(a1 + 740);
    v23 = *(a2 + 8);
    v22 = *(a2 + 16);
    if (v23 >= v22)
    {
      v25 = (v23 - *a2) >> 3;
      if ((v25 + 1) >> 61)
      {
        goto LABEL_43;
      }

      v26 = v22 - *a2;
      v27 = v26 >> 2;
      if (v26 >> 2 <= (v25 + 1))
      {
        v27 = v25 + 1;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      v56 = a2 + 24;
      if (v28)
      {
        v29 = mdm::zone_mallocator::instance(result);
        v30 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v29, v28);
      }

      else
      {
        v30 = 0;
      }

      v32 = &v30[8 * v28];
      v31 = &v30[8 * v25];
      *v31 = ((v21 << 32) | 0x10002) + 82;
      v24 = (v31 + 8);
      v33 = *(a2 + 8) - *a2;
      v34 = &v31[-v33];
      memcpy(&v31[-v33], *a2, v33);
      v35 = *a2;
      *a2 = v34;
      *(a2 + 8) = v24;
      v36 = *(a2 + 16);
      *(a2 + 16) = v32;
      v54 = v35;
      v55 = v36;
      v52 = v35;
      v53 = v35;
      result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v52);
    }

    else
    {
      *v23 = ((v21 << 32) | 0x10002) + 82;
      v24 = v23 + 1;
    }

    *(a2 + 8) = v24;
  }

  else
  {
    v24 = *(a2 + 8);
  }

  v37 = *(a1 + 736);
  v38 = *(a2 + 16);
  if (v24 < v38)
  {
    *v24 = (v37 << 32) | 0x10002;
    v39 = v24 + 1;
    goto LABEL_42;
  }

  v40 = (v24 - *a2) >> 3;
  if ((v40 + 1) >> 61)
  {
LABEL_43:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v41 = v38 - *a2;
  v42 = v41 >> 2;
  if (v41 >> 2 <= (v40 + 1))
  {
    v42 = v40 + 1;
  }

  if (v41 >= 0x7FFFFFFFFFFFFFF8)
  {
    v43 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v43 = v42;
  }

  v56 = a2 + 24;
  if (v43)
  {
    v44 = mdm::zone_mallocator::instance(result);
    v45 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v44, v43);
  }

  else
  {
    v45 = 0;
  }

  v47 = &v45[8 * v43];
  v46 = &v45[8 * v40];
  *v46 = (v37 << 32) | 0x10002;
  v39 = v46 + 1;
  v48 = *(a2 + 8) - *a2;
  v49 = v46 - v48;
  memcpy(v46 - v48, *a2, v48);
  v50 = *a2;
  *a2 = v49;
  *(a2 + 8) = v39;
  v51 = *(a2 + 16);
  *(a2 + 16) = v47;
  v54 = v50;
  v55 = v51;
  v52 = v50;
  v53 = v50;
  result = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v52);
LABEL_42:
  *(a2 + 8) = v39;
  return result;
}

void md::RouteWaypointLabelFeature::debugString(uint64_t a1@<X0>, std::string *a2@<X8>, uint64_t a3@<X1>, unsigned int *a4@<X2>, char a5@<W3>)
{
  md::LabelFeature::debugString(a1, a3, a4, a5, a2);
  std::string::append(a2, "RouteWaypoint:\n", 0xFuLL);
  memset(&v40, 0, sizeof(v40));
  v7 = *(a1 + 720);
  md::LabelExternalPointFeature::incident(v7);
  objc_claimAutoreleasedReturnValue();

  if (v7)
  {
    v8 = *(a1 + 720);
    md::LabelExternalPointFeature::incident(v8);
    v9 = [objc_claimAutoreleasedReturnValue() legIndex];
    std::to_string(&v37, v9);
    v10 = std::string::insert(&v37, 0, " LegIndex=", 0xAuLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v39 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v39 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if (v39 >= 0)
    {
      v13 = HIBYTE(v39);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(&v40, v12, v13);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 741) == 1)
  {
    v14 = gss::to_string(*(a1 + 740));
    std::string::basic_string[abi:nn200100]<0>(&v37, v14);
    v15 = std::string::insert(&v37, 0, " LegWhen=", 9uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v39 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (v39 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if (v39 >= 0)
    {
      v18 = HIBYTE(v39);
    }

    else
    {
      v18 = __p[1];
    }

    std::string::append(&v40, v17, v18);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 739) == 1)
  {
    v19 = gss::to_string(*(a1 + 738));
    std::string::basic_string[abi:nn200100]<0>(&v37, v19);
    v20 = std::string::insert(&v37, 0, " When=", 6uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v39 = v20->__r_.__value_.__r.__words[2];
    *__p = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v39 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if (v39 >= 0)
    {
      v23 = HIBYTE(v39);
    }

    else
    {
      v23 = __p[1];
    }

    std::string::append(&v40, v22, v23);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  v24 = [*(a1 + 720) annotationText];

  if (v24)
  {
    v25 = *(a1 + 720);
    v26 = [v25 annotationText];
    std::string::basic_string[abi:nn200100]<0>(&v37, [v26 UTF8String]);
    v27 = std::string::insert(&v37, 0, " Annotation text=", 0x11uLL);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v39 = v27->__r_.__value_.__r.__words[2];
    *__p = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    if (v39 >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    if (v39 >= 0)
    {
      v30 = HIBYTE(v39);
    }

    else
    {
      v30 = __p[1];
    }

    std::string::append(&v40, v29, v30);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  v32 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v40.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::operator+<char>();
    v33 = std::string::append(&v37, "\n", 1uLL);
    v34 = v33->__r_.__value_.__r.__words[2];
    *__p = *&v33->__r_.__value_.__l.__data_;
    v39 = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    if (v39 >= 0)
    {
      v35 = __p;
    }

    else
    {
      v35 = __p[0];
    }

    if (v39 >= 0)
    {
      v36 = HIBYTE(v39);
    }

    else
    {
      v36 = __p[1];
    }

    std::string::append(a2, v35, v36);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v32 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  if (v32 < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }
}

void sub_1B2D3269C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v24 + 23) < 0)
  {
    operator delete(*v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::RouteWaypointLabelFeature::labelFeatureType(md::RouteWaypointLabelFeature *this)
{
  v1 = *(this + 737);
  if (v1 == 2)
  {
    v2 = 21;
  }

  else
  {
    v2 = 20;
  }

  if (v1 == 3)
  {
    return 22;
  }

  else
  {
    return v2;
  }
}

uint64_t md::RouteWaypointLabelFeature::facingVector(uint64_t a1)
{
  if (*(a1 + 737) == 2)
  {
    return *(a1 + 776);
  }

  else
  {
    return 0;
  }
}

uint64_t md::RouteWaypointLabelFeature::updateDynamicStyling(id *this, md::LabelManager *a2, md::Label *a3)
{
  v5 = [this[90] isOnSelectedRoute];
  v6 = *(this + 736);
  v7 = v6 != v5;
  if (v6 != v5)
  {
    *(this + 736) = v5;
  }

  if ((((*(**(*(a2 + 21) + 32) + 8))(*(*(a2 + 21) + 32)) & 1) != 0 || (*(**(*(a2 + 21) + 32) + 32))(*(*(a2 + 21) + 32))) && *(this + 736) == 1)
  {
    v8 = (*(**(*(a2 + 21) + 32) + 48))(*(*(a2 + 21) + 32));
    v9 = this[90];
    v10 = [v9 legIndex];

    if (v10 <= v8)
    {
      v17 = this[90];
      v18 = [v17 legIndex];

      if (v18 >= v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 0;
    }

    if (*(this + 741) != 1 || *(this + 740) != v11)
    {
      *(this + 370) = v11 | 0x100;
      v7 = 1;
    }

    v19 = [this[90] when];
    v20 = v19 == 2;
    if (v19 == 3)
    {
      v20 = 2;
    }

    if (*(this + 739) == 1 && v20 == *(this + 738))
    {
      goto LABEL_27;
    }

    v16 = v20 | 0x100;
  }

  else
  {
    v12 = this[90];
    v13 = [v12 legIndex];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v15 = this[90];
      [v15 legIndex];

      v14 = 1;
    }

    if (*(this + 741) != 1 || *(this + 740) != v14)
    {
      *(this + 370) = v14 | 0x100;
      v7 = 1;
    }

    if (*(this + 739) == 1 && !*(this + 738))
    {
LABEL_27:
      if (!v7)
      {
        return 0;
      }

      goto LABEL_31;
    }

    v16 = 256;
  }

  *(this + 369) = v16;
LABEL_31:
  (*(*this + 69))(this, a2);
  return 0;
}

md::LabelPart *md::RouteWaypointLabelFeature::newRootPart(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v6 = md::PointLabelFeature::newRootPart(a1, a2, a3, a4, a5);
  v7 = v6;
  if (v6 && *(a1[60] + 84) != 0x7FFFFFFF)
  {
    (*(*v6 + 832))(v6, ~*(a1[60] + 84));
  }

  return v7;
}

void md::RouteWaypointLabelFeature::~RouteWaypointLabelFeature(md::RouteWaypointLabelFeature *this)
{
  *this = &unk_1F29F0438;
  if (*(this + 768) == 1)
  {
    v2 = *(this + 93);
    if (v2)
    {
      *(this + 94) = v2;
      operator delete(v2);
    }
  }

  *(this + 89) = &unk_1F29F0758;

  md::PointLabelFeature::~PointLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F0438;
  if (*(this + 768) == 1)
  {
    v2 = *(this + 93);
    if (v2)
    {
      *(this + 94) = v2;
      operator delete(v2);
    }
  }

  *(this + 89) = &unk_1F29F0758;

  md::PointLabelFeature::~PointLabelFeature(this);
}

void geo::_retain_ptr<VKRouteWaypointInfo * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29F0758;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKRouteWaypointInfo * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29F0758;

  return a1;
}

uint64_t md::LabelExternalPointFeature::isCluster(md::LabelExternalPointFeature *this)
{
  md::ClusterNodeContext::LockedPtr::LockedPtr(&v3, this + 36);
  if (v5)
  {
    v1 = ((*(*v5 + 32))(v5) >> 2) & 1;
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

void sub_1B2D32CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *md::ClusterNodeContext::LockedPtr::LockedPtr(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = a2[2];
  if (v3 && v3->__shared_owners_ != -1)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v6 = a2[1];
    if (!v5)
    {
      v6 = 0;
    }

    v7 = a1[1];
    *a1 = v6;
    a1[1] = v5;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      v6 = *a1;
    }

    if (v6)
    {
      a1[2] = *a2;
    }
  }

  return a1;
}

uint64_t *std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned int>::__vallocate[abi:nn200100](v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

uint64_t md::RouteWaypointLabelFeature::RouteWaypointLabelFeature(uint64_t a1, void *a2, char a3, char a4, md::LabelExternalPointFeature **a5, uint64_t a6)
{
  v11 = a2;
  md::PointLabelFeature::PointLabelFeature(a1, a5, 0, a6, 0);
  *a1 = &unk_1F29F0438;
  v12 = v11;
  *(a1 + 712) = &unk_1F29F0758;
  *(a1 + 720) = v12;
  *(a1 + 736) = a3;
  *(a1 + 737) = a4;
  *(a1 + 744) = 0;
  *(a1 + 768) = 0;
  *(a1 + 776) = 0;
  *(a1 + 788) = 0;
  *(a1 + 738) = 0;
  if (md::LabelExternalPointFeature::isCluster(*a5))
  {
    md::ClusterNodeContext::LockedPtr::LockedPtr(&v51, *a5 + 36);
    if (v52)
    {
      v13 = (*(*v52 + 80))(v52);
      if (v13)
      {
        v14 = (v13 + 144);
        if (*(a1 + 768) == 1)
        {
          if ((a1 + 744) != v14)
          {
            std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 744), *(v13 + 144), *(v13 + 152), (*(v13 + 152) - *(v13 + 144)) >> 2);
          }
        }

        else
        {
          std::vector<unsigned int>::vector[abi:nn200100]((a1 + 744), v14);
          *(a1 + 768) = 1;
        }
      }
    }

    if (*(&v51 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v51 + 1));
    }
  }

  if (*(a1 + 737) == 2)
  {
    [v12 routeCoordinate];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 adjacentRouteCoordinate];
    v23 = v21;
    v24 = v22;
    v26 = v25;
    if (vabdd_f64(v16, v21) < 0.00000000999999994 && vabdd_f64(v18, v22) < 0.00000000999999994 || fabs(v18) > 180.0 || v16 < -90.0 || v16 > 90.0 || fabs(v22) > 180.0 || v21 < -90.0 || v21 > 90.0)
    {
      md::LabelFeature::vectorFromAzimuth((a1 + 192), 0.0, ((*(*(a6 + 232) + 17) & 1) == 0));
      v27 = *(a1 + 788);
      *(a1 + 776) = v28;
      *(a1 + 780) = v29;
      *(a1 + 784) = v30;
      if ((v27 & 1) == 0)
      {
        *(a1 + 788) = 1;
      }
    }

    else
    {
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      v54 = 2139095039;
      v55 = 0;
      v56 = 0;
      v47 = 0;
      memset(v46, 0, sizeof(v46));
      v48 = 2139095039;
      v49 = 0;
      v50 = 0;
      v43 = v16;
      v44 = v18;
      v45 = v20;
      md::LabelPoint::setCoordinate(&v51, &v43);
      v43 = v23;
      v44 = v24;
      v45 = v26;
      md::LabelPoint::setCoordinate(v46, &v43);
      *&v43 = *&md::LabelPoint::vectorToPoint(&v51, v46, (*(*(a6 + 232) + 17) & 1) == 0);
      v44 = v32;
      v45 = v33;
      v34 = gm::Matrix<double,3,1>::normalized<int,void>(&v43);
      v35 = 0;
      *v40 = v34;
      v40[1] = v36;
      v40[2] = v37;
      do
      {
        v38 = *&v40[v35];
        *(&v41 + v35++) = v38;
      }

      while (v35 != 3);
      v39 = *(a1 + 788);
      *(a1 + 776) = v41;
      *(a1 + 784) = v42;
      if ((v39 & 1) == 0)
      {
        *(a1 + 788) = 1;
      }
    }
  }

  return a1;
}

void sub_1B2D33208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  if (*(v24 + 768) == 1)
  {
    v29 = *v27;
    if (*v27)
    {
      *(v24 + 752) = v29;
      operator delete(v29);
    }
  }

  *(v24 + 712) = v26;

  md::PointLabelFeature::~PointLabelFeature(v24);
  _Unwind_Resume(a1);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::PolylineOverlayRibbon::BaseMesh::~BaseMesh(ggl::PolylineOverlayRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PolylineOverlayRibbon::BaseMesh::~BaseMesh(ggl::PolylineOverlayRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::attributesReflection(void)::r = &ggl::PolylineOverlayRibbon::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::attributesReflection(void)::r;
    unk_1EB841D80 = 1;
  }
}

void non-virtual thunk toggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::PolylineOverlayRibbon::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::PolylineOverlayRibbon::BakedWidthMesh::~BakedWidthMesh(ggl::PolylineOverlayRibbon::BakedWidthMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PolylineOverlayRibbon::BakedWidthMesh::~BakedWidthMesh(ggl::PolylineOverlayRibbon::BakedWidthMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t **ggl::PolylineOverlayRibbon::BakedWidthMesh::BakedWidthMesh(uint64_t **a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v15 = *MEMORY[0x1E69E9840];
  {
    {
      ggl::MeshTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>::attributesReflection(void)::r = &ggl::PolylineOverlayRibbon::bakedWidthVboReflection;
    }

    ggl::MeshTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>::attributesReflection(void)::r;
    *algn_1EB8430E8 = 1;
  }

  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::PolylineOverlayRibbon::BakedWidthVbo>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = (a1 + 15);
  *a1 = &unk_1F29F0838;
  a1[2] = &unk_1F29F0858;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(a1 + 8, &v13, &v15, 1uLL);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[13];
  a1[12] = v10;
  a1[13] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *a1 = &unk_1F29F0778;
  a1[2] = &unk_1F29F0798;
  return a1;
}

void non-virtual thunk toggl::PolylineOverlayRibbon::ElevatedMesh::~ElevatedMesh(ggl::PolylineOverlayRibbon::ElevatedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PolylineOverlayRibbon::ElevatedMesh::~ElevatedMesh(ggl::PolylineOverlayRibbon::ElevatedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MeshTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>::attributesReflection(void)::r = &ggl::PolylineOverlayRibbon::elevatedVboReflection;
    }

    ggl::MeshTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>::attributesReflection(void)::r;
    *algn_1EB8446C8 = 1;
  }
}

void non-virtual thunk toggl::MeshTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::PolylineOverlayRibbon::ElevatedVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

char *md::MultipleShieldLabelPart::clone(md::MultipleShieldLabelPart *this)
{
  v2 = mdm::zone_mallocator::instance(this);
  v3 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v2, 0x2C0uLL);
  md::LabelPart::LabelPart(v3, this);
  *v3 = &unk_1F2A5ADF0;
  *(v3 + 74) = 0;
  *(v3 + 73) = 0;
  *(v3 + 72) = 0;
  v3[608] = 0;
  v3[612] = 0;
  v3[616] = 0;
  v3[624] = 0;
  *(v3 + 314) = 1;
  v3[630] = 0;
  v4 = *(this + 72);
  v5 = *(this + 73);
  while (v4 != v5)
  {
    v6 = (*(**v4 + 896))(*v4);
    if (v6)
    {
      md::CompositeLabelPart::addLabelPart(v3, v6);
    }

    ++v4;
  }

  *v3 = &unk_1F29F08F8;
  *(v3 + 79) = *(this + 79);
  v7 = *(this + 80);
  *(v3 + 80) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(this + 81);
  *(v3 + 655) = *(this + 655);
  *(v3 + 81) = v8;
  *(v3 + 83) = *(this + 83);
  v9 = *(this + 84);
  *(v3 + 84) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 85);
  *(v3 + 687) = *(this + 687);
  *(v3 + 85) = v10;
  v3[696] = *(this + 696);
  return v3;
}

void sub_1B2D33ADC(mdm::zone_mallocator *a1)
{
  v3 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v1);
  _Unwind_Resume(a1);
}

void md::MultipleShieldLabelPart::setPosition(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = 664;
  if (!a2)
  {
    v3 = 632;
  }

  v4 = (a1 + v3);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[1];
  *v4 = v6;
  v4[1] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

uint64_t md::MultipleShieldLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  (*(**(a1 + 664) + 32))(&v11);
  if (v11 && v12 != 1)
  {
    if (*(a1 + 688))
    {
      v8 = 37;
    }

    else
    {
      v8 = 31;
    }
  }

  else
  {
    v10 = xmmword_1B33B0730;
    v8 = md::MultipleShieldLabelPart::placeShieldsOnPath(a1, 1, a2 + 432, a2, a3, a4, &v10);
    if (v8 == 37)
    {
      md::CollisionObject::resetWithRects((a1 + 312), 1u);
      md::CollisionObject::addRect(a1 + 312, &v10);
      *(a1 + 688) = *(a2 + 1608);
    }
  }

  *(a1 + 520) = a4->i32[0];
  *(a1 + 524) = a4->i32[1];
  *(a1 + 344) = a4->i32[0];
  *(a1 + 348) = a4->i32[1];
  md::CollisionObject::setupShapeData(a1 + 312);
  if (v12 == 1)
  {
    std::mutex::unlock(v11);
  }

  return v8;
}

void sub_1B2D33C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::MultipleShieldLabelPart::updateForDisplay(uint64_t this)
{
  v1 = this;
  v2 = *(this + 576);
  v3 = *(this + 584);
  while (v2 != v3)
  {
    v4 = *v2++;
    this = (*(*v4 + 112))(v4);
  }

  *(v1 + 680) = *(v1 + 648);
  if (*(v1 + 696) == 1)
  {
    *(v1 + 696) = 0;
    v5 = *(**(v1 + 632) + 24);

    return v5();
  }

  return this;
}

void md::MultipleShieldLabelPart::~MultipleShieldLabelPart(md::MultipleShieldLabelPart *this)
{
  *this = &unk_1F29F08F8;
  v2 = *(this + 84);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F29F08F8;
  v2 = *(this + 84);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

std::__shared_weak_count **md::MultipleShieldLabelPart::MultipleShieldLabelPart(std::__shared_weak_count **a1, std::__shared_weak_count **a2)
{
  md::LabelPart::LabelPart(a1);
  *(v4 + 592) = 0;
  *(v4 + 576) = 0u;
  *(v4 + 608) = 0;
  *(v4 + 612) = 0;
  *(v4 + 616) = 0;
  *(v4 + 624) = 0;
  *(v4 + 628) = 1;
  *(v4 + 630) = 0;
  *v4 = &unk_1F29F08F8;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 1065353216;
  *(v4 + 652) = 0;
  *(v4 + 659) = 0;
  v5 = (v4 + 664);
  *(v4 + 664) = 0u;
  *(v4 + 680) = 1065353216;
  *(v4 + 684) = 0;
  *(v4 + 691) = 0;
  *(v4 + 696) = 0;
  v6 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = a1[80];
    a1[79] = v6;
    a1[80] = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  else
  {
    a1[79] = v6;
    a1[80] = 0;
  }

  ((*a2)->__on_zero_shared)(&v12);
  v9 = v12;
  v12 = 0uLL;
  v10 = a1[84];
  *v5 = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    if (*(&v12 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v12 + 1));
    }
  }

  return a1;
}

void sub_1B2D33FA0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 84);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (*v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*v2);
  }

  md::CompositeLabelPart::~CompositeLabelPart(v1);
  _Unwind_Resume(a1);
}

void **std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[5];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void md::MaterialTextureManager::purge(pthread_rwlock_t *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = this;
  v2 = pthread_rwlock_wrlock(this);
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "write lock", v3);
  }

  for (i = *&this[1].__opaque[48]; i; i = *i)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = i[4];
      md::SharedResource::addFrameRef(v6, 9999);
      v7 = *(v6 + 4);
      *buf = 134217984;
      v14 = v7;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[Banana][MaterialTextureManager] purging %p", buf, 0xCu);
    }
  }

  if (*&this[1].__opaque[16])
  {
    std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::__deallocate_node(*&this[1].__opaque[8]);
    *&this[1].__opaque[8] = 0;
    v8 = *this[1].__opaque;
    if (v8)
    {
      for (j = 0; j != v8; ++j)
      {
        *(this[1].__sig + 8 * j) = 0;
      }
    }

    *&this[1].__opaque[16] = 0;
  }

  if (*&this[1].__opaque[56])
  {
    std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::__deallocate_node(*&this[1].__opaque[48]);
    *&this[1].__opaque[48] = 0;
    v10 = *&this[1].__opaque[40];
    if (v10)
    {
      for (k = 0; k != v10; ++k)
      {
        *(*&this[1].__opaque[32] + 8 * k) = 0;
      }
    }

    *&this[1].__opaque[56] = 0;
  }

  geo::write_lock_guard::~write_lock_guard(&v12);
}

void sub_1B2D34210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  geo::write_lock_guard::~write_lock_guard(va);
  _Unwind_Resume(a1);
}

void gms::TextureStore<ggl::Texture2D>::getTexture(void *a1, pthread_rwlock_t *a2, unsigned int a3)
{
  v6 = pthread_rwlock_rdlock(a2);
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  sig = a2[1].__sig;
  if (a3 >= ((*a2[1].__opaque - sig) >> 4))
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    v9 = *(sig + 16 * a3);
    *a1 = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  geo::read_write_lock::unlock(a2);
}

uint64_t **std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::MaterialTextureManager::TextureKeyHash,std::equal_to<md::MaterialTextureManager::TextureKey>,true>,std::__unordered_map_equal<md::MaterialTextureManager::TextureKey,std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::MaterialTextureManager::TextureKey>,md::MaterialTextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::__emplace_unique_key_args<md::MaterialTextureManager::TextureKey,std::piecewise_construct_t const&,std::tuple<md::MaterialTextureManager::TextureKey const&>,std::tuple<>>(float *a1, md::MaterialTextureManager::TextureKey *this, _OWORD **a3)
{
  v5 = md::MaterialTextureManager::TextureKey::hash(this);
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
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
LABEL_20:
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
      goto LABEL_20;
    }

LABEL_19:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  if (v10[2] != *this || *(v10 + 12) != *(this + 4) || *(v10 + 26) != *(this + 10))
  {
    goto LABEL_19;
  }

  return v10;
}

void sub_1B2D347A0(_Unwind_Exception *a1)
{
  v3 = v1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::MaterialTextureManager::_textureFromMaterial(std::shared_ptr<gms::Material<ggl::Texture2D>> const&,unsigned long long const&,gms::PropertyKey const&,unsigned char,std::shared_ptr<ggl::SamplerState> &,BOOL)::$_0,std::allocator<md::MaterialTextureManager::_textureFromMaterial(std::shared_ptr<gms::Material<ggl::Texture2D>> const&,unsigned long long const&,gms::PropertyKey const&,unsigned char,std::shared_ptr<ggl::SamplerState> &,BOOL)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F0CD0;
  a2[1] = v2;
  return result;
}

void sub_1B2D34F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a22);
  shared_owners = v22[2].__shared_owners_;
  v22[2].__shared_owners_ = 0;
  if (shared_owners)
  {
    (*(*shared_owners + 8))(shared_owners);
  }

  v25 = v22[1].__shared_owners_;
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v26);
  _Unwind_Resume(a1);
}

void sub_1B2D354E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *a17)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a17);
  shared_owners = v17[2].__shared_owners_;
  v17[2].__shared_owners_ = 0;
  if (shared_owners)
  {
    (*(*shared_owners + 8))(shared_owners);
  }

  v21 = v17[1].__shared_owners_;
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v22);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,std::__unordered_map_hasher<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyHash,md::MaterialTextureManager::ColorRampKeyEqual,true>,std::__unordered_map_equal<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyEqual,md::MaterialTextureManager::ColorRampKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>>>::__emplace_unique_key_args<md::MaterialTextureManager::ColorRampKey,std::piecewise_construct_t const&,std::tuple<md::MaterialTextureManager::ColorRampKey const&>,std::tuple<>>(float *a1, uint64_t *a2, unsigned __int8 a3, _OWORD **a4)
{
  v4 = (&a2[8 * a3 - 0xC3910C8D016B07DLL] + (a3 >> 2) - 3) ^ a3;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (&a2[8 * a3 - 0xC3910C8D016B07DLL] + (a3 >> 2) - 3) ^ a3;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != a2 || *(v9 + 24) != a3)
  {
    goto LABEL_21;
  }

  return v9;
}