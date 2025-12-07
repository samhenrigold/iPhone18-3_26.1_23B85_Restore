void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls32ElevatedStrokeConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevatedStrokeConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevatedStrokeConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ElevatedStrokeConstantDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevatedStrokeConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevatedStrokeConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ElevatedStrokeConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A159E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ElevatedStrokeConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ElevatedStrokeConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A15A08;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::ElevatedStrokeConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ElevatedStrokeConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ElevatedStrokeConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A159E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ElevatedStrokeConstantDataHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::ElevatedStrokeConstantDataHandle>(ecs2::Entity,md::ls::ElevatedStrokeConstantDataHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29ED608;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void geo::_retain_ptr<NSString * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D108;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSString * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D108;

  return a1;
}

void sub_1B2D04414(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

void md::ARCameraRouteLocationProvider::update(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, float32x2_t **a5)
{
  v7 = a3;
  v8 = *(a1 + 56);
  if (v8)
  {
    v50 = v7;
    v9 = v8;
    v10 = v9;
    v11 = *a5;
    v12 = a5[1];
    while (v11 != v12)
    {
      if (v11)
      {
        if (!v11[2].i32[0])
        {
          v13 = vsub_f32(v11[1], *v11);
          *(a1 + 72) = *(a1 + 72) + (v13.f32[1] / sqrtf(vaddv_f32(vmul_f32(v13, v13))));
        }
      }

      v11 += 3;
    }

    v14 = *(a1 + 72);
    [v9 distance];
    *(a1 + 72) = fmin(fmax(v14, 0.0), v15);
    v16 = [v10 coordinateAtOffset:?];
    v17 = *(a1 + 80);
    v18 = v10;
    [v18 pointWithAltitudeCorrectionAtRouteCoordinate:v16];
    v47 = v19;
    v21 = v20;
    v23 = v22;
    v24 = tan(v20 * 0.00872664626 + 0.785398163);
    v25 = log(v24);
    v26.f64[0] = v47;
    v26.f64[1] = v25;
    __asm { FMOV            V1.2D, #0.5 }

    v52 = vmlaq_f64(_Q1, xmmword_1B33B0700, v26);
    v53 = v23 * 0.0000000249532021;
    [v18 courseAtRouteCoordinateIndex:v16];
    v33 = v32;
    v34 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v21);
    v35 = fmod(360.0 - v33, 360.0);
    v36 = fmod(v35 + 360.0, 360.0);
    v37 = __sincos_stret(v36 * 0.0174532925);
    v38 = 0;
    v51[0] = *&v37.__cosval;
    v51[1] = *&v37.__sinval;
    v51[2] = 0;
    do
    {
      *(&v54 + v38 * 8) = v34 * v17 * *&v51[v38];
      ++v38;
    }

    while (v38 != 3);
    for (i = 0; i != 3; ++i)
    {
      v52.f64[i] = v52.f64[i] + *(&v54 + i * 8);
    }

    v40 = v53 * 40075017.0;
    v41 = v52.f64[0] * 6.28318531;
    v42 = exp(v52.f64[1] * 6.28318531 + -3.14159265);
    v48 = atan(v42);
    v43 = fmod(v41, 6.28318531);
    v44 = fmod(v43 + 6.28318531, 6.28318531);
    v45.f64[0] = v48;
    v45.f64[1] = v44;
    v49 = vmlaq_f64(xmmword_1B33B0660, xmmword_1B33B0650, v45);

    *(a1 + 24) = v49;
    *(a1 + 40) = v40;
    v46 = *(a1 + 112);
    if (v46)
    {
      *&v54 = v16;
      (*(*v46 + 48))(v46, &v54);
    }

    v7 = v50;
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }
}

void md::ARCameraRouteLocationProvider::~ARCameraRouteLocationProvider(md::ARCameraRouteLocationProvider *this)
{
  *this = &unk_1F29ED678;
  std::__function::__value_func<void ()(geo::PolylineCoordinate)>::~__value_func[abi:nn200100](this + 88);
  *(this + 6) = &unk_1F2A4C308;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29ED678;
  std::__function::__value_func<void ()(geo::PolylineCoordinate)>::~__value_func[abi:nn200100](this + 88);
  *(this + 6) = &unk_1F2A4C308;
}

uint64_t std::__function::__value_func<void ()(geo::PolylineCoordinate)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4C308;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4C308;

  return a1;
}

void md::ARCameraRouteLocationProvider::setRoute(md::ARCameraRouteLocationProvider *this, GEOComposedRoute *a2)
{
  v3 = a2;
  v4 = v3;
  if ((geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(this + 7), &v4) & 1) == 0)
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(this + 48, v3);
    *(this + 9) = 0;
  }
}

void md::Logic<md::ARAddEnvironmentProbeLogic,md::ARAddEnvironmentProbeContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::ARAddEnvironmentProbeLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[VKDebugSettings sharedSettings];
  v6 = [v5 arEnableEnvironmentMap];

  if (v6)
  {
    v36 = *(*a3 + 80);
    v7 = *(a1 + 120);
    v8 = gdc::Registry::storage<arComponents::PendingEnvironmentProbeCreation>(v7);
    v9 = gdc::Registry::storage<arComponents::WorldTransform>(v7);
    v10 = v9;
    v11 = (v9 + 32);
    v13 = v8[7];
    v12 = v8[8];
    if (*(v9 + 64) - *(v9 + 56) >= (v12 - v13))
    {
      v14 = v8 + 4;
    }

    else
    {
      v14 = (v9 + 32);
    }

    v27 = a1;
    if (v8 + 4 == v14)
    {
      v29 = &v36;
      for (i = a1; v13 != v12; v13 += 8)
      {
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v11, *(v13 + 4));
        v16 = v10[8];
        if (v16 != Index)
        {
          v17 = *v13;
          v18 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v11, HIDWORD(*v13));
          if (v16 == v18)
          {
            v19 = v10[11];
          }

          else
          {
            v19 = v10[10] + 80 * ((v18 - v10[7]) >> 3);
          }

          md::ARAddEnvironmentProbeLogic::processRequests(ARSession *)::$_0::operator()(&v29, v17, v19);
        }
      }

      a1 = v27;
    }

    if (v11 == v14)
    {
      v29 = &v36;
      i = a1;
      v20 = v10[7];
      v21 = v10[8];
      if (v20 != v21)
      {
        v22 = v10[10];
        do
        {
          if (v8[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v8 + 4, *(v20 + 4)))
          {
            md::ARAddEnvironmentProbeLogic::processRequests(ARSession *)::$_0::operator()(&v29, *v20, v22);
          }

          v22 += 80;
          v20 += 8;
        }

        while (v20 != v21);
      }
    }

    updated = gdc::Registry::storage<arComponents::UpdateEnvironentProbeTexture>(*(a1 + 120));
    v24 = updated[7];
    v28 = updated[8];
    if (v24 != v28)
    {
      v25 = (updated[10] + 8);
      do
      {
        v26 = *v25;
        [v26 environmentTexture];
        if (objc_claimAutoreleasedReturnValue())
        {
          v34 = 3;
          v35 = 3;
          v29 = 0x3FF0000000000000;
          v32 = 1;
          v33 = 1;
          v31 = 1;
          std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,double,ggl::Filter,ggl::Filter,ggl::Filter,0>(&v36, &v35, &v34, &v29, &v33, &v32, &v31);
        }

        v24 += 8;
        v25 += 3;
      }

      while (v24 != v28);
    }
  }
}

uint64_t gdc::Registry::storage<arComponents::UpdateEnvironentProbeTexture>(uint64_t a1)
{
  v3 = 0x1D70BA3BBBE79160;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1D70BA3BBBE79160uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::Registry::add<arComponents::TransitionToRenderRegistry,arComponents::AREnvironmentProbeTexture>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(a1);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v6, a2);
  v7 = gdc::Registry::storage<arComponents::AREnvironmentProbeTexture>(a1);
  v34 = a2;
  v8 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v7 + 4, &v34);
  if (v9)
  {
    v10 = v7[11];
    v11 = v7[12];
    if (v10 >= v11)
    {
      v19 = v7[10];
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v19) >> 3);
      if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v19) >> 3);
      v22 = 2 * v21;
      if (2 * v21 <= v20 + 1)
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x555555555555555)
      {
        v23 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v23 = v22;
      }

      if (v23)
      {
        if (v23 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = 24 * v20;
      arComponents::AREnvironmentProbeTexture::AREnvironmentProbeTexture(v24, a3);
      v12 = v24 + 24;
      v33 = (v24 + 24);
      v25 = v7[10];
      v26 = v7[11];
      v27 = v24 + v25 - v26;
      if (v26 != v25)
      {
        v28 = v7[10];
        v29 = v27;
        do
        {
          v30 = arComponents::AREnvironmentProbeTexture::AREnvironmentProbeTexture(v29, v28);
          v28 += 24;
          v29 = v30 + 24;
        }

        while (v28 != v26);
        do
        {
          std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v25);
          v25 += 24;
        }

        while (v25 != v26);
      }

      v31 = v7[10];
      v7[10] = v27;
      *(v7 + 11) = v33;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      v12 = arComponents::AREnvironmentProbeTexture::AREnvironmentProbeTexture(v10, a3) + 24;
    }

    v7[11] = v12;
    v17 = v7[31];
LABEL_28:
    for (i = v7[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v17, &v34, 1);
    }

    return;
  }

  v13 = v7[10] + 24 * ((v8 - v7[7]) >> 3);
  objc_storeStrong(v13, *a3);
  v15 = *(a3 + 8);
  v14 = *(a3 + 16);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(v13 + 16);
  *(v13 + 8) = v15;
  *(v13 + 16) = v14;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v17 = v7[31];
  if (v13 == v7[11])
  {
    goto LABEL_28;
  }

  for (j = v7[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v17, &v34, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<arComponents::UpdateEnvironentProbeTexture>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = *(a1[11] - 16);
    v9 = v6 + 24 * v7;
    v10 = *(v9 + 8);
    *(v9 + 8) = v8;

    v11 = a1[11];
    v12 = v11 - 24;
    *(v11 - 24) = &unk_1F2A4B270;

    a1[11] = v12;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void geo::_retain_ptr<AREnvironmentProbeAnchor * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4B270;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<AREnvironmentProbeAnchor * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4B270;

  return a1;
}

uint64_t arComponents::AREnvironmentProbeTexture::AREnvironmentProbeTexture(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  objc_storeStrong(a1, *a2);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return a1;
}

void std::__shared_ptr_emplace<ggl::TextureCube>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2FC30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void gdc::ComponentStorageWrapper<arComponents::UpdateEnvironentProbeTexture>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<arComponents::UpdateEnvironentProbeTexture>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<arComponents::UpdateEnvironentProbeTexture>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      do
      {
        *(v4 - 3) = &unk_1F2A4B270;
        v4 -= 24;

        v6 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<arComponents::UpdateEnvironentProbeTexture>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<arComponents::UpdateEnvironentProbeTexture>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t gdc::Registry::storage<arComponents::PendingEnvironmentProbeCreation>(uint64_t a1)
{
  v3 = 0x8CEA2E362F0B4EBDLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x8CEA2E362F0B4EBDLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::ARAddEnvironmentProbeLogic::processRequests(ARSession *)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v21 = [**a1 currentFrame];
  v7 = objc_msgSend_camera(v21);
  [v7 transform];
  v19 = v9;
  v20 = v8;
  v17 = v11;
  v18 = v10;

  v12 = *(a3 + 56);
  v13 = objc_alloc(getAREnvironmentProbeAnchorClass());
  v14 = v12 * 100.0;
  *&v14 = v12 * 100.0;
  v15 = [v13 initWithTransform:v20 extent:{v19, v18, v17, *vdupq_lane_s32(*&v14, 0).i64}];
  [**a1 addAnchor:v15];
  v16 = gdc::Registry::storage<arComponents::PendingEnvironmentProbeCreation>(*(v6 + 120));
  gdc::ComponentStorageWrapper<arComponents::PendingEnvironmentProbeCreation>::remove(v16, a2);
}

BOOL gdc::ComponentStorageWrapper<arComponents::PendingEnvironmentProbeCreation>::remove(void *a1, uint64_t a2)
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

Class initAREnvironmentProbeAnchor(void)
{
  if (LoadARKit(void)::loadPredicate[0] != -1)
  {
    dispatch_once(LoadARKit(void)::loadPredicate, &__block_literal_global_4582);
  }

  result = objc_getClass("AREnvironmentProbeAnchor");
  classAREnvironmentProbeAnchor = result;
  getAREnvironmentProbeAnchorClass = AREnvironmentProbeAnchorFunction;
  return result;
}

void ___ZL9LoadARKitv_block_invoke()
{
  LoadARKit(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/ARKit.framework/ARKit", 2);
  if (!LoadARKit(void)::frameworkLibrary)
  {
    NSLog(@"### Failed to Soft Linked: /System/Library/Frameworks/ARKit.framework/ARKit");
  }
}

void gdc::ComponentStorageWrapper<arComponents::PendingEnvironmentProbeCreation>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::PendingEnvironmentProbeCreation>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t md::Logic<md::ARAddEnvironmentProbeLogic,md::ARAddEnvironmentProbeContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x62E8209F98919A2ELL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7[0] = gdc::Context::context<md::ARLogicContext>(*(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::Logic<md::ARAddEnvironmentProbeLogic,md::ARAddEnvironmentProbeContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x62E8209F98919A2ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARLogicContext>(*(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAddEnvironmentProbeLogic,md::ARAddEnvironmentProbeContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x62E8209F98919A2ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARLogicContext>(*(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAddEnvironmentProbeLogic,md::ARAddEnvironmentProbeContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x62E8209F98919A2ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARLogicContext>(*(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARAddEnvironmentProbeLogic,md::ARAddEnvironmentProbeContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x62E8209F98919A2ELL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::context<md::ARLogicContext>(*(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARAddEnvironmentProbeContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARAddEnvironmentProbeContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29ED840;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARAddEnvironmentProbeContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29ED840;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARAddEnvironmentProbeLogic::~ARAddEnvironmentProbeLogic(md::ARAddEnvironmentProbeLogic *this)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TileLabelLine const*>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x6004044C4A2DFuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineAttribute>(v2, v1);
  }
}

void std::vector<md::TileLabelLine const*,geo::allocator_adapter<md::TileLabelLine const*,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TileLabelLine const*>(v2, v1);
  }
}

void std::vector<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineSegmentInfo>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineSegmentInfo>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TileLabelLine const*>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineAttribute>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineSegmentInfo>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x1060040291B3AFDuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

double md::LabelLine::pointAtCoordinate(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, __int16 a5)
{
  if (a2 && (a3 - a2) >> 4 > a4)
  {
    v6 = (*(**(a2 + 16 * a4) + 24))(*(a2 + 16 * a4), a5);
    *a1 = *v6;
    *(a1 + 16) = *(v6 + 16);
    v7 = *(v6 + 24);
    *(a1 + 24) = v7;
    *(a1 + 40) = *(v6 + 40);
    *(a1 + 43) = *(v6 + 43);
  }

  else
  {
    *&v7 = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 40) = 2139095039;
  }

  return *&v7;
}

void md::LabelLine::attributes(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v8 = *(*a3 + 159);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = *(a2 + 96);
  v10 = *(a2 + 72);
  v9 = *(a2 + 80);
  v11 = v9 - v10;
  if (v9 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= 0x555555555555556)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = mdm::zone_mallocator::instance(a1);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineAttribute>(v12, 0xAAAAAAAAAAAAAAABLL * (v11 >> 4));
    *a1 = v13;
    v14 = &v13[v11];
    *(a1 + 16) = &v13[v11];
    memmove(v13, v10, v11 - 7);
    *(a1 + 8) = v14;
  }

  memset(v50, 0, sizeof(v50));
  *v51 = 2139095039;
  *&v51[4] = 0;
  v51[6] = 0;
  started = md::LabelLine::startCoordinate(*(a2 + 8), *(a2 + 16));
  v16 = started;
  v17 = *a3;
  v18 = a3[1];
  v44 = *a3;
  v45 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *a3;
  }

  v49 = *(v17 + 16);
  v19 = *(a2 + 8);
  v20 = *(a2 + 16) - v19;
  v21 = (v19 + 16 * started);
  if (started >= (v20 >> 4))
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v46 = a2;
  v47 = v22;
  v48 = started;
  if (md::LabelLinePosition::pointExists(&v44))
  {
    v23 = (*(**v22 + 24))(*v22, v16 >> 16);
    for (i = 0; i != 24; i += 8)
    {
      *&v50[i] = *(v23 + i);
    }

    *&v50[24] = *(v23 + 24);
    v25 = *(v23 + 43);
    *v51 = *(v23 + 40);
    *&v51[3] = v25;
  }

  v26 = 0.0;
  while (md::LabelLinePosition::pointExists(&v44))
  {
    v27 = v47;
    v28 = SWORD1(v48);
    v29 = (*(**v47 + 24))(*v47, SWORD1(v48));
    v30 = *&md::LabelPoint::vectorToPoint(v50, v29, v8);
    v31 = 0;
    *&v39 = v30;
    *(&v39 + 1) = v32;
    v40 = v33;
    v34 = 0.0;
    do
    {
      v34 = v34 + *(&v39 + v31) * *(&v39 + v31);
      v31 += 8;
    }

    while (v31 != 24);
    v26 = sqrt(v34) + v26;
    if (a4 < (md::LabelLinePosition::vertexInfo(&v44) >> 16))
    {
      LOWORD(v39) = 260;
      BYTE2(v39) = 0;
      v43 = 1;
      v35 = v48;
      v41 = v48;
      v42 = 0xFFFFFFFFLL;
      *(&v39 + 1) = v26;
      v40 = v26;
      std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::push_back[abi:nn200100](a1, &v39);
      v28 = v35 >> 16;
    }

    v36 = (*(**v27 + 24))(*v27, v28);
    for (j = 0; j != 24; j += 8)
    {
      *&v50[j] = *(v36 + j);
    }

    *&v50[24] = *(v36 + 24);
    v38 = *(v36 + 43);
    *v51 = *(v36 + 40);
    *&v51[3] = v38;
    md::LabelLinePosition::moveToNextPoint(&v44);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelLineAttribute>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 48 * a2, 0x100004050B557F8uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsLabelLineAttribute *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsLabelLineAttribute *>(uint64_t a1, uint64_t a2)
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

mdm::zone_mallocator *std::__split_buffer<GeoCodecsLabelLineAttribute *,geo::allocator_adapter<GeoCodecsLabelLineAttribute *,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsLabelLineAttribute *>(v5, v4);
  }

  return a1;
}

void sub_1B2D0767C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKStateCaptureHandler;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void md::GEOFlyoverMetadataResourceDecoder::decode(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, gdc::Resource **a4@<X8>)
{
  if (*(a3 + 112))
  {
    Int32 = gdc::ResourceKey::getInt32(*(a2 + 8), 4u);
    v8 = *(a1 + 32);
    if (!v8)
    {
      v23 = std::__throw_bad_function_call[abi:nn200100]();
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v25);
      }

      _Unwind_Resume(v23);
    }

    (*(*v8 + 48))(&v24);
    if (v24)
    {
      v9 = *(a2 + 8);
      v10 = gdc::ResourceKey::getInt32(v9, 2u);
      v11 = gdc::ResourceKey::getInt32(v9, 1u);
      LODWORD(v9) = gdc::ResourceKey::getInt32(v9, 0);
      v12 = *a3;
      v13 = gdc::DataObject::bytes(*a3);
      v14 = gdc::DataObject::length(v12);
      geo::c3mm::loadFromChunk(v13, v14, v24, v10 | ((~(-1 << v10) - v11) << 32), v9, v15, v16, v17, v18, v19, v20, v21, v22);
      operator new();
    }

    *a4 = 0;
    a4[1] = 0;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }
}

void md::GEOFlyoverMetadataResource::~GEOFlyoverMetadataResource(md::GEOFlyoverMetadataResource *this)
{
  md::GEOFlyoverMetadataResource::~GEOFlyoverMetadataResource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29ED8E8;
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 2);
  if (v3 != *(this + 4))
  {
    free(v3);
  }
}

void std::__shared_ptr_emplace<md::GEOFlyoverMetadataResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29ED8B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::GEOFlyoverMetadataResourceDecoder::~GEOFlyoverMetadataResourceDecoder(md::GEOFlyoverMetadataResourceDecoder *this)
{
  *this = &unk_1F29ED888;
  std::__function::__value_func<std::shared_ptr<geo::c3mm::C3mmArea> ()>::~__value_func[abi:nn200100](this + 8);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29ED888;
  std::__function::__value_func<std::shared_ptr<geo::c3mm::C3mmArea> ()>::~__value_func[abi:nn200100](this + 8);
}

uint64_t ggl::Grid::GridUVPipelineSetup::constantDataIsEnabled(ggl::Grid::GridUVPipelineSetup *this, uint64_t a2)
{
  if ((a2 - 2) < 2 || a2 == 0)
  {
    v3 = 1;
  }

  else if (a2 == 1)
  {
    v3 = *(*(this + 2) + 305);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void ggl::Grid::GridUVPipelineSetup::~GridUVPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::TransitPillIconLabelPart::populateDebugNode(md::TransitPillIconLabelPart *this, gdc::DebugTreeNode *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  md::ImageLabelPart::populateDebugNode(this, a2);
  std::string::basic_string[abi:nn200100]<0>(&v16, "TransitPillIconLabelPart");
  v4 = gdc::DebugTreeNode::createChildNode(a2, &v16);
  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "Is Active");
  gdc::DebugTreeValue::DebugTreeValue(v13, *(this + 817));
  gdc::DebugTreeNode::addProperty(v4, &v16, v13);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "Scale");
  gdc::DebugTreeValue::DebugTreeValue(v10, *(this + 173));
  gdc::DebugTreeNode::addProperty(v4, &v16, v10);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (*(this + 721) != 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v6, "Half Ext");
    gdc::DebugTreeValue::DebugTreeValue(&v16, *(this + 178));
    gdc::DebugTreeValue::DebugTreeValue(&v18, *(this + 179));
    memset(v5, 0, sizeof(v5));
    std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v5, &v16, &v19, 2uLL);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "Radius");
  gdc::DebugTreeValue::DebugTreeValue(v7, *(this + 177));
  gdc::DebugTreeNode::addProperty(v4, &v16, v7);
  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }
}

void sub_1B2D083B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v19 = 0;
  while (1)
  {
    if (*(v17 + v19 + 119) < 0)
    {
      operator delete(*(v17 + v19 + 96));
    }

    v19 -= 64;
    if (v19 == -128)
    {
      if (a17 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t md::TransitPillIconLabelPart::debugString@<X0>(md::TransitPillIconLabelPart *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v23);
  md::ImageLabelPart::debugString(&__p, this);
  if ((v22 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v22 & 0x80u) == 0)
  {
    v5 = v22;
  }

  else
  {
    v5 = v21;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, p_p, v5);
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "\nTransitPillIcon", 16);
  v6 = atomic_load(this + 819);
  if (v6)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "\n  isActive:", 12);
    v7 = MEMORY[0x1B8C61C50](&v23, *(this + 817));
    v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ", scale=", 8);
    v9 = *v8;
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v8 + *(v9 - 24) + 16) = 1;
    std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, " distScale=", 11);
    std::ostream::operator<<();
    if (*(this + 721) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, " radius:", 8);
      *(&v25[0].__locale_ + *(v23 - 24)) = 2;
      std::ostream::operator<<();
    }

    else
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, " halfExt:", 9);
      *(&v25[0].__locale_ + *(v23 - 24)) = 2;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "(", 1);
      v10 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, ", ", 2);
      v11 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ")", 1);
    }

    v12 = *(this + 93);
    if (v12)
    {
      (*(*v12 + 16))(&__p);
      v13 = v22;
      if ((v22 & 0x80u) == 0)
      {
        v14 = v22;
      }

      else
      {
        v14 = v21;
      }

      if (v14)
      {
        if ((v22 & 0x80u) == 0)
        {
          v15 = &__p;
        }

        else
        {
          v15 = __p;
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, v15, v14);
        v13 = v22;
      }

      if ((v13 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "\n  No external icon", 19);
  }

  if ((v30 & 0x10) != 0)
  {
    v17 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v17 = v26;
    }

    locale = v25[4].__locale_;
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v16 = 0;
      a2[23] = 0;
      goto LABEL_38;
    }

    locale = v25[1].__locale_;
    v17 = v25[3].__locale_;
  }

  v16 = v17 - locale;
  if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  a2[23] = v16;
  if (v16)
  {
    memmove(a2, locale, v16);
  }

LABEL_38:
  a2[v16] = 0;
  v23 = *MEMORY[0x1E69E54E8];
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v24 = MEMORY[0x1E69E5548] + 16;
  if (v28 < 0)
  {
    operator delete(v27);
  }

  v24 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v25);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v31);
}

void sub_1B2D08870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(a24);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

BOOL md::TransitPillIconLabelPart::needsCrossfade(md::TransitPillIconLabelPart *this, md::LabelManager *a2, int a3)
{
  if (*(this + 818))
  {
    return 1;
  }

  if (*(this + 91))
  {
    md::TransitPillIconLabelPart::checkExternalIconRequest(this, a2);
  }

  v7 = atomic_load(this + 819);
  if (v7)
  {
    v8 = *((*(**(*(a2 + 21) + 64) + 16))(*(*(a2 + 21) + 64)) + 432);
    v9 = *(this + 93);
    if (v8 == 1 && v9[68] == 1)
    {
      (*(*v9 + 24))(v9);
      v9 = *(this + 93);
    }

    if (v9[69])
    {
      return 1;
    }
  }

  if (!a3 || *(this + 816) != 1)
  {
    return 0;
  }

  v10 = *(this + 4);
  v11 = *v10;
  v12 = *(*v10 + 296);
  if (!v12)
  {
    v13 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v10, 0);
    v12 = *v13;
    *(v11 + 296) = *v13;
  }

  if (*(v12 + 88) != 6)
  {
    return 1;
  }

  v14 = md::LabelStyle::monitorIconName(*v10);
  v15 = *(this + 783);
  if (v15 >= 0)
  {
    v16 = *(this + 783);
  }

  else
  {
    v16 = *(this + 96);
  }

  v17 = *(v14 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(v14 + 8);
  }

  if (v16 != v17)
  {
    return 1;
  }

  v19 = v15 >= 0 ? (this + 760) : *(this + 95);
  v20 = v18 >= 0 ? v14 : *v14;
  if (memcmp(v19, v20, v16))
  {
    return 1;
  }

  v21 = *(this + 800);
  v22 = *v10;
  v23 = *(*v10 + 296);
  if (!v23)
  {
    v24 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v10, 0);
    v23 = *v24;
    *(v22 + 296) = *v24;
  }

  if (v21 != *(v23 + 92))
  {
    return 1;
  }

  v25 = *v10;
  v26 = *(*v10 + 296);
  if (!v26)
  {
    v27 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v10, 0);
    v26 = *v27;
    *(v25 + 296) = *v27;
  }

  return *(v26 + 56) != *(this + 198) || *(v26 + 60) != *(this + 199);
}

void md::TransitPillIconLabelPart::checkExternalIconRequest(md::TransitPillIconLabelPart *this, md::LabelManager *a2)
{
  v2 = *(this + 91);
  if (v2 && *(v2 + 57) == 1)
  {
    v6 = *v2;
    v5 = v2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (this + 728);
    *(this + 93) = v6;
    v8 = *(this + 94);
    *(this + 94) = v5;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = this + 744;
    v10 = *(this + 92);
    *v7 = 0;
    *(this + 92) = 0;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    if (*v9)
    {
      *(*v9 + 68) = *(this + 817);
      v11 = (*(**(*(a2 + 21) + 64) + 16))(*(*(a2 + 21) + 64));
      md::LabelExternalObjectsModerator::registerIconForAsynchModeUpdates(v11, this + 93);
      atomic_store(1u, this + 819);
    }
  }
}

void sub_1B2D08D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<md::LabelImageInfo,geo::allocator_adapter<md::LabelImageInfo,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelImageInfo>(std::__shared_weak_count *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1->__shared_owners_ - a1->__vftable) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = a1;
  if (0x5555555555555556 * ((a1->__shared_weak_owners_ - a1->__vftable) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1->__shared_weak_owners_ - a1->__vftable) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1->__shared_weak_owners_ - a1->__vftable) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    v7 = mdm::zone_mallocator::instance(a1);
    v8 = pthread_rwlock_rdlock((v7 + 32));
    if (v8)
    {
      geo::read_write_lock::logFailure(v8, "read lock", v9);
    }

    v10 = malloc_type_zone_malloc(*v7, 24 * v6, 0x106004078230D8EuLL);
    atomic_fetch_add((v7 + 24), 1u);
    geo::read_write_lock::unlock((v7 + 32));
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[24 * v2];
  *v11 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v12 = *(a2 + 16);
  v13 = v11 + 24;
  *&v14 = v11 + 24;
  *(&v14 + 1) = &v10[24 * v6];
  v23 = v14;
  *(v11 + 2) = v12;
  v16 = v5->__vftable;
  shared_owners = v5->__shared_owners_;
  v17 = &v11[(v5->__vftable - shared_owners)];
  if (shared_owners != v5->__vftable)
  {
    v18 = v5->__vftable;
    v19 = &v11[(v5->__vftable - shared_owners)];
    do
    {
      *v19 = *&v18->~__shared_weak_count;
      v18->~__shared_weak_count = 0;
      v18->~__shared_weak_count_0 = 0;
      *(v19 + 2) = v18->__on_zero_shared;
      v18 = (v18 + 24);
      v19 += 24;
    }

    while (v18 != shared_owners);
    do
    {
      a1 = v16->~__shared_weak_count_0;
      if (a1)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      }

      v16 = (v16 + 24);
    }

    while (v16 != shared_owners);
  }

  v20 = v5->__vftable;
  v5->__vftable = v17;
  *&v5->__shared_owners_ = v23;
  if (v20)
  {
    v21 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelImageInfo>(v21, v20);
  }

  return v13;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelImageInfo>(uint64_t a1, void *a2)
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

float md::TransitPillIconLabelPart::calloutAnchorRect(md::TransitPillIconLabelPart *this)
{
  if (*(this + 721) == 1)
  {
    return -*(this + 177);
  }

  else
  {
    return -*(this + 178);
  }
}

uint64_t md::TransitPillIconLabelPart::markInactive(uint64_t this)
{
  if (*(this + 817) == 1)
  {
    *(this + 817) = 256;
    v1 = atomic_load((this + 819));
    if (v1)
    {
      *(*(this + 744) + 68) = 0;
    }
  }

  return this;
}

uint64_t md::TransitPillIconLabelPart::markActive(uint64_t this)
{
  if ((*(this + 817) & 1) == 0)
  {
    *(this + 817) = 1;
    v1 = atomic_load((this + 819));
    if (v1)
    {
      *(*(this + 744) + 68) = 1;
    }
  }

  return this;
}

void md::TransitPillIconLabelPart::pushToRenderModel(void *result, void *a2, float a3)
{
  *(result + 138) = fmaxf(fminf(*(result + 150) * a3, 1.0), 0.0);
  v3 = atomic_load(result + 819);
  if (v3)
  {
    v5 = *(result + 93);
    *(v5 + 8) = *(result + 138);
    v7 = a2[2];
    v6 = a2[3];
    if (v7 >= v6)
    {
      v9 = a2[1];
      v10 = (v7 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v11 = v6 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        v14 = mdm::zone_mallocator::instance(result);
        v15 = pthread_rwlock_rdlock((v14 + 32));
        if (v15)
        {
          geo::read_write_lock::logFailure(v15, "read lock", v16);
        }

        v17 = malloc_type_zone_malloc(*v14, 8 * v13, 0x2004093837F09uLL);
        atomic_fetch_add((v14 + 24), 1u);
        geo::read_write_lock::unlock((v14 + 32));
      }

      else
      {
        v17 = 0;
      }

      v19 = &v17[8 * v13];
      v18 = &v17[8 * v10];
      *v18 = v5;
      v8 = v18 + 8;
      v20 = a2[1];
      v21 = a2[2] - v20;
      v22 = &v18[-v21];
      v23 = memcpy(&v18[-v21], v20, v21);
      v24 = a2[1];
      a2[1] = v22;
      a2[2] = v8;
      a2[3] = v19;
      if (v24)
      {
        v25 = mdm::zone_mallocator::instance(v23);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalIcon *>(v25, v24);
      }
    }

    else
    {
      *v7 = v5;
      v8 = v7 + 1;
    }

    a2[2] = v8;
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalIcon *>(uint64_t a1, void *a2)
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

uint64_t md::TransitPillIconLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  v4 = atomic_load((a1 + 819));
  if ((v4 & 1) == 0)
  {
    return 16;
  }

  v6 = atomic_load((*(a1 + 744) + 65));
  if ((v6 & 1) == 0)
  {
    return 15;
  }

  v9 = *(a1 + 680);
  v10 = vmul_n_f32(v9, *(a2 + 888));
  v11 = vmul_n_f32(vrev64_s32(v9), *(a2 + 892));
  v9.i32[0] = vsub_f32(v10, v11).u32[0];
  v9.i32[1] = vadd_f32(v10, v11).i32[1];
  v12 = vadd_f32(v9, *a4);
  *(a1 + 520) = v12;
  *(a1 + 344) = v12;
  md::CollisionObject::setupShapeData(a1 + 312);
  v13 = *(a1 + 16);
  v14 = *(v13 + 1120);
  *(a1 + 692) = v14;
  v15 = *(a1 + 744);
  *(v15 + 16) = v14;
  *(v15 + 24) = md::LabelLayoutContext::cosUpToEye(a2 + 432, v13 + 408);
  *(v15 + 36) = *a4;
  return 37;
}

float md::TransitPillIconLabelPart::updateForDisplay(md::TransitPillIconLabelPart *this, float result)
{
  v2 = atomic_load(this + 819);
  if (v2)
  {
    v4 = 0;
    v5 = *(this + 143);
    *(this + 149) = v5;
    *(this + 153) = *(this + 147);
    *(this + 75) = *(this + 72);
    *(this + 617) = *(this + 593);
    *(this + 556) = *(this + 633) + 4 * *(this + 594);
    v6 = *(this + 93);
    *(v6 + 12) = v5;
    *(v6 + 66) = *(this + 676);
    v7 = v6 + 28;
    do
    {
      *(v7 + v4) = *(this + v4 + 656);
      ++v4;
    }

    while (v4 != 4);
    v8 = 0;
    v9 = *(this + 93) + 32;
    do
    {
      *(v9 + v8) = *(this + v8 + 660);
      ++v8;
    }

    while (v8 != 4);
    v10 = *(this + 161);
    *(this + 172) = v10;
    *(*(this + 93) + 20) = v10;
    *(this + 85) = *(this + 636);
    if (*(this + 722))
    {
      goto LABEL_11;
    }

    v11 = 0;
    v12 = 0;
    do
    {
      result = *(this + v12 + 80);
      v13 = *(this + v12 + 78);
      if (v11)
      {
        break;
      }

      v11 = 1;
      v12 = 1;
    }

    while (result >= v13);
    if (result < v13)
    {
LABEL_11:
      *(this + 722) = 0;
      v14 = *(this + 677);
      *(this + 721) = v14;
      v15 = *(this + 167);
      *(this + 178) = v15;
      v16 = *(this + 168);
      *(this + 179) = v16;
      v17 = *(this + 166);
      *(this + 177) = v17;
      v18 = *(this + 163);
      *(this + 174) = v18;
      if (v14 == 1)
      {
        if (v18 == 1.0)
        {
          v19 = 0;
          *&v20 = v17;
          return md::LabelPart::LabelPartLayoutState::setCollisionCircle(this + 312, &v19);
        }

        *&v19 = -v17;
        *(&v19 + 1) = -(v18 * v17);
        *&v20 = v17;
        *(&v20 + 1) = v18 * v17;
      }

      else
      {
        *&v19 = -v15;
        *(&v19 + 1) = -v16;
        v20 = *(this + 89);
      }

      md::CollisionObject::resetWithRects(this + 39, 1u);
      return md::CollisionObject::addRect(this + 312, &v19);
    }
  }

  return result;
}

float md::LabelPart::LabelPartLayoutState::setCollisionCircle(uint64_t a1, _DWORD *a2)
{
  md::CollisionObject::resetWithCircles(a1, 1u);
  v4 = *(a1 + 168);
  v5 = *(a1 + 176);
  *(a1 + 176) = v5 + 1;
  v6 = (v4 + 12 * v5);
  *v6 = *a2;
  v6[1] = a2[1];
  v6[2] = a2[2];

  return gm::Box<float,2>::enclose(a1, a2);
}

uint64_t md::TransitPillIconLabelPart::layoutForStaging(md::TransitPillIconLabelPart *this, md::LabelManager *a2, float *a3)
{
  if (*(this + 91))
  {
    md::TransitPillIconLabelPart::checkExternalIconRequest(this, a2);
    if (*(this + 91))
    {
      return 15;
    }
  }

  v6 = atomic_load(this + 819);
  if ((v6 & 1) == 0)
  {
    return 16;
  }

  v7 = atomic_load((*(this + 93) + 65));
  if ((v7 & 1) == 0)
  {
    return 15;
  }

  *v8.i32 = md::LabelLayoutContext::cosUpToEye(*(a2 + 53), *(this + 2) + 616);
  if (vabds_f32(*v8.i32, *(this + 163)) > 0.2)
  {
    *(this + 163) = v8.i32[0];
    *(this + 678) = 1;
    *(this + 722) = 1;
  }

  v9 = atomic_load(this + 819);
  if (v9)
  {
    v10 = atomic_load((*(this + 93) + 65));
    if (v10)
    {
      if (*(this + 628) & 1) != 0 || (*(this + 678))
      {
        goto LABEL_15;
      }

      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(this + v12 + 20);
        v14 = *(this + v12 + 18);
        if (v11)
        {
          break;
        }

        v11 = 1;
        v12 = 1;
      }

      while (v13 >= v14);
      if (v13 < v14)
      {
LABEL_15:
        *(this + 628) = 0;
        v15 = *(this + 677);
        if (v15 == 1)
        {
          v8.i32[0] = *(this + 166);
        }

        else
        {
          *v8.i32 = fminf(*(this + 168), *(this + 167));
        }

        *v8.i32 = 0.5 - *v8.i32;
        *(this + 21) = vmaxnm_f32(*(this + 620), vdup_lane_s32(v8, 0));
        *(this + 271) = *(this + 631);
        *(this + 678) = 0;
        if (v15)
        {
          v17 = *(this + 163);
          if (v17 == 1.0)
          {
            v29 = 0;
            v30.i32[0] = *(this + 166);
            md::LabelPart::LabelPartLayoutState::setCollisionCircle(this + 72, &v29);
            goto LABEL_26;
          }

          v19 = *(this + 166);
          v29.f32[0] = -v19;
          v29.f32[1] = -(v19 * v17);
          v30.f32[0] = v19;
          v30.f32[1] = v19 * v17;
        }

        else
        {
          v18 = *(this + 668);
          v29 = vneg_f32(v18);
          v30 = v18;
        }

        md::CollisionObject::resetWithRects(this + 9, 1u);
        md::CollisionObject::addRect(this + 72, &v29);
      }
    }
  }

LABEL_26:
  v20 = *(a2 + 53);
  v21 = *(this + 159);
  v22 = *(v20 + 456);
  v23 = *(v20 + 460);
  v24 = *(this + 160);
  v25 = a3[1] + (v23 * v21);
  v26 = -((v24 * v23) - (v22 * v21));
  v27 = v25 + (v24 * v22);
  v28 = v26 + *a3;
  *(this + 70) = v28;
  *(this + 71) = v27;
  *(this + 26) = v28;
  *(this + 27) = v27;
  md::CollisionObject::setupShapeData(this + 72);
  return 37;
}

void md::TransitPillIconLabelPart::updateWithStyle(md::TransitPillIconLabelPart *this, md::LabelManager *a2)
{
  if (*(this + 91))
  {
    md::TransitPillIconLabelPart::checkExternalIconRequest(this, a2);
  }

  v4 = atomic_load(this + 819);
  if (v4)
  {
    md::ImageLabelPart::updateWithStyle(this, a2);
    v5 = *(this + 4);
    v6 = *v5;
    v7 = *(*v5 + 296);
    if (!v7)
    {
      v8 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v5, 0);
      v7 = *v8;
      *(v6 + 296) = *v8;
      v6 = *v5;
    }

    v9 = *(v7 + 89) == 2;
    *(this + 676) = v9;
    if (v9)
    {
      v10 = *(v6 + 296);
      if (!v10)
      {
        v11 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v6, 0);
        v10 = *v11;
        *(v6 + 296) = *v11;
      }

      v12 = 0;
      v13 = v10 + 72;
      do
      {
        *(this + v12 + 656) = *(v13 + v12);
        ++v12;
      }

      while (v12 != 4);
      v6 = *v5;
    }

    v14 = *(v6 + 296);
    if (!v14)
    {
      v15 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v6, 0);
      v14 = *v15;
      *(v6 + 296) = *v15;
    }

    v16 = 0;
    v17 = v14 + 76;
    do
    {
      *(this + v16 + 660) = *(v17 + v16);
      ++v16;
    }

    while (v16 != 4);
    v18 = *(this + 93);
    *(this + 159) = v18[6].i32[0];
    *(this + 160) = v18[6].i32[1];
    v19 = *(*(this + 2) + 784);
    *(this + 162) = v19;
    v20 = *v5;
    v21 = *(*v5 + 296);
    if (!v21)
    {
      v22 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v5, 0);
      v21 = *v22;
      *(v20 + 296) = *v22;
      v19 = *(this + 162);
      v18 = *(this + 93);
    }

    v23 = *(v21 + 36);
    *(this + 161) = v23;
    v24 = v19 * v23;
    if (v18[8].i8[6])
    {
      v19 = v24;
    }

    v25 = v18[8].u8[0];
    if (*(this + 677) == v25)
    {
      if (!v18[8].i8[0])
      {
        v27 = v18[7].f32[0] * v19;
        v28 = v18[7].f32[1] * v19;
        if (vabds_f32(*(this + 167), v27) < 1.0 && vabds_f32(*(this + 168), v28) < 1.0)
        {
          goto LABEL_30;
        }

        *(this + 167) = v27;
        *(this + 168) = v28;
        goto LABEL_29;
      }

      v26 = v18[5].f32[1] * v19;
      if (vabds_f32(*(this + 166), v26) >= 1.0)
      {
        *(this + 166) = v26;
LABEL_29:
        *(this + 678) = 1;
      }
    }

    else
    {
      *(this + 677) = v25;
      *(this + 678) = 1;
      *(this + 166) = v18[5].f32[1] * v19;
      *(this + 668) = vmul_n_f32(v18[7], v19);
    }

LABEL_30:
    *(this + 722) |= *(this + 678);
  }
}

void md::TransitPillIconLabelPart::~TransitPillIconLabelPart(md::TransitPillIconLabelPart *this)
{
  md::TransitPillIconLabelPart::~TransitPillIconLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

{
  *this = &unk_1F29ED9B8;
  if (*(this + 817) == 1)
  {
    *(this + 817) = 256;
    v2 = atomic_load(this + 819);
    if (v2)
    {
      *(*(this + 93) + 68) = 0;
    }
  }

  v3 = atomic_load(this + 819);
  if (v3)
  {
    *(*(this + 93) + 67) = 1;
  }

  if (*(this + 783) < 0)
  {
    v4 = *(this + 95);
    v5 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  v6 = *(this + 94);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 92);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

void md::LogicBase::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = *(a1 + 16);
  if (v3 >= 0x17)
  {
    operator new();
  }

  v12 = *(a1 + 24);
  if (v3)
  {
    memmove(&__dst, v5, v3);
  }

  *(&__dst + v3) = 0;
  gdc::DebugTreeNode::DebugTreeNode(a2, &__dst);
  std::string::basic_string[abi:nn200100]<0>(v9, "Active");
  gdc::DebugTreeValue::DebugTreeValue(v6, *(a1 + 56));
  gdc::DebugTreeNode::addProperty(a2, v9, v6);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(__dst);
  }
}

void sub_1B2D09C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = (v17 + 72);
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a17);
  a17 = (v17 + 48);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a17);
  if (*(v17 + 47) < 0)
  {
    operator delete(*(v17 + 24));
  }

  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (*(v18 - 49) < 0)
  {
    operator delete(*(v18 - 72));
  }

  _Unwind_Resume(a1);
}

__n128 md::SelectedTransitTileResourceFetcher::tileLoaderAdditionalInfo@<Q0>(const gdc::ResourceKey *a1@<X1>, __n128 *a2@<X8>)
{
  v3.n128_u64[1] = *(*(a1 + 1) + 32);
  result = v3;
  *a2 = v3;
  a2[1].n128_u8[0] = 1;
  return result;
}

void md::SelectedTransitTileResourceFetcher::~SelectedTransitTileResourceFetcher(md::SelectedTransitTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::GEOVectorTileResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4EF48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::StackLabelPart::debugCompositeClassName@<X0>(md::StackLabelPart *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v11);
  if (*(this + 166) == *(this + 165))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, "Stack, Margin=", 14);
    v4 = v11;
    *(&v11 + *(v11 - 24) + 8) = *(&v11 + *(v11 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v13[0].__locale_ + *(v4 - 24)) = 1;
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, "Stack, Margin:H=", 16);
    v5 = v11;
    *(&v11 + *(v11 - 24) + 8) = *(&v11 + *(v11 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v13[0].__locale_ + *(v5 - 24)) = 1;
    v6 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, ", V=", 4);
  }

  std::ostream::operator<<();
  if ((v18 & 0x10) != 0)
  {
    v8 = v17;
    if (v17 < v14)
    {
      v17 = v14;
      v8 = v14;
    }

    locale = v13[4].__locale_;
  }

  else
  {
    if ((v18 & 8) == 0)
    {
      v7 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    locale = v13[1].__locale_;
    v8 = v13[3].__locale_;
  }

  v7 = v8 - locale;
  if ((v8 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (v7)
  {
    memmove(a2, locale, v7);
  }

LABEL_17:
  a2[v7] = 0;
  v11 = *MEMORY[0x1E69E54E8];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v19);
}

void sub_1B2D0A0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
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

uint64_t md::StackLabelPart::populateCollisionObjects(float32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, float a7, float a8)
{
  if (a1[78].i8[6] == 1)
  {
    v13 = a2 + 8;
    std::vector<md::CollisionObject,geo::allocator_adapter<md::CollisionObject,mdm::zone_mallocator>>::resize(a2 + 8, 0x4EC4EC4EC4EC4EC5 * ((*(a2 + 16) - *(a2 + 8)) >> 4) + 1);
    v14 = *(v13 + 8);
    v15 = a1 + 1;
    v16 = vld1_dup_f32(v15);
    *(v14 - 112) = vadd_f32(a1[21], v16);
    v17 = *a6;
    *(v14 - 192) = *a6;
    *(v14 - 188) = a6[1];
    *(v14 - 12) = fabsf(v17 + -1.0) > 0.000001;
    v18 = vmul_f32(a1[80], 0x3F0000003F000000);
    v37[0] = vneg_f32(v18);
    v37[1] = v18;
    md::CollisionObject::resetWithRects((v14 - 208), 1u);
    md::CollisionObject::addRect(v14 - 208, v37);
    *(v14 - 176) = a7;
    *(v14 - 172) = a8;

    return md::CollisionObject::setupShapeData(v14 - 208);
  }

  else
  {
    v37[0] = 0;
    v36 = a3;
    result = md::StackLabelPart::isPartOrderReversedForPosition(a1, a3, a4);
    v22 = (*&a1[73] - *&a1[72]) >> 3;
    v23 = v22 - 1;
    if (result)
    {
      LODWORD(v22) = -1;
    }

    else
    {
      v23 = 0;
    }

    v24 = v22 - v23;
    if (v22 != v23)
    {
      v25 = 0;
      if (result)
      {
        v26 = -1;
      }

      else
      {
        v26 = 1;
      }

      v27 = 8 * v23;
      do
      {
        v28 = *(*&a1[72] + v27 + 8 * v25);
        md::StackLabelPart::childCoordinateForAlignment(a1, 0, &a1[79], v28, v25 == 0, a5, v37);
        v30 = v29 - a1[81].f32[0];
        v32 = v31 - a1[81].f32[1];
        v33.n128_f32[0] = *a6;
        if (*a6 != 1.0)
        {
          v34 = a6[1];
          v35 = v34 * v32;
          v32 = (v32 * v33.n128_f32[0]) + (v34 * v30);
          v30 = -(v35 - (v33.n128_f32[0] * v30));
        }

        result = (*(*v28 + 592))(v28, a2, v36, a4, a5, a6, v30 + a7, v32 + a8, v33);
        v25 += v26;
      }

      while (v24 != v25);
    }
  }

  return result;
}

uint64_t md::StackLabelPart::isPartOrderReversedForPosition(uint64_t a1, int a2, unsigned int a3)
{
  v5 = gss::LabelPositionToMask(a2);
  if (*(a1 + 690) != 1)
  {
    return 0;
  }

  if ((v5 & 0x83) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if ((v5 & 0x38) != 0)
  {
    v6 = 1;
  }

  if (*(a1 + 688) == 1)
  {
    return v6;
  }

  else
  {
    return (v5 & 0xE) != 0;
  }
}

void md::StackLabelPart::childCoordinateForAlignment(uint64_t a1, uint64_t a2, float *a3, void *a4, int a5, uint64_t a6, float *a7)
{
  v11 = 0;
  v12 = 0;
  v13 = 312;
  if (!a2)
  {
    v13 = 72;
  }

  v14 = (a4[3] + v13);
  v15 = v14 + 2;
  do
  {
    v16 = v15[v12];
    v17 = v14[v12];
    if (v11)
    {
      break;
    }

    v11 = 1;
    v12 = 1;
  }

  while (v16 >= v17);
  v18 = 0.0;
  if (v16 >= v17)
  {
    v18 = v14[2] - *v14;
  }

  v19 = 0;
  v20 = 0;
  do
  {
    v21 = v15[v20];
    v22 = v14[v20];
    if (v19)
    {
      break;
    }

    v19 = 1;
    v20 = 1;
  }

  while (v21 >= v22);
  v23 = 0.0;
  if (v21 >= v22)
  {
    v23 = v14[3] - v14[1];
  }

  if (*(a1 + 688) == 1)
  {
    *a7 = (*a7 + v18) + a3[1];
  }

  else
  {
    if (a5)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = (*(*a4 + 288))(a4, a2);
    }

    v25 = *a3;
    a7[1] = a7[1] - ((*(*a4 + 296))(a4, a2) + ((v25 + v23) + v24));
  }
}

uint64_t md::StackLabelPart::setRadialPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 576);
  v7 = *(a1 + 584);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 376))(v8, a2, a3);
  }

  result = md::StackLabelPart::isPartOrderReversedForPosition(a1, a2, a3);
  *(a1 + 691) = result;
  if (*(a1 + 692) == 1)
  {
    result = gss::LabelPositionToMask(a2);
    if ((result & 0x38) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    *(a1 + 656) = v10;
    *(a1 + 684) = v10;
  }

  return result;
}

uint64_t md::StackLabelPart::setAlignment(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a2 && (*(result + 688) & 1) == 0)
  {
    *(result + 656) = a3;
  }

  v5 = *(result + 576);
  v6 = *(result + 584);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = (*(*v7 + 368))(v7, a2, a3);
  }

  return result;
}

uint64_t md::StackLabelPart::setTextAlignment(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 576);
  for (i = *(result + 584); v3 != i; result = (*(*v7 + 360))(v7, a2, a3))
  {
    v7 = *v3++;
  }

  return result;
}

float md::StackLabelPart::bottomAlignInset(uint64_t a1, int a2)
{
  v2 = *(a1 + 576);
  v3 = *(a1 + 584);
  if (v2 == v3)
  {
    return 0.0;
  }

  v6 = v3 - 1;
  if (!*(a1 + 689))
  {
    v2 = v6;
  }

  v7 = *v2;
  (*(**v2 + 336))(*v2);
  v9 = 660;
  if (!a2)
  {
    v9 = 632;
  }

  v10 = a1 + v9;
  if (*(a1 + 688) != 1)
  {
    if (*(a1 + 689) != 1 || (*(a1 + 691) & 1) != 0)
    {
      return result;
    }

    v19 = 0;
    v20 = 0;
    v14 = *(v10 + 12);
    v21 = 312;
    if (!a2)
    {
      v21 = 72;
    }

    v16 = *(v7 + 24) + v21;
    do
    {
      v17 = *(v16 + 8 + 4 * v20);
      v18 = *(v16 + 4 * v20);
      if (v19)
      {
        break;
      }

      v19 = 1;
      v20 = 1;
    }

    while (v17 >= v18);
    goto LABEL_23;
  }

  v11 = *(v10 + 24);
  if (*(v10 + 24))
  {
    if (v11 != 3)
    {
      return result;
    }

    v12 = 0;
    v13 = 0;
    v14 = *(v10 + 12);
    v15 = 312;
    if (!a2)
    {
      v15 = 72;
    }

    v16 = *(v7 + 24) + v15;
    do
    {
      v17 = *(v16 + 8 + 4 * v13);
      v18 = *(v16 + 4 * v13);
      if (v12)
      {
        break;
      }

      v12 = 1;
      v13 = 1;
    }

    while (v17 >= v18);
LABEL_23:
    v22 = 0.0;
    if (v17 >= v18)
    {
      v22 = *(v16 + 12) - *(v16 + 4);
    }

    return (v14 + result) - v22;
  }

  v23 = 0;
  v24 = *(v10 + 12);
  v25 = 312;
  if (!a2)
  {
    v25 = 72;
  }

  v26 = *(v7 + 24) + v25;
  do
  {
    v27 = *(v26 + 8 + 4 * v23);
    v28 = *(v26 + 4 * v23);
    if (v11)
    {
      break;
    }

    LOBYTE(v11) = 1;
    v23 = 1;
  }

  while (v27 >= v28);
  v29 = 0.0;
  if (v27 >= v28)
  {
    v29 = *(v26 + 12) - *(v26 + 4);
  }

  return result + ((v24 - v29) * 0.5);
}

float md::StackLabelPart::topRightAlignInset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 576);
  v4 = *(a1 + 584);
  if (v3 == v4)
  {
    return 0.0;
  }

  v8 = gss::LabelPositionToMask(a3);
  if (*(a1 + 688) != 1)
  {
    if ((v8 & 0xE) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (!*(a1 + 690))
    {
      v3 = v4 - 1;
    }

    goto LABEL_9;
  }

  if ((v8 & 0x38) != 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v10 = *v3;
  (*(*v10 + 320))(v10, a2, a3);
  if (*(a1 + 688) == 1)
  {
    v11 = 660;
    if (!a2)
    {
      v11 = 632;
    }

    v12 = a1 + v11;
    v13 = *(v12 + 24);
    if (*(v12 + 24))
    {
      if (v13 == 4)
      {
        v14 = 0;
        v15 = 0;
        v16 = *(v12 + 12);
        v17 = 312;
        if (!a2)
        {
          v17 = 72;
        }

        v18 = v10[3] + v17;
        do
        {
          v19 = *(v18 + 8 + 4 * v15);
          v20 = *(v18 + 4 * v15);
          if (v14)
          {
            break;
          }

          v14 = 1;
          v15 = 1;
        }

        while (v19 >= v20);
        v21 = 0.0;
        if (v19 >= v20)
        {
          v21 = *(v18 + 12) - *(v18 + 4);
        }

        return (v16 + result) - v21;
      }
    }

    else
    {
      v22 = 0;
      v23 = *(v12 + 12);
      v24 = 312;
      if (!a2)
      {
        v24 = 72;
      }

      v25 = v10[3] + v24;
      do
      {
        v26 = *(v25 + 8 + 4 * v22);
        v27 = *(v25 + 4 * v22);
        if (v13)
        {
          break;
        }

        LOBYTE(v13) = 1;
        v22 = 1;
      }

      while (v26 >= v27);
      v28 = 0.0;
      if (v26 >= v27)
      {
        v28 = *(v25 + 12) - *(v25 + 4);
      }

      return result + ((v23 - v28) * 0.5);
    }
  }

  return result;
}

float md::StackLabelPart::topLeftAlignInset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 576);
  v4 = *(a1 + 584);
  if (v3 == v4)
  {
    return 0.0;
  }

  v8 = gss::LabelPositionToMask(a3);
  if (*(a1 + 688) != 1)
  {
    if ((v8 & 0xE) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (!*(a1 + 690))
    {
      v3 = v4 - 1;
    }

    goto LABEL_9;
  }

  if ((v8 & 0x38) != 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v10 = *v3;
  (*(*v10 + 320))(v10, a2, a3);
  if (*(a1 + 688) == 1)
  {
    v11 = 660;
    if (!a2)
    {
      v11 = 632;
    }

    v12 = a1 + v11;
    v13 = *(v12 + 24);
    if (*(v12 + 24))
    {
      if (v13 == 4)
      {
        v14 = 0;
        v15 = 0;
        v16 = *(v12 + 12);
        v17 = 312;
        if (!a2)
        {
          v17 = 72;
        }

        v18 = v10[3] + v17;
        do
        {
          v19 = *(v18 + 8 + 4 * v15);
          v20 = *(v18 + 4 * v15);
          if (v14)
          {
            break;
          }

          v14 = 1;
          v15 = 1;
        }

        while (v19 >= v20);
        v21 = 0.0;
        if (v19 >= v20)
        {
          v21 = *(v18 + 12) - *(v18 + 4);
        }

        return (v16 + result) - v21;
      }
    }

    else
    {
      v22 = 0;
      v23 = *(v12 + 12);
      v24 = 312;
      if (!a2)
      {
        v24 = 72;
      }

      v25 = v10[3] + v24;
      do
      {
        v26 = *(v25 + 8 + 4 * v22);
        v27 = *(v25 + 4 * v22);
        if (v13)
        {
          break;
        }

        LOBYTE(v13) = 1;
        v22 = 1;
      }

      while (v26 >= v27);
      v28 = 0.0;
      if (v26 >= v27)
      {
        v28 = *(v25 + 12) - *(v25 + 4);
      }

      return result + ((v23 - v28) * 0.5);
    }
  }

  return result;
}

uint64_t md::StackLabelPart::isVisuallySimilar(md::StackLabelPart *this, const md::LabelPart *a2, const md::LabelPart *a3)
{
  result = md::CompositeLabelPart::isVisuallySimilar(this, a2, a3);
  if (result)
  {
    return *(this + 656) == *(a2 + 656) && *(this + 688) == *(a2 + 688) && *(this + 690) == *(a2 + 690);
  }

  return result;
}

uint64_t md::StackLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  md::CompositeLabelPart::updateAnimationForDisplay(a1, a3);
  v10 = *a5;
  if (*(a1 + 624) == 1)
  {
    v10 = vadd_f32(v10, *(a1 + 616));
  }

  v11 = *a4;
  v32 = 0;
  v12 = (*(a1 + 584) - *(a1 + 576)) >> 3;
  v13 = v12 - 1;
  if (*(a1 + 691))
  {
    LODWORD(v12) = -1;
  }

  else
  {
    v13 = 0;
  }

  v14 = v12 - v13;
  if (v12 == v13)
  {
LABEL_15:
    v26 = 37;
  }

  else
  {
    v15 = 0;
    if (*(a1 + 691))
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    v17 = 8 * v13;
    while (1)
    {
      v18 = *(*(a1 + 576) + v17 + 8 * v15);
      v31[0] = 0;
      (*(*v18 + 120))(v18, a2, a3, a4, v31);
      md::StackLabelPart::childCoordinateForAlignment(a1, 1, (a1 + 660), v18, v15 == 0, *(a1 + 684), &v32);
      v20.i32[1] = v19;
      v21 = vsub_f32(v20, *(a1 + 676));
      if (*(a1 + 508) == 1)
      {
        v22 = *(a1 + 328);
        v23 = vmul_n_f32(v22, v21.f32[0]);
        v24 = vrev64_s32(vmul_lane_f32(v22, v21, 1));
        v21.i32[0] = vsub_f32(v23, v24).u32[0];
        v21.i32[1] = vadd_f32(v23, v24).i32[1];
      }

      v31[0] = vadd_f32(v10, v21);
      v25 = (*(*v18 + 120))(v18, a2, a3, a4, v31);
      if (v25 != 37)
      {
        break;
      }

      v15 += v16;
      if (v14 == v15)
      {
        goto LABEL_15;
      }
    }

    v26 = v25;
  }

  v27 = vmul_f32(*(a1 + 668), 0x3F0000003F000000);
  v31[0] = vneg_f32(v27);
  v31[1] = v27;
  v28 = (a1 + 312);
  if (*(a1 + 630) == 1)
  {
    md::CollisionObject::resetWithRects(v28, 1u);
    md::CollisionObject::addRect(a1 + 312, v31);
  }

  else
  {
    md::CollisionObject::setLocalBounds(v28, v31);
  }

  v29 = vadd_f32(v10, v11);
  *(a1 + 520) = v29;
  *(a1 + 344) = v29;
  md::CollisionObject::setupShapeData(a1 + 312);
  return v26;
}

double md::StackLabelPart::updateForDisplay(md::StackLabelPart *this)
{
  v2 = this + 632;
  v3 = *(this + 72);
  v4 = *(this + 73);
  while (v3 != v4)
  {
    v5 = *v3++;
    (*(*v5 + 112))(v5);
  }

  *(v2 + 28) = *v2;
  *(this + 684) = *(this + 656);
  result = *(this + 81);
  *(v2 + 44) = result;
  return result;
}

uint64_t md::StackLabelPart::layoutForStaging(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t *a4)
{
  a1[80] = 0;
  if (a1[86].i8[3])
  {
    v8 = ((*&a1[73] - *&a1[72]) >> 3) - 1;
  }

  else
  {
    v8 = 0;
  }

  if (a1[86].i8[3])
  {
    v9 = -1;
  }

  else
  {
    v9 = (*&a1[73] - *&a1[72]) >> 3;
  }

  if (a1[86].i8[3])
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  v11 = 0.0;
  if (v8 != v9)
  {
    v12 = v8;
    v13 = 0.0;
    do
    {
      v14 = *(*&a1[72] + 8 * v12);
      (*(*v14 + 80))(v14, a2, a3, a4);
      v15 = 0;
      v16 = 0;
      v17 = v14[3];
      v18 = v17 + 18;
      v19 = v17 + 20;
      do
      {
        v20 = v19[v16];
        v21 = v18[v16];
        if (v15)
        {
          break;
        }

        v15 = 1;
        v16 = 1;
      }

      while (v20 >= v21);
      v22 = 0.0;
      if (v20 >= v21)
      {
        v22 = *v19 - *v18;
      }

      v23 = 0;
      v24 = 0;
      do
      {
        v25 = v19[v24];
        v26 = v18[v24];
        if (v23)
        {
          break;
        }

        v23 = 1;
        v24 = 1;
      }

      while (v25 >= v26);
      v27 = 0.0;
      if (v25 >= v26)
      {
        v27 = v17[21] - v17[19];
      }

      if (a1[86].i8[0] == 1)
      {
        v11 = a1[80].f32[0] + v22;
        a1[80].f32[1] = fmaxf(a1[80].f32[1], v27);
      }

      else
      {
        a1[80].f32[1] = ((v27 + v13) + a1[80].f32[1]) + (*(*v14 + 288))(v14, 0);
        v13 = (*(*v14 + 296))(v14, 0);
        v11 = fmaxf(a1[80].f32[0], v22);
      }

      a1[80].f32[0] = v11;
      v12 += v10;
    }

    while (v9 != v12);
  }

  v28 = a1[86].u8[0];
  v29 = a1[73];
  v30 = a1[72];
  if (v28)
  {
    v11 = v11 + (a1[79].f32[1] * (((*&v29 - *&v30) >> 3) - 1));
    a1[80].f32[0] = v11;
    v31 = a1[80].f32[1];
  }

  else
  {
    v31 = a1[80].f32[1] + (a1[79].f32[0] * (((*&v29 - *&v30) >> 3) - 1));
    a1[80].f32[1] = v31;
  }

  v32 = v11 * 0.5;
  a1[81].f32[0] = v32;
  a1[81].f32[1] = v31 * -0.5;
  if (a1[86].i8[5] == 1)
  {
    v33 = (*&v29 - *&v30) >> 3;
    if (v33 >= 2)
    {
      if (v8 == v9)
      {
        v34 = *a3;
        v35 = *a4;
LABEL_58:
        v61 = 37;
        goto LABEL_68;
      }

      v36 = a1 + 81;
      v37 = 158;
      if (v28)
      {
        v37 = 159;
      }

      v38 = a1->f32[v37];
      v39 = (v33 - 1);
      v40 = 161;
      if (v28)
      {
        v40 = 160;
      }

      v41 = a1->f32[v40];
      v42 = v38 * v39;
      v43 = v38 * 0.5;
      v44 = v8;
      if (!v28)
      {
        v36 = (a1 + 652);
      }

      v45 = 0.0;
      v46 = 3.4028e38;
      do
      {
        v47 = *(*(*&v30 + 8 * v44) + 24);
        v48 = v47 + 18;
        v49 = v47 + 20;
        if (v28)
        {
          v50 = 0;
          v51 = 0;
          do
          {
            v52 = v49[v51];
            v53 = v48[v51];
            if (v50)
            {
              break;
            }

            v50 = 1;
            v51 = 1;
          }

          while (v52 >= v53);
          v54 = 0.0;
          if (v52 < v53)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v55 = 0;
          v56 = 0;
          do
          {
            v57 = v49[v56];
            v58 = v48[v56];
            if (v55)
            {
              break;
            }

            v55 = 1;
            v56 = 1;
          }

          while (v57 >= v58);
          v54 = 0.0;
          if (v57 < v58)
          {
            goto LABEL_52;
          }

          v49 = v47 + 21;
          v48 = v47 + 19;
        }

        v54 = *v49 - *v48;
LABEL_52:
        v45 = v54 + v45;
        v59 = vabds_f32(v45, vabds_f32(v41, v42 + v45));
        if (v59 < v46)
        {
          v60 = v44 - v8;
          if (v44 - v8 < 0)
          {
            v60 = v8 - v44;
          }

          v36->f32[0] = v45 + (v43 * ((2 * v60) | 1u));
          v46 = v59;
        }

        v44 += v10;
      }

      while (v9 != v44);
    }
  }

  v34 = *a3;
  v35 = *a4;
  v80 = 0;
  if (v8 == v9)
  {
    goto LABEL_58;
  }

  v62 = 0;
  v63 = v9 - (v8 + v10);
  v64 = 8 * v8;
  do
  {
    v65 = *(*&a1[72] + v64 + 8 * v62);
    md::StackLabelPart::childCoordinateForAlignment(a1, 0, &a1[79], v65, v62 == 0, a1[82].u8[0], &v80);
    v67.i32[1] = v66;
    v68 = vsub_f32(v67, a1[81]);
    if (a1[33].i8[4] == 1)
    {
      v69 = a1[11];
      v70 = vmul_n_f32(v69, v68.f32[0]);
      v71 = vrev64_s32(vmul_lane_f32(v69, v68, 1));
      v68.i32[0] = vsub_f32(v70, v71).u32[0];
      v68.i32[1] = vadd_f32(v70, v71).i32[1];
    }

    v77 = vadd_f32(*a4, v68);
    v72 = (*(*v65 + 80))(v65, a2, a3, &v77);
    v73 = v72 != 37 || v63 == 0;
    v63 -= v10;
    v62 += v10;
  }

  while (!v73);
  v61 = v72;
  v31 = a1[80].f32[1];
  v32 = a1[80].f32[0] * 0.5;
LABEL_68:
  v77.f32[0] = -v32;
  v77.f32[1] = -(v31 * 0.5);
  v78 = v32;
  v79 = v31 * 0.5;
  v74 = a1 + 9;
  if (a1[78].i8[6] == 1)
  {
    md::CollisionObject::resetWithRects(v74, 1u);
    md::CollisionObject::addRect(&a1[9], &v77);
  }

  else
  {
    md::CollisionObject::setLocalBounds(v74, &v77);
  }

  v75 = vadd_f32(v35, v34);
  a1[35] = v75;
  a1[13] = v75;
  md::CollisionObject::setupShapeData(&a1[9]);
  return v61;
}

void md::StackLabelPart::updateWithStyle(uint64_t **this, md::LabelManager *a2)
{
  md::CompositeLabelPart::updateWithStyle(this, a2);
  v3 = this[4];
  v4 = *(this + 562);
  if (v4 > 0xC)
  {
    goto LABEL_12;
  }

  if (((1 << v4) & 0x1B80) != 0)
  {
    v5 = *v3;
    v6 = *(*v3 + 312);
    if (!v6)
    {
      v7 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(*v3);
      v6 = *v7;
      *(v5 + 312) = *v7;
    }

    v8 = *(v6 + 32);
LABEL_6:
    *(this + 159) = v8;
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    v13 = *v3;
    v14 = *(*v3 + 272);
    if (!v14)
    {
      v15 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v3);
      v14 = *v15;
      *(v13 + 272) = *v15;
    }

    v8 = *(v14 + 48);
    goto LABEL_6;
  }

  if (v4 == 6)
  {
    v9 = *v3;
    v10 = *(*v3 + 272);
    if (v10)
    {
      *(this + 159) = *(v10 + 44);
    }

    else
    {
      v20 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v3);
      v21 = *v20;
      *(v9 + 272) = *v20;
      v22 = *v3;
      v10 = *(*v3 + 272);
      *(this + 159) = *(v21 + 44);
      if (!v10)
      {
        v23 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v22);
        v10 = *v23;
        *(v22 + 272) = *v23;
      }
    }

    v8 = *(v10 + 40);
  }

  else
  {
LABEL_12:
    v11 = *v3;
    v12 = *(*v3 + 272);
    if (v12)
    {
      *(this + 159) = *(v12 + 36);
    }

    else
    {
      v16 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*v3);
      v17 = *v16;
      *(v11 + 272) = *v16;
      v18 = *v3;
      v12 = *(*v3 + 272);
      *(this + 159) = *(v17 + 36);
      if (!v12)
      {
        v19 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(v18);
        v12 = *v19;
        *(v18 + 272) = *v19;
      }
    }

    v8 = *(v12 + 24);
  }

LABEL_7:
  *(this + 158) = v8;
}

void md::StackLabelPart::~StackLabelPart(md::StackLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void md::StackLabelPart::StackLabelPart(md::LabelPart *a1, int a2, int a3, int a4, char a5)
{
  md::LabelPart::LabelPart(a1);
  *(v9 + 592) = 0;
  *(v9 + 576) = 0u;
  *(v9 + 608) = 0;
  *(v9 + 612) = 0;
  *(v9 + 616) = 0;
  *(v9 + 624) = 0;
  *(v9 + 628) = 1;
  *(v9 + 630) = 0;
  *v9 = &unk_1F29EDE18;
  *(v9 + 632) = 0;
  *(v9 + 640) = 0u;
  *(v9 + 660) = 0;
  *(v9 + 668) = 0u;
  *(v9 + 688) = a2 == 1;
  *(v9 + 689) = 1;
  *(v9 + 690) = a4 == 1;
  *(v9 + 691) = 0;
  *(v9 + 692) = a3 == 5;
  *(v9 + 693) = a5;
  if (a3 == 5)
  {
    v10 = 2;
  }

  else
  {
    v10 = a3;
  }

  *(v9 + 656) = v10;
  *(v9 + 684) = v10;
}

uint64_t md::PuckLogic::debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v101);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "NavigationPuck: \n", 17);
  v8 = *(v7 + 48);
  if (v8)
  {
    v3 = *(v7 + 48);
    v9 = [v3 puck];
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x1B8C61C40](&v102, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, "\n", 1);
  if (v8)
  {
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "NavigationPuck.enabled: \n", 25);
  v11 = *(v7 + 48);
  if (v11)
  {
    v3 = *(v7 + 48);
    if ([v3 puck])
    {
      v4 = *(v7 + 48);
      v12 = *([v4 puck] + 48);
      v13 = 1;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = MEMORY[0x1B8C61C50](&v102, v12 & 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, "\n", 1);
  if (v13)
  {
  }

  if (v11)
  {
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Entities exist: \n", 17);
  if (*(a1 + 481))
  {
    v15 = "true";
  }

  else
  {
    v15 = "false";
  }

  if (*(a1 + 481))
  {
    v16 = 4;
  }

  else
  {
    v16 = 5;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v15, v16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Entities injected: \n", 20);
  if (*(a1 + 482))
  {
    v17 = "true";
  }

  else
  {
    v17 = "false";
  }

  if (*(a1 + 482))
  {
    v18 = 4;
  }

  else
  {
    v18 = 5;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v17, v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "CameraType globe: \n", 19);
  if (*(a1 + 483))
  {
    v19 = "true";
  }

  else
  {
    v19 = "false";
  }

  if (*(a1 + 483))
  {
    v20 = 4;
  }

  else
  {
    v20 = 5;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v19, v20);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Puck asset available: \n", 23);
  if (*(a1 + 484))
  {
    v21 = "true";
  }

  else
  {
    v21 = "false";
  }

  if (*(a1 + 484))
  {
    v22 = 4;
  }

  else
  {
    v22 = 5;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v21, v22);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Injectable tiles in view: \n", 27);
  if (*(a1 + 485))
  {
    v23 = "true";
  }

  else
  {
    v23 = "false";
  }

  if (*(a1 + 485))
  {
    v24 = 4;
  }

  else
  {
    v24 = 5;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v23, v24);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "IDs found: \n", 12);
  if (*(a1 + 487))
  {
    v25 = "true";
  }

  else
  {
    v25 = "false";
  }

  if (*(a1 + 487))
  {
    v26 = 4;
  }

  else
  {
    v26 = 5;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v25, v26);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Puck Position: [\n\t", 18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "x: ", 3);
  v27 = MEMORY[0x1B8C61C60](&v102, *(a1 + 336));
  v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, "\n\t", 2);
  v29 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, "y: ", 3);
  v30 = MEMORY[0x1B8C61C60](v29, *(a1 + 344));
  v31 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, "\n\t", 2);
  v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, "z: ", 3);
  v33 = MEMORY[0x1B8C61C60](v32, *(a1 + 352));
  v34 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, "\n\t", 2);
  v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v34, "z (meters): ", 12);
  v36 = MEMORY[0x1B8C61C60](v35, *(v7 + 80));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v36, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "]\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Puck facing camera: ", 20);
  v37 = MEMORY[0x1B8C61C50](&v102, *(a1 + 388));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Puck occlusion behavior: ", 25);
  v38 = *(a1 + 192);
  v39 = "";
  if (v38 <= 2)
  {
    v39 = off_1E7B32830[v38];
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, v39);
  if ((v100 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v100 & 0x80u) == 0)
  {
    v41 = v100;
  }

  else
  {
    v41 = v99;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, p_p, v41);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "\n", 1);
  if (v100 < 0)
  {
    operator delete(__p);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Puck visibility: ", 17);
  v42 = "Always";
  if (*(a1 + 269) != 1)
  {
    v42 = "";
  }

  if (*(a1 + 269))
  {
    v43 = v42;
  }

  else
  {
    v43 = "Auto";
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, v43);
  if ((v100 & 0x80u) == 0)
  {
    v44 = &__p;
  }

  else
  {
    v44 = __p;
  }

  if ((v100 & 0x80u) == 0)
  {
    v45 = v100;
  }

  else
  {
    v45 = v99;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v44, v45);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "\n", 1);
  if (v100 < 0)
  {
    operator delete(__p);
  }

  v46 = *(v7 + 48);
  if (v46)
  {
    v47 = v46;
    v48 = [*(v7 + 48) puck];

    if (v48)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Puck course angle (radians): ", 29);
      v49 = *(v7 + 48);
      v50 = MEMORY[0x1B8C61C60](&v102, *([v49 puck] + 32));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, "\n", 1);
    }
  }

  if (*(a1 + 384) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Puck Bounds: [\n\t", 16);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Min: [\n\t\t", 9);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "x: ", 3);
    v51 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v51, "y: ", 3);
    v52 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, "z: ", 3);
    v53 = std::ostream::operator<<();
    v54 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v53, "\n\t]\n\t", 5);
    v55 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v54, "Max: [\n\t\t", 9);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v55, "x: ", 3);
    v56 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v56, "y: ", 3);
    v57 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, "z: ", 3);
    v58 = std::ostream::operator<<();
    v59 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, "\n\t]\n", 4);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v59, "\n]\n", 3);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Billboard-factor: ", 18);
  v60 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v60, "\n", 1);
  v97 = a3;
  v61 = *(a1 + 288);
  if (v61)
  {
    v62 = gdc::Registry::storage<md::components::OcclusionType>(*(a1 + 288));
    v63 = gdc::Registry::storage<md::components::Visibility>(v61);
    v64 = v63;
    v65 = (v63 + 32);
    v67 = v62[7];
    v66 = v62[8];
    if (*(v63 + 64) - *(v63 + 56) >= (v66 - v67))
    {
      v68 = v62 + 4;
    }

    else
    {
      v68 = (v63 + 32);
    }

    v96 = v68;
    if (v62 + 4 == v68 && v67 != v66)
    {
      v69 = v62[10];
      do
      {
        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v65, *(v67 + 4));
        v71 = v64[8];
        if (v71 != Index)
        {
          v72 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v65, *(v67 + 4));
          if (v71 == v72)
          {
            v73 = v64[11];
          }

          else
          {
            v73 = (v64[10] + ((v72 - v64[7]) >> 3));
          }

          if (!*v69)
          {
            v74 = "Non-occluded Puck: ";
            v75 = 19;
            goto LABEL_94;
          }

          if (*v69 == 1)
          {
            v74 = "Occluded Puck: ";
            v75 = 15;
LABEL_94:
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v74, v75);
            if (*v73)
            {
              v76 = "visible";
            }

            else
            {
              v76 = "not visible";
            }

            if (*v73)
            {
              v77 = 7;
            }

            else
            {
              v77 = 11;
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v76, v77);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "\n", 1);
          }
        }

        ++v69;
        v67 += 8;
      }

      while (v67 != v66);
    }

    if (v65 == v96)
    {
      v78 = v64[7];
      v79 = v64[8];
      if (v78 != v79)
      {
        v80 = v64[10];
        do
        {
          v81 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v62 + 4, *(v78 + 4));
          v82 = v62[8];
          if (v82 != v81)
          {
            v83 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v62 + 4, *(v78 + 4));
            if (v82 == v83)
            {
              v84 = v62[11];
            }

            else
            {
              v84 = (v62[10] + ((v83 - v62[7]) >> 3));
            }

            v85 = *v84;
            if (v85 == 1)
            {
              v86 = "Occluded Puck: ";
              v87 = 15;
              goto LABEL_113;
            }

            if (!v85)
            {
              v86 = "Non-occluded Puck: ";
              v87 = 19;
LABEL_113:
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v86, v87);
              if (*v80)
              {
                v88 = "visible";
              }

              else
              {
                v88 = "not visible";
              }

              if (*v80)
              {
                v89 = 7;
              }

              else
              {
                v89 = 11;
              }

              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v88, v89);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "\n", 1);
            }
          }

          ++v80;
          v78 += 8;
        }

        while (v78 != v79);
      }
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "Puck Render Mode: ", 18);
  if (*(a1 + 480))
  {
    if (*(a1 + 480) != 1)
    {
      goto LABEL_126;
    }

    v90 = "3D";
  }

  else
  {
    v90 = "2D";
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, v90, 2);
LABEL_126:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v102, "\n", 1);
  if ((v109 & 0x10) != 0)
  {
    v92 = v108;
    if (v108 < v105)
    {
      v108 = v105;
      v92 = v105;
    }

    locale = v104[4].__locale_;
  }

  else
  {
    if ((v109 & 8) == 0)
    {
      v91 = 0;
      *(v97 + 23) = 0;
      goto LABEL_139;
    }

    locale = v104[1].__locale_;
    v92 = v104[3].__locale_;
  }

  v91 = v92 - locale;
  if ((v92 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v91 >= 0x17)
  {
    operator new();
  }

  *(v97 + 23) = v91;
  if (v91)
  {
    memmove(v97, locale, v91);
  }

LABEL_139:
  *(v97 + v91) = 0;
  v101[0] = *MEMORY[0x1E69E54D8];
  v94 = *(MEMORY[0x1E69E54D8] + 72);
  *(v101 + *(v101[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v102 = v94;
  v103 = MEMORY[0x1E69E5548] + 16;
  if (v107 < 0)
  {
    operator delete(v106);
  }

  v103 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v104);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v110);
}

void sub_1B2D0C418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a18 = *MEMORY[0x1E69E54D8];
  v41 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a18 + *(a18 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a20 = v41;
  a21 = MEMORY[0x1E69E5548] + 16;
  if (a34 < 0)
  {
    operator delete(__p);
  }

  a21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a22);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a37);
  _Unwind_Resume(a1);
}

void ___ZN2md9PuckLogic13animatePuckUpERKN3geo9Mercator3IdEE_block_invoke(uint64_t a1, float a2)
{
  v2 = *(a1 + 32);
  v7[0] = gm::lerp<gm::Matrix<double,3,1>,float>(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), a2);
  v7[1] = v3;
  v7[2] = v4;
  *(v2 + 456) = gm::Matrix<double,3,1>::normalized<int,void>(v7);
  *(v2 + 464) = v5;
  *(v2 + 472) = v6;
}

void ___ZN2md9PuckLogic13animatePuckUpERKN3geo9Mercator3IdEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 440);
  *(v1 + 440) = 0;
}

id GEOGetVectorKitPuckLogicLog(void)
{
  if (GEOGetVectorKitPuckLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPuckLogicLog(void)::onceToken, &__block_literal_global_5088);
  }

  v1 = GEOGetVectorKitPuckLogicLog(void)::log;

  return v1;
}

gdc::Registry **md::PuckLogic::initializePuckRegistry(gdc::Registry **this, const md::CameraContext *a2)
{
  if ((this[41] & 1) == 0 && *(this + 487) == 1)
  {
    md::RegistryManager::vendRegistry(&v2, this[34]);
  }

  return this;
}

__n128 md::PuckLogic::update2DPuck(uint64_t a1, id *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = a3[2];
  v9 = *(a3[1] + 16) * *(a3[1] + 20);
  v169 = *(v8 + 72);
  v10 = *(v8 + 80);
  v11 = tan(*(v8 + 64) * 0.5 + 0.785398163);
  v12 = log(v11);
  v13.f64[0] = v169;
  v167 = v12;
  v13.f64[1] = v12;
  __asm { FMOV            V2.2D, #0.5 }

  v241 = vmlaq_f64(_Q2, vdupq_n_s64(0x3FC45F306DC9C883uLL), v13);
  *&v240[16] = 0;
  *v240 = 0x3FF0000000000000uLL;
  *v239 = xmmword_1B33B0740;
  *&v239[16] = 0;
  *v238 = 0uLL;
  *&v238[16] = 0x3FF0000000000000;
  if (gdc::ToCoordinateSystem(*(v7 + 3784)))
  {
    v19 = v169 * 0.159154943 + 0.5;
    v20 = v167 * 0.159154943 + 0.5;
    v21 = 0.0;
    if (*a4 == 1)
    {
      v21 = (*(v8 + 88) + 0.1) + v10 * v9;
    }

    *(a1 + 336) = v19;
    *(a1 + 344) = v20;
    *(a1 + 352) = v21;
    v22 = v19 * 6.28318531;
    v23 = exp(v20 * 6.28318531 + -3.14159265);
    v24 = atan(v23) * 2.0 + -1.57079633;
    v25 = fmod(v22, 6.28318531);
    v26 = fmod(v25 + 6.28318531, 6.28318531) + -3.14159265;
    v27 = __sincos_stret(v24);
    v28 = 6378137.0 / sqrt(v27.__sinval * v27.__sinval * -0.00669437999 + 1.0);
    v29 = (v21 + v28) * v27.__cosval;
    v30 = __sincos_stret(v26);
    v31 = 0;
    v241.f64[0] = v29 * v30.__cosval;
    v241.f64[1] = v29 * v30.__sinval;
    v242 = (v21 + v28 * 0.99330562) * v27.__sinval;
    v32 = (v28 + v21 + 1.0) * v27.__cosval;
    *v195 = v32 * v30.__cosval;
    *&v195[8] = v32 * v30.__sinval;
    *&v195[16] = (v28 * 0.99330562 + v21 + 1.0) * v27.__sinval;
    do
    {
      *(&v205 + v31 * 8) = *&v195[v31 * 8] - v241.f64[v31];
      ++v31;
    }

    while (v31 != 3);
    v33 = 0;
    *v238 = v205;
    *&v238[16] = v206;
    v34 = 0.0;
    do
    {
      v34 = v34 + *&v238[v33] * *&v238[v33];
      v33 += 8;
    }

    while (v33 != 24);
    v35 = 0;
    v36 = 1.0 / sqrt(v34);
    do
    {
      *&v238[v35] = *&v238[v35] * v36;
      v35 += 8;
    }

    while (v35 != 24);
    v37 = exp(v167 + 0.000628318515);
    v38 = atan(v37);
    v39 = __sincos_stret(v38 * 2.0 + -1.57079633);
    v40 = 0;
    v41 = 6378137.0 / sqrt(v39.__sinval * v39.__sinval * -0.00669437999 + 1.0);
    v42 = (v41 + v21) * v39.__cosval;
    *v195 = v42 * v30.__cosval;
    *&v195[8] = v42 * v30.__sinval;
    *&v195[16] = (v21 + v41 * 0.99330562) * v39.__sinval;
    do
    {
      *(&v205 + v40 * 8) = *&v195[v40 * 8] - v241.f64[v40];
      ++v40;
    }

    while (v40 != 3);
    v43 = 0;
    *v239 = v205;
    *&v239[16] = v206;
    v44 = 0.0;
    do
    {
      v44 = v44 + *&v239[v43] * *&v239[v43];
      v43 += 8;
    }

    while (v43 != 24);
    v45 = 0;
    v46 = 1.0 / sqrt(v44);
    do
    {
      *&v239[v45] = *&v239[v45] * v46;
      v45 += 8;
    }

    while (v45 != 24);
    v47 = 0;
    v48 = *&v238[8];
    v49 = *v238;
    *&v50.f64[0] = vdupq_laneq_s64(*&v238[8], 1).u64[0];
    v50.f64[1] = *v238;
    *&v51.f64[0] = vdupq_laneq_s64(*&v239[8], 1).u64[0];
    v51.f64[1] = *v239;
    *v240 = vmlaq_f64(vnegq_f64(vmulq_f64(*&v238[8], v51)), *&v239[8], v50);
    *&v240[16] = -(*v238 * *&v239[8] - *v239 * *&v238[8]);
    v52 = 0.0;
    do
    {
      v52 = v52 + *&v240[v47] * *&v240[v47];
      v47 += 8;
    }

    while (v47 != 24);
    v53 = 0;
    v54 = 1.0 / sqrt(v52);
    do
    {
      *&v240[v53] = *&v240[v53] * v54;
      v53 += 8;
    }

    while (v53 != 24);
    *&v55.f64[0] = vdupq_laneq_s64(*&v240[8], 1).u64[0];
    v55.f64[1] = *v240;
    v56 = vdupq_lane_s64(v49, 0);
    v56.f64[0] = v48.f64[1];
    v168 = v48.f64[0];
    v170 = *&v49;
    *v239 = vmlaq_f64(vnegq_f64(vmulq_f64(*&v240[8], v56)), v48, v55);
    *&v239[16] = -(*v240 * v48.f64[0] - *&v240[8] * *&v49);
    v57 = v48.f64[1];
  }

  else
  {
    v58 = 0.0;
    if (*a4 == 1)
    {
      v58 = ((*(v8 + 88) + 0.1) + v10 * v9) * 0.0000000249532021;
    }

    v242 = v58;
    *(a1 + 336) = v241;
    *(a1 + 352) = v242;
    v57 = 1.0;
    v168 = 0.0;
    v170 = 0.0;
  }

  v59 = gdc::CameraView::position(v7);
  v60 = v59;
  for (i = 0; i != 3; ++i)
  {
    *(&v205 + i * 8) = v241.f64[i] - *(v59 + i * 8);
  }

  v62 = 0;
  v63 = 0.0;
  do
  {
    v63 = v63 + *(&v205 + v62) * *(&v205 + v62);
    v62 += 8;
  }

  while (v62 != 24);
  v64 = *(v7 + 3760);
  [*a2 size];
  v65 = 0;
  v67 = (v64 + v64) / v66;
  v68 = *(a1 + 120);
  __x = *(v7 + 3112);
  v237 = *(v7 + 3128);
  v69 = 0.0;
  do
  {
    v69 = v69 + *&v238[v65] * *(&__x + v65);
    v65 += 8;
  }

  while (v65 != 24);
  v70 = 0;
  v71 = v67;
  v72 = sqrt(v63);
  do
  {
    *(&v205 + v70) = *&v238[v70] * v69;
    v70 += 8;
  }

  while (v70 != 24);
  v73 = 0;
  v74 = v68;
  *v195 = v205;
  *&v195[16] = v206;
  do
  {
    *(&v205 + v73) = *(&__x + v73) - *&v195[v73];
    v73 += 8;
  }

  while (v73 != 24);
  v75 = 0;
  __x = v205;
  v237 = v206;
  v76 = 0.0;
  do
  {
    v76 = v76 + *(&__x + v75) * *(&__x + v75);
    v75 += 8;
  }

  while (v75 != 24);
  v77 = 0;
  v78 = v72 * v71;
  v79 = 1.0 / sqrt(v76);
  do
  {
    *(&__x + v77) = *(&__x + v77) * v79;
    v77 += 8;
  }

  while (v77 != 24);
  v80 = [*(v8 + 48) puck];
  v81 = *(v80 + 32);
  if (*(v80 + 49))
  {
    v82 = 0;
  }

  else
  {
    v83 = atan2(*&__x, *(&__x + 1));
    v84 = fmod(v81 + 3.14159265 - v83, 6.28318531);
    v85 = fmod(v84 + 6.28318531, 6.28318531);
    v86 = -0.7854;
    v87 = v85 + -3.14159265;
    if (*(v80 + 50))
    {
      v86 = 0.7854;
    }

    if (v87 > 1.57079633 && v87 < 4.71238898)
    {
      v86 = -v86;
    }

    v82 = (v86 + v87) >= 0.0 && (v86 + v87) <= 3.14159265;
    v81 = v83;
  }

  v88 = v78 * v74;
  *(v80 + 50) = v82;
  v89 = sin(v81 * -0.5 + 1.57079633);
  for (j = 0; j != 24; j += 8)
  {
    *(&v205 + j) = *&v238[j] * v89;
  }

  v166 = v205;
  v91 = v206;
  v92 = cos(v81 * -0.5 + 1.57079633);
  v233 = v166;
  v234 = v91;
  v235 = v92;
  v93 = gm::Quaternion<double>::operator*(&v233, v239);
  v96 = 0;
  *&v231 = v93;
  *(&v231 + 1) = v94;
  v232 = v95;
  do
  {
    *(&v205 + v96 * 8) = v241.f64[v96] - *(v60 + v96 * 8);
    ++v96;
  }

  while (v96 != 3);
  v97 = 0;
  v229 = v205;
  v230 = v206;
  v98 = 0.0;
  do
  {
    v98 = v98 + *&v238[v97] * *(&v229 + v97);
    v97 += 8;
  }

  while (v97 != 24);
  for (k = 0; k != 24; k += 8)
  {
    *(&v205 + k) = *&v238[k] * v98;
  }

  v100 = 0;
  *v195 = v205;
  *&v195[16] = v206;
  do
  {
    *(&v205 + v100) = *(&v229 + v100) - *&v195[v100];
    v100 += 8;
  }

  while (v100 != 24);
  v101 = 0;
  v102 = v205;
  v103 = v206;
  v229 = v205;
  v230 = v206;
  v226 = 0uLL;
  v227 = 0.0;
  v228 = 0x3FF0000000000000;
  *&v224 = -(v168 * v95 - v57 * v94);
  *(&v224 + 1) = -(v57 * v93 - v170 * v95);
  v225 = -(v170 * v94 - v168 * v93);
  v104 = 0.0;
  do
  {
    v104 = v104 + *(&v224 + v101) * *(&v224 + v101);
    v101 += 8;
  }

  while (v101 != 24);
  v105 = 0;
  v106 = 1.0 / sqrt(v104);
  do
  {
    *(&v224 + v105) = *(&v224 + v105) * v106;
    v105 += 8;
  }

  while (v105 != 24);
  v107 = 0;
  *&v231 = -(*(&v224 + 1) * v57 - v225 * v168);
  *(&v231 + 1) = -(v225 * v170 - *&v224 * v57);
  v232 = -(*&v224 * v168 - *(&v224 + 1) * v170);
  v108 = 0.0;
  do
  {
    v108 = v108 + *(&v231 + v107) * *(&v231 + v107);
    v107 += 8;
  }

  while (v107 != 24);
  v109 = 0;
  v110 = 1.0 / sqrt(v108);
  do
  {
    *(&v231 + v109) = *(&v231 + v109) * v110;
    v109 += 8;
  }

  while (v109 != 24);
  v217 = v224;
  v218 = v225;
  v219 = v231;
  v220 = v232;
  v221 = v170;
  v222 = v168;
  v223 = v57;
  gm::quaternionFromRotationMatrix<double>(&v214, &v217);
  if (!*a4 && !gdc::ToCoordinateSystem(*(v7 + 3784)))
  {
    v111 = *(gdc::Camera::cameraFrame(v7) + 32) * -10.0 + 7.5;
    v112 = expf(v111);
    v113 = 0;
    v114 = v112 + 1.0;
    v184 = -(*(&v102 + 1) * v57 - v103 * v168);
    *&v185 = -(v103 * v170 - *&v102 * v57);
    *(&v185 + 1) = -(*&v102 * v168 - *(&v102 + 1) * v170);
    do
    {
      *(&v205 + v113) = -*(&v184 + v113);
      v113 += 8;
    }

    while (v113 != 24);
    v115 = 0.5 / v114;
    *v195 = v205;
    *&v195[16] = v206;
    gm::quaternionFromAngleAxis<double>(&v205, v195, (0.5 / v114));
    v226 = v205;
    v227 = v206;
    v228 = *&v207;
    v116 = sinf(v115);
    v117 = 0;
    v118 = v88 * 0.5 * v116;
    do
    {
      *(&v205 + v117) = v118 * *&v238[v117];
      v117 += 8;
    }

    while (v117 != 24);
    for (m = 0; m != 3; ++m)
    {
      v241.f64[m] = v241.f64[m] + *(&v205 + m * 8);
    }

    gm::Quaternion<double>::operator*(&v205, &v226, &v214);
    v214 = v205;
    v215 = v206;
    v216 = v207;
  }

  v120 = 0;
  v121 = *&v214;
  v122 = v215;
  v123 = (*(&v214 + 1) + *(&v214 + 1)) * *(&v214 + 1);
  v124 = (v122 + v122) * v122;
  v125 = v121 + v121;
  v126 = (v121 + v121) * *(&v214 + 1);
  v127 = (v122 + v122) * v216;
  v128 = v215 * (v121 + v121);
  *v195 = 1.0 - (v123 + v124);
  *&v195[8] = v127 + v126;
  v129 = 1.0 - (v121 + v121) * v121;
  *(&v197 + 1) = v216 * (*(&v214 + 1) + *(&v214 + 1)) + v128;
  *&v198 = (*(&v214 + 1) + *(&v214 + 1)) * v215 - v216 * v125;
  *&v196 = v126 - v127;
  *&v195[16] = v128 - v216 * (*(&v214 + 1) + *(&v214 + 1));
  *(&v196 + 1) = v129 - v124;
  *&v197 = v216 * v125 + (*(&v214 + 1) + *(&v214 + 1)) * v215;
  *(&v198 + 1) = v129 - v123;
  v130 = &v205;
  v131 = v195;
  do
  {
    v132 = 0;
    v133 = v130;
    do
    {
      *v133 = *&v131[v132];
      v133 += 2;
      v132 += 24;
    }

    while (v132 != 72);
    ++v120;
    v130 = (v130 + 8);
    v131 += 8;
  }

  while (v120 != 3);
  v134 = 0;
  v207 = 0.0;
  v208 = 0;
  v210 = 0;
  v209 = 0;
  v213 = 0x3FF0000000000000;
  v212 = 0;
  v211 = 0;
  v135 = *(a4 + 60);
  v197 = 0u;
  v199 = 0;
  *&v195[8] = 0u;
  v196 = 0u;
  v198 = 0u;
  *v195 = 0x3FF0000000000000;
  *&v197 = 0x3FF0000000000000;
  v201 = 0;
  v200 = 0x3FF0000000000000;
  v202 = 0xBFE0000000000000;
  v203 = v135;
  v204 = xmmword_1B33B0740;
  v174 = v88 * *(v80 + 40);
  *&v175 = v174;
  *(&v175 + 1) = v174;
  do
  {
    *(&v184 + v134 * 8) = *(&v174 + v134 * 8) + v241.f64[v134];
    ++v134;
  }

  while (v134 != 3);
  v136 = v185;
  v187 = 0u;
  v189 = 0;
  v185 = 0u;
  v186 = 0u;
  v188 = 0u;
  v191 = 0;
  v194 = 0x3FF0000000000000;
  v184 = v184 - v241.f64[0];
  *&v187 = *&v136 - v241.f64[1];
  v190 = *(&v136 + 1) - v242;
  v192 = v241;
  v193 = v242;
  v177 = 0u;
  v179 = 0;
  v182 = 0u;
  v181 = 0u;
  v178 = 0u;
  v176 = 0u;
  v175 = 0u;
  v174 = 1.0;
  *&v177 = 0x3FF0000000000000;
  v180 = 0x3FF0000000000000;
  v183 = 0x3FF0000000000000;
  if (v82)
  {
    v174 = -1.0;
  }

  v137 = 0;
  v138 = &v184;
  do
  {
    v139 = 0;
    v140 = &v205;
    do
    {
      v141 = 0;
      v142 = 0.0;
      v143 = v138;
      do
      {
        v144 = *v143;
        v143 += 4;
        v142 = v142 + *(v140 + v141) * v144;
        v141 += 8;
      }

      while (v141 != 32);
      v171[4 * v139++ + v137] = v142;
      v140 += 2;
    }

    while (v139 != 4);
    ++v137;
    ++v138;
  }

  while (v137 != 4);
  v145 = 0;
  v146 = v171;
  do
  {
    v147 = 0;
    v148 = &v174;
    do
    {
      v149 = 0;
      v150 = 0.0;
      v151 = v146;
      do
      {
        v152 = *v151;
        v151 += 4;
        v150 = v150 + v148[v149++] * v152;
      }

      while (v149 != 4);
      v172[4 * v147++ + v145] = v150;
      v148 += 4;
    }

    while (v147 != 4);
    ++v145;
    ++v146;
  }

  while (v145 != 4);
  v153 = 0;
  v154 = v172;
  do
  {
    v155 = 0;
    v156 = v195;
    do
    {
      v157 = 0;
      v158 = 0.0;
      v159 = v154;
      do
      {
        v160 = *v159;
        v159 += 4;
        v158 = v158 + *&v156[v157] * v160;
        v157 += 8;
      }

      while (v157 != 32);
      *(&v173[2 * v155++] + v153) = v158;
      v156 += 32;
    }

    while (v155 != 4);
    ++v153;
    ++v154;
  }

  while (v153 != 4);
  v161 = v173[1];
  *(a4 + 216) = v173[0];
  *(a4 + 232) = v161;
  v162 = v173[3];
  *(a4 + 248) = v173[2];
  result = v173[4];
  v164 = v173[6];
  v165 = v173[7];
  *(a4 + 296) = v173[5];
  *(a4 + 312) = v164;
  *(a4 + 328) = v165;
  *(a4 + 264) = v162;
  *(a4 + 280) = result;
  return result;
}

unint64_t gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::getComponent<md::components::Material,md::components::DynamicMeshInstance>(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    return a1[11];
  }

  else
  {
    return a1[10] + 304 * ((v3 - a1[7]) >> 3);
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::CustomRenderStateChanged>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::components::CustomRenderStateChanged>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::CustomRenderStateChanged>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::components::VisibilityChanged>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::components::VisibilityChanged>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::VisibilityChanged>::~ComponentStorageWrapper(uint64_t a1)
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

int *gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(uint64_t *a1, unsigned int a2, _BYTE *a3)
{
  if (!a1 || (a2 >= 0x17 ? (v4 = 23) : (v4 = a2), v5 = *(a1 + v4 + 16), v6 = *a1, v7 = *a1 + 120 * *(a1 + v4 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v7, 0x13Fu) == *(v7 + 12)))
  {
    if (a3)
    {
      *a3 = 0;
    }

    return gss::defaultValueForKey<gss::PropertyID,unsigned int>(319);
  }

  else
  {
    v8 = v6 + 120 * v5;
    v9 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v8 + 48), 0x13Fu);
    if (v9 == *(v8 + 60))
    {
      return &gss::PropertySetValueHelper<gss::PropertyID,unsigned int>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      return (*(v8 + 48) + *(v8 + 56) + 4 * v9);
    }
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::RenderableInjected>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::components::RenderableInjected>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::components::RenderableInjected>::~ComponentStorageWrapper(uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN2md9PuckLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_16ElevationContextENS2_17NavigationContextENS2_17StyleLogicContextENS2_22SharedResourcesContextENS2_15RegistryContextENS2_25IdentifiedResourceContextENS2_12SceneContextENS2_20NonTiledAssetContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_11PuckContextEE3__0NS_9allocatorISR_EEFvNS2_17StyleManagerEventEEEclEOSU_(uint64_t a1, unsigned __int8 *a2)
{
  if ((*a2 | 4) == 4)
  {
    v3 = *(a1 + 8);
    v4 = v3[38];
    v3[37] = 0;
    v3[38] = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v3[40];
    v3[39] = 0;
    v3[40] = 0;
    if (v5)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2md9PuckLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_13CameraContextENS2_16ElevationContextENS2_17NavigationContextENS2_17StyleLogicContextENS2_22SharedResourcesContextENS2_15RegistryContextENS2_25IdentifiedResourceContextENS2_12SceneContextENS2_20NonTiledAssetContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_11PuckContextEE3__0NS_9allocatorISR_EEFvNS2_17StyleManagerEventEEE7__cloneEPNS0_6__baseISV_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EE390;
  a2[1] = v2;
  return result;
}

void gdc::Registry::add<md::components::ReferencedAssetInstance,md::components::CustomRenderState,md::components::StencilBucket,md::components::IntendedSceneLayer,md::components::NonTiled,md::components::CustomZIndex,md::components::OcclusionType>(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, char *a5, char *a6, _DWORD *a7, char *a8)
{
  v16 = gdc::Registry::storage<md::components::ReferencedAssetInstance>(a1);
  gdc::ComponentStorageWrapper<md::components::ReferencedAssetInstance>::emplace(v16, a2, a3);
  v17 = gdc::Registry::storage<md::components::CustomRenderState>(a1);
  gdc::ComponentStorageWrapper<md::components::CustomRenderState>::emplace(v17, a2, a4);
  v18 = gdc::Registry::storage<md::components::StencilBucket>(a1);
  gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v18, a2, a5);
  v19 = gdc::Registry::storage<md::components::IntendedSceneLayer>(a1);
  gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v19, a2, a6);
  v20 = gdc::Registry::storage<md::components::NonTiled>(a1);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v20, a2);
  v21 = gdc::Registry::storage<md::components::CustomZIndex>(a1);
  gdc::ComponentStorageWrapper<md::components::CustomZIndex>::emplace(v21, a2, a7);
  v22 = gdc::Registry::storage<md::components::OcclusionType>(a1);

  gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v22, a2, a8);
}

void ___ZL27GEOGetVectorKitPuckLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "PuckLogic");
  v1 = GEOGetVectorKitPuckLogicLog(void)::log;
  GEOGetVectorKitPuckLogicLog(void)::log = v0;
}

void *md::Logic<md::PuckLogic,md::PuckContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8[10] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9AEE7E062376E454 && (v5 = *(a3 + 32)) != 0)
  {
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>(v8, *(a2 + 8));
    return (*(*a1 + 160))(a1, a2, v8, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::PuckContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::PuckContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EE408;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x1000C40EA5CE5F4);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::PuckContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EE408;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40EA5CE5F4);
  }

  return a1;
}

void md::PuckLogic::didBecomeInactive(md::PuckLogic *this)
{
  if (*(this + 328) == 1)
  {
    v2 = *(this + 34);
    v4[0] = 0;
    v5 = 1;
    md::RegistryManager::removeRegistry(v2, v4);
    if (v5 != -1)
    {
      (off_1F29EE280[v5])(&v6, v4);
    }

    *(this + 36) = 0;
  }

  *(this + 328) = 0;
  [*(this + 55) stop];
  v3 = *(this + 55);
  *(this + 55) = 0;
}

void sub_1B2D0E29C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21)
{
  if (a21 != -1)
  {
    (off_1F29EE280[a21])(v21 - 17, &a9, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void md::PuckLogic::~PuckLogic(md::PuckLogic *this)
{
  md::PuckLogic::~PuckLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EE1B8;
  v2 = *(this + 52);
  *(this + 51) = 0;
  *(this + 52) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 50);
  *(this + 49) = 0;
  *(this + 50) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 54);
  *(this + 53) = 0;
  *(this + 54) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  [*(this + 55) stop];
  v5 = *(this + 55);
  *(this + 55) = 0;

  v6 = *(this + 54);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 52);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 50);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 40);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 38);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 35);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B2D0E404(_Unwind_Exception *a1)
{
  v3 = *(v1 + 432);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 416);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 400);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 320);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(v1 + 304);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(v1 + 280);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ggl::RenderState *,std::shared_ptr<ggl::RenderState>::__shared_ptr_default_delete<ggl::RenderState,ggl::RenderState>,std::allocator<ggl::RenderState>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::RenderState *,std::shared_ptr<ggl::RenderState>::__shared_ptr_default_delete<ggl::RenderState,ggl::RenderState>,std::allocator<ggl::RenderState>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::PuckLogic,md::PuckContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::NavigationContext,md::StyleLogicContext,md::SharedResourcesContext,md::RegistryContext,md::IdentifiedResourceContext,md::SceneContext,md::NonTiledAssetContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::SelectedRoadTileResourceFetcher::~SelectedRoadTileResourceFetcher(md::SelectedRoadTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void md::LabelSettings_Navigation::setRouteLine(md::LabelSettings_Navigation *this, VKRouteLine *a2)
{
  v3[3] = *MEMORY[0x1E69E9840];
  geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v3, a2);
  geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v2, v3);
  v2[6] = 0;
  operator new();
}

void sub_1B2D0E73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, id a18)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a13);

  a17 = &unk_1F2A45FC0;
  _Unwind_Resume(a1);
}

void md::ScreenLabelFeature::styleAttributes(void *a1@<X0>, const FeatureStyleAttributes **a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = 0;
  v7 = 0;
  (*(*a1 + 560))(a1, &v5);
  if (v5 != v6)
  {
    operator new();
  }

  v4 = a1[34];
  *a2 = a1[33];
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
}

void sub_1B2D0E988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::ScreenLabelFeature::populateStyleQueries(uint64_t a1, std::__shared_weak_count *a2, uint64_t *a3)
{
  (*(*a1 + 600))(&v5);
  md::LabelStyleCache::styleQueryForFeatureAttributes(&v7, a3, &v5, 0);
  std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void sub_1B2D0EA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t md::ScreenLabelFeature::debugString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, "  ScreenFeature type=", 21);
  v4 = gss::to_string(**(a1 + 208));
  v5 = strlen(v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, v4, v5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, "\n", 1);
  if ((v17 & 0x10) != 0)
  {
    v7 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v7 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v6 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v12[1].__locale_;
    v7 = v12[3].__locale_;
  }

  v6 = v7 - locale;
  if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  a2[23] = v6;
  if (v6)
  {
    memmove(a2, locale, v6);
  }

LABEL_14:
  a2[v6] = 0;
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v18);
}

void sub_1B2D0ECF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 + *(*MEMORY[0x1E69E54E8] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

void md::ScreenLabelFeature::newRootPart(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 200);
  if (!*(a1 + 200))
  {
    v5 = [VKImage alloc];
    v6 = [*(a1 + 192) image];
    [*(a1 + 192) scale];
    v8 = v7;
    gdc::ServiceLocator::resolveWeak<mre::GraphicsResourceStore>(&v12, **(a2 + 112), *(*(a2 + 112) + 8));
    v9 = [(VKImage *)v5 initWithCGImage:v6 scale:&v12 resourceStore:v8];
    v10 = *v4;
    *v4 = v9;

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  std::allocate_shared[abi:nn200100]<md::ExternalImageLabelIcon,std::allocator<md::ExternalImageLabelIcon>,VKImage * {__strong}&,0>(&v11, v4);
}

void sub_1B2D0EF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::ExternalImageLabelIcon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2B0E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ScreenLabelFeature::~ScreenLabelFeature(md::ScreenLabelFeature *this)
{
  *this = &unk_1F29EE670;
  v2 = *(this + 34);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelFeature::~LabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EE670;
  v2 = *(this + 34);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LabelFeature::~LabelFeature(this);
}

void md::Logic<md::PendingRegistryLogic,md::PendingRegistryContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

uint64_t md::Logic<md::PendingRegistryLogic,md::PendingRegistryContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA8300AA8F44B09FFLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7[0] = gdc::Context::get<md::PendingSceneContext>(*(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::PendingRegistryContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::PendingRegistryContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EEA78;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::PendingRegistryContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EEA78;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::PendingRegistryLogic::~PendingRegistryLogic(md::PendingRegistryLogic *this)
{
  md::PendingRegistryLogic::~PendingRegistryLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EE908;
  v2 = *(this + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void ggl::Clut::Pos2DUVPipelineSetup::~Pos2DUVPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::TransitNodeMissingFeature::decMissingFeatureRefCount(uint64_t this)
{
  if (atomic_fetch_add((this + 56), 0xFFFFFFFF) == 1)
  {
    v1 = *(*(this + 64) + 8);
    if (v1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::TransitNodeFeature>>>>::__erase_unique<unsigned long long>((v1 + 72), *(this + 8));
    }
  }
}

void md::TransitNodeMissingFeature::~TransitNodeMissingFeature(md::TransitNodeMissingFeature *this)
{
  *this = &unk_1F29EEB30;
  v2 = *(this + 8);
  if (v2)
  {
    if ((*v2)-- == 1)
    {
      operator delete(v2);
      *(this + 8) = 0;
    }
  }

  md::TransitNodeFeature::~TransitNodeFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29EEB30;
  v2 = *(this + 8);
  if (v2)
  {
    if ((*v2)-- == 1)
    {
      operator delete(v2);
      *(this + 8) = 0;
    }
  }

  md::TransitNodeFeature::~TransitNodeFeature(this);
}

void md::TransitNodeFeature::~TransitNodeFeature(md::TransitNodeFeature *this)
{
  *this = &unk_1F29EEAF8;
  v3 = (this + 32);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

{
  md::TransitNodeFeature::~TransitNodeFeature(this);

  JUMPOUT(0x1B8C62190);
}

md::TransitNodeFeature *md::TransitNodeFeature::TransitNodeFeature(md::TransitNodeFeature *this, unint64_t a2, md::LabelExternalObjectsModerator *a3)
{
  *this = &unk_1F29EEAF8;
  *(this + 1) = a2;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  md::LabelExternalObjectsModerator::externalTransitNode(&v6, a3, a2);
  if (!v6)
  {
    operator new();
  }

  v4 = *(this + 3);
  *(this + 1) = v6;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return this;
}

void sub_1B2D0FD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  geo::read_write_lock::unlock((v13 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,std::weak_ptr<md::LabelExternalTransitNode>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v12);
  std::mutex::unlock((v10 + 368));
  std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  a9 = (v9 + 32);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a9);
  v15 = *(v9 + 24);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*,false>(char *a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = a2 - 16;
  v208 = a2 - 8;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = &a2[-v8] >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v128 = *(a1 + 2);
          v129 = *(v128 + 62);
          v130 = *a1;
          v131 = *(*a1 + 62);
          v132 = *v7;
          v133 = *(*v7 + 62);
          if (v129 >= v131)
          {
            if (v133 >= v129)
            {
              return;
            }

            *(a1 + 2) = v132;
            *v7 = v128;
            v193 = *(a1 + 3);
            *(a1 + 3) = *v208;
            *v208 = v193;
            v194 = *(a1 + 2);
            v195 = *a1;
            if (*(v194 + 62) >= *(*a1 + 62))
            {
              return;
            }

            *a1 = v194;
            *(a1 + 2) = v195;
            v134 = a1 + 8;
            v208 = a1 + 24;
          }

          else
          {
            if (v133 >= v129)
            {
              v134 = a1 + 24;
              v205 = *(a1 + 3);
              v206 = *(a1 + 1);
              *a1 = v128;
              *(a1 + 1) = v205;
              *(a1 + 2) = v130;
              *(a1 + 3) = v206;
              if (*(*v7 + 62) >= v131)
              {
                return;
              }

              *(a1 + 2) = *v7;
            }

            else
            {
              v134 = a1 + 8;
              *a1 = v132;
            }

            *v7 = v130;
          }

          v207 = *v134;
          *v134 = *v208;
          *v208 = v207;
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*,0>(a1, a1 + 2, a1 + 4, a2 - 2);
          return;
        case 5:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*,0>(a1, a1 + 2, a1 + 4, a1 + 6);
          v115 = *(a1 + 6);
          if (*(*v7 + 62) < *(v115 + 62))
          {
            *(a1 + 6) = *v7;
            *v7 = v115;
            v116 = *(a1 + 7);
            *(a1 + 7) = *v208;
            *v208 = v116;
            v117 = *(a1 + 6);
            v118 = *(v117 + 62);
            v119 = *(a1 + 4);
            if (v118 < *(v119 + 62))
            {
              v120 = *(a1 + 5);
              v121 = *(a1 + 7);
              *(a1 + 4) = v117;
              *(a1 + 5) = v121;
              *(a1 + 6) = v119;
              *(a1 + 7) = v120;
              v122 = *(a1 + 2);
              if (v118 < *(v122 + 62))
              {
                v123 = *(a1 + 3);
                *(a1 + 2) = v117;
                *(a1 + 3) = v121;
                *(a1 + 4) = v122;
                *(a1 + 5) = v123;
                v124 = *a1;
                if (v118 < *(*a1 + 62))
                {
                  v125 = *(a1 + 1);
                  *a1 = v117;
                  *(a1 + 1) = v121;
                  *(a1 + 2) = v124;
                  *(a1 + 3) = v125;
                }
              }
            }
          }

          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v126 = *a1;
        if (*(*v7 + 62) < *(*a1 + 62))
        {
          *a1 = *v7;
          *v7 = v126;
          v127 = *(a1 + 1);
          *(a1 + 1) = *v208;
          *v208 = v127;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v150 = v10 >> 1;
      v151 = v10 >> 1;
      do
      {
        v152 = v151;
        if (v150 >= v151)
        {
          v153 = (2 * v151) | 1;
          v154 = &a1[16 * v153];
          if (2 * v152 + 2 >= v9)
          {
            v155 = *v154;
          }

          else
          {
            v155 = *v154;
            if (*(*v154 + 62) < *(*(v154 + 2) + 62))
            {
              v155 = *(v154 + 2);
              v154 += 16;
              v153 = 2 * v152 + 2;
            }
          }

          v156 = &a1[16 * v152];
          v157 = *v156;
          if (*(v155 + 62) >= *(*v156 + 62))
          {
            v158 = *(v156 + 1);
            *v156 = 0;
            *(v156 + 1) = 0;
            v159 = *v154;
            do
            {
              v160 = v154;
              v161 = *(v154 + 1);
              *v160 = 0;
              *(v160 + 1) = 0;
              v162 = *(v156 + 1);
              *v156 = v159;
              *(v156 + 1) = v161;
              if (v162)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v162);
              }

              if (v150 < v153)
              {
                break;
              }

              v154 = &a1[16 * ((2 * v153) | 1)];
              if (2 * v153 + 2 >= v9)
              {
                v159 = *v154;
                v153 = (2 * v153) | 1;
              }

              else
              {
                v159 = *v154;
                if (*(*v154 + 62) >= *(*(v154 + 2) + 62))
                {
                  v153 = (2 * v153) | 1;
                }

                else
                {
                  v159 = *(v154 + 2);
                  v154 += 16;
                  v153 = 2 * v153 + 2;
                }
              }

              v156 = v160;
            }

            while (*(v159 + 62) >= *(v157 + 62));
            v163 = *(v160 + 1);
            *v160 = v157;
            *(v160 + 1) = v158;
            if (v163)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v163);
            }
          }
        }

        v151 = v152 - 1;
      }

      while (v152);
      while (2)
      {
        v164 = 0;
        v165 = a2;
        v167 = *a1;
        v166 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v168 = a1;
        do
        {
          v169 = &v168[16 * v164];
          v170 = v169 + 16;
          if (2 * v164 + 2 >= v9)
          {
            v171 = *v170;
            v164 = (2 * v164) | 1;
          }

          else
          {
            v173 = *(v169 + 4);
            v172 = v169 + 32;
            v171 = v173;
            v174 = *(*(v172 - 2) + 62);
            v175 = *(v173 + 62);
            if (v174 < v175)
            {
              v170 = v172;
            }

            else
            {
              v171 = *(v172 - 2);
            }

            if (v174 >= v175)
            {
              v164 = (2 * v164) | 1;
            }

            else
            {
              v164 = 2 * v164 + 2;
            }
          }

          v176 = *(v170 + 1);
          *v170 = 0;
          *(v170 + 1) = 0;
          v177 = *(v168 + 1);
          *v168 = v171;
          *(v168 + 1) = v176;
          if (v177)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v177);
          }

          v168 = v170;
        }

        while (v164 <= ((v9 - 2) >> 1));
        a2 -= 16;
        if (v170 == v165 - 16)
        {
          v192 = *(v170 + 1);
          *v170 = v167;
          *(v170 + 1) = v166;
          if (!v192)
          {
            goto LABEL_201;
          }
        }

        else
        {
          v178 = *(v165 - 1);
          *a2 = 0;
          *(v165 - 1) = 0;
          v179 = *(v170 + 1);
          *v170 = v178;
          if (v179)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v179);
          }

          v180 = *(v165 - 1);
          *(v165 - 2) = v167;
          *(v165 - 1) = v166;
          if (v180)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v180);
          }

          v181 = (v170 + 16 - a1) >> 4;
          v182 = v181 < 2;
          v183 = v181 - 2;
          if (v182)
          {
            goto LABEL_201;
          }

          v184 = v183 >> 1;
          v185 = &a1[16 * (v183 >> 1)];
          v186 = *v170;
          if (*(*v185 + 62) >= *(*v170 + 62))
          {
            goto LABEL_201;
          }

          v187 = *(v170 + 1);
          *v170 = 0;
          *(v170 + 1) = 0;
          v188 = *v185;
          do
          {
            v189 = v185;
            v190 = *(v185 + 1);
            *v189 = 0;
            *(v189 + 1) = 0;
            v191 = *(v170 + 1);
            *v170 = v188;
            *(v170 + 1) = v190;
            if (v191)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v191);
            }

            if (!v184)
            {
              break;
            }

            v184 = (v184 - 1) >> 1;
            v185 = &a1[16 * v184];
            v188 = *v185;
            v170 = v189;
          }

          while (*(*v185 + 62) < *(v186 + 62));
          v192 = *(v189 + 1);
          *v189 = v186;
          *(v189 + 1) = v187;
          if (!v192)
          {
LABEL_201:
            v182 = v9-- <= 2;
            if (v182)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v192);
      goto LABEL_201;
    }

    v11 = &a1[16 * (v9 >> 1)];
    v12 = v11;
    v13 = *v7;
    v14 = *(*v7 + 62);
    if (v9 >= 0x81)
    {
      v15 = *v11;
      v16 = *(*v11 + 62);
      v17 = *a1;
      v18 = *(*a1 + 62);
      if (v16 >= v18)
      {
        if (v14 < v16)
        {
          *v11 = v13;
          *v7 = v15;
          v25 = v11 + 8;
          v26 = *(v11 + 1);
          *(v11 + 1) = *v208;
          *v208 = v26;
          v27 = *a1;
          if (*(*v11 + 62) < *(*a1 + 62))
          {
            *a1 = *v11;
            v19 = a1 + 8;
            *v11 = v27;
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v14 < v16)
        {
          v19 = a1 + 8;
          *a1 = v13;
          goto LABEL_26;
        }

        v19 = v11 + 8;
        v31 = *(v11 + 1);
        v32 = *(a1 + 1);
        *a1 = v15;
        *(a1 + 1) = v31;
        *v11 = v17;
        *(v11 + 1) = v32;
        if (*(*v7 + 62) < v18)
        {
          *v11 = *v7;
LABEL_26:
          *v7 = v17;
          v25 = a2 - 8;
LABEL_27:
          v33 = *v19;
          *v19 = *v25;
          *v25 = v33;
        }
      }

      v34 = v11 - 16;
      v35 = *(v11 - 2);
      v36 = *(v35 + 62);
      v37 = *(a1 + 2);
      v38 = *(v37 + 62);
      v39 = *(a2 - 4);
      v40 = *(v39 + 62);
      if (v36 >= v38)
      {
        if (v40 < v36)
        {
          *v34 = v39;
          *(a2 - 4) = v35;
          v42 = v11 - 8;
          v43 = *(v11 - 1);
          *(v11 - 1) = *(a2 - 3);
          *(a2 - 3) = v43;
          v44 = *(a1 + 2);
          if (*(*v34 + 62) < *(v44 + 62))
          {
            *(a1 + 2) = *v34;
            *v34 = v44;
            v41 = a1 + 24;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v40 < v36)
        {
          v41 = a1 + 24;
          *(a1 + 2) = v39;
          goto LABEL_39;
        }

        v41 = v11 - 8;
        v47 = *(v11 - 1);
        v48 = *(a1 + 3);
        *(a1 + 2) = v35;
        *(a1 + 3) = v47;
        *v34 = v37;
        *(v11 - 1) = v48;
        v49 = *(a2 - 4);
        if (*(v49 + 62) < v38)
        {
          *v34 = v49;
LABEL_39:
          *(a2 - 4) = v37;
          v42 = a2 - 24;
LABEL_40:
          v50 = *v41;
          *v41 = *v42;
          *v42 = v50;
        }
      }

      v53 = *(v11 + 2);
      v51 = v11 + 16;
      v52 = v53;
      v54 = *(v53 + 62);
      v55 = *(a1 + 4);
      v56 = *(v55 + 62);
      v57 = *(a2 - 6);
      v58 = *(v57 + 62);
      if (v54 >= v56)
      {
        if (v58 < v54)
        {
          *v51 = v57;
          *(a2 - 6) = v52;
          v61 = v51 + 8;
          v60 = *(v51 + 1);
          *(v51 + 1) = *(a2 - 5);
          *(a2 - 5) = v60;
          v52 = *v51;
          v62 = *(a1 + 4);
          if (*(*v51 + 62) < *(v62 + 62))
          {
            *(a1 + 4) = v52;
            *v51 = v62;
            v59 = a1 + 40;
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v58 < v54)
        {
          v59 = a1 + 40;
          *(a1 + 4) = v57;
          goto LABEL_49;
        }

        v59 = v51 + 8;
        v63 = *(v51 + 1);
        v64 = *(a1 + 5);
        *(a1 + 4) = v52;
        *(a1 + 5) = v63;
        *v51 = v55;
        *(v51 + 1) = v64;
        v65 = *(a2 - 6);
        if (*(v65 + 62) >= v56)
        {
          v52 = v55;
        }

        else
        {
          *v51 = v65;
LABEL_49:
          *(a2 - 6) = v55;
          v61 = a2 - 40;
LABEL_50:
          v66 = *v59;
          *v59 = *v61;
          *v61 = v66;
          v52 = *v51;
        }
      }

      v67 = *v12;
      v68 = *(*v12 + 62);
      v69 = *v34;
      v70 = *(*v34 + 62);
      v71 = *(v52 + 62);
      if (v68 >= v70)
      {
        if (v71 < v68)
        {
          v74 = (v12 + 8);
          v75 = *(v12 + 1);
          *v12 = v52;
          *(v12 + 1) = *(v51 + 1);
          *v51 = v67;
          *(v51 + 1) = v75;
          if (v71 < v70)
          {
            *v34 = v52;
            v72 = (v34 + 8);
            *v12 = v69;
            goto LABEL_60;
          }

          v67 = v52;
        }
      }

      else
      {
        if (v71 < v68)
        {
          *v34 = v52;
          v72 = (v34 + 8);
          *v51 = v69;
          v73 = (v51 + 8);
          goto LABEL_59;
        }

        v76 = *(v12 + 1);
        *v12 = v69;
        v77 = *(v34 + 1);
        *v34 = v67;
        *(v34 + 1) = v76;
        *(v12 + 1) = v77;
        if (v71 >= v70)
        {
          v67 = v69;
        }

        else
        {
          *v12 = v52;
          *v51 = v69;
          v73 = (v51 + 8);
          v72 = (v12 + 8);
LABEL_59:
          v74 = v73;
LABEL_60:
          v78 = *v72;
          *v72 = *v74;
          *v74 = v78;
          v67 = *v12;
        }
      }

      v79 = *a1;
      *a1 = v67;
      v24 = a1 + 8;
      *v12 = v79;
      v30 = v12 + 8;
      goto LABEL_62;
    }

    v20 = *a1;
    v21 = *(*a1 + 62);
    v22 = *v11;
    v23 = *(*v11 + 62);
    if (v21 >= v23)
    {
      if (v14 >= v21)
      {
        goto LABEL_63;
      }

      *a1 = v13;
      *v7 = v20;
      v28 = *(a1 + 1);
      *(a1 + 1) = *v208;
      *v208 = v28;
      v20 = *a1;
      v29 = *v12;
      if (*(*a1 + 62) >= *(*v12 + 62))
      {
        goto LABEL_63;
      }

      *v12 = v20;
      *a1 = v29;
      v24 = v12 + 8;
      v30 = a1 + 8;
      goto LABEL_62;
    }

    if (v14 < v21)
    {
      v24 = v11 + 8;
      *v12 = v13;
      goto LABEL_36;
    }

    v24 = a1 + 8;
    v45 = *(a1 + 1);
    v46 = *(v12 + 1);
    *v12 = v20;
    *(v12 + 1) = v45;
    *a1 = v22;
    *(a1 + 1) = v46;
    if (*(*v7 + 62) < v23)
    {
      *a1 = *v7;
LABEL_36:
      *v7 = v22;
      v30 = a2 - 8;
LABEL_62:
      v80 = *v24;
      *v24 = *v30;
      *v30 = v80;
      v20 = *a1;
      goto LABEL_63;
    }

    v20 = v22;
LABEL_63:
    --a3;
    if ((a4 & 1) != 0 || *(*(a1 - 2) + 62) < *(v20 + 62))
    {
      v81 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v82 = *(v20 + 62);
      v83 = a1;
      do
      {
        v84 = v83;
        v86 = *(v83 + 2);
        v83 += 16;
        v85 = v86;
      }

      while (*(v86 + 62) < v82);
      v87 = a2;
      if (v84 == a1)
      {
        v87 = a2;
        do
        {
          if (v83 >= v87)
          {
            break;
          }

          v89 = *(v87 - 2);
          v87 -= 16;
        }

        while (*(v89 + 62) >= v82);
      }

      else
      {
        do
        {
          v88 = *(v87 - 2);
          v87 -= 16;
        }

        while (*(v88 + 62) >= v82);
      }

      if (v83 >= v87)
      {
        v8 = v83;
      }

      else
      {
        v90 = *v87;
        v8 = v83;
        v91 = v87;
        do
        {
          *v8 = v90;
          *v91 = v85;
          v92 = *(v8 + 8);
          *(v8 + 8) = *(v91 + 1);
          *(v91 + 1) = v92;
          do
          {
            v93 = *(v8 + 16);
            v8 += 16;
            v85 = v93;
          }

          while (*(v93 + 62) < v82);
          do
          {
            v94 = *(v91 - 2);
            v91 -= 16;
            v90 = v94;
          }

          while (*(v94 + 62) >= v82);
        }

        while (v8 < v91);
      }

      v95 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v96 = *v95;
        *v95 = 0;
        *(v8 - 8) = 0;
        v97 = *(a1 + 1);
        *a1 = v96;
        if (v97)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v97);
        }
      }

      v98 = *(v8 - 8);
      *(v8 - 16) = v20;
      *(v8 - 8) = v81;
      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v98);
      }

      if (v83 < v87)
      {
        goto LABEL_89;
      }

      v99 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*>(a1, (v8 - 16));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*>(v8, a2))
      {
        a2 = (v8 - 16);
        if (v99)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v99)
      {
LABEL_89:
        std::__introsort<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*,false>(a1, (v8 - 16), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v100 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v101 = *(v20 + 62);
      if (v101 >= *(*v7 + 62))
      {
        v103 = a1 + 16;
        do
        {
          v8 = v103;
          if (v103 >= a2)
          {
            break;
          }

          v103 += 16;
        }

        while (v101 >= *(*v8 + 62));
      }

      else
      {
        v8 = a1;
        do
        {
          v102 = *(v8 + 16);
          v8 += 16;
        }

        while (v101 >= *(v102 + 62));
      }

      v104 = a2;
      if (v8 < a2)
      {
        v104 = a2;
        do
        {
          v105 = *(v104 - 2);
          v104 -= 16;
        }

        while (v101 < *(v105 + 62));
      }

      if (v8 < v104)
      {
        v106 = *v8;
        v107 = *v104;
        do
        {
          *v8 = v107;
          *v104 = v106;
          v108 = *(v8 + 8);
          *(v8 + 8) = *(v104 + 1);
          *(v104 + 1) = v108;
          do
          {
            v109 = *(v8 + 16);
            v8 += 16;
            v106 = v109;
          }

          while (v101 >= *(v109 + 62));
          do
          {
            v110 = *(v104 - 2);
            v104 -= 16;
            v107 = v110;
          }

          while (v101 < *(v110 + 62));
        }

        while (v8 < v104);
      }

      v111 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v112 = *v111;
        *v111 = 0;
        *(v8 - 8) = 0;
        v113 = *(a1 + 1);
        *a1 = v112;
        if (v113)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v113);
        }
      }

      a4 = 0;
      v114 = *(v8 - 8);
      *(v8 - 16) = v20;
      *(v8 - 8) = v100;
      if (v114)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v114);
        a4 = 0;
      }
    }
  }

  v135 = a1 + 16;
  v137 = a1 == a2 || v135 == a2;
  if (a4)
  {
    if (!v137)
    {
      v138 = 0;
      v139 = a1;
      do
      {
        v140 = v139;
        v139 = v135;
        v141 = *(v140 + 2);
        v142 = *v140;
        if (*(v141 + 62) < *(*v140 + 62))
        {
          v143 = *(v140 + 3);
          v144 = v138;
          *v139 = 0;
          *(v139 + 1) = 0;
          while (1)
          {
            v145 = &a1[v144];
            v146 = *&a1[v144 + 8];
            *v145 = 0;
            *(v145 + 1) = 0;
            v147 = *&a1[v144 + 24];
            *(v145 + 2) = v142;
            *(v145 + 3) = v146;
            if (v147)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v147);
            }

            if (!v144)
            {
              break;
            }

            v142 = *&a1[v144 - 16];
            v144 -= 16;
            if (*(v141 + 62) >= *(v142 + 62))
            {
              v148 = &a1[v144 + 16];
              goto LABEL_147;
            }
          }

          v148 = a1;
LABEL_147:
          v149 = *(v148 + 1);
          *v148 = v141;
          *(v148 + 1) = v143;
          if (v149)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v149);
          }
        }

        v135 = v139 + 16;
        v138 += 16;
      }

      while (v139 + 16 != a2);
    }
  }

  else if (!v137)
  {
    v196 = a1 + 24;
    do
    {
      v197 = a1;
      a1 = v135;
      v198 = *(v197 + 2);
      v199 = *v197;
      if (*(v198 + 62) < *(*v197 + 62))
      {
        v200 = *(v197 + 3);
        v201 = v196;
        *a1 = 0;
        *(a1 + 1) = 0;
        do
        {
          v202 = *(v201 - 2);
          *(v201 - 3) = 0;
          *(v201 - 2) = 0;
          v203 = *v201;
          *(v201 - 1) = v199;
          *v201 = v202;
          if (v203)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v203);
          }

          v199 = *(v201 - 5);
          v201 -= 2;
        }

        while (*(v198 + 62) < *(v199 + 62));
        v204 = *v201;
        *(v201 - 1) = v198;
        *v201 = v200;
        if (v204)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v204);
        }
      }

      v135 = a1 + 16;
      v196 += 16;
    }

    while (a1 + 16 != a2);
  }
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *(*a2 + 62);
  v6 = *result;
  v7 = *a3;
  v8 = *(*a3 + 62);
  if (v5 >= *(*result + 62))
  {
    if (v8 < v5)
    {
      *a2 = v7;
      *a3 = v4;
      v11 = a2 + 1;
      v10 = a2[1];
      a2[1] = a3[1];
      a3[1] = v10;
      v12 = *result;
      if (*(*a2 + 62) < *(*result + 62))
      {
        *result = *a2;
        v9 = result + 1;
        *a2 = v12;
LABEL_10:
        v14 = *v9;
        *v9 = *v11;
        *v11 = v14;
      }
    }
  }

  else
  {
    if (v8 < v5)
    {
      v9 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v11 = a3 + 1;
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v6;
    v9 = a2 + 1;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v6 = *a2;
    if (*(*a3 + 62) < *(*a2 + 62))
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v15 = *a3;
  if (*(*a4 + 62) < *(*a3 + 62))
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = a3[1];
    a3[1] = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (*(*a3 + 62) < *(*a2 + 62))
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = a2[1];
      a2[1] = a3[1];
      a3[1] = v18;
      v19 = *result;
      if (*(*a2 + 62) < *(*result + 62))
      {
        *result = *a2;
        *a2 = v19;
        v20 = result[1];
        result[1] = a2[1];
        a2[1] = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = a1[2];
      v21 = *(v20 + 62);
      v22 = *a1;
      v23 = *(*a1 + 62);
      v24 = *(a2 - 2);
      v25 = *(v24 + 62);
      if (v21 >= v23)
      {
        if (v25 >= v21)
        {
          return 1;
        }

        a1[2] = v24;
        *(a2 - 2) = v20;
        v36 = a1 + 3;
        v35 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v35;
        v37 = a1[2];
        v38 = *a1;
        if (*(v37 + 62) >= *(*a1 + 62))
        {
          return 1;
        }

        *a1 = v37;
        a1[2] = v38;
        v26 = a1 + 1;
      }

      else
      {
        if (v25 >= v21)
        {
          v26 = a1 + 3;
          v42 = a1[3];
          v43 = a1[1];
          *a1 = v20;
          a1[1] = v42;
          a1[2] = v22;
          a1[3] = v43;
          v44 = *(a2 - 2);
          if (*(v44 + 62) >= v23)
          {
            return 1;
          }

          a1[2] = v44;
        }

        else
        {
          v26 = a1 + 1;
          *a1 = v24;
        }

        *(a2 - 2) = v22;
        v36 = a2 - 1;
      }

      v45 = *v26;
      *v26 = *v36;
      *v36 = v45;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v8 = *(a2 - 2);
        v9 = a1[6];
        if (*(v8 + 62) < *(v9 + 62))
        {
          a1[6] = v8;
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = a1[6];
          v12 = *(v11 + 62);
          v13 = a1[4];
          if (v12 < *(v13 + 62))
          {
            v14 = a1[5];
            v15 = a1[7];
            a1[4] = v11;
            a1[5] = v15;
            a1[6] = v13;
            a1[7] = v14;
            v16 = a1[2];
            if (v12 < *(v16 + 62))
            {
              v17 = a1[3];
              a1[2] = v11;
              a1[3] = v15;
              a1[4] = v16;
              a1[5] = v17;
              v18 = *a1;
              if (v12 < *(*a1 + 62))
              {
                v19 = a1[1];
                *a1 = v11;
                a1[1] = v15;
                a1[2] = v18;
                a1[3] = v19;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitNodeFeature::addNode(std::shared_ptr<md::TransitNode> const&)::$_0 &,std::shared_ptr<md::TransitNode>*,0>(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (*(v5 + 62) < *(*a1 + 62))
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v27 = a1 + 4;
  v28 = a1[4];
  v29 = a1[2];
  v30 = *(v29 + 62);
  v31 = *a1;
  v32 = *(*a1 + 62);
  v33 = *(v28 + 62);
  if (v30 < v32)
  {
    if (v33 >= v30)
    {
      v34 = a1 + 3;
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v29;
      a1[1] = v46;
      a1[2] = v31;
      a1[3] = v47;
      if (v33 >= v32)
      {
        goto LABEL_35;
      }

      a1[2] = v28;
    }

    else
    {
      v34 = a1 + 1;
      *a1 = v28;
    }

    a1[4] = v31;
    v40 = a1 + 5;
    goto LABEL_34;
  }

  if (v33 < v30)
  {
    v40 = a1 + 3;
    v39 = a1[3];
    v41 = a1[5];
    a1[2] = v28;
    a1[3] = v41;
    a1[4] = v29;
    a1[5] = v39;
    if (v33 < v32)
    {
      *a1 = v28;
      a1[2] = v31;
      v34 = a1 + 1;
LABEL_34:
      v48 = *v34;
      *v34 = *v40;
      *v40 = v48;
    }
  }

LABEL_35:
  v49 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = *v49;
    v53 = *v27;
    if (*(*v49 + 62) < *(v53 + 62))
    {
      v54 = v49[1];
      v55 = v50;
      *v49 = 0;
      v49[1] = 0;
      while (1)
      {
        v56 = (a1 + v55);
        v57 = *(a1 + v55 + 40);
        v56[4] = 0;
        v56[5] = 0;
        v58 = *(a1 + v55 + 56);
        v56[6] = v53;
        v56[7] = v57;
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v58);
        }

        if (v55 == -32)
        {
          break;
        }

        v53 = *(a1 + v55 + 16);
        v55 -= 16;
        if (*(v52 + 62) >= *(v53 + 62))
        {
          v59 = (a1 + v55 + 48);
          goto LABEL_45;
        }
      }

      v59 = a1;
LABEL_45:
      v60 = v59[1];
      *v59 = v52;
      v59[1] = v54;
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v60);
      }

      if (++v51 == 8)
      {
        return v49 + 2 == a2;
      }
    }

    v27 = v49;
    v50 += 16;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

void md::LabelExternalMeshModerator::requestExternalMesh(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 64));
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  if (v4 >= v5)
  {
    v8 = *(a1 + 40);
    v9 = (v4 - v8) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = 16 * v9;
    v14 = *a2;
    *(16 * v9) = *a2;
    if (*(&v14 + 1))
    {
      atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v13 + 16);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48) - v15;
    v17 = v13 - v16;
    memcpy((v13 - v16), v15, v16);
    *(a1 + 40) = v17;
    *(a1 + 48) = v7;
    *(a1 + 56) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 48) = v7;

  std::mutex::unlock((a1 + 64));
}

void md::Logic<md::GeometryLogic,md::GeometryContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void std::__shared_ptr_emplace<ggl::CommonMesh::Pos2UVMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A03FB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::CommonMesh::Pos2Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A53EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos2>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5BD08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonBase::MeshMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29EEC20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

unint64_t md::SplineKeyHash::operator()(int *a1)
{
  v1 = (*a1 + ((*(a1 + 8) - 0x61C8864680B583EBLL) << 6) + ((*(a1 + 8) - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*(a1 + 8) - 0x61C8864680B583EBLL);
  v2 = (a1[1] + (v1 << 6) + (v1 >> 2) - 0x61C8864680B583EBLL) ^ v1;
  v3 = (a1[3] + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
  v4 = (a1[4] + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
  return (*(a1 + 10) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
}

void *std::__hash_table<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,md::SplineKeyHash,std::equal_to<md::SplineKey>,true>,std::__unordered_map_equal<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::equal_to<md::SplineKey>,md::SplineKeyHash,true>,std::allocator<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>>>::find<md::SplineKey>(void *a1, int *a2)
{
  v4 = md::SplineKeyHash::operator()(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (md::SplineKey::operator==((v11 + 2), a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::clear(uint64_t *a1)
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
        v6 = v2[6];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t md::Logic<md::GeometryLogic,md::GeometryContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x3070CB6B3C7F21D3 && *(a3 + 32))
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

uint64_t gdc::ObjectHolder<md::GeometryContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::GeometryContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::GeometryContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::GeometryContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29EEC58;
  v2 = a1[4];
  if (v2)
  {
    md::GeometryContext::~GeometryContext(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

double md::GeometryLogic::createDebugNode@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void md::GeometryLogic::~GeometryLogic(md::GeometryLogic *this)
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

void md::GeometryContext::getGlobeTransformConstantData(md::GeometryContext *this, const geo::QuadTile *a2, double a3, double a4, uint64_t a5, __int16 a6)
{
  v8 = *(a5 + 4);
  v9 = *(a5 + 1);
  v10 = vcvtmd_s64_f64(a3 * 100.0);
  v11 = vcvtpd_s64_f64(a4 * 100.0);
  v12 = a6;
  v6 = std::__hash_table<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,md::SplineKeyHash,std::equal_to<md::SplineKey>,true>,std::__unordered_map_equal<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::equal_to<md::SplineKey>,md::SplineKeyHash,true>,std::allocator<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>>>::find<md::SplineKey>(a2 + 23, &v8);
  if (v6)
  {
    std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry const&>(v6[5] + 16);
  }

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile9TransformEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v7);
}

void sub_1B2D1232C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  operator delete(v36);
  if ((v38 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  _Unwind_Resume(a1);
}

void std::list<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::erase(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[6];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  operator delete(__p);
}

void gm::_polyFit<float>(float *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = malloc_type_calloc(9uLL, 4uLL, 0x100004052888210uLL);
  v8 = malloc_type_malloc(0x18uLL, 0x100004052888210uLL);
  v9 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
  v10 = malloc_type_calloc(3uLL, 4uLL, 0x100004052888210uLL);
  v11 = malloc_type_calloc(3uLL, 4uLL, 0x100004052888210uLL);
  v12 = malloc_type_malloc(0x60uLL, 0x100004052888210uLL);
  v13 = v12;
  v14 = 0;
  f32 = v12[2].f32;
  do
  {
    v12->i32[v14] = 1065353216;
    v16 = 2;
    v17 = f32;
    do
    {
      *v17 = (a1[v14] - v6) * *(v17 - 8);
      v17 += 8;
      --v16;
    }

    while (v16);
    ++v14;
    ++f32;
  }

  while (v14 != 8);
  v18 = 0;
  v19 = v12;
  do
  {
    v20 = 0;
    v21 = v11[v18];
    do
    {
      v21 = v21 + (v19->f32[v20] * v19->f32[v20]);
      v11[v18] = v21;
      ++v20;
    }

    while (v20 != 8);
    v11[v18++] = sqrtf(v21);
    v19 += 2;
  }

  while (v18 != 3);
  v22 = 0;
  v23 = v7;
  do
  {
    v24 = 0;
    v25 = v12 + 1;
    do
    {
      v26 = vmlaq_f32(vmulq_f32(v12[2 * v22], v25[-1]), *v25, v12[2 * v22 + 1]);
      v23[v24] = vaddv_f32(*&vpaddq_f32(v26, v26)) / (v11[v22] * v11[v24]);
      v25 += 2;
      ++v24;
    }

    while (v24 != 3);
    ++v22;
    v23 += 3;
  }

  while (v22 != 3);
  v27 = 0;
  v28 = v12;
  do
  {
    v29 = 0;
    v30 = v10[v27];
    do
    {
      v30 = v30 + (*(a2 + v29 * 4) * v28->f32[v29]);
      v10[v27] = v30;
      ++v29;
    }

    while (v29 != 8);
    v10[v27] = v30 / v11[v27];
    ++v27;
    v28 += 2;
  }

  while (v27 != 3);
  v31 = 0;
  v32 = (v8 + 1);
  v33 = 1;
  v34 = 4;
  v35 = 8;
  v36 = v8;
  v37 = v8;
  v38 = v7;
  do
  {
    v39 = *v38;
    *v37 = *v38;
    if (v31)
    {
      for (i = 0; i != v31; ++i)
      {
        v39 = v39 - (*&v36[i] * *&v36[i]);
        *v37 = v39;
      }

      v41 = *v38;
    }

    else
    {
      v41 = v39;
    }

    *v37 = sqrtf(fmaxf(v39, v41 * 0.000000001));
    v42 = &v37[v31];
    if (v31 <= 1)
    {
      v43 = v42 + 1;
      v44 = v32;
      v45 = v35;
      v46 = v33;
      do
      {
        v47 = v38[1];
        ++v38;
        v48 = v47;
        *v43 = v47;
        if (v31)
        {
          for (j = 0; j != v31; ++j)
          {
            v48 = v48 - (*&v36[j] * *&v44[4 * j]);
            *v43 = v48;
          }
        }

        *v43 = v48 / *v37;
        v43 += ++v46;
        v44 += v45;
        v45 += 4;
      }

      while (v46 != 3);
    }

    ++v31;
    v37 = v42 + 2;
    v38 += v31 + 1;
    ++v33;
    v36 = (v36 + v34);
    v34 += 4;
    v32 += v35;
    v35 += 4;
  }

  while (v31 != 3);
  v50 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
  v51 = 0;
  v52 = v8;
  do
  {
    v53 = v10[v51];
    v50[v51] = v53;
    if (v51)
    {
      v54 = v50;
      v55 = v51;
      v56 = v52;
      do
      {
        v57 = *v56++;
        v58 = v57;
        v59 = *v54++;
        v53 = v53 - (v59 * v58);
        v50[v51] = v53;
        --v55;
      }

      while (v55);
    }

    else
    {
      v56 = v52;
    }

    v52 = v56 + 1;
    v50[v51++] = v53 / *v56;
  }

  while (v51 != 3);
  v60 = 0;
  v61 = 3;
  do
  {
    v62 = v61 - 1;
    v63 = v50[v61 - 1];
    v9[v61 - 1] = v63;
    if (v61 <= 2)
    {
      v64 = &v56[v61];
      v65 = v60;
      do
      {
        v63 = v63 - (v9[v65 + 3] * *v64);
        v9[v62] = v63;
        v64 += v65 + 4;
      }

      while (!__CFADD__(v65++, 1));
    }

    v9[v62] = v63 / *v56;
    v56 -= v61;
    --v60;
  }

  while (v61-- > 1);
  free(v50);
  v68 = 0;
  *(a3 + 12) = v6;
  do
  {
    *(a3 + v68 * 4) = v9[v68] / v11[v68];
    ++v68;
  }

  while (v68 != 3);
  free(v7);
  free(v8);
  free(v9);
  free(v10);
  free(v11);

  free(v13);
}

void md::GeometryContext::transformConstantData(uint64_t *a1, const geo::QuadTile *a2, unsigned __int8 *a3, int a4, __int16 a5, double a6, double a7)
{
  if (gdc::ToCoordinateSystem(a4) && *a3 == 255)
  {
    md::GeometryContext::getGlobeTransformConstantData(&v19, a2, a6, a7, a3, a5);
  }

  v14 = *(a3 + 4);
  v15 = a3[1];
  v16 = 0;
  v17 = 0;
  v18 = a5;
  v13 = std::__hash_table<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,md::SplineKeyHash,std::equal_to<md::SplineKey>,true>,std::__unordered_map_equal<md::SplineKey,std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>,std::equal_to<md::SplineKey>,md::SplineKeyHash,true>,std::allocator<std::__hash_value_type<md::SplineKey,std::__list_iterator<geo::MarkedLRUCache<md::SplineKey,std::pair<std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::GeometryContext::ZTransform>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,void *>>>>::find<md::SplineKey>(a2 + 33, &v14);
  if (v13)
  {
    std::__list_imp<geo::MarkedLRUCache<md::SplineKey,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::SplineKey,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<md::SplineKey,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>>,md::SplineKeyHash,std::equal_to<md::SplineKey>>::CacheEntry const&>(v13[5] + 16);
  }

  _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile9TransformEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(a1);
}

void sub_1B2D12E40(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

double md::GeometryLogic::tileMatrix(md::GeometryLogic *this, int a2, const geo::QuadTile *a3, double a4, double a5)
{
  if (a2)
  {
    v6 = fmax(a4, 0.0);
    v7 = 1 << *(a3 + 1);
    v8 = 1.0 / v7;
    v9 = *(a3 + 2);
    v10 = v7 + ~*(a3 + 1);
    v17[0] = v8 * v9;
    v17[1] = v8 * v10;
    v17[2] = v8 + v9 * v8;
    v17[3] = v8 + v10 * v8;
    gdc::GlobeTileUtils::boundsFromMercatorRect(v16, v17, 0.0, v6);
    geo::OrientedBox<double,3u,double,double>::toMatrix(this, v16);
  }

  else
  {
    v12 = 1 << *(a3 + 1);
    v13 = *(a3 + 2);
    v14 = ~*(a3 + 1);
    v15 = 1.0 / v12;
    *(this + 40) = 0u;
    *(this + 72) = 0u;
    *(this + 8) = 0u;
    *(this + 24) = 0u;
    *(this + 56) = 0u;
    *(this + 11) = 0;
    *this = v15;
    *(this + 5) = v15;
    *(this + 10) = v15;
    *(this + 12) = v15 * v13;
    *(this + 13) = v15 * (v12 + v14);
    result = 0.0;
    *(this + 7) = xmmword_1B33B0740;
  }

  return result;
}

float md::GeometryLogic::adjustedMeshBounds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ggl::ConstantDataTyped<ggl::Tile::Transform>::read(v10, a3);
  v5 = (v11[86] * v11[85]) * v11[87];
  v6 = v11[10];
  v7 = v6 + (*(a2 + 8) * v5);
  v8 = v6 + (*(a2 + 20) * v5);
  *a1 = *a2;
  *(a1 + 8) = v7;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = v8;
  ggl::BufferMemory::~BufferMemory(v10);
  return result;
}

void md::GeometryLogic::calculateGeocentricBounds(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ggl::ConstantDataTyped<ggl::Tile::Transform>::read(v65, a2);
  v7 = 0;
  v8 = v66;
  v9 = &v66[2].i32[2];
  do
  {
    v10 = &v64[v7];
    v11 = *v9;
    *v10 = *(v9 - 1);
    *(v10 + 2) = v11;
    v7 += 12;
    v9 += 4;
  }

  while (v7 != 192);
  v12 = v8[18].i32[2];
  v62 = v8[18].i64[0];
  v63 = v12;
  *a4 = 0;
  *(a4 + 8) = 0;
  *a3 = xmmword_1B33AFF10;
  *(a3 + 16) = 0x80000000800000;
  __asm { FMOV            V4.4S, #1.0 }

  v61 = _Q4.i32[0];
  _Q4.f32[1] = a1[1];
  _Q4.f32[2] = _Q4.f32[1] * _Q4.f32[1];
  _Q4.f32[3] = (_Q4.f32[1] * _Q4.f32[1]) * _Q4.f32[1];
  v17 = vmulq_f32(_Q4, *v8);
  v18 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v64, *a1, vaddv_f32(*&vpaddq_f32(v17, v17)));
  v19 = 0;
  v67 = __PAIR64__(v20, LODWORD(v18));
  v68 = v21;
  *a3 = __PAIR64__(v20, LODWORD(v18));
  *(a3 + 8) = v68;
  do
  {
    *(&v69 + v19) = *(&v67 + v19) - *(&v62 + v19);
    v19 += 4;
  }

  while (v19 != 12);
  *a4 = gm::Matrix<float,3,1>::normalized<int,void>(&v69);
  *(a4 + 4) = v22;
  *(a4 + 8) = v23;
  v24 = a1[4];
  v25.i64[0] = __PAIR64__(LODWORD(v24), v61);
  v25.f32[2] = v24 * v24;
  v25.f32[3] = (v24 * v24) * v24;
  v26 = vmulq_f32(v25, *v8);
  *(a3 + 12) = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v64, a1[3], vaddv_f32(*&vpaddq_f32(v26, v26)));
  *(a3 + 16) = v27;
  *(a3 + 20) = v28;
  v29 = a1[1];
  v30 = a1[3];
  v31 = a1[4];
  if ((v30 - *a1) >= 0.5 || (v31 - v29) >= 0.5)
  {
    v33 = gm::lerp<gm::Matrix<float,3,1>,double>(*a1, v29, a1[2], v30, v31, a1[5]);
    v35.i64[0] = __PAIR64__(LODWORD(v34), v61);
    v35.f32[2] = v34 * v34;
    v35.f32[3] = (v34 * v34) * v34;
    v36 = vmulq_f32(v35, *v8);
    v37 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v64, v33, vaddv_f32(*&vpaddq_f32(v36, v36)));
    v38 = 0;
    v69 = v37;
    v70 = v39;
    v71 = v40;
    do
    {
      v41 = (a3 + v38);
      v42 = *(&v69 + v38);
      *v41 = fminf(v42, *(a3 + v38));
      v41[3] = fmaxf(*(a3 + v38 + 12), v42);
      v38 += 4;
    }

    while (v38 != 12);
    v43 = a1[4];
    v44.i64[0] = __PAIR64__(LODWORD(v43), v61);
    v44.f32[2] = v43 * v43;
    v44.f32[3] = (v43 * v43) * v43;
    v45 = vmulq_f32(v44, *v8);
    v46 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v64, *a1, vaddv_f32(*&vpaddq_f32(v45, v45)));
    v47 = 0;
    v69 = v46;
    v70 = v48;
    v71 = v49;
    do
    {
      v50 = (a3 + v47);
      v51 = *(&v69 + v47);
      *v50 = fminf(v51, *(a3 + v47));
      v50[3] = fmaxf(*(a3 + v47 + 12), v51);
      v47 += 4;
    }

    while (v47 != 12);
    v52 = a1[1];
    v53.i64[0] = __PAIR64__(LODWORD(v52), v61);
    v53.f32[2] = v52 * v52;
    v53.f32[3] = (v52 * v52) * v52;
    v54 = vmulq_f32(v53, *v8);
    v55 = gm::cubicBezierPatch<gm::Matrix<float,3,1>,float>(v64, a1[3], vaddv_f32(*&vpaddq_f32(v54, v54)));
    v56 = 0;
    v69 = v55;
    v70 = v57;
    v71 = v58;
    do
    {
      v59 = (a3 + v56);
      v60 = *(&v69 + v56);
      *v59 = fminf(v60, *(a3 + v56));
      v59[3] = fmaxf(*(a3 + v56 + 12), v60);
      v56 += 4;
    }

    while (v56 != 12);
  }

  ggl::BufferMemory::~BufferMemory(v65);
}

float gm::lerp<gm::Matrix<float,3,1>,double>(float a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = 0;
  *v15 = a1;
  *&v15[1] = a2;
  *&v15[2] = a3;
  *v14 = a4;
  *&v14[1] = a5;
  *&v14[2] = a6;
  do
  {
    *(&v16 + v6 * 4) = *&v14[v6] - *&v15[v6];
    ++v6;
  }

  while (v6 != 3);
  v7 = 0;
  v10 = v16;
  v11 = v17;
  do
  {
    *(&v16 + v7) = *(&v10 + v7) * 0.5;
    v7 += 4;
  }

  while (v7 != 12);
  v8 = 0;
  v12 = v16;
  v13 = v17;
  do
  {
    *(&v16 + v8 * 4) = *(&v12 + v8 * 4) + *&v15[v8];
    ++v8;
  }

  while (v8 != 3);
  return *&v16;
}

void md::GeometryLogic::scaleGeocentricBoundsWithNormal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ggl::ConstantDataTyped<ggl::Tile::Transform>::read(v25, a5);
  v9 = 0;
  v10 = (v26[86] * v26[85]) * v26[87];
  v11 = *(a2 + 8) * v10;
  v12 = *(a2 + 20);
  do
  {
    *(&v27 + v9) = v11 * *(a4 + v9);
    v9 += 4;
  }

  while (v9 != 12);
  v13 = 0;
  v23 = v27;
  v24 = v28;
  do
  {
    *(&v27 + v13) = *(&v23 + v13) + *(a3 + v13);
    v13 += 4;
  }

  while (v13 != 12);
  v14 = 0;
  v15 = v12 * v10;
  v16 = v27;
  v17 = v28;
  do
  {
    *(&v27 + v14) = v15 * *(a4 + v14);
    v14 += 4;
  }

  while (v14 != 12);
  v18 = 0;
  v21 = v27;
  v22 = v28;
  do
  {
    *(&v27 + v18) = *(&v21 + v18) + *(a3 + 12 + v18);
    v18 += 4;
  }

  while (v18 != 12);
  v19 = v28;
  v20 = v27;
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 12) = v20;
  *(a1 + 20) = v19;
  ggl::BufferMemory::~BufferMemory(v25);
}

uint64_t md::GeometryLogic::createIcoSphere(uint64_t *a1, signed int **a2, int a3)
{
  v48 = 0;
  memset(v46, 0, sizeof(v46));
  v47 = 1065353216;
  v45[0] = a1;
  v45[1] = &v48;
  v43 = 0x3FCF1BBDBF800000;
  LODWORD(v44) = 0;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0x3FCF1BBD3F800000;
  LODWORD(v44) = 0;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0xBFCF1BBDBF800000;
  LODWORD(v44) = 0;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0xBFCF1BBD3F800000;
  LODWORD(v44) = 0;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0xBF80000000000000;
  LODWORD(v44) = 1070537661;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0x3F80000000000000;
  LODWORD(v44) = 1070537661;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0xBF80000000000000;
  LODWORD(v44) = -1076945987;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0x3F80000000000000;
  LODWORD(v44) = -1076945987;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 1070537661;
  LODWORD(v44) = -1082130432;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 1070537661;
  LODWORD(v44) = 1065353216;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 3218021309;
  LODWORD(v44) = -1082130432;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 3218021309;
  LODWORD(v44) = 1065353216;
  md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v43);
  v43 = 0xB00000000;
  LODWORD(v44) = 5;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x500000000;
  LODWORD(v44) = 1;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x100000000;
  LODWORD(v44) = 7;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x700000000;
  LODWORD(v44) = 10;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0xA00000000;
  LODWORD(v44) = 11;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x500000001;
  LODWORD(v44) = 9;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0xB00000005;
  LODWORD(v44) = 4;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0xA0000000BLL;
  LODWORD(v44) = 2;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x70000000ALL;
  LODWORD(v44) = 6;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x100000007;
  LODWORD(v44) = 8;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x900000003;
  LODWORD(v44) = 4;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x400000003;
  LODWORD(v44) = 2;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x200000003;
  LODWORD(v44) = 6;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x600000003;
  LODWORD(v44) = 8;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x800000003;
  LODWORD(v44) = 9;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x900000004;
  LODWORD(v44) = 5;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x400000002;
  LODWORD(v44) = 11;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x200000006;
  LODWORD(v44) = 10;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x600000008;
  LODWORD(v44) = 7;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v43 = 0x800000009;
  LODWORD(v44) = 1;
  std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](a2, &v43);
  v4 = 0;
  v6 = *a2;
  v5 = a2[1];
  v40 = a2;
  do
  {
    v41 = v4;
    v43 = 0;
    v44 = 0uLL;
    if (v6 != v5)
    {
      do
      {
        v7 = v6[1];
        v8 = *v6;
        if (*v6 >= v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = v8;
        }

        if (v8 <= v7)
        {
          v10 = v6[1];
        }

        else
        {
          v10 = *v6;
        }

        v11 = (v9 << 32) + v10;
        v13 = *(&v46[0] + 1);
        v12 = *&v46[0];
        v14 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(*&v46[0], *(&v46[0] + 1), v11);
        if (v14)
        {
          v15 = *(v14 + 6);
        }

        else
        {
          v16 = (*a1 + 12 * v8);
          v17 = (*a1 + 12 * v7);
          v18 = (v17[1].f32[0] + v16[1].f32[0]) * 0.5;
          v51 = vmul_f32(vadd_f32(*v17, *v16), 0x3F0000003F000000);
          v52 = v18;
          v15 = md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v51);
          v49 = v11;
          v50 = v15;
          std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v46, v11, &v49);
          v7 = v6[1];
          v13 = *(&v46[0] + 1);
          v12 = *&v46[0];
        }

        v19 = v6[2];
        if (v7 >= v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = v7;
        }

        if (v7 <= v19)
        {
          v21 = v6[2];
        }

        else
        {
          v21 = v7;
        }

        v22 = (v20 << 32) + v21;
        v23 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v12, v13, v22);
        if (v23)
        {
          v24 = *(v23 + 6);
        }

        else
        {
          v25 = (*a1 + 12 * v7);
          v26 = (*a1 + 12 * v19);
          v27 = (v26[1].f32[0] + v25[1].f32[0]) * 0.5;
          v51 = vmul_f32(vadd_f32(*v26, *v25), 0x3F0000003F000000);
          v52 = v27;
          v24 = md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v51);
          v49 = v22;
          v50 = v24;
          std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v46, v22, &v49);
          v19 = v6[2];
          v13 = *(&v46[0] + 1);
          v12 = *&v46[0];
        }

        v28 = *v6;
        if (v19 >= *v6)
        {
          v29 = v28;
        }

        else
        {
          v29 = v19;
        }

        if (v19 <= v28)
        {
          v30 = *v6;
        }

        else
        {
          v30 = v19;
        }

        v31 = (v29 << 32) + v30;
        v32 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v12, v13, v31);
        if (v32)
        {
          v33 = *(v32 + 6);
        }

        else
        {
          v34 = (*a1 + 12 * v19);
          v35 = (*a1 + 12 * v28);
          v36 = (v35[1].f32[0] + v34[1].f32[0]) * 0.5;
          v51 = vmul_f32(vadd_f32(*v35, *v34), 0x3F0000003F000000);
          v52 = v36;
          v33 = md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(v45, &v51);
          v49 = v31;
          v50 = v33;
          std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(v46, v31, &v49);
          v28 = *v6;
        }

        v49 = __PAIR64__(v15, v28);
        v50 = v33;
        std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](&v43, &v49);
        LODWORD(v49) = v6[1];
        HIDWORD(v49) = v24;
        v50 = v15;
        std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](&v43, &v49);
        LODWORD(v49) = v6[2];
        HIDWORD(v49) = v33;
        v50 = v24;
        std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](&v43, &v49);
        v49 = __PAIR64__(v24, v15);
        v50 = v33;
        std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](&v43, &v49);
        v6 += 3;
      }

      while (v6 != v5);
      v6 = *v40;
    }

    if (v6)
    {
      v40[1] = v6;
      operator delete(v6);
      *v40 = 0;
      v40[1] = 0;
      v40[2] = 0;
    }

    v6 = v43;
    *v40 = v43;
    v37 = v44;
    *(v40 + 1) = v44;
    v5 = v37;
    v4 = v41 + 1;
  }

  while (v41 + 1 != a3);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v46);
}

void sub_1B2D13C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t md::GeometryLogic::createIcoSphere(std::vector<gm::Matrix<float,3,1>> &,std::vector<gm::Matrix<int,3,1>> &,unsigned int)::$_0::operator()(uint64_t **a1, uint64_t a2)
{
  v3 = gm::Matrix<float,3,1>::normalized<int,void>(a2);
  v6 = *a1;
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  if (v8 >= v7)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v6) >> 2);
    v11 = v10 + 1;
    if (v10 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v6) >> 2);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0xAAAAAAAAAAAAAAALL)
    {
      v13 = 0x1555555555555555;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v13);
    }

    v14 = 12 * v10;
    *v14 = v3;
    *(v14 + 4) = v4;
    *(v14 + 8) = v5;
    v9 = 12 * v10 + 12;
    v15 = *v6;
    v16 = v6[1];
    v17 = v14 + *v6 - v16;
    if (v16 != *v6)
    {
      v18 = v17;
      do
      {
        v19 = *v15;
        *(v18 + 8) = v15[2];
        *v18 = v19;
        v18 += 12;
        v15 += 3;
      }

      while (v15 != v16);
      v15 = *v6;
    }

    *v6 = v17;
    v6[1] = v9;
    v6[2] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v8 = v3;
    *(v8 + 4) = v4;
    v9 = v8 + 12;
    *(v8 + 8) = v5;
  }

  v6[1] = v9;
  v20 = a1[1];
  result = *v20;
  *v20 = result + 1;
  return result;
}

void std::vector<gm::Matrix<int,3,1>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
    if (v9 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = v12 + 12;
    v13 = v12 - v8;
    if (v7 != v3)
    {
      v14 = v13;
      do
      {
        v15 = *v7;
        *(v14 + 8) = v7[2];
        *v14 = v15;
        v14 += 12;
        v7 += 3;
      }

      while (v7 != v3);
      v7 = *a1;
    }

    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v5;
    v6 = (v3 + 3);
  }

  *(a1 + 8) = v6;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(uint64_t a1, unint64_t a2, unint64_t a3)
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
      if (result[2] == a3)
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

void std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,int>>(float *a1, unint64_t a2, uint64_t a3)
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
}

uint64_t md::NavigationMapEngineMode::willBecomeInactive(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 41928);
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0x2FED70A4459DFCA1uLL);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      md::StyleLogic::setMapMode(v5, 0, 0.0);
      v3 = *(a2 + 41928);
    }
  }

  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0xDAD5CEE0DC5FF509);
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      *(v7 + 168) = 0;
    }
  }

  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0xAF46DE79C836B0D8)[5];
  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v8 + 136), 0);
  v9 = *(v8 + 184);

  return gdc::GlobeTileSelector::setShouldCacheZBounds(v9, 0);
}

uint64_t md::NavigationMapEngineMode::didBecomeActive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  md::StandardMapEngineMode::didBecomeActive(a1, a2, a3, a4);
  v5 = *(a2 + 41928);
  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0x2FED70A4459DFCA1uLL);
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      md::StyleLogic::setMapMode(v7, 3, 0.0);
      v5 = *(a2 + 41928);
    }
  }

  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0xDAD5CEE0DC5FF509);
  if (v8)
  {
    v9 = v8[5];
    if (v9)
    {
      *(v9 + 168) = 1;
    }
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0xAF46DE79C836B0D8)[5];
  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v10 + 136), 1);
  v11 = *(v10 + 184);

  return gdc::GlobeTileSelector::setShouldCacheZBounds(v11, 1);
}

void md::NavigationMapEngineMode::applyMapDataTypeSettings(uint64_t a1, uint64_t a2, void *a3)
{
  md::MapEngineMode::applyMapDataTypeSettings(a1, a2, a3);
  v5 = *(a2 + 41936);
  v6 = *v5;
  v7 = v5[1];
  while (v6 != v7)
  {
    if (*v6 == 25)
    {
      if (v6 != v7 && *(v6 + 8))
      {
        std::__hash_table<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,gdc::IntTypeHash<md::MapDataType,unsigned short>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::equal_to<md::MapDataType>,gdc::IntTypeHash<md::MapDataType,unsigned short>,true>,std::allocator<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>>>::__erase_unique<md::MapDataType>(a3, 6u);

        std::__hash_table<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,gdc::IntTypeHash<md::MapDataType,unsigned short>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::equal_to<md::MapDataType>,gdc::IntTypeHash<md::MapDataType,unsigned short>,true>,std::allocator<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>>>::__erase_unique<md::MapDataType>(a3, 0x1Au);
      }

      return;
    }

    v6 += 16;
  }
}

void md::NavigationMapEngineMode::~NavigationMapEngineMode(md::NavigationMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

int8x8_t *md::NavigationMapEngineMode::NavigationMapEngineMode(int8x8_t *this, int a2)
{
  IsEnabled_VKMLayout_Navigation = MapsFeature_IsEnabled_VKMLayout_Navigation();
  v5 = md::StandardMapEngineMode::StandardMapEngineMode(this, 5, a2, IsEnabled_VKMLayout_Navigation);
  *this = &unk_1F29EEC80;
  LOWORD(v8) = 13;
  WORD1(v8) = a2;
  md::MapEngineMode::addOptionalMapDataTypes(v5, &v8, 1);
  if (a2)
  {
    md::MapEngineMode::addTileSelectionTileSetType(this);
  }

  v7 = 1;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(&this[1], 1u, &v8) + 18) = 1;
  v7 = 8;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(&this[1], 8u, &v8) + 18) = 0;
  v7 = 4;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(&this[1], 4u, &v8) + 18) = 1;
  v7 = 3;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(&this[1], 3u, &v8) + 18) = 1;
  v7 = 7;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(&this[1], 7u, &v8) + 18) = 1;
  v7 = 6;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(&this[1], 6u, &v8) + 18) = 1;
  v7 = 5;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(&this[1], 5u, &v8) + 18) = 1;
  v7 = 2;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(&this[1], 2u, &v8) + 18) = 1;
  v7 = 0;
  v8 = &v7;
  *(std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,md::TileSelectionTypeUpdateRate>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(&this[1], 0, &v8) + 18) = 1;
  return this;
}

unsigned __int8 *md::RoadSignPartMetrics::RoadSignPartMetrics(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695F060];
  *a1 = 0;
  *(a1 + 8) = *v5;
  v6 = *(MEMORY[0x1E695F058] + 16);
  *(a1 + 24) = *MEMORY[0x1E695F058];
  *(a1 + 56) = 0u;
  *(a1 + 40) = v6;
  *(a1 + 72) = 0u;
  v7 = a1 + 72;
  v8 = (a1 + 80);
  *(a1 + 81) = 0u;
  v9 = *MEMORY[0x1E695EFF8];
  *(a1 + 104) = *MEMORY[0x1E695EFF8];
  *(a1 + 120) = v9;
  *(a1 + 136) = v9;
  *(a1 + 152) = v9;
  *(a1 + 21) = 0;
  *a1 = a2;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = v11 * v10;
  v13 = vrndaq_f64(vmulq_n_f64(*(a3 + 72), v11 * v10));
  *(a1 + 11) = fmax(v13.f64[0], v13.f64[1]);
  v14 = (a2 < 0x10) & (0xFFCCu >> a2);
  a1[96] = v14;
  v15 = round(*(a3 + 56) * (v11 * v10));
  v16 = round(*(a3 + 64) * (v11 * v10));
  v17 = fmax(v15 + v13.f64[0], 0.0);
  v18 = fmax(v16 + v13.f64[0], 0.0);
  v19 = fmax(v13.f64[0] - v16, 0.0);
  v20 = round(v11 * v10 * *(a3 + 112));
  v21 = fmax(fmax(v13.f64[0] - v15, 0.0), v13.f64[1]) + v20;
  v22 = fmax(v17, v13.f64[1]) + v20;
  v23 = round(v11 * v10 * *(a3 + 120));
  v24 = fmax(v18, v13.f64[1]) + v23;
  MidY = fmax(v19, v13.f64[1]) + v23;
  if (a2 <= 5)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        *v7 = v21;
        v36 = round(v12 * *(a3 + 104));
        v37 = *(a3 + 128);
      }

      else
      {
        *v8 = v22;
        v36 = round(v12 * *(a3 + 128));
        v37 = *(a3 + 104);
      }

      v30 = round(v12 * v37) + v36;
    }

    else
    {
      if (a2 - 2 < 2)
      {
        v28 = round(v12 * *(a3 + 48)) + v20;
        v29 = round(v12 * *(a3 + 24));
        v30 = v29 + v28 * 2.0;
        *(a1 + 5) = v30;
        *(a1 + 13) = v28;
        v31 = v28 + v29;
        *(a1 + 15) = v31;
        v32 = (v31 + v28) * 0.5;
        goto LABEL_36;
      }

      v30 = 2.0;
      if (a2 != 1)
      {
        goto LABEL_66;
      }
    }

    *(a1 + 5) = v30;
    goto LABEL_47;
  }

  if (a2 > 0xF)
  {
    goto LABEL_17;
  }

  if (((1 << a2) & 0xF000) != 0)
  {
    v33 = round(round(v12 * *(a3 + 32)) * 0.707106781);
    v34 = round(fabs(round(v12 * *(a3 + 24))) * 0.707106781);
    v35 = fmax(round(v12 * *(a3 + 128)), v34);
    if (a2 > 13)
    {
      if (a2 == 14)
      {
        goto LABEL_14;
      }
    }

    else if (a2 == 12)
    {
LABEL_14:
      *v7 = v33 + v21;
      v30 = round(v12 * *(a3 + 104)) + round(v12 * *(a3 + 48)) + v35;
      *(a1 + 5) = v30;
      *(a1 + 13) = v30 - v34;
      *(a1 + 15) = v30;
      v32 = v30 + v33;
      goto LABEL_36;
    }

    v21 = v22;
    v7 = a1 + 80;
    goto LABEL_14;
  }

  if (((1 << a2) & 0x300) != 0)
  {
    v38 = round(v12 * *(a3 + 32));
    if (a2 != 9)
    {
      v22 = v21;
    }

    v39 = 72;
    if (a2 == 9)
    {
      v39 = 80;
    }

    *&a1[v39] = v38 + v22;
    v30 = round(v12 * *(a3 + 128)) + round(v12 * *(a3 + 104));
    *(a1 + 5) = v30;
    *(a1 + 13) = v30;
    *(a1 + 15) = v30;
    v32 = v38 + v30;
    goto LABEL_36;
  }

  if (((1 << a2) & 0xC00) != 0)
  {
    v26 = round(v12 * *(a3 + 24));
    v27 = fmax(round(v12 * *(a3 + 128)), v26);
    if (a2 == 11)
    {
      *v8 = v22;
    }

    else
    {
      *v7 = v21;
    }

    v30 = round(v12 * *(a3 + 104)) + round(v12 * *(a3 + 48)) + v27;
    *(a1 + 5) = v30;
    *(a1 + 13) = v30 - v26;
    *(a1 + 15) = v30;
    v32 = v30;
    goto LABEL_36;
  }

LABEL_17:
  if (a2 == 6)
  {
    *v7 = v21;
  }

  else
  {
    if (a2 != 7)
    {
      goto LABEL_66;
    }

    *v8 = v22;
  }

  v40 = round(v12 * *(a3 + 104));
  v41 = round(v12 * *(a3 + 24));
  v42 = round(v12 * *(a3 + 48));
  v30 = v41 + v40 + round(v12 * *(a3 + 128)) + v42 * 2.0;
  *(a1 + 5) = v30;
  v43 = v42 + v40;
  *(a1 + 13) = v43;
  *(a1 + 15) = v43 + v41;
  v32 = v43 + v41 * 0.5;
LABEL_36:
  *(a1 + 17) = v32;
  if (a2 <= 7)
  {
    if (a2 - 6 >= 2 && a2 != 2)
    {
      if (a2 == 3)
      {
        *(a1 + 4) = MidY;
        v44 = round(v12 * *(a3 + 96));
        *(a1 + 6) = v44;
        *(a1 + 8) = MidY;
        v45 = *(a3 + 32);
        *(a1 + 7) = round(v12 * v45) + v24;
        goto LABEL_56;
      }

      goto LABEL_66;
    }

    goto LABEL_45;
  }

  if (((1 << a2) & 0xC00) == 0)
  {
    if (((1 << a2) & 0x3000) != 0)
    {
      v47 = round(v12 * *(a3 + 32)) * 0.707106781;
      goto LABEL_50;
    }

    if (((1 << a2) & 0xC000) != 0)
    {
      v46 = round(round(v12 * *(a3 + 32)) * 0.707106781);
      *(a1 + 4) = MidY;
      v44 = round(v12 * *(a3 + 96));
      *(a1 + 6) = v44;
      *(a1 + 8) = MidY;
      v24 = v46 + v24;
LABEL_48:
      v48 = MidY;
      goto LABEL_51;
    }

    if (a2 - 8 >= 2)
    {
      goto LABEL_66;
    }

LABEL_47:
    *(a1 + 4) = MidY;
    v44 = round(v12 * *(a3 + 96));
    *(a1 + 6) = v44;
    *(a1 + 8) = MidY;
    goto LABEL_48;
  }

LABEL_45:
  v47 = v12 * *(a3 + 32);
LABEL_50:
  v48 = round(v47) + MidY;
  *(a1 + 4) = v48;
  v44 = round(v12 * *(a3 + 96));
  *(a1 + 6) = v44;
  *(a1 + 8) = v48;
LABEL_51:
  *(a1 + 7) = v24;
  if (a2 > 7)
  {
    if (((1 << a2) & 0xC00) == 0)
    {
      if (((1 << a2) & 0x3000) != 0)
      {
        v55 = round(round(v12 * *(a3 + 32)) * 0.707106781);
        v56 = round(fabs(round(v12 * *(a3 + 24))) * 0.707106781);
        *(a1 + 18) = MidY;
        v57 = v55 + MidY;
        *(a1 + 14) = v57;
        v52 = v56 + v57;
      }

      else
      {
        if (((1 << a2) & 0xC000) == 0)
        {
          if (a2 - 8 < 2)
          {
            v53 = *(a1 + 3);
            MidY = CGRectGetMidY(*(&v30 - 2));
            *(a1 + 18) = MidY;
            v11 = *(a3 + 16);
            v10 = *(a3 + 8);
            v54 = round(v10 * *(a3 + 24) * v11) * 0.5;
            *(a1 + 14) = MidY - v54;
            *(a1 + 16) = v54 + MidY;
            if ((a1[96] & 1) == 0)
            {
              goto LABEL_74;
            }

            goto LABEL_70;
          }

          goto LABEL_66;
        }

        v50 = round(fabs(round(v12 * *(a3 + 24))) * 0.707106781);
        v51 = v44 + MidY;
        MidY = round(round(v12 * *(a3 + 32)) * 0.707106781) + v51;
        *(a1 + 18) = MidY;
        *(a1 + 14) = v51;
        v52 = v51 - v50;
      }

LABEL_69:
      *(a1 + 16) = v52;
      if (((a2 < 0x10) & (0xFFCCu >> a2)) == 0)
      {
LABEL_74:
        v14 = 0;
        goto LABEL_89;
      }

LABEL_70:
      v58 = *(a1 + 17);
      v59 = round(v10 * *(a3 + 40) * v11);
      if (v59 == 0.0)
      {
LABEL_88:
        *(a1 + 19) = v58;
        *(a1 + 20) = MidY;
        v14 = 1;
        goto LABEL_89;
      }

      v60 = *(a1 + 13) - v58;
      v61 = *(a1 + 14) - MidY;
      v62 = 1.0 / sqrt(v61 * v61 + v60 * v60);
      v63 = v62 * v60;
      v64 = v62 * v61;
      *&v94 = v63;
      *(&v94 + 1) = v64;
      v65 = *(a1 + 15) - v58;
      v66 = *(a1 + 16) - MidY;
      v67 = 1.0 / sqrt(v66 * v66 + v65 * v65);
      v68 = v67 * v65;
      v69 = v67 * v66;
      *&v93 = v67 * v65;
      *(&v93 + 1) = v67 * v66;
      if ((*a1 & 0xFE) == 8)
      {
        v70 = xmmword_1B33B0740;
        if (v94 == 0)
        {
          v74 = 0.0;
        }

        else
        {
          v71 = atan2(v64, v63);
          v72 = fmod(v71 + 1.57079633, 6.28318531);
          v73 = fmod(v72 + 6.28318531, 6.28318531);
          v70 = xmmword_1B33B0740;
          v74 = v73 + -3.14159265;
        }

        if (v70 != 0 && v93 != 0)
        {
          v79 = atan2(v69, v68);
          v80 = 1.57079633;
LABEL_85:
          v81 = fmod(v79 + v80, 6.28318531);
          v82 = fmod(v81 + 6.28318531, 6.28318531) + -3.14159265;
LABEL_87:
          v83 = (v82 + v74) * 0.5;
          v84 = v59 / asin(vabdd_f64(v74, v82) * 0.5) - v59;
          v85 = __sincos_stret(v83);
          v86 = v84 / sqrt(v85.__cosval * v85.__cosval + v85.__sinval * v85.__sinval);
          v58 = ceil(v58 + v86 * v85.__cosval);
          MidY = ceil(MidY + v86 * v85.__sinval);
          goto LABEL_88;
        }
      }

      else
      {
        v75 = xmmword_1B33B0680;
        if (v94 == 0)
        {
          v74 = 0.0;
        }

        else
        {
          v76 = atan2(v64, v63);
          v77 = fmod(v76 + 3.14159265, 6.28318531);
          v78 = fmod(v77 + 6.28318531, 6.28318531);
          v75 = xmmword_1B33B0680;
          v74 = v78 + -3.14159265;
        }

        if (v75 != 0 && v93 != 0)
        {
          v79 = atan2(v69, v68);
          v80 = 3.14159265;
          goto LABEL_85;
        }
      }

      v82 = 0.0;
      goto LABEL_87;
    }

LABEL_62:
    *(a1 + 18) = MidY;
    v52 = round(v10 * *(a3 + 32) * v11) + MidY;
    *(a1 + 14) = v52;
    goto LABEL_69;
  }

  if (a2 - 6 < 2 || a2 == 2)
  {
    goto LABEL_62;
  }

  if (a2 == 3)
  {
    v45 = *(a3 + 32);
LABEL_56:
    v49 = v44 + MidY;
    MidY = round(v10 * v45 * v11) + v44 + MidY;
    *(a1 + 18) = MidY;
    *(a1 + 14) = v49;
    *(a1 + 16) = v49;
    if (((a2 < 0x10) & (0xFFCCu >> a2)) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_70;
  }

LABEL_66:
  if (v14)
  {
    MidY = *(a1 + 18);
    goto LABEL_70;
  }

LABEL_89:
  v87.f64[0] = *(a1 + 10);
  v88 = *(a1 + 40);
  v87.f64[1] = *(a1 + 7);
  v89 = vaddq_f64(vaddq_f64(v88, vextq_s8(*(a1 + 4), *(a1 + 4), 8uLL)), v87);
  *(a1 + 8) = v89;
  *(a1 + 21) = v19;
  v90 = *a1;
  if (v90 <= 0xE && ((1 << v90) & 0x5550) != 0)
  {
    *(a1 + 3) = *&vsubq_f64(v89, v88);
    if (v14)
    {
      v91 = *(a1 + 104);
      *(a1 + 104) = *(a1 + 120);
      *(a1 + 120) = v91;
      *(a1 + 13) = v89.f64[0] - *(a1 + 13);
      *(a1 + 15) = v89.f64[0] - *(a1 + 15);
      *(a1 + 17) = v89.f64[0] - *(a1 + 17);
      *(a1 + 19) = v89.f64[0] - *(a1 + 19);
    }
  }

  return a1;
}

double md::RoadSignPartMetrics::signMin(md::RoadSignPartMetrics *this)
{
  MinX = CGRectGetMinX(*(this + 24));
  CGRectGetMinY(*(this + 24));
  return MinX;
}

double md::RoadSignPartMetrics::signMax(md::RoadSignPartMetrics *this)
{
  MaxX = CGRectGetMaxX(*(this + 24));
  CGRectGetMaxY(*(this + 24));
  return MaxX;
}

md::RoadSignGeneratedMetrics *md::RoadSignGeneratedMetrics::RoadSignGeneratedMetrics(md::RoadSignGeneratedMetrics *this, const RoadSignMetrics *a2, const RoadSignTextMetrics *a3)
{
  v6 = 0;
  v7 = 0;
  v161 = *MEMORY[0x1E69E9840];
  *this = 0;
  v8 = MEMORY[0x1E695F060];
  v9 = MEMORY[0x1E695F058];
  *(this + 8) = *MEMORY[0x1E695F060];
  v10 = *v9;
  v11 = v9[1];
  *(this + 24) = *v9;
  *(this + 40) = v11;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 81) = 0u;
  v12 = MEMORY[0x1E695EFF8];
  v13 = *MEMORY[0x1E695EFF8];
  *(this + 104) = *MEMORY[0x1E695EFF8];
  *(this + 120) = v13;
  *(this + 136) = v13;
  *(this + 152) = v13;
  *(this + 21) = 0;
  *(this + 176) = 0;
  v14 = (this + 176);
  *(this + 184) = *v8;
  v15 = *v9;
  *(this + 216) = v9[1];
  *(this + 200) = v10;
  *(this + 232) = 0u;
  v16 = this + 232;
  *(this + 257) = 0u;
  *(this + 248) = 0u;
  v17 = *v12;
  *(this + 280) = *v12;
  *(this + 296) = v17;
  v18 = *v12;
  *(this + 312) = *v12;
  *(this + 328) = v18;
  *(this + 43) = 0;
  *(this + 352) = 0;
  v19 = *v9;
  v20 = v9[1];
  *(this + 360) = *v8;
  *(this + 376) = v19;
  *(this + 433) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 392) = v20;
  v21 = *v12;
  *(this + 456) = *v12;
  *(this + 472) = v21;
  v22 = *v12;
  *(this + 488) = *v12;
  *(this + 504) = v22;
  *(this + 65) = 0;
  *(this + 528) = 0;
  v23 = *v9;
  v24 = v9[1];
  *(this + 536) = *v8;
  *(this + 552) = v23;
  *(this + 609) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 568) = v24;
  v25 = *v12;
  *(this + 632) = *v12;
  *(this + 648) = v25;
  v26 = *v12;
  *(this + 664) = *v12;
  *(this + 680) = v26;
  *(this + 87) = 0;
  v27 = *v9;
  v28 = v9[1];
  *(this + 712) = *v8;
  *(this + 728) = v27;
  v29 = v9[1];
  *(this + 760) = *v9;
  *(this + 776) = v29;
  *(this + 744) = v28;
  *(this + 99) = 0;
  *(this + 50) = *v12;
  v30 = (this + 816);
  *(this + 51) = *v12;
  *(this + 52) = *v12;
  v31 = *v9;
  *(this + 54) = v9[1];
  *(this + 53) = v31;
  v32 = *v9;
  *(this + 56) = v9[1];
  *(this + 55) = v32;
  v33 = *v9;
  *(this + 58) = v9[1];
  *(this + 57) = v33;
  v34 = *v9;
  *(this + 60) = v9[1];
  *(this + 59) = v34;
  v35 = *v9;
  *(this + 62) = v9[1];
  *(this + 61) = v35;
  v36 = *v9;
  *(this + 64) = v9[1];
  *(this + 63) = v36;
  *(this + 66) = v9[1];
  *(this + 65) = v15;
  *(this + 134) = 0;
  orientation = a2->_orientation;
  if (orientation - 1 <= 0xC)
  {
    v38 = (orientation - 1);
    v6 = byte_1B33B3074[v38];
    v7 = byte_1B33B3081[v38];
  }

  v149 = (this + 800);
  if (orientation > 0xD)
  {
    goto LABEL_5;
  }

  v39 = 1;
  if (((1 << orientation) & 0x3BF6) != 0)
  {
    goto LABEL_5;
  }

  if (orientation == 3)
  {
    v40 = 2;
  }

  else
  {
    if (orientation != 10)
    {
LABEL_5:
      v39 = 0;
      v40 = 0;
      goto LABEL_6;
    }

    v40 = 3;
  }

LABEL_6:
  *(this + 704) = v39;
  if (v6)
  {
    md::RoadSignPartMetrics::RoadSignPartMetrics(&v150, v6, a2);
    v41 = v159;
    *(this + 8) = v158;
    *(this + 9) = v41;
    *(this + 10) = v160;
    v42 = v155;
    *(this + 4) = v154;
    *(this + 5) = v42;
    v43 = v157;
    *(this + 6) = v156;
    *(this + 7) = v43;
    v44 = v151;
    *this = v150;
    *(this + 1) = v44;
    v45 = v153;
    *(this + 2) = v152;
    *(this + 3) = v45;
  }

  v46 = (v16 + 120);
  if (v7)
  {
    md::RoadSignPartMetrics::RoadSignPartMetrics(&v150, v7, a2);
    v47 = v159;
    *(v14 + 8) = v158;
    *(v14 + 9) = v47;
    *(v14 + 10) = v160;
    v48 = v155;
    *(v14 + 4) = v154;
    *(v14 + 5) = v48;
    v49 = v157;
    *(v14 + 6) = v156;
    *(v14 + 7) = v49;
    v50 = v151;
    *v14 = v150;
    *(v14 + 1) = v50;
    v51 = v153;
    *(v14 + 2) = v152;
    *(v14 + 3) = v51;
  }

  v52 = (v16 + 296);
  md::RoadSignPartMetrics::RoadSignPartMetrics(&v150, 1u, a2);
  v53 = v159;
  *(v16 + 248) = v158;
  *(v16 + 264) = v53;
  *(v16 + 280) = v160;
  v54 = v155;
  *(v16 + 184) = v154;
  *(v16 + 200) = v54;
  v55 = v157;
  *(v16 + 216) = v156;
  *(v16 + 232) = v55;
  v56 = v151;
  *v46 = v150;
  *(v16 + 136) = v56;
  v57 = v153;
  *(v16 + 152) = v152;
  *(v16 + 168) = v57;
  v58 = 0.0;
  v59 = 0.0;
  v60 = *(this + 704);
  if (v60 == 1)
  {
    md::RoadSignPartMetrics::RoadSignPartMetrics(&v150, v40, a2);
    v61 = v159;
    *(v16 + 424) = v158;
    *(v16 + 440) = v61;
    *(v16 + 456) = v160;
    v62 = v155;
    *(v16 + 360) = v154;
    *(v16 + 376) = v62;
    v63 = v157;
    *(v16 + 392) = v156;
    *(v16 + 408) = v63;
    v64 = v151;
    *v52 = v150;
    *(v16 + 312) = v64;
    v65 = v153;
    *(v16 + 328) = v152;
    *(v16 + 344) = v65;
    v59 = 0.0;
    LOBYTE(v60) = *(this + 704);
    if (v60)
    {
      v59 = *(this + 71);
    }
  }

  v66 = *(this + 5) + v59 + *(this + 27);
  width = a2->_glyphSize.width;
  if (width != *v8 || a2->_glyphSize.height != *(v8 + 8))
  {
    scale = a2->_scale;
    v69 = scale * width;
    v70 = floor(v69);
    v71 = ceil(v69);
    if (scale >= 1.0)
    {
      v58 = v70;
    }

    else
    {
      v58 = v71;
    }
  }

  v72 = fmax(v66, a3[1]._verticalOffset + v58 + round(a3->_scale * a3->_horizontalMargin * a3->_contentScale) * 2.0);
  v73 = v72 - v66;
  v74 = 0;
  if (v60)
  {
    v73 = ceil(v73 + trunc(v73 * 0.5) * -2.0) + v73;
    v74 = *(this + 68);
  }

  *(this + 99) = v73;
  *(this + 93) = v72;
  v75 = *(this + 2);
  v76 = *(this + 24);
  v77 = *(this + 46);
  *&v150 = v75;
  *(&v150 + 1) = v76;
  *&v151 = v77;
  *(&v151 + 1) = v74;
  v78 = 8;
  v79 = &v150;
  do
  {
    v80 = *(&v150 + v78);
    v81 = v75 < v80;
    v75 = fmax(v75, v80);
    if (v81)
    {
      v79 = (&v150 + v78);
    }

    v78 += 8;
  }

  while (v78 != 32);
  v82 = *v79;
  *(this + 89) = *(this + 9) + v72 + *(this + 32);
  *(this + 90) = v82;
  *(this + 134) = *(this + 21);
  v83 = *(this + 50);
  md::RoadSignPartMetrics::signMin(this);
  v85 = v84;
  *&v150 = v84;
  md::RoadSignPartMetrics::signMin(v14);
  *(&v150 + 1) = v86;
  md::RoadSignPartMetrics::signMin((v16 + 120));
  *&v151 = v87;
  v88 = 0;
  if (*(this + 704) == 1)
  {
    md::RoadSignPartMetrics::signMin((v16 + 296));
  }

  *(&v151 + 1) = v88;
  v89 = 8;
  v90 = &v150;
  do
  {
    v91 = *(&v150 + v89);
    v81 = v85 < v91;
    v85 = fmax(v85, v91);
    if (v81)
    {
      v90 = (&v150 + v89);
    }

    v89 += 8;
  }

  while (v89 != 32);
  v92 = *v90;
  v93 = md::RoadSignPartMetrics::signMin(this);
  *(this + 91) = v93;
  *(this + 92) = v92;
  *(this + 94) = v83;
  if (BYTE1(a3[1]._secondaryTextSize) == 1)
  {
    v93 = a3[1]._verticalOffset + v93;
    v94 = round(a3->_scale * a3->_horizontalMargin * a3->_contentScale);
    v95 = 1.5;
  }

  else
  {
    v94 = round(a3->_scale * a3->_horizontalMargin * a3->_contentScale);
    v95 = 0.5;
  }

  *(this + 95) = v93 + v94 * v95;
  v96 = a2->_scale;
  v97 = v96 < 1.0;
  v98 = a2->_glyphVerticalOffset * v96;
  v99 = floor(v98);
  v100 = ceil(v98);
  if (v96 >= 1.0)
  {
    v100 = v99;
  }

  v101 = vmulq_n_f64(a2->_glyphSize, v96);
  v102 = vdup_n_s32(v97);
  v103.i64[0] = v102.u32[0];
  v103.i64[1] = v102.u32[1];
  v104 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v103, 0x3FuLL)), vrndpq_f64(v101), vrndmq_f64(v101));
  *(this + 96) = v100 + v92 + (v83 - *&v104.i64[1]) * 0.5;
  *(this + 776) = v104;
  v105 = *(this + 704);
  md::RoadSignPartMetrics::signMin(this);
  v162.origin.y = v92 - v106;
  v162.size.width = *(this + 1);
  v162.size.height = *(this + 2);
  *(this + 110) = 0;
  *(this + 111) = *&v162.origin.y;
  *(this + 112) = *&v162.size.width;
  *(this + 113) = *&v162.size.height;
  v162.origin.x = 0.0;
  MaxX = CGRectGetMaxX(v162);
  md::RoadSignPartMetrics::signMin(v46);
  v109 = v92 - v108;
  v110 = *(this + 99);
  if (v105 == 1)
  {
    v111 = v110 * 0.5;
    v112 = *(this + 46);
    *(this + 126) = MaxX;
    *(this + 127) = v109;
    *(this + 128) = v111;
    *(this + 129) = v112;
    v113 = MaxX;
    v114 = CGRectGetMaxX(*(&v109 - 1));
    md::RoadSignPartMetrics::signMin(v52);
    v163.origin.y = v92 - v115;
    v163.size.width = *(this + 67);
    v163.size.height = *(this + 68);
    *(this + 122) = v114;
    *(this + 123) = *&v163.origin.y;
    *(this + 124) = *&v163.size.width;
    *(this + 125) = *&v163.size.height;
    v163.origin.x = v114;
    MaxX = CGRectGetMaxX(v163);
    md::RoadSignPartMetrics::signMin(v46);
    v109 = v92 - v116;
    v110 = *(this + 99) * 0.5;
    v117 = 1064;
    v118 = 1056;
    v119 = 1048;
    v120 = 1040;
  }

  else
  {
    v117 = 968;
    v118 = 960;
    v119 = 952;
    v120 = 944;
  }

  v121 = *(this + 46);
  *(this + v120) = MaxX;
  *(this + v119) = v109;
  *(this + v118) = v110;
  *(this + v117) = v121;
  v122 = MaxX;
  v123 = CGRectGetMaxX(*(&v109 - 1));
  md::RoadSignPartMetrics::signMin(v14);
  *(this + 114) = v123;
  *(this + 115) = v92 - v124;
  *(this + 58) = *(this + 184);
  if (*(this + 96))
  {
    *v149 = *(this + 136);
    *v30 = *(this + 152);
    goto LABEL_46;
  }

  if (*(this + 272))
  {
    v125 = *(this + 39);
    *(this + 101) = *(this + 40);
    *(this + 100) = v123 + v125;
    v126 = *(this + 41);
    *(this + 103) = *(this + 42);
    v127 = v126 + v123;
LABEL_42:
    *(this + 102) = v127;
    goto LABEL_46;
  }

  if (*(this + 704) == 1 && (*(this + 624) & 1) != 0)
  {
    v128 = *(this + 83);
    *(this + 101) = *(this + 84);
    v129 = *(this + 122);
    *(this + 100) = v129 + v128;
    v130 = *(this + 85);
    *(this + 103) = *(this + 86);
    v127 = v130 + v129;
    goto LABEL_42;
  }

LABEL_46:
  v131 = a2->_glyphSize.width;
  if (v131 != *v8 || (v132 = 0.0, a2->_glyphSize.height != *(v8 + 8)))
  {
    v133 = a2->_scale;
    v134 = v133 * v131;
    v135 = floor(v134);
    v136 = ceil(v134);
    if (v133 >= 1.0)
    {
      v132 = v135;
    }

    else
    {
      v132 = v136;
    }
  }

  v137 = a3->_contentScale * a3->_scale;
  v138 = round(v137 * a3->_horizontalMargin);
  v139 = -0.0;
  if (!BYTE1(a3[1]._secondaryTextSize))
  {
    v139 = v132;
  }

  v140 = v138 + *(this + 91) + v139;
  v141 = *(this + 92);
  v142 = round(v137 * a3->_verticalMargin);
  *(this + 104) = v140;
  *(this + 105) = v142 + v141;
  v143 = a3->_contentScale * a3->_scale;
  v144 = round(v143 * a3->_verticalMargin);
  v145 = round(v143 * a3->_horizontalMargin);
  v146 = *(this + 93) - v132 - (v145 + v145);
  v147 = *(this + 94) + v144 * -2.0;
  *(this + 106) = v140;
  *(this + 107) = v144 + v141;
  *(this + 108) = v146;
  *(this + 109) = v147;
  return this;
}