void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TilePrepassConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53810;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TilePrepassConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TilePrepassConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53830;
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

void ecs2::storage<ecs2::Entity,md::ls::TilePrepassConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TilePrepassConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TilePrepassConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53810;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TilePrepassConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls35TilePrepassShadowConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassShadowConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TilePrepassShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53788;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TilePrepassShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TilePrepassShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A537A8;
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

void ecs2::storage<ecs2::Entity,md::ls::TilePrepassShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TilePrepassShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TilePrepassShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53788;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TilePrepassShadowConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28TileShadowConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileShadowConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53B78;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53B98;
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

void ecs2::storage<ecs2::Entity,md::ls::TileShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53B78;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileShadowConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20SupportsDepthPrePassEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsDepthPrePass>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsDepthPrePass>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsDepthPrePass>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsDepthPrePass>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsDepthPrePass>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsDepthPrePass,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A533F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsDepthPrePass,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A533F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23SupportsStylizedShadingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsStylizedShading>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsStylizedShading>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsStylizedShading,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FC60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsStylizedShading,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FC60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15SupportsShadowsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsShadows>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsShadows,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53B10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsShadows,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53B10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17TileUnitsPerMeterEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileUnitsPerMeter>(v3);
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

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 12 * (v14 & 0x3F);
        v19 = *v18;
        v20 = *(v18 + 8);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 12);
        *v17 = v19;
        *(v17 + 8) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileUnitsPerMeter,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40D70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileUnitsPerMeter,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileUnitsPerMeter,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A40D90;
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

void ecs2::storage<ecs2::Entity,md::ls::TileUnitsPerMeter,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileUnitsPerMeter,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileUnitsPerMeter,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40D70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileUnitsPerMeter,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AssociationTileHandle>();
    unk_1EB83CD40 = 0x24B7D588576BB14ELL;
    qword_1EB83CD48 = "md::ls::AssociationTileHandle]";
    qword_1EB83CD50 = 29;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21AssociationTileHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationTileHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationTileHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AssociationTileHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A534E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::AssociationTileHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::AssociationTileHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53500;
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

void ecs2::storage<ecs2::Entity,md::ls::AssociationTileHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::AssociationTileHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AssociationTileHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A534E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::AssociationTileHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31TileTransformConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileTransformConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileTransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53678;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileTransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileTransformConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53698;
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

void ecs2::storage<ecs2::Entity,md::ls::TileTransformConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileTransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileTransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53678;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileTransformConstantDataHandle,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileType>();
    unk_1EB83B8D0 = 0x751B872B282C3971;
    qword_1EB83B8D8 = "md::ls::TileType]";
    qword_1EB83B8E0 = 16;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls8TileTypeEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileType>(v3);
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
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileType,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41B50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TileType,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TileType,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41B70;
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

void ecs2::storage<ecs2::Entity,md::ls::TileType,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TileType,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileType,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41B50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TileType,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BaseMapTileHandle>();
    *algn_1EB83D328 = 0x695C99F828CA9E84;
    qword_1EB83D330 = "md::ls::BaseMapTileHandle]";
    qword_1EB83D338 = 25;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17BaseMapTileHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::BaseMapTileHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BaseMapTileHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53568;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    *(a1 + 272) = v2;
    operator delete(v2);
  }

  v12 = (a1 + 240);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  v3 = *(a1 + 216);
  if (v3)
  {
    *(a1 + 224) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 192);
  if (v4)
  {
    *(a1 + 200) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    *(a1 + 176) = v5;
    operator delete(v5);
  }

  v12 = (a1 + 144);
  std::vector<std::function<void ()(ecs2::Entity)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  v6 = *(a1 + 120);
  if (v6)
  {
    *(a1 + 128) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    *(a1 + 104) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
  }

  v12 = (a1 + 48);
  std::vector<std::function<void ()(ecs2::Entity)>>::__destroy_vector::operator()[abi:nn200100](&v12);
  v9 = *(a1 + 24);
  if (v9)
  {
    *(a1 + 32) = v9;
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v10;
    operator delete(v10);
  }

  return a1;
}

void *ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53588;
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

void ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53568;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)33>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2060;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)33>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2060;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13WillEnterViewEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::WillEnterView>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::WillEnterView,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A19BB8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::WillEnterView,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A19BB8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16RenderablesCountEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablesCount>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 32 * (v13 & 0x3F);
        LODWORD(v15) = *v17;
        v18 = *(v17 + 8);
        v19 = *(v17 + 24);
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        *v17 = *v16;
        *(v17 + 8) = *(v16 + 8);
        *(v17 + 24) = *(v16 + 24);
        *v16 = v15;
        *(v16 + 8) = v18;
        *(v16 + 24) = v19;
        if (v18)
        {
          *(v16 + 16) = v18;
          operator delete(v18);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablesCount>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderablesCount,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53458;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderablesCount,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderablesCount,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A53478;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 32 * (v4 & 0x3F);
      v6 = *(v5 + 8);
      if (v6)
      {
        *(v5 + 16) = v6;
        operator delete(v6);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
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

  v7 = a1[7];
  v8 = a1[8];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[10];
  if (v9)
  {
    a1[11] = v9;
    operator delete(v9);
  }

  v10 = a1[7];
  if (v10)
  {
    a1[8] = v10;
    operator delete(v10);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::RenderablesCount,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderablesCount,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderablesCount,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53458;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderablesCount,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21CheckIfReadyToProcessEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::CheckIfReadyToProcess>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CheckIfReadyToProcess>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CheckIfReadyToProcess,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A288;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::CheckIfReadyToProcess,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::CheckIfReadyToProcess,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1A2A8;
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

void ecs2::storage<ecs2::Entity,md::ls::CheckIfReadyToProcess,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::CheckIfReadyToProcess,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CheckIfReadyToProcess,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A288;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::CheckIfReadyToProcess,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeV>();
    unk_1EB83DAD0 = 0x52DA3EA752368C9DLL;
    qword_1EB83DAD8 = "md::ls::MapDataTypeV]";
    qword_1EB83DAE0 = 20;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeVEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeV>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeV>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeV,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40DF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MapDataTypeV,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MapDataTypeV,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A40E18;
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

void ecs2::storage<ecs2::Entity,md::ls::MapDataTypeV,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MapDataTypeV,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeV,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40DF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MapDataTypeV,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)33>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)33>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)33>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)33>>(void)::localId;
    *algn_1EB82D908 = 0xC06C33A2DD1B3385;
    qword_1EB82D910 = "md::ls::MapDataTypeT<md::MapDataType::DaVinciGround>]";
    qword_1EB82D918 = 52;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)33>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)33>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)33>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)33>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)33>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)33>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)33>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)33>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)33>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E4818;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)33>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E47F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)33>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E47F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RegisterHandle>();
    unk_1EB83D800 = 0x41650A8095FBA956;
    qword_1EB83D808 = "md::ls::RegisterHandle]";
    qword_1EB83D810 = 22;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14RegisterHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RegisterHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RegisterHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RegisterHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40BF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RegisterHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RegisterHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A40C18;
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

void ecs2::storage<ecs2::Entity,md::ls::RegisterHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RegisterHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RegisterHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A40BF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RegisterHandle,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F21D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F21F8;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F21D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4770;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29E4790;
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

void ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4770;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>,64ul>::~storage(a1);
}

uint64_t ecs2::BasicRegistry<void>::get_if<md::ls::AssociationTileHandle>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a2 >> 16;
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationTileHandle>(a1);
  v5 = ecs2::sparse_set<ecs2::Entity,64ul>::find(v4, v2, v3);
  if (v5 == v4[5])
  {
    return 0;
  }

  else
  {
    return *(v4[7] + ((((v5 - v4[4]) >> 2) >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((2 * (v5 - v4[4])) & 0x1F8);
  }
}

void ecs2::BasicRegistry<void>::add<md::ls::RenderItemPendingDeletion>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemPendingDeletion>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>(void)::metadata) = *(a1 + 4096);
}

void ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::erase(void *a1, void *a2)
{
  v4 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3FLL) + 8);
  v5 = v4 & 0x3F;
  v6 = a1[7];
  v7 = (v4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v8 = *(v6 + v7) + 24 * v5;
  v9 = ((a1[5] - a1[4]) >> 3) - 1;
  v10 = *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v9 & 0x3F);
  v11 = *v8;
  v12 = *(v8 + 16);
  LOWORD(v9) = *(v10 + 16);
  *v8 = *v10;
  *(v8 + 16) = v9;
  *(v10 + 16) = v12;
  *v10 = v11;
  v13 = a1[13];
  v14 = *(v13 + v7) + 56 * v5;
  v15 = ((a1[5] - a1[4]) >> 3) - 1;
  v16 = *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 56 * (v15 & 0x3F);
  v17 = *v14;
  v18 = *(v14 + 8);
  v19 = *(v14 + 24);
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v29 = v18;
  v30 = *(v14 + 32);
  v20 = *(v14 + 48);
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *v14 = *v16;
  *(v14 + 8) = *(v16 + 8);
  *(v14 + 24) = *(v16 + 24);
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v21 = *(v14 + 32);
  if (v21)
  {
    *(v14 + 40) = v21;
    operator delete(v21);
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
  }

  *(v14 + 32) = *(v16 + 32);
  *(v14 + 48) = *(v16 + 48);
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  *v16 = v17;
  v22 = *(v16 + 8);
  if (v22)
  {
    *(v16 + 16) = v22;
    operator delete(v22);
    v23 = *(v16 + 32);
    *(v16 + 8) = v29;
    *(v16 + 24) = v19;
    if (v23)
    {
      *(v16 + 40) = v23;
      operator delete(v23);
    }
  }

  else
  {
    *(v16 + 8) = v29;
    *(v16 + 24) = v19;
  }

  *(v16 + 32) = v30;
  *(v16 + 48) = v20;
  std::__destroy_at[abi:nn200100]<md::AssociationItemStorage,0>(v16);
  v24 = *a2 >> 6;
  v25 = a1[1];
  if (v24 < (a1[2] - v25) >> 3)
  {
    v26 = *(v25 + 8 * v24);
    if (v26)
    {
      v27 = *a2 & 0x3FLL;
      if (*(v26 + 16 * v27) == HIDWORD(*a2))
      {
        v28 = (a1[4] + 8 * *(v26 + 16 * v27 + 8));

        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v28);
      }
    }
  }
}

void *ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(void *result, void *a2)
{
  v2 = *(*(result[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3FLL) + 8) & 0x3FLL;
  v3 = result[7];
  v4 = (*(*(result[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3FLL) + 8) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v5 = *(v3 + v4) + 24 * v2;
  v6 = ((result[5] - result[4]) >> 3) - 1;
  v7 = *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v6 & 0x3F);
  v8 = *v5;
  v9 = *(v5 + 16);
  LOWORD(v6) = *(v7 + 16);
  *v5 = *v7;
  *(v5 + 16) = v6;
  *(v7 + 16) = v9;
  *v7 = v8;
  v10 = result[13];
  v11 = *(v10 + v4);
  v12 = ((result[5] - result[4]) >> 3) - 1;
  v13 = v12 & 0x3F;
  v14 = *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v15 = *(v11 + 8 * v2);
  *(v11 + 8 * v2) = *(v14 + 8 * v13);
  *(v14 + 8 * v13) = v15;
  v16 = *a2 >> 6;
  v17 = result[1];
  if (v16 < (result[2] - v17) >> 3)
  {
    v18 = *(v17 + 8 * v16);
    if (v18)
    {
      v19 = *a2 & 0x3FLL;
      if (*(v18 + 16 * v19) == HIDWORD(*a2))
      {
        return ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(result, (result[4] + 8 * *(v18 + 16 * v19 + 8)));
      }
    }
  }

  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingDeletion,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A4B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingDeletion,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A4B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemPendingDeletion>();
    *algn_1EB83C6D8 = 0x310D7D3EDA4A50D3;
    qword_1EB83C6E0 = "md::ls::RenderItemPendingDeletion]";
    qword_1EB83C6E8 = 33;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25RenderItemPendingDeletionEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemPendingDeletion>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderItemPendingDeletion,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A940;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderItemPendingDeletion,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A940;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(int *a1, int *a2, int *a3, _DWORD *a4, _DWORD *a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(a1, a2, a3, a4);
  v11 = *a4;
  if (*(*(*a5 + 392) + 169) > *(*(*a4 + 392) + 169))
  {
    *a4 = *a5;
    *a5 = v11;
    v12 = a4[2];
    a4[2] = a5[2];
    a5[2] = v12;
    v13 = *a3;
    if (*(*(*a4 + 392) + 169) > *(*(*a3 + 392) + 169))
    {
      *a3 = *a4;
      *a4 = v13;
      v14 = a3[2];
      a3[2] = a4[2];
      a4[2] = v14;
      v15 = *a2;
      if (*(*(*a3 + 392) + 169) > *(*(*a2 + 392) + 169))
      {
        *a2 = *a3;
        *a3 = v15;
        v16 = a2[2];
        a2[2] = a3[2];
        a3[2] = v16;
        v17 = *a1;
        if (*(*(*a2 + 392) + 169) > *(*(*a1 + 392) + 169))
        {
          *a1 = *a2;
          *a2 = v17;
          v18 = a1[2];
          a1[2] = a2[2];
          a2[2] = v18;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 3;
      do
      {
        v4 = v2;
        v5 = result[2];
        v6 = *result;
        if (*(*(v5 + 392) + 169) > *(*(*result + 392) + 169))
        {
          v7 = *(result + 6);
          v8 = v3;
          do
          {
            v9 = v8;
            *(v8 - 1) = v6;
            v10 = *(v8 - 4);
            v8 -= 2;
            *v9 = v10;
            v6 = *(v9 - 5);
          }

          while (*(*(v5 + 392) + 169) > *(*(v6 + 392) + 169));
          *(v8 - 1) = v5;
          *v8 = v7;
        }

        v2 = v4 + 2;
        v3 += 2;
        result = v4;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (result != a2)
  {
    v4 = a2;
    v5 = result;
    v6 = (a2 - result) >> 4;
    if (v6 >= 2)
    {
      v7 = (v6 - 2) >> 1;
      v8 = v7 + 1;
      v9 = (result + 16 * v7);
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v5, v6, v9);
        v9 -= 4;
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
        if (*(*(*v11 + 392) + 169) > *(*(v10 + 392) + 169))
        {
          *v11 = v10;
          *v5 = v12;
          v13 = v11[2];
          v11[2] = *(v5 + 2);
          *(v5 + 2) = v13;
          result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(v5, v6, v5);
          v10 = *v5;
        }

        v11 += 4;
      }

      while (v11 != a3);
    }

    if (v6 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *v5;
        v16 = *(v5 + 2);
        v17 = v5;
        do
        {
          v18 = &v17[16 * v14];
          v19 = v18 + 16;
          v20 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v6)
          {
            v22 = *v19;
            v14 = v20;
          }

          else
          {
            v23 = *(v18 + 4);
            v21 = v18 + 32;
            v22 = v23;
            result = *(*(*(v21 - 2) + 392) + 169);
            if (result > *(*(v23 + 392) + 169))
            {
              v19 = v21;
            }

            else
            {
              v22 = *(v21 - 2);
              v14 = v20;
            }
          }

          *v17 = v22;
          *(v17 + 2) = *(v19 + 2);
          v17 = v19;
        }

        while (v14 <= (v6 - 2) / 2);
        if (v19 == (v4 - 4))
        {
          *v19 = v15;
          *(v19 + 2) = v16;
        }

        else
        {
          *v19 = *(v4 - 2);
          *(v19 + 2) = *(v4 - 2);
          *(v4 - 2) = v15;
          *(v4 - 2) = v16;
          v24 = (v19 - v5 + 16) >> 4;
          v25 = v24 < 2;
          v26 = v24 - 2;
          if (!v25)
          {
            v27 = v26 >> 1;
            v28 = &v5[16 * v27];
            v29 = *v28;
            v30 = *v19;
            if (*(*(*v28 + 392) + 169) > *(*(*v19 + 392) + 169))
            {
              v31 = *(v19 + 2);
              do
              {
                v32 = v19;
                v19 = v28;
                *v32 = v29;
                *(v32 + 2) = *(v28 + 2);
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &v5[16 * v27];
                v29 = *v28;
              }

              while (*(*(*v28 + 392) + 169) > *(*(v30 + 392) + 169));
              *v19 = v30;
              *(v19 + 2) = v31;
            }
          }
        }

        v4 -= 4;
        v25 = v6-- <= 2;
      }

      while (!v25);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> *,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&)#1} &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*(*a1 + 392) + 169);
  if (v3 <= *(*(*(a2 - 2) + 392) + 169))
  {
    v6 = a1 + 2;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 2;
    }

    while (v3 <= *(*(*v4 + 392) + 169));
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[2];
      v4 += 2;
    }

    while (v3 <= *(*(v5 + 392) + 169));
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 2);
      a2 -= 2;
    }

    while (v3 > *(*(v7 + 392) + 169));
  }

  v8 = *(a1 + 2);
  if (v4 < a2)
  {
    v9 = *v4;
    v10 = *a2;
    do
    {
      *v4 = v10;
      *a2 = v9;
      v11 = *(v4 + 2);
      *(v4 + 2) = *(a2 + 2);
      *(a2 + 2) = v11;
      v12 = *(*(v2 + 392) + 169);
      do
      {
        v13 = v4[2];
        v4 += 2;
        v9 = v13;
      }

      while (v12 <= *(*(v13 + 392) + 169));
      do
      {
        v14 = *(a2 - 2);
        a2 -= 2;
        v10 = v14;
      }

      while (v12 > *(*(v14 + 392) + 169));
    }

    while (v4 < a2);
  }

  if (v4 - 2 != a1)
  {
    *a1 = *(v4 - 2);
    *(a1 + 2) = *(v4 - 2);
  }

  *(v4 - 2) = v2;
  *(v4 - 2) = v8;
  return v4;
}

_DWORD *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> *,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity> const&)#1} &>(_DWORD *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *(*(*a1 + 392) + 169);
  v5 = a1;
  do
  {
    v6 = v5;
    v8 = *(v5 + 2);
    v5 += 4;
    v7 = v8;
  }

  while (*(*(v8 + 392) + 169) > v4);
  if (v6 == a1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
    }

    while (*(*(v10 + 392) + 169) <= v4);
  }

  else
  {
    do
    {
      v9 = *(a2 - 2);
      a2 -= 2;
    }

    while (*(*(v9 + 392) + 169) <= v4);
  }

  if (v5 >= a2)
  {
    v12 = v5;
  }

  else
  {
    v11 = *a2;
    v12 = v5;
    v13 = a2;
    do
    {
      *v12 = v11;
      *v13 = v7;
      v14 = v12[2];
      v12[2] = *(v13 + 2);
      *(v13 + 2) = v14;
      v15 = *(*(v2 + 392) + 169);
      do
      {
        v16 = *(v12 + 2);
        v12 += 4;
        v7 = v16;
      }

      while (*(*(v16 + 392) + 169) > v15);
      do
      {
        v17 = *(v13 - 2);
        v13 -= 2;
        v11 = v17;
      }

      while (*(*(v17 + 392) + 169) <= v15);
    }

    while (v12 < v13);
  }

  if (v12 - 4 != a1)
  {
    *a1 = *(v12 - 2);
    a1[2] = *(v12 - 2);
  }

  *(v12 - 2) = v2;
  *(v12 - 2) = v3;
  return v12 - 4;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(int *a1, int *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v19 = *(a1 + 2);
      v20 = *(*(v19 + 392) + 169);
      v21 = *a1;
      v22 = *(a2 - 2);
      v23 = *(*(v22 + 392) + 169);
      if (v20 <= *(*(*a1 + 392) + 169))
      {
        if (v23 <= v20)
        {
          return 1;
        }

        *(a1 + 2) = v22;
        *(a2 - 2) = v19;
        v33 = a1 + 6;
        v32 = a1[6];
        a1[6] = *(a2 - 2);
        *(a2 - 2) = v32;
        v34 = *(a1 + 2);
        v35 = *a1;
        if (*(*(v34 + 392) + 169) <= *(*(*a1 + 392) + 169))
        {
          return 1;
        }

        *a1 = v34;
        *(a1 + 2) = v35;
        v24 = a1 + 2;
      }

      else
      {
        if (v23 <= v20)
        {
          *a1 = v19;
          *(a1 + 2) = v21;
          v24 = a1 + 6;
          v38 = a1[2];
          a1[2] = a1[6];
          a1[6] = v38;
          v39 = *(a2 - 2);
          if (*(*(v39 + 392) + 169) <= *(*(v21 + 392) + 169))
          {
            return 1;
          }

          *(a1 + 2) = v39;
        }

        else
        {
          v24 = a1 + 2;
          *a1 = v22;
        }

        *(a2 - 2) = v21;
        v33 = a2 - 2;
      }

      v40 = *v24;
      *v24 = *v33;
      *v33 = v40;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(a1, a1 + 4, a1 + 8, a1 + 12);
        v8 = *(a2 - 2);
        v9 = *(a1 + 6);
        if (*(*(v8 + 392) + 169) > *(*(v9 + 392) + 169))
        {
          *(a1 + 6) = v8;
          *(a2 - 2) = v9;
          v10 = a1[14];
          a1[14] = *(a2 - 2);
          *(a2 - 2) = v10;
          v11 = *(a1 + 6);
          v12 = *(a1 + 4);
          if (*(*(v11 + 392) + 169) > *(*(v12 + 392) + 169))
          {
            *(a1 + 4) = v11;
            *(a1 + 6) = v12;
            v13 = a1[10];
            v14 = a1[14];
            a1[10] = v14;
            a1[14] = v13;
            v15 = *(a1 + 2);
            if (*(*(v11 + 392) + 169) > *(*(v15 + 392) + 169))
            {
              *(a1 + 2) = v11;
              *(a1 + 4) = v15;
              v16 = a1[6];
              a1[6] = v14;
              a1[10] = v16;
              v17 = *a1;
              if (*(*(v11 + 392) + 169) > *(*(*a1 + 392) + 169))
              {
                *a1 = v11;
                *(a1 + 2) = v17;
                v18 = a1[2];
                a1[2] = v14;
                a1[6] = v18;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,0>(a1, a1 + 4, a1 + 8, a2 - 4);
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
    if (*(*(v5 + 392) + 169) > *(*(*a1 + 392) + 169))
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[2];
      a1[2] = *(a2 - 2);
      *(a2 - 2) = v7;
    }

    return 1;
  }

LABEL_17:
  v25 = a1 + 8;
  v26 = *(a1 + 4);
  v27 = *(a1 + 2);
  v28 = *(*(v27 + 392) + 169);
  v29 = *a1;
  v30 = *(*(v26 + 392) + 169);
  if (v28 > *(*(*a1 + 392) + 169))
  {
    if (v30 <= v28)
    {
      *a1 = v27;
      *(a1 + 2) = v29;
      v31 = a1 + 6;
      v41 = a1[2];
      a1[2] = a1[6];
      a1[6] = v41;
      if (*(*(v26 + 392) + 169) <= *(*(v29 + 392) + 169))
      {
        goto LABEL_35;
      }

      *(a1 + 2) = v26;
    }

    else
    {
      v31 = a1 + 2;
      *a1 = v26;
    }

    *(a1 + 4) = v29;
    v36 = a1 + 10;
    goto LABEL_34;
  }

  if (v30 > v28)
  {
    v36 = a1 + 6;
    v37 = a1[6];
    *(a1 + 2) = v26;
    *(a1 + 4) = v27;
    a1[6] = a1[10];
    a1[10] = v37;
    if (*(*(v26 + 392) + 169) > *(*(v29 + 392) + 169))
    {
      *a1 = v26;
      *(a1 + 2) = v29;
      v31 = a1 + 2;
LABEL_34:
      v42 = *v31;
      *v31 = *v36;
      *v36 = v42;
    }
  }

LABEL_35:
  v43 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v46 = *v43;
    v47 = *v25;
    if (*(*(*v43 + 392) + 169) > *(*(*v25 + 392) + 169))
    {
      v48 = v43[2];
      v49 = v44;
      while (1)
      {
        v50 = a1 + v49;
        *(v50 + 6) = v47;
        *(v50 + 14) = *(a1 + v49 + 40);
        if (v49 == -32)
        {
          break;
        }

        v47 = *(v50 + 2);
        v49 -= 16;
        if (*(*(v46 + 392) + 169) <= *(*(v47 + 392) + 169))
        {
          v51 = (a1 + v49 + 48);
          goto LABEL_43;
        }
      }

      v51 = a1;
LABEL_43:
      *v51 = v46;
      v51[2] = v48;
      if (++v45 == 8)
      {
        return v43 + 4 == a2;
      }
    }

    v25 = v43;
    v44 += 16;
    v43 += 4;
    if (v43 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 4)
    {
      v5 = v3 >> 3;
      v6 = (v3 >> 3) + 1;
      v7 = (result + 16 * v6);
      v8 = v5 + 2;
      if (v8 >= a2)
      {
        v12 = *v7;
      }

      else
      {
        v9 = *(*(*v7 + 392) + 169);
        v10 = *(*(v7[2] + 392) + 169);
        v11 = v9 > v10;
        if (v9 <= v10)
        {
          v12 = *v7;
        }

        else
        {
          v12 = v7[2];
        }

        if (v11)
        {
          v7 += 2;
          v6 = v8;
        }
      }

      v13 = *a3;
      if (*(*(v12 + 392) + 169) <= *(*(*a3 + 392) + 169))
      {
        v14 = a3[2];
        do
        {
          v15 = a3;
          a3 = v7;
          *v15 = v12;
          v15[2] = *(v7 + 2);
          if (v4 < v6)
          {
            break;
          }

          v16 = (2 * v6) | 1;
          v7 = (result + 16 * v16);
          v6 = 2 * v6 + 2;
          if (v6 >= a2)
          {
            v12 = *v7;
            v6 = v16;
          }

          else
          {
            v12 = *v7;
            if (*(*(*v7 + 392) + 169) <= *(*(v7[2] + 392) + 169))
            {
              v6 = v16;
            }

            else
            {
              v12 = v7[2];
              v7 += 2;
            }
          }
        }

        while (*(*(v12 + 392) + 169) <= *(*(v13 + 392) + 169));
        *a3 = v13;
        a3[2] = v14;
      }
    }
  }

  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F20C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F20E8;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F20C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33>,64ul>::~storage(a1);
}

void *md::Logic<md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)33>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)33>>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0xF20ACC1C64F7EF84 && (v5 = *(a3 + 32)) != 0)
  {
    v9[0] = md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)33>>>::resolveDependencies(*(a2 + 8));
    v9[1] = v8;
    return (*(*a1 + 160))(a1, a2, v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)33>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void *gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)33>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E4F98;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C4093837F09);
  }

  return a1;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequestReset,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A3A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequestReset,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequestReset,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1A3C0;
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

void ecs2::storage<ecs2::Entity,md::ls::RequestReset,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequestReset,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequestReset,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A3A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequestReset,64ul>::~storage(a1);
}

void md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  *a1 = &unk_1F29E41E0;
  v2 = *(a1 + 232);
  if (v2)
  {
    *(a1 + 240) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table((a1 + 168));
  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v5)
  {
    v6 = geo::Pool<md::DaVinciGroundRenderable>::~Pool(v5);
    MEMORY[0x1B8C62190](v6, 0x1020C407A7143E5);
  }

  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void md::Logic<md::CollectRenderablesLogic<(md::MapDataType)34,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)34>>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)34>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F22E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)34>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F22E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)34>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)34>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)34>>(void)::localId;
    *algn_1EB842348 = 0x864C4E05FBDAFEA0;
    qword_1EB842350 = "md::ls::MapDataTypeT<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB842358 = 57;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)34>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)34>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)34>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)34>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)34>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)34>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)34>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)34>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)34>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E49C0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)34>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E49A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)34>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E49A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2460;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2480;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2460;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)34>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2350;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)34>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)34>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2370;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)34>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)34>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)34>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2350;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)34>,64ul>::~storage(a1);
}

void *md::Logic<md::CollectRenderablesLogic<(md::MapDataType)34,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)34>>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0x521897C68EA476F3 && (v5 = *(a3 + 32)) != 0)
  {
    v9[0] = md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)34>>>::resolveDependencies(*(a2 + 8));
    v9[1] = v8;
    return (*(*a1 + 160))(a1, a2, v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)34>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void *gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)34>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E4FC0;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C4093837F09);
  }

  return a1;
}

void md::CollectRenderablesLogic<(md::MapDataType)34,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  md::CollectRenderablesLogic<(md::MapDataType)34,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectRenderablesLogic<(md::MapDataType)34,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  *a1 = &unk_1F29E4298;
  v2 = *(a1 + 232);
  if (v2)
  {
    *(a1 + 240) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table((a1 + 168));
  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v5)
  {
    v6 = geo::Pool<md::DaVinciGroundRenderable>::~Pool(v5);
    MEMORY[0x1B8C62190](v6, 0x1020C407A7143E5);
  }

  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void md::Logic<md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)54>>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)54>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2570;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)54>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2570;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)54>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)54>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)54>>(void)::localId;
    unk_1EB82B550 = 0xE1A525F398BD98B7;
    qword_1EB82B558 = "md::ls::MapDataTypeT<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82B560 = 55;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)54>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)54>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)54>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)54>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)54>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)54>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)54>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)54>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)54>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E4AE0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)54>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4AC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)54>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4AC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F26E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2708;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F26E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)54>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F25D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)54>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)54>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F25F8;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)54>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)54>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)54>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F25D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)54>,64ul>::~storage(a1);
}

void *md::Logic<md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)54>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)54>>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0xF5BDE3F396AD5C40 && (v5 = *(a3 + 32)) != 0)
  {
    v8 = *(a2 + 8);
    v9[0] = gdc::Context::get<md::GeometryContext>(v8);
    v9[1] = gdc::Context::get<md::CollectMapDataContext<(md::MapDataType)54>>(v8);
    return (*(*a1 + 160))(a1, a2, v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)54>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void *gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)54>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E4FE8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C4093837F09);
  }

  return a1;
}

void md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  *a1 = &unk_1F29E4350;
  v2 = *(a1 + 232);
  if (v2)
  {
    *(a1 + 240) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table((a1 + 168));
  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v5)
  {
    v6 = geo::Pool<md::DaVinciGroundRenderable>::~Pool(v5);
    MEMORY[0x1B8C62190](v6, 0x1020C407A7143E5);
  }

  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void md::Logic<md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)62>>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)62>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F27F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)62>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F27F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)62>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)62>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)62>>(void)::localId;
    *algn_1EB82D8E8 = 0x95A2ECE42CAA8051;
    qword_1EB82D8F0 = "md::ls::MapDataTypeT<md::MapDataType::InjectedFeatures>]";
    qword_1EB82D8F8 = 55;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)62>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)62>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)62>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)62>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)62>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)62>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)62>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)62>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)62>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E4C00;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)62>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4BE0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)62>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4BE0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2970;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2990;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2970;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)62>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2860;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)62>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)62>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2880;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)62>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)62>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)62>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2860;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)62>,64ul>::~storage(a1);
}

void *md::Logic<md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)62>>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0x552ACF95227023D6 && (v5 = *(a3 + 32)) != 0)
  {
    v8 = *(a2 + 8);
    v9[0] = gdc::Context::get<md::GeometryContext>(v8);
    v9[1] = gdc::Context::get<md::CollectMapDataContext<(md::MapDataType)62>>(v8);
    return (*(*a1 + 160))(a1, a2, v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)62>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void *gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)62>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5010;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C4093837F09);
  }

  return a1;
}

void md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  *a1 = &unk_1F29E4408;
  v2 = *(a1 + 232);
  if (v2)
  {
    *(a1 + 240) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table((a1 + 168));
  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v5)
  {
    v6 = geo::Pool<md::DaVinciGroundRenderable>::~Pool(v5);
    MEMORY[0x1B8C62190](v6, 0x1020C407A7143E5);
  }

  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void md::Logic<md::CollectRenderablesLogic<(md::MapDataType)75,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)75>>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::CollectRenderablesLogic<(md::MapDataType)75,md::FlyoverRenderable>::runBeforeLayout(void *a1, md::LayoutContext *a2, const geo::QuadTile **a3)
{
  v5 = a1;
  v113 = *a3;
  v6 = a1[15];
  v116 = *(a2 + 2);
  v7 = *gdc::ServiceLocator::resolve<md::LayoutContextProvider>(*v116, v116[1]);
  (*v7)();
  v118 = v6;
  v8 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)75>>(v6);
  v9 = *(v8 + 32);
  v123 = *(v8 + 40);
  v125 = v8;
  v122 = v5;
  v115 = a2;
  v10 = 0;
  if (v9 != v123)
  {
    v3 = 0;
    v11 = 0;
    v120 = (v5 + 21);
    do
    {
      v13 = v5[18];
      v14 = v5[19];
      __p[0] = (*(*(v125 + 56) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v11 & 0x3F));
      v12 = __p[0];
      __p[1] = v120;
      std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v13, v14, __p);
      v15 = v5[18];
      v16 = v5[19];
      __p[0] = v12;
      __p[1] = v120;
      v17 = std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v15, v16, __p);
      v18 = v5[19];
      std::vector<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>>(v5 + 29, v5[30], v17, v18, v18 - v17);
      if (v17 != v18)
      {
        v19 = v18;
        v20 = v5[19];
        while (v19 != v20)
        {
          *v17 = *v19;
          *(v17++ + 2) = *(v19++ + 2);
        }

        v5[19] = v17;
      }

      v21 = v5;
      v22 = v5[30];
      v23 = v21[29];
      if (v22 != v23)
      {
        do
        {
          v24 = v10;
          v25 = v10 >> 2;
          if (((v10 >> 2) + 1) >> 62)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v10 >> 2 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v10 >> 2) + 1);
          }

          v3 = 0;
          *(4 * v25) = *(v23 + 8);
          v10 = 4 * v25 + 4;
          memcpy(0, 0, v24);
          v26 = *v23;
          if (*v23)
          {
            v27 = v122[17];
            if (*(v27 + 16))
            {
              (**v26)(*v23);
              *v26 = *(v27 + 40);
              *(v27 + 40) = v26;
            }
          }

          v23 += 16;
        }

        while (v23 != v22);
        v23 = v122[29];
      }

      v5 = v122;
      v28 = v122[18];
      v29 = v122[19];
      v30 = 126 - 2 * __clz((v29 - v28) >> 4);
      v122[30] = v23;
      if (v29 == v28)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)54>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)54> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(v28, v29, v31, 1);
      v9 += 4;
      ++v11;
    }

    while (v9 != v123);
  }

  v32 = v116;
  gdc::ServiceLocator::resolve<md::VKMRenderResourcesStore>(*v116, v116[1]);
  gdc::ServiceLocator::resolve<md::MaterialResourceStore>(*v32, v32[1]);
  gdc::ServiceLocator::resolve<mre::GGLResourceStore>(*v32, v32[1]);
  if (v10)
  {
    v33 = 0;
    if ((v10 >> 2) <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v10 >> 2;
    }

    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | *(4 * v33);
      cleanup(*v116, v116[1], v118, v3);
      ++v33;
    }

    while (v34 != v33);
    for (i = 0; i != v10; ++i)
    {
      v3 = v3 & 0xFFFFFFFF00000000 | *i;
      ecs2::BasicRegistry<void>::destroy(v118, v3);
    }
  }

  md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(v118);
  md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillEnterView<md::FlyoverRenderable>>(v118);
  v112 = md::LayoutContext::cameraType(v115);
  v109 = *(v115 + 2);
  v36 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(v5[15]);
  v37 = *(v36 + 32);
  v110 = v36;
  v108 = *(v36 + 40);
  if (v37 != v108)
  {
    v38 = 0;
    do
    {
      v39 = *(*(v110 + 56) + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v38 & 0x3F);
      v40 = v5[26];
      v5[27] = v40;
      v41 = v39;
      v42 = *(v39 + 16);
      if (v42 > (v5[28] - v40) >> 4)
      {
        if (!(v42 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>(v42);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v111 = v37;
      gdc::ServiceLocator::resolve<md::VKMRenderResourcesStore>(*v109, v109[1]);
      v43 = v41 + 1;
      v44 = *v41;
      if (v44 != v43)
      {
        v45 = v44[4];
        FillRect = grl::IconMetricsRenderResult::getFillRect(v45);
        v47 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(v5 + 21, FillRect);
        if (v47)
        {
          v48 = v47;
          v50 = v5[18];
          v49 = v5[19];
          if (v50 != v49)
          {
            do
            {
              if (*v50 == *(v47 + 16) && *(v50 + 8) == *(v47 + 34))
              {
                goto LABEL_42;
              }

              v50 += 16;
            }

            while (v50 != v49);
            v50 = v5[19];
          }

LABEL_42:
          v52 = v50 + 16;
          if (v50 + 16 != v49)
          {
            do
            {
              *(v52 - 16) = *v52;
              *(v52 - 8) = *(v52 + 8);
              v52 += 16;
            }

            while (v52 != v49);
            v50 = v52 - 16;
          }

          v5[19] = v50;
          v53 = *(v47 + 16);
          if (v53)
          {
            v54 = v5[17];
            if (*(v54 + 16))
            {
              (**v53)(*(v47 + 16));
              *v53 = *(v54 + 40);
              *(v54 + 40) = v53;
            }
          }

          std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::erase(v5 + 21, v48);
          v45 = v44[4];
        }

        v55 = v44[5];
        v134 = v45;
        v135 = v55;
        if (v55)
        {
          atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
        }

        v131 = *(v45 + 172);
        v130[0] = *(v45 + 168);
        v132 = *(v45 + 184);
        v133 = *(v45 + 192);
        v56 = *(v45 + 608);
        v57 = *(v45 + 616);
        v129 = gdc::ToCoordinateSystem(v112);
        md::GeometryContext::transformConstantData(&v128, v113, v130, v112, -1, v56, v57);
      }

      v37 += 4;
      ++v38;
    }

    while (v111 + 4 != v108);
  }

  v58 = v5[15];
  v59 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)75>>(v58);
  v60 = *(v59 + 32);
  v121 = v59;
  v124 = *(v59 + 40);
  if (v60 != v124)
  {
    v61 = 0;
    v117 = (v58 + 40960);
    v119 = v58;
LABEL_55:
    v126 = v60;
    v62 = v122[18];
    v63 = v122[19];
    if (v62 == v63)
    {
      v63 = v122[18];
      goto LABEL_98;
    }

    v64 = *(*(v121 + 7) + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8;
LABEL_57:
    while (2)
    {
      v65 = *(*v62 + 392);
      v66 = *(*v62 + 400);
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        v67 = *(*v62 + 56);
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v67 = *(*v62 + 56);
      }

      v68 = *(v64 + 24 * (v61 & 0x3F));
      if (!v68)
      {
LABEL_69:
        v74 = grl::IconMetricsRenderResult::getFillRect(v65);
        v75 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(v122 + 21, v74) != 0;
        if (!v66)
        {
          goto LABEL_71;
        }

LABEL_70:
        std::__shared_weak_count::__release_shared[abi:nn200100](v66);
        std::__shared_weak_count::__release_shared[abi:nn200100](v66);
        goto LABEL_71;
      }

      while (1)
      {
        v69 = *(v68 + 48);
        v70 = v69 > v67;
        v71 = v68[4];
        if (v67 == v69)
        {
          v70 = v65 < v71;
        }

        if (v70)
        {
          goto LABEL_68;
        }

        v72 = *(v68 + 48);
        v73 = v71 < v65;
        if (v67 != v72)
        {
          v73 = v72 < v67;
        }

        if (!v73)
        {
          break;
        }

        ++v68;
LABEL_68:
        v68 = *v68;
        if (!v68)
        {
          goto LABEL_69;
        }
      }

      v75 = 1;
      if (v66)
      {
        goto LABEL_70;
      }

LABEL_71:
      if (v75)
      {
        v62 += 16;
        if (v62 == v63)
        {
          goto LABEL_98;
        }

        continue;
      }

      break;
    }

LABEL_78:
    v77 = v63;
    v63 -= 16;
    if (v62 == v63)
    {
      v63 = v62;
      v58 = v119;
      goto LABEL_98;
    }

    v78 = *(*v63 + 392);
    v79 = *(*v63 + 400);
    if (v79)
    {
      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
      v80 = *(*v63 + 56);
      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v80 = *(*v63 + 56);
    }

    v81 = *(v64 + 24 * (v61 & 0x3F));
    if (!v81)
    {
LABEL_91:
      v87 = grl::IconMetricsRenderResult::getFillRect(v78);
      v76 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(v122 + 21, v87) != 0;
      if (!v79)
      {
        goto LABEL_93;
      }

LABEL_92:
      std::__shared_weak_count::__release_shared[abi:nn200100](v79);
      std::__shared_weak_count::__release_shared[abi:nn200100](v79);
      goto LABEL_93;
    }

    while (1)
    {
      v82 = *(v81 + 48);
      v83 = v82 > v80;
      v84 = v81[4];
      if (v80 == v82)
      {
        v83 = v78 < v84;
      }

      if (!v83)
      {
        v85 = *(v81 + 48);
        v86 = v84 < v78;
        if (v80 != v85)
        {
          v86 = v85 < v80;
        }

        if (!v86)
        {
          v76 = 1;
          if (v79)
          {
            goto LABEL_92;
          }

LABEL_93:
          if (v76)
          {
            v88 = *v62;
            *v62 = *(v77 - 2);
            *(v77 - 2) = v88;
            LODWORD(v88) = *(v62 + 2);
            *(v62 + 2) = *(v77 - 2);
            *(v77 - 2) = v88;
            v62 += 16;
            v58 = v119;
            if (v62 != v63)
            {
              goto LABEL_57;
            }

LABEL_98:
            v89 = v122[19];
            v90 = v122[26];
            v91 = v122[27];
            v92 = *(v58 + 4112);
            v93 = *(v58 + 4128);
            if (*(v58 + 4104) == v92)
            {
              WORD1(__p[0]) = (*(v58 + 4136) - v93) >> 2;
              LOWORD(__p[0]) = 1;
              std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v58 + 4128, __p);
              v94 = LODWORD(__p[0]);
              v95 = v117;
              v96 = v117[8];
              v97 = v117[9];
              if (v96 >= v97)
              {
                v99 = v117[7];
                v100 = (v96 - v99) >> 6;
                v101 = v100 + 1;
                if ((v100 + 1) >> 58)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v102 = v97 - v99;
                if (v102 >> 5 > v101)
                {
                  v101 = v102 >> 5;
                }

                if (v102 >= 0x7FFFFFFFFFFFFFC0)
                {
                  v103 = 0x3FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v101;
                }

                if (v103)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v103);
                }

                v104 = (v100 << 6);
                v104[2] = 0u;
                v104[3] = 0u;
                *v104 = 0u;
                v104[1] = 0u;
                v98 = (v100 << 6) + 64;
                v105 = v117[7];
                v106 = v117[8] - v105;
                v114 = v104 - v106;
                memcpy(v104 - v106, v105, v106);
                v107 = v117[7];
                v117[7] = v114;
                v117[8] = v98;
                v117[9] = 0;
                if (v107)
                {
                  operator delete(v107);
                }

                v95 = v117;
              }

              else
              {
                v96[2] = 0u;
                v96[3] = 0u;
                v98 = (v96 + 4);
                *v96 = 0u;
                v96[1] = 0u;
              }

              v95[8] = v98;
            }

            else
            {
              v94 = *(v93 + 4 * *(v92 - 8));
              *(v58 + 4112) = v92 - 8;
            }

            __p[0] = v63;
            __p[1] = ((v89 - v63) >> 4);
            ecs2::BasicRegistry<void>::add<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(v58, v94, __p);
            __p[0] = v90;
            __p[1] = ((v91 - v90) >> 4);
            ecs2::BasicRegistry<void>::add<SceneComponents::WillEnterView<md::FlyoverRenderable>>(v58, v94, __p);
            v60 = v126 + 4;
            ++v61;
            if (v126 + 4 == v124)
            {
              return;
            }

            goto LABEL_55;
          }

          goto LABEL_78;
        }

        ++v81;
      }

      v81 = *v81;
      if (!v81)
      {
        goto LABEL_91;
      }
    }
  }
}

void sub_1B2C436F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p)
{
  v44 = *(v42 - 168);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v44);
  }

  v45 = *(v42 - 112);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)75>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>(void)::metadata >= 0x200)
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

void ecs2::BasicRegistry<void>::add<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    if (v21 > (v22 - v18) >> 3)
    {
      v23 = v22 - v19;
      v24 = (v22 - v19) >> 2;
      if (v24 <= v20)
      {
        v24 = v17 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v26 = 0;
    v27 = (v21 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = vdupq_n_s64(v27);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B33B0560)));
      if (v29.i8[0])
      {
        *(v18 + 8 * v26) = 0;
      }

      if (v29.i8[4])
      {
        *(v18 + 8 * v26 + 8) = 0;
      }

      v26 += 2;
    }

    while (v27 - ((v21 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v26);
    *(v8 + 64) = v18 + 8 * v21;
    v30 = *(v8 + 80);
    v31 = *(v8 + 88);
    v32 = (v31 - v30) >> 4;
    if (v32 <= v17)
    {
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 16 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<SceneComponents::WillEnterView<md::FlyoverRenderable>>(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillEnterView<md::FlyoverRenderable>>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 16 * (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    if (v21 > (v22 - v18) >> 3)
    {
      v23 = v22 - v19;
      v24 = (v22 - v19) >> 2;
      if (v24 <= v20)
      {
        v24 = v17 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v26 = 0;
    v27 = (v21 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = vdupq_n_s64(v27);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B33B0560)));
      if (v29.i8[0])
      {
        *(v18 + 8 * v26) = 0;
      }

      if (v29.i8[4])
      {
        *(v18 + 8 * v26 + 8) = 0;
      }

      v26 += 2;
    }

    while (v27 - ((v21 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v26);
    *(v8 + 64) = v18 + 8 * v21;
    v30 = *(v8 + 80);
    v31 = *(v8 + 88);
    v32 = (v31 - v30) >> 4;
    if (v32 <= v17)
    {
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + 16 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillEnterView<md::FlyoverRenderable>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillEnterView<md::FlyoverRenderable>>(void)::localId;
    *algn_1EB829588 = 0xBCDB6C1F639FCC2CLL;
    qword_1EB829590 = "SceneComponents::WillEnterView<md::FlyoverRenderable>]";
    qword_1EB829598 = 53;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::WillEnterView<md::FlyoverRenderable>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13WillEnterViewIN2md17FlyoverRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillEnterView<md::FlyoverRenderable>>(v3);
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
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillEnterView<md::FlyoverRenderable>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13WillEnterViewIN2md17FlyoverRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E4DC8;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::FlyoverRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4D88;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::FlyoverRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::FlyoverRenderable>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29E4DA8;
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

void ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::FlyoverRenderable>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::FlyoverRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::FlyoverRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4D88;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::WillEnterView<md::FlyoverRenderable>,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(void)::localId;
    unk_1EB829560 = 0xDCB65735B104E73;
    qword_1EB829568 = "SceneComponents::WillLeaveView<md::FlyoverRenderable>]";
    qword_1EB829570 = 53;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13WillLeaveViewIN2md17FlyoverRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(v3);
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
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::WillLeaveView<md::FlyoverRenderable>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13WillLeaveViewIN2md17FlyoverRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E4D40;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::FlyoverRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4D00;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::FlyoverRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::FlyoverRenderable>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29E4D20;
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

void ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::FlyoverRenderable>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::FlyoverRenderable>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::FlyoverRenderable>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4D00;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::WillLeaveView<md::FlyoverRenderable>,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)75>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)75>>(void)::localId;
    *algn_1EB8294F8 = 0x41D54313046A9EA4;
    qword_1EB829500 = "SceneComponents::LayerDataInView<md::MapDataType::Flyover>]";
    qword_1EB829508 = 58;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)75>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)75>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2B28;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)75>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2AE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)75>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)75>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2B08;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)75>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)75>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)75>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2AE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)75>,64ul>::~storage(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(void)::metadata >= 0x200)
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

void geo::Pool<md::FlyoverRenderable>::construct<std::shared_ptr<md::MapTileData> &,signed char,BOOL const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Tile::Transform>> &>(uint64_t *a1, uint64_t *a2, char *a3, char *a4, void *a5)
{
  v10 = a1[5];
  if (!v10)
  {
    v11 = malloc_type_malloc(408 * a1[3], 0x10A20400C342E21uLL);
    v13 = v11;
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v11, &v13);
    v10 = a1[5];
    v12 = &v11[51 * a1[3] - 51];
    if (v12 >= v11)
    {
      do
      {
        *v12 = v10;
        v10 = v12;
        v12 -= 51;
      }

      while (v12 >= v11);
      v10 = v12 + 51;
    }

    a1[5] = v10;
  }

  a1[5] = *v10;
  md::MapTileDataRenderable<md::MapTileData>::MapTileDataRenderable(v10, a2, *a3, *a4, a5);
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)75>>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)75>>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::GlobeMatrixData>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v53 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::GlobeMatrixData>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    v47 = 0;
    v48 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + ((v14 & 0x3F) << 7);
    do
    {
      *(v48 + v47) = *(a3 + v47);
      v47 += 8;
    }

    while (v47 != 128);
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v53);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v49 = v6;
    v50 = v16;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    v51 = v18 - v19;
    v52 = v16 >> 6;
    if (v21 > (v22 - v18) >> 3)
    {
      v23 = v22 - v19;
      v24 = (v22 - v19) >> 2;
      if (v24 <= v20)
      {
        v24 = v17 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

      goto LABEL_44;
    }

    v26 = 0;
    v27 = (v21 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = vdupq_n_s64(v27);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B33B0560)));
      if (v29.i8[0])
      {
        *(v18 + 8 * v26) = 0;
      }

      if (v29.i8[4])
      {
        *(v18 + 8 * v26 + 8) = 0;
      }

      v26 += 2;
    }

    while (v27 - ((v21 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v26);
    *(v8 + 64) = v18 + 8 * v21;
    v30 = *(v8 + 80);
    v31 = *(v8 + 88);
    v32 = (v31 - v30) >> 4;
    if (v32 <= v17)
    {
      v16 = v20 - v32;
      v33 = *(v8 + 96);
      if (v16 > (v33 - v31) >> 4)
      {
        v34 = v33 - v30;
        v35 = v34 >> 3;
        if (v34 >> 3 <= v20)
        {
          v35 = v17 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF0)
        {
          v36 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        if (!(v36 >> 60))
        {
          operator new();
        }

LABEL_44:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v16);
      v17 = v52;
      *(v8 + 88) = v31 + 16 * v16;
      LOBYTE(v16) = v50;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    v6 = v49;
    if (v51 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  v37 = (*(v19 + 8 * v17) + ((v16 & 0x3F) << 7));
  v38 = *a3;
  v39 = a3[1];
  v40 = a3[3];
  v37[2] = a3[2];
  v37[3] = v40;
  *v37 = v38;
  v37[1] = v39;
  v41 = a3[4];
  v42 = a3[5];
  v43 = a3[7];
  v37[6] = a3[6];
  v37[7] = v43;
  v37[4] = v41;
  v37[5] = v42;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_41:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::add<md::ls::FlyoverOctileKey>(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v48 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverOctileKey>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    v41 = (*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 48 * (v14 & 0x3F));
    v42 = *a3;
    v43 = a3[2];
    v41[1] = a3[1];
    v41[2] = v43;
    *v41 = v42;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v48);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v44 = v6;
    v45 = v16;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    v46 = v18 - v19;
    v47 = v16 >> 6;
    if (v21 > (v22 - v18) >> 3)
    {
      v23 = v22 - v19;
      v24 = (v22 - v19) >> 2;
      if (v24 <= v20)
      {
        v24 = v17 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v26 = 0;
    v27 = (v21 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = vdupq_n_s64(v27);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B33B0560)));
      if (v29.i8[0])
      {
        *(v18 + 8 * v26) = 0;
      }

      if (v29.i8[4])
      {
        *(v18 + 8 * v26 + 8) = 0;
      }

      v26 += 2;
    }

    while (v27 - ((v21 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v26);
    *(v8 + 64) = v18 + 8 * v21;
    v30 = *(v8 + 80);
    v31 = *(v8 + 88);
    v32 = (v31 - v30) >> 4;
    if (v32 <= v17)
    {
      v16 = v20 - v32;
      v33 = *(v8 + 96);
      if (v16 > (v33 - v31) >> 4)
      {
        v34 = v33 - v30;
        v35 = v34 >> 3;
        if (v34 >> 3 <= v20)
        {
          v35 = v17 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF0)
        {
          v36 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        if (!(v36 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v16);
      v17 = v47;
      *(v8 + 88) = v31 + 16 * v16;
      LOBYTE(v16) = v45;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    v6 = v44;
    if (v46 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  v37 = *(v19 + 8 * v17) + 48 * (v16 & 0x3F);
  *(v37 + 24) = 0;
  *(v37 + 4) = *(a3 + 4);
  *v37 = *a3;
  *(v37 + 16) = *(a3 + 2);
  *(v37 + 24) = *(a3 + 24);
  *(v37 + 32) = a3[2];
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>(void)::metadata) = *(a1 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16FlyoverOctileKeyEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverOctileKey>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 48 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 48 * (v13 & 0x3F);
        v18 = *v17;
        v19 = *(v17 + 16);
        v20 = *(v17 + 24);
        *&v24[7] = *(v17 + 32);
        v21 = *(v17 + 4);
        v22 = *v16;
        v23 = *(v16 + 32);
        *(v17 + 16) = *(v16 + 16);
        *(v17 + 32) = v23;
        *v17 = v22;
        *v16 = v18;
        *(v16 + 4) = v21;
        *(v16 + 16) = v19;
        *(v16 + 24) = v20;
        *(v16 + 40) = *&v24[15];
        *(v16 + 25) = *v24;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverOctileKey>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverOctileKey,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1CCC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverOctileKey,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverOctileKey,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1CCE0;
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

void ecs2::storage<ecs2::Entity,md::ls::FlyoverOctileKey,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverOctileKey,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverOctileKey,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1CCC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverOctileKey,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GlobeMatrixData>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GlobeMatrixData>(void)::localId;
    *algn_1EB8292E8 = 0x93E8A4F5122D6D07;
    qword_1EB8292F0 = "md::ls::GlobeMatrixData]";
    qword_1EB8292F8 = 23;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::GlobeMatrixData>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15GlobeMatrixDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::GlobeMatrixData>(v3);
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

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = (*(v16 + ((v14 >> 3) & 0x1FF8)) + ((v14 & 0x3F) << 7));
        v24 = v18[4];
        v25 = v18[5];
        v19 = (v17 + ((v15 & 0x3F) << 7));
        v26 = v18[6];
        v27 = v18[7];
        v20 = *v18;
        v21 = v18[1];
        v22 = v18[2];
        v23 = v18[3];
        do
        {
          *(v18 + v13) = *(v19 + v13);
          v13 += 8;
        }

        while (v13 != 128);
        v19[4] = v24;
        v19[5] = v25;
        v19[6] = v26;
        v19[7] = v27;
        *v19 = v20;
        v19[1] = v21;
        v19[2] = v22;
        v19[3] = v23;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrixData>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15GlobeMatrixDataEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1CC78;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GlobeMatrixData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1CC38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::GlobeMatrixData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::GlobeMatrixData,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1CC58;
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

void ecs2::storage<ecs2::Entity,md::ls::GlobeMatrixData,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::GlobeMatrixData,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GlobeMatrixData,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1CC38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::GlobeMatrixData,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(void)::localId;
    unk_1EB8292A0 = 0xFC370D9176A00DEBLL;
    qword_1EB8292A8 = "md::ls::TileRenderableTypeT<md::FlyoverRenderable>]";
    qword_1EB8292B0 = 50;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19TileRenderableTypeTINS6_17FlyoverRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableTypeT<md::FlyoverRenderable>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19TileRenderableTypeTINS6_17FlyoverRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1CBF0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileRenderableTypeT<md::FlyoverRenderable>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1CBD0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TileRenderableTypeT<md::FlyoverRenderable>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1CBD0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)75>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)75>>(void)::localId;
    unk_1EB829540 = 0xA7448A9385809AE4;
    qword_1EB829548 = "SceneComponents::LayerDataActive<md::MapDataType::Flyover>]";
    qword_1EB829550 = 58;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)75>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)75>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)75>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2AA0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)75>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2A80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)75>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2A80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)75>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)75>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)75>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)75>>(void)::localId;
    unk_1EB829330 = 0xC0EE0F99A0E95F19;
    qword_1EB829338 = "md::ls::MapDataTypeT<md::MapDataType::Flyover>]";
    qword_1EB829340 = 46;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)75>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)75>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)75>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)75>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)75>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)75>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)75>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)75>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)75>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E4E30;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)75>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4E10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)75>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4E10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(void)::localId;
    *algn_1EB8293C8 = 0xAD537A7989D93465;
    qword_1EB8293D0 = "SceneComponents::LayerDataEnteringView<md::MapDataType::Flyover>]";
    qword_1EB8293D8 = 64;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2C38;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2BF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2C18;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2BF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)75>,64ul>::~storage(a1);
}

uint64_t gdc::ServiceLocator::resolve<md::LayoutContextProvider>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0x22D45F5AAD4BF408)
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

void md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(uint64_t a1)
{
  v1 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(a1);
  if (*(v1 + 32) != *(v1 + 40))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
  }
}

void sub_1B2C48BD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillEnterView<md::FlyoverRenderable>>(uint64_t a1)
{
  v1 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillEnterView<md::FlyoverRenderable>>(a1);
  if (*(v1 + 32) != *(v1 + 40))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
  }
}

void sub_1B2C48D4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *md::Logic<md::CollectRenderablesLogic<(md::MapDataType)75,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)75>>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0x57AAF780DF3EC6C0 && (v4 = *(a3 + 32)) != 0)
  {
    v7 = *(a2 + 8);
    v9[0] = gdc::Context::get<md::GeometryContext>(v7);
    v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)75>>(v7);
    return (*(*a1 + 160))(a1, a2, v9, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

void *gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)75>>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x4B05BEFA631D0889uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x4B05BEFA631D0889)
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

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)75,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)75>>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x57AAF780DF3EC6C0)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)75>>(v8);
      return (*(*v7 + 152))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)75,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)75>>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x57AAF780DF3EC6C0)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)75>>(v8);
      return (*(*v7 + 144))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)75,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)75>>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x57AAF780DF3EC6C0)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)75>>(v8);
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)75,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)75>>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x57AAF780DF3EC6C0)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)75>>(v8);
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)75>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)75>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5038;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C4093837F09);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)75>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5038;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C4093837F09);
  }

  return a1;
}

void md::CollectRenderablesLogic<(md::MapDataType)75,md::FlyoverRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  md::CollectRenderablesLogic<(md::MapDataType)75,md::FlyoverRenderable>::~CollectRenderablesLogic(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectRenderablesLogic<(md::MapDataType)75,md::FlyoverRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  *a1 = &unk_1F29E44C0;
  SceneComponents::MapDataRenderables<md::FlyoverRenderable>::~MapDataRenderables((a1 + 136));
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

uint64_t *SceneComponents::MapDataRenderables<md::FlyoverRenderable>::~MapDataRenderables(uint64_t *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    do
    {
      v5 = *v4;
      v6 = v4[4];
      if (v6 != v4[6])
      {
        free(v6);
      }

      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v7 = a1[4];
  a1[4] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    v10 = geo::Pool<md::FlyoverRenderable>::~Pool(v9);
    MEMORY[0x1B8C62190](v10, 0x1020C407A7143E5);
  }

  return a1;
}

void md::Logic<md::CollectRenderablesLogic<(md::MapDataType)79,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)79>>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::CollectRenderablesLogic<(md::MapDataType)79,md::FlyoverRenderable>::runBeforeLayout(void *a1, md::LayoutContext *a2, const geo::QuadTile **a3)
{
  v5 = a1;
  v113 = *a3;
  v6 = a1[15];
  v116 = *(a2 + 2);
  v7 = *gdc::ServiceLocator::resolve<md::LayoutContextProvider>(*v116, v116[1]);
  (*v7)();
  v118 = v6;
  v8 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)79>>(v6);
  v9 = *(v8 + 32);
  v123 = *(v8 + 40);
  v125 = v8;
  v122 = v5;
  v115 = a2;
  v10 = 0;
  if (v9 != v123)
  {
    v3 = 0;
    v11 = 0;
    v120 = (v5 + 21);
    do
    {
      v13 = v5[18];
      v14 = v5[19];
      __p[0] = (*(*(v125 + 56) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v11 & 0x3F));
      v12 = __p[0];
      __p[1] = v120;
      std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v13, v14, __p);
      v15 = v5[18];
      v16 = v5[19];
      __p[0] = v12;
      __p[1] = v120;
      v17 = std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v15, v16, __p);
      v18 = v5[19];
      std::vector<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>>(v5 + 29, v5[30], v17, v18, v18 - v17);
      if (v17 != v18)
      {
        v19 = v18;
        v20 = v5[19];
        while (v19 != v20)
        {
          *v17 = *v19;
          *(v17++ + 2) = *(v19++ + 2);
        }

        v5[19] = v17;
      }

      v21 = v5;
      v22 = v5[30];
      v23 = v21[29];
      if (v22 != v23)
      {
        do
        {
          v24 = v10;
          v25 = v10 >> 2;
          if (((v10 >> 2) + 1) >> 62)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v10 >> 2 != -1)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>((v10 >> 2) + 1);
          }

          v3 = 0;
          *(4 * v25) = *(v23 + 8);
          v10 = 4 * v25 + 4;
          memcpy(0, 0, v24);
          v26 = *v23;
          if (*v23)
          {
            v27 = v122[17];
            if (*(v27 + 16))
            {
              (**v26)(*v23);
              *v26 = *(v27 + 40);
              *(v27 + 40) = v26;
            }
          }

          v23 += 16;
        }

        while (v23 != v22);
        v23 = v122[29];
      }

      v5 = v122;
      v28 = v122[18];
      v29 = v122[19];
      v30 = 126 - 2 * __clz((v29 - v28) >> 4);
      v122[30] = v23;
      if (v29 == v28)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)54>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)54> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(v28, v29, v31, 1);
      v9 += 4;
      ++v11;
    }

    while (v9 != v123);
  }

  v32 = v116;
  gdc::ServiceLocator::resolve<md::VKMRenderResourcesStore>(*v116, v116[1]);
  gdc::ServiceLocator::resolve<md::MaterialResourceStore>(*v32, v32[1]);
  gdc::ServiceLocator::resolve<mre::GGLResourceStore>(*v32, v32[1]);
  if (v10)
  {
    v33 = 0;
    if ((v10 >> 2) <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v10 >> 2;
    }

    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | *(4 * v33);
      cleanup(*v116, v116[1], v118, v3);
      ++v33;
    }

    while (v34 != v33);
    for (i = 0; i != v10; ++i)
    {
      v3 = v3 & 0xFFFFFFFF00000000 | *i;
      ecs2::BasicRegistry<void>::destroy(v118, v3);
    }
  }

  md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(v118);
  md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillEnterView<md::FlyoverRenderable>>(v118);
  v112 = md::LayoutContext::cameraType(v115);
  v109 = *(v115 + 2);
  v36 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(v5[15]);
  v37 = *(v36 + 32);
  v110 = v36;
  v108 = *(v36 + 40);
  if (v37 != v108)
  {
    v38 = 0;
    do
    {
      v39 = *(*(v110 + 56) + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v38 & 0x3F);
      v40 = v5[26];
      v5[27] = v40;
      v41 = v39;
      v42 = *(v39 + 16);
      if (v42 > (v5[28] - v40) >> 4)
      {
        if (!(v42 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>(v42);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v111 = v37;
      gdc::ServiceLocator::resolve<md::VKMRenderResourcesStore>(*v109, v109[1]);
      v43 = v41 + 1;
      v44 = *v41;
      if (v44 != v43)
      {
        v45 = v44[4];
        FillRect = grl::IconMetricsRenderResult::getFillRect(v45);
        v47 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(v5 + 21, FillRect);
        if (v47)
        {
          v48 = v47;
          v50 = v5[18];
          v49 = v5[19];
          if (v50 != v49)
          {
            do
            {
              if (*v50 == *(v47 + 16) && *(v50 + 8) == *(v47 + 34))
              {
                goto LABEL_42;
              }

              v50 += 16;
            }

            while (v50 != v49);
            v50 = v5[19];
          }

LABEL_42:
          v52 = v50 + 16;
          if (v50 + 16 != v49)
          {
            do
            {
              *(v52 - 16) = *v52;
              *(v52 - 8) = *(v52 + 8);
              v52 += 16;
            }

            while (v52 != v49);
            v50 = v52 - 16;
          }

          v5[19] = v50;
          v53 = *(v47 + 16);
          if (v53)
          {
            v54 = v5[17];
            if (*(v54 + 16))
            {
              (**v53)(*(v47 + 16));
              *v53 = *(v54 + 40);
              *(v54 + 40) = v53;
            }
          }

          std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::erase(v5 + 21, v48);
          v45 = v44[4];
        }

        v55 = v44[5];
        v134 = v45;
        v135 = v55;
        if (v55)
        {
          atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
        }

        v131 = *(v45 + 172);
        v130[0] = *(v45 + 168);
        v132 = *(v45 + 184);
        v133 = *(v45 + 192);
        v56 = *(v45 + 608);
        v57 = *(v45 + 616);
        v129 = gdc::ToCoordinateSystem(v112);
        md::GeometryContext::transformConstantData(&v128, v113, v130, v112, -1, v56, v57);
      }

      v37 += 4;
      ++v38;
    }

    while (v111 + 4 != v108);
  }

  v58 = v5[15];
  v59 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)79>>(v58);
  v60 = *(v59 + 32);
  v121 = v59;
  v124 = *(v59 + 40);
  if (v60 != v124)
  {
    v61 = 0;
    v117 = (v58 + 40960);
    v119 = v58;
LABEL_55:
    v126 = v60;
    v62 = v122[18];
    v63 = v122[19];
    if (v62 == v63)
    {
      v63 = v122[18];
      goto LABEL_98;
    }

    v64 = *(*(v121 + 7) + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8;
LABEL_57:
    while (2)
    {
      v65 = *(*v62 + 392);
      v66 = *(*v62 + 400);
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        v67 = *(*v62 + 56);
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v67 = *(*v62 + 56);
      }

      v68 = *(v64 + 24 * (v61 & 0x3F));
      if (!v68)
      {
LABEL_69:
        v74 = grl::IconMetricsRenderResult::getFillRect(v65);
        v75 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(v122 + 21, v74) != 0;
        if (!v66)
        {
          goto LABEL_71;
        }

LABEL_70:
        std::__shared_weak_count::__release_shared[abi:nn200100](v66);
        std::__shared_weak_count::__release_shared[abi:nn200100](v66);
        goto LABEL_71;
      }

      while (1)
      {
        v69 = *(v68 + 48);
        v70 = v69 > v67;
        v71 = v68[4];
        if (v67 == v69)
        {
          v70 = v65 < v71;
        }

        if (v70)
        {
          goto LABEL_68;
        }

        v72 = *(v68 + 48);
        v73 = v71 < v65;
        if (v67 != v72)
        {
          v73 = v72 < v67;
        }

        if (!v73)
        {
          break;
        }

        ++v68;
LABEL_68:
        v68 = *v68;
        if (!v68)
        {
          goto LABEL_69;
        }
      }

      v75 = 1;
      if (v66)
      {
        goto LABEL_70;
      }

LABEL_71:
      if (v75)
      {
        v62 += 16;
        if (v62 == v63)
        {
          goto LABEL_98;
        }

        continue;
      }

      break;
    }

LABEL_78:
    v77 = v63;
    v63 -= 16;
    if (v62 == v63)
    {
      v63 = v62;
      v58 = v119;
      goto LABEL_98;
    }

    v78 = *(*v63 + 392);
    v79 = *(*v63 + 400);
    if (v79)
    {
      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
      v80 = *(*v63 + 56);
      atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v80 = *(*v63 + 56);
    }

    v81 = *(v64 + 24 * (v61 & 0x3F));
    if (!v81)
    {
LABEL_91:
      v87 = grl::IconMetricsRenderResult::getFillRect(v78);
      v76 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(v122 + 21, v87) != 0;
      if (!v79)
      {
        goto LABEL_93;
      }

LABEL_92:
      std::__shared_weak_count::__release_shared[abi:nn200100](v79);
      std::__shared_weak_count::__release_shared[abi:nn200100](v79);
      goto LABEL_93;
    }

    while (1)
    {
      v82 = *(v81 + 48);
      v83 = v82 > v80;
      v84 = v81[4];
      if (v80 == v82)
      {
        v83 = v78 < v84;
      }

      if (!v83)
      {
        v85 = *(v81 + 48);
        v86 = v84 < v78;
        if (v80 != v85)
        {
          v86 = v85 < v80;
        }

        if (!v86)
        {
          v76 = 1;
          if (v79)
          {
            goto LABEL_92;
          }

LABEL_93:
          if (v76)
          {
            v88 = *v62;
            *v62 = *(v77 - 2);
            *(v77 - 2) = v88;
            LODWORD(v88) = *(v62 + 2);
            *(v62 + 2) = *(v77 - 2);
            *(v77 - 2) = v88;
            v62 += 16;
            v58 = v119;
            if (v62 != v63)
            {
              goto LABEL_57;
            }

LABEL_98:
            v89 = v122[19];
            v90 = v122[26];
            v91 = v122[27];
            v92 = *(v58 + 4112);
            v93 = *(v58 + 4128);
            if (*(v58 + 4104) == v92)
            {
              WORD1(__p[0]) = (*(v58 + 4136) - v93) >> 2;
              LOWORD(__p[0]) = 1;
              std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v58 + 4128, __p);
              v94 = LODWORD(__p[0]);
              v95 = v117;
              v96 = v117[8];
              v97 = v117[9];
              if (v96 >= v97)
              {
                v99 = v117[7];
                v100 = (v96 - v99) >> 6;
                v101 = v100 + 1;
                if ((v100 + 1) >> 58)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v102 = v97 - v99;
                if (v102 >> 5 > v101)
                {
                  v101 = v102 >> 5;
                }

                if (v102 >= 0x7FFFFFFFFFFFFFC0)
                {
                  v103 = 0x3FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v103 = v101;
                }

                if (v103)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v103);
                }

                v104 = (v100 << 6);
                v104[2] = 0u;
                v104[3] = 0u;
                *v104 = 0u;
                v104[1] = 0u;
                v98 = (v100 << 6) + 64;
                v105 = v117[7];
                v106 = v117[8] - v105;
                v114 = v104 - v106;
                memcpy(v104 - v106, v105, v106);
                v107 = v117[7];
                v117[7] = v114;
                v117[8] = v98;
                v117[9] = 0;
                if (v107)
                {
                  operator delete(v107);
                }

                v95 = v117;
              }

              else
              {
                v96[2] = 0u;
                v96[3] = 0u;
                v98 = (v96 + 4);
                *v96 = 0u;
                v96[1] = 0u;
              }

              v95[8] = v98;
            }

            else
            {
              v94 = *(v93 + 4 * *(v92 - 8));
              *(v58 + 4112) = v92 - 8;
            }

            __p[0] = v63;
            __p[1] = ((v89 - v63) >> 4);
            ecs2::BasicRegistry<void>::add<SceneComponents::WillLeaveView<md::FlyoverRenderable>>(v58, v94, __p);
            __p[0] = v90;
            __p[1] = ((v91 - v90) >> 4);
            ecs2::BasicRegistry<void>::add<SceneComponents::WillEnterView<md::FlyoverRenderable>>(v58, v94, __p);
            v60 = v126 + 4;
            ++v61;
            if (v126 + 4 == v124)
            {
              return;
            }

            goto LABEL_55;
          }

          goto LABEL_78;
        }

        ++v81;
      }

      v81 = *v81;
      if (!v81)
      {
        goto LABEL_91;
      }
    }
  }
}

void sub_1B2C4A850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p)
{
  v44 = *(v42 - 168);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v44);
  }

  v45 = *(v42 - 112);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)79>>(void)::localId;
    unk_1EB8294D0 = 0x4DD1DD0D09C88526;
    qword_1EB8294D8 = "SceneComponents::LayerDataInView<md::MapDataType::PolarFlyover>]";
    qword_1EB8294E0 = 63;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)79>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2DB0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2D70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2D90;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2D70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)79>,64ul>::~storage(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(void)::metadata >= 0x200)
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

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)79>>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)79>>(a1);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)79>>(void)::localId;
    *algn_1EB829518 = 0xFAC632E90BB7F066;
    qword_1EB829520 = "SceneComponents::LayerDataActive<md::MapDataType::PolarFlyover>]";
    qword_1EB829528 = 63;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)79>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2D28;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2D08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataActive<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2D08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MapDataTypeT<(md::MapDataType)79>>(void)::localId;
    *algn_1EB842388 = 0x2D8FF4589AC05429;
    qword_1EB842390 = "md::ls::MapDataTypeT<md::MapDataType::PolarFlyover>]";
    qword_1EB842398 = 51;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)79>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MapDataTypeT<(md::MapDataType)79>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MapDataTypeT<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12MapDataTypeTILNS6_11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E4F50;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4F30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MapDataTypeT<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29E4F30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(void)::localId;
    unk_1EB8293A0 = 0x1995DE3D010F44EDLL;
    qword_1EB8293A8 = "SceneComponents::LayerDataEnteringView<md::MapDataType::PolarFlyover>]";
    qword_1EB8293B0 = 69;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2EC0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2E80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2EA0;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2E80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>,64ul>::~storage(a1);
}

void *md::Logic<md::CollectRenderablesLogic<(md::MapDataType)79,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)79>>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0x4F6DB855E2E136BALL && (v4 = *(a3 + 32)) != 0)
  {
    v7 = *(a2 + 8);
    v9[0] = gdc::Context::get<md::GeometryContext>(v7);
    v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)79>>(v7);
    return (*(*a1 + 160))(a1, a2, v9, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

void *gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)79>>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xE4007F1EDCD91179);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xE4007F1EDCD91179)
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

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)79,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)79>>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x4F6DB855E2E136BALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)79>>(v8);
      return (*(*v7 + 152))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)79,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)79>>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x4F6DB855E2E136BALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)79>>(v8);
      return (*(*v7 + 144))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)79,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)79>>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x4F6DB855E2E136BALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)79>>(v8);
      return (*(*v7 + 136))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)79,md::FlyoverRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)79>>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x4F6DB855E2E136BALL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::get<md::GeometryContext>(v8);
      v9[1] = gdc::Context::context<md::CollectMapDataContext<(md::MapDataType)79>>(v8);
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)79>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)79>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5060;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C4093837F09);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::CollectRenderablesLogicContext<(md::MapDataType)79>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E5060;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C4093837F09);
  }

  return a1;
}

void md::CollectRenderablesLogic<(md::MapDataType)79,md::FlyoverRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  md::CollectRenderablesLogic<(md::MapDataType)79,md::FlyoverRenderable>::~CollectRenderablesLogic(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectRenderablesLogic<(md::MapDataType)79,md::FlyoverRenderable>::~CollectRenderablesLogic(uint64_t a1)
{
  *a1 = &unk_1F29E4578;
  SceneComponents::MapDataRenderables<md::FlyoverRenderable>::~MapDataRenderables((a1 + 136));
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelsStateObserver *>(uint64_t a1, void *a2)
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

uint64_t md::PolygonViewConstantsFrameCache::pop(md::PolygonViewConstantsFrameCache *this)
{
  v2 = *(this + 3);
  v3 = *this;
  if (v2 == (*(this + 1) - *this) >> 4)
  {
    v4 = v2 + 10;
    if (v2 + 10 > ((*(this + 2) - v3) >> 4))
    {
      if (!(v4 >> 60))
      {
        v6 = this;
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v4);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    operator new();
  }

  *(this + 3) = v2 + 1;
  return v3 + 16 * v2;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKTrafficIncidentFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TrafficIncidentLabelFeature>>(uint64_t a1, void *a2)
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

void geo::_retain_ptr<NSArray<VKTrafficIncidentFeature *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D0A8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSArray<VKTrafficIncidentFeature *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D0A8;

  return a1;
}

void sub_1B2C4D620(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::TrafficIncidentLabelFeature>>(uint64_t a1, uint64_t a2)
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

void *geo::_retain_ptr<VKTrafficIncidentFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A542C0;
  a1[1] = v3;
  return a1;
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator>>::emplace_back<std::shared_ptr<md::TrafficIncidentLabelFeature> const&>(std::__shared_weak_count *result, __int128 *a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = (shared_owners - result->__vftable) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = shared_weak_owners - result->__vftable;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v23 = &result[1];
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::TrafficIncidentLabelFeature>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
    v17 = v3[1] - *v3;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], *v3, v17);
    v19 = *v3;
    *v3 = v18;
    v3[1] = v7;
    v20 = v3[2];
    v3[2] = v16;
    v21.__shared_weak_owners_ = v19;
    v22 = v20;
    v21.__vftable = v19;
    v21.__shared_owners_ = v19;
    result = std::__split_buffer<std::shared_ptr<md::TrafficIncidentLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::TrafficIncidentLabelFeature>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *shared_owners = *a2;
    *(shared_owners + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = shared_owners + 16;
  }

  v3[1] = v7;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *,false>(char *a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v7 = (a2 - 16);
  v169 = a2 - 24;
  v170 = a2 - 8;
  v168 = a2 - 40;
  v8 = a1;
  v176 = a2;
  while (1)
  {
    a1 = v8;
    v9 = &a2[-v8] >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return;
    }

    if (v9 == 2)
    {
      if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v7, v8))
      {
        v98 = *v8;
        *v8 = *v7;
        *v7 = v98;
        v99 = *(v8 + 8);
        v100 = v170;
        *(v8 + 8) = *v170;
        goto LABEL_211;
      }

      return;
    }

LABEL_9:
    if (v9 <= 23)
    {
      v106 = (v8 + 16);
      v108 = v8 == a2 || v106 == a2;
      if (a4)
      {
        if (!v108)
        {
          v109 = 0;
          v110 = v8;
          do
          {
            v111 = v110;
            v110 = v106;
            if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(v111 + 16), v111))
            {
              v112 = *v110;
              *v110 = 0;
              *(v110 + 8) = 0;
              v174 = v112;
              v113 = v112;
              v114 = v109;
              while (1)
              {
                v115 = &a1[v114];
                v116 = *&a1[v114];
                *v115 = 0;
                *(v115 + 1) = 0;
                v117 = *&a1[v114 + 24];
                *(v115 + 1) = v116;
                if (v117)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v117);
                }

                if (!v114)
                {
                  break;
                }

                v118 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v113, &a1[v114 - 16]);
                v114 -= 16;
                if ((v118 & 1) == 0)
                {
                  v119 = &a1[v114 + 16];
                  goto LABEL_139;
                }
              }

              v119 = a1;
LABEL_139:
              v120 = *(v119 + 1);
              *v119 = v174;
              a2 = v176;
              if (v120)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v120);
              }
            }

            v106 = (v110 + 16);
            v109 += 16;
          }

          while ((v110 + 16) != a2);
        }
      }

      else if (!v108)
      {
        do
        {
          v159 = a1;
          a1 = v106;
          if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(v159 + 2), v159))
          {
            v160 = *a1;
            *a1 = 0;
            *(a1 + 1) = 0;
            v175 = v160;
            v161 = v160;
            v162 = a1;
            do
            {
              v163 = *(v162 - 1);
              *(v162 - 2) = 0;
              *(v162 - 1) = 0;
              v164 = *(v162 + 1);
              *v162 = v163;
              if (v164)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v164);
              }

              v165 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v161, (v162 - 32));
              v162 -= 16;
            }

            while ((v165 & 1) != 0);
            v166 = *(v162 + 1);
            *v162 = v175;
            a2 = v176;
            if (v166)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v166);
            }
          }

          v106 = a1 + 16;
        }

        while (a1 + 16 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v121 = v10 >> 1;
      v122 = v10 >> 1;
      do
      {
        v123 = v122;
        if (v121 >= v122)
        {
          v124 = (2 * v122) | 1;
          v125 = &a1[16 * v124];
          if (2 * v122 + 2 < v9 && md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v125, (v125 + 16)))
          {
            v125 += 16;
            v124 = 2 * v123 + 2;
          }

          v126 = &a1[16 * v123];
          if ((md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v125, v126) & 1) == 0)
          {
            v178 = *v126;
            *v126 = 0;
            *(v126 + 1) = 0;
            do
            {
              v127 = v125;
              v128 = *v125;
              *v125 = 0;
              *(v125 + 1) = 0;
              v129 = *(v126 + 1);
              *v126 = v128;
              if (v129)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v129);
              }

              if (v121 < v124)
              {
                break;
              }

              v125 = &a1[16 * ((2 * v124) | 1)];
              if (2 * v124 + 2 >= v9)
              {
                v124 = (2 * v124) | 1;
              }

              else if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v125, (v125 + 16)))
              {
                v125 += 16;
                v124 = 2 * v124 + 2;
              }

              else
              {
                v124 = (2 * v124) | 1;
              }

              v126 = v127;
            }

            while (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v125, &v178));
            v130 = v178;
            v178 = 0uLL;
            v131 = *(v127 + 1);
            *v127 = v130;
            if (v131)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v131);
            }

            if (*(&v178 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v178 + 1));
            }
          }
        }

        v122 = v123 - 1;
      }

      while (v123);
      v132 = v176;
      while (2)
      {
        v133 = 0;
        v134 = *a1;
        v177 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v135 = a1;
        do
        {
          v136 = &v135[16 * v133];
          v137 = (v136 + 16);
          v138 = (2 * v133) | 1;
          v139 = 2 * v133 + 2;
          if (v139 >= v9)
          {
            v133 = (2 * v133) | 1;
          }

          else
          {
            v140 = (v136 + 32);
            if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(v136 + 2), (v136 + 32)))
            {
              v137 = v140;
              v133 = v139;
            }

            else
            {
              v133 = v138;
            }
          }

          v141 = *v137;
          *v137 = 0;
          *(v137 + 8) = 0;
          v142 = *(v135 + 1);
          *v135 = v141;
          if (v142)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v142);
          }

          v135 = v137;
        }

        while (v133 <= ((v9 - 2) >> 1));
        if (v137 == v132 - 16)
        {
          v144 = v132 - 16;
          v155 = *(v137 + 8);
          *v137 = v134;
          *(v137 + 8) = v177;
          if (!v155)
          {
            goto LABEL_191;
          }
        }

        else
        {
          v143 = *(v132 - 1);
          *(v132 - 2) = 0;
          *(v132 - 1) = 0;
          v144 = v132 - 16;
          v145 = *(v137 + 8);
          *v137 = v143;
          if (v145)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v145);
          }

          v146 = *(v132 - 1);
          *(v132 - 2) = v134;
          *(v132 - 1) = v177;
          if (v146)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v146);
          }

          v147 = (v137 + 16 - a1) >> 4;
          v148 = v147 < 2;
          v149 = v147 - 2;
          if (v148)
          {
            goto LABEL_191;
          }

          v150 = v149 >> 1;
          v151 = &a1[16 * (v149 >> 1)];
          if (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v151, v137))
          {
            goto LABEL_191;
          }

          v178 = *v137;
          *v137 = 0;
          *(v137 + 8) = 0;
          do
          {
            v152 = v151;
            v153 = *v151;
            *v151 = 0;
            *(v151 + 1) = 0;
            v154 = *(v137 + 8);
            *v137 = v153;
            if (v154)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v154);
            }

            if (!v150)
            {
              break;
            }

            v150 = (v150 - 1) >> 1;
            v151 = &a1[16 * v150];
            v137 = v152;
          }

          while ((md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v151, &v178) & 1) != 0);
          v155 = *(v152 + 1);
          *v152 = v178;
          if (!v155)
          {
LABEL_191:
            v148 = v9-- <= 2;
            v132 = v144;
            if (v148)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v155);
      goto LABEL_191;
    }

    v11 = v9 >> 1;
    v12 = (v8 + 16 * (v9 >> 1));
    if (v9 >= 0x81)
    {
      v13 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v12, a1);
      v14 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v7, v12);
      if (v13)
      {
        v16 = a1 + 8;
        v15 = *a1;
        if (v14)
        {
          *a1 = *v7;
          goto LABEL_26;
        }

        v29 = *(a1 + 1);
        *a1 = *v12;
        v12[1] = v29;
        v16 = (v12 + 1);
        *v12 = v15;
        if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v7, v12))
        {
          v15 = *v12;
          *v12 = *v7;
LABEL_26:
          *v7 = v15;
          v23 = v170;
LABEL_27:
          v30 = *v16;
          *v16 = *v23;
          *v23 = v30;
        }
      }

      else if (v14)
      {
        v21 = *v12;
        *v12 = *v7;
        *v7 = v21;
        v23 = (v12 + 1);
        v22 = v12[1];
        v12[1] = *v170;
        *v170 = v22;
        if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v12, a1))
        {
          v24 = *a1;
          *a1 = *v12;
          v16 = a1 + 8;
          *v12 = v24;
          goto LABEL_27;
        }
      }

      v171 = a3;
      v31 = v12 - 2;
      v32 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(v12 - 2), (a1 + 16));
      v33 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(v176 - 4), (v12 - 2));
      v34 = v7;
      if (v32)
      {
        v35 = *(a1 + 2);
        v36 = a1 + 24;
        if (v33)
        {
          *(a1 + 2) = *(v176 - 4);
          goto LABEL_39;
        }

        v42 = *v36;
        *(a1 + 1) = *v31;
        *(v12 - 1) = v42;
        v36 = (v12 - 1);
        *v31 = v35;
        if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(v176 - 4), (v12 - 2)))
        {
          v35 = *v31;
          *v31 = *(v176 - 4);
LABEL_39:
          *(v176 - 4) = v35;
          v39 = v169;
LABEL_40:
          v43 = *v36;
          *v36 = *v39;
          *v39 = v43;
        }
      }

      else if (v33)
      {
        v37 = *v31;
        *v31 = *(v176 - 4);
        *(v176 - 4) = v37;
        v39 = (v12 - 1);
        v38 = *(v12 - 1);
        *(v12 - 1) = *(v176 - 3);
        *(v176 - 3) = v38;
        if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v31, (a1 + 16)))
        {
          v40 = *(a1 + 2);
          *(a1 + 2) = *v31;
          *v31 = v40;
          v36 = a1 + 24;
          goto LABEL_40;
        }
      }

      v44 = v11 + 1;
      v45 = &a1[16 * v11 + 16];
      v46 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v45, (a1 + 32));
      v47 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(v176 - 6), v45);
      if (v46)
      {
        v48 = *(a1 + 4);
        v49 = a1 + 40;
        if (v47)
        {
          *(a1 + 4) = *(v176 - 6);
          *(v176 - 6) = v48;
          goto LABEL_49;
        }

        v54 = *v49;
        *(a1 + 2) = *v45;
        v45[1] = v54;
        v49 = (v45 + 1);
        *v45 = v48;
        if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(v176 - 6), &a1[16 * v11 + 16]))
        {
          v55 = *v45;
          *v45 = *(v176 - 6);
          *(v176 - 6) = v55;
LABEL_49:
          v52 = v168;
LABEL_50:
          v56 = *v49;
          *v49 = *v52;
          *v52 = v56;
        }
      }

      else if (v47)
      {
        v50 = *v45;
        *v45 = *(v176 - 6);
        *(v176 - 6) = v50;
        v52 = (v45 + 1);
        v51 = v45[1];
        v45[1] = *(v176 - 5);
        *(v176 - 5) = v51;
        if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v45, (a1 + 32)))
        {
          v53 = *(a1 + 4);
          *(a1 + 4) = *v45;
          *v45 = v53;
          v49 = a1 + 40;
          goto LABEL_50;
        }
      }

      v57 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v12, (v12 - 2));
      v58 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v45, v12);
      if (v57)
      {
        v59 = *v31;
        a2 = v176;
        if (v58)
        {
          *v31 = *v45;
          *v45 = v59;
          v60 = v12 - 1;
          goto LABEL_59;
        }

        v64 = *v12;
        v12[1] = *(v12 - 1);
        *v12 = v59;
        *v31 = v64;
        if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v45, v12))
        {
          v65 = *v12;
          *v12 = *v45;
          *v45 = v65;
          v60 = v12 + 1;
LABEL_59:
          v66 = &a1[16 * v44];
          v67 = *v60;
          *v60 = *(v66 + 1);
          *(v66 + 1) = v67;
        }
      }

      else
      {
        a2 = v176;
        if (v58)
        {
          v61 = *v45;
          v62 = *v12;
          *v12 = *v45;
          *v45 = v62;
          if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v61, (v12 - 2)))
          {
            v63 = *v31;
            *v31 = *v12;
            v60 = v12 - 1;
            *v12 = v63;
            v44 = v11;
            goto LABEL_59;
          }
        }
      }

      v68 = *a1;
      *a1 = *v12;
      v20 = a1 + 8;
      *v12 = v68;
      v28 = (v12 + 1);
      v7 = v34;
      a3 = v171;
      goto LABEL_61;
    }

    v17 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a1, &a1[16 * (v9 >> 1)]);
    v18 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v7, a1);
    if (v17)
    {
      v20 = (v12 + 1);
      v19 = *v12;
      if (v18)
      {
        *v12 = *v7;
      }

      else
      {
        v41 = v12[1];
        *v12 = *a1;
        *(a1 + 1) = v41;
        v20 = a1 + 8;
        *a1 = v19;
        if (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v7, a1))
        {
          goto LABEL_62;
        }

        v19 = *a1;
        *a1 = *v7;
      }

      *v7 = v19;
      v28 = v170;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_62;
      }

      v25 = *a1;
      *a1 = *v7;
      *v7 = v25;
      v26 = *(a1 + 1);
      *(a1 + 1) = *v170;
      *v170 = v26;
      if (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*a1, v12))
      {
        goto LABEL_62;
      }

      v27 = *v12;
      *v12 = *a1;
      *a1 = v27;
      v20 = (v12 + 1);
      v28 = a1 + 8;
    }

LABEL_61:
    v69 = *v20;
    *v20 = *v28;
    *v28 = v69;
LABEL_62:
    --a3;
    if (a4 & 1) != 0 || (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(a1 - 2), a1))
    {
      v178 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      v70 = a1;
      do
      {
        v71 = *(v70 + 2);
        v70 += 16;
      }

      while ((md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v71, &v178) & 1) != 0);
      v72 = a2;
      if (v70 - 16 == a1)
      {
        v72 = a2;
        do
        {
          if (v70 >= v72)
          {
            break;
          }

          v74 = *(v72 - 2);
          v72 -= 16;
        }

        while ((md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v74, &v178) & 1) == 0);
      }

      else
      {
        do
        {
          v73 = *(v72 - 2);
          v72 -= 16;
        }

        while (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v73, &v178));
      }

      v8 = v70;
      if (v70 < v72)
      {
        v75 = v72;
        do
        {
          v76 = *v8;
          *v8 = *v75;
          *v75 = v76;
          v77 = *(v8 + 8);
          *(v8 + 8) = *(v75 + 1);
          *(v75 + 1) = v77;
          do
          {
            v78 = *(v8 + 16);
            v8 += 16;
          }

          while ((md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v78, &v178) & 1) != 0);
          do
          {
            v79 = *(v75 - 2);
            v75 -= 16;
          }

          while (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v79, &v178));
        }

        while (v8 < v75);
      }

      v80 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v81 = *v80;
        *v80 = 0;
        *(v8 - 8) = 0;
        v82 = *(a1 + 1);
        *a1 = v81;
        if (v82)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v82);
        }
      }

      v83 = v178;
      v178 = 0uLL;
      v84 = *(v8 - 8);
      *(v8 - 16) = v83;
      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v84);
      }

      if (*(&v178 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v178 + 1));
      }

      if (v70 < v72)
      {
        goto LABEL_88;
      }

      v85 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *>(a1, (v8 - 16));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *>(v8, a2))
      {
        a2 = (v8 - 16);
        if (v85)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v85)
      {
LABEL_88:
        std::__introsort<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *,false>(a1, (v8 - 16), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v86 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      v172 = v86;
      v87 = v86;
      if (md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v86, v7))
      {
        v8 = a1;
        do
        {
          v8 += 16;
        }

        while ((md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v87, v8) & 1) == 0);
      }

      else
      {
        v88 = a1 + 16;
        do
        {
          v8 = v88;
          if (v88 >= a2)
          {
            break;
          }

          v89 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v87, v88);
          v88 = (v8 + 16);
        }

        while (!v89);
      }

      v90 = a2;
      if (v8 < a2)
      {
        v90 = a2;
        do
        {
          v90 -= 16;
        }

        while ((md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v87, v90) & 1) != 0);
      }

      while (v8 < v90)
      {
        v91 = *v8;
        *v8 = *v90;
        *v90 = v91;
        v92 = *(v8 + 8);
        *(v8 + 8) = *(v90 + 1);
        *(v90 + 1) = v92;
        do
        {
          v8 += 16;
        }

        while (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v87, v8));
        do
        {
          v90 -= 16;
        }

        while ((md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(v87, v90) & 1) != 0);
      }

      v93 = (v8 - 16);
      if ((v8 - 16) != a1)
      {
        v94 = *v93;
        *v93 = 0;
        *(v8 - 8) = 0;
        v95 = *(a1 + 1);
        *a1 = v94;
        if (v95)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v95);
        }
      }

      a4 = 0;
      v96 = *(v8 - 8);
      *(v8 - 16) = v172;
      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v96);
        a4 = 0;
      }
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *,0>(v8, (v8 + 16), (v8 + 32), v7);
      return;
    }

    if (v9 == 5)
    {

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0 &,std::shared_ptr<md::TrafficIncidentLabelFeature> *,0>(v8, (v8 + 16), (v8 + 32), (v8 + 48), v7);
      return;
    }

    goto LABEL_9;
  }

  v101 = (v8 + 16);
  v102 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(v8 + 16), v8);
  v103 = md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v7, v8 + 16);
  if (v102)
  {
    v105 = (v8 + 8);
    v104 = *v8;
    if (v103)
    {
      *v8 = *v7;
    }

    else
    {
      v167 = *(v8 + 16);
      *(v8 + 24) = *(v8 + 8);
      v105 = (v8 + 24);
      *(v8 + 16) = v104;
      *v8 = v167;
      if (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*v7, v8 + 16))
      {
        return;
      }

      v104 = *v101;
      *v101 = *v7;
    }

    *v7 = v104;
  }

  else
  {
    if (!v103)
    {
      return;
    }

    v156 = *(v8 + 16);
    *(v8 + 16) = *v7;
    *v7 = v156;
    v157 = *(v8 + 24);
    *(v8 + 24) = *v170;
    *v170 = v157;
    if (!md::LabelNavTrafficSupport::setExternalTrafficFeatures(NSArray *,BOOL)::$_0::operator()(*(v8 + 16), v8))
    {
      return;
    }

    v158 = *v8;
    *v8 = *(v8 + 16);
    *(v8 + 16) = v158;
    v105 = (v8 + 8);
    v170 = (v8 + 24);
  }

  v99 = *v105;
  v100 = v170;
  *v105 = *v170;
LABEL_211:
  *v100 = v99;
}