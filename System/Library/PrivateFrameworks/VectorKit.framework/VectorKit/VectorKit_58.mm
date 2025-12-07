void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TexturesToDisconnect>();
    unk_1EB83CD60 = 0x9A2CF0F3E5B1FB4ELL;
    qword_1EB83CD68 = "md::ls::TexturesToDisconnect]";
    qword_1EB83CD70 = 28;
  }
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14C20;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::View>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::View>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[176];
}

void std::__hash_table<VKRouteEtaType,std::hash<VKRouteEtaType>,std::equal_to<VKRouteEtaType>,std::allocator<VKRouteEtaType>>::__emplace_unique_key_args<VKRouteEtaType,VKRouteEtaType const&>(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
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
}

void ecs2::BasicRegistry<void>::add<md::ls::PendingDeletion>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(a1);
  v6 = v5;
  v7 = a2 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v7 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata) = *(a1 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14CF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingDeletion>();
    *algn_1EB83D698 = 0x34ACED59D994E35ELL;
    qword_1EB83D6A0 = "md::ls::PendingDeletion]";
    qword_1EB83D6A8 = 23;
  }
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[150];
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TexturesToDisconnect>(ecs2::Entity,md::ls::TexturesToDisconnect &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_1,std::allocator<md::LabelNavEtaLabeler::updateLabelPositions(md::NavContext *,std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>> const&)::$_1>,BOOL ()(md::RouteRangeAnnotationRequest const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F1138;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14DC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[180];
}

void std::__function::__func<md::ita::PrepareGradientParametersConstantDataHandle::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::RampMaterialData const&,md::ls::ColorRampDataHandle &>)::$_0,std::allocator<md::ita::PrepareGradientParametersConstantDataHandle::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::RampMaterialData const&,md::ls::ColorRampDataHandle &>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::RampMaterialData const&,md::ls::ColorRampDataHandle &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  ColorRampData = md::VKMRenderResourcesStore::getColorRampData(**(a1 + 8), *a5);
  if (ColorRampData)
  {
    if (*(ColorRampData + 80) == 1)
    {
      ecs2::ExecutionTaskContext::currentEntity(ColorRampData);
      operator new();
    }
  }
}

void md::MaterialTextureManager::colorRampTexturesFromMaterial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = *a4;
  if (!*a4)
  {
    return;
  }

  v6 = a3;
  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v28 = v10;
  v29 = v6;
  v11 = std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,std::__unordered_map_hasher<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyHash,md::MaterialTextureManager::ColorRampKeyEqual,true>,std::__unordered_map_equal<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyEqual,md::MaterialTextureManager::ColorRampKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>>>::find<md::MaterialTextureManager::ColorRampKey>((a2 + 240), v10, v6);
  if (v11)
  {
    v13 = v11[4];
    v12 = v11[5];
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    *a1 = v13;
    *(a1 + 8) = v12;
    goto LABEL_18;
  }

  (*(**a4 + 1056))(v26, v6);
  if (v27)
  {
    LOBYTE(v24[0]) = 0;
    v25 = 0;
    goto LABEL_11;
  }

  (*(**a4 + 576))(v24, v6);
  if (v27)
  {
LABEL_11:
    std::allocate_shared[abi:nn200100]<md::ColorRampTexture,std::allocator<md::ColorRampTexture>,unsigned int const&,float const&,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>> &,md::SharedResourcesManager *&,0>(&v23, v26, (a2 + 328));
  }

  if (v25 == 1)
  {
    std::allocate_shared[abi:nn200100]<md::ColorRampTexture,std::allocator<md::ColorRampTexture>,unsigned int const&,float const&,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>> &,md::SharedResourcesManager *&,0>(&v23, v24, (a2 + 328));
  }

  v23 = &v28;
  v14 = std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,std::__unordered_map_hasher<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyHash,md::MaterialTextureManager::ColorRampKeyEqual,true>,std::__unordered_map_equal<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyEqual,md::MaterialTextureManager::ColorRampKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>>>::__emplace_unique_key_args<md::MaterialTextureManager::ColorRampKey,std::piecewise_construct_t const&,std::tuple<md::MaterialTextureManager::ColorRampKey const&>,std::tuple<>>((a2 + 240), v28, v29, &v23);
  v15 = v14[5];
  v14[4] = 0;
  v14[5] = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v25 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v24);
  }

  if (v27 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v26);
  }

LABEL_18:
  v17 = *(*a4 + 32);
  v16 = *(*a4 + 40);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v28 = v17;
    v29 = v6;
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  else
  {
    v28 = *(*a4 + 32);
    v29 = v6;
  }

  v18 = std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,std::__unordered_map_hasher<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyHash,md::MaterialTextureManager::ColorRampKeyEqual,true>,std::__unordered_map_equal<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyEqual,md::MaterialTextureManager::ColorRampKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>>>::find<md::MaterialTextureManager::ColorRampKey>((a2 + 240), v17, v6);
  if (v18)
  {
    v20 = v18[4];
    v19 = v18[5];
    if (v19)
    {
      atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
    }

    *(a1 + 16) = v20;
    *(a1 + 24) = v19;
    return;
  }

  (*(**a4 + 1064))(v26, v6);
  if (v27)
  {
    LOBYTE(v24[0]) = 0;
    v25 = 0;
    goto LABEL_28;
  }

  (*(**a4 + 584))(v24, v6);
  if (v27)
  {
LABEL_28:
    std::allocate_shared[abi:nn200100]<md::ColorRampTexture,std::allocator<md::ColorRampTexture>,unsigned int const&,float const&,std::unordered_map<float,geo::Color<float,3,(geo::ColorSpace)0>> &,md::SharedResourcesManager *&,0>(&v23, v26, (a2 + 328));
  }

  if (v25 == 1)
  {
    std::allocate_shared[abi:nn200100]<md::ColorRampTexture,std::allocator<md::ColorRampTexture>,unsigned int const&,float const&,std::unordered_map<float,geo::Color<float,4,(geo::ColorSpace)0>> &,md::SharedResourcesManager *&,0>(&v23, v24, (a2 + 328));
  }

  v23 = &v28;
  v21 = std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,std::__unordered_map_hasher<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyHash,md::MaterialTextureManager::ColorRampKeyEqual,true>,std::__unordered_map_equal<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyEqual,md::MaterialTextureManager::ColorRampKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>>>::__emplace_unique_key_args<md::MaterialTextureManager::ColorRampKey,std::piecewise_construct_t const&,std::tuple<md::MaterialTextureManager::ColorRampKey const&>,std::tuple<>>((a2 + 240), v17, v6, &v23);
  v22 = v21[5];
  v21[4] = 0;
  v21[5] = 0;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v25 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v24);
  }

  if (v27 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v26);
  }
}

void sub_1B2BA2554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a16 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a11);
  }

  if (a25 == 1)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a18);
  }

  v27 = 24;
  while (1)
  {
    v28 = *(v25 + v27);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    v27 -= 16;
    if (v27 == -8)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[498];
}

uint64_t ***std::__hash_table<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,std::__unordered_map_hasher<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyHash,md::MaterialTextureManager::ColorRampKeyEqual,true>,std::__unordered_map_equal<md::MaterialTextureManager::ColorRampKey,std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>,md::MaterialTextureManager::ColorRampKeyEqual,md::MaterialTextureManager::ColorRampKeyHash,true>,std::allocator<std::__hash_value_type<md::MaterialTextureManager::ColorRampKey,std::shared_ptr<md::ColorRampTexture>>>>::find<md::MaterialTextureManager::ColorRampKey>(void *a1, uint64_t **a2, unsigned __int8 a3)
{
  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = (&a2[8 * a3 - 0xC3910C8D016B07DLL] + (a3 >> 2) - 3) ^ a3;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (&a2[8 * a3 - 0xC3910C8D016B07DLL] + (a3 >> 2) - 3) ^ a3;
    if (v4 >= *&v3)
    {
      v6 = v4 % *&v3;
    }
  }

  else
  {
    v6 = v4 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (result[2] == a2 && *(result + 24) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[188];
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[182];
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[186];
}

uint64_t gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>(void)::index = gdc::internal::nextIndex(v2);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[184];
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(void)::metadata) = *(a2 + 4096);
}

uint64_t mre::GGLResourceStore::insertTexture(uint64_t a1, uint64_t a2, int a3, int a4)
{
  std::__shared_mutex_base::lock((a1 + 104));
  if (a2)
  {
    v8 = *(a2 + 68) | (*(a2 + 64) << 32);
    v24 = *(a2 + 80);
    v25 = v8;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v23[0] = a2;
  v23[1] = a2;
  v26 = a3;
  if (a4)
  {
    v9 = util::id_pool<mre::TextureHandle>::pop((a1 + 600));
    v27 = v9;
    LOBYTE(v28) = v10;
    v21 = vdupq_n_s64(1uLL);
    LOWORD(v22) = 0;
    v11 = ecs2::sparse_set<mre::TextureHandle,64ul>::insert(a1 + 440, &v27);
    if (v12)
    {
      v13 = (v11 - *(a1 + 472)) >> 4;
      v29 = v23;
      v14 = *(*(a1 + 496) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((a1 + 496), v13)) + 24 * (v13 & 0x3F);
      *v14 = v21;
      *(v14 + 16) = v22;
      v15 = v29;
      v16 = *(*(a1 + 544) + 8 * ecs2::pool<mre::TextureStorage,64ul>::page_at_index((a1 + 544), v13)) + 40 * (v13 & 0x3F);
      v17 = v15[4];
      v18 = *(v15 + 1);
      *v16 = *v15;
      *(v16 + 16) = v18;
      *(v16 + 32) = v17;
    }
  }

  else
  {
    v9 = util::id_pool<mre::TextureHandle>::pop((a1 + 648));
    v27 = v9;
    LOBYTE(v28) = a3 == 0;
    if (a3)
    {
      v19 = a1 + 696;
    }

    else
    {
      v19 = a1 + 800;
    }

    ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::insert(&v21, v19, &v27, v23);
  }

  std::__shared_mutex_base::unlock((a1 + 104));
  return v9;
}

uint64_t util::id_pool<mre::TextureHandle>::pop(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    v4 = a1[3];
    v5 = a1[4];
    BYTE8(v7) = 0;
    v3 = ((v5 - v4) >> 4) | 0x100000000;
    *&v7 = v3;
    std::vector<md::VKMRenderResourcesStore::group_handle>::emplace_back<md::VKMRenderResourcesStore::group_handle const&>((a1 + 3), &v7);
  }

  else
  {
    v2 = a1[3] + 16 * *(v1 - 8);
    v3 = *v2;
    *&v7 = *v2;
    BYTE8(v7) = *(v2 + 8);
    a1[1] = v1 - 8;
  }

  return v3;
}

uint64_t ecs2::sparse_set<mre::TextureHandle,64ul>::insert(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a2 >> 6;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v5 >= (v7 - v6) >> 3)
  {
    v8 = v5 + 1;
    v9 = v5 + 1 - ((v7 - v6) >> 3);
    v10 = *(a1 + 24);
    if (v9 > (v10 - v7) >> 3)
    {
      v11 = v10 - v6;
      if (v11 >> 2 > v8)
      {
        v8 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v8;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v12);
    }

    bzero(*(a1 + 16), 8 * v9);
    *(a1 + 16) = v7 + 8 * v9;
    v6 = *(a1 + 8);
  }

  v13 = *(v6 + 8 * v5);
  if (!v13)
  {
    operator new();
  }

  v14 = (v13 + 16 * (v4 & 0x3F));
  v15 = v14[1];
  if (*v14 == -1 && v15 == 0)
  {
    std::vector<md::VKMRenderResourcesStore::group_handle>::emplace_back<md::VKMRenderResourcesStore::group_handle const&>(a1 + 32, a2);
    v17 = *(a1 + 32);
    v15 = ((*(a1 + 40) - v17) >> 4) - 1;
    *v14 = *(a2 + 1);
    v14[1] = v15;
  }

  else
  {
    v17 = *(a1 + 32);
  }

  return v17 + 16 * v15;
}

uint64_t ecs2::storage<mre::TextureHandle,mre::TextureStorage,64ul>::insert(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = ecs2::sparse_set<mre::TextureHandle,64ul>::insert(a2, a3);
  v9 = v8;
  v10 = result - *(a2 + 32);
  v11 = v10 >> 4;
  if (v8)
  {
    result = ecs2::pool<mre::TextureStorage,64ul>::page_at_index((a2 + 56), v11);
    v12 = *(*(a2 + 56) + 8 * result) + 40 * ((v10 >> 4) & 0x3F);
    v13 = *(a4 + 32);
    v14 = *(a4 + 16);
    *v12 = *a4;
    *(v12 + 16) = v14;
    *(v12 + 32) = v13;
  }

  *a1 = v11;
  *(a1 + 8) = a2 + 56;
  *(a1 + 16) = v9;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(void)::metadata) = *(a2 + 4096);
}

unint64_t ecs2::pool<mre::TextureStorage,64ul>::page_at_index(uint64_t *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  if (a2 >> 6 < v5 >> 3)
  {
    return v2;
  }

  v7 = v2 + 1;
  v8 = v2 + 1 - (v5 >> 3);
  v9 = a1[2];
  if (v8 > (v9 - v3) >> 3)
  {
    v10 = v9 - v4;
    v11 = (v9 - v4) >> 2;
    if (v11 <= v7)
    {
      v11 = v2 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (!(v12 >> 61))
    {
      operator new();
    }

    goto LABEL_32;
  }

  v13 = 0;
  v14 = (v8 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
  v15 = vdupq_n_s64(v14);
  do
  {
    v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v13), xmmword_1B33B0560)));
    if (v16.i8[0])
    {
      *(v3 + 8 * v13) = 0;
    }

    if (v16.i8[4])
    {
      *(v3 + 8 * v13 + 8) = 0;
    }

    v13 += 2;
  }

  while (v14 - ((v8 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v13);
  a1[1] = v3 + 8 * v8;
  v17 = a1[3];
  v18 = a1[4];
  v19 = (v18 - v17) >> 4;
  if (v19 <= v2)
  {
    v21 = v7 - v19;
    v22 = a1[5];
    if (v21 > (v22 - v18) >> 4)
    {
      v23 = v22 - v17;
      v24 = v23 >> 3;
      if (v23 >> 3 <= v7)
      {
        v24 = v2 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF0)
      {
        v25 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 60))
      {
        operator new();
      }

LABEL_32:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[4], 16 * v21);
    v20 = v18 + 16 * v21;
  }

  else
  {
    if (v7 >= v19)
    {
      goto LABEL_29;
    }

    v20 = v17 + 16 * v7;
  }

  a1[4] = v20;
LABEL_29:
  if (v5 < (a1[1] - *a1))
  {
    operator new();
  }

  return v2;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::metadata) = *(a2 + 4096);
}

char *geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>>::operator[](char **a1, unsigned __int16 a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  while (*v5 != a2)
  {
    v5 += 48;
    if (v5 == v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 == v4)
  {
LABEL_7:
    v30 = 1065353216;
    v31 = a2;
    memset(v32, 0, sizeof(v32));
    memset(v29, 0, sizeof(v29));
    v33 = 1065353216;
    if (v3 == v4)
    {
      goto LABEL_13;
    }

    v5 = v3;
    while (*v5 != a2)
    {
      v5 += 48;
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    if (v5 == v4)
    {
LABEL_13:
      v6 = a1[2];
      if (v4 >= v6)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 4);
        v9 = v8 + 1;
        if (v8 + 1 > 0x555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v3) >> 4);
        if (2 * v10 > v9)
        {
          v9 = 2 * v10;
        }

        if (v10 >= 0x2AAAAAAAAAAAAAALL)
        {
          v11 = 0x555555555555555;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>>(v11);
        }

        *(48 * v8) = a2;
        v7 = (48 * v8 + 48);
        std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>::unordered_map(48 * v8 + 8, v32);
        v13 = *a1;
        v12 = a1[1];
        v14 = (48 * v8 - (v12 - *a1));
        if (v12 != *a1)
        {
          v15 = 0;
          v16 = -16 * ((v12 - *a1) >> 4) + 48 * v8;
          do
          {
            v17 = &v13[v15];
            v18 = v16 + v15;
            v19 = *&v13[v15];
            v20 = *&v13[v15 + 8];
            v21 = *&v13[v15 + 16];
            *(v17 + 1) = 0;
            *(v18 + 8) = v20;
            *(v18 + 16) = v21;
            *(v17 + 2) = 0;
            v22 = *&v13[v15 + 32];
            v23 = *&v13[v15 + 40];
            v24 = *&v13[v15 + 24];
            *v18 = v19;
            *(v16 + v15 + 24) = v24;
            *(v18 + 32) = v22;
            *(v18 + 40) = v23;
            if (v22)
            {
              v25 = *(v24 + 8);
              v26 = *(v18 + 16);
              if ((v26 & (v26 - 1)) != 0)
              {
                if (v25 >= v26)
                {
                  v25 %= v26;
                }
              }

              else
              {
                v25 &= v26 - 1;
              }

              *(v20 + 8 * v25) = v16 + v15 + 24;
              *&v13[v15 + 24] = 0;
              *&v13[v15 + 32] = 0;
            }

            v15 += 48;
          }

          while (&v13[v15] != v12);
          do
          {
            std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>>>::~__hash_table((v13 + 8));
            v13 += 48;
          }

          while (v13 != v12);
        }

        v27 = *a1;
        *a1 = v14;
        a1[1] = v7;
        a1[2] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v4 = a2;
        v7 = v4 + 48;
        std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>::unordered_map((v4 + 8), v32);
      }

      a1[1] = v7;
      v5 = v7 - 48;
    }

    std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>>>::~__hash_table(v32);
    std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>>>::~__hash_table(v29);
  }

  return v5 + 8;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::metadata) = *(a2 + 4096);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 16);
    v6 = *(i + 9);
    v7 = (v6 - 0x61C8864680B583EBLL + ((v5 - 0x61C8864680B583EBLL) << 6) + ((v5 - 0x61C8864680B583EBLL) >> 2)) ^ (v5 - 0x61C8864680B583EBLL);
    v8 = &i[11][8 * v7 - 0xC3910C8D016B07DLL] + (v7 >> 2) - 3;
    v9 = v8 ^ v7;
    v10 = *(a1 + 8);
    if (!*&v10)
    {
      goto LABEL_20;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = v8 ^ v7;
      if (v9 >= *&v10)
      {
        v13 = v9 % *&v10;
      }
    }

    else
    {
      v13 = (*&v10 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v13);
    if (!v14 || (v15 = *v14) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v16 = v15[1];
      if (v16 == v9)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v10)
        {
          v16 %= *&v10;
        }
      }

      else
      {
        v16 &= *&v10 - 1;
      }

      if (v16 != v13)
      {
        goto LABEL_20;
      }

LABEL_19:
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    if (*(v15 + 16) != v5 || *(v15 + 9) != v6 || !gdc::GenericKey::operator==((v15 + 3), (i + 3)))
    {
      goto LABEL_19;
    }
  }

  return a1;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::metadata) = *(a2 + 4096);
}

uint64_t md::DaVinciTrafficLayerDataSource::updateRequest(uint64_t a1, gdc::LayerDataRequest **a2, uint64_t a3, unsigned __int16 **a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  gdc::Tiled::tileFromLayerDataKey(v45, *(*a2 + 2));
  if (v45[1] < 7u)
  {
    return 0;
  }

  v9 = gdc::LayerDataRequest::requiredRequestedResources(v7);
  v10 = *a4;
  v11 = a4[1];
  while (v10 != v11)
  {
    if (*v10 == 16)
    {
      if (v10 != v11)
      {
        return 0;
      }

      break;
    }

    v10 += 24;
  }

  v12 = *v9;
  v13 = v9[1];
  if (*v9 != v13)
  {
    v14 = *v9;
    while (*v14 != 16)
    {
      v14 += 24;
      if (v14 == v13)
      {
        goto LABEL_19;
      }
    }

    if (v14 != v13)
    {
      while (*v12 != 16)
      {
        v12 += 24;
        if (v12 == v13)
        {
          v12 = v9[1];
          break;
        }
      }

      if (*(v12 + 4))
      {
        return 0;
      }
    }
  }

LABEL_19:
  result = *(a1 + 24);
  if (!result)
  {
    return result;
  }

  v15 = (*(*result + 24))(result, 16);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = v15;
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v43, *(a1 + 796), *a4, a4[1]);
  md::GEOVectorTileResource::QuadTileFromResourceKey(&v41, *(v43 + 8));
  v18 = **a2;
  v19 = (*(**(a1 + 24) + 32))(*(a1 + 24), *(a1 + 796));
  v20 = v19;
  if ((v19 & 0x100000000) == 0 || (__p = 0, v39 = 0, v40 = 0, v21 = (*(**(a1 + 24) + 32))(*(a1 + 24), 16), (v21 & 0x100000000) == 0))
  {
    v34 = std::__throw_bad_optional_access[abi:nn200100]();
    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v44);
    }

    _Unwind_Resume(v34);
  }

  v22 = v21;
  v23 = v20;
  if (v20)
  {
    v24 = v21 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v25 = 0;
  }

  else
  {
    if (v20 >= v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = 0;
      do
      {
        ++v25;
        v23 *= 2;
      }

      while (v23 < v21);
    }

    if (v23 > v21)
    {
      do
      {
        --v25;
        v26 = v23 > 2 * v22;
        v22 *= 2;
      }

      while (v26);
    }
  }

  if (v25 + v42 >= v17)
  {
    v27 = -v25;
  }

  else
  {
    v27 = v42 - v17;
  }

  md::TileAdjustmentHelpers::enumerateResourceTilesWithZAdjustment(v27, 16, *(a1 + 24), &v41, 0, &__p);
  v28 = __p;
  v29 = v39;
  while (v28 != v29)
  {
    v30 = *a2;
    v31 = *(*a2 + 14);
    v46 = vrev64_s32(*(v28 + 4));
    v32 = *v28;
    v47 = v28[1];
    v48 = v32;
    gdc::ResourceKey::ResourceKey(&v35, v18, 16, &v46, 4, v31, 2147483646);
    gdc::LayerDataRequest::request(v30, &v35, 0);
    if (v36 != v37)
    {
      free(v36);
    }

    v28 += 32;
  }

  v33 = *(a1 + 800);
  if (v33)
  {
    md::ElevationRequestUpdater::updateRequest(v33, a2, a4);
  }

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v44);
  }

  return 1;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>();
    *algn_1EB83BF38 = 0x58EA03DA808C73B1;
    qword_1EB83BF40 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>]";
    qword_1EB83BF48 = 82;
  }
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(void)::metadata) = *(a2 + 4096);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(void)::metadata) = *(a2 + 4096);
}