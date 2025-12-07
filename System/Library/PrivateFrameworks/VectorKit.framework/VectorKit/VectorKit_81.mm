void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::localId;
    unk_1EB829480 = 0x34E30CF3F8B8CD48;
    qword_1EB829488 = "SceneComponents::LayerDataDidExitView<md::MapDataType::PolarFlyover>]";
    qword_1EB829490 = 68;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F36D0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F36B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F36B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::localId;
    *algn_1EB8293E8 = 0xDFFF4A13597C83A8;
    qword_1EB8293F0 = "SceneComponents::LayerDataDidEnterView<md::MapDataType::PolarFlyover>]";
    qword_1EB8293F8 = 69;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3668;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3648;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3648;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::localId;
    *algn_1EB829438 = 0x27AB8748450A93BBLL;
    qword_1EB829440 = "SceneComponents::LayerDataExitingView<md::MapDataType::PolarFlyover>]";
    qword_1EB829448 = 68;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(v3);
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
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F));
        v18 = v17[2];
        v24 = *v17;
        v19 = v17 + 1;
        v20 = v17[1];
        v25 = v20;
        v26 = v18;
        if (v18)
        {
          v20[2] = &v25;
          *v17 = v19;
          *v19 = 0;
          v17[2] = 0;
        }

        else
        {
          v24 = &v25;
        }

        std::__tree<gdc::LayerDataWithWorld>::__move_assign(v17, v16);
        v21 = (v16 + 8);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(v16 + 8));
        v22 = v26;
        *v16 = v24;
        v23 = v25;
        *(v16 + 8) = v25;
        *(v16 + 16) = v22;
        if (v22)
        {
          v23[2] = v21;
          v25 = 0;
          v26 = 0;
          v23 = 0;
        }

        else
        {
          *v16 = v21;
        }

        std::__tree<gdc::LayerDataWithWorld>::destroy(v23);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*v21);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2F48;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2F08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2F28;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2F08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::localId;
    *algn_1EB829358 = 0x3C083CB4ACE2ADF1;
    qword_1EB829360 = "SceneComponents::LayerDataPreviousInView<md::MapDataType::PolarFlyover>]";
    qword_1EB829368 = 71;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(v3);
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
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F));
        v18 = v17[2];
        v24 = *v17;
        v19 = v17 + 1;
        v20 = v17[1];
        v25 = v20;
        v26 = v18;
        if (v18)
        {
          v20[2] = &v25;
          *v17 = v19;
          *v19 = 0;
          v17[2] = 0;
        }

        else
        {
          v24 = &v25;
        }

        std::__tree<gdc::LayerDataWithWorld>::__move_assign(v17, v16);
        v21 = (v16 + 8);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(v16 + 8));
        v22 = v26;
        *v16 = v24;
        v23 = v25;
        *(v16 + 8) = v25;
        *(v16 + 16) = v22;
        if (v22)
        {
          v23[2] = v21;
          v25 = 0;
          v26 = 0;
          v23 = 0;
        }

        else
        {
          *v16 = v21;
        }

        std::__tree<gdc::LayerDataWithWorld>::destroy(v23);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*v21);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2E38;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2DF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2E18;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2DF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::localId;
    *algn_1EB8295A8 = 0x83F186BB0B4B5048;
    qword_1EB8295B0 = "SceneComponents::LayerDataInfo<md::MapDataType::PolarFlyover>]";
    qword_1EB8295B8 = 61;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)79>>(v3);
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
        LOWORD(v16) = *(v19 + 2 * v18);
        *(v19 + 2 * v18) = *(v17 + 2 * v15);
        *(v17 + 2 * v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3758;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3718;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F3738;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3718;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>::~storage(a1);
}

void *md::Logic<md::CollectMapDataLogic<(md::MapDataType)79>,md::CollectMapDataContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE4007F1EDCD91179 && (v4 = *(a3 + 32)) != 0)
  {
    v9 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
    v10 = v7;
    return (*(*a1 + 160))(a1, a2, &v9, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)79>,md::CollectMapDataContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE4007F1EDCD91179)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 152))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)79>,md::CollectMapDataContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE4007F1EDCD91179)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)79>,md::CollectMapDataContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE4007F1EDCD91179)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)79>,md::CollectMapDataContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE4007F1EDCD91179)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::CollectMapDataContext<(md::MapDataType)79>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)79>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A255D0;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)79>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A255D0;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::CollectMapDataLogic<(md::MapDataType)79>::didBecomeInactive(uint64_t result)
{
  v1 = *(result + 120);
  if (v1 != -65536)
  {
    ecs2::BasicRegistry<void>::destroy(*(result + 128), v1);
    *(result + 120) = -65536;
  }
}

void md::CollectMapDataLogic<(md::MapDataType)79>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectMapDataLogic<(md::MapDataType)79>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void md::mun::MuninMetaLayerDataSource::createLayerData(unsigned __int16 **a2@<X2>, void *a3@<X8>)
{
  gdc::LayerDataSource::getResourceFromMap(&v6, 22, *a2, a2[1]);
  v5 = v6;
  v4 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (v5)
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void sub_1B2D73960(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::mun::MuninMetadata>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F3840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::mun::MuninMetaLayerDataSource::constructRequests(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v10, *v4);
      v5 = v11;
      v13[0] = gdc::ResourceKey::getInt32(v11, 0);
      v13[1] = gdc::ResourceKey::getInt32(v5, 1u);
      v13[2] = gdc::ResourceKey::getInt32(v5, 2u);
      v13[3] = gdc::ResourceKey::getInt32(v5, 3u);
      gdc::ResourceKey::ResourceKey(v7, 0, 22, v13, 4, *(*v4 + 112), 2147483646);
      v6 = *v4;
      v4 += 2;
      gdc::LayerDataRequest::request(v6, v7, 0);
      if (v8 != v9)
      {
        free(v8);
      }

      if (v11 != v12)
      {
        free(v11);
      }
    }

    while (v4 != a3);
  }
}

void md::mun::MuninMetaLayerDataSource::~MuninMetaLayerDataSource(md::mun::MuninMetaLayerDataSource *this)
{
  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<std::pair<gm::Range<unsigned long>,std::shared_ptr<ggl::IndexData>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gm::Range<unsigned long>,std::shared_ptr<ggl::IndexData>>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::pair<gm::Range<unsigned long>,std::shared_ptr<ggl::IndexData>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        break;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    v9 = ggl::zone_mallocator::instance(a1);
    v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,void *>>(v9);
    v11 = **a3;
    v10[5] = 0;
    v10[6] = 0;
    v10[4] = v11;
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(a1, v7, v6, v10);
    return v10;
  }

  return v7;
}

void std::__shared_ptr_emplace<ggl::Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F3878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Fog::FogPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F38E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Sky::SkyPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F38B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup::~BuildingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2D73FFC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CachedShouldRequestWGS84Elevations;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B2D74158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup::~Pos2DUVPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::OverlayTileData::estimatedCost(md::OverlayTileData *this)
{
  v1 = this + 760;
  v2 = *(this + 96);
  result = 1080;
  while (v2 != v1)
  {
    v4 = *(v2 + 2);
    if (v4)
    {
      v5 = (4 * *(*(v4 + 32) + 80) * *(*(v4 + 32) + 84));
      goto LABEL_5;
    }

    v6 = *(v2 + 3);
    if (v6)
    {
      v7 = *(v6 + 32);
      v8 = *(v6 + 40);
      if (v7 == v8)
      {
        goto LABEL_49;
      }

      v5 = 0;
      do
      {
        v9 = *v7++;
        v5 = *(**(v9 + 64) + 48) + v5 + *(*(v9 + 96) + 48) - (*(**(v9 + 64) + 40) + *(*(v9 + 96) + 40));
      }

      while (v7 != v8);
    }

    else
    {
      v10 = *(v2 + 4);
      if (v10)
      {
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);
        if (v11 == v12)
        {
          goto LABEL_49;
        }

        v5 = 0;
        do
        {
          v13 = *v11++;
          v5 = *(**(v13 + 64) + 48) + v5 + *(*(v13 + 96) + 48) - (*(**(v13 + 64) + 40) + *(*(v13 + 96) + 40));
        }

        while (v11 != v12);
      }

      else
      {
        if (*(v2 + 5))
        {
          v5 = 24;
          goto LABEL_5;
        }

        v14 = *(v2 + 6);
        v15 = *(v2 + 7);
        if (v14 == v15)
        {
          v28 = *(v2 + 13);
          if (v28)
          {
            v29 = *v28;
            v30 = v28[1];
            if (*v28 == v30)
            {
              goto LABEL_49;
            }

            v5 = 0;
            do
            {
              v5 += (4 * *(*(v29 + 16) + 80) * *(*(v29 + 16) + 84));
              v29 += 144;
            }

            while (v29 != v30);
          }

          else
          {
            v31 = *(v2 + 14);
            if (v31)
            {
              v32 = *v31;
              v33 = v31[1];
              if (*v31 == v33)
              {
LABEL_49:
                v5 = 0;
                goto LABEL_5;
              }

              v5 = 0;
              do
              {
                v5 += *(v32 + 136);
                v32 += 144;
              }

              while (v32 != v33);
            }

            else
            {
              v5 = 1;
            }
          }
        }

        else
        {
          v5 = 0;
          do
          {
            v16 = *v14;
            v17 = *(*v14 + 32);
            if (v17)
            {
              v18 = vaddq_s64(*(**(v17 + 64) + 40), *(*(v17 + 96) + 40));
              v17 = vsubq_s64(vdupq_laneq_s64(v18, 1), v18).u64[0];
            }

            v19 = v16[5];
            if (v19)
            {
              v17 = *(**(v19 + 64) + 48) + v17 + *(*(v19 + 96) + 48) - (*(**(v19 + 64) + 40) + *(*(v19 + 96) + 40));
            }

            v20 = v16[6];
            if (v20)
            {
              v21 = *(v20 + 32);
              v22 = *(v20 + 40);
              while (v21 != v22)
              {
                v23 = *v21++;
                v17 = *(**(v23 + 64) + 48) + v17 + *(*(v23 + 96) + 48) - (*(**(v23 + 64) + 40) + *(*(v23 + 96) + 40));
              }
            }

            v24 = v16[39];
            if (v24)
            {
              v25 = v24[15];
              if (v25)
              {
                v26 = v24[16];
                if (v26)
                {
                  v27 = (v24[20] + v24[19]) * v24[21];
                }

                else
                {
                  v27 = 0;
                }

                if (v26)
                {
                  v25 = v27 + 10;
                }

                else
                {
                  v25 = v27;
                }
              }

              v17 += v25;
            }

            v5 += v17;
            v14 += 8;
          }

          while (v14 != v15);
        }
      }
    }

LABEL_5:
    result += v5;
    v2 = *(v2 + 1);
  }

  return result;
}

void md::OverlayTileData::~OverlayTileData(md::OverlayTileData *this)
{
  md::OverlayTileData::~OverlayTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F39D0;
  *(this + 80) = &unk_1F29F3A10;
  if (*(this + 106))
  {
    md::OverlayTileData::clearEntities(this);
  }

  geo::read_write_lock::~read_write_lock((this + 880));
  v2 = *(this + 107);
  if (v2)
  {
    *(this + 108) = v2;
    operator delete(v2);
  }

  v3 = *(this + 105);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(this + 101);
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(this + 98);
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(this + 95);
  v4 = *(this + 94);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 92);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MapTileData::~MapTileData(this);
}

void sub_1B2D74800(_Unwind_Exception *a1)
{
  geo::read_write_lock::~read_write_lock((v1 + 880));
  v3 = *(v1 + 856);
  if (v3)
  {
    *(v1 + 864) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 840);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v1 + 808));
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v1 + 784));
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v1 + 760));
  v5 = *(v1 + 752);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 736);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  md::MapTileData::~MapTileData(v1);
  _Unwind_Resume(a1);
}

BOOL md::OverlayTileData::clearEntities(md::OverlayTileData *this)
{
  md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(*(this + 106), *(this + 107), *(this + 108));
  result = gdc::Registry::remove<md::overlayComponents::VectorOverlay,std::__wrap_iter<gdc::Entity *>>(*(this + 106), *(this + 107), *(this + 108));
  v3 = *(this + 106);
  v4 = *(this + 107);
  v5 = *(this + 108);
  if (v4 != v5)
  {
    do
    {
      v6 = gdc::Registry::storage<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>(v3);
      v7 = *v4++;
      result = gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>::remove(v6, v7);
    }

    while (v4 != v5);
    v3 = *(this + 106);
    v4 = *(this + 107);
    v5 = *(this + 108);
  }

  if (v4 != v5)
  {
    do
    {
      v8 = gdc::Registry::storage<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>(v3);
      v9 = *v4++;
      result = gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>::remove(v8, v9);
    }

    while (v4 != v5);
    v4 = *(this + 107);
  }

  *(this + 108) = v4;
  return result;
}

void std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(uint64_t *a1)
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
        md::OverlayTileData::OverlayTileResource::~OverlayTileResource((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void md::OverlayTileData::OverlayTileResource::~OverlayTileResource(md::OverlayTileData::OverlayTileResource *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  std::unique_ptr<std::vector<md::PolylineOverlayRenderable>>::reset[abi:nn200100](this + 13, 0);
  std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>>::reset[abi:nn200100](this + 12, 0);
  std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::RasterTile>>::reset[abi:nn200100](this + 11, 0);
  std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedGradientRibbonLayer>::reset[abi:nn200100](this + 10, 0);
  std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedRibbonLayer>::reset[abi:nn200100](this + 9, 0);
  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v7 = (this + 32);
  std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    std::default_delete<md::OverlayTileData::OverlayTileResource::CircleResource>::operator()[abi:nn200100](v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>::reset[abi:nn200100](this, 0);
}

void ***std::unique_ptr<std::vector<md::PolylineOverlayRenderable>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v4 -= 56;
          std::__destroy_at[abi:nn200100]<md::PolylineOverlayRenderable,0>(v4);
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ***std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ***std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::RasterTile>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 2);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v6);
          }

          v7 = *(v4 - 4);
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v7);
          }

          v8 = *(v4 - 6);
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
          }

          v9 = *(v4 - 8);
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v9);
          }

          v10 = *(v4 - 15);
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v10);
          }

          v11 = *(v4 - 17);
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v11);
          }

          v4 -= 144;
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t **std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedGradientRibbonLayer>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t **std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedRibbonLayer>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::default_delete<md::OverlayTileData::OverlayTileResource::CircleResource>::operator()[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[9];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[7];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v2[5];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

md::PolygonOverlayRenderable *std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>::__base_destruct_at_end[abi:nn200100](md::PolygonOverlayRenderable *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      md::PolygonOverlayRenderable::~PolygonOverlayRenderable(result);
      result = MEMORY[0x1B8C62190]();
    }
  }

  *(v3 + 1) = a2;
  return result;
}

void md::PolygonOverlayRenderable::~PolygonOverlayRenderable(md::PolygonOverlayRenderable *this)
{
  v2 = *(this + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v16 = (this + 288);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v3 = *(this + 35);
  *(this + 35) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 34);
  *(this + 34) = 0;
  if (v4)
  {
    v5 = *(v4 + 72);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v4 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    MEMORY[0x1B8C62190](v4, 0x1020C408635837CLL);
  }

  for (i = 248; i != 136; i -= 8)
  {
    v8 = *(this + i);
    *(this + i) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  v9 = *(this + 17);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 15);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(this + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 5);
  *(this + 5) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 4);
  *(this + 4) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }
}

void std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 104;
      do
      {
        v7 = *(v4 - 3);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v8 = *(v4 - 5);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        v9 = *(v4 - 7);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        }

        v10 = *(v4 - 9);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        *(v4 - 13) = off_1F2A4C810;

        v6 -= 144;
        v4 -= 144;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void geo::_retain_ptr<objc_object * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A4C810;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<objc_object * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A4C810;

  return a1;
}

uint64_t std::__destroy_at[abi:nn200100]<md::PolylineOverlayRenderable,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

BOOL gdc::Registry::remove<md::overlayComponents::VectorOverlay,std::__wrap_iter<gdc::Entity *>>(_BOOL8 result, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = gdc::Registry::storage<md::overlayComponents::VectorOverlay>(v5);
      v7 = *v4++;
      result = gdc::ComponentStorageWrapper<md::overlayComponents::VectorOverlay>::remove(v6, v7);
    }

    while (v4 != a3);
  }

  return result;
}

void md::OverlayTileData::resetNonTileOverlays(md::OverlayTileData *this, uint64_t a2)
{
  *this = this;
  *(this + 1) = this;
  *(this + 2) = 0;
  v12 = (a2 + 880);
  v3 = pthread_rwlock_wrlock((a2 + 880));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  for (i = *(a2 + 768); i != (a2 + 760); i = *(i + 1))
  {
    v6 = atomic_load(i + 153);
    if (v6)
    {
      v11 = 0;
      memset(v10, 0, 138);
      if (*(i + 13) || *(i + 14))
      {
        md::OverlayTileData::OverlayTileResource::moveNonTileVectorResources(v10, (i + 16));
        v7 = *(i + 2);
        *(i + 2) = 0;
        std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>::reset[abi:nn200100](v10, v7);
        atomic_store(0, i + 153);
      }

      else
      {
        md::OverlayTileData::OverlayTileResource::operator=(v10, (i + 16));
        v8 = *i;
        v9 = *(i + 1);
        *(v8 + 8) = v9;
        *v9 = v8;
        --*(a2 + 776);
        md::OverlayTileData::OverlayTileResource::~OverlayTileResource((i + 16));
        operator delete(i);
      }

      operator new();
    }
  }

  if (*(a2 + 800))
  {
    md::OverlayTileData::updateNonTileOverlays(a2, (a2 + 784));
  }

  if (*(a2 + 824))
  {
    md::OverlayTileData::updateNonTileOverlays(a2, (a2 + 808));
  }

  geo::write_lock_guard::~write_lock_guard(&v12);
}

uint64_t md::OverlayTileData::OverlayTileResource::operator=(uint64_t a1, uint64_t a2)
{
  v4 = md::OverlayTileData::OverlayTileResource::moveNonTileVectorResources(a1, a2);
  v5 = *a2;
  *a2 = 0;
  std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>::reset[abi:nn200100](v4, v5);
  v6 = *(a2 + 88);
  *(a2 + 88) = 0;
  std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::RasterTile>>::reset[abi:nn200100]((a1 + 88), v6);
  v7 = *(a2 + 96);
  *(a2 + 96) = 0;
  std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>>::reset[abi:nn200100]((a1 + 96), v7);
  v8 = *(a1 + 112);
  if (v8)
  {
    *(a1 + 120) = v8;
    operator delete(v8);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v9 = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  std::unique_ptr<std::vector<md::PolylineOverlayRenderable>>::reset[abi:nn200100]((a1 + 104), v9);
  atomic_store(*(a2 + 137) & 1, (a1 + 137));
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t md::OverlayTileData::OverlayTileResource::moveNonTileVectorResources(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v7 = (a1 + 32);
  v6 = *(a1 + 32);
  if (v6)
  {
    std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>::__base_destruct_at_end[abi:nn200100]((a1 + 32), v6);
    operator delete(*v7);
    *v7 = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a2 + 16);
  *(a2 + 16) = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;
  if (v11)
  {
    std::default_delete<md::OverlayTileData::OverlayTileResource::CircleResource>::operator()[abi:nn200100](v11);
  }

  v12 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v13 = *(a1 + 64);
  *(a1 + 56) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = *(a2 + 72);
  *(a2 + 72) = 0;
  std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedRibbonLayer>::reset[abi:nn200100]((a1 + 72), v14);
  v15 = *(a2 + 80);
  *(a2 + 80) = 0;
  std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedGradientRibbonLayer>::reset[abi:nn200100]((a1 + 80), v15);
  return a1;
}

void md::OverlayTileData::updateNonTileOverlays(uint64_t a1, uint64_t *a2)
{
  v10 = &v10;
  v11 = &v10;
  v12 = 0;
  v2 = a2[2];
  if (v2)
  {
    v4 = *a2;
    v3 = a2[1];
    v5 = *(*a2 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = v10;
    *(v10 + 8) = v3;
    *v3 = v7;
    *(v4 + 8) = &v10;
    v10 = v4;
    v12 = v2;
    a2[2] = 0;
    v8 = v11;
    if (v11 != &v10)
    {
      v9 = (a1 + 760);
      do
      {
        if (v8[1].n128_u64[0])
        {
          std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>,std::vector<unsigned int>>(&v8[1], &v8[8]);
        }

        if (v8[1].n128_u64[1])
        {
          std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>>,std::vector<unsigned int>>(v9, &v8[1].n128_i64[1], v8 + 8);
        }

        if (v8[2].n128_u64[0])
        {
          std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>>,std::vector<unsigned int>>(v9, &v8[2], v8 + 8);
        }

        if (v8[2].n128_u64[1])
        {
          std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::OverlayTileData::OverlayTileResource::CircleResource>,std::vector<unsigned int>>(v9, &v8[2].n128_i64[1], &v8[8]);
        }

        if (v8[3].n128_u64[0] != v8[3].n128_u64[1])
        {
          std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>,std::vector<unsigned int>>(&v8[3], &v8[8]);
        }

        if (v8[5].n128_u64[1])
        {
          std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedRibbonLayer>,std::vector<unsigned int>>(&v8[5].n128_i64[1], &v8[8]);
        }

        if (v8[6].n128_u64[0])
        {
          std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedGradientRibbonLayer>,std::vector<unsigned int>>(&v8[6], &v8[8]);
        }

        v8 = v8->n128_u64[1];
      }

      while (v8 != &v10);
    }
  }

  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(&v10);
}

void sub_1B2D7589C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(va);
  _Unwind_Resume(a1);
}

__n128 md::OverlayTileData::OverlayTileResource::OverlayTileResource(uint64_t a1, uint64_t a2, __n128 *a3, void *a4)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 32) = *a2;
  *(a1 + 48) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = a4[1];
  *(a1 + 56) = *a4;
  *(a1 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 120) = 0uLL;
  *(a1 + 104) = 0uLL;
  *(a1 + 88) = 0uLL;
  *(a1 + 72) = 0uLL;
  result = *a3;
  *(a1 + 112) = *a3;
  *(a1 + 128) = a3[1].n128_u64[0];
  *a3 = 0uLL;
  a3[1].n128_u64[0] = 0;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0;
  return result;
}

uint64_t md::OverlayTileData::hasTileData(md::OverlayTileData *this)
{
  v2 = pthread_rwlock_rdlock((this + 880));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  for (i = *(this + 96); ; i = i[1])
  {
    if (i == (this + 760))
    {
      v7 = 0;
      goto LABEL_12;
    }

    v5 = i[13];
    if (v5)
    {
      if (*v5 != v5[1])
      {
        break;
      }
    }

    v6 = i[14];
    if (v6)
    {
      if (*v6 != v6[1])
      {
        break;
      }
    }
  }

  v7 = 1;
LABEL_12:
  geo::read_write_lock::unlock((this + 880));
  return v7;
}

void md::OverlayTileData::OverlayTileResource::RasterTile::updateWithContext(md::OverlayTileData::OverlayTileResource::RasterTile *this, const md::LayoutContext *a2, int a3)
{
  v5 = md::LayoutContext::get<md::CameraContext>(a2);
  v6 = 0;
  v7 = 1 << *(this + 33);
  *&v8 = 1.0 / v7;
  v9 = a3 + *&v8 * *(this + 10);
  v10 = *&v8 * (v7 + ~*(this + 9));
  v11 = (v5 + 808);
  v32 = 0;
  v34 = 0;
  v31 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = v8;
  v30 = v8;
  v33 = v8;
  v35 = v9;
  v36 = v10;
  v37 = xmmword_1B33B0740;
  do
  {
    v12 = 0;
    v13 = &v27;
    do
    {
      v14 = 0;
      v15 = 0.0;
      v16 = v11;
      do
      {
        v17 = *v16;
        v16 += 4;
        v15 = v15 + *&v13[v14++] * v17;
      }

      while (v14 != 4);
      v38[4 * v12++ + v6] = v15;
      v13 += 4;
    }

    while (v12 != 4);
    ++v6;
    ++v11;
  }

  while (v6 != 4);
  v18 = 0;
  v19 = v38;
  do
  {
    v21 = *v19;
    v20 = *(v19 + 2);
    v19 += 4;
    v40[v18++] = vcvt_hight_f32_f64(vcvt_f32_f64(v21), v20);
  }

  while (v18 != 4);
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v38, *(this + 9), 1);
  v22 = v39;
  v23 = v40[1];
  *v39 = v40[0];
  v22[1] = v23;
  v24 = v40[3];
  v22[2] = v40[2];
  v22[3] = v24;
  ggl::BufferMemory::~BufferMemory(v38);
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v38, *(this + 15), 1);
  v25 = *(this + 13);
  v26 = v39;
  *v39 = *(this + 34) * *v25;
  *(v26 + 1) = *(v25 + 4);
  ggl::BufferMemory::~BufferMemory(v38);
}

float computeRouteZOffset(const md::LayoutContext *a1)
{
  v2 = md::LayoutContext::get<md::ElevationContext>(a1);
  v3 = v2;
  v4 = 1.0;
  if (*(v2 + 4) == 1)
  {
    v4 = v2[5];
  }

  md::LayoutContext::zoomAtCentrePoint(a1);
  return (fminf(v3[4], 1.0) * (1.6216 * v4)) / (1.0811 - fminf(fmaxf((v5 * -0.28571) + 4.8571, 0.0), 1.0));
}

void md::OverlayTileData::OverlayTileResource::RasterTile::setAlphaMultiplier(md::OverlayTileData::OverlayTileResource::RasterTile *this, float a2)
{
  *(this + 34) = a2;
  v3 = **(this + 13);
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v4, *(this + 15), 1);
  *v4[5] = v3 * a2;
  ggl::BufferMemory::~BufferMemory(v4);
}

void md::mun::MuninViewLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 **a3@<X2>, void *a4@<X8>)
{
  v97 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 600);
  if (!v6)
  {
    v9 = 0;
LABEL_38:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_39;
  }

  v9 = std::__shared_weak_count::lock(v6);
  if (!v9)
  {
    goto LABEL_38;
  }

  v10 = *(a1 + 592);
  if (!v10)
  {
    goto LABEL_38;
  }

  gdc::LayerDataRequestKey::keyData(&v81, a2);
  v11 = v81;
  UInt64 = gdc::ResourceKey::getUInt64(v81, 0);
  v12 = gdc::ResourceKey::getUInt64(v11, 1u);
  v89 = v12;
  v13 = gdc::ResourceKey::getUInt64(v11, 2u);
  v88 = v13;
  v14 = gdc::ResourceKey::getUInt64(v11, 3u);
  if (v11 != *(&v82 + 1))
  {
    free(v11);
  }

  md::mun::MuninMetadataContainer::activePoint(&v81, v10, v12);
  if ((v87 & 1) == 0)
  {
    goto LABEL_38;
  }

  v15 = v85;
  if (v85 == v86)
  {
    goto LABEL_42;
  }

  v16 = 0;
  do
  {
    if (*(v15 + 240) == BYTE2(v13))
    {
      v16 = v15;
    }

    v15 += 288;
  }

  while (v15 != v86);
  if (!v16)
  {
LABEL_42:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_117;
  }

  v17 = *(a1 + 616);
  (*(*[v17 gglDevice] + 24))(&v80);

  if (!v14)
  {
    gdc::LayerDataSource::getResourceFromMap(&v90, 23, *a3, a3[1]);
    v18 = *(&v90 + 1);
    v32 = v90;
    if (v90)
    {
      v33 = (v90 - 8);
    }

    else
    {
      v33 = 0;
    }

    v78 = v33;
    v79 = *(&v90 + 1);
    if (*(&v90 + 1))
    {
      atomic_fetch_add_explicit((*(&v90 + 1) + 8), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    if (v32)
    {
      v71 = 0;
      v72 = 0;
      v73 = 0;
      if (v87 != 1)
      {
        goto LABEL_118;
      }

      v34 = v33[59];
      v35 = v33[60];
      if (v35 == v34)
      {
        v74 = 0uLL;
        *&v75 = 0;
        operator new();
      }

      if (0x4EC4EC4EC4EC4EC5 * ((v35 - v34) >> 3))
      {
        if (*v34)
        {
          if (*v34 == 12 && *(v34 + 16) - *(v34 + 8) == 64)
          {
            _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v90);
          }
        }

        else if (*(v34 + 16) - *(v34 + 8) == 32)
        {
          _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v90);
        }
      }

      v77 = 0uLL;
      *a4 = 0;
      a4[1] = 0;
      if (*(&v77 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v77 + 1));
      }

      *&v90 = &v71;
      std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v90);
      v18 = v79;
      goto LABEL_114;
    }

LABEL_61:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_114;
  }

  gdc::LayerDataSource::getResourceFromMap(&v90, 33, *a3, a3[1]);
  v18 = *(&v90 + 1);
  if (v90)
  {
    v19 = v90 - 8;
  }

  else
  {
    v19 = 0;
  }

  if (*(&v90 + 1))
  {
    atomic_fetch_add_explicit((*(&v90 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v66 = v19;
  gdc::ResourceKey::keyData(&v90, v19 + 8);
  v20 = v90;
  v21 = gdc::ResourceKey::getUInt64(v90, 2u);
  if (v20 != v91)
  {
    free(v20);
  }

  *&v77 = *(v66 + 152);
  if (!v77)
  {
    goto LABEL_61;
  }

  v63 = v18;
  v74 = 0u;
  v75 = 0u;
  v76 = 1065353216;
  if (v21 && v13 == v21)
  {
    v22 = *(v16 + 248);
    v23 = *(v16 + 256);
    if (v22 == v23)
    {
      goto LABEL_103;
    }

    while (1)
    {
      v24 = *v22;
      v25 = *(v66 + 920);
      if (v24 >= (*(v66 + 928) - v25) >> 4)
      {
        goto LABEL_102;
      }

      v26 = (v25 + 16 * v24);
      v27 = *v26;
      if (!*v26)
      {
        goto LABEL_102;
      }

      v28 = v26[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = *(v27 + 144);
      v68 = v29;
      a3 = *(v27 + 152);
      if (*(&v29 + 1))
      {
        atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      LODWORD(v71) = v24;
      *&v90 = &v71;
      v30 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v74, v24, &v90);
      v31 = v30[4];
      *(v30 + 3) = v68;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v31);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v28);
      }

      if (++v22 == v23)
      {
        goto LABEL_103;
      }
    }
  }

  v37 = *a3;
  v36 = a3[1];
  while (1)
  {
    if (v37 == v36)
    {
      goto LABEL_102;
    }

    if (*v37 == 34)
    {
      break;
    }

    v37 += 24;
  }

  if (v37 == v36)
  {
LABEL_102:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_113;
  }

  v38 = *(v16 + 248);
  v62 = *(v16 + 256);
  if (v38 == v62)
  {
    goto LABEL_103;
  }

  v59 = v13 & 0xFFFFFFFF000000FFLL;
  v60 = UInt64;
  v64 = v9;
  while (2)
  {
    v65 = v38;
    v61 = *v38;
    *&v94 = v60;
    *(&v94 + 1) = v12;
    v95 = v59 | (v61 << 16);
    v96 = 2;
    gdc::GenericKey::GenericKey(&v71, &v94, 4);
    gdc::ResourceKey::ResourceKey(&v90, 0, 34, &v71, 0, 2147483646);
    if (v71 != v73)
    {
      free(v71);
    }

    v39 = *(v37 + 8);
    if (!*&v39)
    {
      goto LABEL_88;
    }

    v40 = (WORD1(v90) - 0x61C8864680B583EBLL + ((v90 - 0x61C8864680B583EBLL) << 6) + ((v90 - 0x61C8864680B583EBLL) >> 2)) ^ (v90 - 0x61C8864680B583EBLL);
    v41 = (v93 - 0x61C8864680B583EBLL + (v40 << 6) + (v40 >> 2)) ^ v40;
    v42 = vcnt_s8(v39);
    v42.i16[0] = vaddlv_u8(v42);
    v69 = v42.u32[0];
    if (v42.u32[0] > 1uLL)
    {
      a3 = ((v93 - 0x61C8864680B583EBLL + (v40 << 6) + (v40 >> 2)) ^ v40);
      if (v41 >= *&v39)
      {
        a3 = (v41 % *&v39);
      }
    }

    else
    {
      a3 = (v41 & (*&v39 - 1));
    }

    v43 = *(*(v37 + 1) + 8 * a3);
    if (!v43 || (v44 = *v43) == 0)
    {
LABEL_88:
      *a4 = 0;
      a4[1] = 0;
      LOBYTE(v51) = 1;
      goto LABEL_89;
    }

    while (1)
    {
      v45 = *(v44 + 1);
      if (v41 == v45)
      {
        break;
      }

      if (v69 > 1)
      {
        if (v45 >= *&v39)
        {
          v45 %= *&v39;
        }
      }

      else
      {
        v45 &= *&v39 - 1;
      }

      if (v45 != a3)
      {
        goto LABEL_88;
      }

LABEL_87:
      v44 = *v44;
      if (!v44)
      {
        goto LABEL_88;
      }
    }

    v46 = v12;
    v47 = v13;
    v48 = a2;
    v49 = v41;
    v50 = gdc::ResourceKey::operator==(v44 + 16, &v90);
    v41 = v49;
    a2 = v48;
    v13 = v47;
    v12 = v46;
    v9 = v64;
    if (!v50)
    {
      goto LABEL_87;
    }

    v52 = *(v44 + 14);
    v51 = *(v44 + 15);
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v53 = *(v52 + 144);
    v70 = v53;
    a3 = *(v52 + 152);
    if (*(&v53 + 1))
    {
      atomic_fetch_add_explicit((*(&v53 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(v94) = v61;
    v71 = &v94;
    v54 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v74, v61, &v71);
    v55 = v54[4];
    *(v54 + 3) = v70;
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v55);
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v51);
      LOBYTE(v51) = 0;
    }

LABEL_89:
    if (*(&v90 + 1) != v92)
    {
      free(*(&v90 + 1));
    }

    if ((v51 & 1) == 0)
    {
      v38 = v65 + 1;
      if (v65 + 1 == v62)
      {
LABEL_103:
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v56 = *(v77 + 8);
        v18 = &v78;
        if (v56)
        {
          v57 = *v77;
          do
          {
            if (*v57 == BYTE2(v13))
            {
              v78 = v57;
              v92 = 0;
              operator new();
            }

            v57 += 24;
            --v56;
          }

          while (v56);
        }

        v90 = 0uLL;
        v91 = 0;
        if (*(v66 + 912) == 1)
        {
          std::vector<float>::__insert_with_size[abi:nn200100]<float const*,float const*>(&v90, 0, (v66 + 192), (v66 + 912), 180);
        }

        if (v87)
        {
          v94 = v82;
          v95 = v83;
          std::allocate_shared[abi:nn200100]<md::mun::MuninViewData,std::allocator<md::mun::MuninViewData>,gdc::LayerDataRequestKey const&,std::vector<md::mun::MuninViewMesh>,geo::Geocentric<double>,unsigned long long &,unsigned char &,md::mun::PhotoInfo const&,std::vector<float>,unsigned long long &,0>(&v78, a2, &v71, &v94, &v89, &v88, v16, &v90, &v84);
        }

LABEL_118:
        v58 = std::__throw_bad_optional_access[abi:nn200100]();
        if (a3)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](a3);
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        if (*(&v90 + 1) != v92)
        {
          free(*(&v90 + 1));
        }

        std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(&v74);
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v63);
        }

        ggl::Loader::~Loader(&v80);
        if (v87 == 1)
        {
          geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v85);
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v64);
        _Unwind_Resume(v58);
      }

      continue;
    }

    break;
  }

LABEL_113:
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(&v74);
  v18 = v63;
LABEL_114:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  ggl::Loader::~Loader(&v80);
  if (v87)
  {
LABEL_117:
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v85);
  }

LABEL_39:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void sub_1B2D76E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14)
{
  v18 = v14[21].__vftable;
  if (v18 != v14[21].__shared_weak_owners_)
  {
    free(v18);
  }

  *(v16 - 88) = v15;
  std::vector<md::mun::MuninViewMesh>::__destroy_vector::operator()[abi:nn200100]((v16 - 88));
  v14[1].__vftable = &unk_1F2A60328;
  shared_owners = v14[2].__shared_owners_;
  if (shared_owners != v14[3].__vftable)
  {
    free(shared_owners);
  }

  if (a12 != a14)
  {
    free(a12);
  }

  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void std::vector<md::mun::MuninViewMesh>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 88;
        std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
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
      v5 = a2 % v3;
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

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1B2D77388(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::vector<float>::__insert_with_size[abi:nn200100]<float const*,float const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v6 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 2;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v14);
    }

    v31 = 4 * v15;
    v32 = 4 * a5;
    v33 = (4 * v15);
    do
    {
      v34 = *v6;
      v6 += 4;
      *v33++ = v34;
      v32 -= 4;
    }

    while (v32);
    memcpy((v31 + 4 * a5), __dst, a1[1] - __dst);
    v35 = *a1;
    v36 = v31 + 4 * a5 + a1[1] - __dst;
    a1[1] = __dst;
    v37 = (__dst - v35);
    v38 = (v31 - (__dst - v35));
    memcpy(v38, v35, v37);
    v39 = *a1;
    *a1 = v38;
    a1[1] = v36;
    a1[2] = 0;
    if (v39)
    {

      operator delete(v39);
    }

    return;
  }

  v16 = (v10 - __dst) >> 2;
  if (v16 >= a5)
  {
    v20 = &__dst[4 * a5];
    v21 = &v10[-4 * a5];
    v22 = a1[1];
    while (v21 < v10)
    {
      v23 = *v21;
      v21 += 4;
      *v22++ = v23;
    }

    a1[1] = v22;
    if (v10 != v20)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v20);
    }

    v28 = 4 * a5;
    v29 = __dst;
    v30 = v6;
    goto LABEL_34;
  }

  v17 = &__src[v10 - __dst];
  v18 = a1[1];
  while (v17 != a4)
  {
    v19 = *v17;
    v17 += 4;
    *v18 = v19;
    v18 += 4;
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    v24 = &__dst[4 * a5];
    v25 = &v18[-4 * a5];
    v26 = v18;
    while (v25 < v10)
    {
      v27 = *v25;
      v25 += 4;
      *v26 = v27;
      v26 += 4;
    }

    a1[1] = v26;
    if (v18 != v24)
    {
      memmove(&__dst[4 * a5], __dst, v18 - v24);
    }

    if (v10 != __dst)
    {
      v29 = __dst;
      v30 = v6;
      v28 = v10 - __dst;
LABEL_34:

      memmove(v29, v30, v28);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v4 = v2[31];
      if (v4 != v2[33])
      {
        free(v4);
      }

      v2 += 36;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2 != *(a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void std::__function::__func<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_1,std::allocator<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_1>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = **(a1 + 16);
  if (*(v2 + 152))
  {
    v4 = *(v2 + 136);
    std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::VSCommon::Vertex>,std::allocator<ggl::VertexDataTyped<ggl::VSCommon::Vertex>>,char const(&)[1],unsigned long &,0>(&v3, &v4);
  }
}

void sub_1B2D78430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a61);
  ggl::BufferMemory::~BufferMemory(&a65);
  v67 = *(v65 - 216);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
  }

  ggl::BufferMemory::~BufferMemory((v65 - 200));
  v68 = *(v65 - 144);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v68);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,anonymous namespace::SubMesh>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,anonymous namespace::SubMesh>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[3];
      if (v3)
      {
        v2[4] = v3;
        operator delete(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::unordered_map<unsigned int,anonymous namespace::SubMesh>::operator[](void *a1, _DWORD *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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
    if (v8 == v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7 + 3;
}

void sub_1B2D788F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<unsigned int,anonymous namespace::SubMesh>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::MuninViewMesh>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::MuninViewMesh>,md::mun::MuninViewMesh*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      *(a3 + 16) = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(a3 + 32) = *(v5 + 32);
      v6 = *(v5 + 48);
      *(a3 + 64) = *(v5 + 64);
      *(a3 + 48) = v6;
      v7 = *(v5 + 72);
      *(a3 + 80) = *(v5 + 80);
      *(a3 + 72) = v7;
      *(a3 + 84) = *(v5 + 84);
      v5 += 88;
      a3 += 88;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v4);
      v4 += 88;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<md::mun::MuninViewMesh>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<ggl::VSCommon::Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::VSCommon::Vertex>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A206F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__function::__func<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_1,std::allocator<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_1>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F3B48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<md::mun::MuninViewData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F3B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0,std::allocator<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(void **a1, uint64_t *a2)
{
  v2 = *a1[1];
  v3 = *(v2 + 256);
  if (*(v2 + 264) != v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 88) - *(v3 + 80)) >> 2);
    std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::VSCommon::Vertex>,std::allocator<ggl::VertexDataTyped<ggl::VSCommon::Vertex>>,char const(&)[1],unsigned long &,0>(&v4, &v5);
  }
}

void sub_1B2D79228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  ggl::BufferMemory::~BufferMemory(va);
  v35 = *(v33 - 176);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:nn200100]<md::mun::MuninViewMesh,std::shared_ptr<ggl::VSCommon::Mesh> &,gm::Range<unsigned long>,std::shared_ptr<ggl::Texture2D> const&,geo::RigidTransform<double,float>,md::mun::MuninViewMesh*>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, _OWORD *a4, uint64_t *a5, __int128 *a6)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *a5;
  v8 = a5[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = *a4;
  v10 = *a6;
  *(a1 + 64) = *(a6 + 2);
  *(a1 + 48) = v10;
  v11 = *(a6 + 3);
  *(a1 + 80) = *(a6 + 8);
  *(a1 + 72) = v11;
  *(a1 + 84) = *(a6 + 9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  return a1;
}

__n128 std::__function::__func<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0,std::allocator<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F3AC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::mun::MuninViewLayerDataSource::constructRequests(uint64_t a1, void **a2, void **a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 600);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v29 = v7;
      v8 = *(a1 + 592);
      if (v8 && a2 != a3)
      {
        v30 = v8;
        do
        {
          v9 = (*a2)[12];
          gdc::LayerDataRequestKey::keyData(&v41, *a2);
          v10 = v41;
          UInt64 = gdc::ResourceKey::getUInt64(v41, 0);
          v12 = gdc::ResourceKey::getUInt64(v10, 1u);
          v13 = gdc::ResourceKey::getUInt64(v10, 2u);
          v14 = gdc::ResourceKey::getUInt64(v10, 3u);
          if (v10 != v43)
          {
            free(v10);
          }

          if (v14)
          {
            md::mun::MuninMetadataContainer::activePoint(&v41, v8, v12);
            if (v47 == 1)
            {
              gdc::LayerDataRequestKey::keyData(v32, *a2);
              v15 = v46 < 0 || v13 == 7;
              v16 = v15;
              v17 = 7;
              if (v15)
              {
                v18 = 7;
              }

              else
              {
                v18 = 0;
              }

              v19 = v13 & 0xFFFFFFFF00000000;
              if (!v15)
              {
                v17 = 0;
              }

              v20 = UInt64;
              v37 = UInt64;
              v38 = v12;
              v39 = (v19 | v17);
              v40 = 1;
              gdc::GenericKey::GenericKey(&v33, &v37, 4);
              if ((v9 & 0x100000000) != 0)
              {
                v21 = v9;
              }

              else
              {
                v21 = 2147483646;
              }

              gdc::ResourceKey::ResourceKey(&v37, 0, 33, &v33, (*a2)[14], v21);
              if (v33 != v35)
              {
                free(v33);
              }

              gdc::LayerDataRequest::request(*a2, &v37, 0);
              if (v18 == v13)
              {
                v22 = v16;
              }

              else
              {
                v22 = 0;
              }

              if ((v22 & 1) == 0)
              {
                if ((v47 & 1) == 0)
                {
                  v28 = std::__throw_bad_optional_access[abi:nn200100]();
                  std::__shared_weak_count::__release_shared[abi:nn200100](v29);
                  _Unwind_Resume(v28);
                }

                for (i = v45[0]; i != v45[1]; i += 288)
                {
                  if (*(i + 240) == BYTE2(v13))
                  {
                    v25 = *(i + 248);
                    for (j = *(i + 256); v25 != j; ++v25)
                    {
                      v27 = v13 | (*v25 << 16) | v19;
                      v33 = v20;
                      v34 = v12;
                      v35 = v27;
                      v36 = 2;
                      gdc::GenericKey::GenericKey(v31, &v33, 4);
                      gdc::ResourceKey::ResourceKey(&v33, 0, 34, v31, (*a2)[14], v21);
                      if (v31[0] != v31[2])
                      {
                        free(v31[0]);
                      }

                      gdc::LayerDataRequest::request(*a2, &v33, 0);
                      if (v34 != v36)
                      {
                        free(v34);
                      }
                    }

                    break;
                  }
                }
              }

              if (v38 != v40)
              {
                free(v38);
              }

              v8 = v30;
              if (v32[0] != v32[2])
              {
                free(v32[0]);
              }

              if (v47)
              {
                geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v45);
              }
            }
          }

          else
          {
            v41 = UInt64;
            v42 = v12;
            v43 = v13 & 0xFFFFFFFF00FF00FFLL;
            v44 = 0;
            gdc::GenericKey::GenericKey(&v37, &v41, 4);
            if ((v9 & 0x100000000) != 0)
            {
              v23 = v9;
            }

            else
            {
              v23 = 2147483646;
            }

            gdc::ResourceKey::ResourceKey(&v41, 0, 23, &v37, (*a2)[14], v23);
            if (v37 != v39)
            {
              free(v37);
            }

            gdc::LayerDataRequest::request(*a2, &v41, 0);
            if (v42 != v44)
            {
              free(v42);
            }
          }

          a2 += 2;
        }

        while (a2 != a3);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }
  }
}

void md::mun::MuninViewLayerDataSource::addFallbackData(const gdc::LayerDataRequestKey **this, const gdc::SelectionContext *a2)
{
  v3 = *(a2 + 1);
  v64[0] = 255;
  v65 = 0;
  v66 = 0;
  v67 = 1;
  v62 = 0;
  v63 = 0uLL;
  v40 = v3;
  gdc::LayerDataCollector::missingData(v61, v3, *(this + 16));
  v60[0] = v61[0];
  v60[1] = v61[1];
  v58 = v61[2];
  v59 = v61[3];
  while (1)
  {
    *v50 = v58;
    v51 = v59;
    if (!gdc::MissingDataIterator::operator!=(v60, v50))
    {
      break;
    }

    gdc::LayerDataRequestKey::keyData(v50, *(&v60[0] + 1));
    v4 = v50[0];
    UInt64 = gdc::ResourceKey::getUInt64(v50[0], 0);
    v6 = gdc::ResourceKey::getUInt64(v4, 1u);
    v7 = gdc::ResourceKey::getUInt64(v4, 2u);
    v8 = gdc::ResourceKey::getUInt64(v4, 3u);
    if (v4 != v51)
    {
      free(v4);
    }

    v9 = 0;
    v10 = HIDWORD(v7);
    v57 = 0uLL;
    v11 = v7 >> 16;
    v12 = v7;
    while (1)
    {
      ++v12;
      v53 = v6;
      v54 = BYTE2(v7);
      v55 = v12;
      v56 = v8;
      md::mun::ViewId::toLayerDataKey(v50, &v53, UInt64, HIDWORD(v7), 2147483646);
      gdc::LayerDataStore::get(&v49, this[2], v50);
      v41 = v49;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      if (v51 != v52)
      {
        free(v51);
      }

      v9 = *(&v41 + 1);
      v13 = v41;
      if (v12 > 6u)
      {
        break;
      }

      if (v41)
      {
        v57 = v41;
LABEL_22:
        FillRect = grl::IconMetricsRenderResult::getFillRect(v13);
        v15 = gdc::Camera::cameraFrame(FillRect);
        if (v63 >= *(&v63 + 1))
        {
          v17 = 0xF0F0F0F0F0F0F0F1 * ((v63 - v62) >> 3) + 1;
          if (v17 > 0x1E1E1E1E1E1E1E1)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (0xE1E1E1E1E1E1E1E2 * ((*(&v63 + 1) - v62) >> 3) > v17)
          {
            v17 = 0xE1E1E1E1E1E1E1E2 * ((*(&v63 + 1) - v62) >> 3);
          }

          if (0xF0F0F0F0F0F0F0F1 * ((*(&v63 + 1) - v62) >> 3) >= 0xF0F0F0F0F0F0F0)
          {
            v18 = 0x1E1E1E1E1E1E1E1;
          }

          else
          {
            v18 = v17;
          }

          v52 = &v62;
          if (v18)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::FallbackData>>(v18);
          }

          v50[0] = 0;
          v50[1] = (8 * ((v63 - v62) >> 3));
          v51 = v50[1];
          gdc::FallbackData::FallbackData(v50[1], v64, v15, &v57);
          *&v51 = v51 + 136;
          v19 = (v50[1] + v62 - v63);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::FallbackData>,gdc::FallbackData*>(v62, v63, v19);
          v20 = v62;
          v21 = *(&v63 + 1);
          v62 = v19;
          v43 = v51;
          v63 = v51;
          *&v51 = v20;
          *(&v51 + 1) = v21;
          v50[0] = v20;
          v50[1] = v20;
          std::__split_buffer<gdc::FallbackData>::~__split_buffer(v50);
          v16 = v43;
          v9 = *(&v57 + 1);
        }

        else
        {
          v16 = gdc::FallbackData::FallbackData(v63, v64, v15, &v57) + 136;
        }

        *&v63 = v16;
        goto LABEL_34;
      }
    }

    v57 = v41;
    if (v41)
    {
      goto LABEL_22;
    }

    while (1)
    {
      LOBYTE(v7) = v7 - 1;
      v53 = v6;
      v54 = v11;
      v55 = v7;
      v56 = v8;
      md::mun::ViewId::toLayerDataKey(v50, &v53, UInt64, v10, 2147483646);
      gdc::LayerDataStore::get(&v49, this[2], v50);
      v42 = v49;
      v57 = v49;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      if (v51 != v52)
      {
        free(v51);
      }

      v9 = *(&v42 + 1);
      v13 = v42;
      if (!v7)
      {
        break;
      }

      if (v42)
      {
        goto LABEL_22;
      }
    }

    if (v42)
    {
      goto LABEL_22;
    }

LABEL_34:
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    gdc::MissingDataIterator::operator++(v60);
  }

  v22 = v63;
  if (v62 != v63)
  {
    v23 = v62 + 15;
    do
    {
      v24 = *grl::IconMetricsRenderResult::getFillRect(*v23);
      gdc::LayerDataKey::LayerDataKey(v46, (v23 - 11));
      gdc::LayerDataRequestKey::LayerDataRequestKey(v50, v24, v46);
      gdc::LayerDataCollector::addFallbackData(v40, v50, v23 - 60, v23);
      if (v51 != v52)
      {
        free(v51);
      }

      if (v47 != v48)
      {
        free(v47);
      }

      v25 = v23 + 2;
      v23 += 17;
    }

    while (v25 != v22);
  }

  v26 = gdc::LayerDataCollector::cDataHolders(*(v40 + 24), *(v40 + 32), *(this + 16));
  if (v26 != v27)
  {
    v28 = v26;
    v29 = v27;
    do
    {
      gdc::LayerDataRequestKey::keyData(v50, v28);
      v30 = v50[0];
      v31 = gdc::ResourceKey::getUInt64(v50[0], 0);
      v32 = gdc::ResourceKey::getUInt64(v30, 1u);
      v33 = gdc::ResourceKey::getUInt64(v30, 2u);
      v34 = gdc::ResourceKey::getUInt64(v30, 3u);
      if (v30 != v51)
      {
        free(v30);
      }

      v35 = 0;
      v36 = HIDWORD(v33);
      v37 = v33;
      v38 = v33 >> 16;
      do
      {
        if (v35 != v37)
        {
          *&v61[0] = v32;
          BYTE8(v61[0]) = v38;
          BYTE9(v61[0]) = v35;
          BYTE10(v61[0]) = v34;
          md::mun::ViewId::toLayerDataKey(v50, v61, v31, v36, 2147483646);
          gdc::LayerDataStore::get(v44, this[2], v50);
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v45);
          }

          if (v51 != v52)
          {
            free(v51);
          }
        }
      }

      while (v35++ < 7);
      v28 += 144;
    }

    while (v28 != v29);
  }

  v50[0] = &v62;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](v50);
}

void sub_1B2D79CCC(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  *(v2 - 216) = v2 - 152;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100]((v2 - 216));
  _Unwind_Resume(a1);
}

void md::mun::ViewId::toLayerDataKey(md::mun::ViewId *this, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(a2 + 10);
  v9 = (a4 << 32) | (*(a2 + 8) << 16) | *(a2 + 9);
  v11[0] = a3;
  v11[1] = v7;
  v11[2] = v9;
  v11[3] = v8;
  gdc::GenericKey::GenericKey(v10, v11, 4);
  gdc::LayerDataRequestKey::LayerDataRequestKey(this, 0, 36, v10, a5);
  if (v10[0] != v10[2])
  {
    free(v10[0]);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::FallbackData>>(unint64_t a1)
{
  if (a1 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::FallbackData>,gdc::FallbackData*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = &v5[v6];
      v8 = a3 + v6 * 8;
      *(v8 + 24) = 0;
      *(v8 + 4) = *(&v5[v6] + 4);
      *v8 = v5[v6];
      *(v8 + 16) = v5[v6 + 2];
      *(v8 + 24) = v5[v6 + 3];
      gdc::LayerDataKey::LayerDataKey(a3 + v6 * 8 + 32, &v5[v6 + 4]);
      *(v8 + 120) = *&v5[v6 + 15];
      v7[15] = 0;
      v7[16] = 0;
      v6 += 17;
    }

    while (&v5[v6] != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<gdc::FallbackData,0>(v5);
      v5 += 17;
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<gdc::FallbackData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::__destroy_at[abi:nn200100]<gdc::FallbackData,0>((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::mun::MuninViewLayerDataSource::~MuninViewLayerDataSource(md::mun::MuninViewLayerDataSource *this)
{
  *this = &unk_1F29F3A28;
  *(this + 76) = &unk_1F2A59028;

  v2 = *(this + 75);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F3A28;
  *(this + 76) = &unk_1F2A59028;

  v2 = *(this + 75);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  gdc::LayerDataSource::~LayerDataSource(this);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(*(a1 + 16) + 8);
  if (v3 < (*(*(a1 + 16) + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(*(a1 + 24) + 8), v3 < (*(*(a1 + 24) + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0)
  {
    return *(v7 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31MaterialStyleConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialStyleConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15F38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A15F58;
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

void ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15F38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::PrepareMaterialStyleConstantDataHandle::operator()(ecs2::Query<md::ls::InView const&,md::ls::RenderableMaterialData const&>)::$_0,std::allocator<md::ita::PrepareMaterialStyleConstantDataHandle::operator()(ecs2::Query<md::ls::InView const&,md::ls::RenderableMaterialData const&>)::$_0>,void ()(md::ls::InView const&,md::ls::RenderableMaterialData const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F3B90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::BaseHybridMapEngineMode::willBecomeInactive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 40960);
  md::World::purge(*(a2 + 41704), 0);
  v5 = v4[121];
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0x91E65CD7F1A7A7FALL)[5] + 229) = 257;
  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0xAF46DE79C836B0D8);
  if (v6)
  {
    v7 = v6[5];
  }

  else
  {
    v7 = 0;
  }

  *(v7 + 324) = 0;
  v32[0] = 0;
  v33 = 0;
  std::__optional_storage_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false> const&>(v7 + 336, v32);
  if (v33 == 1)
  {
    std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](v32);
  }

  *(v7 + 328) = 0;
  v30[0] = 0;
  v31 = 0;
  std::__optional_storage_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false> const&>(v7 + 376, v30);
  if (v31 == 1)
  {
    std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v30);
  }

  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v7 + 136), 0);
  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v7 + 184), 0);
  v8 = v4[121];
  v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0xC267A080D338C6A1)[5];
  if (v9[29])
  {
    v10 = v9[28];
    if (v10)
    {
      do
      {
        v11 = *v10;
        operator delete(v10);
        v10 = v11;
      }

      while (v11);
    }

    v9[28] = 0;
    v12 = v9[27];
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        *(v9[26] + 8 * i) = 0;
      }
    }

    v9[29] = 0;
    v8 = v4[121];
  }

  v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0x4AC7AB7561675F6uLL);
  if (v14)
  {
    v15 = v14[5];
  }

  else
  {
    v15 = 0;
  }

  LOBYTE(v27) = 0;
  v29 = 0;
  std::__optional_storage_base<std::function<BOOL ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<BOOL ()(void)>,false> const&>(v15 + 144, &v27);
  if (v29 == 1)
  {
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](&v27);
  }

  LOBYTE(v27) = 0;
  v29 = 0;
  std::__optional_storage_base<std::function<float ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<float ()(void)>,false> const&>(v15 + 184, &v27);
  if (v29 == 1)
  {
    std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](&v27);
  }

  v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v4[121] + 16), 0x17767EADC5B287BuLL);
  if (v16)
  {
    v16 = v16[5];
  }

  v25[0] = 0;
  v26 = 0;
  md::ElevationLogic::setElevationAdjustmentFeedback(v16, v25);
  if (v26 == 1)
  {
    std::__function::__value_func<void ()(std::optional<double> const&)>::~__value_func[abi:nn200100](v25);
  }

  v17 = *(*(a3 + 41672) + 40);
  if ((*(*(a3 + 41672) + 48) - v17) >= 0x11)
  {
    v18 = *(v17 + 16);
  }

  else
  {
    v18 = 0;
  }

  v19 = +[VKSharedResourcesManager sharedResources];
  objc_msgSend_standardCommandBufferSelector(v19);
  v24 = *(*(v27 + 8) + 8);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  md::GridRenderLayer::setCommandBufferLocation(v18, &v24);
  v20 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v4[121] + 16), 0x88BE5DF80D25DA79);
  if (v20)
  {
    v20 = v20[5];
  }

  (*(*v20 + 16))(v20);
  v21 = v4[93];
  if (v21)
  {
    v22 = *(v21 + 336);
    if (v22)
    {
      v23 = *v22;
      std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((*v22 + 8));
      std::__list_imp<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>>::clear((v23 + 48));
    }
  }

  *(v4[138] + 88) = 1;
}

uint64_t std::__optional_storage_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {
      std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__value_func[abi:nn200100](v5, a2);
      if (v5 != v2)
      {
        v3 = v6;
        v4 = *(v2 + 24);
        if (v6 == v5)
        {
          if (v4 == v2)
          {
            (*(*v6 + 24))();
            (*(*v6 + 32))(v6);
            v6 = 0;
            (*(**(v2 + 24) + 24))(*(v2 + 24), v5);
            (*(**(v2 + 24) + 32))(*(v2 + 24));
            *(v2 + 24) = 0;
            v6 = v5;
            (*(v7[0] + 24))(v7, v2);
            (*(v7[0] + 32))(v7);
          }

          else
          {
            (*(*v6 + 24))();
            (*(*v6 + 32))(v6);
            v6 = *(v2 + 24);
          }

          *(v2 + 24) = v2;
        }

        else if (v4 == v2)
        {
          (*(*v4 + 24))(*(v2 + 24), v5);
          (*(**(v2 + 24) + 32))(*(v2 + 24));
          *(v2 + 24) = v6;
          v6 = v5;
        }

        else
        {
          v6 = *(v2 + 24);
          *(v2 + 24) = v3;
        }
      }

      return std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](v5);
    }
  }

  else if (*(result + 32))
  {
    result = std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](result);
    *(v2 + 32) = 0;
  }

  else
  {
    result = std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__value_func[abi:nn200100](result, a2);
    *(v2 + 32) = 1;
  }

  return result;
}

uint64_t std::__optional_storage_base<std::function<BOOL ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<BOOL ()(void)>,false> const&>(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {

      return std::function<BOOL ()(void)>::operator=(result, a2);
    }
  }

  else if (*(result + 32))
  {
    result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](result);
    *(result + 32) = 0;
  }

  else
  {
    result = std::__function::__value_func<BOOL ()(void)>::__value_func[abi:nn200100](result, a2);
    *(result + 32) = 1;
  }

  return result;
}

uint64_t std::__optional_storage_base<std::function<float ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<float ()(void)>,false> const&>(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {

      return std::function<float ()(void)>::operator=(result, a2);
    }
  }

  else if (*(result + 32))
  {
    result = std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](result);
    *(result + 32) = 0;
  }

  else
  {
    result = std::__function::__value_func<float ()(void)>::__value_func[abi:nn200100](result, a2);
    *(result + 32) = 1;
  }

  return result;
}

uint64_t std::function<float ()(void)>::operator=(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<float ()(void)>::__value_func[abi:nn200100](v6, a2);
  if (v6 != a1)
  {
    v3 = v7;
    v4 = *(a1 + 24);
    if (v7 == v6)
    {
      if (v4 == a1)
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v6);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v7 = v6;
        (*(v8[0] + 24))(v8, a1);
        (*(v8[0] + 32))(v8);
      }

      else
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v6);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v7;
      v7 = v6;
    }

    else
    {
      v7 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](v6);
  return a1;
}

uint64_t md::BaseHybridMapEngineMode::didBecomeActive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v64[3] = *MEMORY[0x1E69E9840];
  v8 = (a2 + 40960);
  md::World::purge(*(a2 + 41704), 0);
  *(a1 + 656) = v8[134];
  md::CartographicMapEngineMode::didBecomeActive(a1, a2, a3, a4);
  v9 = *(a3 + 41672);
  v10 = *(v9 + 40);
  v11 = *(v9 + 48) - v10;
  if (v11 > 0x1AF)
  {
    v13 = *(v10 + 424);
    v12 = *(v10 + 80);
    if (v13)
    {
      v14 = *(a1 + 680);
      if (*(v13 + 33) != v14)
      {
        *(v13 + 33) = v14;
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v15 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *(v13 + 33);
          *buf = 67109120;
          *&buf[4] = v16;
          _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_INFO, "[FeatureFlag]FlyoverRenderLayer:%d", buf, 8u);
        }
      }
    }
  }

  else
  {
    if (v11 < 0x58)
    {
      goto LABEL_18;
    }

    v12 = *(v10 + 80);
  }

  if (v12)
  {
    v17 = *(a1 + 680);
    if (*(v12 + 33) != v17)
    {
      *(v12 + 33) = v17;
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v18 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(v12 + 33);
        *buf = 67109120;
        *&buf[4] = v19;
        _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_INFO, "[FeatureFlag]GlobeRasterRenderLayer:%d", buf, 8u);
      }
    }
  }

LABEL_18:
  v20 = v8[121];
  v21 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v20 + 16), 0x2FED70A4459DFCA1uLL);
  if (v21)
  {
    v22 = v21[5];
    if (v22)
    {
      v23 = v8[122];
      v24 = *v23;
      v25 = v23[1];
      while (v24 != v25)
      {
        if (*v24 == 21)
        {
          if (v24 != v25)
          {
            v26 = *(v24 + 8) != 0;
            goto LABEL_27;
          }

          break;
        }

        v24 += 16;
      }

      v26 = 0;
LABEL_27:
      md::StyleLogic::setGroundMode(v22, v26);
      v20 = v8[121];
    }
  }

  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v20 + 16), 0x91E65CD7F1A7A7FALL)[5] + 229) = 0;
  v27 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v20 + 16), 0xAF46DE79C836B0D8);
  if (v27)
  {
    v28 = v27[5];
  }

  else
  {
    v28 = 0;
  }

  *(v28 + 324) = 17826054;
  v29 = v8[93];
  if (v29)
  {
    md::World::setEnableGlobe(v29[1].__shared_owners_, v29[1].__shared_weak_owners_, *(a1 + 648));
  }

  *(v28 + 328) = 3;
  v60[0] = &unk_1F29F3C90;
  v60[1] = v29;
  v60[3] = v60;
  v61 = 1;
  std::__optional_storage_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false> const&>(v28 + 336, v60);
  if (v61 == 1)
  {
    std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](v60);
  }

  v30 = v8[121];
  v31 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v30 + 16), 0x4BD0C73E70A08DDBuLL);
  if (v31)
  {
    v32 = v31[5];
  }

  else
  {
    v32 = 0;
  }

  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v30 + 16), 0xE3FE7D96C51342AuLL)[5] + 848) = 0;
  v58[0] = &unk_1F29F3CD8;
  v58[1] = v32;
  v58[3] = v58;
  v59 = 1;
  std::__optional_storage_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false> const&>(v28 + 376, v58);
  if (v59 == 1)
  {
    std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v58);
  }

  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v28 + 136), 1);
  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v28 + 184), 1);
  if (*(a1 + 648))
  {
    v33 = 7;
  }

  else
  {
    v33 = 2;
  }

  v34 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8[121] + 16), 0xC267A080D338C6A1);
  if (v34)
  {
    v35 = v34[5];
  }

  else
  {
    v35 = 0;
  }

  *buf = v33;
  std::__hash_table<md::TileSelectionTileSetType,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>>::__emplace_unique_key_args<md::TileSelectionTileSetType,md::TileSelectionTileSetType const&>((v35 + 208), v33, buf);
  v36 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8[121] + 16), 0x4AC7AB7561675F6uLL);
  if (v36)
  {
    v37 = v36[5];
  }

  else
  {
    v37 = 0;
  }

  v38 = +[VKDebugSettings sharedSettings];
  v39 = [v38 flyoverDrapeGrid];

  if (v39)
  {
    *buf = 1;
    std::__hash_table<md::TileSelectionTileSetType,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>>::__emplace_unique_key_args<md::TileSelectionTileSetType,md::TileSelectionTileSetType const&>((v35 + 208), 1u, buf);
    strcpy(buf, "\b");
    std::__hash_table<md::TileSelectionTileSetType,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>>::__emplace_unique_key_args<md::TileSelectionTileSetType,md::TileSelectionTileSetType const&>((v35 + 208), 8u, buf);
  }

  *buf = &unk_1F29F3D20;
  v56 = buf;
  v57 = 1;
  std::__optional_storage_base<std::function<BOOL ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<BOOL ()(void)>,false> const&>(v37 + 144, buf);
  if (v57 == 1)
  {
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](buf);
  }

  *buf = &unk_1F29F3D68;
  v56 = buf;
  v57 = 1;
  std::__optional_storage_base<std::function<float ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<float ()(void)>,false> const&>(v37 + 184, buf);
  if (v57 == 1)
  {
    std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](buf);
  }

  v40 = *(v9 + 40);
  if ((*(v9 + 48) - v40) >= 0x11)
  {
    v41 = *(v40 + 16);
  }

  else
  {
    v41 = 0;
  }

  v42 = +[VKSharedResourcesManager sharedResources];
  objc_msgSend_standardCommandBufferSelector(v42);
  v51 = *(*(*buf + 8) + 8);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  md::GridRenderLayer::setCommandBufferLocation(v41, &v51);
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8[121] + 16), 0x17767EADC5B287BuLL);
  v44 = *(result + 40);
  v44[11] = 0u;
  v44[12] = 0u;
  v44[13] = 0u;
  v44[14] = 0u;
  v44[15] = 0u;
  if (*(a1 + 648) == 1)
  {
    *buf = &unk_1F29F3DB0;
    v55 = v29;
    v56 = buf;
    v57 = 1;
    v45 = (a1 + 576);
    if (*(a1 + 608))
    {
      std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::__value_func[abi:nn200100](v62, buf);
      if (v45 != v62)
      {
        v46 = v63;
        v47 = *(a1 + 600);
        if (v63 == v62)
        {
          if (v47 == v45)
          {
            (*(*v63 + 24))(v63, v64);
            (*(*v63 + 32))(v63);
            v63 = 0;
            (*(**(a1 + 600) + 24))(*(a1 + 600), v62);
            (*(**(a1 + 600) + 32))(*(a1 + 600));
            *(a1 + 600) = 0;
            v63 = v62;
            (*(v64[0] + 24))(v64, a1 + 576);
            (*(v64[0] + 32))(v64);
          }

          else
          {
            (*(*v63 + 24))(v63, a1 + 576);
            (*(*v63 + 32))(v63);
            v63 = *(a1 + 600);
          }

          *(a1 + 600) = v45;
        }

        else if (v47 == v45)
        {
          (*(*v47 + 24))(*(a1 + 600), v62);
          (*(**(a1 + 600) + 32))(*(a1 + 600));
          *(a1 + 600) = v63;
          v63 = v62;
        }

        else
        {
          v63 = *(a1 + 600);
          *(a1 + 600) = v46;
        }
      }

      std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::~__value_func[abi:nn200100](v62);
    }

    else
    {
      std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::__value_func[abi:nn200100](a1 + 576, buf);
      *(a1 + 608) = 1;
    }

    if (v57 == 1)
    {
      std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::~__value_func[abi:nn200100](buf);
    }

    if (*(a1 + 672) == 1)
    {
      *(a1 + 672) = 0;
    }

    v52[0] = &unk_1F29F3DF8;
    v52[1] = a1;
    v52[3] = v52;
    v53 = 1;
    md::ElevationLogic::setElevationAdjustmentFeedback(v44, v52);
    if (v53 == 1)
    {
      std::__function::__value_func<void ()(std::optional<double> const&)>::~__value_func[abi:nn200100](v52);
    }

    *buf = &unk_1F29F3E40;
    v55 = a1;
    v56 = buf;
    v57 = 1;
    v48 = (a1 + 536);
    if (*(a1 + 568))
    {
      std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v62, buf);
      if (v48 != v62)
      {
        v49 = v63;
        v50 = *(a1 + 560);
        if (v63 == v62)
        {
          if (v50 == v48)
          {
            (*(*v63 + 24))();
            (*(*v63 + 32))(v63);
            v63 = 0;
            (*(**(a1 + 560) + 24))(*(a1 + 560), v62);
            (*(**(a1 + 560) + 32))(*(a1 + 560));
            *(a1 + 560) = 0;
            v63 = v62;
            (*(v64[0] + 24))(v64, a1 + 536);
            (*(v64[0] + 32))(v64);
          }

          else
          {
            (*(*v63 + 24))();
            (*(*v63 + 32))(v63);
            v63 = *(a1 + 560);
          }

          *(a1 + 560) = v48;
        }

        else if (v50 == v48)
        {
          (*(*v50 + 24))(*(a1 + 560), v62);
          (*(**(a1 + 560) + 32))(*(a1 + 560));
          *(a1 + 560) = v63;
          v63 = v62;
        }

        else
        {
          v63 = *(a1 + 560);
          *(a1 + 560) = v49;
        }
      }

      result = std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v62);
    }

    else
    {
      result = std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](a1 + 536, buf);
      *(a1 + 568) = 1;
    }

    if (v57 == 1)
    {
      result = std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](buf);
    }
  }

  *(v8[138] + 88) = 0;
  return result;
}

void sub_1B2D7BA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a22 == 1)
  {
    std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](&a16);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<md::TileSelectionTileSetType,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>>::__emplace_unique_key_args<md::TileSelectionTileSetType,md::TileSelectionTileSetType const&>(float *a1, unsigned __int16 a2, _WORD *a3)
{
  v3 = *(a1 + 1);
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
      v5 = a2 % *(a1 + 1);
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

  if (*(v7 + 8) != a2)
  {
    goto LABEL_17;
  }
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_6,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_6>,BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::operator()(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *(a1 + 8);
  v9 = gdc::Camera::cameraFrame(v7);
  v10 = *(v9 + 32);
  *a3 = fmax(*grl::IconMetricsRenderResult::size(v7) * 0.15, 5.0);
  v11 = *(v9 + 16);
  v23[0] = *v9;
  v23[1] = v11;
  v23[2] = *(v9 + 32);
  v24 = *(v9 + 48);
  gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(v21, v23, *v7 == 0);
  v12 = 0.0;
  if (*(v8 + 672) == 1)
  {
    v12 = *(v8 + 664);
  }

  v13 = v22;
  gdc::Camera::verticalFieldOfView(&v20, v7);
  v14 = __sincos_stret(v10);
  v15 = (fabs(v12) + v13 * 40075017.0) / fmax(v14.__cosval, 0.01745);
  v16 = v20 * 0.5;
  v17 = sin(1.57079633 - (v10 + v20 * 0.5));
  v18 = tan(v16);
  *a4 = fmax((v15 * (v14.__sinval * v18 * sin(v16 + 1.57079633)) / fmax(v17, 0.01745) + v15) * 1.5, 600.0);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return 1;
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_6,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_6>,BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3E40;
  a2[1] = v2;
  return result;
}

double std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_5,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_5>,void ()(std::optional<double> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *&result = *a2;
  if (!*(a2 + 8))
  {
    *&result = 0.0;
  }

  v3 = *(a1 + 8);
  if (*(v3 + 672) == *(a2 + 8))
  {
    if (*(v3 + 672))
    {
      result = *&result;
      *(v3 + 664) = result;
    }
  }

  else if (*(v3 + 672))
  {
    *(v3 + 672) = 0;
  }

  else
  {
    result = *&result;
    *(v3 + 664) = result;
    *(v3 + 672) = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_5,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_5>,void ()(std::optional<double> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3DF8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_4,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_4>,std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *a3;
  *a4 = 0;
  a4[16] = 0;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = *(v9 + 352);
    if (v10 && v8 > 15.0)
    {
      v12 = gdc::Camera::cameraFrame(v6);
      v13 = v12[1];
      v14 = tan(*v12 * 0.5 + 0.785398163);
      v15 = log(v14);
      v16 = 1 << v8;
      LOBYTE(v18) = -1;
      BYTE1(v18) = v8;
      HIDWORD(v18) = v16 + ~vcvtmd_s64_f64((v15 * 0.159154943 + 0.5) * v16);
      v19 = vcvtmd_s64_f64((v13 * 0.159154943 + 0.5) * v16);
      v20 = 0;
      v21 = 1;
      md::FlyoverMetaData::adjustedTile(v17, v10, &v18, 1);
      if (v17[40] == 1 && v17[32] != 1)
      {
        *a4 = xmmword_1B33B0C80;
        a4[16] = 1;
      }
    }
  }

  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void sub_1B2D7C39C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_4,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_4>,std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3DB0;
  a2[1] = v2;
  return result;
}

float std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_3,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_3>,float ()(void)>::operator()()
{
  v0 = +[VKDebugSettings sharedSettings];
  [v0 flyoverGridNDCBias];
  v2 = v1;

  return v2;
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_2,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_2>,BOOL ()(void)>::operator()()
{
  v0 = +[VKDebugSettings sharedSettings];
  v1 = [v0 flyoverDrapeGrid];

  return v1;
}

int64x2_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_1,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_1>,gdc::CameraFrame<geo::Radians,double> ()(void)>::operator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (!v3 || (md::FlyoverTileDataLogic::getNeighborCameraPositionProvider(v7, v3), v9 != 1))
  {
    result = vdupq_n_s64(0xC00921FB54442D18);
    *a2 = result;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
    return result;
  }

  std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v7);
  md::FlyoverTileDataLogic::getNeighborCameraPositionProvider(v7, *(a1 + 8));
  if ((v9 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
LABEL_10:
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    if (v9 == 1)
    {
      std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v7);
    }

    _Unwind_Resume(v6);
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  (*(*v8 + 48))(v8);
  if (v9 == 1)
  {
    std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v7);
  }

  return result;
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_1,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_1>,gdc::CameraFrame<geo::Radians,double> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3CD8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_0,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_0>,std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::operator()(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 16) = 0;
  if (md::FlyoverMetaData::tileType(*(*(a1 + 8) + 352), a2, 0) >= 0x100u)
  {
    md::World::getDsmTileData(&v14, *(*(a1 + 8) + 80), *(*(a1 + 8) + 88), a2);
    v6 = v14;
    if (v14)
    {
      md::FlyoverMetaData::adjustedTile(v13, *(*(a1 + 8) + 352), a2, 0);
      if (v13[40] == 1)
      {
        md::FlyoverMetaData::elevationBoundsForTile(&v11, *(*(a1 + 8) + 352), v13);
      }

      else
      {
        md::FlyoverMetaData::elevationBoundsForTile(&v11, *(*(a1 + 8) + 352), a2);
      }

      *a3 = v11;
      v7 = v12;
      *(a3 + 16) = v12;
      if ((v7 & 1) == 0)
      {
        if (*(v6 + 728))
        {
          v8 = (v6 + 728);
        }

        else
        {
          v8 = (v6 + 744);
        }

        v9 = md::FlyoverDsmTileData::heightBounds(v6, a2, v8);
        if (v10)
        {
          *a3 = *&v9;
          *(a3 + 8) = *(&v9 + 1);
          *(a3 + 16) = 1;
        }
      }
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }
  }
}

void sub_1B2D7C900(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_0,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_0>,std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3C90;
  a2[1] = v2;
  return result;
}

void md::BaseHybridMapEngineMode::applyMapDataTypeSettings(uint64_t ***a1, uint64_t a2, void *a3)
{
  if (*(a2 + 41936))
  {
    v5 = a1;
    if (*(a1 + 648))
    {
      v6 = 7;
    }

    else
    {
      v6 = 2;
    }

    v7 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0xBu);
    if (v7 && *(v7 + 18) == 2)
    {
      *(v7 + 18) = (v6 << 16) | 2;
    }

    v8 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0xCu);
    if (v8 && *(v8 + 18) == 2)
    {
      *(v8 + 18) = (v6 << 16) | 2;
    }

    v9 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0x47u);
    if (v9 && *(v9 + 18) == 2)
    {
      *(v9 + 18) = (v6 << 16) | 2;
    }

    a1 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0x48u);
    if (a1 && *(a1 + 18) == 2)
    {
      *(a1 + 18) = (v6 << 16) | 2;
    }

    if (*(v5 + 648) == 1)
    {
      a1 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0x51u);
      if (a1)
      {
        if (*(a1 + 18) == 2)
        {
          *(a1 + 18) = (v6 << 16) | 2;
        }
      }
    }
  }

  md::MapEngineMode::applyMapDataTypeSettings(a1, a2, a3);
}

void md::BaseHybridMapEngineMode::applyRenderLayerSettings(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 41936);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = *v4;
    while (*v7 != 5)
    {
      v7 += 16;
      if (v7 == v6)
      {
        goto LABEL_13;
      }
    }

    if (v7 != v6)
    {
      if (*(v7 + 8))
      {
        v8 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x29u);
        if (v8)
        {
          if (*(v8 + 17) == 2)
          {
            *(v8 + 17) = 1;
          }
        }
      }
    }
  }

LABEL_13:
  while (v5 != v6)
  {
    if (*v5 == 5)
    {
      if (v5 != v6)
      {
        if (*(v5 + 8))
        {
          v9 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x2Au);
          if (v9)
          {
            if (*(v9 + 17) == 2)
            {
              *(v9 + 17) = 1;
            }
          }
        }
      }

      return;
    }

    v5 += 16;
  }
}

void md::BaseHybridMapEngineMode::~BaseHybridMapEngineMode(md::BaseHybridMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::BaseHybridMapEngineMode::BaseHybridMapEngineMode(uint64_t a1, char a2, __int16 a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = md::CartographicMapEngineMode::CartographicMapEngineMode(a1, a2);
  *v5 = &unk_1F29F3C48;
  *(v5 + 648) = a3;
  *(v5 + 664) = 0;
  *(v5 + 672) = 0;
  *(a1 + 680) = MapsFeature_IsEnabled_VKMLayout_Flyover();
  v26 = xmmword_1B33B0710;
  v6 = (a1 + 628);
  if (*(a1 + 644))
  {
    *v6 = xmmword_1B33B0710;
  }

  else
  {
    *v6 = v26;
    *(a1 + 644) = 1;
  }

  *(a1 + 616) = 100;
  *(a1 + 49) = 0;
  *(a1 + 52) = 20;
  LOWORD(v26) = 2560;
  *(&v26 + 1) = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 512, &v26);
  LOWORD(v26) = 5386;
  *(&v26 + 1) = 0x3FE0C152382D7365;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 512, &v26);
  if (*(a1 + 648) == 1)
  {
    LOWORD(v26) = 2560;
    *(&v26 + 1) = 0;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 464, &v26);
    LOWORD(v26) = 5386;
    *(&v26 + 1) = 0x3FD657184AE74487;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 464, &v26);
    LOWORD(v26) = 768;
    *(&v26 + 1) = 0;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 488, &v26);
    LOWORD(v26) = 3843;
    *(&v26 + 1) = 0x3FE38C35418A5BF6;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 488, &v26);
    LOWORD(v26) = 4111;
    *(&v26 + 1) = 0x3FF0C152382D7365;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 488, &v26);
    LOWORD(v26) = 6416;
    *(&v26 + 1) = 0x3FF38C35418A5BF6;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 488, &v26);
    md::MapEngineMode::addTileSelectionTileSetType(a1);
  }

  else
  {
    *(a1 + 52) = 20;
    LOWORD(v26) = 5120;
    *(&v26 + 1) = 0;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 464, &v26);
    LOWORD(v26) = 5120;
    *(&v26 + 1) = 0;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(a1 + 488, &v26);
  }

  LOWORD(v26) = 512;
  BYTE2(v26) = 31;
  md::MapEngineMode::addRequiredRenderLayers(a1, &v26, 3);
  if (*(a1 + 648) == 1)
  {
    LOWORD(v26) = 2561;
    BYTE2(v26) = 53;
    md::MapEngineMode::addRequiredRenderLayers(a1, &v26, 3);
    v7 = 5;
    v8 = 2;
  }

  else
  {
    LOWORD(v26) = 5379;
    BYTE2(v26) = 9;
    md::MapEngineMode::addRequiredRenderLayers(a1, &v26, 3);
    v8 = 0;
    v7 = 0;
  }

  *(a1 + 224) = v8;
  *(a1 + 225) = v7;
  *&v26 = 0x2B7C4502BD3C99C6;
  *(&v26 + 1) = "md::ResolvedSceneLogic]";
  v27 = 22;
  gdc::LogicExecutionGraphBuilder::addFlowAfter((a1 + 232), &v26, 0);
  *&v26 = 0x17767EADC5B287BLL;
  *(&v26 + 1) = "md::ElevationLogic]";
  v27 = 18;
  gdc::LogicExecutionGraphBuilder::addFlowAfter((a1 + 232), &v26, 1);
  gdc::LogicExecutionGraphBuilder::addLogic<md::mun::MuninLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::AnchorLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::AssetLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::AssetInjectionLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::IdentifiedResourceLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LightingLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LoadingStatusLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MapZoomLevelStyleLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MaterialLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MeshRenderableLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::NavigationLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteLineLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PuckLocationAnimationTracingLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::OverlaysLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::DrapingLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RegistryLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingRegistryLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteOverlayLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LayerDataLogic>(a1 + 232);
  v23 = 0xC267A080D338C6A1;
  v24 = "md::TerrainMeshProviderLogic]";
  v25 = 28;
  v19 = 0x44B2D9808992962CLL;
  v20 = "md::TerrainMeshProviderContext]";
  v21 = 30;
  v22 = 1;
  *(&v26 + 1) = &v28;
  v27 = 2;
  *&v26 = &unk_1F2A4B5D0;
  v28 = xmmword_1E7B33818;
  v29 = unk_1E7B33828;
  v30 = xmmword_1E7B33838;
  v16 = xmmword_1E7B33848;
  v14 = &v16;
  v15 = 2;
  v13 = &unk_1F2A4B5D0;
  v17 = unk_1E7B33858;
  v18 = xmmword_1E7B33868;
  gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v23, &v19, 0, &v26, &v13);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileSelectionLogic>(a1 + 232);
  v19 = 0x4BD0C73E70A08DDBLL;
  v20 = "md::FlyoverTileDataLogic]";
  v21 = 24;
  v13 = 0x479E84E48468DB70;
  v14 = "md::FlyoverTileDataResolverContext]";
  v15 = 34;
  LOBYTE(v16) = 1;
  v29 = unk_1E7B338D0;
  v30 = xmmword_1E7B338E0;
  v31 = unk_1E7B338F0;
  *&v26 = &unk_1F2A4B5F0;
  *(&v26 + 1) = &v28;
  v27 = 3;
  v32 = 17;
  v28 = xmmword_1E7B338C0;
  v24 = &v26;
  v25 = 0;
  v23 = &unk_1F2A4C258;
  gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v19, &v13, 0, &v26, &v23);
  v19 = 0xE3FE7D96C51342ALL;
  v20 = "md::FlyoverCompleteTileDataLogic]";
  v21 = 32;
  v13 = 0xD3D7935EF848FCE7;
  v14 = "md::FlyoverCompleteTileDataContext]";
  v15 = 34;
  LOBYTE(v16) = 1;
  v29 = unk_1E7B33918;
  v30 = xmmword_1E7B33928;
  v31 = unk_1E7B33938;
  *&v26 = &unk_1F2A4B5F0;
  *(&v26 + 1) = &v28;
  v27 = 3;
  v32 = 23;
  v28 = xmmword_1E7B33908;
  v24 = &v26;
  v25 = 0;
  v23 = &unk_1F2A4C258;
  gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v19, &v13, 0, &v26, &v23);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingSceneLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::ResolvedSceneLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SceneQueryLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SettingsLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SharedResourcesLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SkyLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::StyleLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PuckLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::NonTiledAssetLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::StandardLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::DebugDrawLogic>(a1 + 232);
  gdc::LogicExecutionGraphBuilder::addLogic<md::BVHDebugLogic>(a1 + 232);
  if (*(a1 + 680) == 1)
  {
    v19 = 0xBCE247AEE562B774;
    v20 = "md::CollectMapDataLogic<md::MapDataType::Flyover>]";
    v21 = 49;
    v13 = 0x4B05BEFA631D0889;
    v14 = "md::CollectMapDataContext<md::MapDataType::Flyover>]";
    v15 = 51;
    LOBYTE(v16) = 1;
    *&v26 = &unk_1F2A4C218;
    *(&v26 + 1) = &v28;
    v28 = xmmword_1E7B3C808;
    v27 = 1;
    *&v29 = 16;
    v24 = &v26;
    v25 = 0;
    v23 = &unk_1F2A4C258;
    gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v19, &v13, 0, &v26, &v23);
    v23 = 0x1643CA7DB4F8EC0BLL;
    v24 = "md::CollectRenderablesLogic<md::MapDataType::Flyover, md::FlyoverRenderable>]";
    v25 = 76;
    v19 = 0x57AAF780DF3EC6C0;
    v20 = "md::CollectRenderablesLogicContext<md::MapDataType::Flyover>]";
    v21 = 60;
    v22 = 1;
    *&v26 = &unk_1F2A4C218;
    *(&v26 + 1) = &v28;
    v28 = xmmword_1E7B3C8B0;
    v27 = 1;
    *&v29 = 19;
    v14 = &v16;
    v15 = 1;
    v13 = &unk_1F2A4C218;
    v16 = xmmword_1E7B33C08;
    *&v17 = 51;
    gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v23, &v19, 0, &v26, &v13);
    v19 = 0x3FE9EE0C18B7C16;
    v20 = "md::CollectMapDataLogic<md::MapDataType::PolarFlyover>]";
    v21 = 54;
    v13 = 0xE4007F1EDCD91179;
    v14 = "md::CollectMapDataContext<md::MapDataType::PolarFlyover>]";
    v15 = 56;
    LOBYTE(v16) = 1;
    *&v26 = &unk_1F2A4C218;
    *(&v26 + 1) = &v28;
    v28 = xmmword_1E7B3C808;
    v27 = 1;
    *&v29 = 16;
    v24 = &v26;
    v25 = 0;
    v23 = &unk_1F2A4C258;
    gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v19, &v13, 0, &v26, &v23);
    v23 = 0xAE08CA453A162E8BLL;
    v24 = "md::CollectRenderablesLogic<md::MapDataType::PolarFlyover, md::FlyoverRenderable>]";
    v25 = 81;
    v19 = 0x4F6DB855E2E136BALL;
    v20 = "md::CollectRenderablesLogicContext<md::MapDataType::PolarFlyover>]";
    v21 = 65;
    v22 = 1;
    *&v26 = &unk_1F2A4C218;
    *(&v26 + 1) = &v28;
    v28 = xmmword_1E7B3C8B0;
    v27 = 1;
    *&v29 = 19;
    v14 = &v16;
    v15 = 1;
    v13 = &unk_1F2A4C218;
    v16 = xmmword_1E7B33C20;
    *&v17 = 56;
    gdc::LogicExecutionGraphBuilder::addLogic(a1 + 232, &v23, &v19, 0, &v26, &v13);
  }

  v9 = *(a1 + 648);
  if (v9 == 1)
  {
    *&v26 = 0x5004F0001004BLL;
    md::MapEngineMode::addRequiredMapDataTypes(a1, &v26, 2);
  }

  else
  {
    LOWORD(v26) = 10;
    WORD1(v26) = v9;
    md::MapEngineMode::addRequiredMapDataTypes(a1, &v26, 1);
  }

  LOWORD(v26) = 27;
  WORD1(v26) = v9;
  WORD2(v26) = 15;
  WORD3(v26) = v9;
  WORD4(v26) = 28;
  WORD5(v26) = v9;
  md::MapEngineMode::addOptionalMapDataTypes(a1, &v26, 3);
  if (*(a1 + 648) == 1)
  {
    LOWORD(v26) = 76;
    WORD1(v26) = v9;
    WORD2(v26) = 77;
    WORD3(v26) = v9;
    md::MapEngineMode::addOptionalMapDataTypes(a1, &v26, 2);
  }

  LOWORD(v26) = 10284;
  BYTE2(v26) = 18;
  md::MapEngineMode::addOptionalRenderLayers(a1, &v26, 3);
  v10 = *(a1 + 648) == 0;
  LOWORD(v26) = 11;
  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 7;
  }

  WORD1(v26) = v11;
  WORD2(v26) = 12;
  WORD3(v26) = v11;
  WORD4(v26) = 71;
  WORD5(v26) = v11;
  WORD6(v26) = 72;
  HIWORD(v26) = v11;
  md::MapEngineMode::addAllowedMapDataTypes(a1, &v26, 4);
  if (*(a1 + 648) == 1)
  {
    LODWORD(v26) = 327761;
    md::MapEngineMode::addAllowedMapDataTypes(a1, &v26, 1);
  }

  LOWORD(v26) = 40;
  WORD1(v26) = a3;
  md::MapEngineMode::addAllowedMapDataTypes(a1, &v26, 1);
  LOWORD(v26) = 10793;
  md::MapEngineMode::addAllowedRenderLayers(a1, &v26, 2);
  return a1;
}

uint64_t md::S2TileFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a3 + 8);
  gdc::ResourceKey::getInt32(v5, 3u);
  gdc::ResourceKey::getInt32(v5, 0);
  gdc::ResourceKey::getInt32(v5, 1u);
  gdc::ResourceKey::getInt32(v5, 2u);
  [v4 size];
  [v4 scale];
  objc_msgSend_style(v4);
  v6 = GEOS2TileKeyMake();

  return v6;
}

void md::S2TileFetcher::~S2TileFetcher(md::S2TileFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::default_delete<md::LabelMetrics>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void sub_1B2D7EC48(_Unwind_Exception *a1)
{
  STACK[0x688] = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x688]);
  STACK[0x688] = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x688]);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_1B2D7EE04()
{
  if (SLOBYTE(STACK[0x5AF]) < 0)
  {
    operator delete(STACK[0x598]);
  }

  JUMPOUT(0x1B2D7EE20);
}

void sub_1B2D7FC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(&a11);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (!*a2 || (v5 = *v4, LODWORD(v4) = *v4 == 1.0, *(a2 + 10) != 1) || (v5 != 0.0 ? (v6 = v5 == 1.0) : (v6 = 1), v6))
  {
    v7 = *(a2 + v4 + 11);
    if (v7 != 2)
    {
      return gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<float>(a2, a1, v7, 0);
    }
  }

  v10 = 1;
  gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<float>(a2, a1, 0, &v10);
  return gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<float>(a2, a1, 1u, &v9);
}

uint64_t gss::RenderStyleHelper<gss::ScenePropertyID,unsigned char>::valueForKey(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2;
  if (*a2 && (v5 = *v4, LODWORD(v4) = *v4 == 1.0, *(a2 + 10) == 1) && (v5 != 0.0 ? (v6 = v5 == 1.0) : (v6 = 1), !v6))
  {
    v13 = v5 < 1.0;
  }

  else
  {
    v7 = *(a2 + v4 + 11);
    if (v7 != 2)
    {
      return *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned char>(a2, a1, v7, 0);
    }

    v13 = 1;
  }

  v15 = 1;
  v14 = 1;
  v8 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned char>(a2, a1, 0, &v15);
  v9 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned char>(a2, v3, 1u, &v14);
  if (v13)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return *v10;
}

float32x2_t gss::RenderStyleHelper<gss::ScenePropertyID,gm::Matrix<float,2,1>>::valueForKey(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2;
  if (*a2)
  {
    v5 = *v4;
    v6 = *v4;
    LODWORD(v4) = *v4 == 1.0;
    if (*(a2 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
    {
      goto LABEL_10;
    }
  }

  v8 = *(a2 + v4 + 11);
  if (v8 == 2)
  {
    v5 = 0.0;
LABEL_10:
    v12 = 1;
    v9 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(a2, a1, 0, &v12);
    return vmla_f32(*v9, vdup_n_s32(LODWORD(v5)), vsub_f32(*gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(a2, v3, 1u, &v11), *v9));
  }

  return *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(a2, a1, v8, 0);
}

uint64_t gss::RenderStyleHelper<gss::ScenePropertyID,int>::valueForKey(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 && (v5 = *v4, LODWORD(v4) = *v4 == 1.0, *(a2 + 10) == 1) && (v5 != 0.0 ? (v6 = v5 == 1.0) : (v6 = 1), !v6))
  {
    v12 = v5 < 1.0;
  }

  else
  {
    v7 = *(a2 + v4 + 11);
    if (v7 != 2)
    {
      return *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<int>(a2, a1, v7, 0);
    }

    v12 = 1;
  }

  v14 = 1;
  v8 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<int>(a2, a1, 0, &v14);
  v9 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<int>(a2, a1, 1u, &v13);
  if (v12)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return *v10;
}

uint64_t gss::RenderStyleHelper<gss::ScenePropertyID,BOOL>::valueForKey(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a2;
  if (*a2 && (v5 = *v4, LODWORD(v4) = *v4 == 1.0, *(a2 + 10) == 1) && (v5 != 0.0 ? (v6 = v5 == 1.0) : (v6 = 1), !v6))
  {
    v13 = v5 < 1.0;
  }

  else
  {
    v7 = *(a2 + v4 + 11);
    if (v7 != 2)
    {
      v11 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<BOOL>(a2, a1, v7, 0);
      return v11 & 1;
    }

    v13 = 1;
  }

  v15 = 1;
  v14 = 1;
  v8 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<BOOL>(a2, a1, 0, &v15);
  v9 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<BOOL>(a2, v3, 1u, &v14);
  if (v13)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *v10;
  return v11 & 1;
}

unsigned __int8 *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<BOOL>(uint64_t a1, unsigned __int8 a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v11 + 6))
          {
            goto LABEL_14;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v5 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v11 + 6))
      {
LABEL_14:
        v14 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 3, a2);
        if (v14 == *(v11 + 18))
        {
          return &gss::PropertySetValueHelper<gss::ScenePropertyID,BOOL>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
        }

        else
        {
          return &v11[3][*(v11 + 8) + v14];
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return &gss::defaultValueForKey<gss::ScenePropertyID,BOOL>(gss::ScenePropertyID)::_defaultValue;
}

unsigned __int8 *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<int>(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v5 = a2;
  v6 = *(a1 + 16 * a3 + 16);
  if (v6)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, v5) != *(v11 + 6))
          {
            goto LABEL_16;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v6 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, v5) != *(v11 + 6))
      {
LABEL_16:
        v14 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 6, v5);
        if (v14 == *(v11 + 30))
        {
          return &gss::PropertySetValueHelper<gss::ScenePropertyID,int>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
        }

        else
        {
          return &v11[6][4 * v14 + *(v11 + 14)];
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return gss::defaultValueForKey<gss::ScenePropertyID,int>(v5);
}

unsigned __int8 *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(uint64_t a1, unsigned __int8 a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v11 + 6))
          {
            goto LABEL_14;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v5 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v11 + 6))
      {
LABEL_14:
        v14 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 9, a2);
        if (v14 == *(v11 + 42))
        {
          return &gss::PropertySetValueHelper<gss::ScenePropertyID,gm::Matrix<float,2,1>>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
        }

        else
        {
          return &v11[9][8 * v14 + *(v11 + 20)];
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return &gss::defaultValueForKey<gss::ScenePropertyID,gm::Matrix<float,2,1>>(gss::ScenePropertyID)::_defaultValue;
}

unsigned __int8 *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned char>(uint64_t a1, unsigned __int8 a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v11 + 6))
          {
            goto LABEL_14;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v5 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v11 + 6))
      {
LABEL_14:
        v14 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 3, a2);
        if (v14 == *(v11 + 18))
        {
          return &gss::PropertySetValueHelper<gss::ScenePropertyID,unsigned char>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
        }

        else
        {
          return &v11[3][*(v11 + 8) + v14];
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return &gss::defaultValueForKey<gss::ScenePropertyID,unsigned char>(gss::ScenePropertyID)::_defaultValue;
}

unsigned __int8 *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<float>(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  v5 = a2;
  v6 = *(a1 + 16 * a3 + 16);
  if (v6)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, v5) != *(v11 + 6))
          {
            goto LABEL_16;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v6 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, v5) != *(v11 + 6))
      {
LABEL_16:
        v14 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 6, v5);
        if (v14 == *(v11 + 30))
        {
          return &gss::PropertySetValueHelper<gss::ScenePropertyID,float>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
        }

        else
        {
          return &v11[6][4 * v14 + *(v11 + 14)];
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return gss::defaultValueForKey<gss::ScenePropertyID,float>(v5);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *>,gss::zone_mallocator>>::operator()[abi:nn200100](gss::zone_mallocator *result, void *a2)
{
  if (result)
  {
    v3 = a2[10];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a2 + 6));
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a2 + 2));
  }

  else if (!a2)
  {
    return;
  }

  v4 = gss::zone_mallocator::instance(result);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *>>(v4, a2);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylesheetQuery<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::ScenePropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void gss::BaseRenderStyle<gss::ScenePropertyID>::resolveConditionalStyles(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *(a1 + 16 * a3 + 16);
  if (v4)
  {
    v5 = a1 + 16 * a3;
    if (*(v4 + 64))
    {
      v7 = *(v4 + 56);
      v8 = &v7[2 * *(v4 + 64)];
      do
      {
        v9 = *v7;
        if (*(*v7 + 136))
        {
          v10 = *(v9 + 128);
          v11 = v10 + 24 * *(*v7 + 136);
          v12 = *(a2 + 12);
          v13 = *a2 + *(a2 + 8);
          while (1)
          {
            v14 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, *v10);
            if (v14 == v12)
            {
              break;
            }

            v15 = *(v10 + 16);
            if (v14 < v12)
            {
              v3 = (v13 + 2 * v14);
            }

            if (*(v10 + 16))
            {
              v16 = 4 * v15;
              v17 = *(v10 + 8);
              while (*v17 != *v3)
              {
                ++v17;
                v16 -= 4;
                if (!v16)
                {
                  goto LABEL_22;
                }
              }
            }

            else
            {
              v17 = *(v10 + 8);
            }

            if (v17 == (*(v10 + 8) + 4 * v15))
            {
              break;
            }

            v10 += 24;
            if (v10 == v11)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
LABEL_17:
          v18 = *(v5 + 56);
          if (v18 != 0xFFFF && (*(v5 + 60) & 1) == 0 && v18 >= *(v5 + 58))
          {
            geo::intern_vector<gss::ConditionalStyle<gss::PropertyID> *,unsigned short,std::allocator<gss::ConditionalStyle<gss::PropertyID> *>>::reallocate(v5 + 48, v18 + 1);
          }

          *(*(v5 + 48) + 8 * v18) = v9;
          *(v5 + 56) = v18 + 1;
        }

LABEL_22:
        v7 += 2;
      }

      while (v7 != v8);
    }

    v19 = *(v5 + 48);
    v20 = *(v5 + 56);
    v21 = (v19 + 8 * v20 - 8);
    if (*(v5 + 56))
    {
      v22 = v21 > v19;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v23 = v19 + 8;
      do
      {
        v24 = *(v23 - 8);
        *(v23 - 8) = *v21;
        *v21-- = v24;
        v25 = v23 >= v21;
        v23 += 8;
      }

      while (!v25);
    }

    if ((*(v5 + 60) & 1) == 0 && v20 != *(v5 + 58))
    {

      geo::intern_vector<gss::ConditionalStyle<gss::PropertyID> *,unsigned short,std::allocator<gss::ConditionalStyle<gss::PropertyID> *>>::reallocate(v5 + 48, v20);
    }
  }
}

void std::__function::__func<geo::intern_map_allocator<gss::ScenePropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::ScenePropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void std::__function::__func<geo::intern_map_allocator<gss::ScenePropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::ScenePropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void std::__function::__func<geo::intern_map_allocator<gss::ScenePropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::ScenePropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void geo::intern_vector<gss::StylePropertySet<gss::ScenePropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>::deallocateStorage(_BYTE *result)
{
  if ((result[12] & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      geo::intern_vector<gss::StylePropertySet<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::runDestructors(v2, &v2[120 * *(result + 4)]);
      v3 = *result;
      v5 = gss::zone_mallocator::instance(v4);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v3)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v3);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(result + 5) = 0;
  *result = 0;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30C98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void gss::Queryable<gss::ScenePropertyID>::~Queryable(uint64_t a1)
{
  gss::Queryable<gss::ScenePropertyID>::~Queryable(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *>(uint64_t a1, void *a2)
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

void gss::StylesheetQuery<gss::ScenePropertyID>::~StylesheetQuery(void *a1)
{
  *a1 = &unk_1F2A30BE8;
  v2 = a1[40];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[38];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 34));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 30));
  gss::Queryable<gss::ScenePropertyID>::~Queryable(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gss::StylesheetQuery<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::ScenePropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30BB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

BOOL md::DataOverrideManager::getColorOverrideForAttributes(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v31 = -1;
  v30 = -1;
  v29 = -1;
  v28 = -1;
  v27 = -1;
  gss::FeatureAttributeSet::getValueForAttributeKey(*a2, a2[1], 50, &v31);
  gss::FeatureAttributeSet::getValueForAttributeKey(*a2, a2[1], 49, &v30);
  gss::FeatureAttributeSet::getValueForAttributeKey(*a2, a2[1], 37, &v29);
  gss::FeatureAttributeSet::getValueForAttributeKey(*a2, a2[1], 4, &v28);
  gss::FeatureAttributeSet::getValueForAttributeKey(*a2, a2[1], 53, &v27);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1 == v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = v29;
  v10 = v31;
  v11 = v28;
  v12 = v27;
  v13 = v30;
  do
  {
    v14 = *v6;
    if (*v6 == -1 || v14 == v9)
    {
      v16 = v6[1];
      if (v16 == -1 || v16 == v13)
      {
        v18 = v6[2];
        if (v18 == -1 || v18 == v10)
        {
          v20 = v6[3];
          if (v20 == -1 || v20 == v11)
          {
            v22 = v6[4];
            if ((v22 == -1 || v22 == v12) && (v14 & v16 & v18 & v20 & v22) != 0xFFFFFFFFFFFFFFFFLL)
            {
              v23 = (16 * (v18 != -1)) | (8 * (v22 != -1)) | (4 * (v16 != -1)) | (2 * (v14 != -1));
              if (v20 != -1)
              {
                ++v23;
              }

              if (v23 > v8)
              {
                v24 = a3;
                for (i = 10; i != 14; ++i)
                {
                  *v24++ = *(v6 + i);
                }

                v8 = v23;
              }
            }
          }
        }
      }
    }

    v6 += 9;
  }

  while (v6 != v7);
  return v8 != 0;
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v26[0] = *a2;
  v26[1] = v3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:nn200100](v26) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:nn200100]("The format specifier contains malformed Unicode characters");
    goto LABEL_105;
  }

  v9 = v26[0];
  if (v26[0] >= v3)
  {
    goto LABEL_9;
  }

  v10 = *v26[0];
  switch(v10)
  {
    case '<':
      v11 = 1;
LABEL_18:
      *a1 = *a1 & 0xF8 | v11;
      v13 = v9 - v4;
      if (v9 - v4 == 1)
      {
        if (*v4 != 123)
        {
          goto LABEL_22;
        }

        std::__throw_format_error[abi:nn200100]("The fill option contains an invalid value");
      }

      if (v9 == v4)
      {
LABEL_23:
        v4 += v13;
        goto LABEL_24;
      }

LABEL_22:
      memmove((a1 + 12), v4, v13);
      goto LABEL_23;
    case '>':
      v11 = 3;
      goto LABEL_18;
    case '^':
      v11 = 2;
      goto LABEL_18;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v12 = 1;
      break;
    case '>':
      v12 = 3;
      break;
    case '^':
      v12 = 2;
      break;
    default:
      goto LABEL_25;
  }

  *a1 = *a1 & 0xF8 | v12;
LABEL_24:
  if (++v4 == v3)
  {
    return v4;
  }

LABEL_25:
  if (a3)
  {
    v14 = *v4;
    switch(v14)
    {
      case ' ':
        v15 = *a1 | 0x18;
        break;
      case '+':
        v15 = *a1 & 0xE7 | 0x10;
        break;
      case '-':
        v15 = *a1 & 0xE7 | 8;
        break;
      default:
        goto LABEL_33;
    }

    *a1 = v15;
    if (++v4 == v3)
    {
      return v4;
    }
  }

LABEL_33:
  if ((a3 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((a3 & 4) != 0)
  {
    v16 = *v4;
    if (v16 != 48)
    {
      goto LABEL_42;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    if (++v4 == v3)
    {
      return v4;
    }
  }

  v16 = *v4;
LABEL_42:
  if (v16 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(v4 + 1, v3, a2);
    *(a1 + 2) |= 0x4000u;
    goto LABEL_47;
  }

  if (v16 == 48)
  {
LABEL_105:
    std::__throw_format_error[abi:nn200100]("The width option should not have a leading zero");
LABEL_106:
    std::__throw_format_error[abi:nn200100]("The format specifier should consume the input or end with a '}'");
    goto LABEL_107;
  }

  if ((v16 - 58) < 0xFFFFFFF6)
  {
    goto LABEL_48;
  }

  v4 = std::__format::__parse_number[abi:nn200100]<char const*>(v4, v3);
LABEL_47:
  *(a1 + 4) = v17;
  if (v3 == v4)
  {
    return v4;
  }

LABEL_48:
  if ((a3 & 8) == 0 || *v4 != 46)
  {
LABEL_56:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_59;
    }

    v22 = *v4;
    if (v22 != 76)
    {
      goto LABEL_60;
    }

    *a1 |= 0x40u;
    if (++v4 != v3)
    {
LABEL_59:
      v22 = *v4;
LABEL_60:
      if (v22 > 98)
      {
        if (v22 <= 102)
        {
          if (v22 > 100)
          {
            if (v22 == 101)
            {
              v23 = 13;
            }

            else
            {
              v23 = 15;
            }
          }

          else if (v22 == 99)
          {
            v23 = 10;
          }

          else
          {
            v23 = 5;
          }

          goto LABEL_100;
        }

        if (v22 <= 111)
        {
          if (v22 == 103)
          {
            v23 = 17;
            goto LABEL_100;
          }

          if (v22 == 111)
          {
            v23 = 4;
            goto LABEL_100;
          }
        }

        else
        {
          switch(v22)
          {
            case 'p':
              v23 = 8;
              goto LABEL_100;
            case 's':
              v23 = 1;
              goto LABEL_100;
            case 'x':
              v23 = 6;
              goto LABEL_100;
          }
        }
      }

      else if (v22 <= 70)
      {
        if (v22 > 68)
        {
          if (v22 == 69)
          {
            v23 = 14;
          }

          else
          {
            v23 = 16;
          }

          goto LABEL_100;
        }

        if (v22 == 65)
        {
          v23 = 12;
          goto LABEL_100;
        }

        if (v22 == 66)
        {
          v23 = 3;
          goto LABEL_100;
        }
      }

      else if (v22 <= 87)
      {
        if (v22 == 71)
        {
          v23 = 18;
          goto LABEL_100;
        }

        if (v22 == 80)
        {
          v23 = 9;
          goto LABEL_100;
        }
      }

      else
      {
        switch(v22)
        {
          case 'X':
            v23 = 7;
            goto LABEL_100;
          case 'a':
            v23 = 11;
            goto LABEL_100;
          case 'b':
            v23 = 2;
LABEL_100:
            *(a1 + 1) = v23;
            ++v4;
            break;
        }
      }

      if (v4 == v3 || *v4 == 125)
      {
        return v4;
      }

      goto LABEL_106;
    }

    return v4;
  }

  v18 = v4 + 1;
  if (v4 + 1 == v3)
  {
LABEL_107:
    std::__throw_format_error[abi:nn200100]("End of input while parsing format specifier precision");
    goto LABEL_108;
  }

  v19 = *v18;
  if (v19 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, v3, a2);
    *(a1 + 2) |= 0x8000u;
    *(a1 + 8) = v20;
    goto LABEL_55;
  }

  if ((v19 - 58) > 0xFFFFFFF5)
  {
    v4 = std::__format::__parse_number[abi:nn200100]<char const*>(v18, v3);
    *(a1 + 8) = v21;
    *(a1 + 2) &= ~0x8000u;
LABEL_55:
    if (v3 == v4)
    {
      return v4;
    }

    goto LABEL_56;
  }

LABEL_108:
  v25 = std::__throw_format_error[abi:nn200100]("The precision option does not contain a value or an argument index");
  return std::__format_spec::__process_parsed_integer[abi:nn200100]<char>(v25);
}

unsigned __int8 *std::__format_spec::__process_parsed_integer[abi:nn200100]<char>(unsigned __int8 *result)
{
  v1 = result[1];
  if ((v1 - 2) >= 6 && v1 != 0)
  {
    if (v1 == 10)
    {
      v3 = result;
      result = std::__format_spec::__parser<char>::__validate[abi:nn200100](result, "an integer");
      if ((*v3 & 7) == 0)
      {
        *v3 |= 1u;
      }
    }

    else
    {
      v4 = std::__format_spec::__throw_invalid_type_format_error[abi:nn200100]("an integer");
      return std::__format_spec::__throw_invalid_type_format_error[abi:nn200100](v4);
    }
  }

  return result;
}

uint64_t std::__format_spec::__throw_invalid_type_format_error[abi:nn200100](const char *a1)
{
  std::string::basic_string[abi:nn200100]<0>(&v11, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v11, a1, v2);
  v4 = v3->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = *&v3->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v12, " formatting argument", 0x14uLL);
  v6 = v5->__r_.__value_.__r.__words[2];
  v13 = *&v5->__r_.__value_.__l.__data_;
  v14 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v14 >= 0)
  {
    v7 = &v13;
  }

  else
  {
    v7 = v13;
  }

  v8 = std::__throw_format_error[abi:nn200100](v7);
  return std::__formatter_string<char>::parse[abi:nn200100]<std::basic_format_parse_context<char>>(v8, v9);
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:nn200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(a1, a2, 40);
  v4 = *(a1 + 1);
  if (v4 >= 2 && v4 != 19)
  {
    v6 = std::__throw_format_error[abi:nn200100]("The type option contains an invalid value for a string formatting argument");
    return std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](v6, v7);
  }

  return result;
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](std::locale *this, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x1B8C61F50](&v6);
    v4 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v4, &v6);
    }

    else
    {
      std::locale::locale(v4, &v6);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v6);
  }

  return std::locale::locale(this, (a2 + 32));
}

void *std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(uint64_t *a1, char *__src, char *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:nn200100](a1, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = *a5 + a5[1];
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(a1, v11, &v11[v29]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, a6);
  }

  return std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v19, v15);
}

void *std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v8 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    v9 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v10 = v8 >> 1;
        v8 -= v8 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v10 = 0;
LABEL_9:
      v11 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v10, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(v11, a1, a2);
      std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v8, v9);
      return a3;
    }

    v10 = (a4 >> 32) - (a2 - a1);
    v8 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(a3, a1, a2);
  return a3;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:nn200100]<char *,char (*)(char),char>(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2;
  v6 = *(result + 32);
  if (v6)
  {
    v8 = *v6;
    v7 = v6[1];
    if (*v6 - v7 >= v5)
    {
      v9 = a3 - a2;
    }

    else
    {
      v9 = *v6 - v7;
    }

    v6[1] = v7 + v5;
    if (v8 <= v7 || v9 == 0)
    {
      return result;
    }
  }

  else
  {
    v9 = a3 - a2;
  }

  v11 = *(result + 16);
  do
  {
    v12 = *(v4 + 8) - v11;
    if (v12 < v9 + 1)
    {
      result = (*(v4 + 24))(v4, v9 + 2);
      v11 = *(v4 + 16);
      v12 = *(v4 + 8) - v11;
    }

    if (v12 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = (*v4 + v11);
      v15 = v13;
      v16 = v3;
      do
      {
        v18 = *v16++;
        v17 = v18;
        v19 = v18 - 32;
        if ((v18 - 97) < 6)
        {
          v17 = v19;
        }

        *v14++ = v17;
        --v15;
      }

      while (v15);
      v11 = *(v4 + 16);
    }

    v3 += v13;
    v11 += v13;
    *(v4 + 16) = v11;
    v20 = v9 > v12;
    v9 -= v13;
  }

  while (v20);
  return result;
}

void *std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:nn200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:nn200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = v5[1] - v10;
      if (v11 < v4 + 1)
      {
        result = (v5[3])(v5, v4 + 2);
        v10 = v5[2];
        v11 = v5[1] - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = v5[2];
      }

      v10 += v12;
      v5[2] = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

_WORD *std::__itoa::__append10[abi:nn200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  LOWORD(v2) = v2 % 0x2710;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

uint64_t std::__format_spec::__estimate_column_width[abi:nn200100]<char,char const*>(char *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (!a2)
  {
    return result;
  }

  v6 = a3;
  if (!a3)
  {
    return result;
  }

  if (*a1 < 0)
  {
    v8 = a1;
  }

  else
  {
    v7 = 0;
    v8 = &a1[a3 - 1];
    while (1)
    {
      if (a2 - 1 == v7)
      {
        return a2;
      }

      if (a3 - 1 == v7)
      {
        break;
      }

      v9 = a1[++v7];
      if (v9 < 0)
      {
        v6 = a3 - v7 + 1;
        v8 = &a1[v7 - 1];
        goto LABEL_10;
      }
    }

    if ((a1[a3] & 0x80000000) == 0)
    {
      return a3;
    }

    v6 = 1;
  }

LABEL_10:
  v10 = &a1[a2];
  v34 = v8;
  v35 = &a1[a2];
  LODWORD(v11) = std::__unicode::__code_point_view<char>::__consume[abi:nn200100](&v34) & 0x7FFFFFFF;
  v36 = v11;
  v12 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:nn200100](v11);
  v37 = v12;
  v38 = 0;
  v39 = 0;
  if (v12 == 3)
  {
    v13 = 2;
    goto LABEL_16;
  }

  if (v12 == 9)
  {
    v13 = 3;
LABEL_16:
    LODWORD(v38) = v13;
    goto LABEL_17;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:nn200100](v11))
  {
    v13 = 1;
    goto LABEL_16;
  }

LABEL_17:
  v32 = v8 - a1;
  if (v8 != v10)
  {
    v14 = 0;
    while (1)
    {
      v15 = v11;
      while (1)
      {
        v16 = v34;
        if (v34 == v35)
        {
          break;
        }

        v17 = std::__unicode::__code_point_view<char>::__consume[abi:nn200100](&v34);
        v11 = v17 & 0x7FFFFFFF;
        v18 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:nn200100](v17 & 0x7FFFFFFF);
        v19 = v18;
        if (v38 > 1)
        {
          if (v38 == 2)
          {
            if (HIDWORD(v38) == 2)
            {
              if (v18 == 3)
              {
                HIDWORD(v38) = 0;
                goto LABEL_44;
              }
            }

            else if (HIDWORD(v38) == 1)
            {
              if (v18 == 2)
              {
                goto LABEL_44;
              }

              if (v18 == 13)
              {
LABEL_40:
                HIDWORD(v38) = 2;
                goto LABEL_44;
              }
            }

            else
            {
              if (v18 == 13)
              {
                goto LABEL_40;
              }

              if (v18 == 2)
              {
                HIDWORD(v38) = 1;
                goto LABEL_44;
              }
            }

LABEL_45:
            LODWORD(v38) = 0;
            goto LABEL_46;
          }

          LODWORD(v38) = 0;
          if (v18 == 9)
          {
            goto LABEL_44;
          }

LABEL_46:
          v21 = std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:nn200100](&v36, v11, v19);
          v36 = v11;
          v37 = v19;
          if (v21)
          {
            break;
          }
        }

        else
        {
          if (!v38)
          {
            goto LABEL_46;
          }

          v20 = std::__indic_conjunct_break::__get_property[abi:nn200100](v11);
          if (v20 == 3)
          {
            goto LABEL_45;
          }

          if (!v39)
          {
            if (v20 == 1)
            {
              goto LABEL_44;
            }

            if (v20 == 2)
            {
              v39 = 1;
              goto LABEL_44;
            }

            goto LABEL_45;
          }

          if ((v20 - 1) >= 2)
          {
            v39 = 0;
          }

LABEL_44:
          v36 = v11;
          v37 = v19;
        }
      }

      if (v15 - 262142 < 0xFFFC1102)
      {
        goto LABEL_57;
      }

      v22 = &std::__width_estimation_table::__entries[abi:nn200100];
      v23 = 107;
      do
      {
        v24 = v23 >> 1;
        v25 = &v22[v23 >> 1];
        v27 = *v25;
        v26 = v25 + 1;
        v23 += ~(v23 >> 1);
        if (((v15 << 14) | 0x3FFF) >= v27)
        {
          v22 = v26;
        }

        else
        {
          v23 = v24;
        }
      }

      while (v23);
      if (v22 == &std::__width_estimation_table::__entries[abi:nn200100])
      {
LABEL_57:
        v29 = 1;
      }

      else
      {
        v28 = (*(v22 - 1) & 0x3FFF) + (*(v22 - 1) >> 14) >= v15;
        v29 = 1;
        if (v28)
        {
          v29 = 2;
        }
      }

      v30 = v14 + v29;
      if (a4 || v30 <= v6)
      {
        v31 = v16 == v10 || v30 > v6;
        v14 = v30;
        if (!v31)
        {
          continue;
        }
      }

      return v32 + v14;
    }
  }

  v14 = 0;
  return v32 + v14;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:nn200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

LABEL_35:
    v5 = 2147549181;
    *a1 = v1 + 1;
    return v5;
  }

  if (v2 == 3)
  {
    if (a1[1] - v1 < 3)
    {
      goto LABEL_35;
    }

    v13 = 1;
    do
    {
      v14 = v1[v13] & 0xC0;
    }

    while (v14 == 128 && v13++ != 2);
    if (v14 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v16 = *v1 & 0xF;
    *a1 = v1 + 2;
    v17 = (v16 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    if (v17 >= 0x800)
    {
      v18 = v17 | v1[2] & 0x3F;
      if ((v17 & 0xF800) == 0xD800)
      {
        return 2147549181;
      }

      else
      {
        return v18;
      }
    }
  }

  else
  {
    if (v2 != 4 || a1[1] - v1 < 4)
    {
      goto LABEL_35;
    }

    v6 = 1;
    do
    {
      v7 = v1[v6] & 0xC0;
    }

    while (v7 == 128 && v6++ != 3);
    if (v7 != 128)
    {
      goto LABEL_35;
    }

    v5 = 2147549181;
    *a1 = v1 + 1;
    v9 = *v1 & 7;
    *a1 = v1 + 2;
    v10 = (v9 << 12) | ((v1[1] & 0x3F) << 6);
    *a1 = v1 + 3;
    v11 = v1[2];
    *a1 = v1 + 4;
    if (v10 >= 0x400)
    {
      v12 = v1[3] & 0x3F | ((v10 | v11 & 0x3F) << 6);
      if (v10 >> 10 >= 0x11)
      {
        return 2147549181;
      }

      else
      {
        return v12;
      }
    }
  }

  return v5;
}

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:nn200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:nn200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:nn200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:nn200100](uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (std::__indic_conjunct_break::__get_property[abi:nn200100](a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:nn200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:nn200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:nn200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t *std::__formatter::__format_locale_specific_form[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(uint64_t *a1, uint64_t a2, char **a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  v11 = std::locale::use_facet(this, MEMORY[0x1E69E5368]);
  (v11->__vftable[1].__on_zero_shared)(&__p);
  v12 = a3[2];
  v13 = *a3;
  if (v12 >= a3[1])
  {
    v12 = a3[1];
  }

  v49 = v12 - v13;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_30;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    v16 = *__p.__r_.__value_.__l.__data_;
    if (v49 <= v16)
    {
      *__p.__r_.__value_.__l.__data_ = 0;
      __p.__r_.__value_.__l.__size_ = 0;
      goto LABEL_30;
    }

    v18 = *__p.__r_.__value_.__l.__data_;
    v15 = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_30;
    }

    if (v49 <= __p.__r_.__value_.__s.__data_[0])
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_30;
    }

    size = __p.__r_.__value_.__l.__size_;
    v15 = __p.__r_.__value_.__r.__words[0];
    v16 = __p.__r_.__value_.__s.__data_[0];
    p_p = &__p;
    v18 = __p.__r_.__value_.__s.__data_[0];
  }

  memset(&v50, 0, sizeof(v50));
  v19 = (v15 + size);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v20 = v19;
  }

  v21 = v49 - v16;
  if (v49 - v16 >= 1)
  {
    v22 = (v20 - 1);
    do
    {
      std::string::push_back(&v50, v18);
      if (p_p == v22)
      {
        v18 = p_p->__r_.__value_.__s.__data_[0];
      }

      else
      {
        v23 = (&p_p->__r_.__value_.__l.__data_ + 1);
        v24 = &p_p->__r_.__value_.__s.__data_[1];
        do
        {
          v25 = *v24++;
          v18 = v25;
          if (v25)
          {
            v26 = 1;
          }

          else
          {
            v26 = v23 == v22;
          }

          v23 = v24;
        }

        while (!v26);
        p_p = (v24 - 1);
      }

      v21 -= v18;
    }

    while (v21 > 0);
  }

  std::string::push_back(&v50, v18 + v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v50;
LABEL_30:
  v27 = HIDWORD(a6);
  v28 = *(a2 + 16);
  v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = __p.__r_.__value_.__l.__size_;
  }

  v30 = a3[3] - v28 + *(a2 + 4) + v29 - (v29 != 0);
  v31 = a5 & 7;
  v32 = (a5 >> 32) - v30;
  if (a5 >> 32 <= v30)
  {
    *v48 = 0;
    v32 = 0;
    v33 = v27;
    goto LABEL_46;
  }

  if (v31 == 4)
  {
    v33 = 48;
  }

  else
  {
    v33 = v27;
  }

  if (v31 == 4)
  {
    v34 = 3;
  }

  else
  {
    v34 = a5 & 7;
  }

  if (v34 > 1)
  {
    if (v34 != 3)
    {
      *v48 = v32 - (v32 >> 1);
      v32 >>= 1;
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (!v34)
  {
LABEL_44:
    *v48 = 0;
    goto LABEL_46;
  }

  *v48 = (a5 >> 32) - v30;
  v32 = 0;
LABEL_46:
  if (v31 == 4 && v13 != v28)
  {
    std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, *v28);
  }

  v35 = v27 & 0xFFFFFF00 | v33;
  std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v32, v35);
  if (v31 != 4)
  {
    v36 = *(a2 + 16);
    if (v13 != v36)
    {
      std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, *v36);
    }
  }

  v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      v38 = &__p;
      goto LABEL_57;
    }

LABEL_60:
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, v13, v49);
    goto LABEL_61;
  }

  v37 = __p.__r_.__value_.__l.__size_;
  if (!__p.__r_.__value_.__l.__size_)
  {
    goto LABEL_60;
  }

  v38 = __p.__r_.__value_.__r.__words[0];
LABEL_57:
  v39 = v38 + v37;
  v40 = (v11->__vftable[1].~facet_0)(v11);
  v41 = &v38->__r_.__value_.__s.__data_[1];
  for (i = v39; ; v39 = i)
  {
    v43 = *--i;
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, v13, v43);
    if (v39 == v41)
    {
      break;
    }

    v13 += *i;
    std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, v40);
  }

LABEL_61:
  v44 = a3[1];
  if (v44 != a3[3])
  {
    v45 = (v11->__vftable[1].~facet)(v11);
    std::__format::__output_buffer<char>::push_back[abi:nn200100](a1, v45);
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, a3[1] + 1, a3[2] - (a3[1] + 1));
    std::__format::__output_buffer<char>::__fill[abi:nn200100](a1, *(a2 + 4), 48);
    v44 = a3[3];
  }

  v46 = a3[2];
  if (v46 != v44)
  {
    std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a1, v46, v44 - v46);
  }

  std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, *v48, v35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1B2D82A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_trailing_zeros[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7, size_t a8)
{
  v13 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v14 = (a4 >> 32) - (a6 + a8);
    v13 = 0;
    goto LABEL_7;
  }

  v14 = v13 >> 1;
  v13 -= v13 >> 1;
LABEL_7:
  v15 = HIDWORD(a5);
  v16 = std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(v16, a1, a7 - a1);
  std::__format::__output_buffer<char>::__fill[abi:nn200100](a3, a8, 48);
  std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(a3, a7, a2 - a7);

  return std::__formatter::__fill[abi:nn200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v13, v15);
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1B8C62080](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if ((a4 + 1) == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (v6[v10] != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = &v6[v10];
      if (*result == 46)
      {
        v6 = (a4 + 1);
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1B8C62080](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<double,long double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1B8C62080](a5, a3 + a2, 1, a4);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1B8C62050](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if ((a4 + 1) == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (v6[v10] != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = &v6[v10];
      if (*result == 46)
      {
        v6 = (a4 + 1);
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1B8C62050](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 6), 112, 4uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<double,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1B8C62050](a5, a3 + a2, 1, a4);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

_BYTE *std::__formatter::__format_buffer_general_lower_case[abi:nn200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 4) = 0;
  *a1 = a4;
  v6 = MEMORY[0x1B8C620B0](a4, *(a2 + 16) + *(a2 + 8), 3, a3);
  a1[3] = v6;
  result = (a4 + 1);
  if ((a4 + 1) == v6)
  {
    a1[1] = v6;
    v11 = 2;
  }

  else
  {
    v8 = v6 - result;
    if (v6 - result < 4)
    {
LABEL_8:
      a1[2] = v6;
      result = memchr(result, 46, v8);
      if (result)
      {
        v6 = result;
      }
    }

    else
    {
      v9 = 6;
      if (v8 < 6)
      {
        v9 = v6 - result;
      }

      v10 = -v9;
      while (v6[v10] != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      a1[2] = &v6[v10];
      if (*result == 46)
      {
        v6 = (a4 + 1);
      }
    }

    v11 = 1;
  }

  a1[v11] = v6;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_lower_case[abi:nn200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = a5;
  v7 = a3 + a2;
  if (a4 == -1)
  {
    result = std::to_chars();
  }

  else
  {
    result = MEMORY[0x1B8C620B0](a5, v7, 4);
  }

  a1[3] = result;
  v10 = *(a5 + 1);
  v9 = a5 + 1;
  if (v10 == 46)
  {
    v11 = result - 2;
    v12 = memchr((result - 5), 112, 3uLL);
    result = v9;
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11;
    }
  }

  a1[1] = result;
  a1[2] = v9;
  return result;
}

uint64_t std::__formatter::__format_buffer_scientific_lower_case[abi:nn200100]<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a5;
  result = MEMORY[0x1B8C620B0](a5, a3 + a2, 1, a4);
  a1[3] = result;
  v8 = a5 + 1;
  if (*(a5 + 1) == 46)
  {
    a1[1] = v8;
    v9 = result - a5 - 2;
    if (v9 < 4)
    {
LABEL_8:
      v8 = result;
    }

    else
    {
      if (v9 >= 6)
      {
        v9 = 6;
      }

      v10 = -v9;
      while (*(result + v10) != 101)
      {
        if (++v10 == -3)
        {
          goto LABEL_8;
        }
      }

      v8 = result + v10;
    }
  }

  else
  {
    a1[1] = result;
  }

  a1[2] = v8;
  return result;
}

unint64_t std::__visit_format_arg[abi:nn200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:nn200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int *a1)
{
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      goto LABEL_11;
    case 3:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_12;
      }

      return result;
    case 4:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_12;
      }

      if (result >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:nn200100]("The value of the argument index exceeds its maximum value");
LABEL_11:
        std::__throw_format_error[abi:nn200100]("Replacement argument isn't a standard signed or unsigned integer type");
LABEL_12:
        std::__throw_format_error[abi:nn200100]("An argument index may not have a negative value");
LABEL_13:
        v2 = std::__throw_format_error[abi:nn200100]("The argument index value is too large for the number of arguments supplied");
        return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v2, v3, v4, v5, v6, v7);
      }

      return result;
    case 6:
      result = *a1;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_10;
    case 7:
      result = *a1;
      if (!(result >> 31))
      {
        return result;
      }

      goto LABEL_10;
    default:
      goto LABEL_13;
  }
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, unint64_t a5, char a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, __src, &v13 + 5, 0, 10);
    }

    v11 = 2;
    if (BYTE1(a4) == 2)
    {
      v10 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v10 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
    return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, __src, v9, v10, v11);
  }

  if (BYTE1(a4) > 5u)
  {
    v11 = 16;
    if (BYTE1(a4) == 6)
    {
      v10 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v10 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, __src, v9, v10, v11);
  }

  if (BYTE1(a4) != 4)
  {
    return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, __src, &v13 + 5, 0, 10);
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  return std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, __src, v14, v6, 8);
}

void *std::__formatter::__format_integer[abi:nn200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4, unint64_t a5, char a6, char *__src, char *a8, char *a9, int a10)
{
  v10 = a8;
  v11 = __src;
  v12 = a5;
  v14 = a3;
  v15 = a2;
  v16 = a1;
  v17 = a4;
  if (a6)
  {
    v18 = 45;
LABEL_7:
    *__src = v18;
    v20 = __src + 1;
    goto LABEL_8;
  }

  v19 = (a4 >> 3) & 3;
  if (v19 == 2)
  {
    v18 = 43;
    goto LABEL_7;
  }

  v20 = __src;
  if (v19 == 3)
  {
    v18 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v21 = *a9;
      if (*a9)
      {
        v22 = a9 + 1;
        do
        {
          *v20++ = v21;
          v23 = *v22++;
          v21 = v23;
        }

        while (v23);
      }
    }
  }

  HIDWORD(v25) = a10 - 2;
  LODWORD(v25) = a10 - 2;
  v24 = v25 >> 1;
  if (v24 == 4)
  {
    v26 = a8 - v20;
    if (a2)
    {
      if (v26 > 38 || (v27 = (1233 * (128 - __clz(a2))) >> 12, v26 >= v27 - (__PAIR128__(a2, a1) < std::__itoa::__pow10_128[v27]) + 1))
      {
        v97 = a5;
        v98 = a3;
        if (__PAIR128__(a2, a1) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
        {
          *v20 = __udivti3() | 0x30;
          v32 = __udivti3();
          v20[1] = ((1441151881 * v32) >> 57) + 48;
          *(v20 + 1) = std::__itoa::__digits_base_10[v32 % 0x5F5E100 / 0xF4240uLL];
          v33 = v32 % 0x5F5E100 % 0xF4240;
          *(v20 + 2) = std::__itoa::__digits_base_10[v33 / 0x2710uLL];
          LOWORD(v33) = v33 % 0x2710;
          *(v20 + 3) = std::__itoa::__digits_base_10[v33 / 0x64u];
          *(v20 + 4) = std::__itoa::__digits_base_10[v33 % 0x64u];
          v34 = __udivti3();
          v29 = std::__itoa::__append10[abi:nn200100]<unsigned long long>(v20 + 5, v34);
        }

        else
        {
          v28 = __udivti3();
          if (HIDWORD(v28))
          {
            v37 = v20;
            if (v28 > 0x2540BE3FFLL)
            {
              v37 = std::__itoa::__base_10_u32[abi:nn200100](v20, v28 / 0x2540BE400);
              v28 %= 0x2540BE400uLL;
            }

            v35 = std::__itoa::__append10[abi:nn200100]<unsigned long long>(v37, v28);
            goto LABEL_33;
          }

          v29 = std::__itoa::__base_10_u32[abi:nn200100](v20, v28);
        }

        v35 = v29;
LABEL_33:
        v38 = __umodti3();
        *v35 = v38 / 0x2540BE400 / 0x5F5E100 + 48;
        v39 = v38 / 0x2540BE400 % 0x5F5E100;
        *(v35 + 1) = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
        v39 %= 0xF4240u;
        *(v35 + 3) = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
        LOWORD(v39) = v39 % 0x2710;
        *(v35 + 5) = std::__itoa::__digits_base_10[v39 / 0x64u];
        *(v35 + 7) = std::__itoa::__digits_base_10[v39 % 0x64u];
        v10 = std::__itoa::__append10[abi:nn200100]<unsigned long long>((v35 + 9), v38 % 0x2540BE400);
LABEL_34:
        v12 = v97;
        v14 = v98;
      }
    }

    else if (v26 > 19 || (v30 = (1233 * (64 - __clz(a1 | 1))) >> 12, v26 >= v30 - (std::__itoa::__pow10_64[v30] > a1) + 1))
    {
      if (HIDWORD(a1))
      {
        v36 = v20;
        if (v16 > 0x2540BE3FFLL)
        {
          v36 = std::__itoa::__base_10_u32[abi:nn200100](v20, v16 / 0x2540BE400);
          v16 %= 0x2540BE400uLL;
        }

        v31 = std::__itoa::__append10[abi:nn200100]<unsigned long long>(v36, v16);
      }

      else
      {
        v31 = std::__itoa::__base_10_u32[abi:nn200100](v20, a1);
      }

      v10 = v31;
    }
  }

  else if (v24)
  {
    if (v24 == 3)
    {
      v67 = __clz(a2);
      v68 = __clz(a1 | 1) | 0x40;
      if (a2)
      {
        v68 = v67;
      }

      v69 = (-126 - v68) / 3u;
      if (a8 - v20 >= v69)
      {
        v10 = &v20[v69];
        if (__PAIR128__(a2, a1) < 0x41)
        {
          v71 = a1;
          v70 = v10;
        }

        else
        {
          v70 = &v20[v69];
          do
          {
            *(&v72 + 1) = v15;
            *&v72 = v16;
            v71 = v72 >> 6;
            v15 >>= 6;
            *(v70 - 1) = std::__itoa::__base_8_lut[v16 & 0x3F];
            v70 -= 2;
            v16 = v71;
          }

          while (v71 > 0x40);
        }

        v84 = v70 - 1;
        do
        {
          v85 = v71 & 7;
          v80 = v71 <= 7;
          *(&v86 + 1) = v15;
          *&v86 = v71;
          v71 = v86 >> 3;
          v15 >>= 3;
          *v84-- = a01234567[v85];
        }

        while (!v80);
      }
    }

    else
    {
      if (v24 != 7)
      {
        v97 = a5;
        v98 = a3;
        v81 = (a8 - v20);
        if (__PAIR128__(a2, a1) >= a10)
        {
          v96 = (a8 - v20);
          v83 = 0;
          while (1)
          {
            if (__PAIR128__(a2, a1) < (a10 * a10))
            {
              v82 = v83 | 2;
              goto LABEL_123;
            }

            if (__PAIR128__(a2, a1) < (a10 * a10 * a10))
            {
              v82 = v83 | 3;
              goto LABEL_123;
            }

            if (__PAIR128__(a2, a1) < (a10 * a10 * a10 * a10))
            {
              break;
            }

            a1 = __udivti3();
            v83 += 4;
            if (__PAIR128__(a2, a1) < a10)
            {
              v82 = v83 | 1;
              goto LABEL_123;
            }
          }

          v82 = v83 + 4;
LABEL_123:
          v81 = v96;
        }

        else
        {
          v82 = 1;
        }

        if (v81 >= v82)
        {
          v10 = &v20[v82];
          v93 = v10 - 1;
          do
          {
            v94 = __udivti3();
            v80 = __PAIR128__(v15, v16) >= a10;
            *v93-- = a0123456789abcd[(v16 - v94 * a10)];
            v16 = v94;
            v15 = v95;
          }

          while (v80);
        }

        goto LABEL_34;
      }

      v61 = __clz(a2);
      v62 = __clz(a1 | 1) | 0x40;
      if (a2)
      {
        v62 = v61;
      }

      v63 = 131 - v62;
      if (a8 - v20 >= (v63 >> 2))
      {
        v10 = &v20[v63 >> 2];
        if (__PAIR128__(a2, a1) < 0x101)
        {
          v65 = a1;
          v64 = v10;
        }

        else
        {
          v64 = &v20[v63 >> 2];
          do
          {
            *(&v66 + 1) = v15;
            *&v66 = v16;
            v65 = v66 >> 8;
            v15 >>= 8;
            *(v64 - 1) = std::__itoa::__base_16_lut[v16];
            v64 -= 2;
            v16 = v65;
          }

          while (v65 > 0x100);
        }

        v90 = v64 - 1;
        do
        {
          v91 = v65 & 0xF;
          v80 = v65 <= 0xF;
          *(&v92 + 1) = v15;
          *&v92 = v65;
          v65 = v92 >> 4;
          v15 >>= 4;
          *v90-- = a0123456789abcd_0[v91];
        }

        while (!v80);
      }
    }
  }

  else
  {
    v73 = __clz(a2);
    v74 = __clz(a1 | 1) | 0x40;
    if (a2)
    {
      v74 = v73;
    }

    v75 = 128 - v74;
    if (a8 - v20 >= v75)
    {
      v10 = &v20[v75];
      if (__PAIR128__(a2, a1) < 0x11)
      {
        v77 = a1;
        v79 = a2;
        v76 = v10;
      }

      else
      {
        v76 = &v20[v75];
        do
        {
          *(&v78 + 1) = v15;
          *&v78 = v16;
          v77 = v78 >> 4;
          v79 = v15 >> 4;
          *(v76 - 1) = std::__itoa::__base_2_lut[v16 & 0xF];
          v76 -= 4;
          v80 = v16 <= 0x10F;
          v16 = v77;
          v15 >>= 4;
        }

        while (!v80);
      }

      v87 = v76 - 1;
      do
      {
        v88 = v77 & 1;
        v80 = v77 <= 1;
        *(&v89 + 1) = v79;
        *&v89 = v77;
        v77 = v89 >> 1;
        v79 >>= 1;
        *v87-- = a01[v88];
      }

      while (!v80);
    }
  }

  v40 = v10 - v20;
  if ((v17 & 0x40) == 0)
  {
    goto LABEL_62;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](&v100, v14);
  v41 = std::locale::use_facet(&v100, MEMORY[0x1E69E5368]);
  std::locale::~locale(&v100);
  (v41->__vftable[1].__on_zero_shared)(&v100, v41);
  if ((v102 & 0x8000000000000000) != 0)
  {
    locale = v100.__locale_;
    v43 = v101;
    if (v101 && v40 > *v100.__locale_)
    {
      v44 = v100.__locale_;
      goto LABEL_43;
    }

    operator delete(v100.__locale_);
LABEL_62:
    v56 = HIDWORD(a4);
    if ((v17 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*v14, v11, v20 - v11);
      v57 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v20 - v11)
      {
        LODWORD(v58) = v20 - v11;
      }

      else
      {
        LODWORD(v58) = HIDWORD(a4);
      }

      v56 = (HIDWORD(a4) - v58);
      LOBYTE(v58) = 48;
      v11 = v20;
    }

    else
    {
      v58 = HIDWORD(v12);
      v57 = a4;
    }

    v55 = *v14;
    v59 = v56 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10, v55, v59 | a4 & 0xFFFF0000 | v57 | 0x700, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32));
    }

    else
    {
      std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10 - v11, v55, v59 | a4 & 0xFFFFFF00 | v57, v12 & 0xFFFFFF00FFFFFFFFLL | (v58 << 32), v10 - v11);
    }

    return v55;
  }

  if (!v102 || v40 <= SLOBYTE(v100.__locale_))
  {
    goto LABEL_62;
  }

  locale = &v100;
  v44 = v100.__locale_;
  v43 = v101;
LABEL_43:
  v45 = *v14;
  memset(&v99, 0, sizeof(v99));
  v46 = v44 + v43;
  if (v102 >= 0)
  {
    v46 = &v100 + v102;
  }

  v47 = *locale;
  v48 = v40 - *locale;
  if (v48 >= 1)
  {
    v49 = v46 - 1;
    do
    {
      std::string::push_back(&v99, v47);
      if (locale == v49)
      {
        v47 = *locale;
      }

      else
      {
        v50 = locale + 1;
        v51 = locale + 1;
        do
        {
          v52 = *v51++;
          v47 = v52;
          if (v52)
          {
            v53 = 1;
          }

          else
          {
            v53 = v50 == v49;
          }

          v50 = v51;
        }

        while (!v53);
        locale = v51 - 1;
      }

      v48 -= v47;
    }

    while (v48 > 0);
  }

  std::string::push_back(&v99, v47 + v48);
  v54 = (v41->__vftable[1].~facet_0)(v41);
  v55 = std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v45, v11, v20, v20 + v40, &v99, v54, a4, v12);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (v102 < 0)
  {
    operator delete(v100.__locale_);
  }

  return v55;
}

void sub_1B2D83DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::locale a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21.__locale_);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8u);
}

uint64_t *std::__formatter::__format_integer[abi:nn200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char a5, char *a6, char *a7, char *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:nn200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_40;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:nn200100](&v43, a2);
  v21 = std::locale::use_facet(&v43, MEMORY[0x1E69E5368]);
  v22 = v20 - v16;
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    v24 = v44;
    if (v44 && v22 > *v43.__locale_)
    {
      v25 = v43.__locale_;
      goto LABEL_21;
    }

    operator delete(v43.__locale_);
LABEL_40:
    v37 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:nn200100]<char>(*a2, v9, v16 - v9);
      v38 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v39) = v16 - v9;
      }

      else
      {
        LODWORD(v39) = HIDWORD(a3);
      }

      v37 = (HIDWORD(a3) - v39);
      LOBYTE(v39) = 48;
      v9 = v16;
    }

    else
    {
      v39 = HIDWORD(a4);
      v38 = a3;
    }

    v36 = *a2;
    v40 = v37 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:nn200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, *a2, v40 | a3 & 0xFFFF0000 | v38 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32));
    }

    else
    {
      std::__formatter::__write[abi:nn200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, *a2, v40 | a3 & 0xFFFFFF00 | v38, a4 & 0xFFFFFF00FFFFFFFFLL | (v39 << 32), v20 - v9);
    }

    return v36;
  }

  if (!v45 || v22 <= SLOBYTE(v43.__locale_))
  {
    goto LABEL_40;
  }

  locale = &v43;
  v25 = v43.__locale_;
  v24 = v44;
LABEL_21:
  v26 = *a2;
  memset(&__p, 0, sizeof(__p));
  v27 = v25 + v24;
  if (v45 >= 0)
  {
    v27 = &v43 + v45;
  }

  v28 = *locale;
  v29 = v22 - *locale;
  if (v29 >= 1)
  {
    v30 = v27 - 1;
    do
    {
      std::string::push_back(&__p, v28);
      if (locale == v30)
      {
        v28 = *locale;
      }

      else
      {
        v31 = locale + 1;
        v32 = locale + 1;
        do
        {
          v33 = *v32++;
          v28 = v33;
          if (v33)
          {
            v34 = 1;
          }

          else
          {
            v34 = v31 == v30;
          }

          v31 = v32;
        }

        while (!v34);
        locale = v32 - 1;
      }

      v29 -= v28;
    }

    while (v29 > 0);
  }

  std::string::push_back(&__p, v28 + v29);
  v35 = (v21->__vftable[1].~facet_0)(v21);
  v36 = std::__formatter::__write_using_decimal_separators[abi:nn200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v26, v9, v16, v20, &__p, v35, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v36;
}