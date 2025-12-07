void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UVsHandle>();
    *algn_1EB83B888 = 0xCBB77B1CBD05D7C5;
    qword_1EB83B890 = "md::ls::UVsHandle]";
    qword_1EB83B898 = 17;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ElevationHandle>();
    unk_1EB83D730 = 0xD443D3DCBB78491ALL;
    qword_1EB83D738 = "md::ls::ElevationHandle]";
    qword_1EB83D740 = 23;
  }
}

uint64_t std::__function::__func<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture *)> md::ita::disconnect_components<mre::GGLResourceStore,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture>(mre::GGLResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)#1},std::allocator<std::function<void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture *)> md::ita::disconnect_components<mre::GGLResourceStore,md::ls::RenderableAlbedoTexture,md::ls::TextureHandleForType<Flyover::NightTexture>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>,md::ls::UniqueMaterialAlbedoTexture,md::ls::UniqueMaterialEmissiveTexture,md::ls::UniqueMaterialDiffuseTexture>(mre::GGLResourceStore *)::{lambda(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)#1}>,void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture*,md::ls::TextureHandleForType<Flyover::NightTexture>*,md::ls::TextureHandleForType<Flyover::DiffuseTexture>*,md::ls::UniqueMaterialAlbedoTexture*,md::ls::UniqueMaterialEmissiveTexture*,md::ls::UniqueMaterialDiffuseTexture*)>::operator()(uint64_t result, uint64_t a2, uint64_t a3, const TextureHandle ***a4, const TextureHandle ***a5, const TextureHandle ***a6, const TextureHandle ***a7, const TextureHandle ***a8)
{
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v11 = *a7;
  v12 = *a8;
  v13 = *(result + 8);
  if (*a3)
  {
    result = mre::GGLResourceStore::disconnect(*(result + 8), *(*a3 + 16));
  }

  if (v8)
  {
    result = mre::GGLResourceStore::disconnect(v13, *v8);
  }

  if (v9)
  {
    result = mre::GGLResourceStore::disconnect(v13, *v9);
  }

  if (v10)
  {
    result = mre::GGLResourceStore::disconnect(v13, *v10);
  }

  if (v11)
  {
    result = mre::GGLResourceStore::disconnect(v13, *v11);
  }

  if (v12)
  {
    v14 = *v12;

    return mre::GGLResourceStore::disconnect(v13, v14);
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableAlbedoTexture>();
    *algn_1EB83C9E8 = 0x28D6AB85FDB5A2BLL;
    qword_1EB83C9F0 = "md::ls::RenderableAlbedoTexture]";
    qword_1EB83C9F8 = 31;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<Flyover::NightTexture>>();
    *algn_1EB83CDA8 = 0xD49B968135FE1A73;
    qword_1EB83CDB0 = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    qword_1EB83CDB8 = 51;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialDiffuseTexture>();
    *algn_1EB83BE18 = 0xCF2EB3C843EAD89ALL;
    qword_1EB83BE20 = "md::ls::UniqueMaterialDiffuseTexture]";
    qword_1EB83BE28 = 36;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>();
    unk_1EB83CD80 = 0xBAA35DF429A7267FLL;
    qword_1EB83CD88 = "md::ls::TextureHandleForType<Flyover::DiffuseTexture>]";
    qword_1EB83CD90 = 53;
  }
}

uint64_t mre::GGLResourceStore::releaseTexture(mre::GGLResourceStore *this, TextureHandle a2)
{
  isInternal = a2.isInternal;
  value = a2.var0.value;
  std::__shared_mutex_base::lock((this + 104));
  util::id_pool<mre::TextureHandle>::push(this + 648, value);
  if (isInternal)
  {
    v5 = (this + 800);
    v6 = ecs2::sparse_set<mre::TextureHandle,64ul>::find(this + 100, value);
    if (v6 != *(this + 105))
    {
      v7 = *(*(*(this + 107) + ((((v6 - *(this + 104)) >> 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (((v6 - *(this + 104)) >> 4) & 0x3F));
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = (this + 696);
    if (ecs2::sparse_set<mre::TextureHandle,64ul>::find(this + 87, value) != *(this + 92))
    {
LABEL_7:
      v9 = *(*(v5[1] + 8 * (value >> 6)) + 16 * (value & 0x3F) + 8);
      v10 = ((v5[5] - v5[4]) >> 4) - 1;
      v11 = v10 & 0x3F;
      v12 = v5[7];
      v13 = *(v12 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v14 = *(v12 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (v9 & 0x3F);
      v15 = *(v14 + 32);
      v16 = v13 + 40 * v11;
      v17 = *v14;
      v18 = *(v14 + 16);
      LOBYTE(v11) = *(v16 + 32);
      v19 = *(v16 + 16);
      *v14 = *v16;
      *(v14 + 16) = v19;
      *(v14 + 32) = v11;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(v16 + 32) = v15;
      ecs2::sparse_set<mre::TextureHandle,64ul>::erase(v5, value);
      v8 = 1;
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:
  std::__shared_mutex_base::unlock((this + 104));
  return v8;
}

void util::id_pool<mre::TextureHandle>::push(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 24);
  if (a2 < ((*(a1 + 32) - v4) >> 4))
  {
    v5 = (v4 + 16 * a2);
    v6 = *v5;
    if (!((*v5 ^ a2) >> 32))
    {
      v7[1] = v2;
      v7[2] = v3;
      v7[0] = a2;
      *v5 = v6 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100](a1, v7);
    }
  }
}

void *ecs2::sparse_set<mre::TextureHandle,64ul>::erase(void *result, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = result[1];
  if (v2 < (result[2] - v3) >> 3)
  {
    v4 = *(v3 + 8 * v2);
    if (v4)
    {
      if (*(v4 + 16 * (a2 & 0x3F)) == HIDWORD(a2))
      {
        return ecs2::sparse_set<mre::TextureHandle,64ul>::erase(result, (result[4] + 16 * *(v4 + 16 * (a2 & 0x3F) + 8)));
      }
    }
  }

  return result;
}

uint64_t ecs2::sparse_set<mre::TextureHandle,64ul>::erase(void *a1, void *a2)
{
  v2 = *(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3FLL);
  v3 = a1[5];
  v4 = a1[4] + 16 * *(v2 + 8);
  v5 = *(v3 - 16);
  *(v4 + 8) = *(v3 - 8);
  *v4 = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(*(a1[1] + 8 * (*(v7 - 16) >> 6)) + 16 * (*(v7 - 16) & 0x3FLL) + 8) = *(v2 + 8);
  a1[5] = v7 - 16;
  *v2 = xmmword_1B33B06D0;
  return v6;
}

uint64_t std::__function::__func<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_0,std::allocator<md::ita::DeletePendingDeletion::operator()(ecs2::Query<md::ls::PendingDeletion const&>,ecs2::Query<md::ls::RenderItemPendingDeletion const&>)::$_0>,void ()(md::ls::PendingDeletion const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v1 = *(a1 + 1);
  v2 = ecs2::ExecutionTaskContext::currentEntity(a1);
  v3 = *v1;

  return ecs2::ExecutionTaskContext::destroyEntity(v3, v2);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15PendingDeletionEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingDeletion>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingDeletion>(void)::metadata) = *(v3 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TexturesToDisconnectEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TexturesToDisconnect>(v3);
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
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *v17;
        v19 = *(v17 + 16);
        *v17 = 0;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *v17 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v16 = v18;
        *(v16 + 16) = v19;
        if (v18)
        {
          *(v16 + 8) = v18;
          operator delete(v18);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata) = *(v3 + 4096);
}

mdm::zone_mallocator *md::FontGlyphCache::updateQuads(mdm::zone_mallocator *result, void *a2, float a3, float a4, double a5, float a6)
{
  v6 = *(result + 1);
  if (*result == v6)
  {
    return result;
  }

  v12 = result;
  v13 = *a2;
  if (*(*a2 + 133) != 1)
  {
    v45 = *(v13 + 131);
    v46 = *(v13 + 132);
    v47 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    v49 = *(result + 4);
    v48 = *(result + 5);
    v50 = v48 - v49;
    v51 = (v48 - v49) >> 6;
    if (v47 <= v51)
    {
      if (v47 < v51)
      {
        *(result + 5) = v49 + (v47 << 6);
      }
    }

    else
    {
      v52 = v47 - v51;
      v53 = *(result + 6);
      if (v52 <= (v53 - v48) >> 6)
      {
        v69 = v48 + (v52 << 6);
        do
        {
          *(v48 + 32) = 0uLL;
          *(v48 + 48) = 0uLL;
          *v48 = 0uLL;
          *(v48 + 16) = 0uLL;
          *(v48 + 40) = 1065353216;
          *(v48 + 56) = 1065353216;
          v48 += 64;
        }

        while (v48 != v69);
        *(result + 5) = v69;
      }

      else
      {
        if (v47 >> 58)
        {
          goto LABEL_61;
        }

        v54 = v53 - v49;
        v55 = (v53 - v49) >> 5;
        if (v55 <= v47)
        {
          v55 = v47;
        }

        if (v54 >= 0x7FFFFFFFFFFFFFC0)
        {
          v56 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v56 = v55;
        }

        *(&v85 + 1) = result + 56;
        v57 = mdm::zone_mallocator::instance(result);
        v58 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TextQuad>(v57, v56);
        v59 = &v58[64 * v47];
        v60 = &v58[v50];
        do
        {
          *(v60 + 2) = 0uLL;
          *(v60 + 3) = 0uLL;
          *v60 = 0uLL;
          *(v60 + 1) = 0uLL;
          *(v60 + 10) = 1065353216;
          *(v60 + 14) = 1065353216;
          v60 += 64;
        }

        while (v60 != v59);
        v61 = *(v12 + 4);
        v62 = *(v12 + 5);
        v63 = &v58[v50 + v61 - v62];
        if (v62 != v61)
        {
          v64 = &v58[v50 + v61 - v62];
          do
          {
            v65 = *v61;
            v66 = *(v61 + 1);
            v67 = *(v61 + 3);
            *(v64 + 2) = *(v61 + 2);
            *(v64 + 3) = v67;
            *v64 = v65;
            *(v64 + 1) = v66;
            v64 += 64;
            v61 += 64;
          }

          while (v61 != v62);
          v61 = *(v12 + 4);
        }

        *(v12 + 4) = v63;
        *(v12 + 5) = v59;
        v68 = *(v12 + 6);
        *(v12 + 6) = &v58[64 * v56];
        *(&v84 + 1) = v61;
        *&v85 = v68;
        v83 = v61;
        *&v84 = v61;
        result = std::__split_buffer<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator> &>::~__split_buffer(&v83);
      }
    }

    v70 = *v12;
    v71 = *(v12 + 1);
    v72 = v71 - *v12;
    if (v71 == *v12)
    {
      return result;
    }

    v73 = 0;
    v74 = 0;
    v75 = 0xCCCCCCCCCCCCCCCDLL * (v72 >> 3);
    if (v75 <= 1)
    {
      v75 = 1;
    }

    v76 = (a2[11] + 8);
    v77 = (*(v12 + 4) + 56);
    v78 = 29;
    while (1)
    {
      v79 = v70 + v78;
      *(v79 + 7) = v73;
      *(v79 + 3) = a3;
      *v77 = 1065353216;
      *(v77 - 7) = v70 + v78 - 29;
      if (v45)
      {
        if (!v73)
        {
          goto LABEL_59;
        }
      }

      else if (!v46 || !v73 || (*(a2[7] + v78) & 1) == 0)
      {
        goto LABEL_59;
      }

      ++v74;
LABEL_59:
      v80 = (v74 * a4) + *(v76 - 1) * a5;
      v81 = *v76 * a6;
      ++v73;
      *(v77 - 3) = v80;
      *(v77 - 2) = v81;
      v78 += 40;
      v76 += 2;
      v77 += 16;
      if (v75 == v73)
      {
        return result;
      }
    }
  }

  v15 = a2[11];
  v14 = a2[12];
  v84 = 0u;
  v85 = 0u;
  v86 = 1065353216;
  v89 = 0;
  v16 = *(result + 4);
  *(result + 5) = v16;
  v17 = 0xCCCCCCCCCCCCCCCDLL * ((a2[8] - a2[7]) >> 3);
  if (v17 > (*(result + 6) - v16) >> 6)
  {
    if (!(v17 >> 58))
    {
      v91[4] = result + 56;
      v18 = mdm::zone_mallocator::instance(result);
      v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TextQuad>(v18, v17);
      v20 = *(v12 + 4);
      v21 = *(v12 + 5);
      v22 = &v19[v20 - v21];
      if (v20 != v21)
      {
        v23 = &v19[v20 - v21];
        do
        {
          v24 = *v20;
          v25 = *(v20 + 1);
          v26 = *(v20 + 3);
          *(v23 + 2) = *(v20 + 2);
          *(v23 + 3) = v26;
          *v23 = v24;
          *(v23 + 1) = v25;
          v23 += 64;
          v20 += 64;
        }

        while (v20 != v21);
        v20 = *(v12 + 4);
      }

      *(v12 + 4) = v22;
      *(v12 + 5) = v19;
      v27 = *(v12 + 6);
      *(v12 + 6) = &v19[64 * v17];
      v91[2] = v20;
      v91[3] = v27;
      v91[0] = v20;
      v91[1] = v20;
      result = std::__split_buffer<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator> &>::~__split_buffer(v91);
      goto LABEL_10;
    }

LABEL_61:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_10:
  if (v14 != v15)
  {
    v28 = 0;
    v29 = a6;
    v82 = a4;
    if (((v14 - v15) >> 4) <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = (v14 - v15) >> 4;
    }

    v31 = 0.0;
    do
    {
      v32 = a2[7] + 40 * v28;
      v33 = *v12 + 40 * v28;
      *(v33 + 36) = (*(v12 + 10) - *(v12 + 8)) >> 6;
      *(v33 + 32) = a3;
      v83 = v33;
      v34 = (a2[11] + 16 * v28);
      v35 = v31;
      v36 = v31 + *v34 * a5;
      v37 = v34[1] * v29;
      v87 = v36;
      v88 = v37;
      if (*(v32 + 30) == 1)
      {
        v38 = v82 * *(v32 + 20) * (1.0 / a5);
        if (v38 <= 0.0)
        {
          *(v33 + 38) = 0;
        }

        else
        {
          v39 = *(v32 + 16);
          v40 = vcvtps_u32_f32(v38 / (v39 * 1.2));
          if (v40 >= 0xFF)
          {
            v41 = 255;
          }

          else
          {
            v41 = v40;
          }

          v42 = v38 / v41;
          v90 = v42 / v39;
          if (v40)
          {
            v43 = v42 * a5;
            v44 = v41;
            do
            {
              result = std::vector<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator>>::push_back[abi:nn200100]((v12 + 32), &v83);
              v36 = v43 + v36;
              v87 = v36;
              --v44;
            }

            while (v44);
          }

          v31 = v35 + v38 * a5;
          *(v33 + 38) = v41;
        }
      }

      else
      {
        v90 = 1.0;
        result = std::vector<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator>>::push_back[abi:nn200100]((v12 + 32), &v83);
      }

      ++v28;
    }

    while (v28 != v30);
  }

  return result;
}

void md::HorizontalTextLabelPart::placeLines(mdm::zone_mallocator *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  v193[1] = *MEMORY[0x1E69E9840];
  v168 = a1;
  v6 = *(*a1 + 16);
  v166 = *(v6 + 126);
  if (*(a2 + 101) == 1)
  {
    *(a2 + 101) = 0;
    a2[1] = *a2;
    v7 = atomic_load((v6 + 130));
    if ((v7 & 1) == 0 || *(v6 + 56) == *(v6 + 64))
    {
      a2[11] = 0;
      *(a2 + 102) = 0;
      *(a2 + 104) = (*(a2 + 2) - *a2) >> 5;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *(a2 + 12);
      v11 = *(*a1 + 16);
      v12 = *(v11 + 56);
      v13 = *(v11 + 64);
      v14 = v11 + 56;
      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v12) >> 3);
      v16 = *(v14 + 70);
      v17 = v15 - 1;
      if (v10 && v15 > v10)
      {
        if (v15 - v10 < 3)
        {
          v9 = 0;
          v8 = 0;
        }

        else
        {
          if (*(v14 + 70))
          {
            v18 = 0;
          }

          else
          {
            v18 = v15 - v10;
          }

          if (*(v14 + 70))
          {
            v8 = v15 - v10;
          }

          else
          {
            v8 = 0;
          }

          v17 -= v18;
          v9 = 1;
          v15 = *(a2 + 12);
        }
      }

      *(a2 + 22) = v8 | ((v8 + v15) << 16);
      if (v15)
      {
        LODWORD(v15) = *(*(*a1 + 32) + 40 * v8 + 36) | ((*(*(*a1 + 32) + 40 * (v8 + v15) - 4) + *(*(*a1 + 32) + 40 * (v8 + v15) - 2)) << 16);
      }

      *(a2 + 23) = v15;
      if (v9)
      {
        LOBYTE(v9) = *(*a1 + 208);
      }

      v131 = 0;
      *(a2 + 102) = v9 & 1;
      v191 = 0uLL;
      v192 = 0;
      if (v8 <= v17)
      {
        v131 = 0;
        v132 = 40 * v8 + 32;
        v133 = v8;
        do
        {
          if ((*(*v14 + v132) & 0x10) != 0)
          {
            v134 = v8 - v133;
            v186.i8[8] = 0;
            v186.i64[0] = 0;
            if (v131 >= v192)
            {
              v135 = (v131 - v191) >> 5;
              if ((v135 + 1) >> 59)
              {
                goto LABEL_160;
              }

              v136 = (v192 - v191) >> 4;
              if (v136 <= v135 + 1)
              {
                v136 = v135 + 1;
              }

              if (v192 - v191 >= 0x7FFFFFFFFFFFFFE0)
              {
                v137 = 0x7FFFFFFFFFFFFFFLL;
              }

              else
              {
                v137 = v136;
              }

              v190 = v193;
              if (v137)
              {
                v138 = mdm::zone_mallocator::instance(a1);
                v139 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v138, v137);
              }

              else
              {
                v139 = 0;
              }

              v140 = &v139[32 * v135];
              v141 = &v139[32 * v137];
              *v140 = v133;
              *(v140 + 1) = v134;
              *(v140 + 2) = 0;
              v140[24] = 0;
              v131 = (v140 + 32);
              v142 = &v140[-(*(&v191 + 1) - v191)];
              memcpy(v142, v191, *(&v191 + 1) - v191);
              v143 = v191;
              v144 = v192;
              *&v191 = v142;
              *(&v191 + 1) = v131;
              v192 = v141;
              v188 = v143;
              v189 = v144;
              *&v187 = v143;
              *(&v187 + 1) = v143;
              a1 = std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(&v187);
            }

            else
            {
              *v131 = v133;
              *(v131 + 8) = v134;
              *(v131 + 16) = v186.i64[0];
              *(v131 + 24) = v186.i8[8];
              v131 += 32;
            }

            *(&v191 + 1) = v131;
            v133 = v8;
          }

          ++v8;
          v132 += 40;
        }

        while (v8 <= v17);
        v59 = v8 > v133;
        v145 = v8 - v133;
        if (v59)
        {
          v186.i8[8] = 0;
          v186.i64[0] = 0;
          if (v131 >= v192)
          {
            v146 = (v131 - v191) >> 5;
            if ((v146 + 1) >> 59)
            {
LABEL_160:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v147 = (v192 - v191) >> 4;
            if (v147 <= v146 + 1)
            {
              v147 = v146 + 1;
            }

            if (v192 - v191 >= 0x7FFFFFFFFFFFFFE0)
            {
              v148 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v148 = v147;
            }

            v190 = v193;
            if (v148)
            {
              v149 = mdm::zone_mallocator::instance(a1);
              v150 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::HorizontalTextLabelPart::LineInfo>(v149, v148);
            }

            else
            {
              v150 = 0;
            }

            v151 = &v150[32 * v146];
            v152 = &v150[32 * v148];
            *v151 = v133;
            *(v151 + 1) = v145;
            *(v151 + 2) = 0;
            v151[24] = 0;
            v131 = (v151 + 32);
            v153 = &v151[-(*(&v191 + 1) - v191)];
            memcpy(v153, v191, *(&v191 + 1) - v191);
            v154 = v191;
            v155 = v192;
            *&v191 = v153;
            *(&v191 + 1) = v131;
            v192 = v152;
            v188 = v154;
            v189 = v155;
            *&v187 = v154;
            *(&v187 + 1) = v154;
            std::__split_buffer<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator> &>::~__split_buffer(&v187);
          }

          else
          {
            *v131 = v133;
            *(v131 + 8) = v145;
            *(v131 + 16) = v186.i64[0];
            *(v131 + 24) = v186.i8[8];
            v131 += 32;
          }

          *(&v191 + 1) = v131;
        }
      }

      v156 = *(a2 + 11);
      v157 = v191;
      if (v156)
      {
        v4 = a3;
        if (v191 != v131)
        {
          do
          {
            md::HorizontalTextLabelPart::breakLine(v16, v156, v14, *v157, *(v157 + 8), a2);
            v157 += 32;
          }

          while (v157 != v131);
        }
      }

      else
      {
        v158 = *a2;
        *a2 = v191;
        a2[1] = v131;
        v191 = v158;
        v159 = a2[2];
        a2[2] = v192;
        v192 = v159;
        v4 = a3;
      }

      std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v191);
      v5 = a2;
      v160 = *(a2 + 102);
      *(a2 + 104) = (*(a2 + 2) - *a2) >> 5;
      if (v160)
      {
        v162 = (*v168 + 128);
        v161 = *v162;
        LOBYTE(v189) = 1;
        v163 = 0xCCCCCCCCCCCCCCCDLL * ((v162[1] - v161) >> 3);
        *&v187 = 0;
        *(&v187 + 1) = v163;
        v188 = 0;
        std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v187);
        v5 = a2;
        *(a2 + 48) = -13107 * ((*(v162 + 2) - *v162) >> 3);
        v4 = a3;
        goto LABEL_16;
      }
    }

    *(v5 + 48) = 0;
  }

LABEL_16:
  v19 = *(v5 + 104);
  if (*(v5 + 104))
  {
    v165 = v4;
    v20 = 0;
    v21 = 0;
    v22 = v19 - 1;
    v171 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v173 = v19 - 1;
    v169 = *(v5 + 104);
    do
    {
      v172 = v23;
      v29 = *v5 + 32 * v20;
      v30 = 32;
      if (*(v29 + 24))
      {
        v30 = 128;
      }

      if (*(v29 + 8))
      {
        v31 = 0;
        v32 = (*v168 + v30);
        v33 = -3.4028e38;
        v34 = 3.4028e38;
        v35 = 3.4028e38;
        v36 = -3.4028e38;
        v175 = v32;
        do
        {
          v37 = *v32 + 40 * *v29 + 40 * v31;
          v38 = *v37;
          if (*v37 && *(v38 + 62) == 1)
          {
            v180 = v27;
            v181 = v28;
            v182 = v26;
            v185 = v21;
            v178 = *(v38 + 48);
            v179 = *(v37 + 32);
            CapHeight = CGFontGetCapHeight(*(v38 + 16));
            v40 = *v37;
            UnitsPerEm = CGFontGetUnitsPerEm(*(*v37 + 16));
            v42 = *(*v37 + 36);
            v176 = *(v40 + 48);
            v177 = *(*v37 + 44);
            Ascent = CGFontGetAscent(*(*v37 + 16));
            v44 = *v37;
            v45 = CGFontGetUnitsPerEm(*(*v37 + 16));
            v46 = *(v44 + 48);
            Descent = CGFontGetDescent(*(*v37 + 16));
            v48 = *v37;
            v49 = CGFontGetUnitsPerEm(*(*v37 + 16));
            v50 = v179 / v178;
            v51.f32[0] = (v176 * CapHeight) / UnitsPerEm;
            v51.i32[1] = fmaxf(v177 - v51.f32[0], 0.0);
            v21 = vmaxnm_f32(v185, vmul_n_f32(v51, v179 / v178));
            v26 = fmaxf(v182, fmaxf(-v42, 0.0) * (v179 / v178));
            v27 = fmaxf(v180, (((v179 / v178) * Ascent) * v46) / v45);
            v28 = fmaxf(v181, (((v179 / v178) * Descent) * *(v48 + 48)) / v49);
            v52 = *(v37 + 38);
            if (*(v37 + 38))
            {
              v22 = v173;
              v32 = v175;
              v53 = *(*v37 + 36) * v50;
              v54 = *(*v37 + 44) * v50;
              v55 = (v175[4] + (*(v37 + 36) << 6) + 56);
              do
              {
                v56 = *v55 * v50;
                v57 = *(v55 - 3);
                v58 = *(v55 - 2);
                v34 = fminf(v57 + (*(*v37 + 32) * v56), v34);
                v33 = fmaxf(v33, v57 + (*(*v37 + 40) * v56));
                v35 = fminf(v53 + v58, v35);
                v36 = fmaxf(v36, v54 + v58);
                if (v20 == 0 && v24 < (v54 + v58))
                {
                  v24 = v54 + v58;
                }

                if (v20 == v173 && (v53 + v58) < v25)
                {
                  v25 = v53 + v58;
                }

                v55 += 16;
                --v52;
              }

              while (v52);
            }

            else
            {
              v22 = v173;
              v32 = v175;
            }
          }

          ++v31;
        }

        while (v31 < *(v29 + 8));
      }

      else
      {
        v35 = 3.4028e38;
        v36 = -3.4028e38;
        v33 = -3.4028e38;
        v34 = 3.4028e38;
      }

      v5 = a2;
      if (v20 == v22 && (*(a2 + 102) == 1 ? (v59 = v34 <= v33) : (v59 = 0), v59))
      {
        v60 = *(*v168 + 160);
        v61 = *(*v168 + 168);
        if (v60 == v61)
        {
          goto LABEL_53;
        }

        v62 = -3.4028e38;
        v63 = 3.4028e38;
        do
        {
          v64 = **v60;
          if (v64 && *(v64 + 62) == 1)
          {
            v65 = v60[12];
            v66 = *(*v60 + 32) / *(v64 + 48);
            if (!v20)
            {
              v24 = fmaxf(v24, v65 + (*(v64 + 44) * v66));
            }

            v67 = v66 * v60[14];
            v68 = v60[11];
            v63 = fminf(v68 + (*(v64 + 32) * v67), v63);
            v62 = fmaxf(v62, v68 + (*(v64 + 40) * v67));
            v25 = fminf(v65 + (*(v64 + 36) * v66), v25);
          }

          v60 += 16;
        }

        while (v60 != v61);
        if (v63 > v62)
        {
LABEL_53:
          v19 = v169;
          *(v29 + 16) = v34;
          *(v29 + 20) = v33;
        }

        else
        {
          v69 = v33 - v34;
          v70 = v62 - v63;
          v71 = a2[1];
          if (v166)
          {
            *(v29 + 16) = v34 - v70;
            *(v29 + 20) = v33;
            v62 = v62 + v69;
          }

          else
          {
            *(v29 + 16) = v34;
            *(v29 + 20) = v70 + v33;
            v63 = v63 - v69;
          }

          *(v71 - 16) = v63;
          *(v71 - 12) = v62;
          v19 = v169;
        }

        v171 = fmaxf(v171, *(v29 + 20) - *(v29 + 16));
      }

      else
      {
        if (v34 <= v33)
        {
          *(v29 + 16) = v34;
          *(v29 + 20) = v33;
          v171 = fmaxf(v171, v33 - v34);
        }

        v19 = v169;
      }

      v23 = fmaxf(v172, v36 - v35);
      ++v20;
    }

    while (v20 != v19);
    v72 = v23;
    v73 = v26;
    v74 = v21;
    v4 = v165;
  }

  else
  {
    v74 = 0;
    v173 = -1;
    v25 = 0.0;
    v28 = 0.0;
    v27 = 0.0;
    v73 = 0.0;
    v24 = 0.0;
    v72 = 0.0;
    v171 = 0.0;
  }

  v75 = *(v4 + 176);
  v76 = *(v5 + 8);
  *(v5 + 20) = fmaxf(v27 - fmaxf(v24, 0.0), 0.0);
  *(v5 + 21) = fmaxf(fminf(v25, 0.0) + v28, 0.0);
  v187 = xmmword_1B33B0730;
  md::CollisionObject::resetWithRects(a4, v19);
  v77 = *a2;
  v78 = a2[1];
  if (v78 == *a2)
  {
    v84 = 0.0;
    v88 = 0.0;
    goto LABEL_111;
  }

  v79 = 0;
  v80 = 0;
  v81 = fmaxf(v75 + v72, v76);
  v82 = v173;
  v83 = -(v25 + (((v24 + (v81 * v173)) - v25) * 0.5));
  v84 = 0.0;
  v85 = -0.5;
  v86 = 0.5;
  v87 = xmmword_1B33B0870;
  v88 = 0.0;
  while (2)
  {
    v89 = (v78 - v77) >> 5;
    v90 = v77 + 32 * v80;
    while (1)
    {
      v91 = *(v90 + 16);
      v92 = *(v90 + 20);
      if (v91 != v92)
      {
        break;
      }

      ++v80;
      v90 += 32;
      if (v80 >= v89)
      {
        if ((v79 & 1) == 0)
        {
          goto LABEL_111;
        }

        goto LABEL_109;
      }
    }

    v93 = v92 - v91;
    v94.f32[0] = (v92 + v91) * v85;
    if (v82 >= v80)
    {
      v95 = v82 - v80;
    }

    else
    {
      v95 = 0;
    }

    v96 = *(a2 + 100);
    v174 = v82;
    v183 = v78;
    if (v96 == 2)
    {
      v97 = v171 - v93;
      goto LABEL_75;
    }

    if (v96 == 1)
    {
      v97 = v93 - v171;
LABEL_75:
      v94.f32[0] = v94.f32[0] + (v97 * v86);
    }

    v191 = xmmword_1B33B0730;
    v98 = *(v90 + 8);
    if (v98)
    {
      v99 = 0;
      v100 = v83 + (v81 * v95);
      v101 = *(v90 + 24);
      v102 = 128;
      if (!*(v90 + 24))
      {
        v102 = 32;
      }

      v103 = (*v168 + v102);
      v104 = *v103 + 40 * *v90;
      v94.f32[1] = v100;
      do
      {
        v105 = v104 + 40 * v99;
        v106 = *v105;
        if (*v105)
        {
          if (v106[3].i8[14] == 1)
          {
            v107 = *(v105 + 38);
            if (*(v105 + 38))
            {
              v108 = 0;
              v109 = v103[4] + (*(v105 + 36) << 6);
              do
              {
                v110 = 0;
                v111 = v108 << 6;
                v112 = v109 + (v108 << 6);
                *v113.f32 = vadd_f32(*(v112 + 44), v94);
                *(v109 + 20 + v111) = v87;
                *(v109 + 36 + v111) = 1065353216;
                *(v112 + 8) = v113.i64[0];
                v113.i64[1] = v113.i64[0];
                v114 = vmlaq_n_f32(v113, v106[2], *(v105 + 32) / v106[3].f32[0]);
                v186 = v114;
                v115 = &v191;
                v116 = &v186;
                v117 = 1;
                do
                {
                  v118 = v117;
                  v119 = *v116;
                  v120 = *v115;
                  *(&v191 + v110 + 2) = fmaxf(*(&v191 + v110 + 2), v186.f32[v110 + 2]);
                  *v115 = fminf(v119, v120);
                  v116 = &v186.f32[1];
                  v115 = &v191 + 1;
                  v110 = 1;
                  v117 = 0;
                }

                while ((v118 & 1) != 0);
                if (v99 == v98 - 1)
                {
                  v121 = v114.f32[3];
                }

                else
                {
                  v121 = v88;
                }

                if (!v99)
                {
                  v121 = v88;
                }

                if (!v80)
                {
                  v88 = v121;
                }

                if (!(v80 | v99))
                {
                  v84 = v114.f32[3];
                }

                ++v108;
              }

              while (v108 != v107);
            }
          }
        }

        ++v99;
      }

      while (v99 != v98);
    }

    else
    {
      v101 = *(v90 + 24);
    }

    if ((v79 & v101) == 1)
    {
      v122 = 0;
      v123 = &v187;
      v124 = &v191;
      v125 = 1;
      do
      {
        v126 = v125;
        v127 = *v124;
        v128 = *v123;
        *(&v187 + v122 + 2) = fmaxf(*(&v187 + v122 + 2), *(&v191 + v122 + 2));
        *v123 = fminf(v127, v128);
        v124 = &v191 + 1;
        v123 = &v187 + 1;
        v122 = 1;
        v125 = 0;
      }

      while ((v126 & 1) != 0);
      v78 = v183;
    }

    else
    {
      v78 = v183;
      if (v79)
      {
        v184 = v87;
        md::CollisionObject::addRect(a4, &v187);
        v87 = v184;
        v86 = 0.5;
        v85 = -0.5;
        v77 = *a2;
        v78 = a2[1];
      }

      v187 = v191;
      v89 = (v78 - v77) >> 5;
    }

    v82 = v174;
    ++v80;
    v79 = 1;
    if (v80 < v89)
    {
      continue;
    }

    break;
  }

LABEL_109:
  md::CollisionObject::addRect(a4, &v187);
LABEL_111:
  *(a2 + 68) = v74;
  *(a2 + 19) = v73;
  *(a2 + 16) = v171;
  v129 = *(a4 + 12) - v84;
  if (v84 == 0.0)
  {
    v129 = v84;
  }

  *(a2 + 13) = v129;
  v130 = *(a4 + 12) - v88;
  if (v88 == 0.0)
  {
    v130 = v88;
  }

  *(a2 + 14) = v130;
  *(a2 + 15) = -v25;
}

void sub_1B2BC0918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::OcclusionTest::generateAntennaeTest(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = **(a1 + 8);
  v9 = 3 * v8;
  md::OcclusionQueryResource::initialize((*(a3 + 96) + 24 * v8));
  v10 = 0;
  v11 = (*(a3 + 96) + 8 * v9);
  *(*v11 + 24) = *(a3 + 48);
  v12 = *(a1 + 80);
  do
  {
    *(&v42 + v10) = *(v12 + v10) - *(a4 + 136 + v10);
    v10 += 8;
  }

  while (v10 != 24);
  for (i = 0; i != 3; ++i)
  {
    v14 = *(&v42 + i);
    *(&v51 + i) = v14;
  }

  v15 = 1.0;
  if (a2[284] != 4)
  {
    v16 = a2[283];
    if ((v16 - 7) >= 3)
    {
      if (v16 == 1)
      {
        v15 = 2.0;
        if ((*(a1 + 236) & 1) == 0)
        {
          if (*(a3 + 29))
          {
            v15 = 10.0;
          }

          else
          {
            v15 = 20.0;
          }
        }
      }

      else if (v16 == 14)
      {
        v15 = 2.0;
      }

      else
      {
        v15 = 5.0;
      }
    }
  }

  v17 = 0.0;
  if (a2[281] == 2)
  {
    v17 = *(a1 + 232);
  }

  v18 = v17 + v15;
  if (v15 < 5.0)
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(&v51 + v19) * *(&v51 + v19));
      v19 += 4;
    }

    while (v19 != 12);
    v21 = sqrtf(v20) * 0.00025 / *(a3 + 8);
    v22 = fmaxf(fminf(v21, 4.0), 1.0);
    v15 = v22 * v15;
    v18 = v22 * v18;
  }

  if (*(a3 + 28) == 1)
  {
    v23 = gm::Matrix<double,3,1>::normalized<int,void>(v12);
    v24 = 0;
    v48 = v23;
    v49 = v25;
    v50 = v26;
    do
    {
      *(&v42 + v24) = *(&v48 + v24) * v15;
      v24 += 8;
    }

    while (v24 != 24);
    for (j = 0; j != 3; ++j)
    {
      v28 = *(&v42 + j);
      *(&v46 + j) = v28;
    }

    for (k = 0; k != 24; k += 8)
    {
      *(&v42 + k) = *(&v48 + k) * v18;
    }

    for (m = 0; m != 3; ++m)
    {
      v31 = *(&v42 + m);
      *(&v44 + m) = v31;
    }
  }

  else
  {
    v32 = *(a3 + 8);
    v33 = v32 * v15;
    v46 = 0;
    v47 = v33;
    v34 = v32 * v18;
    v44 = 0;
    v45 = v34;
  }

  if (v15 == v18)
  {
    v35 = 2;
  }

  else
  {
    v35 = 3;
  }

  ggl::BufferData::resize(**(v11[2] + 64), v35);
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(&v42, **(v11[2] + 64), 0, v35);
  v36 = 0;
  v37 = v52;
  v38 = v43;
  *v43 = v51;
  *(v38 + 2) = v37;
  *(v38 + 3) = 1065353216;
  do
  {
    *(&v48 + v36) = *(&v46 + v36) + *(&v51 + v36);
    v36 += 4;
  }

  while (v36 != 12);
  v39 = v49;
  *(v38 + 2) = v48;
  *(v38 + 6) = v39;
  *(v38 + 7) = 1065353216;
  if (v15 != v18)
  {
    for (n = 0; n != 12; n += 4)
    {
      *(&v48 + n) = *(&v44 + n) + *(&v51 + n);
    }

    v41 = v49;
    *(v38 + 4) = v48;
    *(v38 + 10) = v41;
    *(v38 + 11) = 1065353216;
  }

  ggl::BufferMemory::~BufferMemory(&v42);
}

void md::OcclusionQueryResource::initialize(md::OcclusionQueryResource *this)
{
  if (!*(this + 2))
  {
    operator new();
  }
}

void std::__shared_ptr_emplace<ggl::Buffer,geo::allocator_adapter<ggl::Buffer,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::TextureRect::TextureVBO>,ggl::zone_mallocator>>>(v2, a1);
}

void ggl::MetalResourceManager::deleteResource(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 9);
  if (v4 <= 3)
  {
    if (*(a2 + 9) <= 1u)
    {
      if (*(a2 + 9))
      {
        v5 = *(a2 + 32);
        for (i = *(a2 + 40); i != v5; i -= 8)
        {
          v7 = *(i - 8);
        }

        *(a2 + 40) = v5;
      }

      else
      {
        v11 = *(a2 + 32);
        *(a2 + 32) = 0;

        atomic_fetch_add((a1 + 312), 0xFFFFFFFF);
      }

      goto LABEL_18;
    }

    if (v4 != 2 && v4 != 3)
    {
      goto LABEL_19;
    }
  }

  else if (*(a2 + 9) <= 5u)
  {
    if (v4 != 4 && v4 != 5)
    {
      goto LABEL_19;
    }
  }

  else if (v4 != 6 && v4 != 7 && v4 != 9)
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 32);
  *(a2 + 32) = 0;

LABEL_18:
  v4 = *(a2 + 9);
LABEL_19:
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        v9 = "PipelineState";
        v10 = 0x28DAD03E0000000DLL;
      }

      else
      {
        v9 = "ComputePipelineState";
        v10 = 0xCB8C155300000014;
      }
    }

    else
    {
      switch(v4)
      {
        case 7:
          v9 = "DepthStencilState";
          v10 = 0x38AB5BF400000011;
          break;
        case 8:
          v9 = "Drawable";
          v10 = 0x7010C0800000008;
          break;
        case 9:
          v9 = "RasterizationRateMap";
          v10 = 0x62578FE100000014;
          break;
        default:
          v9 = "Uknown";
          v10 = 0x5165D1F800000006;
          break;
      }
    }
  }

  else if (v4 <= 1)
  {
    if (v4)
    {
      v9 = "Texture";
      v10 = 0x4DDB34EE00000007;
    }

    else
    {
      v9 = "Buffer";
      v10 = 0x36F6F5C400000006;
    }
  }

  else if (v4 == 2)
  {
    v9 = "SamplerState";
    v10 = 0xC9803BE00000000CLL;
  }

  else if (v4 == 3)
  {
    v9 = "Library";
    v10 = 0x6E3DA12000000007;
  }

  else
  {
    v9 = "Function";
    v10 = 0x33D8746B00000008;
  }

  v12 = *(a2 + 24);
  v18[0] = v9;
  v18[1] = v10;
  std::mutex::lock((a1 + 192));
  v13 = std::__hash_table<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::__unordered_map_hasher<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::hash<geo::StringLiteral>,std::equal_to<geo::StringLiteral>,true>,std::__unordered_map_equal<geo::StringLiteral,std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>,std::equal_to<geo::StringLiteral>,std::hash<geo::StringLiteral>,true>,std::allocator<std::__hash_value_type<geo::StringLiteral,std::vector<md::FrameGraphLogicalResource *>>>>::find<geo::StringLiteral>((a1 + 152), v18);
  if (v13)
  {
    --v13[4];
    if (v12)
    {
      v13[5] -= v12;
    }
  }

  std::mutex::unlock((a1 + 192));
  if (*(a2 + 9) == 1)
  {
    for (j = 112; j != 64; j -= 16)
    {
      v16 = *(a2 + j);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }
    }

    v18[0] = (a2 + 32);
    std::vector<NSObject  {objcproto10MTLTexture}* {__strong},geo::allocator_adapter<NSObject  {objcproto10MTLTexture}* {__strong},ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v18);
  }

  v17 = ggl::zone_mallocator::instance(v14);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v17, a2);
}

void md::RouteRenderLayer::setElevatedRoutelineMatrix(md::LayoutContext *a1, uint64_t *a2)
{
  v4 = md::LayoutContext::cameraType(a1);
  v5 = gdc::ToCoordinateSystem(v4);
  v6 = *(*a2 + 160);
  if (v6)
  {
    objc_msgSend_bounds(v6);
  }

  else
  {
    memset(v33, 0, sizeof(v33));
    v32 = 0u;
  }

  v7 = v33[0].f64[0];
  if (v5)
  {
    v8 = v33[1].f64[1];
  }

  else
  {
    v7 = v33[0].f64[0] * 0.0000000249532021;
    v8 = v33[1].f64[1] * 0.0000000249532021;
    v33[0].f64[0] = v33[0].f64[0] * 0.0000000249532021;
    v33[1].f64[1] = v33[1].f64[1] * 0.0000000249532021;
  }

  v9 = *(a1 + 1);
  v10 = md::LayoutContext::get<md::ElevationContext>(v9);
  v11 = (v10[4] * v10[5]);
  v12 = v7 * v11;
  v13 = v8 * v11;
  v33[0].f64[0] = v12;
  v33[1].f64[1] = v13;
  v31[0] = v32;
  v31[1] = *(v33 + 8);
  if (v5)
  {
    v35[0] = v32;
    v35[1] = *(v33 + 8);
    gdc::GlobeTileUtils::boundsFromMercatorRect(v34, v35, v12, v13);
    geo::OrientedBox<double,3u,double,double>::toMatrix(v21, v34);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v24 = 0u;
    v22 = 0u;
    *&v21[1] = 0u;
    v30 = 0x3FF0000000000000;
    v14 = vsubq_f64(*(v33 + 8), v32);
    v21[0] = *&v14.f64[0];
    v23 = *&v14.f64[1];
    v26 = v13 - v12;
    v28 = v32;
    v29 = v12;
  }

  v15 = 0;
  v16 = *a2;
  do
  {
    *(v16 + v15 * 8 + 8) = *&v21[v15];
    v15 += 2;
  }

  while (v15 != 16);
  v17 = md::LayoutContext::get<md::NavigationContext>(v9);
  if (v17)
  {
    v18 = v17[22];
  }

  else
  {
    v18 = 0.0;
  }

  v19 = *(v16 + 232);
  if (!v19)
  {
    md::GeometryLogic::createUnitTransformConstantData(v21);
  }

  v20 = *(v16 + 240);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::GeometryLogic::setTransformConstantDataWithMercatorRect(v19, v31, v5, v33[0].f64[0], v33[1].f64[1], v18);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }
}

void sub_1B2BC137C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void md::GeometryLogic::setTransformConstantDataWithMercatorRect(uint64_t a1, double *a2, char a3, double a4, double a5, float a6)
{
  if (a3)
  {
    gdc::GlobeTileUtils::createSplinePatchFromMercatorRect(v79, a2, a4, a5);
    ggl::ConstantDataTyped<ggl::Grid::Style>::write(v77, a1);
    v11 = 0;
    v12 = &v78[5] + 1;
    do
    {
      v13 = *&v79[v11 + 8];
      *(v12 - 3) = *&v79[v11];
      *(v12 - 1) = v13;
      *v12 = 1065353216;
      v12 += 4;
      v11 += 12;
    }

    while (v11 != 192);
    v14 = a2[1];
    v15 = a2[3];
    v16 = exp(v14 * 6.28318531 + -3.14159265);
    v17 = atan(v16);
    v18 = v17 + v17;
    v19 = v17 + v17 + -1.57079633;
    v20 = exp(v15 * 6.28318531 + -3.14159265);
    v21 = atan(v20);
    v22 = 0;
    v23 = v21 + v21;
    v24 = v23 + -1.57079633;
    v25 = v14;
    v26 = v15 - v14;
    v27 = 1.0 / (v23 - v18);
    do
    {
      v28 = v22 * 0.142857143;
      v75[v22] = v28;
      v29 = 0.0;
      if (v19 != v24)
      {
        v30 = v28;
        v31 = exp((v25 + v26 * v30) * 6.28318531 + -3.14159265);
        v32 = (fmin(v24, fmax(v19, atan(v31) * 2.0 + -1.57079633)) - v19) * v27;
        v29 = v32;
      }

      *&v81[v22++] = v29;
    }

    while (v22 != 8);
    gm::_polyFit<double>(v75, v81, v85);
    v33 = vcvt_f32_f64(*&v85[8]);
    v34 = 1.0 - vaddvq_f64(*&v85[8]);
    v35 = v78;
    v78->i32[0] = 0;
    *(v35 + 4) = v33;
    v35[1].f32[1] = v34;
    v36 = +[VKDebugSettings sharedSettings];
    if ([v36 daVinciGlobeScalingCorrection])
    {
      v37 = 0;
      v38 = a2[1];
      v39 = a2[3] - v38;
      do
      {
        v40 = v37 * 0.14286;
        *(v75 + v37) = v40;
        v41 = cosh((v38 + v39 * v40) * 6.28318531 + -3.14159265);
        *(v81 + v37++) = v41;
      }

      while (v37 != 8);
      gm::_polyFit<float>(v75, v81, v85);
      v42 = a6;
      v44 = a5;
      v43 = a4;
      v45 = *v85;
      v46 = *&v85[8];
    }

    else
    {
      v45 = 1065353216;
      v46 = 0;
      v42 = a6;
      v44 = a5;
      v43 = a4;
    }

    v56 = v78;
    v78[2] = v45;
    v56[3].i32[0] = v46;

    gdc::GlobeTileUtils::boundsFromMercatorRect(v75, a2, v43, v44);
    v57 = 1.0 / (v76[5] - v76[2]);
    v58 = v78;
    __asm { FMOV            V2.2S, #1.0 }

    v60.f64[0] = v42 + v43;
    v60.f64[1] = v44 - v43;
    v78[42] = vcvt_f32_f64(vmulq_n_f64(v60, v57));
    v58[43] = _D2;
    geo::RigidTransform<double,double>::inverse(v81, v75);
    memset(v74, 0, sizeof(v74));
    *v85 = v82;
    *&v85[16] = v83;
    v86 = v84;
    v61 = gm::Quaternion<double>::operator*(v85, v74);
    v62 = 0;
    *v87 = v61;
    v87[1] = v63;
    v87[2] = v64;
    do
    {
      *(&v88 + v62 * 8) = *&v87[v62] + *&v81[v62];
      ++v62;
    }

    while (v62 != 3);
    *v85 = v88;
    *&v85[16] = v89;
    v65 = gm::Box<double,3>::invLerped(v76, v85);
    v66 = 0;
    *v81 = v65;
    v81[1] = v67;
    v81[2] = v68;
    do
    {
      v69 = *&v81[v66];
      *(&v88 + v66++) = v69;
    }

    while (v66 != 3);
    v70 = DWORD2(v88);
    v58[36] = v88;
    v58[37].i32[0] = v70;
    v58[37].i32[1] = 1065353216;
    v55 = v77;
  }

  else
  {
    ggl::ConstantDataTyped<ggl::Grid::Style>::write(v79, a1);
    v47 = a5 - a4;
    if (a5 - a4 == 0.0)
    {
      v47 = 1.0;
    }

    v48 = v80;
    v49 = a6 * 0.0000000249532021 / v47;
    *(v80 + 336) = v49;
    *(v48 + 340) = 1065353216;
    __asm { FMOV            V0.2S, #1.0 }

    *(v48 + 344) = _D0;
    v55 = v79;
  }

  ggl::BufferMemory::~BufferMemory(v55);
}

void sub_1B2BC17C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  ggl::BufferMemory::~BufferMemory(va);
  _Unwind_Resume(a1);
}

void md::release_data_for_handle(void *a1, unint64_t *a2)
{
  v4 = a1[33];
  if (v4)
  {
    v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
    v6 = *(*(a1[19] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8 * (v5 & 0x3F));
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v4);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= *&v4)
      {
        v11 = v9 % *&v4;
      }
    }

    else
    {
      v11 = v9 & (*&v4 - 1);
    }

    v12 = a1[32];
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *&v4 - 1;
        do
        {
          v16 = v14[1];
          if (v16 == v9)
          {
            if (v14[2] == v6)
            {
              v17 = v14[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v17 >= *&v4)
                {
                  v17 %= *&v4;
                }
              }

              else
              {
                v17 &= v15;
              }

              v18 = *(v12 + 8 * v17);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v14);
              if (v19 == a1 + 34)
              {
                goto LABEL_36;
              }

              v20 = v19[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v20 >= *&v4)
                {
                  v20 %= *&v4;
                }
              }

              else
              {
                v20 &= v15;
              }

              if (v20 != v17)
              {
LABEL_36:
                if (!*v14)
                {
                  goto LABEL_37;
                }

                v21 = *(*v14 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v21 >= *&v4)
                  {
                    v21 %= *&v4;
                  }
                }

                else
                {
                  v21 &= v15;
                }

                if (v21 != v17)
                {
LABEL_37:
                  *(v12 + 8 * v17) = 0;
                }
              }

              v22 = *v14;
              if (*v14)
              {
                v23 = *(v22 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v23 >= *&v4)
                  {
                    v23 %= *&v4;
                  }
                }

                else
                {
                  v23 &= v15;
                }

                if (v23 != v17)
                {
                  *(a1[32] + 8 * v23) = v19;
                  v22 = *v14;
                }
              }

              *v19 = v22;
              *v14 = 0;
              --a1[35];
              operator delete(v14);
              v25 = a1[38];
              v24 = a1[39];
              if (v25 >= v24)
              {
                v27 = a1[37];
                v28 = v25 - v27;
                v29 = (v25 - v27) >> 3;
                v30 = v29 + 1;
                if ((v29 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v31 = v24 - v27;
                if (v31 >> 2 > v30)
                {
                  v30 = v31 >> 2;
                }

                if (v31 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v32 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v32 = v30;
                }

                if (v32)
                {
                  if (!(v32 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v33 = (v25 - v27) >> 3;
                v34 = (8 * v29);
                v35 = (8 * v29 - 8 * v33);
                *v34 = v6;
                v26 = v34 + 1;
                memcpy(v35, v27, v28);
                a1[37] = v35;
                a1[38] = v26;
                a1[39] = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              else
              {
                *v25 = v6;
                v26 = v25 + 8;
              }

              a1[38] = v26;
              break;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v16 >= *&v4)
              {
                v16 %= *&v4;
              }
            }

            else
            {
              v16 &= v15;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::erase(a1, a2);
  v36 = *a2;

  util::id_pool<geo::handle<md::AssociationItem>>::push((a1 + 26), v36);
}

{
  ecs2::group_storage<geo::handle<md::AssociationItem>,md::Counter,md::AssociationItemStorage>::erase(a1, a2);
  v4 = *a2;

  util::id_pool<geo::handle<md::AssociationItem>>::push((a1 + 20), v4);
}

{
  ecs2::group_storage<geo::handle<md::BaseMapTileDataRenderableItem>,md::Counter,md::BaseMapTileDataRenderableStorage>::erase(a1, a2);
  v4 = *a2;

  util::id_pool<geo::handle<md::AssociationItem>>::push((a1 + 20), v4);
}

{
  v4 = a1[7];
  v5 = (*(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = 3 * (*(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL);
  v7 = *(v4 + v5) + 24 * (*(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL);
  v8 = ((a1[5] - a1[4]) >> 3) - 1;
  v9 = *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v8 & 0x3F);
  v10 = *v7;
  v11 = *(v7 + 16);
  v12 = *(v9 + 16);
  *v7 = *v9;
  *(v7 + 16) = v12;
  *(v9 + 16) = v11;
  *v9 = v10;
  v13 = a1[13];
  v14 = *(v13 + v5) + 8 * v6;
  v15 = ((a1[5] - a1[4]) >> 3) - 1;
  v16 = *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
  v17 = *v14;
  v18 = *(v14 + 16);
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = *v16;
  v19 = *(v16 + 8);
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v20 = *(v14 + 16);
  *(v14 + 8) = v19;
  if (v20)
  {
    v28 = v17;
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    v17 = v28;
  }

  *v16 = v17;
  v21 = *(v16 + 16);
  *(v16 + 16) = v18;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    v18 = *(v16 + 16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v22 = *a2;
  v23 = *a2 >> 6;
  v24 = a1[1];
  if (v23 < (a1[2] - v24) >> 3)
  {
    v25 = *(v24 + 8 * v23);
    if (v25)
    {
      if (*(v25 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v25 + 16 * (*a2 & 0x3F) + 8)));
        v22 = *a2;
      }
    }
  }

  v26 = a1[23];
  if (v22 < ((a1[24] - v26) >> 3))
  {
    v27 = *(v26 + 8 * v22);
    if (!((v27 ^ v22) >> 32))
    {
      v29 = v22;
      *(v26 + 8 * v22) = v27 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 20), &v29);
    }
  }
}

{
  v4 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 6;
  v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v6 = a1[7];
  v7 = *(v6 + 8 * v4) + 24 * v5;
  v8 = ((a1[5] - a1[4]) >> 3) - 1;
  v9 = *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v8 & 0x3F);
  v10 = *v7;
  v11 = *(v7 + 16);
  v12 = *(v9 + 16);
  *v7 = *v9;
  *(v7 + 16) = v12;
  *(v9 + 16) = v11;
  *v9 = v10;
  v13 = a1[13];
  v14 = *(v13 + 8 * v4) + 24 * v5;
  v15 = ((a1[5] - a1[4]) >> 3) - 1;
  v16 = *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
  v17 = *v14;
  v18 = *(v14 + 16);
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = *v16;
  v19 = *(v16 + 8);
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v20 = *(v14 + 16);
  *(v14 + 8) = v19;
  if (v20)
  {
    v33 = v17;
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    v17 = v33;
  }

  *v16 = v17;
  v21 = *(v16 + 16);
  *(v16 + 16) = v18;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    v18 = *(v16 + 16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v22 = a1[19];
  v23 = *(v22 + 8 * v4);
  v24 = ((a1[5] - a1[4]) >> 3) - 1;
  v25 = *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v26 = *(v23 + 8 * v5);
  *(v23 + 8 * v5) = *(v25 + 8 * (v24 & 0x3F));
  *(v25 + 8 * (v24 & 0x3F)) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *a2;
  v28 = *a2 >> 6;
  v29 = a1[1];
  if (v28 < (a1[2] - v29) >> 3)
  {
    v30 = *(v29 + 8 * v28);
    if (v30)
    {
      if (*(v30 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v30 + 16 * (*a2 & 0x3F) + 8)));
        v27 = *a2;
      }
    }
  }

  v31 = a1[29];
  if (v27 < ((a1[30] - v31) >> 3))
  {
    v32 = *(v31 + 8 * v27);
    if (!((v32 ^ v27) >> 32))
    {
      v34 = v27;
      *(v31 + 8 * v27) = v32 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 26), &v34);
    }
  }
}

{
  v4 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
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
  v14 = *(v13 + v7) + 292 * v5;
  v15 = ((a1[5] - a1[4]) >> 3) - 1;
  v16 = *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 292 * (v15 & 0x3F);
  memcpy(__dst, v14, sizeof(__dst));
  v17 = 0;
  v18 = v16;
  v19 = v14;
  do
  {
    for (i = 0; i != 12; i += 4)
    {
      *(v19 + i) = *(v18 + i);
    }

    *(v14 + 16 * v17 + 12) = *(v16 + 16 * v17 + 12);
    ++v17;
    v19 += 16;
    v18 += 16;
  }

  while (v17 != 6);
  v21 = 0;
  v22 = v14 + 96;
  v23 = v16 + 96;
  do
  {
    for (j = 0; j != 12; j += 4)
    {
      *(v22 + j) = *(v23 + j);
    }

    ++v21;
    v22 += 12;
    v23 += 12;
  }

  while (v21 != 8);
  v25 = 0;
  v26 = (v16 + 192);
  do
  {
    *(v14 + 192 + v25) = *(v26 + v25);
    v25 += 4;
  }

  while (v25 != 64);
  v27 = 0;
  v28 = (v16 + 256);
  do
  {
    *(v14 + 256 + v27) = *(v28 + v27);
    v27 += 4;
  }

  while (v27 != 12);
  v29 = 0;
  v30 = (v16 + 268);
  do
  {
    *(v14 + 268 + v29) = *(v30 + v29);
    v29 += 4;
  }

  while (v29 != 12);
  v31 = 0;
  v32 = *(v16 + 280);
  *(v14 + 288) = *(v16 + 288);
  *(v14 + 280) = v32;
  do
  {
    v33 = v16 + v31;
    *v33 = *&__dst[v31];
    *(v33 + 8) = *&__dst[v31 + 8];
    *(v33 + 12) = *&__dst[v31 + 12];
    v31 += 16;
  }

  while (v31 != 96);
  v34 = *&__dst[144];
  v35 = *&__dst[160];
  v36 = *&__dst[112];
  *(v16 + 128) = *&__dst[128];
  *(v16 + 144) = v34;
  v37 = *&__dst[176];
  v38 = *&__dst[192];
  *(v16 + 160) = v35;
  *(v16 + 176) = v37;
  *(v16 + 96) = *&__dst[96];
  *(v16 + 112) = v36;
  v39 = *&__dst[240];
  v40 = *&__dst[208];
  *(v16 + 224) = *&__dst[224];
  *(v16 + 240) = v39;
  *v26 = v38;
  *(v16 + 208) = v40;
  *(v16 + 264) = *&__dst[264];
  *v28 = *&__dst[256];
  *(v16 + 276) = *&__dst[276];
  *v30 = *&__dst[268];
  *(v16 + 288) = __dst[288];
  *(v16 + 280) = *&__dst[280];
  v41 = *a2;
  v42 = *a2 >> 6;
  v43 = a1[1];
  if (v42 < (a1[2] - v43) >> 3)
  {
    v44 = *(v43 + 8 * v42);
    if (v44)
    {
      if (*(v44 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v44 + 16 * (*a2 & 0x3F) + 8)));
        v41 = *a2;
      }
    }
  }

  v45 = a1[23];
  if (v41 < ((a1[24] - v45) >> 3))
  {
    v46 = *(v45 + 8 * v41);
    if (!((v46 ^ v41) >> 32))
    {
      *__dst = v41;
      *(v45 + 8 * v41) = v46 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 20), __dst);
    }
  }
}

{
  v3 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v4 = a1[7];
  v5 = (*(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v6 = *(v4 + v5) + 24 * v3;
  v7 = ((a1[5] - a1[4]) >> 3) - 1;
  v8 = *(v4 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v7 & 0x3F);
  v9 = *v6;
  v10 = *(v6 + 16);
  LOWORD(v7) = *(v8 + 16);
  *v6 = *v8;
  *(v6 + 16) = v7;
  *(v8 + 16) = v10;
  *v8 = v9;
  v11 = a1[13];
  v12 = *(v11 + v5);
  v13 = ((a1[5] - a1[4]) >> 3) - 1;
  v14 = v13 & 0x3F;
  v15 = *(v11 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v16 = *(v12 + 8 * v3);
  *(v12 + 8 * v3) = *(v15 + 8 * v14);
  *(v15 + 8 * v14) = v16;
  v17 = *a2;
  v18 = *a2 >> 6;
  v19 = a1[1];
  if (v18 < (a1[2] - v19) >> 3)
  {
    v20 = *(v19 + 8 * v18);
    if (v20)
    {
      if (*(v20 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v20 + 16 * (*a2 & 0x3F) + 8)));
        v17 = *a2;
      }
    }
  }

  v22 = a1[23];
  if (v17 < ((a1[24] - v22) >> 3))
  {
    v23 = *(v22 + 8 * v17);
    if (!((v23 ^ v17) >> 32))
    {
      v24 = v17;
      *(v22 + 8 * v17) = v23 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 20), &v24);
    }
  }
}

{
  v4 = a1[33];
  if (v4)
  {
    v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
    v6 = *(*(a1[19] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8 * (v5 & 0x3F));
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v4);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= *&v4)
      {
        v11 = v9 % *&v4;
      }
    }

    else
    {
      v11 = v9 & (*&v4 - 1);
    }

    v12 = a1[32];
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *&v4 - 1;
        do
        {
          v16 = v14[1];
          if (v16 == v9)
          {
            if (v14[2] == v6)
            {
              v17 = v14[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v17 >= *&v4)
                {
                  v17 %= *&v4;
                }
              }

              else
              {
                v17 &= v15;
              }

              v18 = *(v12 + 8 * v17);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v14);
              if (v19 == a1 + 34)
              {
                goto LABEL_36;
              }

              v20 = v19[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v20 >= *&v4)
                {
                  v20 %= *&v4;
                }
              }

              else
              {
                v20 &= v15;
              }

              if (v20 != v17)
              {
LABEL_36:
                if (!*v14)
                {
                  goto LABEL_37;
                }

                v21 = *(*v14 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v21 >= *&v4)
                  {
                    v21 %= *&v4;
                  }
                }

                else
                {
                  v21 &= v15;
                }

                if (v21 != v17)
                {
LABEL_37:
                  *(v12 + 8 * v17) = 0;
                }
              }

              v22 = *v14;
              if (*v14)
              {
                v23 = *(v22 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v23 >= *&v4)
                  {
                    v23 %= *&v4;
                  }
                }

                else
                {
                  v23 &= v15;
                }

                if (v23 != v17)
                {
                  *(a1[32] + 8 * v23) = v19;
                  v22 = *v14;
                }
              }

              *v19 = v22;
              *v14 = 0;
              --a1[35];
              operator delete(v14);
              v25 = a1[38];
              v24 = a1[39];
              if (v25 >= v24)
              {
                v27 = a1[37];
                v28 = v25 - v27;
                v29 = (v25 - v27) >> 3;
                v30 = v29 + 1;
                if ((v29 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v31 = v24 - v27;
                if (v31 >> 2 > v30)
                {
                  v30 = v31 >> 2;
                }

                if (v31 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v32 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v32 = v30;
                }

                if (v32)
                {
                  if (!(v32 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v33 = (v25 - v27) >> 3;
                v34 = (8 * v29);
                v35 = (8 * v29 - 8 * v33);
                *v34 = v6;
                v26 = v34 + 1;
                memcpy(v35, v27, v28);
                a1[37] = v35;
                a1[38] = v26;
                a1[39] = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              else
              {
                *v25 = v6;
                v26 = v25 + 8;
              }

              a1[38] = v26;
              break;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v16 >= *&v4)
              {
                v16 %= *&v4;
              }
            }

            else
            {
              v16 &= v15;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  v36 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 6;
  v37 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v38 = a1[7];
  v39 = *(v38 + 8 * v36) + 24 * v37;
  v40 = ((a1[5] - a1[4]) >> 3) - 1;
  v41 = *(v38 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v40 & 0x3F);
  v42 = *v39;
  v43 = *(v39 + 16);
  v44 = *(v41 + 16);
  *v39 = *v41;
  *(v39 + 16) = v44;
  *(v41 + 16) = v43;
  *v41 = v42;
  v45 = a1[13];
  v46 = *(v45 + 8 * v36) + 24 * v37;
  v47 = ((a1[5] - a1[4]) >> 3) - 1;
  v48 = *(v45 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v47 & 0x3F);
  v49 = *v46;
  v50 = *(v46 + 16);
  *(v46 + 8) = 0;
  *(v46 + 16) = 0;
  *v46 = *v48;
  v51 = *(v48 + 8);
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  v52 = *(v46 + 16);
  *(v46 + 8) = v51;
  if (v52)
  {
    v66 = v49;
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
    v49 = v66;
  }

  *v48 = v49;
  v53 = *(v48 + 16);
  *(v48 + 16) = v50;
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
    v50 = *(v48 + 16);
  }

  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  v54 = a1[19];
  v55 = *(v54 + 8 * v36);
  v56 = ((a1[5] - a1[4]) >> 3) - 1;
  v57 = v56 & 0x3F;
  v58 = *(v54 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v59 = *(v55 + 8 * v37);
  *(v55 + 8 * v37) = *(v58 + 8 * v57);
  *(v58 + 8 * v57) = v59;
  v60 = *a2;
  v61 = *a2 >> 6;
  v62 = a1[1];
  if (v61 < (a1[2] - v62) >> 3)
  {
    v63 = *(v62 + 8 * v61);
    if (v63)
    {
      if (*(v63 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v63 + 16 * (*a2 & 0x3F) + 8)));
        v60 = *a2;
      }
    }
  }

  v64 = a1[29];
  if (v60 < ((a1[30] - v64) >> 3))
  {
    v65 = *(v64 + 8 * v60);
    if (!((v65 ^ v60) >> 32))
    {
      v67 = v60;
      *(v64 + 8 * v60) = v65 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 26), &v67);
    }
  }
}

{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a1[33];
  if (v4)
  {
    v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
    v6 = *(*(a1[19] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8 * (v5 & 0x3F));
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v4);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= *&v4)
      {
        v11 = v9 % *&v4;
      }
    }

    else
    {
      v11 = v9 & (*&v4 - 1);
    }

    v12 = a1[32];
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *&v4 - 1;
        do
        {
          v16 = v14[1];
          if (v16 == v9)
          {
            if (v14[2] == v6)
            {
              v17 = v14[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v17 >= *&v4)
                {
                  v17 %= *&v4;
                }
              }

              else
              {
                v17 &= v15;
              }

              v18 = *(v12 + 8 * v17);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v14);
              if (v19 == a1 + 34)
              {
                goto LABEL_36;
              }

              v20 = v19[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v20 >= *&v4)
                {
                  v20 %= *&v4;
                }
              }

              else
              {
                v20 &= v15;
              }

              if (v20 != v17)
              {
LABEL_36:
                if (!*v14)
                {
                  goto LABEL_37;
                }

                v21 = *(*v14 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v21 >= *&v4)
                  {
                    v21 %= *&v4;
                  }
                }

                else
                {
                  v21 &= v15;
                }

                if (v21 != v17)
                {
LABEL_37:
                  *(v12 + 8 * v17) = 0;
                }
              }

              v22 = *v14;
              if (*v14)
              {
                v23 = *(v22 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v23 >= *&v4)
                  {
                    v23 %= *&v4;
                  }
                }

                else
                {
                  v23 &= v15;
                }

                if (v23 != v17)
                {
                  *(a1[32] + 8 * v23) = v19;
                  v22 = *v14;
                }
              }

              *v19 = v22;
              *v14 = 0;
              --a1[35];
              operator delete(v14);
              v25 = a1[38];
              v24 = a1[39];
              if (v25 >= v24)
              {
                v27 = a1[37];
                v28 = (v25 - v27) >> 3;
                if ((v28 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v29 = v24 - v27;
                v30 = v29 >> 2;
                if (v29 >> 2 <= (v28 + 1))
                {
                  v30 = v28 + 1;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v31 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v30;
                }

                if (v31)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v31);
                }

                v32 = (8 * v28);
                *v32 = v6;
                v26 = 8 * v28 + 8;
                v33 = a1[37];
                v34 = a1[38] - v33;
                v35 = v32 - v34;
                memcpy(v32 - v34, v33, v34);
                v36 = a1[37];
                a1[37] = v35;
                a1[38] = v26;
                a1[39] = 0;
                if (v36)
                {
                  operator delete(v36);
                }
              }

              else
              {
                *v25 = v6;
                v26 = (v25 + 1);
              }

              a1[38] = v26;
              break;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v16 >= *&v4)
              {
                v16 %= *&v4;
              }
            }

            else
            {
              v16 &= v15;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  v37 = 0;
  v38 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 6;
  v39 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v40 = a1[7];
  v41 = ((a1[5] - a1[4]) >> 3) - 1;
  v42 = *(v40 + 8 * v38) + 24 * v39;
  v43 = *(v40 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v41 & 0x3F);
  v44 = *v42;
  v45 = *(v42 + 16);
  v46 = *(v43 + 16);
  *v42 = *v43;
  *(v42 + 16) = v46;
  *(v43 + 16) = v45;
  *v43 = v44;
  v47 = a1[13];
  v48 = (*(v47 + 8 * v38) + 16 * v39);
  v49 = ((a1[5] - a1[4]) >> 3) - 1;
  v50 = v49 >> 6;
  v51 = v49 & 0x3F;
  v52 = (*(v47 + 8 * v50) + 16 * v51);
  *v63 = *v48;
  do
  {
    *(v48 + v37) = *(v52 + v37);
    v37 += 4;
  }

  while (v37 != 16);
  *v52 = *v63;
  v53 = a1[19];
  v54 = *(v53 + 8 * v38);
  v55 = *(v53 + 8 * v50);
  v56 = *(v54 + 8 * v39);
  *(v54 + 8 * v39) = *(v55 + 8 * v51);
  *(v55 + 8 * v51) = v56;
  v57 = *a2;
  v58 = *a2 >> 6;
  v59 = a1[1];
  if (v58 < (a1[2] - v59) >> 3)
  {
    v60 = *(v59 + 8 * v58);
    if (v60)
    {
      if (*(v60 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v60 + 16 * (*a2 & 0x3F) + 8)));
        v57 = *a2;
      }
    }
  }

  v61 = a1[29];
  if (v57 < ((a1[30] - v61) >> 3))
  {
    v62 = *(v61 + 8 * v57);
    if (!((v62 ^ v57) >> 32))
    {
      v63[0] = v57;
      *(v61 + 8 * v57) = v62 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 26), v63);
    }
  }
}

{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a1[33];
  if (v4)
  {
    v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
    v6 = *(*(a1[19] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8 * (v5 & 0x3F));
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v4);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= *&v4)
      {
        v11 = v9 % *&v4;
      }
    }

    else
    {
      v11 = v9 & (*&v4 - 1);
    }

    v12 = a1[32];
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *&v4 - 1;
        do
        {
          v16 = v14[1];
          if (v16 == v9)
          {
            if (v14[2] == v6)
            {
              v17 = v14[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v17 >= *&v4)
                {
                  v17 %= *&v4;
                }
              }

              else
              {
                v17 &= v15;
              }

              v18 = *(v12 + 8 * v17);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v14);
              if (v19 == a1 + 34)
              {
                goto LABEL_36;
              }

              v20 = v19[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v20 >= *&v4)
                {
                  v20 %= *&v4;
                }
              }

              else
              {
                v20 &= v15;
              }

              if (v20 != v17)
              {
LABEL_36:
                if (!*v14)
                {
                  goto LABEL_37;
                }

                v21 = *(*v14 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v21 >= *&v4)
                  {
                    v21 %= *&v4;
                  }
                }

                else
                {
                  v21 &= v15;
                }

                if (v21 != v17)
                {
LABEL_37:
                  *(v12 + 8 * v17) = 0;
                }
              }

              v22 = *v14;
              if (*v14)
              {
                v23 = *(v22 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v23 >= *&v4)
                  {
                    v23 %= *&v4;
                  }
                }

                else
                {
                  v23 &= v15;
                }

                if (v23 != v17)
                {
                  *(a1[32] + 8 * v23) = v19;
                  v22 = *v14;
                }
              }

              *v19 = v22;
              *v14 = 0;
              --a1[35];
              operator delete(v14);
              v25 = a1[38];
              v24 = a1[39];
              if (v25 >= v24)
              {
                v27 = a1[37];
                v28 = (v25 - v27) >> 3;
                if ((v28 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v29 = v24 - v27;
                v30 = v29 >> 2;
                if (v29 >> 2 <= (v28 + 1))
                {
                  v30 = v28 + 1;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v31 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v30;
                }

                if (v31)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v31);
                }

                v32 = (8 * v28);
                *v32 = v6;
                v26 = 8 * v28 + 8;
                v33 = a1[37];
                v34 = a1[38] - v33;
                v35 = v32 - v34;
                memcpy(v32 - v34, v33, v34);
                v36 = a1[37];
                a1[37] = v35;
                a1[38] = v26;
                a1[39] = 0;
                if (v36)
                {
                  operator delete(v36);
                }
              }

              else
              {
                *v25 = v6;
                v26 = (v25 + 1);
              }

              a1[38] = v26;
              break;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v16 >= *&v4)
              {
                v16 %= *&v4;
              }
            }

            else
            {
              v16 &= v15;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  v37 = 0;
  v38 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 6;
  v39 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v40 = a1[7];
  v41 = *(v40 + 8 * v38) + 24 * v39;
  v42 = ((a1[5] - a1[4]) >> 3) - 1;
  v43 = *(v40 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v42 & 0x3F);
  v44 = *v41;
  v45 = *(v41 + 16);
  LOWORD(v42) = *(v43 + 16);
  *v41 = *v43;
  *(v41 + 16) = v42;
  *(v43 + 16) = v45;
  *v43 = v44;
  v46 = a1[13];
  v47 = *(v46 + 8 * v38) + 32 * v39;
  v48 = ((a1[5] - a1[4]) >> 3) - 1;
  v49 = v48 >> 6;
  v50 = v48 & 0x3F;
  v51 = *(v46 + 8 * v49) + 32 * v50;
  v66 = *v47;
  v67 = *(v47 + 4);
  v52 = *(v47 + 8);
  *&v68[2] = *(v47 + 12);
  v69 = *(v47 + 20);
  v53 = *(v47 + 24);
  do
  {
    *(v47 + v37) = *(v51 + v37);
    v37 += 2;
  }

  while (v37 != 6);
  v54 = 0;
  *(v47 + 8) = *(v51 + 8);
  v55 = (v51 + 12);
  do
  {
    *(v47 + 12 + v54) = *(v55 + v54);
    v54 += 4;
  }

  while (v54 != 12);
  *(v47 + 24) = *(v51 + 24);
  *v51 = v66;
  *(v51 + 4) = v67;
  *(v51 + 8) = v52;
  *v55 = *&v68[2];
  *(v51 + 20) = v69;
  *(v51 + 24) = v53;
  v56 = a1[19];
  v57 = *(v56 + 8 * v38);
  v58 = *(v56 + 8 * v49);
  v59 = *(v57 + 8 * v39);
  *(v57 + 8 * v39) = *(v58 + 8 * v50);
  *(v58 + 8 * v50) = v59;
  v60 = *a2;
  v61 = *a2 >> 6;
  v62 = a1[1];
  if (v61 < (a1[2] - v62) >> 3)
  {
    v63 = *(v62 + 8 * v61);
    if (v63)
    {
      if (*(v63 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v63 + 16 * (*a2 & 0x3F) + 8)));
        v60 = *a2;
      }
    }
  }

  v64 = a1[29];
  if (v60 < ((a1[30] - v64) >> 3))
  {
    v65 = *(v64 + 8 * v60);
    if (!((v65 ^ v60) >> 32))
    {
      *v68 = v60;
      *(v64 + 8 * v60) = v65 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 26), v68);
    }
  }
}

{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a1[33];
  if (v4)
  {
    v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8);
    v6 = *(*(a1[19] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 8 * (v5 & 0x3F));
    v7 = 0x9DDFEA08EB382D69 * ((8 * (v6 & 0x1FFFFFFF) + 8) ^ HIDWORD(v6));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ (v7 >> 47) ^ v7);
    v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
    v10 = vcnt_s8(v4);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
      if (v9 >= *&v4)
      {
        v11 = v9 % *&v4;
      }
    }

    else
    {
      v11 = v9 & (*&v4 - 1);
    }

    v12 = a1[32];
    v13 = *(v12 + 8 * v11);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *&v4 - 1;
        do
        {
          v16 = v14[1];
          if (v16 == v9)
          {
            if (v14[2] == v6)
            {
              v17 = v14[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v17 >= *&v4)
                {
                  v17 %= *&v4;
                }
              }

              else
              {
                v17 &= v15;
              }

              v18 = *(v12 + 8 * v17);
              do
              {
                v19 = v18;
                v18 = *v18;
              }

              while (v18 != v14);
              if (v19 == a1 + 34)
              {
                goto LABEL_36;
              }

              v20 = v19[1];
              if (v10.u32[0] > 1uLL)
              {
                if (v20 >= *&v4)
                {
                  v20 %= *&v4;
                }
              }

              else
              {
                v20 &= v15;
              }

              if (v20 != v17)
              {
LABEL_36:
                if (!*v14)
                {
                  goto LABEL_37;
                }

                v21 = *(*v14 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v21 >= *&v4)
                  {
                    v21 %= *&v4;
                  }
                }

                else
                {
                  v21 &= v15;
                }

                if (v21 != v17)
                {
LABEL_37:
                  *(v12 + 8 * v17) = 0;
                }
              }

              v22 = *v14;
              if (*v14)
              {
                v23 = *(v22 + 8);
                if (v10.u32[0] > 1uLL)
                {
                  if (v23 >= *&v4)
                  {
                    v23 %= *&v4;
                  }
                }

                else
                {
                  v23 &= v15;
                }

                if (v23 != v17)
                {
                  *(a1[32] + 8 * v23) = v19;
                  v22 = *v14;
                }
              }

              *v19 = v22;
              *v14 = 0;
              --a1[35];
              operator delete(v14);
              v25 = a1[38];
              v24 = a1[39];
              if (v25 >= v24)
              {
                v27 = a1[37];
                v28 = (v25 - v27) >> 3;
                if ((v28 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v29 = v24 - v27;
                v30 = v29 >> 2;
                if (v29 >> 2 <= (v28 + 1))
                {
                  v30 = v28 + 1;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v31 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v30;
                }

                if (v31)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v31);
                }

                v32 = (8 * v28);
                *v32 = v6;
                v26 = 8 * v28 + 8;
                v33 = a1[37];
                v34 = a1[38] - v33;
                v35 = v32 - v34;
                memcpy(v32 - v34, v33, v34);
                v36 = a1[37];
                a1[37] = v35;
                a1[38] = v26;
                a1[39] = 0;
                if (v36)
                {
                  operator delete(v36);
                }
              }

              else
              {
                *v25 = v6;
                v26 = (v25 + 1);
              }

              a1[38] = v26;
              break;
            }
          }

          else
          {
            if (v10.u32[0] > 1uLL)
            {
              if (v16 >= *&v4)
              {
                v16 %= *&v4;
              }
            }

            else
            {
              v16 &= v15;
            }

            if (v16 != v11)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  v37 = 0;
  v38 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) >> 6;
  v39 = a1[7];
  v40 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3F) + 8) & 0x3FLL;
  v41 = *(v39 + 8 * v38) + 24 * v40;
  v42 = ((a1[5] - a1[4]) >> 3) - 1;
  v43 = *(v39 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v42 & 0x3F);
  v44 = *v41;
  v45 = *(v41 + 16);
  v46 = *(v43 + 16);
  *v41 = *v43;
  *(v41 + 16) = v46;
  *(v43 + 16) = v45;
  *v43 = v44;
  v47 = a1[13];
  v48 = *(v47 + 8 * v38) + 24 * v40;
  v49 = ((a1[5] - a1[4]) >> 3) - 1;
  v50 = v49 >> 6;
  v51 = v49 & 0x3F;
  v52 = *(v47 + 8 * v50) + 24 * v51;
  v53 = *v48;
  v54 = *(v48 + 16);
  v55 = (v52 + 8);
  *v48 = *v52;
  v57 = *(v48 + 8);
  v56 = v48 + 8;
  v68 = v57;
  v69 = v54;
  do
  {
    *(v56 + v37) = *(v55 + v37);
    v37 += 4;
  }

  while (v37 != 12);
  *v52 = v53;
  *v55 = v68;
  *(v52 + 16) = v69;
  v58 = a1[19];
  v59 = *(v58 + 8 * v38);
  v60 = *(v58 + 8 * v50);
  v61 = *(v59 + 8 * v40);
  *(v59 + 8 * v40) = *(v60 + 8 * v51);
  *(v60 + 8 * v51) = v61;
  v62 = *a2;
  v63 = *a2 >> 6;
  v64 = a1[1];
  if (v63 < (a1[2] - v64) >> 3)
  {
    v65 = *(v64 + 8 * v63);
    if (v65)
    {
      if (*(v65 + 16 * (*a2 & 0x3F)) == HIDWORD(*a2))
      {
        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, (a1[4] + 8 * *(v65 + 16 * (*a2 & 0x3F) + 8)));
        v62 = *a2;
      }
    }
  }

  v66 = a1[29];
  if (v62 < ((a1[30] - v66) >> 3))
  {
    v67 = *(v66 + 8 * v62);
    if (!((v67 ^ v62) >> 32))
    {
      v68 = v62;
      *(v66 + 8 * v62) = v67 + 0x100000000;
      std::vector<unsigned long>::push_back[abi:nn200100]((a1 + 26), &v68);
    }
  }
}

void ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::erase(void *a1, void *a2)
{
  v4 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3FLL) + 8) >> 6;
  v5 = *(*(a1[1] + 8 * (*a2 >> 6)) + 16 * (*a2 & 0x3FLL) + 8) & 0x3FLL;
  v6 = a1[7];
  v7 = *(v6 + 8 * v4) + 24 * v5;
  v8 = ((a1[5] - a1[4]) >> 3) - 1;
  v9 = *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v8 & 0x3F);
  v10 = *v7;
  v11 = *(v7 + 16);
  v12 = *(v9 + 16);
  *v7 = *v9;
  *(v7 + 16) = v12;
  *(v9 + 16) = v11;
  *v9 = v10;
  v13 = a1[13];
  v14 = (*(v13 + 8 * v4) + 24 * v5);
  v15 = ((a1[5] - a1[4]) >> 3) - 1;
  v16 = *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
  v17 = *v14;
  v18 = v14[1];
  v19 = v14[2];
  v14[1] = 0;
  v14[2] = 0;
  *v14 = *v16;
  v20 = *(v16 + 8);
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  v21 = v14[2];
  *(v14 + 1) = v20;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  *v16 = v17;
  *(v16 + 8) = v18;
  v22 = *(v16 + 16);
  *(v16 + 16) = v19;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    v19 = *(v16 + 16);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v23 = a1[19];
  v24 = *(v23 + 8 * v4);
  v25 = ((a1[5] - a1[4]) >> 3) - 1;
  v26 = v25 & 0x3F;
  v27 = *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v28 = *(v24 + 8 * v5);
  *(v24 + 8 * v5) = *(v27 + 8 * v26);
  *(v27 + 8 * v26) = v28;
  v29 = *a2 >> 6;
  v30 = a1[1];
  if (v29 < (a1[2] - v30) >> 3)
  {
    v31 = *(v30 + 8 * v29);
    if (v31)
    {
      v32 = *a2 & 0x3FLL;
      if (*(v31 + 16 * v32) == HIDWORD(*a2))
      {
        v33 = (a1[4] + 8 * *(v31 + 16 * v32 + 8));

        ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v33);
      }
    }
  }
}

void std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::__erase_unique<md::MaterialKey>(void *a1, uint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 %= *&v4;
      }
    }

    else
    {
      v5 &= *&v4 - 1;
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 = (v9 % *&v4);
      }
    }

    else
    {
      v9 = (v9 & (*&v4 - 1));
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = (*v3)[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = v11[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 = (v12 % *&v4);
        }
      }

      else
      {
        v12 = (v12 & (*&v4 - 1));
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    operator delete(v3);
  }
}

uint64_t geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 8);
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

ggl::zone_mallocator *std::vector<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,geo::allocator_adapter<ggl::DaVinci::ElevatedFillColorWithDistancePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t md::Label::setupOccludedHideAnimation(uint64_t this, md::LabelManager *a2)
{
  v3 = this;
  if (*(this + 296))
  {
    if (*(this + 1161))
    {
      return this;
    }

    this = md::Label::clearAnimatingPart(this);
  }

  *(v3 + 1161) = 1;
  v4 = mdm::zone_mallocator::instance(this);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v4, 0x240uLL);
  bzero(v5, 0x240uLL);
  v6 = md::LabelPart::LabelPart(v5);
  *v5 = &unk_1F2A47848;
  v7 = *(v3 + 280);
  *(v3 + 280) = v5;
  if (v7)
  {
    v7 = (*(*v7 + 8))(v7, v6);
  }

  v8 = mdm::zone_mallocator::instance(v7);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, 0x2E8uLL);
  md::AnimatedCrossFadeLabelPart::AnimatedCrossFadeLabelPart(v9, a2, v3, 8, *(v3 + 272), *(v3 + 280), 0);
  this = *(v3 + 296);
  *(v3 + 296) = v9;
  if (this)
  {
    v10 = *(*this + 8);

    return v10();
  }

  return this;
}

void sub_1B2BC213C(mdm::zone_mallocator *a1)
{
  v3 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v1);
  _Unwind_Resume(a1);
}

double md::LabelPart::LabelPart(md::LabelPart *this)
{
  *this = &unk_1F2A5B190;
  *(this + 2) = 1065353216;
  *(this + 2) = 0;
  *(this + 3) = this;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 72) = xmmword_1B33B0730;
  *(this + 11) = 1065353216;
  *(this + 24) = 1065353216;
  *(this + 100) = 0u;
  *(this + 29) = 0;
  *(this + 120) = xmmword_1B33B0730;
  *(this + 136) = xmmword_1B33B0730;
  *(this + 152) = xmmword_1B33B0730;
  *(this + 168) = xmmword_1B33B0720;
  *(this + 224) = 0;
  *(this + 200) = 0;
  *(this + 184) = 0u;
  *(this + 248) = 0u;
  *(this + 41) = 1065353216;
  *(this + 84) = 1065353216;
  *(this + 89) = 0;
  *(this + 464) = 0;
  *(this + 440) = 0;
  *(this + 134) = 1065353216;
  *(this + 278) = 512;
  *(this + 562) = 0;
  *(this + 232) = 0u;
  *(this + 257) = 0u;
  *(this + 340) = 0u;
  *(this + 424) = 0u;
  *(this + 497) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 280) = xmmword_1B33B0AD0;
  *(this + 296) = xmmword_1B33B0870;
  *(this + 312) = xmmword_1B33B0730;
  *(this + 360) = xmmword_1B33B0730;
  *(this + 376) = xmmword_1B33B0730;
  *(this + 392) = xmmword_1B33B0730;
  *(this + 408) = xmmword_1B33B0720;
  *(this + 520) = xmmword_1B33B0AD0;
  *(this + 540) = 0u;
  *(this + 558) = 0;
  *(this + 563) = -1;
  *(this + 565) = 0;
  return result;
}

md::CrossFadeLabelPart *md::CrossFadeLabelPart::CrossFadeLabelPart(md::CrossFadeLabelPart *this, md::LabelPart *a2, md::LabelPart *a3, char a4)
{
  md::LabelPart::LabelPart(this);
  *(v8 + 592) = 0;
  *(v8 + 576) = 0u;
  *(v8 + 608) = 0;
  *(v8 + 612) = 0;
  *(v8 + 616) = 0;
  *(v8 + 624) = 0;
  *(v8 + 629) = 0;
  *v8 = &unk_1F2A3B218;
  *(v8 + 632) = 0;
  *(v8 + 636) = 8224;
  *(v8 + 628) = a4;
  md::CompositeLabelPart::addLabelPart(v8, a2);
  md::CompositeLabelPart::addLabelPart(this, a3);
  return this;
}

uint64_t md::AnimatedCrossFadeLabelPart::AnimatedCrossFadeLabelPart(uint64_t a1, uint64_t a2, md::Label *a3, int a4, md::LabelPart *a5, md::LabelPart *a6, char a7)
{
  v13 = md::CrossFadeLabelPart::CrossFadeLabelPart(a1, a5, a6, a7);
  *v13 = &unk_1F2A0D4C0;
  *(v13 + 80) = a2;
  *(v13 + 81) = a3;
  *(v13 + 87) = 0;
  *(v13 + 89) = 0;
  *(v13 + 88) = 0;
  *(v13 + 364) = 0;
  *(v13 + 730) = 0;
  *(v13 + 41) = 0u;
  *(v13 + 42) = 0u;
  *(v13 + 736) = a4;
  *(v13 + 737) = 1;
  md::CompositeLabelPart::setLabel(v13, a3);
  (*(*a5 + 184))(a5);
  (*(*a6 + 184))(a6);
  md::LabelPartContent::LabelPartContent(buf, a5);
  md::LabelPartContent::LabelPartContent(&v42, a6);
  v15 = a1 + 640;
  if (a4 > 5)
  {
    if (a4 > 7)
    {
      if (a4 == 8)
      {
        LODWORD(v54) = 0;
        v22 = buf[0];
        if ((buf[0] & 2) != 0)
        {
          v23 = v50;
          v24 = v51;
          v25 = md::LabelAnimator::resolveParams((a1 + 640), 0, 0xFu, 1, 1);
          if (v23)
          {
            v26 = v23;
          }

          else
          {
            v26 = v24;
          }

          md::LabelAnimator::createFadeAnimation((a1 + 640), v26, 0, v25, &v54, 0.0);
          v22 = buf[0];
        }

        if (v22)
        {
          v53 = 0;
          v27 = md::LabelAnimator::resolveParams((a1 + 640), 0, 0x10u, 1, 0);
          md::LabelAnimator::createFadeAnimation((a1 + 640), v49, 0, v27, &v53, *&v54);
        }
      }

      else if (a4 == 9)
      {
        if (v44 && v45 && (*(*v44 + 232))() == 8)
        {
          v17 = *(*(v44 + 72) + 8);
          std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize((a1 + 664), 0x8E38E38E38E38E39 * ((*(a1 + 672) - *(a1 + 664)) >> 4) + 1);
          *(v17 + 563) = 57 * ((*(a1 + 672) - *(a1 + 664)) >> 4) - 1;
          md::LabelAnimator::createTrack((a1 + 640));
        }

        *(a1 + 730) = 1;
      }
    }

    else if (a4 == 6)
    {
      if (*buf)
      {
        md::LabelAnimator::setupIconMorphAnimation((a1 + 640), buf[0], v49, v42, v44, 0);
        md::LabelAnimator::setupTextMorphAnimation((a1 + 640), v51, v45, 0, 0, 0);
        v18 = (*buf >> 2) & 7;
        v19 = (v42 >> 2) & 7;
        if (v18 == 2 && v19 == 3)
        {
          LODWORD(v54) = 0;
          v20 = md::LabelAnimator::resolveParams((a1 + 640), 0, 6u, 1, 2);
          md::LabelAnimator::createIconRowScaleAnimation((a1 + 640), v52, 0, v20, &v54, 0.0);
          v21 = md::LabelAnimator::resolveParams((a1 + 640), 1, 6u, 1, 2);
          md::LabelAnimator::createIconRowScaleAnimation((a1 + 640), v46, 1, v21, &v53, *&v54 + -0.1);
        }

        else if (v18 == 3 && v19 == 2)
        {
          LODWORD(v54) = 0;
          v32 = md::LabelAnimator::resolveParams((a1 + 640), 0, 7u, 0, 2);
          md::LabelAnimator::createIconRowScaleAnimation((a1 + 640), v52, 0, v32, &v54, 0.0);
          v33 = md::LabelAnimator::resolveParams((a1 + 640), 1, 7u, 0, 2);
          md::LabelAnimator::createIconRowScaleAnimation((a1 + 640), v46, 1, v33, &v53, *&v54 + -0.1);
        }

        else if (v18 == 3 && v19 == 4)
        {
          LODWORD(v54) = 0;
          v38 = md::LabelAnimator::resolveParams((a1 + 640), 0, 8u, 1, 2);
          md::LabelAnimator::createIconRowShiftAnimation((a1 + 640), v52, 0, v38, &v54, 0.0);
          v39 = md::LabelAnimator::resolveParams((a1 + 640), 1, 9u, 1, 2);
          md::LabelAnimator::createImageListFeatherAnimation((a1 + 640), v46, 1, v39, &v53, *&v54 + -0.1);
        }

        else if (v18 == 4 && v19 == 3)
        {
          LODWORD(v54) = 0;
          v40 = md::LabelAnimator::resolveParams((a1 + 640), 0, 9u, 0, 2);
          md::LabelAnimator::createImageListFeatherAnimation((a1 + 640), v52, 0, v40, &v54, 0.0);
          v41 = md::LabelAnimator::resolveParams((a1 + 640), 1, 8u, 0, 2);
          md::LabelAnimator::createIconRowShiftAnimation((a1 + 640), v46, 1, v41, &v53, *&v54 + -0.1);
        }
      }

      else
      {
        LODWORD(v54) = 0;
        v30 = md::LabelAnimator::resolveParams((a1 + 640), 1, 1u, 1, 0);
        if (v44)
        {
          md::LabelAnimator::createFadeAnimation((a1 + 640), v44, 1, v30, &v54, 0.0);
          v31 = *(v30 + 3);
        }

        else
        {
          v31 = 0.0;
        }

        if (v45)
        {
          md::LabelAnimator::createFadeAnimation((a1 + 640), v45, 1, v30, &v54, v31);
          v31 = *(v30 + 3) + v31;
        }

        if (v46)
        {
          md::LabelAnimator::createFadeAnimation((a1 + 640), v46, 1, v30, &v54, v31);
          if (v47)
          {
            md::LabelAnimator::createFadeAnimation((a1 + 640), v47, 1, v30, &v54, v31);
          }
        }
      }
    }

    else
    {
      if (!v42)
      {
        md::LabelAnimator::setupLocationChangedFadeAnimation((a1 + 640), 0, buf);
      }

      if (!*buf)
      {
        md::LabelAnimator::setupLocationChangedFadeAnimation((a1 + 640), 1, &v42);
      }
    }
  }

  else
  {
    if (a4 <= 3)
    {
      if ((a4 - 1) < 2)
      {
        md::LabelAnimator::setupIconMorphAnimation((a1 + 640), buf[0], v49, v42, v44, 0x13E4CCCCDLL);
        v16 = 1045220557;
LABEL_51:
        *(a1 + 656) = v16;
        goto LABEL_52;
      }

      if (a4 != 3)
      {
        goto LABEL_52;
      }

      if (*(*(a1 + 648) + 1333) == 1)
      {
        if (*(*(*v15 + 424) + 12) == 1)
        {
          md::LabelAnimator::setupBalloonAnimation((a1 + 640), 1, buf, &v42);
LABEL_50:
          v16 = 1056964608;
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v28 = 1;
      goto LABEL_41;
    }

    if (a4 == 4)
    {
      if (*(*(a1 + 648) + 1333) == 1)
      {
        if (*(*(*v15 + 424) + 12) == 1)
        {
          md::LabelAnimator::setupBalloonAnimation((a1 + 640), 0, buf, &v42);
          goto LABEL_50;
        }

LABEL_49:
        md::LabelAnimator::setupIconMorphAnimation((a1 + 640), buf[0], v49, v42, v44, 0x13E4CCCCDLL);
        goto LABEL_50;
      }

      v28 = 0;
LABEL_41:
      md::LabelAnimator::setupMKBalloonPickAnimations((a1 + 640), v28, buf, &v42);
      goto LABEL_52;
    }

    if (*buf)
    {
      md::LabelAnimator::setupIconMorphAnimation((a1 + 640), buf[0], v49, v42, v44, 0x13E4CCCCDLL);
      md::LabelAnimator::setupTextMorphAnimation((a1 + 640), v51, v45, 0, 0, 0x13E4CCCCDLL);
    }

    else if (v43)
    {
      LODWORD(v54) = 0;
      v29 = md::LabelAnimator::resolveParams((a1 + 640), 1, 1u, 1, 0);
      md::LabelAnimator::createFadeAnimation((a1 + 640), v43, 1, v29, &v54, 0.0);
      *(a1 + 729) = 1;
    }
  }

LABEL_52:
  v14.n128_u64[0] = 0;
  md::LabelAnimator::runAnimations((a1 + 640), v14);
  if (*(a1 + 736) - 3 <= 1)
  {
    *(a1 + 738) = 1;
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v34 = GEOGetVectorKitPerformanceLog_log;
    v35 = v34;
    v36 = *(a1 + 736);
    if (*(a1 + 736) && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v35, OS_SIGNPOST_INTERVAL_BEGIN, v36, "LabelsPickAnimation", &unk_1B3514CAA, buf, 2u);
    }
  }

  return a1;
}

void sub_1B2BC2DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  std::vector<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  a9 = v9 + 664;
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a9);
  md::CompositeLabelPart::~CompositeLabelPart(v9);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *md::CompositeLabelPart::addLabelPart(mdm::zone_mallocator *this, md::LabelPart *a2)
{
  v3 = this;
  v4 = *(this + 73);
  v5 = *(this + 74);
  if (v4 >= v5)
  {
    v7 = *(this + 72);
    v8 = (v4 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v5 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v21[4] = this + 600;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(this);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPart *>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v8];
    v15 = &v13[8 * v11];
    *v14 = a2;
    v6 = v14 + 8;
    v16 = *(v3 + 72);
    v17 = *(v3 + 73) - v16;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v16, v17);
    v19 = *(v3 + 72);
    *(v3 + 72) = v18;
    *(v3 + 73) = v6;
    v20 = *(v3 + 74);
    *(v3 + 74) = v15;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    this = std::__split_buffer<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator> &>::~__split_buffer(v21);
  }

  else
  {
    *v4 = a2;
    v6 = v4 + 1;
  }

  *(v3 + 73) = v6;
  *(v3 + 629) = 1;
  return this;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPart *>(v5, v4);
  }

  return a1;
}

uint64_t md::CompositeLabelPart::setLabel(md::CompositeLabelPart *this, md::Label *a2)
{
  *(this + 2) = a2;
  result = (*(*this + 24))(this, a2 + 376);
  v5 = *(this + 72);
  v6 = *(this + 73);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = (*(*v7 + 16))(v7, a2);
  }

  return result;
}

void *md::CompositeLabelPart::setLabelLayoutState(void *result, uint64_t a2)
{
  result[4] = a2;
  v2 = result[72];
  for (i = result[73]; v2 != i; result = (*(*v5 + 24))(v5, a2))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t md::ImageLabelPart::setLabel(md::ImageLabelPart *this, md::Label *a2)
{
  *(this + 2) = a2;
  result = (*(*this + 24))(this, a2 + 376);
  *(this + 630) = *(*(this + 2) + 1302);
  return result;
}

uint64_t md::IconLabelPart::setLabel(md::IconLabelPart *this, md::Label *a2)
{
  *(this + 2) = a2;
  result = (*(*this + 24))(this, a2 + 376);
  *(this + 630) = *(*(this + 2) + 1302);
  if (*(*(this + 4) + 77) == 1)
  {
    *(this + 720) = 0;
  }

  return result;
}

uint64_t md::CompositeLabelPart::clearAnimationIDs(uint64_t this)
{
  *(this + 563) = -1;
  v1 = *(this + 576);
  v2 = *(this + 584);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 184))(v3);
  }

  return this;
}

md::LabelPartContent *md::LabelPartContent::LabelPartContent(md::LabelPartContent *this, md::LabelPart *a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = a2;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  if (*(a2 + 562))
  {
    v4 = mdm::zone_mallocator::instance(this);
    v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPart *>(v4, 1);
    v7[0] = v5;
    *v5 = a2;
    v7[1] = v5 + 1;
    v7[2] = v5 + 1;
  }

  else
  {
    (*(*a2 + 200))(v7, a2);
  }

  md::LabelPartContent::parsePartContent(this, v7);
  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v7);
  return this;
}

void sub_1B2BC32CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

char *std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelPart *>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[8 * a2];
  return result;
}

_BYTE *md::CompositeLabelPart::children@<X0>(_BYTE *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = this[600];
  v3 = *(this + 72);
  v4 = *(this + 73);
  v5 = v4 - v3;
  if (v4 != v3)
  {
    std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__vallocate[abi:nn200100](a2, v5 >> 3);
    v6 = *(a2 + 8);
    this = memmove(v6, v3, v5);
    *(a2 + 8) = &v6[v5];
  }

  return this;
}

void std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPart *>(v2, v1);
  }
}

void md::LabelPartContent::parsePartContent(mdm::zone_mallocator *result, mdm::zone_mallocator ***a2)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v5 = *v2;
      v6 = *(*v2 + 562);
      if (v6 <= 6)
      {
        if (v6 == 1)
        {
          *(result + 2) = v5;
          v10 = *result | 1;
        }

        else
        {
          if (v6 != 5)
          {
            if (v6 == 6)
            {
              *(result + 3) = v5;
              (*(*v5 + 200))(v11);
              md::LabelPartContent::parsePartContent(result, v11);
              std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v11);
            }

            goto LABEL_17;
          }

          *(result + 4) = v5;
          v10 = *result | 2;
        }
      }

      else
      {
        if (v6 - 7 >= 3 && v6 != 11)
        {
          goto LABEL_17;
        }

        v8 = (v6 - 7);
        if (*(result + 5))
        {
          *(result + 6) = v5;
          v9 = dword_1B33B3134[v8];
        }

        else
        {
          *(result + 5) = v5;
          v9 = dword_1B33B3120[v8];
        }

        v10 = *result | v9;
      }

      *result = v10;
LABEL_17:
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_1B2BC3548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::LabelPart::children(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void md::LabelAnimator::createFadeAnimation(char **a1, uint64_t a2, int a3, uint64_t a4, float *a5, float a6)
{
  *a5 = a6;
  v9 = a1 + 3;
  std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize(a1 + 3, 0x8E38E38E38E38E39 * ((a1[4] - a1[3]) >> 4) + 1);
  *(a2 + 563) = 57 * ((v9[2] - *v9) >> 4) - 1;
  if (*(a4 + 4))
  {
    md::LabelAnimator::createTrack(a1);
  }

  if (*(a4 + 20))
  {
    md::LabelAnimator::createTrack(a1);
  }
}

void std::vector<md::LabelAnimation,geo::allocator_adapter<md::LabelAnimation,mdm::zone_mallocator>>::resize(char **a1, unint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 - *a1;
  v7 = 0x8E38E38E38E38E39 * (v6 >> 4);
  v8 = a2 - v7;
  if (a2 <= v7)
  {
    if (a2 < v7)
    {
      v40 = (v5 + 144 * a2);
      while (v4 != v40)
      {
        v42 = *(v4 - 18);
        v4 -= 144;
        v41 = v42;
        if (v42 != *(v4 + 2))
        {
          free(v41);
        }
      }

      a1[1] = v40;
    }
  }

  else
  {
    v9 = a1[2];
    if (0x8E38E38E38E38E39 * ((v9 - v4) >> 4) >= v8)
    {
      v43 = &v4[144 * v8];
      v44 = 144 * a2 - 16 * (v6 >> 4);
      v45 = v4 + 68;
      do
      {
        *(v45 - 4) = 0uLL;
        *(v45 + 12) = 0uLL;
        *(v45 + 28) = 0uLL;
        *(v45 + 44) = 0uLL;
        *(v45 + 60) = 0uLL;
        *(v45 - 20) = 0uLL;
        *(v45 - 36) = 0uLL;
        *(v45 - 68) = v45 - 36;
        *(v45 - 60) = v45 - 36;
        *(v45 - 52) = v45 - 36;
        *(v45 - 44) = 1;
        *v45 = 1065353216;
        *(v45 + 4) = 1065353216;
        *(v45 + 20) = 0;
        *(v45 + 36) = 0;
        *(v45 + 28) = 0;
        *(v45 + 22) = 0;
        *(v45 + 52) = 0;
        *(v45 + 60) = 0;
        *(v45 + 17) = 0;
        v45 += 144;
        v44 -= 144;
      }

      while (v44);
      a1[1] = v43;
    }

    else
    {
      if (a2 > 0x1C71C71C71C71C7)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = 0x1C71C71C71C71C72 * (&v9[-v5] >> 4);
      if (v10 <= a2)
      {
        v10 = a2;
      }

      if (0x8E38E38E38E38E39 * (&v9[-v5] >> 4) >= 0xE38E38E38E38E3)
      {
        v11 = 0x1C71C71C71C71C7;
      }

      else
      {
        v11 = v10;
      }

      v12 = mdm::zone_mallocator::instance(a1);
      v13 = pthread_rwlock_rdlock((v12 + 32));
      if (v13)
      {
        geo::read_write_lock::logFailure(v13, "read lock", v14);
      }

      v15 = malloc_type_zone_malloc(*v12, 144 * v11, 0x10200408BCFA3C9uLL);
      atomic_fetch_add((v12 + 24), 1u);
      geo::read_write_lock::unlock((v12 + 32));
      v17 = v15 + v6;
      v18 = 144 * a2 - v4;
      v19 = &v4[v15];
      do
      {
        v20 = &v19[-v5];
        *(v20 + 5) = 0uLL;
        *(v20 + 6) = 0uLL;
        *(v20 + 7) = 0uLL;
        *(v20 + 8) = 0uLL;
        *(v20 + 3) = 0uLL;
        *(v20 + 4) = 0uLL;
        *&v19[-v5 + 32] = 0uLL;
        v21 = &v19[-v5 + 32];
        *v20 = v21;
        *(v20 + 1) = v21;
        *(v20 + 2) = v21;
        *(v20 + 3) = 1;
        *(v20 + 17) = 1065353216;
        *(v20 + 21) = 1065353216;
        *(v20 + 12) = 0;
        *(v20 + 13) = 0;
        *(v20 + 11) = 0;
        *(v20 + 56) = 0;
        *(v20 + 15) = 0;
        *(v20 + 16) = 0;
        v18 -= 144;
        v19 += 144;
        *(v20 + 34) = 0;
      }

      while (-v5 != v18);
      *&v22 = v15 + 144 * a2;
      *(&v22 + 1) = v15 + 144 * v11;
      v46 = v22;
      v24 = *a1;
      v23 = a1[1];
      v25 = &v17[*a1 - v23];
      if (v23 != *a1)
      {
        v26 = *a1;
        v27 = v25;
        do
        {
          v28 = v27 + 32;
          *v27 = v27 + 32;
          *(v27 + 1) = v27 + 32;
          *(v27 + 2) = v27 + 32;
          v29 = *(v26 + 2);
          *(v27 + 3) = *(v26 + 3);
          v30 = *v26;
          if (*v26 == v29)
          {
            *(v27 + 1) = &v28[*(v26 + 1) - v30];
            v36 = *(v26 + 1);
            while (v30 != v36)
            {
              v37 = *v30;
              *(v28 + 2) = *(v30 + 2);
              *v28 = v37;
              v28 += 24;
              v30 = (v30 + 24);
            }
          }

          else
          {
            v31 = *(v26 + 1);
            *v27 = v30;
            *(v27 + 1) = v31;
            *v26 = 0uLL;
            *(v26 + 1) = 0uLL;
          }

          v32 = *(v26 + 56);
          *(v27 + 72) = *(v26 + 72);
          *(v27 + 56) = v32;
          v33 = *(v26 + 88);
          v34 = *(v26 + 104);
          v35 = *(v26 + 120);
          *(v27 + 34) = *(v26 + 34);
          *(v27 + 120) = v35;
          *(v27 + 104) = v34;
          *(v27 + 88) = v33;
          v26 += 144;
          v27 += 144;
        }

        while (v26 != v23);
        do
        {
          v16 = *v24;
          if (*v24 != *(v24 + 16))
          {
            free(v16);
          }

          v24 += 144;
        }

        while (v24 != v23);
      }

      v38 = *a1;
      *a1 = v25;
      *(a1 + 1) = v46;
      if (v38)
      {
        v39 = mdm::zone_mallocator::instance(v16);

        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimation>(v39, v38);
      }
    }
  }
}

__int128 *md::LabelAnimator::resolveParams(void *a1, int a2, unsigned int a3, int a4, int a5)
{
  v5 = 72;
  if (a2 == 1)
  {
    v5 = 4;
  }

  v6 = (&animationParams + 140 * a3 + v5);
  if (*(*a1 + 3696) == 1)
  {
    v11 = +[VKDebugSettings sharedSettings];
    if ([v11 tuneForwardLabelAnimation] == a4 && a5 == objc_msgSend(v11, "labelAnimationTuningElement"))
    {
      v12 = v6[3];
      xmmword_1EB845D90 = v6[2];
      *&dword_1EB845DA0 = v12;
      dword_1EB845DB0 = *(v6 + 16);
      v13 = v6[1];
      debugAnimationParams = *v6;
      *&dword_1EB845D80 = v13;
      +[VKDebugSettings sharedSettings];
      if (a2 == 1)
        v14 = {;
        v15 = [v14 showLabelAnimationParams];
      }

      else
        v14 = {;
        v15 = [v14 hideLabelAnimationParams];
      }

      v16 = v15;

      v17 = atomic_load((a1[1] + 1330));
      if (v17)
      {
        *(v16 + 16) = BYTE4(debugAnimationParams);
        *v16 = *(&debugAnimationParams + 1);
        *(v16 + 8) = dword_1EB845D80;
        *(v16 + 40) = byte_1EB845D84;
        *(v16 + 24) = qword_1EB845D88;
        *(v16 + 32) = xmmword_1EB845D90;
        *(v16 + 64) = BYTE4(xmmword_1EB845D90);
        *(v16 + 48) = *(&xmmword_1EB845D90 + 1);
        *(v16 + 56) = dword_1EB845DA0;
        *(v16 + 88) = byte_1EB845DA4;
        *(v16 + 72) = qword_1EB845DA8;
        *(v16 + 80) = dword_1EB845DB0;
      }

      else
      {
        if (BYTE4(debugAnimationParams))
        {
          if (*(v16 + 16))
          {
            BYTE4(debugAnimationParams) = *(v16 + 16);
          }

          *(&debugAnimationParams + 1) = *v16;
          dword_1EB845D80 = *(v16 + 8);
        }

        if (byte_1EB845D84)
        {
          if (*(v16 + 40))
          {
            byte_1EB845D84 = *(v16 + 40);
          }

          qword_1EB845D88 = *(v16 + 24);
          LODWORD(xmmword_1EB845D90) = *(v16 + 32);
        }

        if (BYTE4(xmmword_1EB845D90))
        {
          if (*(v16 + 64))
          {
            BYTE4(xmmword_1EB845D90) = *(v16 + 64);
          }

          *(&xmmword_1EB845D90 + 1) = *(v16 + 48);
          dword_1EB845DA0 = *(v16 + 56);
        }

        if (byte_1EB845DA4)
        {
          if (*(v16 + 88))
          {
            byte_1EB845DA4 = *(v16 + 88);
          }

          qword_1EB845DA8 = *(v16 + 72);
          dword_1EB845DB0 = *(v16 + 80);
        }
      }

      v6 = &debugAnimationParams;
    }
  }

  return v6;
}

void md::LabelAnimationTrack::addItem(mdm::zone_mallocator *result, unsigned int a2, char a3, float a4, float a5)
{
  v10 = *(result + 1);
  v11 = *(result + 2);
  if (v10 >= v11)
  {
    v14 = (v10 - *result) >> 5;
    v15 = v14 + 1;
    if ((v14 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v16 = v11 - *result;
    if (v16 >> 4 > v15)
    {
      v15 = v16 >> 4;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      v18 = mdm::zone_mallocator::instance(result);
      v19 = pthread_rwlock_rdlock((v18 + 32));
      if (v19)
      {
        geo::read_write_lock::logFailure(v19, "read lock", v20);
      }

      v21 = malloc_type_zone_malloc(*v18, 32 * v17, 0x1080040DADD50E3uLL);
      atomic_fetch_add((v18 + 24), 1u);
      geo::read_write_lock::unlock((v18 + 32));
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[32 * v14];
    v23 = &v21[32 * v17];
    *v22 = a4;
    v22[1] = fmaxf(a5, 0.000001);
    *(v22 + 1) = 0;
    *(v22 + 16) = a3;
    v24 = EaseConstantOne;
    if (a2 <= 0x13)
    {
      v24 = easingFunctions[a2];
    }

    *(v22 + 3) = v24;
    v13 = (v22 + 8);
    v25 = *(result + 1) - *result;
    v26 = v22 - v25;
    v27 = memcpy(v22 - v25, *result, v25);
    v28 = *result;
    *result = v26;
    *(result + 1) = v13;
    *(result + 2) = v23;
    if (v28)
    {
      v29 = mdm::zone_mallocator::instance(v27);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelAnimationItem>(v29, v28);
    }
  }

  else
  {
    *v10 = a4;
    *(v10 + 4) = fmaxf(a5, 0.000001);
    *(v10 + 8) = 0;
    *(v10 + 16) = a3;
    v12 = EaseConstantOne;
    if (a2 <= 0x13)
    {
      v12 = easingFunctions[a2];
    }

    *(v10 + 24) = v12;
    v13 = (v10 + 32);
    *(result + 1) = v10 + 32;
  }

  *(result + 1) = v13;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::LabelAnimationTrack>,geo::allocator_adapter<std::unique_ptr<md::LabelAnimationTrack>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(v1 + 2) = v2;
    *v2 = 0;
    if (v5)
    {
      std::vector<md::LabelAnimationItem,geo::allocator_adapter<md::LabelAnimationItem,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v4);
      a1 = MEMORY[0x1B8C62190](v4, 0x1020C4094DC1443);
      v2 = *(v1 + 2);
    }
  }

  v6 = *v1;
  if (*v1)
  {
    v7 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::LabelAnimationTrack>>(v7, v6);
  }

  return v1;
}

void md::LabelAnimator::runAnimations(md::LabelAnimator *this, __n128 a2)
{
  if ((*(this + 88) & 1) == 0)
  {
    if (*(this + 90) == 1)
    {
      if (a2.n128_f32[0] < 100.0 && *(*(*(this + 1) + 1272) + 52) != 2)
      {
        return;
      }

      *(this + 90) = 0;
    }

    *(this + 5) = *(this + 5) + a2.n128_f32[0];
    v3 = *(this + 7);
    v4 = *(this + 8);
    if (v3 == v4)
    {
      goto LABEL_24;
    }

    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = *(*v3 + 40);
      if ((v7 & 1) == 0)
      {
        v9 = *v6;
        v8 = v6[1];
        if (*v6 == v8)
        {
          v7 = 0;
        }

        else
        {
          v10 = *(this + 5);
          v11 = *(v6 + 8);
          v12 = (v8 - v9) >> 5;
          if (v12 <= v11)
          {
LABEL_14:
            if (*(v6 + 41) == 1)
            {
              a2.n128_f32[0] = fmodf(*(this + 5), *(v8 - 28) + *(v8 - 32));
              LODWORD(v11) = 0;
              a2.n128_f32[0] = v10 - a2.n128_f32[0];
              *(v6 + 9) = a2.n128_u32[0];
              *(v6 + 8) = 0;
            }

            else
            {
              LODWORD(v11) = ((v8 - v9) >> 5) - 1;
              *(v6 + 8) = v11;
              *(v6 + 40) = 1;
              a2.n128_u32[0] = *(v6 + 9);
            }
          }

          else
          {
            a2.n128_u32[0] = *(v6 + 9);
            while ((*(v9 + 32 * v11 + 4) + *(v9 + 32 * v11)) <= (v10 - a2.n128_f32[0]))
            {
              v11 = (v11 + 1);
              if (v12 <= v11)
              {
                goto LABEL_14;
              }
            }

            *(v6 + 8) = v11;
          }

          v13 = v9 + 32 * v11;
          a2.n128_f32[0] = fminf(fmaxf(v10 - (a2.n128_f32[0] + *v13), 0.0), *(v13 + 4)) / *(v13 + 4);
          *(v13 + 12) = a2.n128_u32[0];
          if (!*(v13 + 16))
          {
            a2.n128_f32[0] = 1.0 - a2.n128_f32[0];
          }

          *(v13 + 8) = (*(v13 + 24))(a2);
          v7 = *(*v3 + 40);
        }
      }

      v5 |= v7 ^ 1;
      ++v3;
    }

    while (v3 != v4);
    if ((v5 & 1) == 0)
    {
LABEL_24:
      *(this + 88) = 1;
    }
  }
}

uint64_t md::CrossFadeLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(***(a1 + 576) + 88))(**(a1 + 576)))
  {
    v10 = (*(***(a1 + 576) + 120))(**(a1 + 576), a2, a3, a4, a5);
  }

  else
  {
    v10 = 32;
  }

  *(a1 + 636) = v10;
  if ((*(**(*(a1 + 576) + 8) + 88))(*(*(a1 + 576) + 8)))
  {
    LODWORD(result) = (*(**(*(a1 + 576) + 8) + 120))(*(*(a1 + 576) + 8), a2, a3, a4, a5);
  }

  else
  {
    LODWORD(result) = 32;
  }

  *(a1 + 637) = result;
  if (*(a1 + 636) == 37)
  {
    return 37;
  }

  else
  {
    return result;
  }
}

float md::LabelAnimation::alpha(md::LabelAnimation *this)
{
  v1 = *(this + 9);
  if (v1)
  {
    return fmaxf(fminf(*(this + 20) + (*(*v1 + 32 * *(v1 + 32) + 8) * (*(this + 21) - *(this + 20))), 1.0), 0.0);
  }

  else
  {
    return *(this + 21);
  }
}

uint64_t md::Label::updateReserveSpaceCollisionItem(md::Label *this)
{
  *(this + 1335) = 0;
  v2 = *(this + 42);
  *(this + 42) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(this + 43);
  *(this + 43) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 1336) = 0;
  *(this + 1365) = 1;
  v4 = 0;
  if (*(this + 187) != *(this + 186))
  {
    result = *(this + 36);
    if (result)
    {
      result = (*(*result + 512))(result, &v4);
      if (result)
      {
        if (v4 != 1)
        {
          operator new();
        }

        *(this + 1336) = v4;
      }
    }
  }

  return result;
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::emplace_back<std::shared_ptr<md::Label> const&>(std::__shared_weak_count *result, __int128 *a2)
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
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::Label>>(v12, v11);
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
    result = std::__split_buffer<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
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

uint64_t md::CompositeLabelPart::resolveForDisplay(uint64_t this)
{
  v1 = *(this + 576);
  v2 = *(this + 584);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 96))(v3);
  }

  return this;
}

void md::Label::setupHideAnimation(md::Label *this)
{
  v2 = *(this + 159);
  if (v2 && (*(v2 + 52) & 0xFD) == 1 && ((v3 = *(v2 + 8), v3 == 2) || v3 == 4 && !*(this + 1289)))
  {
    md::LabelValueAnimation::setHideAnimation(this + 1200, 0, 3, 0, 0.4);
    if (*(this + 1157))
    {
      goto LABEL_8;
    }

    v8 = 1;
  }

  else
  {
    if (*(this + 1157))
    {
      md::LabelValueAnimation::setHideAnimation(this + 1200, 1, 1, 0, 0.0);
LABEL_8:
      v4 = this + 1232;
      v5 = 0.0;
      v6 = 1;
      v7 = 0;
      goto LABEL_21;
    }

    v8 = 0;
  }

  v9 = *(this + 136);
  v10 = 0.4;
  if (v9 && *(v9 + 12) != 0.0)
  {
    v10 = *(v9 + 12);
  }

  if ((v8 & 1) == 0)
  {
    md::LabelValueAnimation::setHideAnimation(this + 1200, 0, 3, 0, v10);
  }

  if (v9)
  {
    v11 = *(this + 136);
    v12 = *(v11 + 20);
    v7 = v12 == 0.0;
    if (v12 != 0.0)
    {
      v10 = *(v11 + 20);
    }

    v6 = *(v11 + 25);
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  v4 = this + 1232;
  v5 = v10;
LABEL_21:
  md::LabelValueAnimation::setHideAnimation(v4, v6, 1, v7, v5);
  *(this + 301) = (*(this + 153))(*(this + 300));
  *(this + 309) = (*(this + 157))(*(this + 308));
}

void md::Label::setupShowAnimation(md::Label *this)
{
  v11 = 0;
  v2 = *(this + 159);
  if (v2)
  {
    if ((v2[52] & 0xFD) == 1)
    {
      v3 = v2[8];
      if ((v3 - 2) < 3)
      {
        md::LabelValueAnimation::setShowAnimation(this + 1200, 0, 3, 0, 0.4);
        v2 = &v11 + 1;
LABEL_7:
        *v2 = 1;
        LOBYTE(v2) = HIBYTE(v11);
        goto LABEL_9;
      }

      if (v3 == 1)
      {
        md::LabelValueAnimation::setShowAnimation(this + 1200, 0, 3, 0, 0.4);
        HIBYTE(v11) = 1;
        md::LabelValueAnimation::setShowAnimation(this + 1232, 0, 4, 0, 0.5);
        v2 = &v11;
        goto LABEL_7;
      }
    }

    LOBYTE(v2) = 0;
  }

LABEL_9:
  if (*(this + 1157) == 1)
  {
    if ((v2 & 1) == 0)
    {
      md::LabelValueAnimation::setShowAnimation(this + 1200, 1, 1, 0, 0.0);
    }

    if ((v11 & 1) == 0)
    {
      md::LabelValueAnimation::setShowAnimation(this + 1232, 1, 1, 0, 0.0);
    }

    LOBYTE(v11) = 1;
  }

  else if ((v2 & 1) == 0 || (v11 & 1) == 0)
  {
    v4 = *(this + 136);
    v5 = 0.4;
    if (v4 && *(v4 + 8) != 0.0)
    {
      v5 = *(v4 + 8);
    }

    if ((v2 & 1) == 0)
    {
      md::LabelValueAnimation::setShowAnimation(this + 1200, 0, 3, 0, v5);
    }

    if ((v11 & 1) == 0)
    {
      v6 = v5 * 1.25;
      if (v4)
      {
        v7 = *(this + 136);
        v8 = *(v7 + 16);
        v9 = v8 == 0.0;
        if (v8 != 0.0)
        {
          v6 = *(v7 + 16);
        }

        v10 = *(v7 + 24);
      }

      else
      {
        v10 = 0;
        v9 = 1;
      }

      md::LabelValueAnimation::setShowAnimation(this + 1232, v10, 1, v9, v6);
    }
  }

  *(this + 301) = (*(this + 152))(*(this + 300));
  *(this + 309) = (*(this + 156))(*(this + 308));
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A17250;
  v5 = (a1 + 248);
  std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  md::FrameAllocator<ggl::RenderItem>::reset((a1 + 224));
  free(*(a1 + 224));
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 168);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  ggl::RenderItem::~RenderItem((a1 + 16));
  return a1;
}

void *md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29E9E08;
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = a1[4];
  v5 = a1[5];
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = a1[9];
  a1[9] = 0;
  if (v6)
  {
    std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

void ggl::DaVinciTraffic::BaseMesh::~BaseMesh(ggl::DaVinciTraffic::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciTrafficLayer::~DaVinciTrafficLayer(md::DaVinciTrafficLayer *this)
{
  *this = &unk_1F29E9DE8;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E9DE8;
  v2 = *(this + 18);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(this);
}

void md::DaVinciTrafficTileData::~DaVinciTrafficTileData(md::DaVinciTrafficTileData *this)
{
  *this = &unk_1F2A1EAF8;
  *(this + 80) = &unk_1F2A1EB38;
  v6 = (this + 808);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 776));
  v2 = *(this + 96);
  *(this + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 95);
  *(this + 95) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

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

{
  md::DaVinciTrafficTileData::~DaVinciTrafficTileData(this);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciTrafficBatch::~DaVinciTrafficBatch(md::DaVinciTrafficBatch *this)
{
  *this = &unk_1F2A17150;
  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A17230;
  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A17150;
  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A17230;
  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(this);
}

void ggl::DaVinciTraffic::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::MapTileData::~MapTileData(md::MapTileData *this)
{
  *this = &unk_1F2A2F4B8;
  *(this + 80) = &unk_1F2A2F4F8;
  v2 = *(this + 86);
  if (v2)
  {
    v3 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C40FDD25D6FLL);
    *(this + 86) = 0;
  }

  v4 = *(this + 83);
  if (v4)
  {
    *(this + 84) = v4;
    operator delete(v4);
  }

  v5 = *(this + 82);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *this = &unk_1F2A60328;
  v6 = *(this + 4);
  if (v6 != *(this + 6))
  {
    free(v6);
  }
}

{
  md::MapTileData::~MapTileData(this);

  JUMPOUT(0x1B8C62190);
}

void md::TrafficDynamicTileResource::~TrafficDynamicTileResource(md::TrafficDynamicTileResource *this)
{
  v4 = (this + 200);
  std::vector<VKTrafficFeature * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v4);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 160);
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 1);
  if (v3 != *(this + 3))
  {
    free(v3);
  }
}

md::TrafficDynamicTileResource *std::__shared_ptr_pointer<md::TrafficDynamicTileResource *,std::shared_ptr<md::TrafficDynamicTileResource>::__shared_ptr_default_delete<md::TrafficDynamicTileResource,md::TrafficDynamicTileResource>,std::allocator<md::TrafficDynamicTileResource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::TrafficDynamicTileResource::~TrafficDynamicTileResource(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t md::CrossFadeLabelPart::pushToRenderModel(uint64_t result, uint64_t a2, __n128 a3)
{
  v3 = a3.n128_f32[0];
  v4 = result;
  v5 = *(result + 636);
  v6 = v5 > 0x25;
  v7 = (1 << v5) & 0x20000C0000;
  if (!v6 && v7 != 0)
  {
    result = (*(***(result + 576) + 128))(**(result + 576), a2, a3.n128_f32[0] - (*(result + 632) * a3.n128_f32[0]));
  }

  if (*(v4 + 637) == 37)
  {
    a3.n128_f32[0] = *(v4 + 632) * v3;
    v9 = *(**(*(v4 + 576) + 8) + 128);

    return v9(a3);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<zilch::TrafficDynamicTile *,std::shared_ptr<zilch::TrafficDynamicTile>::__shared_ptr_default_delete<zilch::TrafficDynamicTile,zilch::TrafficDynamicTile>,std::allocator<zilch::TrafficDynamicTile>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MEMORY[0x1B8C618C0]();

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::AnimatedCrossFadeLabelPart::animate(md::AnimatedCrossFadeLabelPart *this, float a2)
{
  v4 = *(this + 158) + (a2 * 2.5);
  *(this + 158) = v4;
  if (v4 >= 1.0)
  {
    *(this + 158) = 1065353216;
    *(this + 737) = 0;
    if (*(this + 738) == 1)
    {
      md::AnimatedCrossFadeLabelPart::emitEndSignpost(this);
    }
  }

  (*(**(*(this + 72) + 8) + 624))(*(*(this + 72) + 8), a2);
  v5.n128_f32[0] = a2;

  md::LabelAnimator::runAnimations((this + 640), v5);
}

uint64_t md::AnimatedCrossFadeLabelPart::isCrossFading(md::AnimatedCrossFadeLabelPart *this)
{
  if (*(this + 737))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(this + 728) ^ 1;
  }

  return v1 & 1;
}

void sub_1B2BC560C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKLabelNavJunction;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B2BC5730(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKLabelNavRoad;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::Matrix<double,2,1>>(v2, v1);
  }
}

void md::NavRoadSign::~NavRoadSign(md::NavRoadSign *this)
{
  md::NavLabel::~NavLabel(this);

  JUMPOUT(0x1B8C62190);
}

void std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::LabelImageKey const> const,md::LabelCachingStore<std::shared_ptr<md::LabelImageKey const>,std::shared_ptr<md::LabelIcon>,std::weak_ptr<md::LabelIcon>,md::LabelPtrHash<std::shared_ptr<md::LabelImageKey const>>,md::LabelPtrEqual<std::shared_ptr<md::LabelImageKey const>>>::MapEntry>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t std::__shared_ptr_pointer<md::NavRoadSign *,std::shared_ptr<md::NavLabel>::__shared_ptr_default_delete<md::NavLabel,md::NavRoadSign>,std::allocator<md::NavRoadSign>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void md::NavLabel::~NavLabel(md::NavLabel *this)
{
  *this = &unk_1F2A3DE30;
  if (*(this + 20))
  {
    v2 = *(this + 22);
    if (v2)
    {
      std::mutex::lock((v2 + 24));
      v3 = *(v2 + 8);
      v4 = *(v2 + 16);
      if (v3 >= v4)
      {
        v7 = (v3 - *v2) >> 4;
        v8 = v7 + 1;
        if ((v7 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v9 = v4 - *v2;
        if (v9 >> 3 > v8)
        {
          v8 = v9 >> 3;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v8;
        }

        if (v10)
        {
          if (!(v10 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v11 = 16 * v7;
        v12 = *(this + 10);
        *(16 * v7) = v12;
        if (*(&v12 + 1))
        {
          atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v6 = (v11 + 16);
        v13 = *(v2 + 8) - *v2;
        v14 = v11 - v13;
        memcpy((v11 - v13), *v2, v13);
        v15 = *v2;
        *v2 = v14;
        *(v2 + 8) = v6;
        *(v2 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        v5 = *(this + 21);
        *v3 = *(this + 20);
        v3[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
        }

        v6 = v3 + 2;
      }

      *(v2 + 8) = v6;
      std::mutex::unlock((v2 + 24));
    }
  }

  if (*(this + 26) == 1)
  {
    v16 = *(this + 1);
    if (v16)
    {
      *(v16 + 285) = 1;
    }
  }

  v17 = *(this + 38);
  *(this + 38) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 25);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v19 = *(this + 23);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = *(this + 21);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = *(this + 11);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  v22 = *(this + 9);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (*(this + 55) < 0)
  {
    v23 = *(this + 4);
    v24 = mdm::zone_mallocator::instance(v22);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v24, v23);
  }

  v25 = *(this + 2);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }
}

{
  md::NavLabel::~NavLabel(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2BC5B58(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 24));
  v4 = *(v1 + 304);
  *(v1 + 304) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 200);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 184);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(v1 + 168);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(v1 + 88);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v1 + 72);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (*(v1 + 55) < 0)
  {
    v10 = *(v1 + 32);
    v11 = mdm::zone_mallocator::instance(v9);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v11, v10);
  }

  v12 = *(v1 + 16);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  _Unwind_Resume(a1);
}

void std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void md::IconLabelPart::~IconLabelPart(md::IconLabelPart *this)
{
  *this = &unk_1F2A5A040;
  v2 = *(this + 100);
  *(this + 100) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 99);
  *(this + 99) = 0;
  if (v3)
  {
    v3 = MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  if (*(this + 679) < 0)
  {
    v4 = *(this + 82);
    v5 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  v6 = *(this + 81);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

{
  md::IconLabelPart::~IconLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void md::NavRoadSignLabelPart::~NavRoadSignLabelPart(md::NavRoadSignLabelPart *this)
{
  *this = &unk_1F2A3E258;
  v2 = *(this + 110);
  *(this + 110) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::IconLabelPart::~IconLabelPart(this);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F2A3E258;
  v2 = *(this + 110);
  *(this + 110) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::IconLabelPart::~IconLabelPart(this);
}

void md::LabelIcon::~LabelIcon(md::LabelIcon *this)
{
  *this = &unk_1F2A43D38;
  v2 = *(this + 14);
  if (v2)
  {
    v3 = *(this + 15);
    v4 = *(this + 14);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 14);
    }

    *(this + 15) = v2;
    operator delete(v4);
  }

  v6 = *(this + 5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  *(this + 1) = &unk_1F2A43EB8;
}

{
  md::LabelIcon::~LabelIcon(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t *gss::CartoStyle<gss::ScenePropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(void *a1, unsigned __int8 a2, unsigned int a3, _BYTE *a4)
{
  if (!a1 || (a3 >= 0x17 ? (v7 = 23) : (v7 = a3), v8 = *a1 + 120 * *(a1 + v7 + 16), geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v8, a2) == *(v8 + 12)))
  {
    if (a4)
    {
      *a4 = 0;
    }

    gss::defaultValueForKey<gss::ScenePropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>();
    return &gss::defaultValueForKey<gss::ScenePropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>(gss::ScenePropertyID)::_defaultValue;
  }

  else
  {
    v9 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v8 + 72), a2);
    if (v9 == *(v8 + 84))
    {
      return &gss::PropertySetValueHelper<gss::ScenePropertyID,geo::Color<unsigned short,4,(geo::ColorSpace)0>>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
    }

    else
    {
      return (*(v8 + 72) + *(v8 + 80) + 8 * v9);
    }
  }
}

void md::RoadSignLabelIcon::~RoadSignLabelIcon(md::RoadSignLabelIcon *this)
{
  *this = &unk_1F2A43DF8;
  *(this + 19) = &unk_1F2A43ED8;

  md::LabelIcon::~LabelIcon(this);
}

{
  *this = &unk_1F2A43DF8;
  *(this + 19) = &unk_1F2A43ED8;

  md::LabelIcon::~LabelIcon(this);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::LabelManager::LabelManager(gdc::WorldType,md::LabelManagerCreationParams const&)::$_1,std::allocator<md::LabelManager::LabelManager(gdc::WorldType,md::LabelManagerCreationParams const&)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v2 = GEOGetVectorKitPerformanceLog_log;
  if (os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LabelsAnimationFired", &unk_1B3514CAA, v6, 2u);
  }

  v3 = atomic_load((v1 + 3053));
  if (v3)
  {
    v4 = *(v1 + 136);
    if (v4)
    {
      v5 = *(v4 + 56);
      if (v5)
      {
        std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v5, v1, 9);
      }
    }
  }
}

void std::vector<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 72;
        std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::destroy[abi:nn200100]<std::pair<md::RouteRangeAnnotationRequest,geo::_retain_ptr<VKLabelNavRouteEta * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void,0>(uint64_t a1)
{
  *(a1 + 48) = &unk_1F29F1180;

  std::__tree<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,std::vector<md::ShareSection,geo::allocator_adapter<md::ShareSection,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::destroy(*(a1 + 24));
  v2 = *a1;
}

void sub_1B2BC61F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKRoadSignArtwork;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void md::LabelMapTile::deactivateLabels(uint64_t this, int a2)
{
  if (*(this + 133) == 1)
  {
    *(this + 133) = 0;
    v4 = *(this + 416);
    v5 = (this + 424);
    if (v4 != (this + 424))
    {
      do
      {
        v6 = v4[4];
        if (atomic_fetch_add((v6 + 1384), 0xFFu) == 1)
        {
          if (*(v6 + 1352) == 1)
          {
            *(v6 + 1349) = 1;
            *(v6 + 1312) = 0;
          }

          else
          {
            md::Label::updateStateMachineForStaging(v6, 1, 37);
          }
        }

        v7 = v4[1];
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
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != v5);
    }
  }

  if (a2 == 1)
  {

    md::LabelMapTile::broadcastLabelDeactivate(this);
  }
}

uint64_t md::CompositeLabelPart::markInactive(uint64_t this)
{
  v1 = *(this + 576);
  v2 = *(this + 584);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 160))(v3);
  }

  return this;
}

void std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelPlacement>(v2, v1);
  }
}

void md::CaptionedIconLabelPart::~CaptionedIconLabelPart(md::CaptionedIconLabelPart *this)
{
  md::CaptionedIconLabelPart::~CaptionedIconLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

{
  *this = &unk_1F2A5B868;
  v2 = *(this + 114);
  *(this + 114) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 113);
  *(this + 113) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  v4 = *(this + 112);
  *(this + 112) = 0;
  if (v4)
  {
    MEMORY[0x1B8C62190](v4, 0x1000C40AE2C30F4);
  }

  v5 = *(this + 111);
  *(this + 111) = 0;
  if (v5)
  {
    MEMORY[0x1B8C62190](v5, 0x1000C40AE2C30F4);
  }

  std::vector<md::LabelPlacement,geo::allocator_adapter<md::LabelPlacement,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 800));
  if (*(this + 759) < 0)
  {
    v7 = *(this + 92);
    v8 = mdm::zone_mallocator::instance(v6);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v8, v7);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

void md::PointIconLabelPart::~PointIconLabelPart(md::PointIconLabelPart *this)
{
  *this = &unk_1F2A596C8;
  v2 = *(this + 105);
  *(this + 105) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  md::IconLabelPart::~IconLabelPart(this);
  v4 = mdm::zone_mallocator::instance(v3);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, this);
}

{
  *this = &unk_1F2A596C8;
  v2 = *(this + 105);
  *(this + 105) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  md::IconLabelPart::~IconLabelPart(this);
}

void md::CompositeLabelPart::~CompositeLabelPart(md::CompositeLabelPart *this)
{
  *this = &unk_1F2A5ADF0;
  if (*(this + 628) == 1)
  {
    v2 = *(this + 72);
    v3 = *(this + 73);
    while (v2 != v3)
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }
  }

  std::vector<md::LabelPart *,geo::allocator_adapter<md::LabelPart *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 576));
  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

void md::HorizontalTextLabelPart::~HorizontalTextLabelPart(md::HorizontalTextLabelPart *this)
{
  *this = &unk_1F2A4DA38;
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 1088));
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 976));
  md::TextLabelPart::~TextLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

{
  *this = &unk_1F2A4DA38;
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 1088));
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 976));

  md::TextLabelPart::~TextLabelPart(this);
}

void std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::HorizontalTextLabelPart::LineInfo>(v2, v1);
  }
}

void md::TextLabelPart::~TextLabelPart(md::TextLabelPart *this)
{
  *this = &unk_1F2A4DDE0;
  v2 = *(this + 119);
  if (v2)
  {
    *(this + 120) = v2;
    operator delete(v2);
  }

  v3 = *(this + 112);
  if (v3)
  {
    *(this + 113) = v3;
    operator delete(v3);
  }

  v4 = *(this + 108);
  *(this + 108) = 0;
  if (v4)
  {
    MEMORY[0x1B8C62190](v4, 0x1000C40AE2C30F4);
  }

  v5 = *(this + 107);
  *(this + 107) = 0;
  if (v5)
  {
    MEMORY[0x1B8C62190](v5, 0x1000C40AE2C30F4);
  }

  v6 = *(this + 92);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 77);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 75);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 73);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

{
  md::TextLabelPart::~TextLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void md::LabelText::~LabelText(md::LabelText *this)
{
  *this = &unk_1F29E5388;
  v2 = (this + 128);
  std::vector<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 160));
  v5 = v2;
  std::vector<md::TextGlyph,geo::allocator_adapter<md::TextGlyph,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(this + 15);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::vector<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 64));
  v5 = (this + 32);
  std::vector<md::TextGlyph,geo::allocator_adapter<md::TextGlyph,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

{
  md::LabelText::~LabelText(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::TextGlyph,geo::allocator_adapter<md::TextGlyph,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
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
        v3 -= 40;
        std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v3);
      }

      while (v3 != v2);
      v4 = **result;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextGlyph>(v6, v4);
  }
}

void std::vector<md::TextQuad,geo::allocator_adapter<md::TextQuad,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextQuad>(v2, v1);
  }
}

void md::LabelMapTile::broadcastLabelDeactivate(md::LabelMapTile *this)
{
  if (*(this + 139) == 1)
  {
    *(this + 139) = 0;
    if (*(this + 44) != *(this + 45))
    {
      std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 44);
      *(this + 136) = 1;
    }

    v2 = std::remove_if[abi:nn200100]<std::__wrap_iter<std::shared_ptr<md::LabelMapTileCommand> *>,md::LabelMapTile::removeCommand(md::LabelMapTileCommandType)::$_0>(*(this + 48), *(this + 49), 4u);
    std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::erase(this + 48, v2, *(this + 49));
    v3 = *(this + 18);
    if (v3)
    {
      std::mutex::lock(*(this + 18));
      sig = v3[1].__m_.__sig;
      if (sig)
      {
        (*(*sig + 8))(sig, this);
      }

      std::mutex::unlock(v3);
    }
  }
}

void md::LabelCustomFeatureSupport::removeTile(void *this, md::LabelMapTile *a2)
{
  v4 = this[13];
  v3 = this[14];
  if (v4 != v3)
  {
    while (*v4 != a2)
    {
      if (++v4 == v3)
      {
        goto LABEL_13;
      }
    }

    if (v4 != v3)
    {
      v5 = v4 + 1;
      if (v4 + 1 != v3)
      {
        do
        {
          if (*v5 != a2)
          {
            *v4++ = *v5;
          }

          ++v5;
        }

        while (v5 != v3);
        v3 = this[14];
      }
    }
  }

  if (v4 != v3)
  {
    this[14] = v4;
  }

LABEL_13:
  v6 = this[9];
  v7 = (this + 10);
  if (v6 != this + 10)
  {
    do
    {
      v8 = std::__tree<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,std::__map_value_compare<geo::QuadTile,std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,md::LabelCustomFeatureProvider::TileKeyLess,true>,geo::allocator_adapter<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,mdm::zone_mallocator>>::find<geo::QuadTile>((v6 + 13), a2 + 8);
      if (v6 + 14 != v8)
      {
        v9 = v8;
        v11 = *(v8 + 128);
        v10 = *(v8 + 136);
        v12 = (v8 + 128);
        v13 = v11;
        if (v11 != v10)
        {
          while (*v13 != a2)
          {
            if (++v13 == v10)
            {
              goto LABEL_27;
            }
          }

          if (v13 != v10)
          {
            v14 = v13 + 1;
            if (v13 + 1 != v10)
            {
              do
              {
                if (*v14 != a2)
                {
                  *v13++ = *v14;
                }

                ++v14;
              }

              while (v14 != v10);
              v11 = *(v8 + 128);
              v10 = *(v8 + 136);
            }
          }
        }

        if (v13 != v10)
        {
          v10 = v13;
          *(v8 + 136) = v13;
        }

LABEL_27:
        if (v11 == v10)
        {
          md::LabelCustomFeatureProvider::removeAnnotationsFromFeatureMap(v6 + 5, *(v8 + 168), 0);
          v15 = *(v9 + 8);
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
            v17 = v9;
            do
            {
              v16 = v17[2];
              v18 = *v16 == v17;
              v17 = v16;
            }

            while (!v18);
          }

          if (v6[13] == v9)
          {
            v6[13] = v16;
          }

          v6[16] = (v6[16] - 1);
          std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6[14], v9);
          *(v9 + 160) = &unk_1F2A436C8;

          std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v12);
          v20 = mdm::zone_mallocator::instance(v19);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,void *>>(v20, v9);
        }
      }

      v21 = v6[1];
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
          v22 = v6[2];
          v18 = *v22 == v6;
          v6 = v22;
        }

        while (!v18);
      }

      v6 = v22;
    }

    while (v22 != v7);
  }
}

uint64_t std::__tree<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,std::__map_value_compare<geo::QuadTile,std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,md::LabelCustomFeatureProvider::TileKeyLess,true>,geo::allocator_adapter<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,mdm::zone_mallocator>>::find<geo::QuadTile>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *(a2 + 1);
  v6 = v2;
  v7 = *(a2 + 4);
  v8 = *(a2 + 8);
  do
  {
    v9 = *(v3 + 33);
    if (v9 == v5)
    {
      v10 = *(v3 + 40);
      v11 = v10 < v8;
      if (v10 == v8)
      {
        v11 = *(v3 + 36) < v7;
      }

      v12 = v11;
    }

    else
    {
      v12 = v9 < v5;
    }

    v13 = !v12;
    if (v12)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v6 = v3;
    }

    v3 = *(v3 + v14);
  }

  while (v3);
  if (v2 == v6)
  {
    return v2;
  }

  v15 = *(v6 + 33);
  if (v5 != v15)
  {
    if (v5 >= v15)
    {
      return v6;
    }

    return v2;
  }

  v16 = *(v6 + 40);
  v17 = v8 < v16;
  if (v8 == v16)
  {
    v17 = v7 < *(v6 + 36);
  }

  if (v17)
  {
    return v2;
  }

  return v6;
}

void md::LabelCustomFeatureProvider::removeAnnotationsFromFeatureMap(md::LabelManager **this, NSArray *a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = a2;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = *v22;
    v8 = this + 26;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        v11 = v10;
        v12 = *v8;
        if (*v8)
        {
          v13 = this + 26;
          do
          {
            v14 = *(v12 + 4);
            v15 = v14 >= v10;
            v16 = v14 < v10;
            if (v15)
            {
              v13 = v12;
            }

            v12 = *(v12 + v16);
          }

          while (v12);
          if (v13 != v8 && v10 >= v13[4])
          {
            v17 = *(v13 + 15);
            if (a3)
            {
              *(v13 + 15) = --v17;
            }

            v18 = *(v13 + 14) - 1;
            *(v13 + 14) = v18;
            if (v18 == v17)
            {
              v19 = v13[5];
              *(v19 + 145) = 0;
              v20 = *(v19 + 142);
              v18 = v17;
              if (v20 == 1)
              {
                md::LabelManager::clearPreviouslySelectedLabelMarker(this[1]);
                v18 = *(v13 + 14);
              }
            }

            if (!v18)
            {
              (*(*v13[5] + 88))(v13[5]);
              std::__tree<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,std::__map_value_compare<objc_object  {objcproto25VKCustomFeatureAnnotation}*,md::LabelCustomFeatureProvider::FeatureInfo,std::less<objc_object  {objcproto25VKCustomFeatureAnnotation}*>,true>,geo::allocator_adapter<md::LabelCustomFeatureProvider::FeatureInfo,mdm::zone_mallocator>>::erase((this + 25), v13);
            }
          }
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }
}

void md::Label::setActive(int32x2_t *this, int a2, md::LabelPool *a3)
{
  if (this[167].u8[5] != a2)
  {
    this[167].i8[5] = a2;
    if ((a2 & 1) == 0)
    {
      md::Label::clearStagingParts(this);
      v4 = this[3];
      if (v4)
      {
        md::LabelDedupingGroup::removeLabel(v4, this);
        this[3] = 0;
      }

      this[106].i8[7] = 0;
      this[59] = vdup_n_s32(0xC2C80000);
      if (this[60].i8[3] == 1)
      {
        *(*&this[57] + 285) = 1;
        this[60].i8[3] = 0;
      }

      v5 = this[58];
      this[57] = 0;
      this[58] = 0;
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      this[168].i8[7] = 0;
    }
  }
}

uint64_t md::Label::clearStagingParts(uint64_t this)
{
  if ((*(this + 1339) & 1) == 0)
  {
    v1 = this;
    *(this + 1371) = 0;
    *(this + 1338) = 0;
    *(this + 1373) = 0;
    v2 = *(this + 264);
    *(v1 + 264) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(v1 + 272);
    *(v1 + 272) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = *(v1 + 304);
    *(v1 + 304) = 0;
    if (this)
    {
      this = (*(*this + 8))(this);
    }

    if (*(v1 + 288))
    {
      *(v1 + 288) = 0;
      *(v1 + 1335) = 1;
    }
  }

  return this;
}

void md::WorldSpaceLabelPart::~WorldSpaceLabelPart(md::WorldSpaceLabelPart *this)
{
  *this = &unk_1F29E8E38;
  v2 = *(this + 80);
  *(this + 80) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
  v4 = mdm::zone_mallocator::instance(v3);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, this);
}

{
  *this = &unk_1F29E8E38;
  v2 = *(this + 80);
  *(this + 80) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  md::CompositeLabelPart::~CompositeLabelPart(this);
}

void RouteAnnotationIconLabelPart::~RouteAnnotationIconLabelPart(RouteAnnotationIconLabelPart *this)
{
  md::IconLabelPart::~IconLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

uint16x4_t *md::LabelCoreStyleGroup::update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, float a6, float a7)
{
  v8 = a4;
  if (a6 >= 0x17)
  {
    v14 = 23;
  }

  else
  {
    v14 = a6;
  }

  if (a5)
  {
    *(a1 + 107) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  v15 = *(a3 + 20 * a4);
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 193, v14, 1u, 0);
  v16 = v15 * a7;
  v18 = (v15 * a7) * v17;
  *(a1 + 32) = v18;
  v19 = *(*a2 + 24);
  if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v19, 0x172u, v14))
  {
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v19, 370, v14, 1u, 0);
    v18 = fminf(v16 * v20, *(a1 + 32));
    v19 = *(*a2 + 24);
  }

  *(a1 + 36) = v18;
  v21 = fminf(fmaxf(a6, 0.0), 23.0);
  v22 = *(v19 + 12);
  if (v22 != 2)
  {
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 94, *(v19 + 12), 0, v21);
    *(a1 + 12) = v23;
LABEL_10:
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 234, v22, 0, v21);
    *(a1 + 8) = v24 * a7;
LABEL_11:
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 329, v22, 0, v21);
    *(a1 + 60) = v25 * a7;
LABEL_12:
    result = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 345, v22, 0, v21);
    v28 = v27;
    goto LABEL_13;
  }

  LOBYTE(v65) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 94, 0, &v65, v21);
  v59 = v58;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 94, 1, &v67, v21);
  v22 = *(v19 + 12);
  *(a1 + 12) = v59;
  if (v22 != 2)
  {
    goto LABEL_10;
  }

  LOBYTE(v65) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 234, 0, &v65, v21);
  v61 = v60;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 234, 1, &v67, v21);
  v22 = *(v19 + 12);
  *(a1 + 8) = v61 * a7;
  if (v22 != 2)
  {
    goto LABEL_11;
  }

  LOBYTE(v65) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 329, 0, &v65, v21);
  v63 = v62;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 329, 1, &v67, v21);
  v22 = *(v19 + 12);
  *(a1 + 60) = v63 * a7;
  if (v22 != 2)
  {
    goto LABEL_12;
  }

  LOBYTE(v65) = 1;
  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 345, 0, &v65, v21);
  v28 = v64;
  result = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v19, 345, 1, &v67, v21);
LABEL_13:
  *(a1 + 56) = fmaxf(v28, 0.01);
  if (a5)
  {
    *a1 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v19, 91, v14, 1u, 0);
    *(a1 + 101) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 123, v14, 1, 0);
    *(a1 + 1) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 314, v14, 1u, 0);
    *(a1 + 16) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 104, v14, 1, 0);
    v29 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(*(*a2 + 24), 132, v14, 1, 0);
    v30 = v29;
    if (v29 <= -3)
    {
      v30 = -3;
    }

    if (v30 >= 7)
    {
      LOBYTE(v30) = 7;
    }

    if ((v29 - 8) >= 0xF5u)
    {
      LOBYTE(v30) = v29;
    }

    *(a1 + 100) = v30;
    v31 = *(*a2 + 24);
    if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v31, 0xD6u, v14))
    {
      LOBYTE(v32) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v31, 214, v14, 1u, 0);
    }

    else
    {
      v33 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v31, 170, v14, 1, 0);
      if (v33 > 0xBu)
      {
        LOBYTE(v32) = 0;
      }

      else
      {
        v32 = 0xFFEu >> (v33 & 0xF);
      }
    }

    *(a1 + 2) = v32 & 1;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 347, v14, 1u, 0);
    *(a1 + 64) = v34;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 348, v14, 1u, 0);
    *(a1 + 68) = v35;
    v36 = *(*a2 + 24);
    *(a1 + 5) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned char>(v36, 393, v14, 0);
    *(a1 + 20) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(v36, 235, v14, 1, 0);
    v37 = *(*a2 + 24);
    if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v37, 0xEDu, v14))
    {
      v38 = 237;
    }

    else
    {
      v38 = 132;
    }

    v39 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<int>(v37, v38, v14, 1, 0);
    v40 = v39;
    if (v39 <= -3)
    {
      v40 = -3;
    }

    if (v40 >= 7)
    {
      LOBYTE(v40) = 7;
    }

    if ((v39 - 8) >= 0xF5u)
    {
      LOBYTE(v40) = v39;
    }

    *(a1 + 120) = v40;
    *(a1 + 121) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 236, v14, 1, 0);
    v41 = *(*a2 + 24);
    v42 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned char>(v41, 469, v14, 0);
    if (v42 >= 0x1F)
    {
      v43 = 31;
    }

    else
    {
      v43 = v42;
    }

    *(a1 + 122) = v43;
    *(a1 + 116) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v41, 470, v14, 1, 0);
    *(a1 + 40) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 157, v14, 1, 0);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 158, v14, 1u, 0);
    *(a1 + 44) = v44;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 435, v14, 1u, 0);
    *(a1 + 48) = v45;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 447, v14, 1u, 0);
    *(a1 + 52) = v46;
    *(a1 + 110) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 169, v14, 1, 0);
    *(a1 + 111) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 223, v14, 1, 0);
    *(a1 + 102) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 315, v14, 1, 0);
    v47 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 224, v14, 1, 0);
    *(a1 + 104) = gss::MaskToLabelPosition(v47);
    *(a1 + 106) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 225, v14, 1, 0);
    *(a1 + 108) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 167, v14, 1, 0);
    *(a1 + 109) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 168, v14, 1, 0);
    *(a1 + 3) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 272, v14, 1u, 0);
    *(a1 + 112) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 334, v14, 1, 0);
    *(a1 + 113) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 343, v14, 1, 0);
    *(a1 + 103) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 353, v14, 1, 0);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 355, v14, 1u, 0);
    *(a1 + 72) = v48;
    LOBYTE(v65) = 1;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 357, v14, 1u, &v65);
    if (!v65)
    {
      v49 = 3.4028e38;
    }

    *(a1 + 76) = v49;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 436, v14, 1u, 0);
    *(a1 + 80) = v50;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 446, v14, 1u, 0);
    *(a1 + 84) = v51;
    LOBYTE(v65) = 1;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 449, v14, 1u, &v65);
    if (!v65)
    {
      v52 = 0.0;
    }

    *(a1 + 88) = v52;
    LOBYTE(v65) = 1;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 450, v14, 1u, &v65);
    if (!v65)
    {
      v53 = 180.0;
    }

    *(a1 + 92) = v53;
    *(a1 + 4) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 210, v14, 1, 0);
    v66 = 0;
    v65 = 0;
    md::FontSizeInfo::update(&v65, a2, a3, v8, 0, a6);
    *(a1 + 96) = HIDWORD(v65);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 350, v14, 1u, 0);
    *(a1 + 24) = v54;
    *(a1 + 4) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 210, v14, 1, 0);
    result = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v67, *(*a2 + 24), 438, v14, 1u, 0, v55, v56);
    v57 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v67)), vdupq_n_s32(0x3B7F00FFu))));
    *(a1 + 28) = vuzp1_s8(v57, v57).u32[0];
  }

  return result;
}

uint64_t md::LabelDedupingGroup::removeLabel(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v3 != v2)
  {
    while (*v3 != a2)
    {
      if (++v3 == v2)
      {
        goto LABEL_13;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 1;
      if (v3 + 1 != v2)
      {
        do
        {
          if (*v4 != a2)
          {
            *v3++ = *v4;
          }

          ++v4;
        }

        while (v4 != v2);
        v2 = a1[2];
      }
    }
  }

  if (v3 != v2)
  {
    a1[2] = v3;
  }

LABEL_13:
  v5 = *(*a1 + 48);

  return v5(a1, a2);
}

void md::LabelStyle::updateStyleGroup<md::LabelTextStyleGroup>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 8) = *(a1 + 104);
  if (*a1)
  {
    v5 = md::LabelStyle::styleQueryForComponent(a1, a3, 0);
    v6 = *v5;
    if (*v5)
    {
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v8, v6, v7);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      if (v11 == 1)
      {
        md::LabelTextStyleGroup::update(*a2, &v8, *(a1 + 16), *(a1 + 93), 0, *(a1 + 104), *(a1 + 88));
        if (v11)
        {
          (*(*v8 + 56))(v8);
        }
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }
    }
  }
}

void sub_1B2BC7D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

unsigned __int8 *md::LabelStyle::styleQueryForComponent(unsigned __int8 **a1, __int16 a2, __int16 a3)
{
  v20 = *MEMORY[0x1E69E9840];
  LOBYTE(v18) = a2;
  BYTE1(v18) = a3;
  v6 = geo::linear_map<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::equal_to<md::LabelStyle::StyleQueryOptions>,std::allocator<std::pair<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>,std::vector<std::pair<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>::operator[](a1 + 8, &v18);
  if (!*v6)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v18, (*a1 + 240));
    v7 = v18;
    if (v18 != v19)
    {
      while (*v7 != 65612)
      {
        v7 += 2;
        if (v7 == v19)
        {
          goto LABEL_7;
        }
      }
    }

    if (v7 == v19)
    {
LABEL_7:
      LODWORD(v17[0]) = 65612;
      WORD2(v17[0]) = a2;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::push_back[abi:nn200100](&v18, v17);
    }

    LODWORD(v17[0]) = 65594;
    WORD2(v17[0]) = a3;
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::push_back[abi:nn200100](&v18, v17);
    v8 = *a1;
    v9 = *(*a1 + 2);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = v8[1];
        if (v12)
        {
          std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v17, &v18);
          gss::FeatureAttributeSet::sort(v17[0], v17[1]);
          gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v16, v12, v17, *a1 + 34);
          v13 = v16;
          v16 = 0uLL;
          v14 = *(v6 + 1);
          *v6 = v13;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v14);
            if (*(&v16 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v16 + 1));
            }
          }

          std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v17);
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v18);
  }

  return v6;
}

void sub_1B2BC7F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  _Unwind_Resume(a1);
}

int *md::FontSizeInfo::update(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, float a6)
{
  v11 = a6;
  if (a6 >= 0x17)
  {
    v12 = 23;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*a2 + 24);
  if (a5 && gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(*(*a2 + 24), 0xBFu, v12))
  {
    v14 = fminf(fmaxf(a6, 0.0), 23.0);
    v15 = *(v13 + 12);
    if (v15 != 2)
    {
      v16 = v13;
      v17 = 191;
LABEL_17:
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, v17, v15, 0, v14);
      v24 = v26;
      hasTargetValueForKeyAtZ = 1;
      goto LABEL_19;
    }

    hasTargetValueForKeyAtZ = 1;
    v45 = 1;
    v36 = v14;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 191, 0, &v45, v14);
    v24 = v41;
    v38 = &v44;
    v39 = v13;
    v40 = 191;
LABEL_30:
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, v40, 1, v38, v36);
    goto LABEL_19;
  }

  if ((gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v13, 9u, v12) & 1) != 0 || (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v13, 0x64u, v12) & 1) == 0)
  {
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v13, 9, v12, 1u, 0);
    v24 = v25;
    v13 = *(*a2 + 24);
    if (!gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v13, 0xAu, v12))
    {
      hasTargetValueForKeyAtZ = 0;
      goto LABEL_19;
    }

    v14 = fminf(fmaxf(a6, 0.0), 23.0);
    v15 = *(v13 + 12);
    if (v15 != 2)
    {
      v16 = v13;
      v17 = 9;
      goto LABEL_17;
    }

    hasTargetValueForKeyAtZ = 1;
    v47 = 1;
    v36 = v14;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 9, 0, &v47, v14);
    v24 = v37;
    v38 = &v46;
    v39 = v13;
    v40 = 9;
    goto LABEL_30;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v13, 100, v12, 1u, 0);
  v19 = v18;
  v13 = *(*a2 + 24);
  hasTargetValueForKeyAtZ = gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v13, 0x65u, v12);
  if (hasTargetValueForKeyAtZ)
  {
    v21 = fminf(fmaxf(a6, 0.0), 23.0);
    v22 = *(v13 + 12);
    if (v22 == 2)
    {
      v49 = 1;
      v42 = v21;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 100, 0, &v49, v21);
      v19 = v43;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 100, 1, &v48, v42);
    }

    else
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v13, 100, v22, 0, v21);
      v19 = v23;
    }
  }

  v24 = v19 * 1.3;
LABEL_19:
  v27 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v13, 328, v12, 1, 0);
  *(a1 + 10) = v27 == 1;
  if (v27 == 1)
  {
    v28 = 1;
  }

  else
  {
    v28 = a4;
  }

  *(a1 + 9) = v28;
  v29 = 20 * v28;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 478, v12, 1u, 0);
  *(a1 + 4) = fminf(v30, *(a3 + v29)) * v24;
  *(a1 + 8) = hasTargetValueForKeyAtZ;
  result = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 119, v12, 1u, 0);
  v33 = v32;
  if (hasTargetValueForKeyAtZ)
  {
    if (v11 >= 0x16)
    {
      v34 = 22;
    }

    else
    {
      v34 = v11;
    }

    result = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 119, (v34 + 1), 1u, 0);
    v33 = v33 + ((v35 - v33) * (a6 - v12));
  }

  *a1 = v33;
  return result;
}

void md::LabelTextStyleGroup::update(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, float a6, float a7)
{
  if (a6 >= 0x17)
  {
    v13 = 23;
  }

  else
  {
    v13 = a6;
  }

  if (a5)
  {
    *(a1 + 52) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 100) = 1099956224;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  v49 = 0;
  v50 = 256;
  v51 = 0;
  md::FontSizeInfo::update(&v49, a2, a3, a4, *(a1 + 68), a6);
  *(a1 + 113) = v51;
  *(a1 + 96) = vmul_n_f32(v49, a7);
  if (a5)
  {
    *(a1 + 109) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 111, v13, 1u, 0);
    *(a1 + 110) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 397, v13, 1u, 0);
    *(a1 + 111) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 398, v13, 1u, 0);
    *(a1 + 108) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 110, v13, 1u, 0);
    *(a1 + 112) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 117, v13, 1u, 0);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&v52, *(*a2 + 24), 0x72u, v13, 1);
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    *(a1 + 72) = v52;
    v14 = HIBYTE(v50);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 109, v13, 1u, 0);
    *(a1 + 104) = (v15 * a7) * *(a3 + 20 * v14 + 4);
  }

  v16 = *(*a2 + 24);
  v17 = fminf(fmaxf(a6, 0.0), 23.0);
  v18 = *(v16 + 12);
  if (v18 == 2)
  {
    v52.__r_.__value_.__s.__data_[0] = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 324, 0, &v52, v17);
    v44 = v43;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 324, 1, &v48, v17);
    v19 = v44;
  }

  else
  {
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*a2 + 24), 324, v18, 0, v17);
  }

  *(a1 + 44) = v19;
  if (a5)
  {
    *(a1 + 64) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v16, 213, v13, 1, 0);
    if (*(a1 + 68) == 1)
    {
      v20 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 287, v13, 1, 0);
      if (v20)
      {
        *(a1 + 64) = v20;
      }
    }

    v21 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a3 + 120), *(*(a3 + 120) + 8));
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v48, *(*a2 + 24), 115, v13, 1u, 0, v22, v23);
    v46 = vdupq_n_s32(0x37800080u);
    *&v52.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v48.f32)), v46);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 482, v13, 1u, 0);
    md::AccessibilityHelper::luminanceAdjustedColor(&v48, *v21, &v52, v24);
    v45 = vdupq_n_s32(0x437F0000u);
    v25 = vcvtq_s32_f32(vmulq_f32(v48, v45));
    v25.n128_u64[0] = vmovn_s32(v25);
    v25.n128_u64[0] = vuzp1_s8(v25.n128_u64[0], v25.n128_u64[0]);
    *(a1 + 8) = v25.n128_u32[0];
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v48, *(*a2 + 24), 116, v13, 1u, 0, v25, *v45.i64);
    *&v52.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v48.f32)), v46);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 483, v13, 1u, 0);
    md::AccessibilityHelper::luminanceAdjustedColor(&v48, *v21, &v52, v26);
    v27 = vcvtq_s32_f32(vmulq_f32(v48, v45));
    v27.n128_u64[0] = vmovn_s32(v27);
    v27.n128_u64[0] = vuzp1_s8(v27.n128_u64[0], v27.n128_u64[0]);
    *(a1 + 12) = v27.n128_u32[0];
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v48, *(*a2 + 24), 349, v13, 1u, 0, v27, *v45.i64);
    *&v52.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v48.f32)), v46);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 484, v13, 1u, 0);
    md::AccessibilityHelper::luminanceAdjustedColor(&v48, *v21, &v52, v28);
    v29 = vcvtq_s32_f32(vmulq_f32(v48, v45));
    v29.n128_u64[0] = vmovn_s32(v29);
    v29.n128_u64[0] = vuzp1_s8(v29.n128_u64[0], v29.n128_u64[0]);
    *(a1 + 16) = v29.n128_u32[0];
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v48, *(*a2 + 24), 351, v13, 1u, 0, v29, *v45.i64);
    *&v52.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v48.f32)), v46);
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 485, v13, 1u, 0);
    md::AccessibilityHelper::luminanceAdjustedColor(&v48, *v21, &v52, v30);
    v31 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v48, v45)));
    *(a1 + 20) = vuzp1_s8(v31, v31).u32[0];
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 482, v13, 1u, 0);
    *(a1 + 52) = v32;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 439, v13, 1u, 0);
    *(a1 + 28) = v33;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 350, v13, 1u, 0);
    *(a1 + 32) = v34;
    v35 = *(*a2 + 24);
    if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v35, 0x1B8u, v13))
    {
      v36 = 440;
    }

    else
    {
      v36 = 352;
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v35, v36, v13, 1u, 0);
    *(a1 + 36) = v37;
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 363, v13, 1u, 0);
    *(a1 + 40) = v38.n128_u32[0];
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v52, *(*a2 + 24), 147, v13, 1u, 0, v38, v39);
    v40 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v52.__r_.__value_.__l.__data_)), vdupq_n_s32(0x3B7F00FFu))));
    *(a1 + 24) = vuzp1_s8(v40, v40).u32[0];
    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 307, v13, 1u, 0);
    *(a1 + 48) = v41 * a7;
    *(a1 + 56) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gm::Matrix<float,2,1>>(*(*a2 + 24), v13, 1).f32[0] * a7;
    *(a1 + 60) = v42 * a7;
  }
}

void std::__hash_table<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::hash<gss::StyleSheetResultCacheKey>,std::equal_to<gss::StyleSheetResultCacheKey>,true>,std::__unordered_map_equal<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,std::equal_to<gss::StyleSheetResultCacheKey>,std::hash<gss::StyleSheetResultCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,gss::zone_mallocator>>::__deallocate_node(void *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<gss::StyleSheetResultCacheKey const,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,0>((v1 + 2));
      v4 = gss::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<gss::StyleSheetResultCacheKey const,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,0>(gss::zone_mallocator *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(a1);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *>,gss::zone_mallocator>>::operator()[abi:nn200100](gss::zone_mallocator *result, void *a2)
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

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *>>(v4, a2);
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *>>(mdm::zone_mallocator *result, void *a2)
{
  v2 = a2;
  v4 = *(result + 1);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*result + 8 * i) = 0;
    }

    *(result + 5) = 0;
    v6 = *(result + 3);
    *(result + 3) = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v10 = v2[2];
        v9 = v2[3];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = v6[3];
        v6[2] = v10;
        v6[3] = v9;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        v8 = *v6;
        std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__node_insert_multi(result, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__deallocate_node(v8);
  }

  for (; v2; v2 = *v2)
  {
    v12 = mdm::zone_mallocator::instance(result);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(v12);
    *v13 = 0;
    v13[1] = 0;
    v14 = v2[2];
    v15 = v2[3];
    v13[2] = v14;
    v13[3] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      v14 = v13[2];
    }

    v16 = HIDWORD(v14);
    v17 = 0x9DDFEA08EB382D69 * ((8 * (v14 & 0x1FFFFFFF) + 8) ^ HIDWORD(v14));
    v13[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__node_insert_multi(result, v13);
  }
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__node_insert_multi(unint64_t result, void *a2)
{
  v3 = result;
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(result + 8);
  v7 = (*(result + 40) + 1);
  v8 = *(result + 48);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (*&v12 == 1)
    {
      v12 = 2;
    }

    else if ((*&v12 & (*&v12 - 1)) != 0)
    {
      result = std::__next_prime(*&v12);
      v12 = result;
      v6 = *(v3 + 8);
    }

    if (*&v12 <= v6)
    {
      if (*&v12 >= v6)
      {
        goto LABEL_40;
      }

      result = vcvtps_u32_f32(*(v3 + 40) / *(v3 + 48));
      if (v6 < 3 || (v19 = vcnt_s8(v6), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
      {
        result = std::__next_prime(result);
      }

      else
      {
        v20 = 1 << -__clz(result - 1);
        if (result >= 2)
        {
          result = v20;
        }
      }

      if (*&v12 <= result)
      {
        v12 = result;
      }

      if (*&v12 >= v6)
      {
        v6 = *(v3 + 8);
        goto LABEL_40;
      }

      if (!*&v12)
      {
        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> **,0>(v3, 0);
        v6 = 0;
        *(v3 + 8) = 0;
        goto LABEL_40;
      }
    }

    v13 = mdm::zone_mallocator::instance(result);
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *>(v13, *&v12);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> **,0>(v3, v14);
    v15 = 0;
    *(v3 + 8) = v12;
    do
    {
      *(*v3 + 8 * v15++) = 0;
    }

    while (*&v12 != v15);
    v16 = *(v3 + 24);
    if (v16)
    {
      v17 = v16[1];
      v18 = vcnt_s8(v12);
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
      {
        if (v17 >= *&v12)
        {
          v17 %= *&v12;
        }
      }

      else
      {
        v17 &= *&v12 - 1;
      }

      *(*v3 + 8 * v17) = v3 + 24;
      for (i = *v16; *v16; i = *v16)
      {
        v22 = i[1];
        if (v18.u32[0] > 1uLL)
        {
          if (v22 >= *&v12)
          {
            v22 %= *&v12;
          }
        }

        else
        {
          v22 &= *&v12 - 1;
        }

        if (v22 == v17)
        {
          v16 = i;
        }

        else
        {
          v23 = *v3;
          v24 = i;
          if (*(*v3 + 8 * v22))
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24 && i[2] == v24[2]);
            *v16 = v24;
            *v25 = **(v23 + 8 * v22);
            **(v23 + 8 * v22) = i;
          }

          else
          {
            *(v23 + 8 * v22) = v16;
            v16 = i;
            v17 = v22;
          }
        }
      }
    }

    v6 = v12;
  }

LABEL_40:
  v26 = vcnt_s8(v6);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = v5;
    if (v6 <= v5)
    {
      v27 = v5 % v6;
    }
  }

  else
  {
    v27 = (v6 - 1) & v5;
  }

  v28 = *v3;
  v29 = *(*v3 + 8 * v27);
  if (v29)
  {
    v30 = 0;
    do
    {
      v31 = v29;
      v29 = *v29;
      if (!v29)
      {
        break;
      }

      v32 = v29[1];
      if (v26.u32[0] > 1uLL)
      {
        v33 = v29[1];
        if (v32 >= v6)
        {
          v33 = v32 % v6;
        }
      }

      else
      {
        v33 = v32 & (v6 - 1);
      }

      if (v33 != v27)
      {
        break;
      }

      v34 = v32 == v5 && v29[2] == a2[2];
      v35 = v34 != (v30 & 1);
      v36 = v30 & v35;
      v30 |= v35;
    }

    while (v36 != 1);
  }

  else
  {
    v31 = 0;
  }

  v37 = a2[1];
  if (v26.u32[0] > 1uLL)
  {
    if (v37 >= v6)
    {
      v37 %= v6;
    }
  }

  else
  {
    v37 &= v6 - 1;
  }

  if (!v31)
  {
    *a2 = *(v3 + 24);
    *(v3 + 24) = a2;
    *(v28 + 8 * v37) = v3 + 24;
    if (!*a2)
    {
      goto LABEL_76;
    }

    v38 = *(*a2 + 8);
    if (v26.u32[0] > 1uLL)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

LABEL_75:
    *(*v3 + 8 * v38) = a2;
    goto LABEL_76;
  }

  *a2 = *v31;
  *v31 = a2;
  if (*a2)
  {
    v38 = *(*a2 + 8);
    if (v26.u32[0] > 1uLL)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

    if (v38 != v37)
    {
      goto LABEL_75;
    }
  }

LABEL_76:
  ++*(v3 + 40);
}

void std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelTile>,std::shared_ptr<md::LabelTile> const&>(mdm::zone_mallocator *result, unint64_t a2, void *a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(result + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*result + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == a2)
          {
            return;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v14 = mdm::zone_mallocator::instance(result);
  v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>>(v14);
  *v15 = 0;
  v15[1] = v8;
  v16 = a3[1];
  v15[2] = *a3;
  v15[3] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = (*(result + 5) + 1);
  v18 = *(result + 12);
  if (!v9 || (v18 * v9) < v17)
  {
    v19 = 1;
    if (v9 >= 3)
    {
      v19 = (v9 & (v9 - 1)) != 0;
    }

    v20 = v19 | (2 * v9);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__rehash<true>(result, v22);
    v9 = *(result + 1);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v23 = *result;
  v24 = *(*result + 8 * v3);
  if (v24)
  {
    *v15 = *v24;
LABEL_40:
    *v24 = v15;
    goto LABEL_41;
  }

  *v15 = *(result + 3);
  *(result + 3) = v15;
  *(v23 + 8 * v3) = result + 24;
  if (*v15)
  {
    v25 = *(*v15 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v25 >= v9)
      {
        v25 %= v9;
      }
    }

    else
    {
      v25 &= v9 - 1;
    }

    v24 = (*result + 8 * v25);
    goto LABEL_40;
  }

LABEL_41:
  ++*(result + 5);
}

uint64_t std::unordered_set<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::unordered_set(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 17) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 24); i; i = *i)
  {
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelTile>,std::shared_ptr<md::LabelTile> const&>(a1, i[2], i + 2);
  }

  return a1;
}

void sub_1B2BC9304(_Unwind_Exception *a1)
{
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(*(v1 + 3));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *__destroy_helper_block_ea8_32c147_ZTSNSt3__113unordered_setINS_10shared_ptrIN2md9LabelTileEEENS_4hashIS4_EENS_8equal_toIS4_EEN3geo17allocator_adapterIS4_N3mdm15zone_mallocatorEEEEE(uint64_t a1)
{
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(*(a1 + 56));

  return std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((a1 + 32));
}

void std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *>>(mdm::zone_mallocator *result, void *a2)
{
  v2 = a2;
  v4 = *(result + 1);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*result + 8 * i) = 0;
    }

    *(result + 5) = 0;
    v6 = *(result + 3);
    *(result + 3) = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        v10 = v2[2];
        v9 = v2[3];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = v6[3];
        v6[2] = v10;
        v6[3] = v9;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        v8 = *v6;
        std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__node_insert_multi(result, v6);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(v8);
  }

  for (; v2; v2 = *v2)
  {
    v12 = mdm::zone_mallocator::instance(result);
    v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelTile>,void *>>(v12);
    *v13 = 0;
    v13[1] = 0;
    v14 = v2[2];
    v15 = v2[3];
    v13[2] = v14;
    v13[3] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      v14 = v13[2];
    }

    v16 = HIDWORD(v14);
    v17 = 0x9DDFEA08EB382D69 * ((8 * (v14 & 0x1FFFFFFF) + 8) ^ HIDWORD(v14));
    v13[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) ^ ((0x9DDFEA08EB382D69 * (v16 ^ (v17 >> 47) ^ v17)) >> 47));
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__node_insert_multi(result, v13);
  }
}

void std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__node_insert_multi(unint64_t result, void *a2)
{
  v3 = result;
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a2[2]));
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a2[2]) ^ (v4 >> 47) ^ v4)) >> 47));
  a2[1] = v5;
  v6 = *(result + 8);
  v7 = (*(result + 40) + 1);
  v8 = *(result + 48);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (*&v12 == 1)
    {
      v12 = 2;
    }

    else if ((*&v12 & (*&v12 - 1)) != 0)
    {
      result = std::__next_prime(*&v12);
      v12 = result;
      v6 = *(v3 + 8);
    }

    if (*&v12 <= v6)
    {
      if (*&v12 >= v6)
      {
        goto LABEL_40;
      }

      result = vcvtps_u32_f32(*(v3 + 40) / *(v3 + 48));
      if (v6 < 3 || (v19 = vcnt_s8(v6), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
      {
        result = std::__next_prime(result);
      }

      else
      {
        v20 = 1 << -__clz(result - 1);
        if (result >= 2)
        {
          result = v20;
        }
      }

      if (*&v12 <= result)
      {
        v12 = result;
      }

      if (*&v12 >= v6)
      {
        v6 = *(v3 + 8);
        goto LABEL_40;
      }

      if (!*&v12)
      {
        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> **,0>(v3, 0);
        v6 = 0;
        *(v3 + 8) = 0;
        goto LABEL_40;
      }
    }

    v13 = mdm::zone_mallocator::instance(result);
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(v13, *&v12);
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> **,0>(v3, v14);
    v15 = 0;
    *(v3 + 8) = v12;
    do
    {
      *(*v3 + 8 * v15++) = 0;
    }

    while (*&v12 != v15);
    v16 = *(v3 + 24);
    if (v16)
    {
      v17 = v16[1];
      v18 = vcnt_s8(v12);
      v18.i16[0] = vaddlv_u8(v18);
      if (v18.u32[0] > 1uLL)
      {
        if (v17 >= *&v12)
        {
          v17 %= *&v12;
        }
      }

      else
      {
        v17 &= *&v12 - 1;
      }

      *(*v3 + 8 * v17) = v3 + 24;
      for (i = *v16; *v16; i = *v16)
      {
        v22 = i[1];
        if (v18.u32[0] > 1uLL)
        {
          if (v22 >= *&v12)
          {
            v22 %= *&v12;
          }
        }

        else
        {
          v22 &= *&v12 - 1;
        }

        if (v22 == v17)
        {
          v16 = i;
        }

        else
        {
          v23 = *v3;
          v24 = i;
          if (*(*v3 + 8 * v22))
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24 && i[2] == v24[2]);
            *v16 = v24;
            *v25 = **(v23 + 8 * v22);
            **(v23 + 8 * v22) = i;
          }

          else
          {
            *(v23 + 8 * v22) = v16;
            v16 = i;
            v17 = v22;
          }
        }
      }
    }

    v6 = v12;
  }

LABEL_40:
  v26 = vcnt_s8(v6);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = v5;
    if (v6 <= v5)
    {
      v27 = v5 % v6;
    }
  }

  else
  {
    v27 = (v6 - 1) & v5;
  }

  v28 = *v3;
  v29 = *(*v3 + 8 * v27);
  if (v29)
  {
    v30 = 0;
    do
    {
      v31 = v29;
      v29 = *v29;
      if (!v29)
      {
        break;
      }

      v32 = v29[1];
      if (v26.u32[0] > 1uLL)
      {
        v33 = v29[1];
        if (v32 >= v6)
        {
          v33 = v32 % v6;
        }
      }

      else
      {
        v33 = v32 & (v6 - 1);
      }

      if (v33 != v27)
      {
        break;
      }

      v34 = v32 == v5 && v29[2] == a2[2];
      v35 = v34 != (v30 & 1);
      v36 = v30 & v35;
      v30 |= v35;
    }

    while (v36 != 1);
  }

  else
  {
    v31 = 0;
  }

  v37 = a2[1];
  if (v26.u32[0] > 1uLL)
  {
    if (v37 >= v6)
    {
      v37 %= v6;
    }
  }

  else
  {
    v37 &= v6 - 1;
  }

  if (!v31)
  {
    *a2 = *(v3 + 24);
    *(v3 + 24) = a2;
    *(v28 + 8 * v37) = v3 + 24;
    if (!*a2)
    {
      goto LABEL_76;
    }

    v38 = *(*a2 + 8);
    if (v26.u32[0] > 1uLL)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

LABEL_75:
    *(*v3 + 8 * v38) = a2;
    goto LABEL_76;
  }

  *a2 = *v31;
  *v31 = a2;
  if (*a2)
  {
    v38 = *(*a2 + 8);
    if (v26.u32[0] > 1uLL)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

    if (v38 != v37)
    {
      goto LABEL_75;
    }
  }

LABEL_76:
  ++*(v3 + 40);
}

md::LabelCustomFeatureSupport *md::LabelCustomFeatureSupport::mapTileWasActivated(md::LabelCustomFeatureSupport *this, md::LabelMapTile **a2)
{
  v3 = this;
  v4 = *(this + 13);
  v5 = *(this + 14);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    v7 = *(this + 15);
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      if ((v9 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = v7 - v4;
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

      v26[4] = this + 128;
      if (v12)
      {
        v13 = mdm::zone_mallocator::instance(this);
        v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelMapTile *>(v13, v12);
      }

      else
      {
        v14 = 0;
      }

      v16 = &v14[8 * v12];
      v15 = &v14[8 * v9];
      *v15 = a2;
      v8 = v15 + 8;
      v17 = v3[13];
      v18 = v3[14] - v17;
      v19 = &v15[-v18];
      memcpy(&v15[-v18], v17, v18);
      v20 = v3[13];
      v3[13] = v19;
      v3[14] = v8;
      v21 = v3[15];
      v3[15] = v16;
      v26[2] = v20;
      v26[3] = v21;
      v26[0] = v20;
      v26[1] = v20;
      this = std::__split_buffer<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator> &>::~__split_buffer(v26);
    }

    else
    {
      *v5 = a2;
      v8 = v5 + 1;
    }

    v3[14] = v8;
    if (v3[12])
    {
      v22 = v3[9];
      if (v22 != v3 + 10)
      {
        do
        {
          md::LabelCustomFeatureProvider::addTile((v22 + 5), a2);
          v23 = v22[1];
          if (v23)
          {
            do
            {
              v24 = v23;
              v23 = *v23;
            }

            while (v23);
          }

          else
          {
            do
            {
              v24 = v22[2];
              v25 = *v24 == v22;
              v22 = v24;
            }

            while (!v25);
          }

          v22 = v24;
        }

        while (v24 != v3 + 10);
      }

      md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(v3, a2[10], a2[11]);
    }
  }

  return this;
}

mdm::zone_mallocator *md::LabelCustomFeatureProvider::addTile(md::LabelCustomFeatureProvider *this, md::LabelMapTile *a2)
{
  v29 = a2;
  v5 = this + 72;
  v4 = *(this + 9);
  if (v4)
  {
    v6 = *(a2 + 9);
    v8 = *(a2 + 3);
    v7 = *(a2 + 4);
    while (1)
    {
      while (1)
      {
        v5 = v4;
        v9 = v4[33];
        if (v6 == v9)
        {
          break;
        }

        if (v6 < v9)
        {
          goto LABEL_12;
        }

        if (v9 >= v6)
        {
          return std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::push_back[abi:nn200100]((v5 + 128), &v29);
        }

LABEL_15:
        v12 = (v5 + 8);
        v4 = *(v5 + 1);
        if (!v4)
        {
          goto LABEL_18;
        }
      }

      v10 = *(v5 + 10);
      if (v7 != v10)
      {
        if (v7 < v10)
        {
          goto LABEL_12;
        }

        if (v10 >= v7)
        {
          return std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::push_back[abi:nn200100]((v5 + 128), &v29);
        }

        goto LABEL_15;
      }

      v11 = *(v5 + 9);
      if (v8 >= v11)
      {
        if (v11 >= v8)
        {
          return std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::push_back[abi:nn200100]((v5 + 128), &v29);
        }

        goto LABEL_15;
      }

LABEL_12:
      v4 = *v5;
      v12 = v5;
      if (!*v5)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = (this + 72);
LABEL_18:
  v13 = mdm::zone_mallocator::instance(this);
  v14 = pthread_rwlock_rdlock((v13 + 32));
  if (v14)
  {
    geo::read_write_lock::logFailure(v14, "read lock", v15);
  }

  v16 = malloc_type_zone_malloc(*v13, 0xC0uLL, 0x10A0040520E554CuLL);
  atomic_fetch_add((v13 + 24), 1u);
  geo::read_write_lock::unlock((v13 + 32));
  v16[56] = 0;
  *(v16 + 36) = *(a2 + 12);
  *(v16 + 16) = *(a2 + 4);
  *(v16 + 6) = *(a2 + 3);
  v16[56] = *(a2 + 32);
  v17 = v29;
  *(v16 + 16) = 0;
  v30 = v17;
  *(v16 + 17) = 0;
  *(v16 + 18) = 0;
  *(v16 + 20) = &unk_1F2A436C8;
  *(v16 + 21) = 0;
  v16[184] = 0;
  v18 = *(MEMORY[0x1E69A1688] + 16);
  v19 = *(v17 + 3);
  _Q2 = *(v17 + 4);
  _D4 = *(MEMORY[0x1E69A1688] + 24);
  __asm { FMLS            D4, D4, V2.D[1] }

  *(v16 + 8) = *&vmulq_f64(v18, v19);
  *(v16 + 9) = _D4;
  *(v16 + 5) = vmulq_f64(vsubq_f64(_Q2, v19), v18);
  *(v16 + 12) = *(v17 + 6);
  *(v16 + 13) = *(v17 + 7);
  *(v16 + 14) = *(v17 + 8);
  *(v16 + 15) = *(v17 + 9);
  std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::push_back[abi:nn200100]((v16 + 128), &v30);
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = v5;
  *v12 = v16;
  v27 = **(this + 8);
  if (v27)
  {
    *(this + 8) = v27;
    v16 = *v12;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(*(this + 9), v16);
  ++*(this + 11);
  return result;
}

void sub_1B2BC9CC0(_Unwind_Exception *a1)
{
  *(v2 + 160) = v3;

  std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
  v6 = mdm::zone_mallocator::instance(v5);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,void *>>(v6, v2);
  _Unwind_Resume(a1);
}

mdm::zone_mallocator *std::vector<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, void *a2)
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
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelMapTile *>(v11, v10);
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
    result = std::__split_buffer<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelMapTile *,geo::allocator_adapter<md::LabelMapTile *,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelMapTile *>(v5, v4);
  }

  return a1;
}

void md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(atomic_ullong *this, md::LabelMapTile *a2, std::__shared_weak_count *a3)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = std::__shared_weak_count::lock(a3);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:nn200100]();
}

void sub_1B2BC9F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__erase_unique<std::shared_ptr<md::LabelMapTile>>(uint64_t *result, unint64_t a2)
{
  v2 = result[1];
  if (v2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
    v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    v7 = vcnt_s8(v2);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
      if (v6 >= *&v2)
      {
        v8 = v6 % *&v2;
      }
    }

    else
    {
      v8 = v6 & (*&v2 - 1);
    }

    v9 = *result;
    v10 = *(*result + 8 * v8);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        v12 = *&v2 - 1;
        do
        {
          v13 = v11[1];
          if (v13 == v6)
          {
            if (v11[2] == a2)
            {
              v14 = v11[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v14 >= *&v2)
                {
                  v14 %= *&v2;
                }
              }

              else
              {
                v14 &= v12;
              }

              v15 = *(v9 + 8 * v14);
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15 != v11);
              if (v16 == result + 3)
              {
                goto LABEL_36;
              }

              v17 = v16[1];
              if (v7.u32[0] > 1uLL)
              {
                if (v17 >= *&v2)
                {
                  v17 %= *&v2;
                }
              }

              else
              {
                v17 &= v12;
              }

              if (v17 != v14)
              {
LABEL_36:
                if (!*v11)
                {
                  goto LABEL_37;
                }

                v18 = *(*v11 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v18 >= *&v2)
                  {
                    v18 %= *&v2;
                  }
                }

                else
                {
                  v18 &= v12;
                }

                if (v18 != v14)
                {
LABEL_37:
                  *(v9 + 8 * v14) = 0;
                }
              }

              v19 = *v11;
              if (*v11)
              {
                v20 = *(v19 + 8);
                if (v7.u32[0] > 1uLL)
                {
                  if (v20 >= *&v2)
                  {
                    v20 %= *&v2;
                  }
                }

                else
                {
                  v20 &= v12;
                }

                if (v20 != v14)
                {
                  *(*result + 8 * v20) = v16;
                  v19 = *v11;
                }
              }

              *v16 = v19;
              *v11 = 0;
              --result[5];
              std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v11);
              return;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v13 >= *&v2)
              {
                v13 %= *&v2;
              }
            }

            else
            {
              v13 &= v12;
            }

            if (v13 != v8)
            {
              return;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }
}