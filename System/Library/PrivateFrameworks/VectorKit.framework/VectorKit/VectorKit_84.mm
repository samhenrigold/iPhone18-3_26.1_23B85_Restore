void ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A412F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueMaterialAlbedoTexture,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25MaterialPendingProcessingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialPendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41788;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialPendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41788;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParametersPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParametersPendingOnly>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6888;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParameters>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessMaterialPlanarParameters>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F67B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateColorCorrectionData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateColorCorrectionData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6600;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateSSAOIntensityData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateSSAOIntensityData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v53[3] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v4 = a1 + 8;
  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(**a2, *(*a2 + 8));
    *(a1 + 16) = v5;
  }

  v6 = (**v5)(v5);
  v7 = md::LayoutContext::get<md::CameraContext>(*(v6 + 8));
  v45 = fmaxf(*(v7 + 3080) + *(v7 + 3076), 1.0);
  v44 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(v4);
  v51[0] = &unk_1F2A07810;
  v51[1] = &v44;
  v51[2] = &v45;
  v52 = v51;
  v8 = *(a2 + 8);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v8);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueSSAOIntensityDataHandle>(v8);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(v8);
  v53[0] = v9;
  v53[1] = v10;
  v12 = 1;
  v13 = v9;
  v14 = v53;
  v53[2] = v11;
  do
  {
    if (*(v53[v12] + 40) - *(v53[v12] + 32) < *(v13 + 40) - *(v13 + 32))
    {
      v13 = v53[v12];
      v14 = &v53[v12];
    }

    ++v12;
  }

  while (v12 != 3);
  v15 = *(*v14 + 32);
  v16 = *(*v14 + 40);
  v46 = v15;
  v47 = v16;
  v48 = v9;
  v49 = v10;
  v50 = v11;
  while (v15 != v16 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v46, *v15, v15[1]))
  {
    v15 += 2;
    v46 = v15;
  }

  v17 = v46;
  if (v46 == v16)
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
  }

  else
  {
    v43 = v4;
    v18 = v48;
    v19 = v49;
    v20 = v50;
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
    v24 = v47;
    do
    {
      v25 = v17[1];
      v26 = (v25 >> 3) & 0x1FF8;
      v27 = v25 & 0x3F;
      v28 = *(*(*(v18 + 8) + v26) + 4 * v27 + 2);
      v29 = *(*(v18 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(v19 + 8) + v26) + 4 * v27 + 2);
      v31 = *(*(v19 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(v20 + 32);
      v33 = *(*(*(v20 + 8) + v26) + 4 * v27 + 2);
      *(v21 + 104 * *v22 + 24) = *v17;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v29 + 24 * (v28 & 0x3F), v31 + 8 * (v30 & 0x3F), v32 + 4 * v33);
      ++v23;
      v34 = v17 + 2;
      while (1)
      {
        v17 = v34;
        v46 = v34;
        if (v34 == v24)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v46, *v34, v34[1]);
        v34 = v17 + 2;
        if (v35)
        {
          v36 = v17;
          goto LABEL_19;
        }
      }

      v36 = v24;
LABEL_19:
      ;
    }

    while (v36 != v16);
    v4 = v43;
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v37 = v21 + 104 * *v22;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v23;
  v39 = v21 + 104 * *v22;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 > 0xF)
  {
    *v40 = 0;
  }

  result = std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](v51);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  return result;
}

void sub_1B2DB8778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateSSAOIntensityData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateSSAOIntensityData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6528;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateGradientMaskData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateGradientMaskData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6450;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColorPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColorPendingOnly>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v41 = a1 + 8;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueStyleEmissiveDataKeyHandle>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v48[2] = v6;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v11 = *(*v9 + 32);
  v10 = *(*v9 + 40);
  v43 = v11;
  v44 = v10;
  v45 = v4;
  v46 = v5;
  v47 = v6;
  v42 = v10;
  while (v11 != v10 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v43, *v11, v11[1]))
  {
    v11 += 2;
    v43 = v11;
    v10 = v42;
  }

  v12 = v43;
  if (v43 == v42)
  {
    v14 = _ZTWN4ecs27Runtime11_localStateE();
    v15 = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
  }

  else
  {
    v13 = v47;
    v39 = a2;
    v40 = v46;
    v14 = _ZTWN4ecs27Runtime11_localStateE();
    v15 = _ZTWN4ecs27Runtime11_stackIndexE();
    v16 = 0;
    v17 = v44;
    do
    {
      v18 = v12[1];
      v19 = v18 & 0x3F;
      v20 = (v18 >> 3) & 0x1FF8;
      v21 = *(*(*(v40 + 8) + v20) + 4 * v19 + 2);
      v22 = v16;
      v23 = (*(*(v40 + 56) + ((v21 >> 3) & 0x1FF8)) + 24 * (v21 & 0x3F));
      v24 = *(*(*(v13 + 8) + v20) + 4 * v19 + 2);
      v25 = (*(*(v13 + 56) + ((v24 >> 3) & 0x1FF8)) + 16 * (v24 & 0x3F));
      v26 = v15;
      LODWORD(v19) = *v15;
      v27 = v14;
      *(v14 + 104 * v19 + 24) = *v12;
      v28 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v41);
      v29 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(v41);
      processMaterialEmissiveParameters(v28, v29, v23, v25);
      v16 = v22 + 1;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v43 = v30;
        if (v30 == v17)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v43, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_16;
        }
      }

      v32 = v17;
LABEL_16:
      v14 = v27;
      v15 = v26;
    }

    while (v32 != v42);
    v33 = *(v39 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata) = *(v33 + 4096);
  }

  *(v14 + 104 * *v15 + 24) = -65536;
  v34 = v14 + 104 * *v15;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v16;
  v36 = v14 + 104 * *v15;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  *v41 = 0;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
}

void ecs2::BasicRegistry<void>::remove<md::ls::UniqueStyleEmissiveDataKeyHandle>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueStyleEmissiveDataKeyHandle>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v13 = v5[31];
        v12 = v5[32];
        if (v13 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v13 + 24), a2);
            v13 += 32;
          }

          while (v13 != v12);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v15 & 0x3F;
        v17 = v10[7];
        v18 = *(v17 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v19 = v14 & 0x3F;
        v20 = *(v17 + ((v14 >> 3) & 0x1FF8));
        v21 = *(v20 + 16 * v19);
        *(v20 + 16 * v19) = *(v18 + 16 * v16);
        *(v18 + 16 * v16) = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v22 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueStyleEmissiveDataKeyHandle>(void)::metadata) = *(a1 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1E250;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1E270;
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

void ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1E250;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueStyleEmissiveDataKeyHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColorPendingOnly>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColorPendingOnly>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F6378;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColor>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleEmmisiveColor>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F62A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessMaterialsForUpdatedStyle>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessMaterialsForUpdatedStyle>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F61C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfMaterialRequiresEmissiveColor>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfMaterialRequiresEmissiveColor>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F60F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14TileViewMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileViewMatrix>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F5FD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F5FF8;
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

void ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F5FD8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileViewMatrix,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls11GlobeMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::GlobeMatrix>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GlobeMatrix>();
    *algn_1EB83DB88 = 0x67D8808361DF5DBFLL;
    qword_1EB83DB90 = "md::ls::GlobeMatrix]";
    qword_1EB83DB98 = 19;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1CF68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1CF88;
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

void ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1CF68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::GlobeMatrix,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateFlyoverTileViewMatrix>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateFlyoverTileViewMatrix>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5F90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31MeshRenderablePositionScaleInfoEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderablePositionScaleInfo>(v3);
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
        v20 = *(v19 + 4 * v18);
        *(v19 + 4 * v18) = *(v17 + 4 * v15);
        *(v17 + 4 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A420F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42110;
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

void ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A420F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MeshRenderablePositionScaleInfo,64ul>::~storage(a1);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MeshLayerTypeV const&>,std::tuple<>>::isValid(unsigned __int16 **a1)
{
  v1 = (*a1)[1];
  v2 = v1 >> 6;
  v3 = *(a1[2] + 1);
  if (v1 >> 6 < (*(a1[2] + 2) - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = **a1, v6 = 4 * (v1 & 0x3F), *(v4 + v6) == v5) && (v7 = *(a1[3] + 1), v2 < (*(a1[3] + 2) - v7) >> 3) && (v9 = *(v7 + 8 * v2)) != 0 && *(v9 + v6) == v5 && (v10 = *(a1[4] + 1), v2 < (*(a1[4] + 2) - v10) >> 3) && (v11 = *(v10 + 8 * v2)) != 0)
  {
    return *(v11 + v6) == v5;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateDynamicRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateDynamicRenderables>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5C30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&>)::{lambda(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)#1},std::allocator<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&>)::{lambda(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)#1}>,void ()(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F5B58;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CollectFlyoverMeshRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::CollectFlyoverMeshRenderables>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CollectDaVinciMeshRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::CollectDaVinciMeshRenderables>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F58A8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForGlobeTiles>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForGlobeTiles>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F56F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5620;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5548;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateTilePerPoint>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateTilePerPoint>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5470;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateShadowConstants>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateShadowConstants>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5398;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateDepthPrePassConstants>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateDepthPrePassConstants>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F52C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfMaterialNeedsUpdate>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfMaterialNeedsUpdate>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F51E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupCommonDataTask>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupCommonDataTask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F5110;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateClippingConstants>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateClippingConstants>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4F48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateCameraStyleLight>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateCameraStyleLight>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4E70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateTileTransforms>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateTileTransforms>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4D98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateTileRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateTileRenderables>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4CC0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareRenderableData>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareRenderableData>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4BE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCommandBuffers>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCommandBuffers>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4B10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareShadowPass>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareShadowPass>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4720;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMainPass>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMainPass>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4648;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PushLegacyRibbons>,std::allocator<ecs2::ForwardToExecute<md::ita::PushLegacyRibbons>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4570;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::DisconnectComponents>,std::allocator<ecs2::ForwardToExecute<md::ita::DisconnectComponents>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F43C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateResourcesAfterRebuild>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateResourcesAfterRebuild>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F42E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ResetMaterialStoreCache>,std::allocator<ecs2::ForwardToExecute<md::ResetMaterialStoreCache>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, void ***a2)
{
  v13[4] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v3 = **a2;
  v4 = (*a2)[1];
  if (v3 == v4)
  {
    goto LABEL_5;
  }

  v5 = v3;
  while (*v5 != 0x4EDAD23DFB014132)
  {
    v5 += 5;
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  if (v5 == v4)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v6 = v5[3];
    v7 = v5[4];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      v8 = **(a1 + 8);
      v3 = *v8;
      v4 = *(v8 + 8);
    }
  }

  v12 = v6;
  v9 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(v3, v4);
  v10 = (**v9)(v9);
  result = gdc::Context::get<md::StyleLogicContext>(*(v10 + 8));
  if (result)
  {
    v13[0] = &unk_1F29F42A0;
    v13[1] = &v12;
    v13[3] = v13;
    md::StyleLogicContext::parseEvents(result, v13);
    result = std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v13);
  }

  *(a1 + 8) = 0;
  return result;
}

void sub_1B2DBC70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::ResetMaterialStoreCache::operator()(void)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::ResetMaterialStoreCache::operator()(void)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::operator()(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = v2 > 5;
  v4 = (1 << v2) & 0x39;
  if (!v3 && v4 != 0)
  {
    md::MaterialResourceStore::resetMaterialPtrStorage(**(result + 8));
  }
}

uint64_t std::__function::__func<md::ResetMaterialStoreCache::operator()(void)::{lambda(md::StyleManagerEvent)#1},std::allocator<md::ResetMaterialStoreCache::operator()(void)::{lambda(md::StyleManagerEvent)#1}>,void ()(md::StyleManagerEvent)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F42A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ResetMaterialStoreCache>,std::allocator<ecs2::ForwardToExecute<md::ResetMaterialStoreCache>>,void ()(ecs2::Runtime &)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F29F4258;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfReadyToProcess>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfReadyToProcess>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F4138;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfShouldDeleteRenderable>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfShouldDeleteRenderable>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F3F88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void geo::_retain_ptr<VKManifestTileGroupObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29FF438;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKManifestTileGroupObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F29FF438;

  return a1;
}

void sub_1B2DBCF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

void sub_1B2DBD108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1B2DBD220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void geo::_retain_ptr<VKCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A20410;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A20410;

  return a1;
}

void sub_1B2DBD8F4(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v2 - 88);

  _Unwind_Resume(a1);
}

void sub_1B2DBD98C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKMapImageCanvas;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B2DBDDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(GEOExperimentConfiguration *)>::~__value_func[abi:nn200100](va);
  objc_destroyWeak((v11 - 80));

  _Unwind_Resume(a1);
}

void md::OverlayContainer::addOverlay(md::OverlayContainer *this, VKOverlay *a2)
{
  v3 = a2;
  std::mutex::lock((this + 232));
  md::OverlayContainer::_insertOverlay(this, v3, *(this + 3 * [(VKOverlay *)v3 level]+ 21));
  std::mutex::unlock((this + 232));
}

void md::OverlayContainer::_insertOverlay(uint64_t a1, void *a2, char *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v43 = v5;
  v6 = [v5 level];
  v7 = a1 + 24 * v6;
  v9 = *(v7 + 160);
  v10 = *(v7 + 168);
  v8 = (v7 + 160);
  if (v9 != v10)
  {
    while ((geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v9 + 8), &v43) & 1) == 0)
    {
      v9 += 24;
      if (v9 == v10)
      {
        v9 = v10;
        break;
      }
    }

    v10 = v8[1];
  }

  if (v9 == v10)
  {
    if (v10 == a3)
    {
      geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v50, v5);
      std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100](v8, &v50);
      v50 = off_1F2A2D550;
    }

    else
    {
      geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v49, v5);
      v13 = v8[1];
      v12 = v8[2];
      if (v13 >= v12)
      {
        v20 = *v8;
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v8) >> 3) + 1;
        if (v21 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v22 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v20) >> 3);
        if (2 * v22 > v21)
        {
          v21 = 2 * v22;
        }

        if (v22 >= 0x555555555555555)
        {
          v23 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v23 = v21;
        }

        v47 = v8;
        if (v23)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(v23);
        }

        v24 = &a3[-v20];
        v25 = 8 * (&a3[-v20] >> 3);
        v44 = 0;
        v45 = v25;
        v46 = v25;
        if (!(0xAAAAAAAAAAAAAAABLL * (&a3[-v20] >> 3)))
        {
          if (v24 < 1)
          {
            if (v20 == a3)
            {
              v28 = 1;
            }

            else
            {
              v28 = 0x5555555555555556 * (&a3[-v20] >> 3);
            }

            v52 = v47;
            std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(v28);
          }

          v25 -= 24 * ((1 - 0x5555555555555555 * (v24 >> 3)) >> 1);
          v45 = v25;
          *&v46 = v25;
        }

        geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v25, v49);
        *&v46 = v46 + 24;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(a3, v8[1], v46);
        v29 = *v8;
        v30 = v45;
        *&v46 = v46 + v8[1] - a3;
        v8[1] = a3;
        v31 = v30 + v29 - a3;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(v29, a3, v31);
        v32 = *v8;
        *v8 = v31;
        v33 = v8[2];
        *(v8 + 1) = v46;
        *&v46 = v32;
        *(&v46 + 1) = v33;
        v44 = v32;
        v45 = v32;
        std::__split_buffer<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(&v44);
      }

      else if (a3 == v13)
      {
        geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v8[1], v49);
        v8[1] = v13 + 24;
      }

      else
      {
        v14 = v13 - 24;
        if (v13 < 0x18)
        {
          v16 = v8[1];
        }

        else
        {
          v15 = v13 - 24;
          v16 = v8[1];
          do
          {
            v17 = geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v16, v15);
            v15 += 24;
            v16 = v17 + 24;
          }

          while (v15 < v13);
        }

        v8[1] = v16;
        if (v13 != a3 + 24)
        {
          v26 = &a3[-v13 + 24];
          v27 = v13 - 48;
          do
          {
            geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v14, v27);
            v14 -= 24;
            v27 -= 24;
            v26 += 24;
          }

          while (v26);
        }

        geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a3, v49);
      }

      v49[0] = off_1F2A2D550;
    }
  }

  else
  {
    v11 = v9 + 24;
    if (v10 == a3)
    {
      if (v11 == v10)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v10 = a3;
      if (v11 == a3)
      {
        goto LABEL_55;
      }
    }

    v18 = v9 + 24;
    while (1)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &>(v9, v11);
      v9 += 24;
      v11 += 24;
      if (v11 == v10)
      {
        break;
      }

      if (v9 == v18)
      {
        v18 = v11;
      }
    }

    if (v9 != v18)
    {
      v19 = v18;
      do
      {
        while (1)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &>(v9, v18);
          v9 += 24;
          v18 += 24;
          if (v18 == v10)
          {
            break;
          }

          if (v9 == v19)
          {
            v19 = v18;
          }
        }

        v18 = v19;
      }

      while (v9 != v19);
    }
  }

LABEL_55:
  v34 = *(a1 + 208);
  v35 = *(a1 + 216);
  if (v34 != v35)
  {
    while ((geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v34 + 8), &v43) & 1) == 0)
    {
      v34 += 24;
      if (v34 == v35)
      {
        v34 = v35;
        break;
      }
    }

    v35 = *(a1 + 216);
  }

  v36 = v43;
  if (v34 == v35)
  {
    [v43 replaceMapContentInRect];
    if (vabdd_f64(v42, *MEMORY[0x1E69A1688]) < 0.00000001 && vabdd_f64(v39, *(MEMORY[0x1E69A1688] + 8)) < 0.00000001 && vabdd_f64(v40, *(MEMORY[0x1E69A1688] + 16)) < 0.00000001 && vabdd_f64(v41, *(MEMORY[0x1E69A1688] + 24)) < 0.00000001)
    {
      *(a1 + 344) = 1;
      geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v50, v36);
      std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100]((a1 + 208), &v50);
      v50 = off_1F2A2D550;
    }
  }

  v37 = [v36 areResourcesRequired];
  if (v6 <= 1 && *(a1 + 16 * v6 + 8 * v37))
  {
    v38 = v36;
    v48 = 0;
    operator new();
  }

  if ([v36 areResourcesRequired])
  {
    LODWORD(v50) = [v36 identifier];
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>((a1 + 296), v50, &v50);
  }

  *(a1 + 345) = 1;
  ++*(a1 + 348);
}

uint64_t geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, void **a2)
{
  v3 = a1;
  v4 = *a2;
  v5 = v3;
  v6 = v4;
  if (v6 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v5 isEqual:v6];
  }

  return v7;
}

void *geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1F2A2D550;
  a1[1] = v3;
  return a1;
}

uint64_t std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::push_back[abi:nn200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v19 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(v10);
    }

    v16 = 0;
    v17 = 24 * v7;
    geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(24 * v7, a2);
    v18 = 24 * v7 + 24;
    v11 = a1[1];
    v12 = 24 * v7 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(*a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = a1[2];
    v15 = v18;
    *(a1 + 1) = v18;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v16 = v13;
    v17 = v13;
    result = std::__split_buffer<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(&v16);
    v6 = v15;
  }

  else
  {
    result = geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v3, a2);
    v6 = result + 24;
    a1[1] = result + 24;
  }

  a1[1] = v6;
  return result;
}

void sub_1B2DBEB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void md::OverlayContainer::queueCommand(uint64_t a1, char a2, uint64_t a3)
{
  std::mutex::lock((a1 + 48));
  v7 = *(a1 + 120);
  v6 = (a1 + 112);
  if (*(a1 + 112) == v7)
  {
    v8 = **(a1 + 352);
    if (v8)
    {
      LOBYTE(v25) = 1;
      md::MapEngine::setNeedsTick(v8, &v25);
      v7 = *(a1 + 120);
    }
  }

  v9 = *(a1 + 128);
  if (v7 >= v9)
  {
    v11 = 0xCCCCCCCCCCCCCCCDLL * (&v7[-*v6] >> 3);
    if (v11 + 1 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - *v6) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x333333333333333)
    {
      v14 = 0x666666666666666;
    }

    else
    {
      v14 = v13;
    }

    v28 = a1 + 112;
    if (v14)
    {
      if (v14 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v25 = 0;
    v26 = 40 * v11;
    v27 = 40 * v11;
    *v26 = a2;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](40 * v11 + 8, a3);
    v16 = *(a1 + 112);
    v15 = *(a1 + 120);
    v17 = v26 - (v15 - v16);
    *&v27 = v27 + 40;
    if (v15 != v16)
    {
      v18 = v26 - 8 * ((v15 - v16) >> 3) + 8;
      v19 = v16;
      v20 = v16;
      do
      {
        v21 = *v20;
        v20 += 40;
        *(v18 - 8) = v21;
        v18 = std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v18, (v19 + 8)) + 40;
        v19 = v20;
      }

      while (v20 != v15);
      do
      {
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((v16 + 8));
        v16 += 40;
      }

      while (v16 != v15);
    }

    v22 = *(a1 + 112);
    *(a1 + 112) = v17;
    v23 = *(a1 + 128);
    v24 = v27;
    *(a1 + 120) = v27;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v25 = v22;
    v26 = v22;
    std::__split_buffer<std::pair<md::OverlayContainerCommandType,std::function<void ()(void)>>>::~__split_buffer(&v25);
    v10 = v24;
  }

  else
  {
    *v7 = a2;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100]((v7 + 8), a3);
    v10 = v7 + 40;
    *(a1 + 120) = v7 + 40;
  }

  *(a1 + 120) = v10;
  std::mutex::unlock((a1 + 48));
}

uint64_t std::__split_buffer<std::pair<md::OverlayContainerCommandType,std::function<void ()(void)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0,std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (([v2 canProvideVectorData] & 1) == 0)
  {
    v3 = [v2 rasterTileProvider];

    if (!v3)
    {
      [v2 customTileProvider];
    }
  }

  geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v7, *(a1 + 16));
  v4 = [*(a1 + 16) rasterTileProvider];
  if (!v4)
  {
    [*(a1 + 16) customTileProvider];
  }

  geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v5, v7);
  v6 = 0;
  operator new();
}

void sub_1B2DBF0C4(_Unwind_Exception *a1)
{
  *(v1 + 120) = off_1F2A2D550;

  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = off_1F2A2D550;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = off_1F2A2D550;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

uint64_t std::unordered_set<md::OverlayTileDataType>::unordered_set(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v4 = a3;
    do
    {
      std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__emplace_unique_key_args<md::OverlayTileDataType,md::OverlayTileDataType const&>(a1, *a2, a2);
      ++a2;
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::OverlayContainer::_isOverlayTileInCurrentScene(md::OverlayContainer *this, const md::OverlayTileData *a2)
{
  if (this)
  {
    v2 = *(this + 15);
    if (v2)
    {
      v4 = *(grl::IconMetricsRenderResult::getFillRect(a2) + 8);
      v5 = *v2;
      {
        qword_1ED65AC10 = 0;
        qword_1ED65AC08 = 0;
        md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
      }

      v6 = *(v5 + 48);
      v7 = *(v5 + 56);
      if (v6 == v7)
      {
        goto LABEL_14;
      }

      v8 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
      v9 = v6;
      while (*v9 != v4)
      {
        v9 += 16;
        if (v9 == v7)
        {
          goto LABEL_15;
        }
      }

      if (v9 == v7)
      {
LABEL_14:
        v8 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
      }

      else
      {
        while (*v6 != v4)
        {
          v6 += 16;
          if (v6 == v7)
          {
            v6 = v7;
            break;
          }
        }

        v8 = (v6 + 4);
      }

LABEL_15:
      v12 = *v8;
      v10 = v8 + 1;
      v11 = v12;
      if (v12 != v10)
      {
        do
        {
          v14 = v11[4];
          v13 = v11[5];
          if (v13)
          {
            v15 = 1;
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
            if (v14 == a2)
            {
              return v15;
            }
          }

          else if (v14 == a2)
          {
            return 1;
          }

          v16 = v11[1];
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
              v17 = v11[2];
              v18 = *v17 == v11;
              v11 = v17;
            }

            while (!v18);
          }

          v11 = v17;
        }

        while (v17 != v10);
      }
    }
  }

  return 0;
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#4},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#4}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF6E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 169) | 0x200000000;
  v4[0] = *(*a2 + 176) | (*(*a2 + 172) << 32);
  v4[1] = v2;
  return [*(a1 + 16) canPossiblyDrawKey:v4];
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 8) = off_1F2A2D550;

  operator delete(a1);
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29FF698;
  *(a1 + 8) = off_1F2A2D550;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#3}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29FF698;
  *(a1 + 8) = off_1F2A2D550;

  return a1;
}

void std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__emplace_unique_key_args<md::OverlayTileDataType,md::OverlayTileDataType const&>(void *a1, unsigned __int8 a2, _BYTE *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % a1[1];
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
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
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
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

  if (*(v7 + 16) != a2)
  {
    goto LABEL_17;
  }
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#2},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#2}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF650;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 169) | 0x200000000;
  v4[0] = *(*a2 + 176) | (*(*a2 + 172) << 32);
  v4[1] = v2;
  return [*(a1 + 16) canPossiblyDrawKey:v4];
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 8) = off_1F2A2D550;

  operator delete(a1);
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29FF608;
  *(a1 + 8) = off_1F2A2D550;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F29FF608;
  *(a1 + 8) = off_1F2A2D550;

  return a1;
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0,std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

__n128 std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0,std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = &unk_1F29FF5C0;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0,std::allocator<md::OverlayContainer::_insertOverlay(VKOverlay *,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *>)::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &,std::__wrap_iter<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> *> &>(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x1E69E9840];
  geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v4, a1);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a1, a2);
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(a2, v4);
  v4[0] = off_1F2A2D550;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t (***std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t (***result)(void), uint64_t (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a3, v6);
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

uint64_t std::__split_buffer<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A2D550;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A2D550;

  return a1;
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(a1, a2);
  if (v3)
  {

    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(a1, v3);
  }
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0,std::allocator<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v17 = &unk_1F29FF530;
  v18 = v3;
  v19 = &v17;
  v16[0] = &unk_1F29FF578;
  v16[1] = v2;
  v16[3] = v16;
  v5 = *(a1 + 32);
  v10[0] = *(a1 + 33);
  std::unordered_set<md::OverlayTileDataType>::unordered_set(v11, v10, 1);
  md::OverlayLayerDataSource::conditionalInvalidate(v4, &v17, v16, v5, v11);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v11);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v16);
  result = std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](&v17);
  if (*(a1 + 40) == 1)
  {
    v7 = *(v2 + 32);
    v13 = &unk_1F29FF530;
    v14 = v3;
    v15 = &v13;
    v12[0] = &unk_1F29FF578;
    v12[1] = v2;
    v12[3] = v12;
    v8 = *(a1 + 32);
    v9 = *(a1 + 33);
    std::unordered_set<md::OverlayTileDataType>::unordered_set(v10, &v9, 1);
    md::OverlayLayerDataSource::conditionalInvalidate(v7, &v13, v12, v8, v10);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v10);
    std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v12);
    return std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](&v13);
  }

  return result;
}

void sub_1B2DC0414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](va2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#2},std::allocator<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#2}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF578;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, void *a2)
{
  v2 = *a2 + 760;
  v3 = v2;
  do
  {
    v3 = v3[1];
    if (v3 == v2)
    {
      break;
    }

    v4 = v3[16];
    v5 = v3[17];
    if (v4 != v5)
    {
      while (*v4 != *(a1 + 8))
      {
        if (++v4 == v5)
        {
          v4 = v3[17];
          break;
        }
      }
    }
  }

  while (v4 == v5);
  return v3 != v2;
}

uint64_t std::__function::__func<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1},std::allocator<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0::operator() const(void)::{lambda(std::shared_ptr<md::OverlayTileData> const&)#1}>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F29FF530;
  *(a2 + 8) = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0,std::allocator<md::OverlayContainer::removeOverlay(VKOverlay *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FF4E8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v32[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *(a1 + 56);
  v4 = *(a1 + 58);
  v5 = *(a1 + 16);
  v6 = [v5 rasterTileProvider];
  v7 = (a1 + 24);
  if (v6)
  {
    v8 = *(*(*(v2 + 40) + 24) + 56);
    gdc::ResourceManager::resourceStore(&v26, *(v8 + 56), *(v8 + 64));
    v9 = v26;
    if (v26)
    {
      *v25 = [v6 providerID];
      v32[0] = &unk_1F29FF770;
      v32[1] = v25;
      v32[2] = v7;
      v32[3] = v32;
      gdc::ResourceStore::clearResources(v9, v32);
      std::__function::__value_func<BOOL ()(gdc::ResourceKey const&)>::~__value_func[abi:nn200100](v32);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }
  }

  v10 = [v5 level];
  v11 = [v5 areResourcesRequired];
  if (v10 <= 1)
  {
    v12 = *(v2 + 16 * v10 + 8 * v11);
    if (v12)
    {
      v13 = [v5 rasterTileProvider];
      if (v13)
      {
        v23 = 0;
      }

      else
      {
        v14 = [v5 customTileProvider];
        v23 = v14 == 0;
      }

      v15 = v5;
      if ([v15 canProvideVectorData])
      {
        v16 = 2;
      }

      else
      {
        v17 = [v15 rasterTileProvider];
        v18 = v17 == 0;

        if (v18)
        {
          v19 = [v15 customTileProvider];
          v20 = v19 == 0;

          if (v20)
          {
            v16 = 1;
          }

          else
          {
            v16 = 4;
          }
        }

        else
        {
          v16 = 3;
        }
      }

      if (v4)
      {
        v30[0] = &unk_1F29FF7B8;
        v30[1] = v2;
        v31 = v30;
        v25[0] = v16;
        std::unordered_set<md::OverlayTileDataType>::unordered_set(&v26, v25, 1);
        md::OverlayLayerDataSource::invalidateRect(v12, v7, v3, v30, v23, &v26);
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v26);
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v30);
        if ([v15 level] == 1)
        {
          v21 = *(v2 + 32);
          v28[0] = &unk_1F29FF800;
          v28[1] = v2;
          v29 = v28;
          v24 = v16;
          std::unordered_set<md::OverlayTileDataType>::unordered_set(v25, &v24, 1);
          md::OverlayLayerDataSource::invalidateRect(v21, v7, v3, v28, v23, v25);
LABEL_23:
          std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v25);
          std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v28);
        }
      }

      else
      {
        v30[0] = &unk_1F29FF848;
        v31 = v30;
        v25[0] = v16;
        std::unordered_set<md::OverlayTileDataType>::unordered_set(&v26, v25, 1);
        md::OverlayLayerDataSource::invalidateRect(v12, v7, v3, v30, v23, &v26);
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v26);
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v30);
        if ([v15 level] == 1)
        {
          v22 = *(v2 + 32);
          v28[0] = &unk_1F29FF890;
          v29 = v28;
          v24 = v16;
          std::unordered_set<md::OverlayTileDataType>::unordered_set(v25, &v24, 1);
          md::OverlayLayerDataSource::invalidateRect(v22, v7, v3, v28, v23, v25);
          goto LABEL_23;
        }
      }
    }
  }
}

void sub_1B2DC0A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](va1);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(gdc::ResourceKey const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_2,std::allocator<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_2>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF800;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_1,std::allocator<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_1>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF7B8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,BOOL ()(gdc::ResourceKey const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (gdc::ResourceKey::getInt32(v3, 3u) != **(a1 + 8))
  {
    return 0;
  }

  Int32 = gdc::ResourceKey::getInt32(v3, 0);
  v5 = gdc::ResourceKey::getInt32(v3, 1u);
  v6 = gdc::ResourceKey::getInt32(v3, 2u);
  v7 = gdc::ResourceKey::getInt32(v3, 4u);
  v26[0] = -1;
  v26[1] = v6;
  v27 = v5;
  v28 = Int32;
  v29 = 0;
  v30 = 1;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  md::TileAdjustmentHelpers::adjustTileForSize(v7, 0x200u, v26, &v23);
  if (v23 == v24)
  {
LABEL_10:
    v18 = 0;
    if (!v23)
    {
      return v18;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = v23;
LABEL_4:
    v10 = 0;
    v11 = 1 << v9[1];
    v12 = 1.0 / v11;
    v13 = v12 * (v11 + ~*(v9 + 1));
    v14 = v12 * *(v9 + 2) + v12;
    v20 = v12 * *(v9 + 2);
    v21 = v13;
    *v22 = v14;
    *&v22[1] = v13 + v12;
    v15 = &v20;
    v16 = 1;
    do
    {
      if (*&v22[v10] <= *(v8 + 8 * v10) || *v15 >= *(v8 + 16 + 8 * v10))
      {
        v9 += 32;
        if (v9 != v24)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }

      v17 = v16;
      v16 = 0;
      v15 = &v21;
      v10 = 1;
    }

    while ((v17 & 1) != 0);
    v18 = 1;
    if (!v23)
    {
      return v18;
    }
  }

  v24 = v23;
  operator delete(v23);
  return v18;
}

void sub_1B2DC0FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::_invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,BOOL ()(gdc::ResourceKey const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29FF770;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

__n128 std::__function::__func<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = &unk_1F29FF728;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v6 = *(a1 + 55);
  result = *(a1 + 40);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = result;
  *(a2 + 55) = v6;
  *(a2 + 63) = 0;
  return result;
}

void std::__function::__func<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidateRect(VKOverlay *,gm::Box<double,2> const&,std::optional<unsigned char>,BOOL)::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void md::OverlayContainer::invalidate(md::OverlayContainer *this, VKOverlay *a2, __int16 a3, int a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = 0;
  operator new();
}

void sub_1B2DC1348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void std::__function::__func<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v31[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = *(a1 + 25);
  v4 = *(a1 + 16);
  v5 = [v4 rasterTileProvider];
  if (v5)
  {
    v6 = *(*(*(v1 + 40) + 24) + 56);
    gdc::ResourceManager::resourceStore(v25, *(v6 + 56), *(v6 + 64));
    v7 = *&v25[0];
    if (*&v25[0])
    {
      *v24 = [v5 providerID];
      v31[0] = &unk_1F29FF920;
      v31[1] = v24;
      v31[3] = v31;
      gdc::ResourceStore::clearResources(v7, v31);
      std::__function::__value_func<BOOL ()(gdc::ResourceKey const&)>::~__value_func[abi:nn200100](v31);
    }

    if (*(&v25[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v25[0] + 1));
    }
  }

  if ([v4 areResourcesRequired])
  {
    v8 = [v4 level];
    if (v8 > 1)
    {
      goto LABEL_32;
    }

    v9 = (v1 + 16 * v8 + 8);
  }

  else
  {
    v10 = [v4 level];
    if (v10 > 1)
    {
      goto LABEL_32;
    }

    v9 = (v1 + 16 * v10);
  }

  v11 = *v9;
  if (*v9)
  {
    v12 = [v4 rasterTileProvider];
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v14 = [v4 customTileProvider];
      v13 = v14 == 0;
    }

    memset(v25, 0, sizeof(v25));
    v26 = 1065353216;
    if (v3)
    {
      *v24 = 258;
      std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__assign_unique<md::OverlayTileDataType const*>(v25, v24, &v24[2]);
    }

    else
    {
      v15 = v4;
      if ([v15 canProvideVectorData])
      {
        v16 = 2;
      }

      else
      {
        v17 = [v15 rasterTileProvider];
        v18 = v17 == 0;

        if (v18)
        {
          v19 = [v15 customTileProvider];
          v20 = v19 == 0;

          if (v20)
          {
            v16 = 1;
          }

          else
          {
            v16 = 4;
          }
        }

        else
        {
          v16 = 3;
        }
      }

      v24[0] = v16;
      std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__assign_unique<md::OverlayTileDataType const*>(v25, v24, &v24[1]);
    }

    if (v2)
    {
      v29[0] = &unk_1F29FF968;
      v29[1] = v1;
      v30 = v29;
      std::unordered_set<md::OverlayTileDataType>::unordered_set(v24, v25);
      md::OverlayLayerDataSource::invalidate(v11, v29, v13, v24);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v24);
      std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v29);
      if ([v4 level] == 1)
      {
        v21 = *(v1 + 32);
        v27[0] = &unk_1F29FF9B0;
        v27[1] = v1;
        v28 = v27;
        std::unordered_set<md::OverlayTileDataType>::unordered_set(v23, v25);
        md::OverlayLayerDataSource::invalidate(v21, v27, v13, v23);
LABEL_30:
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v23);
        std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v27);
      }
    }

    else
    {
      v29[0] = &unk_1F29FF9F8;
      v30 = v29;
      std::unordered_set<md::OverlayTileDataType>::unordered_set(v24, v25);
      md::OverlayLayerDataSource::invalidate(v11, v29, v13, v24);
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v24);
      std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](v29);
      if ([v4 level] == 1)
      {
        v22 = *(v1 + 32);
        v27[0] = &unk_1F29FFA40;
        v28 = v27;
        std::unordered_set<md::OverlayTileDataType>::unordered_set(v23, v25);
        md::OverlayLayerDataSource::invalidate(v22, v27, v13, v23);
        goto LABEL_30;
      }
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v25);
  }

LABEL_32:
}

void sub_1B2DC1734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a9);
  std::__function::__value_func<BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::~__value_func[abi:nn200100](&a24);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a19);

  _Unwind_Resume(a1);
}

void std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__assign_unique<md::OverlayTileDataType const*>(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1 + 2;
    v9 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v9)
    {
      v10 = a2 == a3;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      while (1)
      {
        v12 = *v4;
        *(v9 + 16) = v12;
        v11 = *v9;
        v9[1] = v12;
        if (v6)
        {
          v13 = vcnt_s8(v6);
          v13.i16[0] = vaddlv_u8(v13);
          if (v13.u32[0] > 1uLL)
          {
            v14 = v12;
            if (v6 <= v12)
            {
              v14 = v12 % v6;
            }
          }

          else
          {
            v14 = (v6 - 1) & v12;
          }

          v15 = *(*a1 + 8 * v14);
          if (v15)
          {
            for (j = *v15; j; j = *j)
            {
              v17 = j[1];
              if (v17 == v12)
              {
                if (*(j + 16) == v12)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                if (v13.u32[0] > 1uLL)
                {
                  if (v17 >= v6)
                  {
                    v17 %= v6;
                  }
                }

                else
                {
                  v17 &= v6 - 1;
                }

                if (v17 != v14)
                {
                  break;
                }
              }
            }
          }
        }

        v18 = (a1[3] + 1);
        v19 = *(a1 + 8);
        if (!v6 || (v19 * v6) < v18)
        {
          v20 = 2 * v6;
          v21 = v6 < 3 || (v6 & (v6 - 1)) != 0;
          v22 = v21 | v20;
          v23 = vcvtps_u32_f32(v18 / v19);
          if (v22 <= v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = v22;
          }

          std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, v24);
          v6 = a1[1];
          v12 = v9[1];
        }

        v25 = vcnt_s8(v6);
        v25.i16[0] = vaddlv_u8(v25);
        if (v25.u32[0] > 1uLL)
        {
          if (v12 >= v6)
          {
            v12 %= v6;
          }
        }

        else
        {
          v12 &= v6 - 1;
        }

        v26 = *a1;
        v27 = *(*a1 + 8 * v12);
        if (v27)
        {
          *v9 = *v27;
        }

        else
        {
          *v9 = *v8;
          *v8 = v9;
          *(v26 + 8 * v12) = v8;
          if (!*v9)
          {
            goto LABEL_48;
          }

          v28 = *(*v9 + 8);
          if (v25.u32[0] > 1uLL)
          {
            if (v28 >= v6)
            {
              v28 %= v6;
            }
          }

          else
          {
            v28 &= v6 - 1;
          }

          v27 = (*a1 + 8 * v28);
        }

        *v27 = v9;
LABEL_48:
        ++a1[3];
LABEL_49:
        ++v4;
        if (v11)
        {
          v9 = v11;
          if (v4 != a3)
          {
            continue;
          }
        }

        goto LABEL_51;
      }
    }

    v11 = v9;
LABEL_51:
    if (v11)
    {
      do
      {
        v29 = *v11;
        operator delete(v11);
        v11 = v29;
      }

      while (v29);
    }
  }

  if (v4 != a3)
  {
    v30 = v4;
    do
    {
      v31 = *v30++;
      std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__emplace_unique_key_args<md::OverlayTileDataType,md::OverlayTileDataType const&>(a1, v31, v4);
      v4 = v30;
    }

    while (v30 != a3);
  }
}

uint64_t std::unordered_set<md::OverlayTileDataType>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<md::OverlayTileDataType,std::hash<md::OverlayTileDataType>,std::equal_to<md::OverlayTileDataType>,std::allocator<md::OverlayTileDataType>>::__emplace_unique_key_args<md::OverlayTileDataType,md::OverlayTileDataType const&>(a1, *(i + 16), i + 16);
  }

  return a1;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_4,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_4>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return 0;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_3,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_3>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return 0;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_2,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_2>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    isOverlayTileInCurrentScene = md::OverlayContainer::_isOverlayTileInCurrentScene(*(*(a1 + 8) + 336), v3);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  else
  {
    isOverlayTileInCurrentScene = md::OverlayContainer::_isOverlayTileInCurrentScene(*(*(a1 + 8) + 336), v3);
  }

  return isOverlayTileInCurrentScene ^ 1u;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_2,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_2>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF9B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_1,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_1>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    isOverlayTileInCurrentScene = md::OverlayContainer::_isOverlayTileInCurrentScene(*(*(a1 + 8) + 336), v3);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  else
  {
    isOverlayTileInCurrentScene = md::OverlayContainer::_isOverlayTileInCurrentScene(*(*(a1 + 8) + 336), v3);
  }

  return isOverlayTileInCurrentScene ^ 1u;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_1,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_1>,BOOL ()(std::shared_ptr<md::OverlayTileData> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF968;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_0,std::allocator<md::OverlayContainer::_invalidate(VKOverlay *,BOOL,BOOL)::$_0>,BOOL ()(gdc::ResourceKey const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29FF920;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

id std::__function::__func<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = &unk_1F29FF8D8;
  *(a2 + 8) = v4;
  result = v5;
  *(a2 + 16) = result;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 26) = 0;
  *(a2 + 30) = 0;
  return result;
}

void std::__function::__func<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0,std::allocator<md::OverlayContainer::invalidate(VKOverlay *,BOOL,BOOL)::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void md::OverlayContainer::computeTileExclusionAreas(uint64_t a1, void **a2)
{
  v3 = 0;
  v49 = a1 + 160;
  v4 = 1;
  do
  {
    v50 = v4;
    v5 = (v49 + 24 * v3);
    v6 = *v5;
    v7 = v5[1];
    if (*v5 != v7)
    {
      v8 = 939530240;
      if (v4)
      {
        v8 = 0x8003FFC3800;
      }

      v51 = v8;
      if (v4)
      {
        v9 = 75684;
      }

      else
      {
        v9 = 384;
      }

      while (1)
      {
        v10 = *(v6 + 8);
        [v10 replaceMapContentInRect];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        if ((GEOMapRectIsNull() & 1) == 0)
        {
          break;
        }

LABEL_31:
        v6 += 24;
        if (v6 == v7)
        {
          goto LABEL_34;
        }
      }

      v19 = *(MEMORY[0x1E69A1688] + 16);
      v20 = *(MEMORY[0x1E69A1688] + 24);
      v21 = *(v6 + 8);
      v22 = [v21 rasterTileProvider];

      v23 = *(v6 + 8);
      v24 = v23;
      if (v22)
      {
        v25 = [v23 rasterTileProvider];
        LOBYTE(v26) = [v25 minimumZ];
        v27 = *(v6 + 8);
        v28 = [v27 rasterTileProvider];
        v29 = [v28 maximumZ];
      }

      else
      {
        v30 = [v23 customTileProvider];

        if (!v30)
        {
          v26 = 1;
          v31 = 26;
          goto LABEL_14;
        }

        v24 = *(v6 + 8);
        v25 = [v24 customTileProvider];
        LOBYTE(v26) = [v25 minimumZ];
        v27 = *(v6 + 8);
        v28 = [v27 customTileProvider];
        v29 = [v28 maximumZ];
      }

      v31 = v29;
      v26 = v26;

LABEL_14:
      *&v32 = v12 / v19;
      *(&v32 + 1) = 1.0 - (v18 + v14) / v20;
      *&v33 = (v16 + v12) / v19;
      *(&v33 + 1) = 1.0 - v14 / v20;
      v34 = a2[1];
      v35 = a2[2];
      if (v34 >= v35)
      {
        v37 = 0x8E38E38E38E38E39 * ((v34 - *a2) >> 3);
        v38 = v37 + 1;
        if (v37 + 1 > 0x38E38E38E38E38ELL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v39 = 0x8E38E38E38E38E39 * ((v35 - *a2) >> 3);
        if (2 * v39 > v38)
        {
          v38 = 2 * v39;
        }

        if (v39 >= 0x1C71C71C71C71C7)
        {
          v40 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::TileExclusionArea>>(v40);
        }

        v41 = 72 * v37;
        *v41 = v32;
        *(v41 + 16) = v33;
        *(v41 + 32) = v26 | (v31 << 8);
        *(v41 + 40) = v51;
        *(v41 + 48) = v9;
        *(v41 + 56) = 0;
        *(v41 + 64) = 0;
        v42 = *a2;
        v43 = a2[1];
        v44 = *a2 + 72 * v37 - v43;
        if (*a2 != v43)
        {
          v45 = *a2 + v41 - v43;
          do
          {
            *v45 = *v42;
            v46 = v42[1];
            v47 = v42[2];
            v48 = v42[3];
            *(v45 + 8) = *(v42 + 8);
            *(v45 + 2) = v47;
            *(v45 + 3) = v48;
            *(v45 + 1) = v46;
            v42 = (v42 + 72);
            v45 += 72;
          }

          while (v42 != v43);
          v42 = *a2;
        }

        v36 = v41 + 72;
        *a2 = v44;
        a2[1] = (v41 + 72);
        a2[2] = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        *v34 = v32;
        *(v34 + 16) = v33;
        *(v34 + 32) = v26 | (v31 << 8);
        *(v34 + 40) = v51;
        *(v34 + 48) = v9;
        v36 = v34 + 72;
        *(v34 + 56) = 0;
        *(v34 + 64) = 0;
      }

      a2[1] = v36;
      goto LABEL_31;
    }

LABEL_34:
    v4 = 0;
    v3 = 1;
  }

  while ((v50 & 1) != 0);
}

void md::OverlayContainer::visitOverlays(uint64_t a1, uint64_t a2)
{
  md::OverlayContainer::belowOverlays(&v8, a1);
  v4 = v8;
  v5 = v9;
  while (v4 != v5)
  {
    std::function<void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::operator()(*(a2 + 24), v4, 0);
    v4 += 24;
  }

  v10 = &v8;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v10);
  md::OverlayContainer::aboveOverlays(&v8, a1);
  v6 = v8;
  v7 = v9;
  while (v6 != v7)
  {
    std::function<void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::operator()(*(a2 + 24), v6, 1);
    v6 += 24;
  }

  v10 = &v8;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v10);
}

void sub_1B2DC255C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a12);
  _Unwind_Resume(a1);
}

id std::function<void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, &v6);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return [(VKLineMarker *)v4 .cxx_construct];
}

void sub_1B2DC27B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void (__cdecl ***result)(std::__shared_weak_count *__hidden this))
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        result = *(v3 - 1);
        if (result)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](result);
        }

        v3 = (v3 - 72);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::MarkerFeatureHandle>(v6, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::MarkerFeatureHandle>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::MarkerFeatureHandle>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 72 * a2, 0x10600400BFC2BF9uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void sub_1B2DC2A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2DC2B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::ARFeatureShadowExternalMeshLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 576);
  if (!v5)
  {
    return 26;
  }

  v9 = *(a1 + 64);
  v21 = *v9;
  v22 = *(v9 + 2);
  v10 = *(v9 + 6);
  v11 = *(v9 + 9);
  v12.f32[0] = *(a1 + 680) - *(a1 + 672);
  v12.f32[1] = (*(a1 + 684) - *(a1 + 676)) * 0.5;
  v13 = vmulq_f64(*(v9 + 56), vcvtq_f64_f32(v12));
  v14 = *(v9 + 5);
  *(v5 + 56) = *(v9 + 24);
  *(v5 + 72) = v14;
  *(v5 + 80) = v10;
  *(v5 + 48) = v22;
  *(v5 + 32) = v21;
  *(v5 + 88) = v13;
  *(v5 + 104) = v11;
  geo::Transform<double>::toMatrix(v20, v9);
  v15 = v20[5];
  *(a1 + 752) = v20[4];
  *(a1 + 768) = v15;
  v16 = v20[7];
  *(a1 + 784) = v20[6];
  *(a1 + 800) = v16;
  v17 = v20[1];
  *(a1 + 688) = v20[0];
  *(a1 + 704) = v17;
  v18 = v20[3];
  *(a1 + 720) = v20[2];
  *(a1 + 736) = v18;
  *(a1 + 544) = *a5;
  *(a1 + 548) = a5[1];
  md::CollisionObject::setLocalBounds(a1 + 312, a1 + 672);
  *(a1 + 520) = *a4;
  *(a1 + 524) = a4[1];
  *(a1 + 344) = *a4;
  *(a1 + 348) = a4[1];
  md::CollisionObject::setupShapeData(a1 + 312);
  *(a1 + 424) = a1 + 688;
  *(a1 + 408) = *(a1 + 948);
  return 37;
}

float md::ARFeatureShadowExternalMeshLabelPart::updateForDisplay(md::ARFeatureShadowExternalMeshLabelPart *this)
{
  *(this + 42) = *(this + 41);
  result = *(this + 236);
  *(this + 237) = result;
  return result;
}

uint64_t md::ARFeatureShadowExternalMeshLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  result = md::ExternalMeshLabelPart::layoutForStaging(a1);
  if (result == 37)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a1 + 664 + 4 * v9);
      v11 = *(a1 + 656 + 4 * v9);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v10 >= v11);
    if (v10 >= v11)
    {
      geo::Transform<double>::toMatrix(v16, *(a1 + 56));
      v12 = v16[5];
      *(a1 + 880) = v16[4];
      *(a1 + 896) = v12;
      v13 = v16[7];
      *(a1 + 912) = v16[6];
      *(a1 + 928) = v13;
      v14 = v16[1];
      *(a1 + 816) = v16[0];
      *(a1 + 832) = v14;
      v15 = v16[3];
      *(a1 + 848) = v16[2];
      *(a1 + 864) = v15;
      *(a1 + 304) = *a4;
      *(a1 + 308) = a4[1];
      md::CollisionObject::setLocalBounds(a1 + 72, a1 + 656);
      *(a1 + 280) = *a3;
      *(a1 + 284) = a3[1];
      *(a1 + 104) = *a3;
      *(a1 + 108) = a3[1];
      md::CollisionObject::setupShapeData(a1 + 72);
      *(a1 + 184) = a1 + 816;
      *(a1 + 168) = *(a1 + 944);
      return 37;
    }

    else
    {
      return 13;
    }
  }

  return result;
}

float md::ARFeatureShadowExternalMeshLabelPart::updateWithStyle(md::ARFeatureShadowExternalMeshLabelPart *this, md::LabelManager *a2)
{
  result = *(**(this + 4) + 172);
  *(this + 236) = result;
  return result;
}

void md::ARFeatureShadowExternalMeshLabelPart::~ARFeatureShadowExternalMeshLabelPart(md::ARFeatureShadowExternalMeshLabelPart *this)
{
  md::ExternalMeshLabelPart::~ExternalMeshLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

md::LabelPart *md::ARFeatureShadowExternalMeshLabelPart::ARFeatureShadowExternalMeshLabelPart(md::LabelPart *this, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::LabelPart::LabelPart(this);
  *this = &unk_1F29E2FE8;
  *(this + 36) = 0u;
  *(this + 74) = a2;
  *(this + 75) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  *this = &unk_1F29FFA88;
  *(this + 41) = xmmword_1B33B0730;
  *(this + 42) = xmmword_1B33B0730;
  *(this + 118) = 0;
  return this;
}

void *std::vector<GeoCodecsFeatureStylePair>::vector[abi:nn200100](void *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

uint64_t md::UniLineLabelFeature::hasAnnotatedShieldText(md::UniLineLabelFeature *this)
{
  if (*(this + 449) == 1)
  {
    return 0;
  }

  result = (*(*this + 480))(this, 0);
  if (result)
  {
    v2 = *(result + 23);
    if (v2 < 0)
    {
      v2 = *(result + 8);
    }

    return v2 != 0;
  }

  return result;
}

void md::UniLineLabelFeature::debugPopulateStyleAttributes(uint64_t *a1, float *a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 64))(a1))
  {
    md::createFeatureAttributeSet(v4, a1 + 52);
    std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__emplace_unique_key_args<gss::FeatureAttributeSet,gss::FeatureAttributeSet>(a2, v4[0], v4[1], v4);
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v4);
  }

  else
  {

    md::LabelFeature::debugPopulateStyleAttributes(a1, a2);
  }
}

void sub_1B2DC31F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__emplace_unique_key_args<gss::FeatureAttributeSet,gss::FeatureAttributeSet>(float *a1, gss::FeatureAttributeSet *this, gss::FeatureAttributeSet *a3, uint64_t **a4)
{
  v9 = gss::FeatureAttributeSet::hash(this, a3);
  v10 = v9;
  v11 = *(a1 + 1);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v11)
      {
        v4 = v9 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        do
        {
          v16 = v15[1];
          if (v16 == v10)
          {
            v9 = gss::FeatureAttributeSet::operator==(v15[2], v15[3], this, a3);
            if (v9)
            {
              return;
            }
          }

          else
          {
            if (v13 > 1)
            {
              if (v16 >= v11)
              {
                v16 %= v11;
              }
            }

            else
            {
              v16 &= v11 - 1;
            }

            if (v16 != v4)
            {
              break;
            }
          }

          v15 = *v15;
        }

        while (v15);
      }
    }
  }

  v17 = mdm::zone_mallocator::instance(v9);
  v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<gss::FeatureAttributeSet,void *>>(v17);
  *v18 = 0;
  *(v18 + 1) = v10;
  gss::FeatureAttributeSet::FeatureAttributeSet(v18 + 2, a4);
  v19 = (*(a1 + 5) + 1);
  v20 = a1[12];
  if (!v11 || (v20 * v11) < v19)
  {
    v21 = 1;
    if (v11 >= 3)
    {
      v21 = (v11 & (v11 - 1)) != 0;
    }

    v22 = v21 | (2 * v11);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__rehash<true>(a1, v24);
    v11 = *(a1 + 1);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v25 = *a1;
  v26 = *(*a1 + 8 * v4);
  if (v26)
  {
    *v18 = *v26;
LABEL_38:
    *v26 = v18;
    goto LABEL_39;
  }

  *v18 = *(a1 + 3);
  *(a1 + 3) = v18;
  *(v25 + 8 * v4) = a1 + 6;
  if (*v18)
  {
    v27 = *(*v18 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v27 >= v11)
      {
        v27 %= v11;
      }
    }

    else
    {
      v27 &= v11 - 1;
    }

    v26 = (*a1 + 8 * v27);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 5);
}

void std::__hash_table<gss::FeatureAttributeSet,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,geo::allocator_adapter<gss::FeatureAttributeSet,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *result, size_t __n)
{
  v2 = result;
  if (__n == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = __n;
    if ((__n & (__n - 1)) != 0)
    {
      result = std::__next_prime(__n);
      v3 = result;
    }
  }

  v4 = *(v2 + 8);
  if (v3 <= *&v4)
  {
    if (v3 >= *&v4)
    {
      return;
    }

    result = vcvtps_u32_f32(*(v2 + 5) / *(v2 + 12));
    if (*&v4 < 3uLL || (v13 = vcnt_s8(v4), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      result = std::__next_prime(result);
    }

    else
    {
      v14 = (1 << -__clz(result - 1));
      if (result >= 2)
      {
        result = v14;
      }
    }

    if (v3 <= result)
    {
      v3 = result;
    }

    if (v3 >= *&v4)
    {
      return;
    }

    if (!v3)
    {
      std::unique_ptr<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> **,0>(v2, 0);
      *(v2 + 1) = 0;
      return;
    }
  }

  v5 = mdm::zone_mallocator::instance(result);
  v6 = pthread_rwlock_rdlock((v5 + 32));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "read lock", v7);
  }

  v8 = malloc_type_zone_malloc(*v5, 8 * v3, 0x2004093837F09uLL);
  atomic_fetch_add((v5 + 24), 1u);
  geo::read_write_lock::unlock((v5 + 32));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> **,0>(v2, v8);
  v9 = 0;
  *(v2 + 1) = v3;
  do
  {
    *(*v2 + 8 * v9++) = 0;
  }

  while (v3 != v9);
  v10 = *(v2 + 3);
  if (v10)
  {
    v11 = v10[1];
    v12 = vcnt_s8(v3);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      if (v11 >= v3)
      {
        v11 %= v3;
      }
    }

    else
    {
      v11 &= v3 - 1;
    }

    *(*v2 + 8 * v11) = v2 + 24;
    v15 = *v10;
    if (*v10)
    {
      do
      {
        v16 = v15[1];
        if (v12.u32[0] > 1uLL)
        {
          if (v16 >= v3)
          {
            v16 %= v3;
          }
        }

        else
        {
          v16 &= v3 - 1;
        }

        if (v16 != v11)
        {
          v17 = *v2;
          if (!*(*v2 + 8 * v16))
          {
            *(v17 + 8 * v16) = v10;
            goto LABEL_30;
          }

          *v10 = *v15;
          *v15 = **(v17 + 8 * v16);
          **(v17 + 8 * v16) = v15;
          v15 = v10;
        }

        v16 = v11;
LABEL_30:
        v10 = v15;
        v15 = *v15;
        v11 = v16;
      }

      while (v15);
    }
  }
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<gss::FeatureAttributeSet,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *result, uint64_t a2)
{
  if (result)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a2 + 16));
  }

  if (a2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<gss::FeatureAttributeSet,void *>>(v3, a2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<gss::FeatureAttributeSet,void *>>(uint64_t a1, void *a2)
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

void std::unique_ptr<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *>(v3, v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<gss::FeatureAttributeSet,void *> *> *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<gss::FeatureAttributeSet,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x30uLL, 0x1020040FAFD3B39uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void md::UniLineLabelFeature::debugPopulateAttributeStrings(md::UniLineLabelFeature *this, NSMutableSet *a2, const md::LabelManager *a3, const md::LabelIdentifier *a4)
{
  v12 = a2;
  if ((*(*this + 64))(this))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = md::HighlightHelper::debugAttributesToString(this + 416);
    v9 = [v7 stringWithFormat:@"{%@}", v8];
    [(NSMutableSet *)v12 addObject:v9];

    v10 = md::LabelFeature::debugClientAttributesToString(this + 52, *(a3 + 42));
    if (v10)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}", v10];
      [(NSMutableSet *)v12 addObject:v11];
    }
  }

  else
  {
    md::LineLabelFeature::debugPopulateAttributeStrings(this, v12, a3, a4);
  }
}

uint64_t md::UniLineLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v25);
  v36 = 4;
  strcpy(&v34, "Road");
  md::LineLabelFeature::debugRoadString(__p, a1, a2, a3, a4, &v34);
  if ((v24 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v11 = v24;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, v10, v11);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  if (v36 < 0)
  {
    v13 = v34;
    v14 = mdm::zone_mallocator::instance(v12);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v14, v13);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, "Road Attributes:\n", 17);
  if (!(*(*a1 + 64))(a1))
  {
    md::LineLabelPlacer::positionForIdentifier(&v34, a1 + 192, *a3);
    if (v34)
    {
      v15 = (*(*v34 + 200))(v34);
      md::LabelLineResolvedPosition::ensureValidLinePosition(v15, v16);
      v17 = md::LabelLinePosition::geoFeature(v15);
      if (v17)
      {
        v18 = v17;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, "  RoadClass=", 12);
        LOBYTE(__p[0]) = *(v18 + 151);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, __p, 1);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, "\n", 1);
      }
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v35);
    }
  }

  if ((v32 & 0x10) != 0)
  {
    v20 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v20 = v28;
    }

    locale = v27[4].__locale_;
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v19 = 0;
      a5[23] = 0;
      goto LABEL_30;
    }

    locale = v27[1].__locale_;
    v20 = v27[3].__locale_;
  }

  v19 = v20 - locale;
  if ((v20 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  a5[23] = v19;
  if (v19)
  {
    memmove(a5, locale, v19);
  }

LABEL_30:
  a5[v19] = 0;
  v25 = *MEMORY[0x1E69E54E8];
  *(&v25 + *(v25 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v26 = MEMORY[0x1E69E5548] + 16;
  if (v30 < 0)
  {
    operator delete(v29);
  }

  v26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v27);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v33);
}

void sub_1B2DC3DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 96);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  a16 = *MEMORY[0x1E69E54E8];
  *(&a16 + *(a16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a17 = MEMORY[0x1E69E5548] + 16;
  if (a30 < 0)
  {
    operator delete(__p);
  }

  a17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a18);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a33);
  _Unwind_Resume(a1);
}

uint64_t md::LabelLinePosition::geoFeature(md::LabelLinePosition *this)
{
  if (*this && *(this + 10) == *(*this + 16) && (v1 = *(this + 3)) != 0 && (*(this + 17) & 0x80000000) == 0 && (v2 = *v1) != 0 && !*(v2 + 32))
  {
    return *(v2 + 16);
  }

  else
  {
    return 0;
  }
}

void md::UniLineLabelFeature::populateFeatureInfo(void *a1, _DWORD *a2)
{
  md::LabelFeature::populateFeatureInfo(a1, a2);
  a2[16] = -1431655765 * ((a1[45] - a1[44]) >> 4);
  v4 = a1[57];
  if (v4)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=((a2 + 18), (v4 + 240));
    v5 = (a1[57] + 272);

    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=((a2 + 26), v5);
  }
}

void ***md::UniLineLabelFeature::updateText(void ***result, uint64_t *a2)
{
  v2 = result;
  v35 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (*(*a2 + 176) == 14)
  {
    std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::clear[abi:nn200100](result + 48);
    v5 = *(v2 + 192);
    v31 = &unk_1F2A00150;
    v32 = v2;
    *(&v33 + 1) = &v31;
    md::LabelLineStore::enumerateLabelLineSegments(*(v5 + 96), *(v5 + 104), &v31);
    result = std::__function::__value_func<void ()(std::unique_ptr<md::LabelLineSegment> const&)>::~__value_func[abi:nn200100](&v31);
    v3 = *a2;
  }

  v6 = *(v3 + 192);
  v7 = *(v3 + 184);
  if (v6 != v7 && *(v2 + 352) == *(v2 + 360))
  {
    v8 = 0;
    v9 = *(v3 + 176);
    if (v9 > 12)
    {
      if (v9 != 14)
      {
        if (v9 != 13)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else if (v9 != 2)
    {
      if (v9 != 9)
      {
LABEL_13:
        v10 = (v2 + 360);
        do
        {
          v11 = *v7;
          v13 = *(v2 + 360);
          v12 = *(v2 + 368);
          if (v13 >= v12)
          {
            v15 = *(v2 + 352);
            v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v15) >> 4);
            v17 = v16 + 1;
            if (v16 + 1 > 0x555555555555555)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 4);
            if (2 * v18 > v17)
            {
              v17 = 2 * v18;
            }

            if (v18 >= 0x2AAAAAAAAAAAAAALL)
            {
              v19 = 0x555555555555555;
            }

            else
            {
              v19 = v17;
            }

            v34 = v2 + 376;
            if (v19)
            {
              v20 = mdm::zone_mallocator::instance(result);
              v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelShieldEntry>(v20, v19);
            }

            else
            {
              v21 = 0;
            }

            v31 = v21;
            v32 = (v21 + 48 * v16);
            *&v33 = v32;
            *(&v33 + 1) = v21 + 48 * v19;
            std::__construct_at[abi:nn200100]<md::LabelShieldEntry,md::ShieldFeatureType &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> &,unsigned long long &,md::LabelShieldEntry*>(v32, v8, (v11 + 8), *(v11 + 48));
            *&v33 = v33 + 48;
            v22 = *(v2 + 352);
            v23 = *(v2 + 360);
            v24 = v32 + v22 - v23;
            std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>,md::LabelShieldEntry*>(v22, v23, v24);
            v25 = *(v2 + 352);
            *(v2 + 352) = v24;
            v26 = *(v2 + 368);
            v30 = v33;
            *v10 = v33;
            *&v33 = v25;
            *(&v33 + 1) = v26;
            v31 = v25;
            v32 = v25;
            result = std::__split_buffer<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator> &>::~__split_buffer(&v31);
            v14 = v30;
          }

          else
          {
            result = std::__construct_at[abi:nn200100]<md::LabelShieldEntry,md::ShieldFeatureType &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> &,unsigned long long &,md::LabelShieldEntry*>(*(v2 + 360), v8, (v11 + 8), *(v11 + 48));
            v14 = v13 + 48;
            *v10 = v13 + 48;
          }

          v27 = 0;
          *v10 = v14;
          v28 = *v7 + 56;
          v29 = v14 - 8;
          do
          {
            *(v29 + v27) = *(v28 + v27);
            ++v27;
          }

          while (v27 != 4);
          v7 += 2;
        }

        while (v7 != v6);
        return result;
      }

LABEL_11:
      v8 = 2;
      goto LABEL_13;
    }

    v8 = 1;
    goto LABEL_13;
  }

  return result;
}

void sub_1B2DC42B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(std::unique_ptr<md::LabelLineSegment> const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::__construct_at[abi:nn200100]<md::LabelShieldEntry,md::ShieldFeatureType &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> &,unsigned long long &,md::LabelShieldEntry*>(mdm::zone_mallocator *__dst, char a2, __int128 *a3, uint64_t a4)
{
  *(__dst + 24) = *(a3 + 24);
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(__dst + 2) = *(a3 + 2);
    *__dst = v7;
  }

  *(__dst + 4) = a4;
  *(__dst + 10) = 0;
  *(__dst + 44) = a2;
  return __dst;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelShieldEntry>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 48 * a2, 0x101204072C7FFF6uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__function::__func<md::UniLineLabelFeature::updateText(std::shared_ptr<md::LabelExternalRoadFeature> const&,BOOL)::$_0,std::allocator<md::UniLineLabelFeature::updateText(std::shared_ptr<md::LabelExternalRoadFeature> const&,BOOL)::$_0>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::operator()(mdm::zone_mallocator *result, uint64_t *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*(*a2 + 32) == 1)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *v3;
      if (v4)
      {
        if ((*(v4 + 263) & 0x8000000000000000) != 0)
        {
          if (!*(v4 + 248))
          {
            return;
          }
        }

        else if (!*(v4 + 263))
        {
          return;
        }

        v5 = *(result + 1);
        v15 = 0uLL;
        v16 = 0;
        md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(__dst, (v4 + 240), &v15);
        v6 = md::LineLabelFeature::textIndexForText(v5, __dst);
        *(v2 + 38) = v6;
        if (v14 < 0)
        {
          v7 = v13;
          v8 = mdm::zone_mallocator::instance(v6);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v8, v7);
        }

        if (v12 < 0)
        {
          v9 = *__dst;
          v10 = mdm::zone_mallocator::instance(v6);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v10, v9);
        }
      }
    }
  }
}

void sub_1B2DC44C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    v23 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v23, a17);
  }

  if (a15 < 0)
  {
    v24 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v24, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<md::UniLineLabelFeature::updateText(std::shared_ptr<md::LabelExternalRoadFeature> const&,BOOL)::$_0,std::allocator<md::UniLineLabelFeature::updateText(std::shared_ptr<md::LabelExternalRoadFeature> const&,BOOL)::$_0>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A00150;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::UniLineLabelFeature::updateText(void const*,BOOL)::$_0,std::allocator<md::UniLineLabelFeature::updateText(void const*,BOOL)::$_0>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A00108;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

md::LabelPart *md::UniLineLabelFeature::newRootPart(uint64_t *a1, uint64_t a2, uint64_t a3, md::LabelStyle *a4, _BYTE *a5)
{
  v31[4] = *MEMORY[0x1E69E9840];
  md::LineLabelPlacer::positionForIdentifier(&v29, (a1 + 24), *(a3 + 48));
  if (!v29)
  {
    v10 = 0;
    goto LABEL_24;
  }

  v10 = 0;
  v11 = BYTE1(v29->__shared_owners_);
  if (v11 <= 3)
  {
    switch(v11)
    {
      case 1u:
        v12 = md::UniLineLabelFeature::newTextPart(a1, a2, a3, a4, a5, &v29);
        break;
      case 2u:
        v21 = md::UniLineLabelFeature::newTextPart(a1, a2, a3, a4, a5, &v29);
        v22 = md::UniLineLabelFeature::newShieldPart(a1, a2, a3, a4, &v29);
        v10 = v22;
        if (v21)
        {
          if (v22)
          {
            ((*v22)[8].__shared_owners_)(v31, v22);
            v23 = v31[0];
            v24 = v31[1];
            std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v31);
            if (v23 == v24)
            {
              v27 = mdm::zone_mallocator::instance(v25);
              v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v27, 0x2C0uLL);
              v25 = md::MultipleShieldLabelPart::MultipleShieldLabelPart(v26, &v29);
              if (v26)
              {
                v25 = md::CompositeLabelPart::addLabelPart(v26, v10);
              }
            }

            else
            {
              v26 = v10;
            }

            v28 = mdm::zone_mallocator::instance(v25);
            v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v28, 0x2D0uLL);
            md::LineTextWithAuxLabelPart::LineTextWithAuxLabelPart(v10, &v29, v21, v26);
          }

          else
          {
            v10 = v21;
          }
        }

        goto LABEL_24;
      case 3u:
        v12 = md::UniLineLabelFeature::newShieldPart(a1, a2, a3, a4, &v29);
        break;
      default:
        goto LABEL_24;
    }

LABEL_23:
    v10 = v12;
    goto LABEL_24;
  }

  if (BYTE1(v29->__shared_owners_) <= 6u)
  {
    if (v11 - 4 >= 2)
    {
      if (v11 != 6)
      {
        goto LABEL_24;
      }

      v12 = md::UniLineLabelFeature::newAnnotationPart(a1, a2, a3, a5, &v29);
    }

    else
    {
      v12 = md::UniLineLabelFeature::newArrowPart(a2, a3, a4, &v29, v11 == 4);
    }

    goto LABEL_23;
  }

  if (v11 == 7)
  {
    v17 = md::UniLineLabelFeature::newTextPart(a1, a2, a3, a4, a5, &v29);
    v18 = md::UniLineLabelFeature::newAnnotationPart(a1, a2, a3, a5, &v29);
    v10 = v18;
    if (!v17)
    {
      goto LABEL_24;
    }

    if (v18)
    {
      v19 = mdm::zone_mallocator::instance(v18);
      v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v19, 0x2D0uLL);
      md::LineTextWithAuxLabelPart::LineTextWithAuxLabelPart(v16, &v29, v17, v10);
      goto LABEL_21;
    }

    v10 = v17;
  }

  else if (v11 == 8)
  {
    v13 = md::UniLineLabelFeature::newTextPart(a1, a2, a3, a4, a5, &v29);
    v14 = md::UniLineLabelFeature::newArrowPart(a2, a3, a4, &v29, 0);
    v10 = v14;
    if (v13)
    {
      if (v14)
      {
        v15 = mdm::zone_mallocator::instance(v14);
        v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v15, 0x2D0uLL);
        md::LineTextWithAuxLabelPart::LineTextWithAuxLabelPart(v16, &v29, v13, v10);
LABEL_21:
        v10 = v16;
        goto LABEL_24;
      }

      v10 = v13;
    }
  }

LABEL_24:
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  return v10;
}

void sub_1B2DC498C(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v13 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v13, v11);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(a1);
}

md::LabelPart *md::UniLineLabelFeature::newTextPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  if (*(md::LabelStyle::textStyleGroup(a4, 0) + 100) != 0.0)
  {
    v10 = *(a1 + 384);
    v11 = *(a1 + 392);
    if (v10 != v11)
    {
      if (*(a1 + 449) == 1)
      {
        if ((v11 - v10) >= 0x41)
        {
          v12 = md::LabelStyle::textStyleGroup(a4, 0);
          md::LabelFeature::textDataForZoom(&v19, a1, 0, v12);
          if (v19)
          {
            md::LabelFeature::textDataForZoom(&v17, a1, 1, v12);
            if (v17)
            {
              operator new();
            }

            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v18);
            }
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v20);
          }
        }
      }

      else
      {
        if ((*(**a6 + 200))())
        {
          v13 = (*(**a6 + 200))();
          md::LabelLineResolvedPosition::ensureValidLinePosition(v13, v14);
          v15 = md::LabelLinePosition::textIndex(v13);
          if (v15 == 255)
          {
            return 0;
          }
        }

        else
        {
          v15 = 0;
        }

        v16 = md::LabelStyle::textStyleGroup(a4, 0);
        md::LabelFeature::textDataForZoom(&v19, a1, v15, v16);
        if (v19)
        {
          operator new();
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        }
      }
    }
  }

  return 0;
}

void sub_1B2DC4F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(a1);
}

void *md::UniLineLabelFeature::newAnnotationPart(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 8);
  v9 = *(a3 + 48);
  v10 = atomic_load((a3 + 1328));
  v11 = (*(*v8 + 568))(v8, v9, 0, v10 & 1, a2);
  if (*v11)
  {
    v12 = md::LabelStyle::textStyleGroup(*v11, 1);
    if (*(v12 + 100) > 0.0)
    {
      v13 = v12;
      if ((*(**a5 + 120))())
      {
        v14 = (*(**a5 + 120))();
        v15 = *v11;
        v16 = *(*v11 + 264);
        if (!v16)
        {
          v17 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(*v11);
          v16 = *v17;
          *(v15 + 264) = *v17;
        }

        if (*(v16 + 12))
        {
          v18 = *(v16 + 12);
        }

        else
        {
          v18 = 4;
        }

        if (v14)
        {
          v19 = *(v16 + 64);
          v29 = 0;
          v30 = 0;
          v20 = *(v14 + 8);
          if (v20)
          {
            v21 = std::__shared_weak_count::lock(v20);
            v30 = v21;
            if (v21)
            {
              v29 = *v14;
            }
          }

          else
          {
            v21 = 0;
          }

          md::LabelFeature::tileAnnotationText(&v31, &v29, *(v14 + 140), *(v14 + 150), v18, v19);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v21);
          }

          if (v36)
          {
            v22 = md::LineLabelFeature::textIndexForText(a1, &v31);
            v23 = v22;
            if (v36)
            {
              if (v35 < 0)
              {
                v24 = v34;
                v25 = mdm::zone_mallocator::instance(v22);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v25, v24);
              }

              if (v33 < 0)
              {
                v26 = v31;
                v27 = mdm::zone_mallocator::instance(v22);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v27, v26);
              }
            }

            if (v23 != 255)
            {
              md::LabelFeature::textDataForZoom(&v31, a1, v23, v13);
              if (v31)
              {
                operator new();
              }

              if (v32)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v32);
              }
            }
          }
        }

        else
        {
          LOBYTE(v31) = 0;
          v36 = 0;
        }
      }
    }
  }

  return 0;
}

void sub_1B2DC53E0(mdm::zone_mallocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, mdm::zone_mallocator *a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31)
{
  v35 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v35, v31);
  std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count **md::UniLineLabelFeature::newShieldPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count **a5)
{
  v38 = *MEMORY[0x1E69E9840];
  __dst[0] = 0;
  __dst[1] = 0;
  j = 0;
  v10 = (*(*a1 + 64))(a1);
  if (v10)
  {
    if (__dst != (a1 + 352))
    {
      v12 = *(a1 + 352);
      v11 = *(a1 + 360);
      v13 = v11 - v12;
      if (j - __dst[0] >= (v11 - v12))
      {
        v24 = __dst[1] - __dst[0];
        if ((__dst[1] - __dst[0]) >= v13)
        {
          v10 = std::__copy_impl::operator()[abi:nn200100]<md::LabelShieldEntry *,md::LabelShieldEntry *,md::LabelShieldEntry *>(v12, v11, __dst[0]);
          v28 = v10;
          for (i = __dst[1]; i != v28; std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>(i))
          {
            i = (i - 48);
          }

          __dst[1] = v28;
        }

        else
        {
          v25 = (v12 + v24);
          v10 = std::__copy_impl::operator()[abi:nn200100]<md::LabelShieldEntry *,md::LabelShieldEntry *,md::LabelShieldEntry *>(v12, v12 + v24, __dst[0]);
          v26 = __dst[1];
          if (v25 != v11)
          {
            v10 = __dst[1];
            do
            {
              v27 = std::construct_at[abi:nn200100]<md::LabelShieldEntry,md::LabelShieldEntry&,md::LabelShieldEntry*>(v10, v25);
              v25 += 3;
              v10 = (v27 + 48);
            }

            while (v25 != v11);
            v26 = v10;
          }

          __dst[1] = v26;
        }
      }

      else
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
        std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__vdeallocate(__dst);
        if (v14 > 0x555555555555555)
        {
          goto LABEL_34;
        }

        v16 = 0x5555555555555556 * ((j - __dst[0]) >> 4);
        if (v16 <= v14)
        {
          v16 = v14;
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((j - __dst[0]) >> 4) >= 0x2AAAAAAAAAAAAAALL ? 0x555555555555555 : v16;
        if (v17 > 0x555555555555555)
        {
LABEL_34:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v18 = mdm::zone_mallocator::instance(v15);
        v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelShieldEntry>(v18, v17);
        __dst[0] = v10;
        __dst[1] = v10;
        for (j = v10 + 48 * v17; v12 != v11; v10 = (v19 + 48))
        {
          v19 = std::construct_at[abi:nn200100]<md::LabelShieldEntry,md::LabelShieldEntry&,md::LabelShieldEntry*>(v10, v12);
          v12 += 3;
        }

        __dst[1] = v10;
      }
    }
  }

  else
  {
    v20 = ((*a5)->__vftable[5].~__shared_weak_count)();
    md::LabelLineResolvedPosition::ensureValidLinePosition(v20, v21);
    v22 = md::LabelLinePosition::geoFeature(v20);
    v23 = atomic_load((a2 + 3426));
    md::UniLineLabelFeature::shieldsForFeature(&v34, v22, v23 & 1);
    std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__vdeallocate(__dst);
    *__dst = v34;
    j = v35;
    v35 = 0;
    v33 = &v34;
    v34 = 0uLL;
    std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v33);
  }

  if ((__dst[1] - __dst[0]) == 48)
  {
    md::LabelStyle::shieldIcon(&v34, a4, a2, a3, __dst[0], 1, -1);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((__dst[1] - __dst[0]) >> 4) < 2)
  {
    v31 = 0;
  }

  else
  {
    v30 = mdm::zone_mallocator::instance(v10);
    v31 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v30, 0x2C0uLL);
    md::MultipleShieldLabelPart::MultipleShieldLabelPart(v31, a5);
    if (v31)
    {
      ((*v31)[7].__shared_owners_)(v31, 2);
      if (__dst[1] != __dst[0])
      {
        md::LabelStyle::shieldIcon(&v34, a4, a2, a3, __dst[0], 1, -1);
      }
    }
  }

  *&v34 = __dst;
  std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v34);
  return v31;
}

void sub_1B2DC5904(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v17 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v17, v15);
  a11 = &a15;
  std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  _Unwind_Resume(a1);
}

char *md::UniLineLabelFeature::newArrowPart(uint64_t a1, uint64_t a2, md::LabelStyle *a3, void *a4, char a5)
{
  v10 = *(a3 + 33);
  if (!v10)
  {
    v11 = md::LabelStyle::prepareStyleGroup<md::LabelLineStyleGroup>(a3);
    v10 = *v11;
    *(a3 + 33) = *v11;
  }

  md::LabelStyle::namedIcon(&v22, a3, a1, a2, v10 + 72, 0);
  if (v22)
  {
    v13 = mdm::zone_mallocator::instance(v12);
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v13, 0x3D8uLL);
    md::IconLabelPart::IconLabelPart(v14, &v22, 2, a3);
    *v14 = &unk_1F2A56F20;
    *(v14 + 52) = 0u;
    *(v14 + 53) = xmmword_1B33B0AE0;
    *(v14 + 216) = 1065353216;
    *(v14 + 223) = 0;
    *(v14 + 876) = 0;
    *(v14 + 884) = 0;
    *(v14 + 868) = 0;
    v14[896] = 9;
    *(v14 + 897) = 0;
    *(v14 + 114) = 0;
    *(v14 + 920) = xmmword_1B33B0AE0;
    *(v14 + 969) = 0;
    *(v14 + 113) = 0;
    *(v14 + 234) = 1065353216;
    *(v14 + 241) = 0;
    *(v14 + 948) = 0;
    *(v14 + 956) = 0;
    *(v14 + 940) = 0;
    v14[968] = 9;
    *(v14 + 244) = 0;
    v14[980] = a5;
    v14[981] = 0;
    v15 = *a4;
    v16 = a4[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      v17 = *(v14 + 105);
      *(v14 + 104) = v15;
      *(v14 + 105) = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    else
    {
      *(v14 + 104) = v15;
      *(v14 + 105) = 0;
    }

    (*(**a4 + 16))(&v24);
    v18 = v24;
    v24 = 0uLL;
    v19 = *(v14 + 114);
    *(v14 + 904) = v18;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      if (*(&v24 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v24 + 1));
      }
    }

    if (v14[980] == 1)
    {
      v20 = 0;
      v14[720] = 2;
    }

    else
    {
      v20 = 1;
    }

    v14[557] = v20;
    v14[712] = v20;
    (*(*v14 + 176))(v14, 1);
  }

  else
  {
    v14 = 0;
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }

  return v14;
}

void sub_1B2DC5BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  v13 = *(v10 + 114);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  if (*v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*v11);
  }

  md::IconLabelPart::~IconLabelPart(v10);
  v15 = mdm::zone_mallocator::instance(v14);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v15, v10);
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<md::LabelShieldEntry *,md::LabelShieldEntry *,md::LabelShieldEntry *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(a3, v5);
      *(a3 + 32) = *(v5 + 32);
      for (i = 40; i != 44; ++i)
      {
        *(a3 + i) = *(v5 + i);
      }

      *(a3 + 44) = *(v5 + 44);
      v5 += 48;
      a3 += 48;
    }

    while (v5 != a2);
  }

  return a3;
}

mdm::zone_mallocator *std::construct_at[abi:nn200100]<md::LabelShieldEntry,md::LabelShieldEntry&,md::LabelShieldEntry*>(mdm::zone_mallocator *__dst, __int128 *a2)
{
  *(__dst + 24) = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 4) = *(a2 + 4);
  *(__dst + 10) = *(a2 + 10);
  *(__dst + 44) = *(a2 + 44);
  return __dst;
}

uint64_t md::LabelLinePosition::textIndex(md::LabelLinePosition *this)
{
  if (*this && *(this + 10) == *(*this + 16) && (v1 = *(this + 3)) != 0 && (*(this + 17) & 0x80000000) == 0 && (v2 = *v1) != 0)
  {
    return *(v2 + 38);
  }

  else
  {
    return 255;
  }
}

void md::UniLineLabelFeature::~UniLineLabelFeature(md::UniLineLabelFeature *this)
{
  md::UniLineLabelFeature::~UniLineLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29FFE20;
  *(this + 55) = &unk_1F2A000E8;
  v2 = *(this + 60);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 58);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::LineLabelFeature::~LineLabelFeature(this);
}

void *md::UniLineLabelFeature::UniLineLabelFeature(void *a1, uint64_t *a2, int a3, uint64_t a4)
{
  v7 = md::LineLabelFeature::LineLabelFeature(a1, *(*a2 + 176), a3);
  *v7 = &unk_1F29FFE20;
  *(v7 + 440) = &unk_1F2A000E8;
  v8 = *a2;
  *(v7 + 448) = *(*a2 + 176);
  *(v7 + 449) = 0;
  v9 = a2[1];
  *(v7 + 456) = v8;
  *(v7 + 464) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = a1[57];
  }

  a1[59] = 0;
  a1[60] = 0;
  a1[61] = 0;
  v11 = *(v8 + 32);
  v10 = *(v8 + 40);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a1[53];
  a1[52] = v11;
  a1[53] = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    v11 = a1[52];
  }

  if (!v11)
  {
    _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v16);
  }

  md::LabelLineStore::addExternalRoadFeature(a1[24], a2);
  v13 = a1[24];
  v14 = atomic_load(v13 + 155);
  if (v14)
  {
    md::LabelLineStore::consumeWorkUnits(v13);
  }

  (*(*a1 + 40))(a1, a2, a4);
  return a1;
}

void sub_1B2DC5F58(_Unwind_Exception *a1)
{
  v3 = *(v1 + 60);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 58);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::LineLabelFeature::~LineLabelFeature(v1);
  _Unwind_Resume(a1);
}

float std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,0>(float *a1, float *a2, float *a3, float *a4)
{
  v4 = *a2;
  if (*a2 < *a1 || LODWORD(v4) == *a1 && (result = a2[1], result < a1[1]))
  {
    if (*a3 < LODWORD(v4) || *a3 == LODWORD(v4) && (result = a3[1], result < a2[1]))
    {
      v5 = *a1;
      *a1 = *a3;
    }

    else
    {
      v5 = *a1;
      *a1 = *a2;
      *a2 = v5;
      if (*a3 >= v5)
      {
        if (*a3 != v5)
        {
          goto LABEL_14;
        }

        result = *(&v5 + 1);
        if (a3[1] >= *(&v5 + 1))
        {
          goto LABEL_14;
        }
      }

      *a2 = *a3;
    }

    *a3 = v5;
  }

  else if (*a3 < LODWORD(v4) || *a3 == LODWORD(v4) && (result = a3[1], result < a2[1]))
  {
    v7 = *a2;
    *a2 = *a3;
    *a3 = v7;
    if (*a2 < *a1 || *a2 == *a1 && (result = a2[1], result < a1[1]))
    {
      v8 = *a1;
      *a1 = *a2;
      *a2 = v8;
    }
  }

LABEL_14:
  if (*a4 < *a3 || *a4 == *a3 && (result = a4[1], result < a3[1]))
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2 || *a3 == *a2 && (result = a3[1], result < a2[1]))
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *a1 || *a2 == *a1 && (result = a2[1], result < a1[1]))
      {
        v11 = *a1;
        *a1 = *a2;
        *a2 = v11;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v16 = *(a1 + 2);
        if (v16 >= *a1 && (v16 != *a1 || *(a1 + 3) >= *(a1 + 1)))
        {
          v24 = *(a2 - 2);
          if (v24 < v16 || v24 == v16 && *(a2 - 1) < *(a1 + 3))
          {
            v25 = a1[1];
            a1[1] = *(a2 - 1);
            *(a2 - 1) = v25;
            v26 = *(a1 + 2);
            if (v26 < *a1 || v26 == *a1 && *(a1 + 3) < *(a1 + 1))
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }

          return 1;
        }

        v17 = *(a2 - 2);
        if (v17 >= v16 && (v17 != v16 || *(a2 - 1) >= *(a1 + 3)))
        {
          v30 = *a1;
          *a1 = vextq_s8(*a1, *a1, 8uLL);
          v31 = *(a2 - 2);
          v18 = v30.i64[0];
          if (v31 >= v30.i32[0] && (v31 != v30.i32[0] || *(a2 - 1) >= *&v30.i32[1]))
          {
            return 1;
          }

          a1[1] = *(a2 - 1);
          goto LABEL_19;
        }

LABEL_18:
        v18 = *a1;
        *a1 = *(a2 - 1);
LABEL_19:
        *(a2 - 1) = v18;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v6 = *(a2 - 2);
        v7 = *(a1 + 6);
        if (v6 < v7 || v6 == v7 && *(a2 - 1) < *(a1 + 7))
        {
          v8 = a1[3];
          a1[3] = *(a2 - 1);
          *(a2 - 1) = v8;
          v9 = *(a1 + 6);
          v10 = *(a1 + 4);
          if (v9 < v10 || v9 == v10 && *(a1 + 7) < *(a1 + 5))
          {
            v12 = a1[2];
            v11 = a1[3];
            a1[2] = v11;
            a1[3] = v12;
            v13 = *(a1 + 2);
            if (v13 > v11 || v13 == v11 && *(a1 + 3) > *(&v11 + 1))
            {
              v14 = a1[1];
              a1[1] = v11;
              a1[2] = v14;
              if (*a1 > v11 || *a1 == v11 && *(a1 + 1) > *(&v11 + 1))
              {
                v15 = *a1;
                *a1 = v11;
                a1[1] = v15;
              }
            }
          }
        }

        return 1;
    }

LABEL_20:
    v19 = (a1 + 2);
    v20 = *(a1 + 2);
    v21 = *a1;
    if (v20 >= *a1 && (v20 != v21 || *(a1 + 3) >= *(a1 + 1)))
    {
      if (*v19 < v20 || *v19 == v20 && *(a1 + 5) < *(a1 + 3))
      {
        v28 = a1[1];
        v27 = a1[2];
        a1[1] = v27;
        a1[2] = v28;
        if (v21 > v27 || v21 == v27 && *(a1 + 1) > *(&v27 + 1))
        {
          v29 = *a1;
          *a1 = v27;
          a1[1] = v29;
        }
      }

      goto LABEL_46;
    }

    v22 = *v19;
    if (*v19 < v20 || v22 == v20 && *(a1 + 5) < *(a1 + 3))
    {
      v23 = *a1;
      *a1 = a1[2];
    }

    else
    {
      v32 = *a1;
      *a1 = vextq_s8(*a1, *a1, 8uLL);
      v23 = v32.i64[0];
      if (v22 >= v32.i32[0] && (v22 != v32.i32[0] || *(a1 + 5) >= *&v32.i32[1]))
      {
        goto LABEL_46;
      }

      a1[1] = a1[2];
    }

    a1[2] = v23;
LABEL_46:
    v33 = (a1 + 3);
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v34 = 0;
    v35 = 0;
    while (1)
    {
      v36 = *v33;
      if (*v33 >= *v19)
      {
        if (v36 != *v19)
        {
          goto LABEL_61;
        }

        v37 = *(v33 + 4);
        if (v37 >= *(v19 + 4))
        {
          goto LABEL_61;
        }
      }

      else
      {
        v37 = *(v33 + 4);
      }

      *v33 = *v19;
      v38 = v34;
      do
      {
        v39 = *(a1 + v38 + 8);
        if (v36 >= v39)
        {
          if (v36 != v39)
          {
            v19 = a1 + v38 + 16;
            goto LABEL_60;
          }

          if (*(a1 + v38 + 12) <= v37)
          {
            goto LABEL_60;
          }
        }

        v19 -= 8;
        *(a1 + v38 + 16) = *(a1 + v38 + 8);
        v38 -= 8;
      }

      while (v38 != -16);
      v19 = a1;
LABEL_60:
      *v19 = v36;
      *(v19 + 4) = v37;
      if (++v35 == 8)
      {
        return v33 + 8 == a2;
      }

LABEL_61:
      v19 = v33;
      v34 += 8;
      v33 += 8;
      if (v33 == a2)
      {
        return 1;
      }
    }
  }

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v5 = *(a2 - 2);
      if (v5 >= *a1 && (v5 != *a1 || *(a2 - 1) >= *(a1 + 1)))
      {
        return 1;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  return 1;
}

void md::MercatorRouteCollider::intersectRouteWithFrustum(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  v6 = *(a1 + 8);
  v9 = a3;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v7 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v6, v9);
  v8 = v9;
  if (v7)
  {
    v10 = 0;
    v11 = [v9 pointCount] - 1;
    v12 = 0;
    md::RouteCollisionObject<md::MercatorPointSource>::intersectWithFrustum(v7, a2, &v10, a4);
    v8 = v9;
  }
}

void sub_1B2DC6618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void md::MercatorRouteCollider::~MercatorRouteCollider(md::MercatorRouteCollider *this)
{
  v1 = *(this + 1);
  *this = &unk_1F2A00198;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = v1;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
    MEMORY[0x1B8C62190](v1, 0x20C40960023A9);
  }

  JUMPOUT(0x1B8C62190);
}

{
  v1 = *(this + 1);
  *this = &unk_1F2A00198;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = v1;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
    MEMORY[0x1B8C62190](v1, 0x20C40960023A9);
  }
}

uint64_t md::GeocentricRouteCollider::computeRayBoundsOfRouteSectionWithinFrustum(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int *a5, double *a6)
{
  v9 = *(a1 + 8);
  v11 = *a5;
  v10 = a5[1];
  v12 = a3;
  if ([v12 pointCount] && (v13 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v9, v12)) != 0)
  {
    v14 = v13;
    *a6 = xmmword_1B33B0520;
    v17[0] = md::RouteCollisionObject<md::GeocentricPointSource>::segmentIndexForVertexIndex(v13, v11, 0);
    v17[1] = md::RouteCollisionObject<md::GeocentricPointSource>::segmentIndexForVertexIndex(v14, v10, 1);
    md::RouteCollisionObject<md::GeocentricPointSource>::computeRayBoundsWithinFrustum(a2, a4, *(v14 + 72), v17, a6);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t md::RouteCollisionObject<md::GeocentricPointSource>::segmentIndexForVertexIndex(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 48);
  if (*(a1 + 56) == v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = a2 - (a3 == 1);
  while (1)
  {
    v8 = *(v3 + 8 * v5);
    if ([v8 startPointIndex] <= v7 && objc_msgSend(v8, "endPointIndex") > v7)
    {
      break;
    }

    v5 = ++v6;
    v3 = *(a1 + 48);
    if (v6 >= ((*(a1 + 56) - v3) >> 3))
    {
      return 0;
    }
  }

  v10 = v7 - [v8 startPointIndex];

  return v6 | (v10 << 16);
}

void md::RouteCollisionObject<md::GeocentricPointSource>::computeRayBoundsWithinFrustum(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, double *a5)
{
  v10 = a2 + 24;
LABEL_2:
  if (*a3)
  {
    v47 = *(a3 + 24);
    v48 = *(a3 + 40);
    v49 = *(a3 + 48);
    v50 = *(a3 + 64);
    v33 = gm::Box<double,3>::center<double>(&v47);
    v34 = 0;
    *&v51 = v33;
    *(&v51 + 1) = v35;
    v52 = v36;
    do
    {
      v53.f64[v34] = *(&v51 + v34 * 8) - *(a2 + v34 * 8);
      ++v34;
    }

    while (v34 != 3);
    v37 = 0;
    v38 = 0.0;
    do
    {
      v38 = v38 + v53.f64[v37] * *(v10 + v37 * 8);
      ++v37;
    }

    while (v37 != 3);
    for (i = 0; i != 24; i += 8)
    {
      *(&v47 + i) = fabs(*(v10 + i));
    }

    v40 = 0;
    v51 = v47;
    v52 = v48;
    v47 = *(a3 + 24);
    v48 = *(a3 + 40);
    v41 = *(a3 + 48);
    v50 = *(a3 + 64);
    v49 = v41;
    do
    {
      v53.f64[v40] = *(&v49 + v40 * 8) - *(&v47 + v40 * 8);
      ++v40;
    }

    while (v40 != 3);
    v42 = 0;
    v43 = 0.0;
    v53 = vmaxnmq_f64(v53, 0);
    v54 = fmax(v54, 0.0);
    do
    {
      v43 = v43 + v53.f64[v42] * *(&v51 + v42 * 8);
      ++v42;
    }

    while (v42 != 3);
    v44 = v43 * 0.5;
    v45 = v38 - v44;
    v46 = fmax(v44 + v38, a5[1]);
    *a5 = fmin(*a5, v45);
    a5[1] = v46;
  }

  else if (gm::Range<md::PointSource::SegmentIndex>::overlapsRange((a3 + 88), a4))
  {
    v11 = 0;
    v47 = *(a3 + 24);
    v48 = *(a3 + 40);
    v49 = *(a3 + 48);
    v50 = *(a3 + 64);
    while (1)
    {
      v12 = 0;
      v13 = *(a1 + v11 + 16);
      v51 = *(a1 + v11);
      v52 = v13;
      do
      {
        v14 = (&v47 + v12 * 8);
        if (*(&v51 + v12 * 8) >= 0.0)
        {
          v14 = (&v49 + v12 * 8);
        }

        v53.f64[v12++] = *v14;
      }

      while (v12 != 3);
      v15 = 0;
      v16 = 0.0;
      do
      {
        v16 = v16 + *(a1 + v11 + v15 * 8) * v53.f64[v15];
        ++v15;
      }

      while (v15 != 3);
      if (*(a1 + v11 + 24) + v16 < 0.0)
      {
        break;
      }

      v11 += 32;
      if (v11 == 192)
      {
        v18 = *a5;
        v17 = a5[1];
        if (v17 < *a5)
        {
          goto LABEL_28;
        }

        v47 = *(a3 + 24);
        v48 = *(a3 + 40);
        v49 = *(a3 + 48);
        v50 = *(a3 + 64);
        v19 = gm::Box<double,3>::center<double>(&v47);
        v20 = 0;
        *&v51 = v19;
        *(&v51 + 1) = v21;
        v52 = v22;
        do
        {
          v53.f64[v20] = *(&v51 + v20 * 8) - *(a2 + v20 * 8);
          ++v20;
        }

        while (v20 != 3);
        v23 = 0;
        v24 = 0.0;
        do
        {
          v24 = v24 + v53.f64[v23] * *(v10 + v23 * 8);
          ++v23;
        }

        while (v23 != 3);
        for (j = 0; j != 24; j += 8)
        {
          *(&v47 + j) = fabs(*(v10 + j));
        }

        v26 = 0;
        v51 = v47;
        v52 = v48;
        v47 = *(a3 + 24);
        v48 = *(a3 + 40);
        v49 = *(a3 + 48);
        v50 = *(a3 + 64);
        do
        {
          v53.f64[v26] = *(&v49 + v26 * 8) - *(&v47 + v26 * 8);
          ++v26;
        }

        while (v26 != 3);
        v27 = 0;
        v28 = 0.0;
        v53 = vmaxnmq_f64(v53, 0);
        v54 = fmax(v54, 0.0);
        do
        {
          v28 = v28 + v53.f64[v27] * *(&v51 + v27 * 8);
          ++v27;
        }

        while (v27 != 3);
        v29 = v28 * 0.5;
        v30 = v24 - v29;
        v31 = v29 + v24;
        if (v18 > v30 || v31 > v17)
        {
LABEL_28:
          md::RouteCollisionObject<md::GeocentricPointSource>::computeRayBoundsWithinFrustum(a1, a2, *(a3 + 8), a4, a5);
          a3 = *(a3 + 16);
          goto LABEL_2;
        }

        return;
      }
    }
  }
}

void md::GeocentricRouteCollider::intersectRouteWithFrustum(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, const void **a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = a3;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v11 = v9;
  if ([v9 pointCount])
  {
    v10 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v8, v11);
    if (v10)
    {
      md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustum(v10, a2, a4, a5);
    }
  }
}

void sub_1B2DC6D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustum(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v8 = *(a3 + 8);
  v9 = *a3;
  if (v8 > *a3 || (v10 = *a3, v8 == v9) && (v10 = *(a3 + 8), *(a3 + 12) > *(a3 + 4)))
  {
    if (v9 >= [*(a1 + 8) pointCount] - 1)
    {
      return;
    }

    v10 = *a3;
  }

  v11 = md::RouteCollisionObject<md::GeocentricPointSource>::segmentIndexForVertexIndex(a1, v10, 0);
  v12 = v11;
  if (*(a3 + 12) <= 0.0)
  {
    v13 = *(a3 + 8);
  }

  else
  {
    v13 = *(a3 + 8) + 1;
  }

  v14 = v11;
  v15 = md::RouteCollisionObject<md::GeocentricPointSource>::segmentIndexForVertexIndex(a1, v13, 1);
  if (v14 < v15 || (v14 == v15 ? (v17 = HIWORD(v12) >= HIWORD(v15)) : (v17 = 1), v16 = v12, !v17))
  {
    v16 = v15;
  }

  v94[0] = md::GeocentricPointSource::segmentWorldPoint(*(a1 + 128), v12, 0);
  v94[1] = v18;
  v94[2] = v19;
  md::GeocentricPointSource::segmentWorldPoint(*(a1 + 128), v16, 1);
  for (i = 0; i != 192; i += 32)
  {
    v21 = 0;
    v22 = a2 + i;
    v23 = 0.0;
    do
    {
      v23 = v23 + *(v22 + v21 * 8) * *&v94[v21];
      ++v21;
    }

    while (v21 != 3);
    v24 = *(v22 + 24) + v23;
    if (v24 < 0.0)
    {
      break;
    }
  }

  v25 = *(a1 + 72);
  v93[0] = v12;
  v93[1] = v16;
  md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustumEdges(a1, a2, v25, v93, &v95);
  v27 = v95;
  v28 = v96;
  v29 = 126 - 2 * __clz((v96 - v95) >> 3);
  v30 = v96 - v95;
  if (v96 == v95)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,geo::PolylineCoordinate *,false>(v95, v96, v31, 1, v26);
  if (v30 >= 9)
  {
    v32 = *(v27 + 2);
    if (v32 >= *a3 && (v32 != *a3 || v27[3] >= *(a3 + 4)))
    {
      goto LABEL_32;
    }

    v30 = v28 - (v27 + 4);
    if (v28 != v27 + 4)
    {
      memmove(v27, v27 + 4, v28 - (v27 + 4));
    }

    v28 -= 4;
    v96 = (v27 + v30);
    if (v30 >= 9)
    {
LABEL_32:
      v33 = *(v27 + v30 - 16);
      v34 = *(a3 + 8);
      if (v33 > v34 || v33 == v34 && *(v27 + v30 - 12) > *(a3 + 12))
      {
        v96 = v28 - 4;
        v28 -= 4;
      }
    }
  }

  if (v28 == v27)
  {
    v35 = v27;
  }

  else
  {
    if (*v27 < *a3 || *v27 == *a3 && v27[1] < *(a3 + 4))
    {
      *v27 = *a3;
    }

    v36 = *(v28 - 2);
    v37 = *(a3 + 8);
    if (v36 > v37 || v36 == v37 && *(v28 - 1) > *(a3 + 12))
    {
      *(v28 - 1) = *(a3 + 8);
      v27 = v95;
      v28 = v96;
    }

    v35 = v28;
  }

  v38 = (((v35 - v27) >> 3) + 1) >> 1;
  if (v24 < 0.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = v38 + 1;
  }

  std::vector<gm::Range<geo::PolylineCoordinate>>::reserve(a4, v39);
  v40 = v27;
  if (v24 < 0.0)
  {
LABEL_75:
    if (v40 == v28)
    {
      goto LABEL_105;
    }

    v61 = v40 + 2;
    while (1)
    {
      v63 = *(v61 - 2);
      v62 = *(v61 - 1);
      if (v61 == v28)
      {
        break;
      }

      v64 = a4[1];
      v65 = a4[2];
      if (v64 >= v65)
      {
        v68 = (v64 - *a4) >> 4;
        v69 = v68 + 1;
        if ((v68 + 1) >> 60)
        {
          goto LABEL_110;
        }

        v70 = v65 - *a4;
        if (v70 >> 3 > v69)
        {
          v69 = v70 >> 3;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFF0)
        {
          v71 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v69;
        }

        if (v71)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v71);
        }

        v72 = 16 * v68;
        v73 = *v61;
        *v72 = v63;
        *(v72 + 4) = v62;
        *(v72 + 8) = v73;
        v67 = 16 * v68 + 16;
        v74 = a4[1] - *a4;
        v75 = (16 * v68 - v74);
        memcpy(v75, *a4, v74);
        v76 = *a4;
        *a4 = v75;
        a4[1] = v67;
        a4[2] = 0;
        if (v76)
        {
          operator delete(v76);
        }
      }

      else
      {
        v66 = *v61;
        *v64 = v63;
        *(v64 + 1) = v62;
        *(v64 + 1) = v66;
        v67 = (v64 + 16);
      }

      a4[1] = v67;
      v77 = v61 + 2;
      v61 += 4;
      if (v77 == v28)
      {
        goto LABEL_105;
      }
    }

    v78 = a4[1];
    v79 = a4[2];
    if (v78 < v79)
    {
      v80 = *(a3 + 8);
      *v78 = v63;
      v78[1] = v62;
      *(v78 + 1) = v80;
      v47 = (v78 + 4);
      goto LABEL_104;
    }

    v81 = (v78 - *a4) >> 4;
    v82 = v81 + 1;
    if (!((v81 + 1) >> 60))
    {
      v83 = v79 - *a4;
      if (v83 >> 3 > v82)
      {
        v82 = v83 >> 3;
      }

      if (v83 >= 0x7FFFFFFFFFFFFFF0)
      {
        v84 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v84 = v82;
      }

      if (v84)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v84);
      }

      v85 = 16 * v81;
      v86 = *(a3 + 8);
      *v85 = v63;
      *(v85 + 4) = v62;
      *(v85 + 8) = v86;
      v47 = 16 * v81 + 16;
      v87 = a4[1] - *a4;
      v88 = v85 - v87;
      memcpy((v85 - v87), *a4, v87);
      v89 = *a4;
      *a4 = v88;
      a4[1] = v47;
      a4[2] = 0;
      if (!v89)
      {
        goto LABEL_104;
      }

      goto LABEL_103;
    }

    goto LABEL_110;
  }

  if (v27 != v28)
  {
    v41 = a4[1];
    v42 = a4[2];
    if (v41 >= v42)
    {
      v48 = (v41 - *a4) >> 4;
      v49 = v48 + 1;
      if ((v48 + 1) >> 60)
      {
        goto LABEL_110;
      }

      v50 = v42 - *a4;
      if (v50 >> 3 > v49)
      {
        v49 = v50 >> 3;
      }

      if (v50 >= 0x7FFFFFFFFFFFFFF0)
      {
        v51 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v49;
      }

      if (v51)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v51);
      }

      v56 = (16 * v48);
      v57 = *v27;
      *v56 = *a3;
      v56[1] = v57;
      v44 = 16 * v48 + 16;
      v58 = a4[1] - *a4;
      v59 = 16 * v48 - v58;
      memcpy(v56 - v58, *a4, v58);
      v60 = *a4;
      *a4 = v59;
      a4[1] = v44;
      a4[2] = 0;
      if (v60)
      {
        operator delete(v60);
      }
    }

    else
    {
      v43 = *v27;
      *v41 = *a3;
      *(v41 + 1) = v43;
      v44 = (v41 + 16);
    }

    v40 = v27 + 2;
    a4[1] = v44;
    goto LABEL_75;
  }

  v46 = a4[1];
  v45 = a4[2];
  if (v46 >= v45)
  {
    v52 = (v46 - *a4) >> 4;
    v53 = v52 + 1;
    if (!((v52 + 1) >> 60))
    {
      v54 = v45 - *a4;
      if (v54 >> 3 > v53)
      {
        v53 = v54 >> 3;
      }

      if (v54 >= 0x7FFFFFFFFFFFFFF0)
      {
        v55 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53;
      }

      if (v55)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v55);
      }

      v90 = (16 * v52);
      *v90 = *a3;
      v47 = 16 * v52 + 16;
      v91 = a4[1] - *a4;
      v92 = v90 - v91;
      memcpy(v90 - v91, *a4, v91);
      v89 = *a4;
      *a4 = v92;
      a4[1] = v47;
      a4[2] = 0;
      if (!v89)
      {
        goto LABEL_104;
      }

LABEL_103:
      operator delete(v89);
      goto LABEL_104;
    }

LABEL_110:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v46 = *a3;
  v47 = (v46 + 16);
LABEL_104:
  a4[1] = v47;
LABEL_105:
  if (v27)
  {
    v96 = v27;
    operator delete(v27);
  }
}

void sub_1B2DC73AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

double md::GeocentricPointSource::segmentWorldPoint(uint64_t a1, int a2, int a3)
{
  v4 = HIWORD(a2);
  v5 = *(a1 + 8 * a2);
  v6 = [v5 points];
  if (v5)
  {
    objc_msgSend_bounds(v5);
    v8 = v21;
    v7 = v22;
    v10 = v23;
    v9 = v24;
  }

  else
  {
    v9 = 0.0;
    v7 = 0.0;
    v10 = 0.0;
    v8 = 0.0;
  }

  v11 = v4;
  if (a3 == 1)
  {
    v11 = v4 + 1;
  }

  v12 = (v6 + 12 * v11);
  v13 = (v8 + v10 * *v12) * 6.28318531 / *MEMORY[0x1E69A1690];
  v14 = exp(3.14159265 - (v7 + v9 * (1.0 - v12[1])) * 6.28318531 / *(MEMORY[0x1E69A1690] + 8));
  v15 = atan(v14) * 2.0 + -1.57079633;
  v16 = fmod(v13, 6.28318531);
  v17 = fmod(v16 + 6.28318531, 6.28318531) + -3.14159265;
  v18 = __sincos_stret(v15);
  v19 = 6378137.0 / sqrt(v18.__sinval * v18.__sinval * -0.00669437999 + 1.0) * v18.__cosval * __sincos_stret(v17).__cosval;

  return v19;
}

void md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustumEdges(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
LABEL_1:
  if (*a3)
  {
    v23 = *(a3 + 72);
    if (v23)
    {
      for (i = 0; i < v23; ++i)
      {
        v25 = (*(a3 + 80) + 4 * i);
        v26 = *v25;
        v27 = v25[1];
        v28 = *a4;
        if (v28 >= v26 && (v28 != v26 || a4[1] > v27))
        {
          continue;
        }

        v30 = a4[2];
        if (v30 <= v26 && (v30 != v26 || a4[3] < v27))
        {
          continue;
        }

        *&v51 = md::GeocentricPointSource::segmentWorldPoint(*(a1 + 128), v26 | (v27 << 16), 0);
        *(&v51 + 1) = v32;
        v52 = v33;
        v34 = md::GeocentricPointSource::segmentWorldPoint(*(a1 + 128), v26 | (v27 << 16), 1);
        v35 = 0;
        *&v49 = v34;
        *(&v49 + 1) = v36;
        v50 = v37;
        do
        {
          *(&v43 + v35) = *(&v49 + v35) - *(&v51 + v35);
          v35 += 8;
        }

        while (v35 != 24);
        v38 = v44;
        v39 = v43;
        v43 = v51;
        v44 = v52;
        v45 = v39;
        v46 = v38;
        *&v51 = 0;
        *&v49 = 0;
        if (geo::Intersect::internal::intersection<double,std::array<gm::Plane3<double>,6ul>>(a2, &v43, 2, &v51, &v49))
        {
          v40 = [*(*(a1 + 48) + 8 * v26) startPointIndex] + v27;
          if (*&v51 > 0.0)
          {
            v41 = *&v51;
            *&v47 = __PAIR64__(LODWORD(v41), v40);
            if (v41 >= 1.0)
            {
              LODWORD(v47) = v40 + vcvtms_u32_f32(v41);
              *(&v47 + 1) = v41 - floorf(v41);
            }

            std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a5, &v47);
          }

          if (*&v49 < 1.0)
          {
            v42 = *&v49;
            *&v47 = __PAIR64__(LODWORD(v42), v40);
            if (v42 >= 1.0)
            {
              LODWORD(v47) = v40 + vcvtms_u32_f32(v42);
              *(&v47 + 1) = v42 - floorf(v42);
            }

            std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](a5, &v47);
          }
        }

        v23 = *(a3 + 72);
      }
    }
  }

  else if (gm::Range<md::PointSource::SegmentIndex>::overlapsRange((a3 + 88), a4))
  {
    v10 = 0;
    v11 = 0;
    v43 = *(a3 + 24);
    v44 = *(a3 + 40);
    v45 = *(a3 + 48);
    v46 = *(a3 + 64);
    while (1)
    {
      v12 = 0;
      v13 = *(a2 + v11 + 16);
      v49 = *(a2 + v11);
      v50 = v13;
      do
      {
        v14 = &v43 + v12;
        if (*(&v49 + v12) >= 0.0)
        {
          v14 = &v45 + v12;
        }

        *(&v51 + v12) = *v14;
        v12 += 8;
      }

      while (v12 != 24);
      v15 = 0;
      v47 = v51;
      v48 = v52;
      v16 = 0.0;
      do
      {
        v16 = v16 + *(a2 + v11 + v15) * *(&v47 + v15);
        v15 += 8;
      }

      while (v15 != 24);
      v17 = *(a2 + v11 + 24);
      if (v17 + v16 < 0.0)
      {
        break;
      }

      for (j = 0; j != 24; j += 8)
      {
        *(&v51 + j) = -*(a2 + v11 + j);
      }

      v19 = 0;
      v49 = v51;
      v50 = v52;
      do
      {
        v20 = &v43 + v19;
        if (*(&v49 + v19) >= 0.0)
        {
          v20 = &v45 + v19;
        }

        *(&v51 + v19) = *v20;
        v19 += 8;
      }

      while (v19 != 24);
      v21 = 0;
      v22 = 0.0;
      do
      {
        v22 = v22 + *(a2 + v11 + v21) * *(&v51 + v21);
        v21 += 8;
      }

      while (v21 != 24);
      if (v17 + v22 >= 0.0)
      {
        ++v10;
      }

      v11 += 32;
      if (v11 == 192)
      {
        if (v10 == 6)
        {
          return;
        }

        md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustumEdges(a1, a2, *(a3 + 8), a4, a5);
        a3 = *(a3 + 16);
        goto LABEL_1;
      }
    }
  }
}

void md::GeocentricRouteCollider::intersectRouteWithFrustum(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  v6 = *(a1 + 8);
  v9 = a3;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v7 = md::RouteCollider<md::RouteCollisionObject<md::MercatorPointSource>>::collisionObjectForRoute(v6, v9);
  v8 = v9;
  if (v7)
  {
    v10 = 0;
    v11 = [v9 pointCount] - 1;
    v12 = 0;
    md::RouteCollisionObject<md::GeocentricPointSource>::intersectWithFrustum(v7, a2, &v10, a4);
    v8 = v9;
  }
}

void sub_1B2DC79C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void md::GeocentricRouteCollider::~GeocentricRouteCollider(md::GeocentricRouteCollider *this)
{
  v1 = *(this + 1);
  *this = &unk_1F2A001D0;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = v1;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
    MEMORY[0x1B8C62190](v1, 0x20C40960023A9);
  }

  JUMPOUT(0x1B8C62190);
}

{
  v1 = *(this + 1);
  *this = &unk_1F2A001D0;
  *(this + 1) = 0;
  if (v1)
  {
    v2 = v1;
    std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v2);
    MEMORY[0x1B8C62190](v1, 0x20C40960023A9);
  }
}

void *geo::_retain_ptr<GEOComposedRoute * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A4C308;
  a1[1] = v3;
  return a1;
}

md::PointSource *md::PointSource::PointSource(md::PointSource *this, GEOComposedRoute *a2)
{
  v3 = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  v4 = objc_msgSend_sections(v3);
  v5 = [v4 count];

  std::vector<GEOComposedRouteSection * {__strong}>::resize(this, v5);
  if (v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = objc_msgSend_sections(v3);
      v9 = [v8 objectAtIndexedSubscript:v6];

      v10 = *(*this + 8 * v6);
      *(*this + 8 * v6) = v9;

      v6 = v7;
    }

    while (v5 > v7++);
  }

  return this;
}

void sub_1B2DC7C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::vector<GEOComposedRouteSection * {__strong}>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 8 * a2;
      while (v4 != v11)
      {
        v12 = *(v4 - 8);
        v4 -= 8;
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v13 = a1;
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

        std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    a1[1] = v4 + 8 * v6;
  }
}

void std::vector<md::PointSource::SegmentIndex>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 4 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = &v7[-v3];
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = &v4[4 * v6];
  }

  a1[1] = v11;
}

void md::RouteCollisionObject<md::MercatorPointSource>::buildTopDownAABBTree(uint64_t *a1, char **a2, int *a3, int *a4)
{
  v4 = a4;
  v7 = a1;
  while (1)
  {
    v8 = v7[15];
    if (!v8)
    {
      v9 = malloc_type_malloc(80 * v7[13], 0x1022040D9F4F753uLL);
      v189 = *&v9;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(v7 + 10, v9, &v189);
      v8 = v7[15];
      v10 = &v9[80 * v7[13] - 80];
      if (v10 >= v9)
      {
        do
        {
          v11 = v10;
          *v10 = v8;
          v10 -= 80;
          v8 = v11;
        }

        while (v10 >= v9);
        v8 = v10 + 80;
      }

      v7[15] = v8;
    }

    v7[15] = *v8;
    *a2 = v8;
    if (v4 == a3)
    {
      v12 = 1.79769313e308;
      v13 = -1.79769313e308;
      v14 = -1.79769313e308;
      v15 = 1.79769313e308;
    }

    else
    {
      v15 = 1.79769313e308;
      v13 = -1.79769313e308;
      v16 = a3;
      v14 = -1.79769313e308;
      v12 = 1.79769313e308;
      do
      {
        v17 = md::MercatorPointSource::segmentWorldPoint(v7[16], *v16, 0);
        v18 = fmin(v17, v15);
        v19 = fmax(v14, v17);
        v21 = fmin(v20, v12);
        v22 = fmax(v13, v20);
        v23 = *v16++;
        v24 = md::MercatorPointSource::segmentWorldPoint(v7[16], v23, 1);
        v15 = fmin(v24, v18);
        v14 = fmax(v19, v24);
        v12 = fmin(v25, v21);
        v13 = fmax(v22, v25);
      }

      while (v16 != v4);
    }

    *(v8 + 3) = v15;
    *(v8 + 4) = v12;
    *(v8 + 5) = v14;
    *(v8 + 6) = v13;
    LODWORD(v189) = -1;
    LODWORD(v187) = 0;
    if (v4 <= a3)
    {
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      LOWORD(v26) = 0;
      LOWORD(v27) = 0;
      v28 = 0xFFFF;
      LOWORD(v29) = -1;
      v30 = a3;
      do
      {
        v31 = *v30;
        v32 = v31 == v29;
        if (v31 > v29 || (v33 = v30, v32) && (v33 = v30, v28 < *(v30 + 1)))
        {
          v33 = &v189;
        }

        v29 = *v33;
        LODWORD(v189) = v29;
        v34 = v31 == v27;
        if (v31 < v27 || (v35 = v30, v34) && (v35 = v30, *(v30 + 1) < v26))
        {
          v35 = &v187;
        }

        v28 = WORD1(v29);
        v27 = *v35;
        LODWORD(v187) = v27;
        ++v30;
        v26 = WORD1(v27);
      }

      while (v30 < v4);
      v36 = v29 | (v27 << 32);
    }

    v37 = (v4 - a3) >> 2;
    *(v8 + 9) = v36;
    if (v37 <= 4)
    {
      break;
    }

    *v8 = 0;
    *(v8 + 14) = v37;
    v38 = vmaxnmq_f64(vsubq_f64(*(v8 + 40), *(v8 + 24)), 0);
    v179 = v8;
    *(v8 + 8) = 0;
    v181 = a3;
    a3 += (v4 - a3 + ((v4 - a3) >> 63)) >> 1;
    v185 = v7;
    LOBYTE(v186) = vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v38, 1), v38)).u8[0] & 1;
    v186 = v186;
    if (a3 != v4)
    {
      v39 = v181;
      v40 = v4;
      v180 = a3;
      do
      {
        v41 = v40 - v39;
        if (v41 < 2)
        {
          break;
        }

        if (v41 == 3)
        {
          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::MercatorPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,2> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(v39, v39 + 1, v40 - 1, &v185);
          break;
        }

        if (v41 == 2)
        {
          v151 = v185;
          v189 = md::MercatorPointSource::segmentWorldPoint(v185[16], *(v40 - 1), 0);
          v190 = v152;
          v153 = v186;
          v154 = *(&v189 + v186);
          v187 = md::MercatorPointSource::segmentWorldPoint(v151[16], *(v40 - 1), 1);
          v188 = v155;
          v156 = (*(&v187 + v153) + v154) * 0.5;
          v189 = md::MercatorPointSource::segmentWorldPoint(v151[16], *v39, 0);
          v190 = v157;
          v158 = *(&v189 + v153);
          v187 = md::MercatorPointSource::segmentWorldPoint(v151[16], *v39, 1);
          v188 = v159;
          if (v156 < (*(&v187 + v153) + v158) * 0.5)
          {
            v160 = *v39;
            *v39 = *(v40 - 1);
            *(v40 - 1) = v160;
          }

          break;
        }

        v182 = v40;
        if (v41 <= 7)
        {
          v161 = v40 - 1;
          if (v40 - 1 != v39)
          {
            v184 = v40 - 1;
            do
            {
              v162 = v39++;
              if (v162 != v40 && v39 != v182)
              {
                v163 = v185;
                v164 = v186;
                v165 = v39;
                v166 = v162;
                v167 = v39;
                do
                {
                  v189 = md::MercatorPointSource::segmentWorldPoint(v163[16], *v165, 0);
                  v190 = v168;
                  v169 = *(&v189 + v164);
                  v170 = *v167++;
                  v187 = md::MercatorPointSource::segmentWorldPoint(v163[16], v170, 1);
                  v188 = v171;
                  v172 = (*(&v187 + v164) + v169) * 0.5;
                  v189 = md::MercatorPointSource::segmentWorldPoint(v163[16], *v166, 0);
                  v190 = v173;
                  v174 = *(&v189 + v164);
                  v187 = md::MercatorPointSource::segmentWorldPoint(v163[16], *v166, 1);
                  v188 = v175;
                  if (v172 < (*(&v187 + v164) + v174) * 0.5)
                  {
                    v166 = v165;
                  }

                  v165 = v167;
                }

                while (v167 != v182);
                v4 = a4;
                a3 = v180;
                v161 = v184;
                if (v166 != v162)
                {
                  v176 = *v162;
                  *v162 = *v166;
                  *v166 = v176;
                }
              }

              v40 = v182;
            }

            while (v39 != v161);
          }

          break;
        }

        v42 = &v39[(v40 - v39) >> 3];
        v43 = v40 - 1;
        v183 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::MercatorPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,2> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(v39, v42, v40 - 1, &v185);
        v44 = v185;
        v189 = md::MercatorPointSource::segmentWorldPoint(v185[16], *v39, 0);
        v190 = v45;
        v46 = v186;
        v47 = *(&v189 + v186);
        v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v39, 1);
        v188 = v48;
        v49 = (*(&v187 + v46) + v47) * 0.5;
        v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v42, 0);
        v190 = v50;
        v51 = *(&v189 + v46);
        v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v42, 1);
        v188 = v52;
        if (v49 < (*(&v187 + v46) + v51) * 0.5)
        {
LABEL_42:
          v65 = v39 + 1;
          if (v39 + 1 >= v43)
          {
            v69 = v39 + 1;
          }

          else
          {
            v66 = v39 + 1;
            while (1)
            {
              v67 = v185;
              v68 = v186;
              do
              {
                v69 = v66;
                v189 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v66, 0);
                v190 = v70;
                v71 = *(&v189 + v68);
                v72 = *v66++;
                v187 = md::MercatorPointSource::segmentWorldPoint(v67[16], v72, 1);
                v188 = v73;
                v74 = (*(&v187 + v68) + v71) * 0.5;
                v189 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v42, 0);
                v190 = v75;
                v76 = *(&v189 + v68);
                v187 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v42, 1);
                v188 = v77;
              }

              while (v74 < (*(&v187 + v68) + v76) * 0.5);
              do
              {
                v78 = *--v43;
                v189 = md::MercatorPointSource::segmentWorldPoint(v67[16], v78, 0);
                v190 = v79;
                v80 = *(&v189 + v68);
                v187 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v43, 1);
                v188 = v81;
                v82 = (*(&v187 + v68) + v80) * 0.5;
                v189 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v42, 0);
                v190 = v83;
                v84 = *(&v189 + v68);
                v187 = md::MercatorPointSource::segmentWorldPoint(v67[16], *v42, 1);
                v188 = v85;
              }

              while (v82 >= (*(&v187 + v68) + v84) * 0.5);
              if (v69 >= v43)
              {
                break;
              }

              v86 = *v69;
              *v69 = *v43;
              *v43 = v86;
              ++v183;
              if (v42 == v69)
              {
                v42 = v43;
              }
            }

            v4 = a4;
            v40 = v182;
          }

          v87 = v183;
          if (v69 != v42)
          {
            v88 = v185;
            v189 = md::MercatorPointSource::segmentWorldPoint(v185[16], *v42, 0);
            v190 = v89;
            v90 = v186;
            v91 = *(&v189 + v186);
            v187 = md::MercatorPointSource::segmentWorldPoint(v88[16], *v42, 1);
            v188 = v92;
            v93 = (*(&v187 + v90) + v91) * 0.5;
            v189 = md::MercatorPointSource::segmentWorldPoint(v88[16], *v69, 0);
            v190 = v94;
            v95 = *(&v189 + v90);
            v187 = md::MercatorPointSource::segmentWorldPoint(v88[16], *v69, 1);
            v188 = v96;
            if (v93 < (*(&v187 + v90) + v95) * 0.5)
            {
              v97 = *v69;
              *v69 = *v42;
              *v42 = v97;
              v87 = v183 + 1;
            }

            v40 = v182;
          }

          a3 = v180;
          if (v69 == v180)
          {
            break;
          }

          if (!v87)
          {
            v99 = v185;
            v100 = v186;
            if (v69 <= v180)
            {
              v116 = v69 + 1;
              while (v116 != v40)
              {
                v189 = md::MercatorPointSource::segmentWorldPoint(v99[16], *v116, 0);
                v190 = v117;
                v118 = *(&v189 + v100);
                v187 = md::MercatorPointSource::segmentWorldPoint(v99[16], *v116, 1);
                v188 = v119;
                v120 = (*(&v187 + v100) + v118) * 0.5;
                v189 = md::MercatorPointSource::segmentWorldPoint(v99[16], *(v116 - 1), 0);
                v190 = v121;
                v122 = *(&v189 + v100);
                v187 = md::MercatorPointSource::segmentWorldPoint(v99[16], *(v116 - 1), 1);
                v188 = v123;
                ++v116;
                if (v120 < (*(&v187 + v100) + v122) * 0.5)
                {
                  goto LABEL_59;
                }
              }
            }

            else
            {
              while (v65 != v69)
              {
                v189 = md::MercatorPointSource::segmentWorldPoint(v99[16], *v65, 0);
                v190 = v101;
                v102 = *(&v189 + v100);
                v187 = md::MercatorPointSource::segmentWorldPoint(v99[16], *v65, 1);
                v188 = v103;
                v104 = (*(&v187 + v100) + v102) * 0.5;
                v189 = md::MercatorPointSource::segmentWorldPoint(v99[16], *(v65 - 1), 0);
                v190 = v105;
                v106 = *(&v189 + v100);
                v187 = md::MercatorPointSource::segmentWorldPoint(v99[16], *(v65 - 1), 1);
                v188 = v107;
                ++v65;
                if (v104 < (*(&v187 + v100) + v106) * 0.5)
                {
                  goto LABEL_59;
                }
              }
            }

            break;
          }

LABEL_59:
          if (v69 <= v180)
          {
            v98 = v69 + 1;
          }

          else
          {
            v40 = v69;
            v98 = v39;
          }
        }

        else
        {
          v53 = v40 - 2;
          while (v53 != v39)
          {
            v54 = v53;
            v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v53, 0);
            v190 = v55;
            v56 = *(&v189 + v46);
            v57 = *v53--;
            v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], v57, 1);
            v188 = v58;
            v59 = (*(&v187 + v46) + v56) * 0.5;
            v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v42, 0);
            v190 = v60;
            v61 = *(&v189 + v46);
            v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v42, 1);
            v188 = v62;
            if (v59 < (*(&v187 + v46) + v61) * 0.5)
            {
              v63 = *v39;
              *v39 = *v54;
              *v54 = v63;
              if (v183)
              {
                v64 = 2;
              }

              else
              {
                v64 = 1;
              }

              v183 = v64;
              v43 = v54;
              v40 = v182;
              goto LABEL_42;
            }
          }

          v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v39, 0);
          v190 = v108;
          v109 = *(&v189 + v46);
          v110 = v39 + 1;
          v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v39, 1);
          v188 = v111;
          v112 = (*(&v187 + v46) + v109) * 0.5;
          v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v43, 0);
          v190 = v113;
          v114 = *(&v189 + v46);
          v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v43, 1);
          v188 = v115;
          if (v112 >= (*(&v187 + v46) + v114) * 0.5)
          {
            a3 = v180;
            if (v110 == v43)
            {
              break;
            }

            while (1)
            {
              v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v39, 0);
              v190 = v124;
              v125 = *(&v189 + v46);
              v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v39, 1);
              v188 = v126;
              v127 = (*(&v187 + v46) + v125) * 0.5;
              v189 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v110, 0);
              v190 = v128;
              v129 = *(&v189 + v46);
              v187 = md::MercatorPointSource::segmentWorldPoint(v44[16], *v110, 1);
              v188 = v130;
              if (v127 < (*(&v187 + v46) + v129) * 0.5)
              {
                break;
              }

              if (++v110 == v43)
              {
                goto LABEL_28;
              }
            }

            v131 = *v110;
            *v110++ = *v43;
            *v43 = v131;
          }

          else
          {
            a3 = v180;
          }

          if (v110 == v43)
          {
            break;
          }

          while (1)
          {
            v133 = v185;
            v134 = v186;
            do
            {
              v98 = v110;
              v189 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v39, 0);
              v190 = v135;
              v136 = *(&v189 + v134);
              v187 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v39, 1);
              v188 = v137;
              v138 = (*(&v187 + v134) + v136) * 0.5;
              v189 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v110, 0);
              v190 = v139;
              v140 = *(&v189 + v134);
              v141 = *v110++;
              v187 = md::MercatorPointSource::segmentWorldPoint(v133[16], v141, 1);
              v188 = v142;
            }

            while (v138 >= (*(&v187 + v134) + v140) * 0.5);
            do
            {
              v189 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v39, 0);
              v190 = v143;
              v144 = *(&v189 + v134);
              v187 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v39, 1);
              v188 = v145;
              v146 = *--v43;
              v147 = (*(&v187 + v134) + v144) * 0.5;
              v189 = md::MercatorPointSource::segmentWorldPoint(v133[16], v146, 0);
              v190 = v148;
              v149 = *(&v189 + v134);
              v187 = md::MercatorPointSource::segmentWorldPoint(v133[16], *v43, 1);
              v188 = v150;
            }

            while (v147 < (*(&v187 + v134) + v149) * 0.5);
            if (v98 >= v43)
            {
              break;
            }

            v132 = *v98;
            *v98 = *v43;
            *v43 = v132;
          }

          v40 = v182;
          if (v98 > a3)
          {
            break;
          }
        }

        v39 = v98;
      }

      while (v40 != a3);
    }

LABEL_28:
    v7 = a1;
    md::RouteCollisionObject<md::MercatorPointSource>::buildTopDownAABBTree(a1, v179 + 1, v181, a3);
    a2 = v179 + 2;
  }

  *v8 = 1;
  *(v8 + 14) = v37;
  *(v8 + 8) = a3;
}

uint64_t geo::Pool<md::RouteCollisionObject<md::MercatorPointSource>::Node>::~Pool(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v3 = (a1 + 40);
  for (i = *(a1 + 40); i; *v3 = i)
  {
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v10, i, v3);
    i = **v3;
  }

  v4 = (a1 + 8);
  v5 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      free(v5[4]);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v4;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11[0]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2DC8AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::MercatorPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,2> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(int *a1, int *a2, int *a3, int *a4)
{
  v8 = *a4;
  v55 = md::MercatorPointSource::segmentWorldPoint(*(*a4 + 128), *a2, 0);
  v56 = v9;
  v10 = *(&v55 + a4[2]);
  v53 = md::MercatorPointSource::segmentWorldPoint(*(v8 + 128), *a2, 1);
  v54 = v11;
  v12 = (*(&v53 + a4[2]) + v10) * 0.5;
  v55 = md::MercatorPointSource::segmentWorldPoint(*(v8 + 128), *a1, 0);
  v56 = v13;
  v14 = *(&v55 + a4[2]);
  v53 = md::MercatorPointSource::segmentWorldPoint(*(v8 + 128), *a1, 1);
  v54 = v15;
  v16 = *a4;
  if (v12 >= (*(&v53 + a4[2]) + v14) * 0.5)
  {
    v55 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a3, 0);
    v56 = v26;
    v27 = *(&v55 + a4[2]);
    v53 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a3, 1);
    v54 = v28;
    v29 = (*(&v53 + a4[2]) + v27) * 0.5;
    v55 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a2, 0);
    v56 = v30;
    v31 = *(&v55 + a4[2]);
    v25 = 0;
    v53 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a2, 1);
    v54 = v32;
    if (v29 < (*(&v53 + a4[2]) + v31) * 0.5)
    {
      v33 = *a2;
      *a2 = *a3;
      *a3 = v33;
      v34 = *a4;
      v55 = md::MercatorPointSource::segmentWorldPoint(*(*a4 + 128), *a2, 0);
      v56 = v35;
      v36 = *(&v55 + a4[2]);
      v25 = 1;
      v53 = md::MercatorPointSource::segmentWorldPoint(*(v34 + 128), *a2, 1);
      v54 = v37;
      v38 = (*(&v53 + a4[2]) + v36) * 0.5;
      v55 = md::MercatorPointSource::segmentWorldPoint(*(v34 + 128), *a1, 0);
      v56 = v39;
      v40 = *(&v55 + a4[2]);
      v53 = md::MercatorPointSource::segmentWorldPoint(*(v34 + 128), *a1, 1);
      v54 = v41;
      if (v38 < (*(&v53 + a4[2]) + v40) * 0.5)
      {
        v42 = *a1;
        *a1 = *a2;
        *a2 = v42;
      }
    }
  }

  else
  {
    v55 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a3, 0);
    v56 = v17;
    v18 = *(&v55 + a4[2]);
    v53 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a3, 1);
    v54 = v19;
    v20 = (*(&v53 + a4[2]) + v18) * 0.5;
    v55 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a2, 0);
    v56 = v21;
    v22 = *(&v55 + a4[2]);
    v53 = md::MercatorPointSource::segmentWorldPoint(*(v16 + 128), *a2, 1);
    v54 = v23;
    v24 = *a1;
    if (v20 >= (*(&v53 + a4[2]) + v22) * 0.5)
    {
      *a1 = *a2;
      *a2 = v24;
      v43 = *a4;
      v55 = md::MercatorPointSource::segmentWorldPoint(*(*a4 + 128), *a3, 0);
      v56 = v44;
      v45 = *(&v55 + a4[2]);
      v25 = 1;
      v53 = md::MercatorPointSource::segmentWorldPoint(*(v43 + 128), *a3, 1);
      v54 = v46;
      v47 = (*(&v53 + a4[2]) + v45) * 0.5;
      v55 = md::MercatorPointSource::segmentWorldPoint(*(v43 + 128), *a2, 0);
      v56 = v48;
      v49 = *(&v55 + a4[2]);
      v53 = md::MercatorPointSource::segmentWorldPoint(*(v43 + 128), *a2, 1);
      v54 = v50;
      if (v47 < (*(&v53 + a4[2]) + v49) * 0.5)
      {
        v51 = *a2;
        *a2 = *a3;
        *a3 = v51;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v24;
      return 1;
    }
  }

  return v25;
}

uint64_t std::__split_buffer<GEOComposedRouteSection * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<md::RouteCollisionObject<md::MercatorPointSource>>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 152);
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
  geo::Pool<md::RouteCollisionObject<md::MercatorPointSource>::Node>::~Pool(a1 + 104);
  v4 = (a1 + 72);
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  *(a1 + 24) = &unk_1F2A4C308;
  v3 = *(a1 + 32);
}

void std::__shared_ptr_emplace<md::RouteCollisionObject<md::MercatorPointSource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RouteCollisionObject<md::GeocentricPointSource>::buildTopDownAABBTree(uint64_t *a1, char **a2, char *a3, int *a4)
{
  v41 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v40 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  while (1)
  {
    v8 = a1[15];
    if (!v8)
    {
      v9 = malloc_type_malloc(96 * a1[13], 0x102204091D8B105uLL);
      *&v42[0] = v9;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1 + 10, v9, v42);
      v8 = a1[15];
      v10 = &v9[12 * a1[13] - 12];
      if (v10 >= v9)
      {
        do
        {
          v11 = v10;
          *v10 = v8;
          v10 -= 12;
          v8 = v11;
        }

        while (v10 >= v9);
        v8 = (v10 + 12);
      }

      a1[15] = v8;
    }

    a1[15] = *v8;
    *a2 = v8;
    v42[0] = v41;
    v42[1] = xmmword_1B33B0520;
    v42[2] = v40;
    if (a4 != a3)
    {
      v12 = a3;
      do
      {
        v13 = md::GeocentricPointSource::segmentWorldPoint(a1[16], *v12, 0);
        v14 = 0;
        v43 = v13;
        v44 = v15;
        v45 = v16;
        do
        {
          v17 = (v42 + v14);
          v18 = *(&v43 + v14);
          *v17 = fmin(v18, *(v42 + v14));
          v17[3] = fmax(*(&v42[1] + v14 + 8), v18);
          v14 += 8;
        }

        while (v14 != 24);
        v19 = md::GeocentricPointSource::segmentWorldPoint(a1[16], *v12, 1);
        v20 = 0;
        v43 = v19;
        v44 = v21;
        v45 = v22;
        do
        {
          v23 = (v42 + v20);
          v24 = *(&v43 + v20);
          *v23 = fmin(v24, *(v42 + v20));
          v23[3] = fmax(*(&v42[1] + v20 + 8), v24);
          v20 += 8;
        }

        while (v20 != 24);
        ++v12;
      }

      while (v12 != a4);
    }

    v25 = 0;
    v26 = (a4 - a3) >> 2;
    do
    {
      *(v8 + v25 + 24) = *(v42 + v25);
      v25 += 8;
    }

    while (v25 != 24);
    for (i = 0; i != 24; i += 8)
    {
      *(v8 + i + 48) = *(&v42[1] + i + 8);
    }

    LODWORD(v42[0]) = -1;
    LODWORD(v43) = 0;
    if (a4 <= a3)
    {
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      LOWORD(v28) = 0;
      LOWORD(v29) = 0;
      v30 = 0xFFFF;
      LOWORD(v31) = -1;
      v32 = a3;
      do
      {
        v33 = *v32;
        v34 = v33 == v31;
        if (v33 > v31 || (v35 = v32, v34) && (v35 = v32, v30 < *(v32 + 1)))
        {
          v35 = v42;
        }

        v31 = *v35;
        LODWORD(v42[0]) = v31;
        v36 = v33 == v29;
        if (v33 < v29 || (v37 = v32, v36) && (v37 = v32, *(v32 + 1) < v28))
        {
          v37 = &v43;
        }

        v30 = WORD1(v31);
        v29 = *v37;
        LODWORD(v43) = v29;
        v32 += 4;
        v28 = WORD1(v29);
      }

      while (v32 < a4);
      v38 = v31 | (v29 << 32);
    }

    *(v8 + 88) = v38;
    if (v26 <= 4)
    {
      break;
    }

    *v8 = 0;
    *(v8 + 72) = v26;
    *(v8 + 80) = 0;
    v39 = md::RouteCollisionObject<md::GeocentricPointSource>::partitionSegments(a1, a3, a4, v8 + 24);
    md::RouteCollisionObject<md::GeocentricPointSource>::buildTopDownAABBTree(a1, (v8 + 8), a3, v39);
    a2 = (v8 + 16);
    a3 = v39;
  }

  *v8 = 1;
  *(v8 + 72) = v26;
  *(v8 + 80) = a3;
}

uint64_t geo::Pool<md::RouteCollisionObject<md::GeocentricPointSource>::Node>::~Pool(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v3 = (a1 + 40);
  for (i = *(a1 + 40); i; *v3 = i)
  {
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v10, i, v3);
    i = **v3;
  }

  v4 = (a1 + 8);
  v5 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      free(v5[4]);
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v4;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11[0]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2DC9404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

int *md::RouteCollisionObject<md::GeocentricPointSource>::partitionSegments(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  for (i = 0; i != 24; i += 8)
  {
    *(&v208 + i) = *(a4 + i + 24) - *(a4 + i);
  }

  v7 = fmax(v208, 0.0);
  v8 = fmax(v209, 0.0);
  v9 = fmax(v210, 0.0);
  v10 = v8 > v7;
  if (v8 > v7)
  {
    v7 = v8;
  }

  if (v9 > v7)
  {
    v10 = 2;
  }

  v203 = a1;
  v204 = v10;
  v202 = &a2[4 * ((((a3 - a2) >> 2) + ((a3 - a2) >> 63)) >> 1)];
  if (v202 != a3)
  {
    do
    {
      v12 = (v4 - v5) >> 2;
      if (v12 < 2)
      {
        break;
      }

      if (v12 == 3)
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::GeocentricPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,3> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(v5, v5 + 1, v4 - 1, &v203);
        return v202;
      }

      if (v12 == 2)
      {
        v166 = v203;
        v208 = md::GeocentricPointSource::segmentWorldPoint(*(v203 + 128), *(v4 - 1), 0);
        v209 = v167;
        v210 = v168;
        v169 = v204;
        v170 = *(&v208 + v204);
        v205 = md::GeocentricPointSource::segmentWorldPoint(*(v166 + 128), *(v4 - 1), 1);
        v206 = v171;
        v207 = v172;
        v173 = (*(&v205 + v169) + v170) * 0.5;
        v208 = md::GeocentricPointSource::segmentWorldPoint(*(v166 + 128), *v5, 0);
        v209 = v174;
        v210 = v175;
        v176 = *(&v208 + v169);
        v205 = md::GeocentricPointSource::segmentWorldPoint(*(v166 + 128), *v5, 1);
        v206 = v177;
        v207 = v178;
        if (v173 < (*(&v205 + v169) + v176) * 0.5)
        {
          v179 = *v5;
          *v5 = *(v4 - 1);
          *(v4 - 1) = v179;
        }

        return v202;
      }

      v201 = v4;
      if (v12 <= 7)
      {
        v180 = (v4 - 4);
        if (v4 - 4 != v5)
        {
          v200 = v4 - 4;
          do
          {
            v181 = v5++;
            if (v181 != v4 && v5 != v201)
            {
              v182 = v203;
              v183 = v204;
              v184 = v5;
              v185 = v181;
              v186 = v5;
              do
              {
                v208 = md::GeocentricPointSource::segmentWorldPoint(*(v182 + 128), *v184, 0);
                v209 = v187;
                v210 = v188;
                v189 = *(&v208 + v183);
                v190 = *v186++;
                v205 = md::GeocentricPointSource::segmentWorldPoint(*(v182 + 128), v190, 1);
                v206 = v191;
                v207 = v192;
                v193 = (*(&v205 + v183) + v189) * 0.5;
                v208 = md::GeocentricPointSource::segmentWorldPoint(*(v182 + 128), *v185, 0);
                v209 = v194;
                v210 = v195;
                v196 = *(&v208 + v183);
                v205 = md::GeocentricPointSource::segmentWorldPoint(*(v182 + 128), *v185, 1);
                v206 = v197;
                v207 = v198;
                if (v193 < (*(&v205 + v183) + v196) * 0.5)
                {
                  v185 = v184;
                }

                v184 = v186;
              }

              while (v186 != v201);
              v180 = v200;
              if (v185 != v181)
              {
                v199 = *v181;
                *v181 = *v185;
                *v185 = v199;
              }
            }

            v4 = v201;
          }

          while (v5 != v180);
        }

        return v202;
      }

      v13 = v4;
      v14 = &v5[(v4 - v5) >> 3];
      v15 = (v13 - 4);
      v16 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::GeocentricPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,3> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(v5, v14, v13 - 1, &v203);
      v17 = v203;
      v208 = md::GeocentricPointSource::segmentWorldPoint(*(v203 + 128), *v5, 0);
      v209 = v18;
      v210 = v19;
      v20 = v204;
      v21 = *(&v208 + v204);
      v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v5, 1);
      v206 = v22;
      v207 = v23;
      v24 = (*(&v205 + v20) + v21) * 0.5;
      v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v14, 0);
      v209 = v25;
      v210 = v26;
      v27 = *(&v208 + v20);
      v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v14, 1);
      v206 = v28;
      v207 = v29;
      if (v24 < (*(&v205 + v20) + v27) * 0.5)
      {
LABEL_21:
        v45 = v5 + 1;
        if (v5 + 1 >= v15)
        {
          v49 = v5 + 1;
        }

        else
        {
          for (j = v16; ; ++j)
          {
            v47 = v203;
            v48 = v204;
            do
            {
              v49 = v45;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v45, 0);
              v209 = v50;
              v210 = v51;
              v52 = *(&v208 + v48);
              v53 = *v45++;
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), v53, 1);
              v206 = v54;
              v207 = v55;
              v56 = (*(&v205 + v48) + v52) * 0.5;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v14, 0);
              v209 = v57;
              v210 = v58;
              v59 = *(&v208 + v48);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v14, 1);
              v206 = v60;
              v207 = v61;
            }

            while (v56 < (*(&v205 + v48) + v59) * 0.5);
            do
            {
              v62 = *--v15;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), v62, 0);
              v209 = v63;
              v210 = v64;
              v65 = *(&v208 + v48);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v15, 1);
              v206 = v66;
              v207 = v67;
              v68 = (*(&v205 + v48) + v65) * 0.5;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v14, 0);
              v209 = v69;
              v210 = v70;
              v71 = *(&v208 + v48);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v47 + 128), *v14, 1);
              v206 = v72;
              v207 = v73;
            }

            while (v68 >= (*(&v205 + v48) + v71) * 0.5);
            if (v49 >= v15)
            {
              break;
            }

            v74 = *v49;
            *v49 = *v15;
            *v15 = v74;
            if (v14 == v49)
            {
              v14 = v15;
            }
          }

          v16 = j;
          v45 = v5 + 1;
        }

        if (v49 != v14)
        {
          v75 = v203;
          v208 = md::GeocentricPointSource::segmentWorldPoint(*(v203 + 128), *v14, 0);
          v209 = v76;
          v210 = v77;
          v78 = v204;
          v79 = *(&v208 + v204);
          v205 = md::GeocentricPointSource::segmentWorldPoint(*(v75 + 128), *v14, 1);
          v206 = v80;
          v207 = v81;
          v82 = (*(&v205 + v78) + v79) * 0.5;
          v208 = md::GeocentricPointSource::segmentWorldPoint(*(v75 + 128), *v49, 0);
          v209 = v83;
          v210 = v84;
          v85 = *(&v208 + v78);
          v205 = md::GeocentricPointSource::segmentWorldPoint(*(v75 + 128), *v49, 1);
          v206 = v86;
          v207 = v87;
          if (v82 < (*(&v205 + v78) + v85) * 0.5)
          {
            v88 = *v49;
            *v49 = *v14;
            *v14 = v88;
            ++v16;
          }
        }

        v4 = v201;
        if (v49 == v202)
        {
          return v202;
        }

        if (!v16)
        {
          v90 = v203;
          v91 = v204;
          if (v49 <= v202)
          {
            v126 = v49 + 1;
            while (v126 != v201)
            {
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *v126, 0);
              v209 = v127;
              v210 = v128;
              v129 = *(&v208 + v91);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *v126, 1);
              v206 = v130;
              v207 = v131;
              v132 = (*(&v205 + v91) + v129) * 0.5;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *(v126 - 1), 0);
              v209 = v133;
              v210 = v134;
              v135 = *(&v208 + v91);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *(v126 - 1), 1);
              v206 = v136;
              v207 = v137;
              ++v126;
              if (v132 < (*(&v205 + v91) + v135) * 0.5)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
            while (v45 != v49)
            {
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *v45, 0);
              v209 = v92;
              v210 = v93;
              v94 = *(&v208 + v91);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *v45, 1);
              v206 = v95;
              v207 = v96;
              v97 = (*(&v205 + v91) + v94) * 0.5;
              v208 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *(v45 - 1), 0);
              v209 = v98;
              v210 = v99;
              v100 = *(&v208 + v91);
              v205 = md::GeocentricPointSource::segmentWorldPoint(*(v90 + 128), *(v45 - 1), 1);
              v206 = v101;
              v207 = v102;
              ++v45;
              if (v97 < (*(&v205 + v91) + v100) * 0.5)
              {
                goto LABEL_37;
              }
            }
          }

          return v202;
        }

LABEL_37:
        if (v49 <= v202)
        {
          v89 = v49 + 1;
        }

        else
        {
          v4 = v49;
          v89 = v5;
        }
      }

      else
      {
        v30 = (v13 - 8);
        while (v30 != v5)
        {
          v31 = v30;
          v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v30, 0);
          v209 = v32;
          v210 = v33;
          v34 = *(&v208 + v20);
          v35 = *v30--;
          v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), v35, 1);
          v206 = v36;
          v207 = v37;
          v38 = (*(&v205 + v20) + v34) * 0.5;
          v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v14, 0);
          v209 = v39;
          v210 = v40;
          v41 = *(&v208 + v20);
          v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v14, 1);
          v206 = v42;
          v207 = v43;
          if (v38 < (*(&v205 + v20) + v41) * 0.5)
          {
            v44 = *v5;
            *v5 = *v31;
            *v31 = v44;
            if (v16)
            {
              v16 = 2;
            }

            else
            {
              v16 = 1;
            }

            v15 = v31;
            goto LABEL_21;
          }
        }

        v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v5, 0);
        v209 = v103;
        v210 = v104;
        v105 = *(&v208 + v20);
        v106 = v5 + 1;
        v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v5, 1);
        v206 = v107;
        v207 = v108;
        v109 = (*(&v205 + v20) + v105) * 0.5;
        v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v15, 0);
        v209 = v110;
        v210 = v111;
        v112 = *(&v208 + v20);
        v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v15, 1);
        v206 = v113;
        v207 = v114;
        if (v109 >= (*(&v205 + v20) + v112) * 0.5)
        {
          while (v106 != v15)
          {
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v5, 0);
            v209 = v115;
            v210 = v116;
            v117 = *(&v208 + v20);
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v5, 1);
            v206 = v118;
            v207 = v119;
            v120 = (*(&v205 + v20) + v117) * 0.5;
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v106, 0);
            v209 = v121;
            v210 = v122;
            v123 = *(&v208 + v20);
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v17 + 128), *v106, 1);
            v206 = v124;
            v207 = v125;
            if (v120 < (*(&v205 + v20) + v123) * 0.5)
            {
              v138 = *v106;
              *v106++ = *v15;
              *v15 = v138;
              goto LABEL_53;
            }

            ++v106;
          }

          return v202;
        }

LABEL_53:
        if (v106 == v15)
        {
          return v202;
        }

        while (1)
        {
          v139 = v203;
          v140 = v204;
          do
          {
            v89 = v106;
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v5, 0);
            v209 = v141;
            v210 = v142;
            v143 = *(&v208 + v140);
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v5, 1);
            v206 = v144;
            v207 = v145;
            v146 = (*(&v205 + v140) + v143) * 0.5;
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v106, 0);
            v209 = v147;
            v210 = v148;
            v149 = *(&v208 + v140);
            v150 = *v106++;
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), v150, 1);
            v206 = v151;
            v207 = v152;
          }

          while (v146 >= (*(&v205 + v140) + v149) * 0.5);
          do
          {
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v5, 0);
            v209 = v153;
            v210 = v154;
            v155 = *(&v208 + v140);
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v5, 1);
            v206 = v156;
            v207 = v157;
            v158 = *--v15;
            v159 = (*(&v205 + v140) + v155) * 0.5;
            v208 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), v158, 0);
            v209 = v160;
            v210 = v161;
            v162 = *(&v208 + v140);
            v205 = md::GeocentricPointSource::segmentWorldPoint(*(v139 + 128), *v15, 1);
            v206 = v163;
            v207 = v164;
          }

          while (v159 < (*(&v205 + v140) + v162) * 0.5);
          if (v89 >= v15)
          {
            break;
          }

          v165 = *v89;
          *v89 = *v15;
          *v15 = v165;
        }

        v4 = v201;
        if (v89 > v202)
        {
          return v202;
        }
      }

      v5 = v89;
    }

    while (v4 != v202);
  }

  return v202;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteCollisionObject<md::GeocentricPointSource>::partitionSegments(std::__wrap_iter<md::PointSource::SegmentIndex *>,std::__wrap_iter<md::PointSource::SegmentIndex *>,gm::Box<double,3> &)::{lambda(md::PointSource::SegmentIndex const&,md::PointSource::SegmentIndex const&)#1} &,std::__wrap_iter<md::PointSource::SegmentIndex *>,0>(int *a1, int *a2, int *a3, int *a4)
{
  v8 = *a4;
  v76 = md::GeocentricPointSource::segmentWorldPoint(*(*a4 + 128), *a2, 0);
  v77 = v9;
  v78 = v10;
  v11 = *(&v76 + a4[2]);
  v73 = md::GeocentricPointSource::segmentWorldPoint(*(v8 + 128), *a2, 1);
  v74 = v12;
  v75 = v13;
  v14 = (*(&v73 + a4[2]) + v11) * 0.5;
  v76 = md::GeocentricPointSource::segmentWorldPoint(*(v8 + 128), *a1, 0);
  v77 = v15;
  v78 = v16;
  v17 = *(&v76 + a4[2]);
  v73 = md::GeocentricPointSource::segmentWorldPoint(*(v8 + 128), *a1, 1);
  v74 = v18;
  v75 = v19;
  v20 = *a4;
  if (v14 >= (*(&v73 + a4[2]) + v17) * 0.5)
  {
    v76 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a3, 0);
    v77 = v34;
    v78 = v35;
    v36 = *(&v76 + a4[2]);
    v73 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a3, 1);
    v74 = v37;
    v75 = v38;
    v39 = (*(&v73 + a4[2]) + v36) * 0.5;
    v76 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a2, 0);
    v77 = v40;
    v78 = v41;
    v42 = *(&v76 + a4[2]);
    v33 = 0;
    v73 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a2, 1);
    v74 = v43;
    v75 = v44;
    if (v39 < (*(&v73 + a4[2]) + v42) * 0.5)
    {
      v45 = *a2;
      *a2 = *a3;
      *a3 = v45;
      v46 = *a4;
      v76 = md::GeocentricPointSource::segmentWorldPoint(*(*a4 + 128), *a2, 0);
      v77 = v47;
      v78 = v48;
      v49 = *(&v76 + a4[2]);
      v33 = 1;
      v73 = md::GeocentricPointSource::segmentWorldPoint(*(v46 + 128), *a2, 1);
      v74 = v50;
      v75 = v51;
      v52 = (*(&v73 + a4[2]) + v49) * 0.5;
      v76 = md::GeocentricPointSource::segmentWorldPoint(*(v46 + 128), *a1, 0);
      v77 = v53;
      v78 = v54;
      v55 = *(&v76 + a4[2]);
      v73 = md::GeocentricPointSource::segmentWorldPoint(*(v46 + 128), *a1, 1);
      v74 = v56;
      v75 = v57;
      if (v52 < (*(&v73 + a4[2]) + v55) * 0.5)
      {
        v58 = *a1;
        *a1 = *a2;
        *a2 = v58;
      }
    }
  }

  else
  {
    v76 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a3, 0);
    v77 = v21;
    v78 = v22;
    v23 = *(&v76 + a4[2]);
    v73 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a3, 1);
    v74 = v24;
    v75 = v25;
    v26 = (*(&v73 + a4[2]) + v23) * 0.5;
    v76 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a2, 0);
    v77 = v27;
    v78 = v28;
    v29 = *(&v76 + a4[2]);
    v73 = md::GeocentricPointSource::segmentWorldPoint(*(v20 + 128), *a2, 1);
    v74 = v30;
    v75 = v31;
    v32 = *a1;
    if (v26 >= (*(&v73 + a4[2]) + v29) * 0.5)
    {
      *a1 = *a2;
      *a2 = v32;
      v59 = *a4;
      v76 = md::GeocentricPointSource::segmentWorldPoint(*(*a4 + 128), *a3, 0);
      v77 = v60;
      v78 = v61;
      v62 = *(&v76 + a4[2]);
      v33 = 1;
      v73 = md::GeocentricPointSource::segmentWorldPoint(*(v59 + 128), *a3, 1);
      v74 = v63;
      v75 = v64;
      v65 = (*(&v73 + a4[2]) + v62) * 0.5;
      v76 = md::GeocentricPointSource::segmentWorldPoint(*(v59 + 128), *a2, 0);
      v77 = v66;
      v78 = v67;
      v68 = *(&v76 + a4[2]);
      v73 = md::GeocentricPointSource::segmentWorldPoint(*(v59 + 128), *a2, 1);
      v74 = v69;
      v75 = v70;
      if (v65 < (*(&v73 + a4[2]) + v68) * 0.5)
      {
        v71 = *a2;
        *a2 = *a3;
        *a3 = v71;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v32;
      return 1;
    }
  }

  return v33;
}

void std::__shared_ptr_emplace<md::RouteCollisionObject<md::GeocentricPointSource>>::__on_zero_shared(uint64_t a1)
{
  v4 = (a1 + 152);
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
  geo::Pool<md::RouteCollisionObject<md::GeocentricPointSource>::Node>::~Pool(a1 + 104);
  v4 = (a1 + 72);
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  *(a1 + 24) = &unk_1F2A4C308;
  v3 = *(a1 + 32);
}

void std::__shared_ptr_emplace<md::RouteCollisionObject<md::GeocentricPointSource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A00240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::DaVinciGroundLayerDataSource::updateRequest(uint64_t a1, unsigned __int8 **a2, uint64_t a3, unsigned __int16 **a4)
{
  v48[1] = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap(&v37, *(a1 + 592), *a4, a4[1]);
  v8 = v37;
  v7 = v38[0];
  if (v38[0])
  {
    atomic_fetch_add_explicit(v38[0] + 1, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (!v8 || *(a1 + 848) != 1)
  {
    v13 = 0;
    goto LABEL_32;
  }

  v9 = *(v8 + 144);
  v10 = *(v8 + 152);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  geo::codec::VectorTile::daVinciTileMaterialList(v45, v9);
  if (!v47)
  {
    v13 = 0;
    goto LABEL_30;
  }

  v11 = *a4;
  v12 = a4[1];
  while (1)
  {
    if (v11 == v12)
    {
      v14 = **a2;
      goto LABEL_14;
    }

    if (*v11 == 36)
    {
      break;
    }

    v11 += 24;
  }

  v14 = **a2;
  if (v11 == v12 || !*(v11 + 4))
  {
LABEL_14:
    v15 = v46;
    if (!v46)
    {
LABEL_28:
      v13 = 1;
      goto LABEL_30;
    }

    while (1)
    {
      v16 = v15[2];
      v17 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((*(a1 + 800) + 16), v16);
      if (v17)
      {
        v18 = v17[3];
        v19 = v17[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v18 && (v14 || *(std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((*(a1 + 800) + 56), v16) + 24) != 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = *(*a2 + 14);
      v48[0] = v16;
      gdc::ResourceKey::ResourceKey(&v37, v14, 36, v48, 1, v20);
      gdc::LayerDataRequest::request(*a2, &v37, 0);
      if (v38[0] != v39)
      {
        free(v38[0]);
      }

LABEL_25:
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }

      v15 = *v15;
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  v35 = v10;
  v22 = *(v11 + 3);
  if (v22)
  {
    while (1)
    {
      v37 = v22[2];
      v38[0] = v41;
      v38[1] = v41;
      v39 = v41;
      v40 = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(v38, v22[3], v22[4]);
      v23 = v22[11];
      v42 = *(v22 + 6);
      v25 = v22[14];
      v24 = v22[15];
      v41[4] = v23;
      v43 = v25;
      v44 = v24;
      if (v24)
      {
        v26 = 1;
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v25 = v43;
        v27 = v44;
        if (v44)
        {
          v26 = 0;
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v27 = 0;
        v26 = 1;
      }

      UInt64 = gdc::ResourceKey::getUInt64(v38[0], 0);
      v29 = *(a1 + 800);
      v30 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((v29 + 16), UInt64);
      if (!v30)
      {
        break;
      }

      v31 = v30[3];
      v32 = v30[4];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v31)
      {
        v29 = *(a1 + 800);
        goto LABEL_51;
      }

      if (!v14)
      {
        v29 = *(a1 + 800);
        if (*(std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v29 + 56), UInt64) + 24) == 1)
        {
          goto LABEL_51;
        }
      }

LABEL_55:
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v32);
      }

      if ((v26 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v27);
      }

      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v44);
      }

      if (v38[0] != v39)
      {
        free(v38[0]);
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_64;
      }
    }

    v32 = 0;
LABEL_51:
    LOBYTE(v48[0]) = *v25 == 1;
    v33 = *(v25 + 144);
    v34 = *(v25 + 152);
    v36[0] = v33;
    v36[1] = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gms::MaterialManager<ggl::Texture2D>::replaceMaterialSheet(v29, UInt64, v36, v48);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    goto LABEL_55;
  }

LABEL_64:
  v13 = 0;
  v10 = v35;
LABEL_30:
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v45);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

LABEL_32:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v13;
}

void sub_1B2DCA728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciGroundLayerDataSource::createLayerData(uint64_t a1, gdc::Camera *a2, unsigned __int16 **a3)
{
  gdc::LayerDataSource::getResourceFromMap(&v7, *(a1 + 592), *a3, a3[1]);
  v6 = v8;
  v11[3] = v7;
  v11[4] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  memset(v11, 0, 24);
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], v11);
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v10, (a1 + 816));
  md::RegistryManager::vendRegistry(&v9, v10);
}

void sub_1B2DCA9C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35)
{
  if (a35 != -1)
  {
    (off_1F2A00310[a35])(v37 - 81, &a23, a3, a4, a5, a6, a7, a8);
  }

  a35 = -1;
  if (a13 != a15)
  {
    free(a13);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  std::unique_ptr<gdc::Registry>::~unique_ptr[abi:nn200100]((v37 - 152));
  v39 = *(v37 - 136);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  v40 = *(v37 - 128);
  if (v40)
  {
    operator delete(v40);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  _Unwind_Resume(a1);
}

uint64_t md::DaVinciGroundLayerDataSource::isReadyToDecode(md::DaVinciGroundLayerDataSource *this)
{
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v3, this + 98);
  if (v3)
  {
    v1 = atomic_load((*(v3 + 16) + 2786));
  }

  else
  {
    v1 = 0;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return v1 & 1;
}

void md::DaVinciGroundLayerDataSource::~DaVinciGroundLayerDataSource(md::DaVinciGroundLayerDataSource *this)
{
  *this = &unk_1F2A00278;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 832);
  v2 = *(this + 103);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 101);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 99);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A00278;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 832);
  v2 = *(this + 103);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 101);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 99);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void sub_1B2DCAD94(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void md::MuninLabelLayerData::~MuninLabelLayerData(md::MuninLabelLayerData *this)
{
  md::MuninLabelLayerData::~MuninLabelLayerData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A00368;
  *(this + 80) = &unk_1F2A003A8;
  v2 = *(this + 94);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 92);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::MapTileData::~MapTileData(this);
}

void std::__shared_ptr_emplace<md::MuninLabelLayerData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A003C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

id md::ARWalkingCustomSceneMapEngineMode::getSession(md::ARWalkingCustomSceneMapEngineMode *this)
{
  v1 = +[MDARSession newPositionalTrackingSession];

  return v1;
}

uint64_t md::ARWalkingCustomSceneMapEngineMode::buildScene(void *a1, int a2, void *a3)
{
  v101 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a2 == 2)
  {
    v7 = a1[82];
    v64 = v6;
    v8 = +[VKDebugSettings sharedSettings];
    v7[3] = 0;
    v7[4] = 0;
    v7[5] = 0;
    v81 = 0;
    v80 = 0x415854A640000000uLL;
    gdc::CameraFrame<geo::Degrees,double>::createLocalEcefFrame(&v72, &v80);
    v80 = v72;
    v82 = v74;
    v81 = v73;
    v83 = v75;
    v84 = v76;
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v85 = &unk_1F2A0CD20;
    v86 = v9;
    v87 = 1;
    [v8 arDebugSceneFeatureDistance];
    v71[0] = 0;
    v71[1] = 0;
    *&v71[2] = -v10;
    [v8 arDebugSceneFeatureHeading];
    v12 = v11;
    if ([v8 arDebugSceneFeatureType])
    {
      v91 = xmmword_1B33B0F00;
      LODWORD(v92) = 6;
      HIDWORD(v92) = [v8 arDebugScenePoiType];
      v93 = xmmword_1B33B0F10;
      v94 = xmmword_1B33B0F20;
      *&v95 = 0x1000000A4;
      std::vector<GeoCodecsFeatureStylePair>::vector[abi:nn200100](&v98, &v91, 8uLL);
      v91 = v82;
      v92 = v83;
      *&v93 = v84;
      v13 = gm::Quaternion<double>::operator*(&v91, v71);
      v14 = 0;
      v69 = v13;
      v70.f64[0] = v15;
      v70.f64[1] = v16;
      do
      {
        v88.f64[v14] = *(&v69 + v14 * 8) + *(&v80 + v14 * 8);
        ++v14;
      }

      while (v14 != 3);
      md::ARDebugCustomSceneBuilder::convertPointToCoordinate(&v91, v87, v88.f64[0], v88.f64[1], v89);
      v17 = v91;
      v18 = v92;
      v19 = objc_alloc_init(MEMORY[0x1E69A1DB0]);
      [v19 replaceAttributes:? count:?];
      v20 = [[VKARWalkingArrivalFeature alloc] initWithPosition:v19 iconStyleAttributes:*&v17, v18];
      [v86 addObject:v20];

      v21 = v98;
      if (v98 != 0.0)
      {
        v99 = v98;
LABEL_19:
        operator delete(*&v21);
      }
    }

    else
    {
      v89 = 0.0;
      v88 = 0x415854A640000000uLL;
      gdc::CameraFrame<geo::Degrees,double>::createLocalEcefBasis(v91.f64, v88.f64);
      gm::quaternionFromAngleAxis<double>(&v69, &v94 + 8, v12 * 0.0174532925);
      v88.f64[0] = gm::Quaternion<double>::operator*(&v69, &v91);
      v88.f64[1] = v22;
      v89 = v23;
      *&v67 = gm::Matrix<double,3,1>::normalized<int,void>(&v88);
      *(&v67 + 1) = v24;
      v68 = v25;
      v26 = [v8 arDebugSceneFeatureText];
      if (v26)
      {
        v3 = [v8 arDebugSceneFeatureText];
        v27 = v3;
        v28 = [v3 UTF8String];
      }

      else
      {
        v28 = "";
      }

      std::string::basic_string[abi:nn200100]<0>(__p, v28);
      if (v26)
      {
      }

      v88 = v82;
      v89 = v83;
      v90 = v84;
      v29 = gm::Quaternion<double>::operator*(&v88, v71);
      v30 = 0;
      *&v77 = v29;
      *(&v77 + 1) = v31;
      v78 = v32;
      do
      {
        *(&v98 + v30) = *(&v77 + v30) + *(&v80 + v30);
        v30 += 8;
      }

      while (v30 != 24);
      md::ARDebugCustomSceneBuilder::convertPointToCoordinate(&v88, v87, v98, v99, v100);
      v33 = gm::Quaternion<double>::operator*(&v82, &v67);
      v35 = v34;
      v36 = v88;
      v37 = v89;
      if (v66 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v38, v33}];
      v40 = [[VKARWalkingManeuverFeature alloc] initWithDisplayLocation:0 routeCoordinate:v39 maneuverHeading:0 displayText:*&v36 elevationModel:v37, (acos(v35) * 57.2957795)];
      [v86 addObject:v40];

      if (v66 < 0)
      {
        v21 = *__p;
        goto LABEL_19;
      }
    }

    v41 = a1[77];
    v42 = v64;
    if (HIBYTE(v87) == 1)
    {
      v98 = 0.0;
      v99 = 0.0;
      v100 = 0.0;
      v91 = v82;
      v92 = v83;
      *&v93 = v84;
      v43 = gm::Quaternion<double>::operator*(&v91, &v98);
      v44 = 0;
      v69 = v43;
      v70.f64[0] = v45;
      v70.f64[1] = v46;
      do
      {
        v88.f64[v44] = *(&v69 + v44 * 8) + *(&v80 + v44 * 8);
        ++v44;
      }

      while (v44 != 3);
      md::ARDebugCustomSceneBuilder::convertPointToCoordinate(&v69, v87, v88.f64[0], v88.f64[1], v89);
      v47 = v69;
      v48 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v69);
      v63 = v70;
      v49 = tan(v47 * 0.00872664626 + 0.785398163);
      v50 = log(v49);
      v51.f64[0] = v63.f64[0];
      v93 = 0uLL;
      v51.f64[1] = v50;
      v52 = v51;
      __asm { FMOV            V3.2D, #0.5 }

      v91 = vmlaq_f64(_Q3, xmmword_1B33B0700, v52);
      v92 = vmuld_lane_f64(0.0000000249532021, v63, 1);
      *&v94 = 0;
      *(&v94 + 1) = 0x3FF0000000000000;
      v95 = v48 * 75.0;
      v96 = v48 * 75.0;
      __asm { FMOV            V0.4S, #1.0 }

      v77 = _Q0;
      v97 = 0x3FF0000000000000;
      v98 = COERCE_DOUBLE(&unk_1F2A43EB8);
      v99 = 0.0;
      v89 = 0.0;
      v88 = 0uLL;
      geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v90, &v98);
      v67 = xmmword_1B33B0720;
      __asm { FMOV            V0.2S, #1.0 }

      v79 = _D0;
      gdc::Registry::create(v41);
    }

    v60 = v86;
    operator new();
  }

  v61 = a1[87];

  return v61;
}

double gdc::CameraFrame<geo::Degrees,double>::createLocalEcefFrame(uint64_t a1, uint64_t a2)
{
  gdc::CameraFrame<geo::Degrees,double>::createLocalEcefBasis(&v13, a2);
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  gm::quaternionFromRotationMatrix<double>(&v10, &v5);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v10;
  *(a1 + 40) = v11;
  result = v12;
  *(a1 + 48) = v12;
  return result;
}

double gdc::CameraFrame<geo::Degrees,double>::createLocalEcefBasis(double *a1, long double *a2)
{
  geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(a2, &v25);
  v4 = v26;
  v5 = v25.f64[1] * 0.0174532925 + 0.000000174532925;
  v6 = __sincos_stret(v25.f64[0] * 0.0174532925);
  v7 = 6378137.0 / sqrt(v6.__sinval * v6.__sinval * -0.00669437999 + 1.0);
  v8 = (v7 + v4) * v6.__cosval;
  v9 = __sincos_stret(v5);
  v24[0] = v8 * v9.__cosval;
  v24[1] = v8 * v9.__sinval;
  v24[2] = (v4 + v7 * 0.99330562) * v6.__sinval;
  v10 = gm::Matrix<double,3,1>::normalized<int,void>(a2);
  v12 = v11;
  v14 = v13;
  v15 = 0;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = v13;
  do
  {
    *(&v27 + v15 * 8) = v24[v15] - a2[v15];
    ++v15;
  }

  while (v15 != 3);
  v16 = gm::Matrix<double,3,1>::normalized<int,void>(&v27);
  v19 = -(v12 * v17 - v14 * v18);
  v20 = -(v14 * v16 - v10 * v17);
  v21 = -(v10 * v18 - v12 * v16);
  a1[6] = v19;
  a1[7] = v20;
  a1[8] = v21;
  v22 = -(v20 * v14 - v21 * v12);
  result = -(v21 * v10 - v19 * v14);
  *a1 = v22;
  a1[1] = result;
  a1[2] = -(v19 * v12 - v20 * v10);
  return result;
}

void geo::_retain_ptr<NSMutableArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A0CD20;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSMutableArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A0CD20;

  return a1;
}

void md::ARWalkingCustomSceneMapEngineMode::~ARWalkingCustomSceneMapEngineMode(md::ARWalkingCustomSceneMapEngineMode *this)
{
  *this = &unk_1F2A003F8;
  v2 = *(this + 87);
  *(this + 87) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v3 = *(this + 82);
  *(this + 82) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 78);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A003F8;
  v2 = *(this + 87);
  *(this + 87) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v3 = *(this + 82);
  *(this + 82) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 78);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MapEngineMode::~MapEngineMode(this);
}

void geo::_retain_ptr<ARSession * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4C1F8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<ARSession * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4C1F8;

  return a1;
}

double GEOMapRectEnclosingCameraProperties(double *a1, float a2)
{
  v4 = [[VKCamera alloc] initWithRunLoopController:0];
  [(VKCamera *)v4 setAspectRatio:a2];
  v5 = a1[3];
  v6 = __sincos_stret(a1[2] * 0.00872664626);
  v7 = __sincos_stret(v5 * 0.00872664626);
  v8.f64[0] = v7.__cosval;
  v9.f64[0] = v6.__cosval;
  v10.f64[0] = v6.__sinval;
  v8.f64[1] = v6.__cosval;
  v9.f64[1] = v6.__sinval;
  v10.f64[1] = v7.__cosval;
  v25[0] = vmulq_n_f64(v9, v7.__sinval);
  v25[1] = vmulq_f64(v8, v10);
  [(VKCamera *)v4 setOrientation:v25];
  v11 = *a1;
  v12 = a1[1];
  v13 = tan(*a1 * 0.00872664626 + 0.785398163);
  v14 = v12 * 0.00277777778 + 0.5;
  v15 = log(v13) * 0.159154943 + 0.5;
  *v24 = v14;
  *&v24[1] = v15;
  v24[2] = 0;
  v16 = a1[3];
  v17 = a1[4];
  if (v16 < 90.0)
  {
    v17 = v17 / cos(v16 * 0.0174532925);
  }

  *v23 = v14;
  *&v23[1] = v15;
  *&v23[2] = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v11) * v17;
  v22[0] = gm::rotateAboutPoint<double>(v23, v25, v24);
  v22[1] = v18;
  v22[2] = v19;
  [(VKCamera *)v4 setPosition:v22];
  v20 = *(MEMORY[0x1E69A1680] + 16);
  v26[0] = *MEMORY[0x1E69A1680];
  v26[1] = v20;
  VKCameraCalculateEnclosingRegion(v4, 0, v26, 0.0, 0.0, 0.0, 0.0);

  return *v26;
}

double GEOPDCameraPathFrameFromVKCameraFrame@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 16) = *(a1 + 16);
  v2 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  *(a2 + 24) = vmulq_f64(*a1, v2);
  v4 = *(a1 + 32);
  v3.f64[0] = *(a1 + 40);
  v3.f64[1] = *(a1 + 24);
  *(a2 + 80) = 0;
  *(a2 + 40) = vmulq_f64(v3, v2);
  result = v4 * 0.0174532925;
  *(a2 + 80) = 760;
  *(a2 + 64) = v4 * 0.0174532925;
  return result;
}

double VKCameraFrameFromGEOPDCameraPathFrame@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = vdupq_n_s64(0x404CA5DC1A63C1F8uLL);
  *a2 = vmulq_f64(*(a1 + 24), v2);
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 40);
  v3.f64[0] = *(a1 + 48);
  v3.f64[1] = *(a1 + 64);
  *(a2 + 24) = vmulq_f64(v3, v2);
  result = v4 * 57.2957795;
  *(a2 + 40) = v4 * 57.2957795;
  return result;
}

void VKCameraPropertiesForStoreFrontView(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  if (v3)
  {
    v6 = v3;
    md::mun::cameraFrameFromStorefront(&v7, v3);
    v4 = vmulq_f64(v7, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
    *(a2 + 32) = v8;
    v5 = vmulq_f64(v9, xmmword_1B33B0F30);
    *a2 = v4;
    *(a2 + 16) = vextq_s8(v5, v5, 8uLL);
    v3 = v6;
  }
}

void md::mun::MuninLabelLayerDataSource::createLayerData(uint64_t a2@<X1>, unsigned __int16 **a3@<X2>, void *a4@<X8>)
{
  gdc::Tiled::tileFromLayerDataKey(&v75, *(a2 + 16));
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v73, 24, *a3, a3[1]);
  if (v73)
  {
    v7 = *a3;
    v6 = a3[1];
    while (v7 != v6)
    {
      if (*v7 == 22)
      {
        if (v7 != v6)
        {
          v8 = *(v7 + 3);
          if (v8)
          {
            v9 = 0;
            v10 = 0;
            do
            {
              v12 = v8[14];
              v11 = v8[15];
              if (v12)
              {
                v13 = (v12 - 8);
              }

              else
              {
                v13 = 0;
              }

              if (v11)
              {
                atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v15 = v13[27];
              v14 = v13[28];
              v17 = v13[19];
              v16 = v13[20];
              if (v11)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v11);
              }

              v9 -= 0x30C30C30C30C30C3 * ((v14 - v15) >> 3);
              v10 += 0x63FB9AEB1FDCD759 * ((v16 - v17) >> 3);
              v8 = *v8;
            }

            while (v8);
            v78 = 0;
            v79 = 0uLL;
            v76 = 0;
            v77 = 0uLL;
            if (v9)
            {
              if (v9 <= 0x186186186186186)
              {
                v83 = &v78;
                std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>>(v9);
              }

LABEL_70:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }
          }

          else
          {
            v10 = 0;
            v78 = 0;
            v79 = 0uLL;
            v76 = 0;
            v77 = 0uLL;
          }

          std::vector<md::mun::CollectionPoint>::reserve(&v76, v10);
          for (i = *(v7 + 3); i; i = *i)
          {
            v19 = i[14];
            v20 = i[15];
            if (v19)
            {
              v21 = (v19 - 8);
            }

            else
            {
              v21 = 0;
            }

            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v72 = v20;
            v22 = v21[27];
            v23 = v21[28];
            v24 = v23 - v22;
            if (v23 - v22 >= 1)
            {
              v25 = v79;
              if (*(&v79 + 1) - v79 >= v24)
              {
                if (v23 != v22)
                {
                  v28 = v79;
                  do
                  {
                    v29 = v28;
                    v30 = *(v22 + 16);
                    *v28 = *v22;
                    *(v28 + 16) = v30;
                    v31 = *(v22 + 32);
                    v32 = *(v22 + 48);
                    v33 = *(v22 + 64);
                    *(v28 + 80) = *(v22 + 80);
                    *(v28 + 48) = v32;
                    *(v28 + 64) = v33;
                    v34 = v28 + 120;
                    *(v29 + 88) = v34;
                    *(v29 + 32) = v31;
                    *(v29 + 96) = v34;
                    *(v29 + 104) = v34;
                    *(v29 + 112) = 1;
                    geo::small_vector_base<md::mun::OrientedPlane>::append<md::mun::OrientedPlane const*>((v29 + 88), *(v22 + 88), *(v22 + 96));
                    v22 += 168;
                    v28 = v29 + 168;
                  }

                  while (v22 != v23);
                  v25 = (v29 + 168);
                }

                *&v79 = v25;
              }

              else
              {
                v26 = 0xCF3CF3CF3CF3CF3DLL * ((v79 - v78) >> 3) - 0x30C30C30C30C30C3 * (v24 >> 3);
                if (v26 > 0x186186186186186)
                {
                  goto LABEL_70;
                }

                if (0x9E79E79E79E79E7ALL * ((*(&v79 + 1) - v78) >> 3) > v26)
                {
                  v26 = 0x9E79E79E79E79E7ALL * ((*(&v79 + 1) - v78) >> 3);
                }

                if (0xCF3CF3CF3CF3CF3DLL * ((*(&v79 + 1) - v78) >> 3) >= 0xC30C30C30C30C3)
                {
                  v27 = 0x186186186186186;
                }

                else
                {
                  v27 = v26;
                }

                v83 = &v78;
                if (v27)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>>(v27);
                }

                v35 = 0;
                v36 = 8 * ((v79 - v78) >> 3);
                v80 = 0;
                v81 = v36;
                v82 = v36;
                do
                {
                  v37 = v36 + v35;
                  v38 = *(v22 + v35 + 16);
                  *v37 = *(v22 + v35);
                  *(v37 + 16) = v38;
                  v39 = *(v22 + v35 + 32);
                  v40 = *(v22 + v35 + 48);
                  v41 = *(v22 + v35 + 64);
                  *(v37 + 80) = *(v22 + v35 + 80);
                  *(v37 + 48) = v40;
                  *(v37 + 64) = v41;
                  *(v37 + 32) = v39;
                  v42 = v36 + v35 + 120;
                  *(v37 + 96) = v42;
                  *(v37 + 104) = v42;
                  *(v37 + 112) = 1;
                  *(v37 + 88) = v42;
                  geo::small_vector_base<md::mun::OrientedPlane>::append<md::mun::OrientedPlane const*>((v36 + v35 + 88), *(v22 + v35 + 88), *(v22 + v35 + 96));
                  v35 += 168;
                }

                while (v24 != v35);
                *&v82 = v36 + v24;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>,md::mun::StorefrontBundle*>(v25, v79, v36 + v24);
                *&v82 = v82 + v79 - v25;
                *&v79 = v25;
                v43 = (v81 + v78 - v25);
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>,md::mun::StorefrontBundle*>(v78, v25, v43);
                v44 = v78;
                v45 = *(&v79 + 1);
                v78 = v43;
                v79 = v82;
                *&v82 = v44;
                *(&v82 + 1) = v45;
                v80 = v44;
                v81 = v44;
                std::__split_buffer<md::mun::StorefrontBundle>::~__split_buffer(&v80);
              }
            }

            v47 = v21[19];
            v46 = v21[20];
            v48 = v46 - v47;
            if (v46 - v47 >= 1)
            {
              v49 = v77;
              if (*(&v77 + 1) - v77 >= v48)
              {
                if (v46 != v47)
                {
                  v52 = v77;
                  do
                  {
                    v53 = v52;
                    *v52 = *v47;
                    v54 = *(v47 + 8);
                    *(v52 + 24) = *(v47 + 24);
                    *(v52 + 8) = v54;
                    v55 = *(v47 + 32);
                    *(v53 + 40) = *(v47 + 40);
                    *(v53 + 32) = v55;
                    *(v53 + 44) = *(v47 + 44);
                    v56 = *(v47 + 56);
                    v57 = *(v47 + 72);
                    *(v53 + 88) = v53 + 120;
                    *(v53 + 56) = v56;
                    *(v53 + 72) = v57;
                    *(v53 + 96) = v53 + 120;
                    *(v53 + 104) = v53 + 120;
                    *(v53 + 112) = 6;
                    geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((v53 + 88), *(v47 + 88), *(v47 + 96));
                    v58 = *(v47 + 1848);
                    *(v53 + 1853) = *(v47 + 1853);
                    *(v53 + 1848) = v58;
                    v47 += 1864;
                    v52 = v53 + 1864;
                  }

                  while (v47 != v46);
                  v49 = v53 + 1864;
                }

                *&v77 = v49;
              }

              else
              {
                v50 = 0x63FB9AEB1FDCD759 * ((v77 - v76) >> 3) + 0x63FB9AEB1FDCD759 * (v48 >> 3);
                if (v50 > 0x2328A701194538)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                if (0xC7F735D63FB9AEB2 * ((*(&v77 + 1) - v76) >> 3) > v50)
                {
                  v50 = 0xC7F735D63FB9AEB2 * ((*(&v77 + 1) - v76) >> 3);
                }

                if ((0x63FB9AEB1FDCD759 * ((*(&v77 + 1) - v76) >> 3)) >= 0x119453808CA29CLL)
                {
                  v51 = 0x2328A701194538;
                }

                else
                {
                  v51 = v50;
                }

                v83 = &v76;
                if (v51)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::CollectionPoint>>(v51);
                }

                v59 = 0;
                v60 = 8 * ((v77 - v76) >> 3);
                v80 = 0;
                v81 = v60;
                v82 = v60;
                do
                {
                  v61 = v60 + v59;
                  *v61 = *(v47 + v59);
                  v62 = *(v47 + v59 + 8);
                  *(v61 + 24) = *(v47 + v59 + 24);
                  *(v61 + 8) = v62;
                  v63 = *(v47 + v59 + 32);
                  *(v61 + 40) = *(v47 + v59 + 40);
                  *(v61 + 32) = v63;
                  *(v61 + 44) = *(v47 + v59 + 44);
                  v64 = *(v47 + v59 + 56);
                  v65 = *(v47 + v59 + 72);
                  v66 = v60 + v59 + 120;
                  *(v60 + v59 + 88) = v66;
                  v67 = (v60 + v59 + 88);
                  *(v67 - 2) = v64;
                  *(v67 - 1) = v65;
                  v67[1] = v66;
                  v67[2] = v66;
                  v67[3] = 6;
                  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v67, *(v47 + v59 + 88), *(v47 + v59 + 96));
                  v68 = *(v47 + v59 + 1848);
                  *(v61 + 1853) = *(v47 + v59 + 1853);
                  *(v61 + 1848) = v68;
                  v59 += 1864;
                }

                while (v48 != v59);
                *&v82 = v60 + v48;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::CollectionPoint>,md::mun::CollectionPoint*>(v49, v77, v60 + v48);
                *&v82 = v82 + v77 - v49;
                *&v77 = v49;
                v69 = v81 + v76 - v49;
                std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::CollectionPoint>,md::mun::CollectionPoint*>(v76, v49, v69);
                v70 = v76;
                v71 = *(&v77 + 1);
                v76 = v69;
                v77 = v82;
                *&v82 = v70;
                *(&v82 + 1) = v71;
                v80 = v70;
                v81 = v70;
                std::__split_buffer<md::mun::CollectionPoint>::~__split_buffer(&v80);
              }
            }

            if (v72)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v72);
            }
          }

          operator new();
        }

        break;
      }

      v7 += 24;
    }
  }

  *a4 = 0;
  a4[1] = 0;
  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v74);
  }
}