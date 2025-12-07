void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__swap_out_circular_buffer(__int128 **a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = (v4 - (v6 - *a1));
  if (v6 != *a1)
  {
    v8 = v4 - 16 * (v6 - *a1) + 24;
    v9 = v5;
    do
    {
      v10 = *v9;
      *(v8 - 8) = *(v9 + 2);
      *(v8 - 24) = v10;
      v11 = geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v8, (v9 + 24));
      v9 += 48;
      v8 = v11 + 48;
    }

    while (v9 != v6);
    v12 = v5 + 24;
    do
    {
      *(v5 + 3) = off_1F2A4E798;

      v5 += 48;
      v12 += 48;
    }

    while (v5 != v6);
    v5 = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    *(i - 24) = off_1F2A4E798;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL anonymous namespace::PolygonKey::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*(a1 + 2) == *(a2 + 2) && *a1 == *a2)
  {
    if (*a1)
    {
      v2 = 0;
      v3 = 1;
      do
      {
        v4 = *&a1[4 * v2 + 4];
        v5 = *&a2[4 * v2 + 4];
        v6 = vabds_f32(v4, v5);
        v7 = v6 <= (fabsf(v5 + v4) * 0.000011921) || v6 <= 1.1755e-38;
        if ((v3 & 1) == 0)
        {
          break;
        }

        v3 = 0;
        v2 = 1;
      }

      while (v7);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }

  return v7;
}

void ___ZNK2md22PolygonLayerDataSource11buildMeshesERKN3geo8QuadTileERNSt3__16vectorINS1_11_retain_ptrIU8__strongP14VKPolygonGroupNS1_16_retain_objc_arcENS1_17_release_objc_arcENS1_10_hash_objcENS1_11_equal_objcEEENS5_9allocatorISF_EEEERNS5_13unordered_mapIySF_NS5_4hashIyEENS5_8equal_toIyEENSG_INS5_4pairIKySF_EEEEEERNS6_INS5_10shared_ptrINS_21GEOVectorTileResourceEEENSG_ISX_EEEERNS_12TriangulatorIfEERKNSV_IN3gss17StylesheetManagerINS14_10PropertyIDEEEEEf_block_invoke(uint64_t a1, ResourceAccessor *a2)
{
  v2 = a1;
  v63 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  md::MeshSetStorage::prepareStorage(*(a1 + 40), a2);
  v4 = *(v2 + 56);
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    v7 = *(v5 + 8);
    [v7 willAddDataWithAccessor:a2];

    v5 += 24;
  }

  v8 = *(v2 + 64);
  v9 = *v8;
  v43 = *(v8 + 8);
  if (*v8 == v43)
  {
    goto LABEL_76;
  }

  v10 = 1;
  v50 = v2;
  do
  {
    v44 = v9;
    v12 = *v9;
    v11 = v9[1];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = v11;
    v13 = geo::codec::VectorTile::polygonsCount(*(*(v12 + 144) + 96), *(*(v12 + 144) + 104));
    if (!v13)
    {
      goto LABEL_73;
    }

    v14 = v13;
    v15 = 0;
    v16 = v10;
    v46 = v12;
    v48 = v13;
    do
    {
      v17 = *(*(v12 + 144) + 96) + (v15 << 7);
      v18 = v3[760];
      if (v18 == 2)
      {
        if (*(v17 + 123) != 1)
        {
          goto LABEL_16;
        }
      }

      else if (v18 == 1 && *(v17 + 123) == 1)
      {
LABEL_16:
        v10 = v16;
        goto LABEL_72;
      }

      if ((*(*v3 + 152))(v3, v12, *(*(v12 + 144) + 96) + (v15 << 7)))
      {
        goto LABEL_16;
      }

      v19 = *(v17 + 123);
      if (v19 == 1)
      {
        v10 = v16 + 1;
      }

      else
      {
        v10 = v16;
      }

      if (v19 != 1)
      {
        v16 = 0;
      }

      if (!*(v17 + 96))
      {
        goto LABEL_72;
      }

      md::createFeatureAttributeSet(&v61, (v17 + 24));
      v51 = v10;
      gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v59, **(v2 + 72), &v61);
      v20 = v61;
      v21 = v62;
      v22 = gss::FeatureAttributeSet::hash(v61, v62);
      v23 = *(v2 + 88);
      if (!*&v23)
      {
        v28 = &md::LogicManager::executionOrder(void)const::empty;
        goto LABEL_47;
      }

      v24 = v22;
      v25 = vcnt_s8(v23);
      v25.i16[0] = vaddlv_u8(v25);
      v26 = v25.u32[0];
      if (v25.u32[0] > 1uLL)
      {
        v27 = v22;
        if (v22 >= *&v23)
        {
          v27 = v22 % *&v23;
        }
      }

      else
      {
        v27 = (*&v23 - 1) & v22;
      }

      v29 = *(*(v50 + 80) + 8 * v27);
      if (!v29)
      {
        v28 = &md::LogicManager::executionOrder(void)const::empty;
        v2 = v50;
        v12 = v46;
        goto LABEL_47;
      }

      v47 = v16;
      v30 = *v29;
      if (!*v29)
      {
        v28 = &md::LogicManager::executionOrder(void)const::empty;
        goto LABEL_46;
      }

      while (1)
      {
        v31 = v30[1];
        if (v24 == v31)
        {
          if (gss::FeatureAttributeSet::operator==(v30[2], v30[3], v20, v21))
          {
            goto LABEL_44;
          }

          goto LABEL_39;
        }

        if (v26 > 1)
        {
          if (v31 >= *&v23)
          {
            v31 %= *&v23;
          }
        }

        else
        {
          v31 &= *&v23 - 1;
        }

        if (v31 != v27)
        {
          break;
        }

LABEL_39:
        v30 = *v30;
        if (!v30)
        {
          goto LABEL_44;
        }
      }

      v30 = 0;
LABEL_44:
      v28 = v30 + 6;
      if (!v30)
      {
        v28 = &md::LogicManager::executionOrder(void)const::empty;
      }

LABEL_46:
      v2 = v50;
      v12 = v46;
      v16 = v47;
LABEL_47:
      v56[0] = *(v17 + 122);
      v57 = *(v17 + 100);
      v58 = v16;
      v33 = *v28;
      v32 = v28[1];
      if (*v28 == v32)
      {
        v34 = 0;
      }

      else
      {
        v34 = 0;
        do
        {
          {
            v35 = *(v33 + 32);

            v34 = v35;
          }

          v33 += 48;
        }

        while (v33 != v32);
      }

      v36 = v59;
      v37 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v52, v36, v37);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v37);
      }

      if (*(v2 + 120))
      {
        if (*(v17 + 123) == 1)
        {
          v38 = *(v2 + 120);
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
      }

      [v34 addPolygon:v17 accessor:a2 triangulator:*(v2 + 136) withRounder:{v38, v43}];
      if (v55 == 1)
      {
        (*(*v52 + 56))(v52);
      }

      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v54);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v60);
      }

      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v61);
      v14 = v48;
      v10 = v51;
LABEL_72:
      ++v15;
      v16 = v10;
    }

    while (v15 != v14);
LABEL_73:
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    v9 = v44 + 2;
  }

  while (v44 + 2 != v43);
LABEL_76:
  v39 = *(v2 + 56);
  v40 = *v39;
  v41 = v39[1];
  while (v40 != v41)
  {
    v42 = *(v40 + 8);
    [v42 didFinishAddingData];

    v40 += 24;
  }

  md::MeshSetStorage::finalize(*(v2 + 40));
}

uint64_t std::unordered_map<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>::unordered_map(uint64_t a1, unint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = i[3];
    v7 = gss::FeatureAttributeSet::hash(v5, v6);
    v8 = v7;
    v9 = *(a1 + 8);
    if (!*&v9)
    {
      goto LABEL_18;
    }

    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v12 = v7;
      if (v7 >= *&v9)
      {
        v12 = v7 % *&v9;
      }
    }

    else
    {
      v12 = (*&v9 - 1) & v7;
    }

    v13 = *(*a1 + 8 * v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v15 = v14[1];
      if (v15 == v8)
      {
        break;
      }

      if (v11 > 1)
      {
        if (v15 >= *&v9)
        {
          v15 %= *&v9;
        }
      }

      else
      {
        v15 &= *&v9 - 1;
      }

      if (v15 != v12)
      {
        goto LABEL_18;
      }

LABEL_17:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    if (!gss::FeatureAttributeSet::operator==(v14[2], v14[3], v5, v6))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,std::__unordered_map_hasher<gss::FeatureAttributeSet,std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,std::hash<gss::FeatureAttributeSet>,std::equal_to<gss::FeatureAttributeSet>,true>,std::__unordered_map_equal<gss::FeatureAttributeSet,std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,std::equal_to<gss::FeatureAttributeSet>,std::hash<gss::FeatureAttributeSet>,true>,std::allocator<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<gss::FeatureAttributeSet,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,void *>>>::destroy[abi:nn200100]<std::pair<gss::FeatureAttributeSet const,std::vector<std::pair<anonymous namespace::PolygonKey,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>>,void,0>(gss::zone_mallocator *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 5);
    v4 = *(a1 + 4);
    if (v3 != v2)
    {
      v5 = v3 - 24;
      do
      {
        v6 = v3 - 48;
        *(v3 - 24) = off_1F2A4E798;

        v5 -= 48;
        v3 = v6;
      }

      while (v6 != v2);
      v4 = *(a1 + 4);
    }

    *(a1 + 5) = v2;
    operator delete(v4);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
}

void __destroy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrIN2md14MeshSetStorageEEE80c310_ZTSNSt3__113unordered_mapIN3gss19FeatureAttributeSetENS_6vectorINS_4pairIN12_GLOBAL__N_110PolygonKeyEN3geo11_retain_ptrIU8__strongP14VKPolygonGroupNS7_16_retain_objc_arcENS7_17_release_objc_arcENS7_10_hash_objcENS7_11_equal_objcEEEEENS_9allocatorISH_EEEENS_4hashIS2_EENS_8equal_toIS2_EENSI_INS4_IKS2_SK_EEEEEE120c45_ZTSNSt3__110shared_ptrIN2md12PolygonRoundEEE(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t __copy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrIN2md14MeshSetStorageEEE80c310_ZTSNSt3__113unordered_mapIN3gss19FeatureAttributeSetENS_6vectorINS_4pairIN12_GLOBAL__N_110PolygonKeyEN3geo11_retain_ptrIU8__strongP14VKPolygonGroupNS7_16_retain_objc_arcENS7_17_release_objc_arcENS7_10_hash_objcENS7_11_equal_objcEEEEENS_9allocatorISH_EEEENS_4hashIS2_EENS_8equal_toIS2_EENSI_INS4_IKS2_SK_EEEEEE120c45_ZTSNSt3__110shared_ptrIN2md12PolygonRoundEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a2[16];
  a1[15] = a2[15];
  a1[16] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B3045760(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void *>>>::operator()[abi:nn200100](char a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + 24) = off_1F2A4E798;
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t (***std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t (***result)(void), uint64_t (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a3, v6);
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

uint64_t std::__split_buffer<geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
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

void std::__shared_ptr_emplace<md::MeshSetStorage>::__on_zero_shared(void *a1)
{
  ggl::BufferMemory::~BufferMemory((a1 + 19));
  ggl::BufferMemory::~BufferMemory((a1 + 13));
  v2 = a1[12];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[10];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[6];

  std::__tree<gdc::LayerDataWithWorld>::destroy(v4);
}

void std::__shared_ptr_emplace<md::MeshSetStorage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4D568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::PolygonLayerDataSource::~PolygonLayerDataSource(md::PolygonLayerDataSource *this)
{
  md::PolygonLayerDataSource::~PolygonLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A27DC8;
  v2 = *(this + 100);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 96) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void md::LabelSettings_Markers::selectLabelMarker(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(*a1 + 40);
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(v4 + 40);
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(*a1 + 24);
  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v8 + 3544) = v10;
  v11 = *(v8 + 3552);
  *(v8 + 3552) = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = a2[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  operator new();
}

void sub_1B3045BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

void ggl::ConstantDataTyped<ggl::PolygonFill::Fill>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolygonFill::Fill>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5A4B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonFill::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5A410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::VenueWallShadow::WallShadow>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VenueWallShadow::WallShadow>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28470;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueWallShadow::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A283F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Venue3DStroke::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Venue3DStroke::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28288;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28328;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28208;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::VenueWall::WallEndCap>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VenueWall::WallEndCap>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueWall::WallEndCapMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A280E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::VenueWall::WallTop>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VenueWall::WallTop>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28048;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueWall::WallTopMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::VenueWall::Wall>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VenueWall::Wall>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27F28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueWall::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4CA20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B3047414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  MEMORY[0x1B8C62190](v12, v13, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void ggl::ConstantDataTyped<ggl::VenueOpenToBelowShadow::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VenueOpenToBelowShadow::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VenueOpenToBelowShadow::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A287F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B3047824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  MEMORY[0x1B8C62190](v12, v13, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A286D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PolygonSolidFill::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

float md::MuninRoadLabelMarker::screenCollisionBounds(md::MuninRoadLabelMarker *this)
{
  v2 = *(this + 30);
  if (!v2)
  {
    return 3.4028e38;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 3.4028e38;
  }

  if (*(this + 29))
  {
    v4 = *(*(*(*(this + 39) + 64) + 24) + 392);
  }

  else
  {
    v4 = 3.4028e38;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  return v4;
}

uint64_t md::MuninRoadLabelMarker::calloutAnchorRect(md::MuninRoadLabelMarker *this)
{
  result = (*(*this + 464))(this);
  if (result)
  {
    return (*(**(*(this + 39) + 64) + 264))(*(*(this + 39) + 64), 0.0, 0.0, 0.0, 0.0);
  }

  return result;
}

__n128 md::MuninRoadLabelMarker::featureHandles@<Q0>(md::MuninRoadLabelMarker *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(this + 36))
  {
    v18 = a2 + 3;
    v4 = mdm::zone_mallocator::instance(this);
    v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::MarkerFeatureHandle>(v4, 1);
    v6 = *(this + 36);
    v15 = v5;
    v16 = v5;
    v7 = v5 + 72;
    v17.n128_u64[0] = v5;
    v17.n128_u64[1] = (v5 + 72);
    v8 = md::MarkerFeatureHandle::MarkerFeatureHandle(v5, v6, *(this + 225));
    v17.n128_u64[0] = v7;
    v9 = a2[1];
    v10 = v8 + *a2 - v9;
    std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>,md::MarkerFeatureHandle*>(*a2, v9, v10);
    v11 = *a2;
    *a2 = v10;
    v12 = a2[2];
    v14 = v17;
    *(a2 + 1) = v17;
    v17.n128_u64[0] = v11;
    v17.n128_u64[1] = v12;
    v15 = v11;
    v16 = v11;
    std::__split_buffer<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator> &>::~__split_buffer(&v15);
    result = v14;
    a2[1] = v14.n128_u64[0];
  }

  return result;
}

void sub_1B30481B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::__split_buffer<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator> &>::~__split_buffer(&a12);
  std::vector<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a11);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator>,md::MarkerFeatureHandle*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 40) = 0;
      *(a3 + 20) = *(v5 + 20);
      *(a3 + 16) = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 40) = *(v5 + 40);
      *(a3 + 48) = *(v5 + 48);
      *(a3 + 56) = *(v5 + 56);
      *(v5 + 56) = 0;
      *(v5 + 64) = 0;
      v5 += 72;
      a3 += 72;
    }

    while (v5 != a2);
    do
    {
      v6 = *(v4 + 64);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      v4 += 72;
    }

    while (v4 != a2);
  }
}

std::__shared_weak_count *std::__split_buffer<md::MarkerFeatureHandle,geo::allocator_adapter<md::MarkerFeatureHandle,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 72;
    a1 = *(shared_weak_owners - 8);
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::MarkerFeatureHandle>(v5, v4);
  }

  return v1;
}

uint64_t md::MuninRoadLabelMarker::featureTile@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 304);
  *a2 = *(this + 296);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void md::MuninRoadLabelMarker::~MuninRoadLabelMarker(md::MuninRoadLabelMarker *this)
{
  *this = &unk_1F2A28990;
  v2 = *(this + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::LabelMarker::~LabelMarker(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A28990;
  v2 = *(this + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 38);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::LabelMarker::~LabelMarker(this);
}

uint64_t md::ARBuildingLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

void md::ARBuildingLayerDataSource::createLayerData(uint64_t a1, const gdc::LayerDataRequestKey **a2, unsigned __int16 **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap(&v9, *(a1 + 592), *a3, a3[1]);
  v6 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  memset(v8, 0, sizeof(v8));
  gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], v8);
  std::atomic_load[abi:nn200100]<md::RegistryManager>(&v7, (a1 + 800));
  operator new();
}

void sub_1B3049E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, md::MapTileData *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, gdc::Registry *a38, uint64_t a39, std::__shared_weak_count *a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, void *a48)
{
  v49 = LODWORD(STACK[0x440]);
  if (v49 != -1)
  {
    (off_1F2A28CF8[v49])(&STACK[0x2F0], &STACK[0x3E0], a3, a4, a5, a6, a7, a8);
  }

  LODWORD(STACK[0x440]) = -1;
  if (a46 != a48)
  {
    free(a46);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  std::unique_ptr<gdc::Registry>::~unique_ptr[abi:nn200100](&a38);
  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a40);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::ARBuildingTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28D18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::ARBuildingLayerDataSource::constructRequests(void **a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (a2 != a3)
  {
    v14[8] = v3;
    v14[9] = v4;
    v6 = a2;
    do
    {
      *&v8 = gdc::Tiled::tileFromLayerDataKey(v14, *(*v6 + 2));
      (*(*a1[3] + 16))(v12, v8);
      if (v13 == 1)
      {
        ((*a1)[18])(&v9, a1, **v6, v12, *(*v6 + 14), *(*v6 + 12) & 0xFFFFFFFFFFLL);
        gdc::LayerDataRequest::request(*v6, &v9, 0);
        if (v10 != v11)
        {
          free(v10);
        }
      }

      v6 += 2;
    }

    while (v6 != a3);
  }
}

uint64_t md::ARBuildingLayerDataSource::isReadyToDecode(md::ARBuildingLayerDataSource *this)
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

void md::ARBuildingLayerDataSource::~ARBuildingLayerDataSource(md::ARBuildingLayerDataSource *this)
{
  *this = &unk_1F2A28C60;
  v2 = *(this + 101);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 99);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A28C60;
  v2 = *(this + 101);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 99);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void md::DaVinciRoadTileDataRenderable::~DaVinciRoadTileDataRenderable(md::DaVinciRoadTileDataRenderable *this)
{
  *this = &unk_1F2A28D50;
  std::unique_ptr<md::TrailJunctionsResource>::reset[abi:nn200100]((this + 408), 0);
  md::MapTileDataRenderable<md::DaVinciCenterLineRoadsTileData>::~MapTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A28D50;
  std::unique_ptr<md::TrailJunctionsResource>::reset[abi:nn200100]((this + 408), 0);

  md::MapTileDataRenderable<md::DaVinciCenterLineRoadsTileData>::~MapTileDataRenderable(this);
}

mdm::zone_mallocator *std::unique_ptr<md::TrailJunctionsResource>::reset[abi:nn200100](mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v5 = v3[3];
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v6 = mdm::zone_mallocator::instance(v5);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *>>(v6, v3);
        v3 = v4;
      }

      while (v4);
    }

    v7 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v7)
    {
      v8 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::array<md::TrailJunctionRenderable::PassProperties,2ul>>,void *> *> *>(v8, v7);
    }

    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(*(v2 + 24));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](v2);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::MapTileDataRenderable<md::DaVinciCenterLineRoadsTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2C090;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::DaVinciCenterLineRoadsTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::DaVinciCenterLineRoadsTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(char *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,0>((v1 + 16));
      v4 = mdm::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

mdm::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](mdm::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,0>(std::__shared_weak_count *on_zero_shared_weak)
{
  v1 = on_zero_shared_weak;
  shared_weak_owners = on_zero_shared_weak->__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v3 = on_zero_shared_weak[1].__vftable;
    v4 = on_zero_shared_weak->__shared_weak_owners_;
    if (v3 != shared_weak_owners)
    {
      do
      {
        on_zero_shared_weak = v3[-1].__on_zero_shared_weak;
        if (on_zero_shared_weak)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](on_zero_shared_weak);
        }

        v3 = (v3 - 16);
      }

      while (v3 != shared_weak_owners);
      v4 = v1->__shared_weak_owners_;
    }

    v1[1].__vftable = shared_weak_owners;
    v5 = mdm::zone_mallocator::instance(on_zero_shared_weak);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TrailJunctionRenderable>>(v5, v4);
  }

  shared_owners = v1->__shared_owners_;
  if (shared_owners)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](shared_owners);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TrailJunctionRenderable>>(uint64_t a1, void *a2)
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

uint64_t *std::unordered_map<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,geo::allocator_adapter<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::unordered_map(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 16) = v5;
  *(a1 + 17) = 0;
  a1[3] = 0;
  *(a1 + 32) = *(a2 + 32);
  a1[5] = 0;
  *(a1 + 12) = *(a2 + 48);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__rehash<true>(a1, *(a2 + 8));
  v7 = *(a2 + 24);
  if (v7)
  {
    v35 = a1 + 3;
    do
    {
      v8 = v7[2];
      v9 = 0x9DDFEA08EB382D69 * ((8 * (v8 & 0x1FFFFFFF) + 8) ^ HIDWORD(v8));
      v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v9 >> 47) ^ v9);
      v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
      v12 = a1[1];
      if (v12)
      {
        v13 = vcnt_s8(v12);
        v13.i16[0] = vaddlv_u8(v13);
        if (v13.u32[0] > 1uLL)
        {
          v2 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
          if (v11 >= v12)
          {
            v2 = v11 % v12;
          }
        }

        else
        {
          v2 = v11 & (v12 - 1);
        }

        v14 = *(*a1 + 8 * v2);
        if (v14)
        {
          for (i = *v14; i; i = *i)
          {
            v16 = i[1];
            if (v16 == v11)
            {
              if (i[2] == v8)
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v13.u32[0] > 1uLL)
              {
                if (v16 >= v12)
                {
                  v16 %= v12;
                }
              }

              else
              {
                v16 &= v12 - 1;
              }

              if (v16 != v2)
              {
                break;
              }
            }
          }
        }
      }

      v17 = mdm::zone_mallocator::instance(v6);
      v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(v17);
      v18 = v6;
      *v6 = 0;
      *(v6 + 1) = v11;
      v19 = v7[3];
      *(v6 + 2) = v7[2];
      *(v6 + 3) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 6) = 0;
      *(v6 + 56) = *(v7 + 56);
      v21 = v7[4];
      v20 = v7[5];
      v22 = v20 - v21;
      if (v20 != v21)
      {
        if ((v22 >> 4) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v23 = mdm::zone_mallocator::instance(v6);
        v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::TrailJunctionRenderable>>(v23, v22 >> 4);
        v18[4] = v6;
        v18[5] = v6;
        v18[6] = v6 + v22;
        do
        {
          v24 = *(v21 + 1);
          *v6 = *v21;
          *(v6 + 1) = v24;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          v21 += 16;
          v6 = (v6 + 16);
        }

        while (v21 != v20);
        v18[5] = v6;
      }

      v25 = (a1[5] + 1);
      v26 = *(a1 + 12);
      if (!v12 || (v26 * v12) < v25)
      {
        v27 = (v12 & (v12 - 1)) != 0;
        if (v12 < 3)
        {
          v27 = 1;
        }

        v28 = v27 | (2 * v12);
        v29 = vcvtps_u32_f32(v25 / v26);
        if (v28 <= v29)
        {
          v30 = v29;
        }

        else
        {
          v30 = v28;
        }

        std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__rehash<true>(a1, v30);
        v12 = a1[1];
        if ((v12 & (v12 - 1)) != 0)
        {
          if (v11 >= v12)
          {
            v2 = v11 % v12;
          }

          else
          {
            v2 = v11;
          }
        }

        else
        {
          v2 = (v12 - 1) & v11;
        }
      }

      v31 = *a1;
      v32 = *(*a1 + 8 * v2);
      if (v32)
      {
        *v18 = *v32;
      }

      else
      {
        *v18 = *v35;
        *v35 = v18;
        *(v31 + 8 * v2) = v35;
        if (!*v18)
        {
          goto LABEL_49;
        }

        v33 = *(*v18 + 8);
        if ((v12 & (v12 - 1)) != 0)
        {
          if (v33 >= v12)
          {
            v33 %= v12;
          }
        }

        else
        {
          v33 &= v12 - 1;
        }

        v32 = (*a1 + 8 * v33);
      }

      *v32 = v18;
LABEL_49:
      ++a1[5];
LABEL_50:
      v7 = *v7;
    }

    while (v7);
  }

  return a1;
}

void sub_1B304AAF8(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__deallocate_node(v1[3]);
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(a1 + 1);
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

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == a2)
          {
            return i;
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

  v14 = mdm::zone_mallocator::instance(a1);
  v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(v14);
  i = v15;
  *v15 = 0;
  v15[1] = v8;
  v16 = (*a3)[1];
  v15[2] = **a3;
  v15[3] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v15[4] = 0;
  v15[5] = 0;
  v15[6] = 0;
  v17 = (*(a1 + 5) + 1);
  v18 = a1[12];
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

    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__rehash<true>(a1, v22);
    v9 = *(a1 + 1);
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

  v23 = *a1;
  v24 = *(*a1 + 8 * v3);
  if (v24)
  {
    *i = *v24;
LABEL_40:
    *v24 = i;
    goto LABEL_41;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v23 + 8 * v3) = a1 + 6;
  if (*i)
  {
    v25 = *(*i + 8);
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

    v24 = (*a1 + 8 * v25);
    goto LABEL_40;
  }

LABEL_41:
  ++*(a1 + 5);
  return i;
}

void sub_1B304B0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  v11 = 144;
  while (1)
  {
    v12 = *(&v9->__vftable + v11);
    *(&v9->__vftable + v11) = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12, a2, a3, a4, a5, a6, a7, a8);
    }

    v11 -= 8;
    if (v11 == 128)
    {
      while (1)
      {
        v13 = *(&v9->__vftable + v11);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        v11 -= 16;
        if (v11 == 96)
        {
          while (1)
          {
            v14 = *(&v9->__vftable + v11);
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v14);
            }

            v11 -= 16;
            if (v11 == 64)
            {
              while (1)
              {
                v15 = *(&v9->__vftable + v11);
                if (v15)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v15);
                }

                v11 -= 16;
                if (v11 == 32)
                {
                  std::__shared_weak_count::~__shared_weak_count(v9);
                  operator delete(v16);
                  _Unwind_Resume(a1);
                }
              }
            }
          }
        }
      }
    }
  }
}

void std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, uint64_t a2)
{
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::TrailJunctionRenderable>>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v14 = &v12[16 * v10];
    v13 = &v12[16 * v7];
    *v13 = *a2;
    v6 = v13 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v15 = *(result + 1) - *result;
    v16 = &v13[-v15];
    v17 = memcpy(&v13[-v15], *result, v15);
    v18 = *result;
    *result = v16;
    *(result + 1) = v6;
    *(result + 2) = v14;
    if (v18)
    {
      v19 = mdm::zone_mallocator::instance(v17);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TrailJunctionRenderable>>(v19, v18);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  *(result + 1) = v6;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::TrailJunctionRenderable>>(uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<md::TrailJunctionRenderable>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 144;
  do
  {
    v4 = *(v3 + v2);
    *(v3 + v2) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v2 -= 8;
  }

  while (v2 != -16);
  for (i = 0; i != -32; i -= 16)
  {
    v6 = *(a1 + 128 + i);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  for (j = 96; j != 64; j -= 16)
  {
    v8 = *(a1 + j);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  do
  {
    v9 = *(a1 + j);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    j -= 16;
  }

  while (j != 32);
}

void std::__shared_ptr_emplace<md::TrailJunctionRenderable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2DD40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::__rehash<true>(mdm::zone_mallocator *result, size_t __n)
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
      std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> **,0>(v2, 0);
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
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> **,0>(v2, v8);
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

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](mdm::zone_mallocator *a1, uint64_t a2)
{
  if (a1)
  {
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> const,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,0>((a2 + 16));
  }

  if (a2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(v3, a2);
  }
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *> *> *>(v3, v2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<std::shared_ptr<md::TrailJunctionRenderable>,geo::allocator_adapter<std::shared_ptr<md::TrailJunctionRenderable>,mdm::zone_mallocator>>>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x40uLL, 0x102004008E10B50uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void sub_1B304C2CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  __p = (v47 + 72);
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__p);
  __p = (v47 + 48);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__p);
  if (*(v47 + 47) < 0)
  {
    operator delete(*(v47 + 24));
  }

  if (*(v47 + 23) < 0)
  {
    operator delete(*v47);
  }

  _Unwind_Resume(a1);
}

void sub_1B304D248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_1B304E064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKPolylineOverlay;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id _unsnappedPaths(uint64_t *a1, unsigned int a2, void *a3, void *a4, uint64_t a5)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (a2 >= 0x401)
  {
    v13 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    v13 = v21 - ((v12 + 15) & 0xFFFFFFFF0);
    bzero(v13, v12);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  v14 = 0;
  do
  {
    v15 = *a1;
    a1 = (a1 + 12);
    *&v13[8 * v14++] = v15;
  }

  while (a2 != v14);
LABEL_7:
  v16 = [VKTransitPolylinePath alloc];
  v17 = [v11 startPointIndex];
  v18 = -[VKTransitPolylinePath initWithOverlay:section:points:pointCount:reversePoints:transform:routeStartIndex:routeEndIndex:lineID:](v16, "initWithOverlay:section:points:pointCount:reversePoints:transform:routeStartIndex:routeEndIndex:lineID:", v9, v11, v13, a2, 0, 0, __PAIR64__([v11 endPointIndex], v17), a5);
  v19 = [MEMORY[0x1E695DEC8] arrayWithObject:v18];
  if (a2 >= 0x401)
  {
    free(v13);
  }

  return v19;
}

void sub_1B304F624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, uint64_t a29, char a30)
{
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  a27 = &a30;
  std::vector<std::unique_ptr<PathInfo>>::__destroy_vector::operator()[abi:nn200100](&a27);

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::unique_ptr<PathInfo>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      MEMORY[0x1B8C62190](v4, 0x1020C4005C7B374);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,false>(unint64_t result, double **a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = a2 - v9;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                v143 = *v9;
                v144 = v9[1];
                v145 = *v144;
                v146 = **v9;
                if (*v144 == v146)
                {
                  v147 = v144 < *v9;
                }

                else
                {
                  v147 = *v144 < v146;
                }

                v148 = *v8;
                v149 = **v8;
                v150 = *v8 < v144;
                if (v149 != v145)
                {
                  v150 = v149 < v145;
                }

                if (!v147)
                {
                  if (!v150)
                  {
                    return result;
                  }

                  v9[1] = v148;
                  *v8 = v144;
                  v138 = *v9;
                  v132 = v9[1];
                  v134 = *v132;
                  goto LABEL_270;
                }

                if (v150)
                {
                  *v9 = v148;
                }

                else
                {
                  *v9 = v144;
                  v9[1] = v143;
                  v212 = **v8;
                  v213 = *v8 < v143;
                  if (v212 != v146)
                  {
                    v213 = v212 < v146;
                  }

                  if (!v213)
                  {
                    return result;
                  }

                  v9[1] = *v8;
                }

                *v8 = v143;
                return result;
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,0>(v9, v9 + 1, v9 + 2, a2 - 1);
              case 5:
                result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,0>(v9, v9 + 1, v9 + 2, v9 + 3);
                v129 = v9[3];
                v130 = **v8;
                v131 = *v8 < v129;
                if (v130 != *v129)
                {
                  v131 = v130 < *v129;
                }

                if (!v131)
                {
                  return result;
                }

                v9[3] = *v8;
                *v8 = v129;
                v133 = v9[2];
                v132 = v9[3];
                v134 = *v132;
                v135 = v132 < v133;
                if (*v132 != *v133)
                {
                  v135 = *v132 < *v133;
                }

                if (!v135)
                {
                  return result;
                }

                v9[2] = v132;
                v9[3] = v133;
                v136 = v9[1];
                v137 = v132 < v136;
                if (v134 != *v136)
                {
                  v137 = v134 < *v136;
                }

                if (!v137)
                {
                  return result;
                }

                v9[1] = v132;
                v9[2] = v136;
                v138 = *v9;
LABEL_270:
                v205 = v132 < v138;
                if (v134 != *v138)
                {
                  v205 = v134 < *v138;
                }

                if (v205)
                {
                  *v9 = v132;
                  v9[1] = v138;
                }

                return result;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return result;
            }

            if (v10 == 2)
            {
              v139 = *v9;
              v140 = **v8;
              v141 = **v9;
              v142 = *v8 < *v9;
              if (v140 != v141)
              {
                v142 = v140 < v141;
              }

              if (v142)
              {
                *v9 = *v8;
                *v8 = v139;
              }

              return result;
            }
          }

          if (v10 <= 23)
          {
            v151 = v9 + 1;
            v153 = v9 == a2 || v151 == a2;
            if (a4)
            {
              if (!v153)
              {
                v154 = 0;
                v155 = v9;
                do
                {
                  v157 = *v155;
                  v156 = v155[1];
                  v155 = v151;
                  v158 = *v156;
                  v159 = v156 < v157;
                  if (*v156 != *v157)
                  {
                    v159 = *v156 < *v157;
                  }

                  if (v159)
                  {
                    v160 = v154;
                    while (1)
                    {
                      *(v9 + v160 + 8) = v157;
                      if (!v160)
                      {
                        break;
                      }

                      v157 = *(v9 + v160 - 8);
                      v161 = v156 < v157;
                      if (v158 != *v157)
                      {
                        v161 = v158 < *v157;
                      }

                      v160 -= 8;
                      if (!v161)
                      {
                        v162 = (v9 + v160 + 8);
                        goto LABEL_212;
                      }
                    }

                    v162 = v9;
LABEL_212:
                    *v162 = v156;
                  }

                  v151 = v155 + 1;
                  v154 += 8;
                }

                while (v155 + 1 != a2);
              }
            }

            else if (!v153)
            {
              do
              {
                v207 = *v7;
                v206 = *(v7 + 8);
                v7 = v151;
                v208 = *v206;
                v209 = v206 < v207;
                if (*v206 != *v207)
                {
                  v209 = *v206 < *v207;
                }

                if (v209)
                {
                  v210 = v151;
                  do
                  {
                    *v210 = v207;
                    v207 = *(v210 - 2);
                    v211 = v206 < v207;
                    if (v208 != *v207)
                    {
                      v211 = v208 < *v207;
                    }

                    --v210;
                  }

                  while (v211);
                  *v210 = v206;
                }

                v151 = (v7 + 8);
              }

              while ((v7 + 8) != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v163 = (v10 - 2) >> 1;
              v164 = v163;
              do
              {
                v165 = v164;
                if (v163 >= v164)
                {
                  v166 = (2 * v164) | 1;
                  v167 = &v9[v166];
                  v168 = *v167;
                  if (2 * v165 + 2 >= v10)
                  {
                    v170 = *v168;
                  }

                  else
                  {
                    v169 = v167[1];
                    v170 = *v169;
                    v171 = v168 < v169;
                    result = *v168 < *v169;
                    if (*v168 != *v169)
                    {
                      v171 = *v168 < *v169;
                    }

                    if (v171)
                    {
                      v168 = v167[1];
                    }

                    else
                    {
                      v170 = *v168;
                    }

                    if (v171)
                    {
                      ++v167;
                      v166 = 2 * v165 + 2;
                    }
                  }

                  v172 = &v9[v165];
                  v173 = *v172;
                  v174 = **v172;
                  v175 = v168 < *v172;
                  if (v170 != v174)
                  {
                    v175 = v170 < v174;
                  }

                  if (!v175)
                  {
                    do
                    {
                      v176 = v167;
                      *v172 = v168;
                      if (v163 < v166)
                      {
                        break;
                      }

                      v177 = (2 * v166) | 1;
                      v167 = &v9[v177];
                      v166 = 2 * v166 + 2;
                      v168 = *v167;
                      if (v166 >= v10)
                      {
                        v178 = *v168;
                        v166 = v177;
                      }

                      else
                      {
                        result = v167[1];
                        v178 = *v168;
                        v179 = v168 < result;
                        if (*v168 != *result)
                        {
                          v179 = *v168 < *result;
                        }

                        if (v179)
                        {
                          v178 = *result;
                          v168 = v167[1];
                          ++v167;
                        }

                        else
                        {
                          v166 = v177;
                        }
                      }

                      v180 = v178 < v174;
                      if (v178 == v174)
                      {
                        v180 = v168 < v173;
                      }

                      v172 = v176;
                    }

                    while (!v180);
                    *v176 = v173;
                  }
                }

                v164 = v165 - 1;
              }

              while (v165);
              do
              {
                v181 = 0;
                v182 = *v9;
                v183 = v9;
                do
                {
                  v184 = &v183[v181];
                  v185 = v184 + 1;
                  v186 = v184[1];
                  v187 = (2 * v181) | 1;
                  v181 = 2 * v181 + 2;
                  if (v181 >= v10)
                  {
                    v181 = v187;
                  }

                  else
                  {
                    v190 = v184[2];
                    v188 = v184 + 2;
                    v189 = v190;
                    LODWORD(result) = v186 < v190;
                    v191 = *v186 < *v190;
                    if (*v186 == *v190)
                    {
                      result = result;
                    }

                    else
                    {
                      result = v191;
                    }

                    if (result)
                    {
                      v186 = v189;
                      v185 = v188;
                    }

                    else
                    {
                      v181 = v187;
                    }
                  }

                  *v183 = v186;
                  v183 = v185;
                }

                while (v181 <= (v10 - 2) / 2);
                if (v185 == --a2)
                {
                  *v185 = v182;
                }

                else
                {
                  *v185 = *a2;
                  *a2 = v182;
                  v192 = (v185 - v9 + 8) >> 3;
                  v193 = v192 < 2;
                  v194 = v192 - 2;
                  if (!v193)
                  {
                    v195 = v194 >> 1;
                    v196 = &v9[v195];
                    v197 = *v196;
                    v198 = *v185;
                    v199 = **v196;
                    v200 = **v185;
                    v201 = *v196 < *v185;
                    if (v199 != v200)
                    {
                      v201 = v199 < v200;
                    }

                    if (v201)
                    {
                      do
                      {
                        v202 = v196;
                        *v185 = v197;
                        if (!v195)
                        {
                          break;
                        }

                        v195 = (v195 - 1) >> 1;
                        v196 = &v9[v195];
                        v197 = *v196;
                        v203 = **v196;
                        v204 = v203 < v200;
                        if (v203 == v200)
                        {
                          v204 = *v196 < v198;
                        }

                        v185 = v202;
                      }

                      while (v204);
                      *v202 = v198;
                    }
                  }
                }

                v193 = v10-- <= 2;
              }

              while (!v193);
            }

            return result;
          }

          v11 = &v9[v10 >> 1];
          v12 = v11;
          v13 = *v8;
          v14 = **v8;
          if (v10 >= 0x81)
          {
            v15 = *v11;
            v16 = *v9;
            v17 = **v11;
            v18 = **v9;
            v19 = v17 < v18;
            if (v17 == v18)
            {
              v19 = *v11 < *v9;
            }

            v20 = v13 < v15;
            if (v14 != v17)
            {
              v20 = v14 < v17;
            }

            if (v19)
            {
              if (v20)
              {
                *v9 = v13;
LABEL_41:
                *v8 = v16;
                goto LABEL_42;
              }

              *v9 = v15;
              *v11 = v16;
              v35 = **v8;
              v36 = *v8 < v16;
              if (v35 != v18)
              {
                v36 = v35 < v18;
              }

              if (v36)
              {
                *v11 = *v8;
                goto LABEL_41;
              }
            }

            else if (v20)
            {
              *v11 = v13;
              *v8 = v15;
              v27 = *v9;
              v28 = **v11;
              v29 = **v9;
              v30 = *v11 < *v9;
              if (v28 != v29)
              {
                v30 = v28 < v29;
              }

              if (v30)
              {
                *v9 = *v11;
                *v11 = v27;
              }
            }

LABEL_42:
            v37 = v11 - 1;
            v38 = *(v11 - 1);
            v39 = v9[1];
            v40 = *v38;
            v41 = *v39;
            if (*v38 == *v39)
            {
              v42 = v38 < v39;
            }

            else
            {
              v42 = *v38 < *v39;
            }

            v43 = *(a2 - 2);
            v44 = v43 < v38;
            if (*v43 != v40)
            {
              v44 = *v43 < v40;
            }

            if (v42)
            {
              if (v44)
              {
                v9[1] = v43;
LABEL_64:
                *(a2 - 2) = v39;
                goto LABEL_65;
              }

              v9[1] = v38;
              *v37 = v39;
              v50 = *(a2 - 2);
              v51 = v50 < v39;
              if (*v50 != v41)
              {
                v51 = *v50 < v41;
              }

              if (v51)
              {
                *v37 = v50;
                goto LABEL_64;
              }
            }

            else if (v44)
            {
              *v37 = v43;
              *(a2 - 2) = v38;
              v45 = v9[1];
              v46 = **v37;
              v47 = *v37 < v45;
              if (v46 != *v45)
              {
                v47 = v46 < *v45;
              }

              if (v47)
              {
                v9[1] = *v37;
                *v37 = v45;
              }
            }

LABEL_65:
            v54 = v11[1];
            v52 = v11 + 1;
            v53 = v54;
            v55 = v9[2];
            v56 = *v54;
            v57 = *v55;
            v58 = v54 < v55;
            v59 = *v54 < *v55;
            if (*v54 == *v55)
            {
              v60 = v58;
            }

            else
            {
              v60 = v59;
            }

            v61 = *(a2 - 3);
            v62 = v61 < v53;
            if (*v61 != v56)
            {
              v62 = *v61 < v56;
            }

            if (v60)
            {
              if (v62)
              {
                v9[2] = v61;
LABEL_82:
                *(a2 - 3) = v55;
                goto LABEL_83;
              }

              v9[2] = v53;
              *v52 = v55;
              v66 = *(a2 - 3);
              v67 = v66 < v55;
              if (*v66 != v57)
              {
                v67 = *v66 < v57;
              }

              if (v67)
              {
                *v52 = v66;
                goto LABEL_82;
              }
            }

            else if (v62)
            {
              *v52 = v61;
              *(a2 - 3) = v53;
              v63 = v9[2];
              v64 = **v52;
              v65 = *v52 < v63;
              if (v64 != *v63)
              {
                v65 = v64 < *v63;
              }

              if (v65)
              {
                v9[2] = *v52;
                *v52 = v63;
              }
            }

LABEL_83:
            v68 = *v12;
            v69 = *v37;
            v70 = **v12;
            v71 = **v37;
            if (v70 == v71)
            {
              v72 = *v12 < *v37;
            }

            else
            {
              v72 = v70 < v71;
            }

            v73 = *v52;
            v74 = **v52;
            v75 = *v52 < v68;
            if (v74 != v70)
            {
              v75 = v74 < v70;
            }

            if (v72)
            {
              if (!v75)
              {
                *v37 = v68;
                *v12 = v69;
                v76 = v74 == v71 ? v73 < v69 : v74 < v71;
                v37 = v12;
                v68 = v73;
                if (!v76)
                {
                  v68 = v69;
LABEL_101:
                  v78 = *v9;
                  *v9 = v68;
                  *v12 = v78;
                  goto LABEL_102;
                }
              }
            }

            else
            {
              if (!v75)
              {
                goto LABEL_101;
              }

              *v12 = v73;
              *v52 = v68;
              if (v74 == v71)
              {
                v77 = v73 < v69;
              }

              else
              {
                v77 = v74 < v71;
              }

              v52 = v12;
              v68 = v69;
              if (!v77)
              {
                v68 = v73;
                goto LABEL_101;
              }
            }

            *v37 = v73;
            *v52 = v69;
            goto LABEL_101;
          }

          v21 = *v9;
          v22 = *v12;
          v23 = **v9;
          v24 = **v12;
          v25 = v23 < v24;
          if (v23 == v24)
          {
            v25 = *v9 < *v12;
          }

          v26 = v13 < v21;
          if (v14 != v23)
          {
            v26 = v14 < v23;
          }

          if (v25)
          {
            if (v26)
            {
              *v12 = v13;
LABEL_59:
              *v8 = v22;
              goto LABEL_102;
            }

            *v12 = v21;
            *v9 = v22;
            v48 = **v8;
            v49 = *v8 < v22;
            if (v48 != v24)
            {
              v49 = v48 < v24;
            }

            if (v49)
            {
              *v9 = *v8;
              goto LABEL_59;
            }
          }

          else if (v26)
          {
            *v9 = v13;
            *v8 = v21;
            v31 = *v12;
            v32 = **v9;
            v33 = **v12;
            v34 = *v9 < *v12;
            if (v32 != v33)
            {
              v34 = v32 < v33;
            }

            if (v34)
            {
              *v12 = *v9;
              *v9 = v31;
            }
          }

LABEL_102:
          --a3;
          v79 = *v9;
          v80 = **v9;
          v81 = v9;
          if (a4)
          {
            break;
          }

          v82 = *(v9 - 1);
          v83 = *v82;
          v84 = v82 < v79;
          v85 = v83 < v80;
          if (v83 == v80)
          {
            v85 = v84;
          }

          v81 = v9;
          if (v85)
          {
            break;
          }

          v108 = **v8;
          v109 = v79 < *v8;
          if (v80 != v108)
          {
            v109 = v80 < v108;
          }

          if (v109)
          {
            do
            {
              v110 = v9[1];
              ++v9;
              v111 = v79 < v110;
              v112 = v80 < *v110;
              if (v80 != *v110)
              {
                v111 = v112;
              }
            }

            while (!v111);
          }

          else
          {
            v113 = (v9 + 1);
            do
            {
              v9 = v113;
              if (v113 >= a2)
              {
                break;
              }

              v113 += 8;
              v114 = **v9;
              v115 = v79 < *v9;
              if (v80 != v114)
              {
                v115 = v80 < v114;
              }
            }

            while (!v115);
          }

          v116 = a2;
          if (v9 < a2)
          {
            v116 = a2;
            do
            {
              v117 = *--v116;
              v118 = v79 < v117;
              v119 = v80 < *v117;
              if (v80 != *v117)
              {
                v118 = v119;
              }
            }

            while (v118);
          }

          if (v9 < v116)
          {
            v120 = *v9;
            v121 = *v116;
            do
            {
              *v9 = v121;
              *v116 = v120;
              do
              {
                v122 = v9[1];
                ++v9;
                v120 = v122;
                v123 = v79 < v122;
                v124 = v80 < *v122;
                if (v80 != *v122)
                {
                  v123 = v124;
                }
              }

              while (!v123);
              do
              {
                v125 = *--v116;
                v121 = v125;
                v126 = v79 < v125;
                v127 = v80 < *v125;
                if (v80 != *v125)
                {
                  v126 = v127;
                }
              }

              while (v126);
            }

            while (v9 < v116);
          }

          v128 = v9 - 1;
          if (v9 - 1 != v7)
          {
            *v7 = *v128;
          }

          a4 = 0;
          *v128 = v79;
        }

        do
        {
          v86 = v81;
          v88 = v81[1];
          ++v81;
          v87 = v88;
          v89 = v88 < v79;
          v90 = *v88 < v80;
          if (*v88 != v80)
          {
            v89 = v90;
          }
        }

        while (v89);
        v91 = a2;
        if (v86 == v9)
        {
          v91 = a2;
          do
          {
            if (v81 >= v91)
            {
              break;
            }

            v95 = *--v91;
            v96 = v95 < v79;
            v97 = *v95 < v80;
            if (*v95 != v80)
            {
              v96 = v97;
            }
          }

          while (!v96);
        }

        else
        {
          do
          {
            v92 = *--v91;
            v93 = v92 < v79;
            v94 = *v92 < v80;
            if (*v92 != v80)
            {
              v93 = v94;
            }
          }

          while (!v93);
        }

        if (v81 < v91)
        {
          v98 = *v91;
          v99 = v81;
          v100 = v91;
          do
          {
            *v99 = v98;
            *v100 = v87;
            do
            {
              v86 = v99;
              v101 = v99[1];
              ++v99;
              v87 = v101;
              v102 = v101 < v79;
              v103 = *v101 < v80;
              if (*v101 != v80)
              {
                v102 = v103;
              }
            }

            while (v102);
            do
            {
              v104 = *--v100;
              v98 = v104;
              v105 = v104 < v79;
              v106 = *v104 < v80;
              if (*v104 != v80)
              {
                v105 = v106;
              }
            }

            while (!v105);
          }

          while (v99 < v100);
        }

        if (v86 != v9)
        {
          *v9 = *v86;
        }

        *v86 = v79;
        if (v81 >= v91)
        {
          break;
        }

LABEL_134:
        result = std::__introsort<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,false>(v7, v86, a3, a4 & 1);
        a4 = 0;
        v9 = v86 + 1;
      }

      v107 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **>(v9, v86);
      v9 = v86 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **>(v86 + 1, a2);
      if (result)
      {
        break;
      }

      if (!v107)
      {
        goto LABEL_134;
      }
    }

    a2 = v86;
    if (!v107)
    {
      continue;
    }

    return result;
  }
}

uint64_t findConnectedPath(double ***a1, double *a2, double **a3, double a4)
{
  *a3 = 0;
  v4 = *a2;
  v5 = *a1;
  v6 = a1[1];
  if (v6 != *a1)
  {
    v7 = v6 - *a1;
    v6 = *a1;
    v8 = v7;
    do
    {
      v9 = v8 >> 1;
      v10 = &v6[v8 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      v8 += ~(v8 >> 1);
      if (*v12 < v4 - a4)
      {
        v6 = v11;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    do
    {
      v13 = v7 >> 1;
      v14 = &v5[v7 >> 1];
      v16 = *v14;
      v15 = v14 + 1;
      v7 += ~(v7 >> 1);
      if (v4 + a4 < *v16)
      {
        v7 = v13;
      }

      else
      {
        v5 = v15;
      }
    }

    while (v7);
  }

  if (v6 == v5)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    v19 = *v6++;
    v18 = v19;
    v20 = fmax(vabdd_f64(v4, *v19), vabdd_f64(a2[1], v19[1]));
    v21 = v20 < a4;
    a4 = fmin(v20, a4);
    if (v21)
    {
      v17 = v18;
    }
  }

  while (v6 != v5);
  if (!v17)
  {
    return 0;
  }

  *a3 = v17;
  return 1;
}

void std::vector<std::unique_ptr<PathInfo>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
          MEMORY[0x1B8C62190](v6, 0x1020C4005C7B374);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double **std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,0>(double **result, double **a2, double **a3, double **a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = **a2;
  v7 = **result;
  if (v6 == v7)
  {
    v8 = *a2 < *result;
  }

  else
  {
    v8 = v6 < v7;
  }

  v9 = *a3;
  v10 = **a3;
  v11 = *a3 < v4;
  if (v10 != v6)
  {
    v11 = v10 < v6;
  }

  if (v8)
  {
    if (v11)
    {
      *result = v9;
LABEL_18:
      *a3 = v5;
      v4 = v5;
      goto LABEL_20;
    }

    *result = v4;
    *a2 = v5;
    v4 = *a3;
    v16 = **a3;
    v17 = *a3 < v5;
    if (v16 != v7)
    {
      v17 = v16 < v7;
    }

    if (v17)
    {
      *a2 = v4;
      goto LABEL_18;
    }
  }

  else if (v11)
  {
    *a2 = v9;
    *a3 = v4;
    v12 = *result;
    v13 = **a2;
    v14 = **result;
    v15 = *a2 < *result;
    if (v13 != v14)
    {
      v15 = v13 < v14;
    }

    if (v15)
    {
      *result = *a2;
      *a2 = v12;
      v4 = *a3;
    }
  }

  else
  {
    v4 = *a3;
  }

LABEL_20:
  v18 = **a4;
  v19 = *a4 < v4;
  if (v18 != *v4)
  {
    v19 = v18 < *v4;
  }

  if (v19)
  {
    *a3 = *a4;
    *a4 = v4;
    v20 = *a2;
    v21 = **a3;
    v22 = **a2;
    v23 = *a3 < *a2;
    if (v21 != v22)
    {
      v23 = v21 < v22;
    }

    if (v23)
    {
      *a2 = *a3;
      *a3 = v20;
      v24 = *result;
      v25 = **a2;
      v26 = **result;
      v27 = *a2 < *result;
      if (v25 != v26)
      {
        v27 = v25 < v26;
      }

      if (v27)
      {
        *result = *a2;
        *a2 = v24;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **>(double **a1, double **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v19 = *a1;
        v20 = a1[1];
        v21 = *v20;
        v22 = **a1;
        if (*v20 == v22)
        {
          v23 = v20 < *a1;
        }

        else
        {
          v23 = *v20 < v22;
        }

        v24 = *(a2 - 1);
        v25 = v24 < v20;
        if (*v24 != v21)
        {
          v25 = *v24 < v21;
        }

        if (v23)
        {
          if (v25)
          {
            *a1 = v24;
          }

          else
          {
            *a1 = v20;
            a1[1] = v19;
            v51 = *(a2 - 1);
            v52 = v51 < v19;
            if (*v51 != v22)
            {
              v52 = *v51 < v22;
            }

            if (!v52)
            {
              return 1;
            }

            a1[1] = v51;
          }

          *(a2 - 1) = v19;
          return 1;
        }

        if (!v25)
        {
          return 1;
        }

        a1[1] = v24;
        *(a2 - 1) = v20;
        v18 = *a1;
        v12 = a1[1];
        v14 = *v12;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,PointInfoSorterByX &,PointInfo **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = v9 < v10;
        if (*v9 != *v10)
        {
          v11 = *v9 < *v10;
        }

        if (!v11)
        {
          return 1;
        }

        a1[3] = v9;
        *(a2 - 1) = v10;
        v13 = a1[2];
        v12 = a1[3];
        v14 = *v12;
        v15 = v12 < v13;
        if (*v12 != *v13)
        {
          v15 = *v12 < *v13;
        }

        if (!v15)
        {
          return 1;
        }

        a1[2] = v12;
        a1[3] = v13;
        v16 = a1[1];
        v17 = v12 < v16;
        if (v14 != *v16)
        {
          v17 = v14 < *v16;
        }

        if (!v17)
        {
          return 1;
        }

        a1[1] = v12;
        a1[2] = v16;
        v18 = *a1;
        break;
      default:
        goto LABEL_29;
    }

    v38 = v12 < v18;
    if (v14 != *v18)
    {
      v38 = v14 < *v18;
    }

    if (v38)
    {
      *a1 = v12;
      a1[1] = v18;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = **a1;
    v8 = v5 < *a1;
    if (*v5 != v7)
    {
      v8 = *v5 < v7;
    }

    if (v8)
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_29:
  v27 = a1 + 2;
  v26 = a1[2];
  v28 = a1[1];
  v29 = *a1;
  v30 = *v28;
  v31 = **a1;
  v32 = v28 < *a1;
  if (*v28 != v31)
  {
    v32 = *v28 < v31;
  }

  v33 = *v26;
  v34 = *v26 < v30;
  if (*v26 == v30)
  {
    v34 = v26 < v28;
  }

  if (v32)
  {
    v35 = a1;
    v36 = a1 + 2;
    if (!v34)
    {
      *a1 = v28;
      a1[1] = v29;
      v37 = v26 < v29;
      if (v33 != v31)
      {
        v37 = v33 < v31;
      }

      v35 = a1 + 1;
      v36 = a1 + 2;
      if (!v37)
      {
        goto LABEL_51;
      }
    }

LABEL_50:
    *v35 = v26;
    *v36 = v29;
    goto LABEL_51;
  }

  if (v34)
  {
    a1[1] = v26;
    *v27 = v28;
    v39 = v26 < v29;
    if (v33 != v31)
    {
      v39 = v33 < v31;
    }

    v35 = a1;
    v36 = a1 + 1;
    if (v39)
    {
      goto LABEL_50;
    }
  }

LABEL_51:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  for (i = 24; ; i += 8)
  {
    v43 = *v40;
    v44 = *v27;
    v45 = **v40;
    v46 = *v40 < v44;
    if (v45 != *v44)
    {
      v46 = v45 < *v44;
    }

    if (v46)
    {
      v47 = i;
      while (1)
      {
        *(a1 + v47) = v44;
        v48 = v47 - 8;
        if (v47 == 8)
        {
          break;
        }

        v44 = *(a1 + v47 - 16);
        v49 = v45 < *v44;
        if (v45 == *v44)
        {
          v49 = v43 < v44;
        }

        v47 -= 8;
        if (!v49)
        {
          v50 = (a1 + v48);
          goto LABEL_63;
        }
      }

      v50 = a1;
LABEL_63:
      *v50 = v43;
      if (++v41 == 8)
      {
        break;
      }
    }

    v27 = v40++;
    if (v40 == a2)
    {
      return 1;
    }
  }

  return v40 + 1 == a2;
}

void sub_1B305135C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a47);

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int>(uint64_t *result, int a2, _DWORD *a3)
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
      v5 = *(v3 + 28);
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

uint64_t md::DaVinciAssetResourceFetcher::createResourceKey(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 8);
  UInt64 = gdc::ResourceKey::getUInt64(v4, 0);
  gdc::ResourceKey::getUInt64(v4, 1u);
  objc_msgSend_style(v3);
  LOBYTE(v7) = GEOTileKeyMakeEmpty();
  *(&v7 + 1) = UInt64;

  return v7;
}

void md::DaVinciAssetResourceFetcher::~DaVinciAssetResourceFetcher(md::DaVinciAssetResourceFetcher *this)
{
  md::IdentifiedGEOResourceFetcher::~IdentifiedGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciAssetOcclusionMeshResourceFetcher::~DaVinciAssetOcclusionMeshResourceFetcher(md::DaVinciAssetOcclusionMeshResourceFetcher *this)
{
  md::IdentifiedGEOResourceFetcher::~IdentifiedGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DaVinciAssetResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28F20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DaVinciAssetOcclusionMeshResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A28F58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::LabelLinePosition::getLabelPoint(md::LabelLinePosition *this, md::LabelPoint *a2)
{
  result = md::LabelLinePosition::pointExists(this);
  if (result)
  {
    v5 = (*(***(this + 3) + 24))(**(this + 3), *(this + 17));
    v6 = v5;
    if (*(this + 9) == 0.0)
    {
      for (i = 0; i != 24; i += 8)
      {
        *(a2 + i) = *(v5 + i);
      }

      *(a2 + 3) = *(v5 + 24);
      *(a2 + 4) = *(v5 + 32);
      v8 = *(v5 + 40);
      *(a2 + 43) = *(v5 + 43);
      *(a2 + 10) = v8;
    }

    else
    {
      result = md::LabelLinePosition::pointAtOffset(this, 1);
      if (!result)
      {
        return result;
      }

      md::LabelPoint::lerped(&v9, v6, *(this + 9), result);
      *a2 = v9;
      *(a2 + 2) = v10;
      *(a2 + 24) = v11;
      *(a2 + 10) = v12[0];
      *(a2 + 43) = *(v12 + 3);
    }

    return 1;
  }

  return result;
}

uint64_t md::LabelLinePosition::offsetDistance(md::LabelLinePosition *this, int64x2_t *a2, double a3)
{
  v6 = *(*this + 159);
  if (a2)
  {
    *a2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    a2[1] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  }

  memset(v53, 0, sizeof(v53));
  *v54 = 2139095039;
  *&v54[4] = 0;
  v54[6] = 0;
  result = md::LabelLinePosition::getLabelPoint(this, v53);
  if (result)
  {
    if (a2)
    {
      v8 = md::LabelPoint::mercatorPoint(v53);
      v9 = 0;
      v10 = 1;
      do
      {
        *&a2->i64[v9] = fmin(*(v8 + 8 * v9), *&a2->i64[v9]);
        v11 = v10;
        *&a2[1].i64[v9] = fmax(*&a2[1].i64[v9], *(v8 + 8 * v9));
        v9 = 1;
        v10 = 0;
      }

      while ((v11 & 1) != 0);
    }

    if (a3 >= 0.0)
    {
      v12 = 1;
    }

    else
    {
      if (*(this + 9) != 0.0)
      {
        md::LabelLinePosition::moveToNextPoint(this);
      }

      v12 = -1;
    }

    v13 = fabs(a3);
    v14 = a2 + 1;
    v15 = 1;
    while (1)
    {
      result = md::LabelLinePosition::pointAtOffset(this, v12);
      if (!result)
      {
        break;
      }

      v16 = result;
      v17 = *&md::LabelPoint::vectorToPoint(v53, result, v6);
      v18 = 0;
      *&v47 = v17;
      *(&v47 + 1) = v19;
      *&v48 = v20;
      v21 = 0.0;
      do
      {
        v21 = v21 + *(&v47 + v18) * *(&v47 + v18);
        v18 += 8;
      }

      while (v18 != 24);
      v22 = sqrt(v21);
      if (v22 + 1.0e-10 >= v13)
      {
        if (v15)
        {
          v29 = (*(***(this + 3) + 24))(**(this + 3), *(this + 17), v22 + 1.0e-10);
          v30 = *&md::LabelPoint::vectorToPoint(v53, v29, v6);
          v31 = 0;
          *&v47 = v30;
          *(&v47 + 1) = v32;
          *&v48 = v33;
          v34 = 0.0;
          do
          {
            v34 = v34 + *(&v47 + v31) * *(&v47 + v31);
            v31 += 8;
          }

          while (v31 != 24);
          v35 = *&md::LabelPoint::vectorToPoint(v29, v16, v6);
          v36 = 0;
          *&v47 = v35;
          *(&v47 + 1) = v37;
          *&v48 = v38;
          v39 = 0.0;
          do
          {
            v39 = v39 + *(&v47 + v36) * *(&v47 + v36);
            v36 += 8;
          }

          while (v36 != 24);
          v13 = sqrt(v34) + v13;
          v22 = sqrt(v39);
        }

        if (v22 == 0.0)
        {
          return 0;
        }

        if (v22 <= v13 + -1.0e-10)
        {
          if (a3 >= 0.0)
          {
            md::LabelLinePosition::moveToNextPoint(this);
          }

          else
          {
            md::LabelLinePosition::moveToPreviousPoint(this);
          }

          v41 = 0.0;
        }

        else
        {
          v40 = a3 < 0.0;
          v41 = v13 / v22;
          if (v40 && v41 != 0.0)
          {
            md::LabelLinePosition::moveToPreviousPoint(this);
            v41 = 1.0 - v41;
          }
        }

        v42 = v41;
        *(this + 9) = v42;
        if (a2)
        {
          v49 = 0;
          v47 = 0u;
          v48 = 0u;
          v50 = 2139095039;
          v51 = 0;
          v52 = 0;
          if (md::LabelLinePosition::getLabelPoint(this, &v47))
          {
            v43 = md::LabelPoint::mercatorPoint(&v47);
            v44 = 0;
            v45 = 1;
            do
            {
              *&a2->i64[v44] = fmin(*(v43 + 8 * v44), *&a2->i64[v44]);
              v46 = v45;
              *&v14->i64[v44] = fmax(*&v14->i64[v44], *(v43 + 8 * v44));
              v44 = 1;
              v45 = 0;
            }

            while ((v46 & 1) != 0);
          }
        }

        return 1;
      }

      if (a2)
      {
        v23 = md::LabelPoint::mercatorPoint(v16);
        v24 = 0;
        v25 = 1;
        do
        {
          *&a2->i64[v24] = fmin(*(v23 + 8 * v24), *&a2->i64[v24]);
          v26 = v25;
          *&v14->i64[v24] = fmax(*&v14->i64[v24], *(v23 + 8 * v24));
          v24 = 1;
          v25 = 0;
        }

        while ((v26 & 1) != 0);
      }

      if (a3 >= 0.0)
      {
        md::LabelLinePosition::moveToNextPoint(this);
      }

      else
      {
        md::LabelLinePosition::moveToPreviousPoint(this);
      }

      for (i = 0; i != 24; i += 8)
      {
        *&v53[i] = *(v16 + i);
      }

      v15 = 0;
      *&v53[24] = *(v16 + 24);
      v28 = *(v16 + 43);
      *v54 = *(v16 + 40);
      *&v54[3] = v28;
      v13 = v13 - v22;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Debug::ExtendedMesh::~ExtendedMesh(ggl::Debug::ExtendedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Debug::ExtendedMesh::~ExtendedMesh(ggl::Debug::ExtendedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MeshTyped<ggl::Debug::ExtendedVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::Debug::ExtendedVbo>::attributesReflection(void)::r = &ggl::Debug::extendedVboReflection;
    }

    ggl::MeshTyped<ggl::Debug::ExtendedVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::Debug::ExtendedVbo>::attributesReflection(void)::r;
    qword_1EB845BA0 = 1;
  }
}

void non-virtual thunk toggl::MeshTyped<ggl::Debug::ExtendedVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Debug::ExtendedVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Debug::LineVBO>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Debug::LineVBO>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Debug::LineVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Debug::LineVBO>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Debug::LineVBO>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Debug::LineVBO>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Debug::LineMesh::~LineMesh(ggl::Debug::LineMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Debug::LineMesh::~LineMesh(ggl::Debug::LineMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Debug::LineVBO>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Debug::LineVBO>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::PolygonSolidFill::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::PolygonSolidFill::MeshPipelineSetup::MeshPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::PipelineSetup(a1, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::PipelineSetup(a1, a2, 0);
  }

  *a1 = &unk_1F2A291A0;
  v11 = a1[17];
  v12 = *a4;
  v13 = a4[1];
  *v11 = *a4;
  v11[1] = 0;
  v14 = a1[29];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v14[1];
  *v14 = v12;
  v14[1] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = a1[17];
  v17 = *a5;
  v18 = a5[1];
  *(v16 + 16) = *a5;
  *(v16 + 24) = 0;
  v19 = a1[29];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(v19 + 24);
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = a1[17];
  v22 = *a6;
  v23 = a6[1];
  *(v21 + 32) = *a6;
  *(v21 + 40) = 0;
  v24 = a1[29];
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(v24 + 40);
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  return a1;
}

void ggl::PolygonSolidFill::CompressedMeshPipelineSetup::~CompressedMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::PolygonSolidFill::CompressedMeshPipelineSetup::CompressedMeshPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::PipelineSetup(a1, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::PipelineSetup(a1, a2, 0);
  }

  *a1 = &unk_1F2A291F8;
  return a1;
}

void ggl::PolygonSolidFill::S2MeshPipelineSetup::~S2MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void *ggl::PolygonSolidFill::S2MeshPipelineSetup::S2MeshPipelineSetup(void *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    ggl::PipelineSetup::PipelineSetup(a1, a2, a3);
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    ggl::PipelineSetup::PipelineSetup(a1, a2, 0);
  }

  *a1 = &unk_1F2A29250;
  v11 = a1[17];
  v12 = *a4;
  v13 = a4[1];
  *v11 = *a4;
  v11[1] = 0;
  v14 = a1[29];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v14[1];
  *v14 = v12;
  v14[1] = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = a1[17];
  v17 = *a5;
  v18 = a5[1];
  *(v16 + 16) = *a5;
  *(v16 + 24) = 0;
  v19 = a1[29];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(v19 + 24);
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = a1[17];
  v22 = *a6;
  v23 = a6[1];
  *(v21 + 32) = *a6;
  *(v21 + 40) = 0;
  v24 = a1[29];
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v25 = *(v24 + 40);
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  return a1;
}

void md::Logic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>,md::ResolvedTileSelectionContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext>,gdc::TypeList<md::FlyoverTileDataResolverContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

uint64_t md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::getResolverFromContext<md::FlyoverTileDataResolverContext>(uint64_t result, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(result + 128);
  v5 = *(v4 + 176);
  v6 = *(v4 + 184);
  if (v5 == v6)
  {
    return result;
  }

  v9 = result;
  v10 = a3;
  do
  {
    md::World::layerDataTypesForSelectionSetType(v20, *(*(v9 + 128) + 152), *v5);
    if (!std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(v20[0], v20[1], a3))
    {
      goto LABEL_31;
    }

    v21[0] = &unk_1F2A0DDA0;
    v21[1] = a2;
    v22 = v21;
    v11 = a4[1];
    if (!*&v11)
    {
      goto LABEL_20;
    }

    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = v10;
      if (*&v11 <= v10)
      {
        v13 = a3 % a4[1];
      }
    }

    else
    {
      v13 = (v11.i32[0] - 1) & v10;
    }

    v14 = *(*a4 + 8 * v13);
    if (!v14 || (v15 = *v14) == 0)
    {
LABEL_20:
      operator new();
    }

    while (1)
    {
      v16 = v15[1];
      if (v16 == v10)
      {
        break;
      }

      if (v12.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
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

    if (*(v15 + 8) != a3)
    {
      goto LABEL_19;
    }

    v17 = v15[6];
    v15[6] = 0;
    if (v17 == (v15 + 3))
    {
      (*(*v17 + 32))(v17);
    }

    else if (v17)
    {
      (*(*v17 + 40))(v17);
    }

    v18 = v22;
    if (v22)
    {
      if (v22 == v21)
      {
        v15[6] = (v15 + 3);
        (*(*v18 + 24))(v18, v15 + 3);
      }

      else
      {
        v15[6] = v22;
        v22 = 0;
      }
    }

    else
    {
      v15[6] = 0;
    }

    std::__function::__value_func<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::~__value_func[abi:nn200100](v21);
LABEL_31:
    result = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v20);
    ++v5;
  }

  while (v5 != v6);
  return result;
}

void sub_1B3052CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,void *>>>>::~unique_ptr[abi:nn200100](va1);
  std::__function::__value_func<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::~__value_func[abi:nn200100](va2);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::~__value_func[abi:nn200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *md::Logic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>,md::ResolvedTileSelectionContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext>,gdc::TypeList<md::FlyoverTileDataResolverContext>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0x8677AD8BA9352C1DLL && (v5 = *(a3 + 32)) != 0)
  {
    v8 = *(a2 + 8);
    v9[0] = gdc::Context::context<md::TileSelectionContext>(v8);
    v9[1] = gdc::Context::get<md::FlyoverTileDataResolverContext>(v8);
    return (*(*a1 + 160))(a1, a2, v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::ResolvedTileSelectionContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ResolvedTileSelectionContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::ResolvedTileSelectionContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ResolvedTileSelectionContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A293F8;
  v2 = a1[4];
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::hash<md::MapDataType>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::equal_to<md::MapDataType>,std::hash<md::MapDataType>,true>,std::allocator<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

void md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::createDebugNode(std::string *a1@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(__p, "TileDependencyLogic");
  gdc::DebugTreeNode::DebugTreeNode(a1, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::~TileDependencyLogicImpl(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));

  JUMPOUT(0x1B8C62190);
}

uint64_t md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::~TileDependencyLogicImpl(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

uint64_t md::StyleLogic::debugConsoleString@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v10);
  if (*(a1 + 120) != *(a1 + 128))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, "Client Style Attributes:[\n", 26);
    gss::attributesToString(__p, *(a1 + 120), *(a1 + 128), 1, "\t", 0);
    if ((v9 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v9 & 0x80u) == 0)
    {
      v5 = v9;
    }

    else
    {
      v5 = __p[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, v4, v5);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v11, "]\n", 2);
  }

  std::stringbuf::str[abi:nn200100](a2, &v12);
  v10[0] = *MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v11 = v6;
  v12 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v15);
}

void sub_1B3053E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = *MEMORY[0x1E69E54D8];
  v35 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a17 = v35;
  a18 = MEMORY[0x1E69E5548] + 16;
  if (a31 < 0)
  {
    operator delete(a26);
  }

  a18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a19);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a34);
  _Unwind_Resume(a1);
}

uint64_t md::StyleLogic::setResolvedIncreaseContrastEnabled(uint64_t this, int a2, float a3)
{
  if (*(this + 1115) != a2)
  {
    v5 = this;
    v6 = *(this + 1184);
    if (v6)
    {
      [v6 stop];
    }

    *(v5 + 1115) = a2;
    gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(*(v5 + 208), 0x10087u, a2);
    gss::ClientStyleState<gss::ScenePropertyID>::setTargetClientStyleAttribute(*(v5 + 224), 0x10087u, *(v5 + 1115));
    md::StyleLogic::queueStyleTransition(v5, a3);
    this = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*(v5 + 192) + 47336), *(*(*(v5 + 192) + 47336) + 8));
    *this = a2;
  }

  return this;
}

void gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributesStr(void *a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a2 + 16));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  gss::attributesToString(a1, (a2 + 216), 1, 0);

  geo::read_write_lock::unlock((a2 + 16));
}

unsigned int *_ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEbT1_SO_SO_T0_(unsigned int *result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *a3;
  if (*a2 >= *result)
  {
    if (v5 < v3)
    {
      *a2 = v5;
      *a3 = v3;
      v7 = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v7;
      v8 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v8;
        v9 = *(result + 2);
        *(result + 2) = *(a2 + 2);
        *(a2 + 2) = v9;
      }
    }
  }

  else if (v5 >= v3)
  {
    *result = v3;
    *a2 = v4;
    v10 = *(result + 2);
    *(result + 2) = *(a2 + 2);
    *(a2 + 2) = v10;
    if (*a3 < v4)
    {
      *a2 = *a3;
      *a3 = v4;
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v10;
    }
  }

  else
  {
    *result = v5;
    *a3 = v4;
    v6 = *(result + 2);
    *(result + 2) = *(a3 + 2);
    *(a3 + 2) = v6;
  }

  return result;
}

unsigned int *_ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEvT1_SO_SO_SO_T0_(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 >= v4)
    {
      v4 = *a3;
    }

    else
    {
      *a2 = v6;
      *a3 = v4;
      v8 = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v8;
      v9 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v9;
        v10 = *(result + 2);
        *(result + 2) = *(a2 + 2);
        *(a2 + 2) = v10;
        v4 = *a3;
      }
    }
  }

  else
  {
    if (v6 < v4)
    {
      *result = v6;
      *a3 = v5;
      v7 = *(result + 2);
      *(result + 2) = *(a3 + 2);
      *(a3 + 2) = v7;
LABEL_9:
      v4 = v5;
      goto LABEL_11;
    }

    *result = v4;
    *a2 = v5;
    v11 = *(result + 2);
    *(result + 2) = *(a2 + 2);
    *(a2 + 2) = v11;
    v4 = *a3;
    if (*a3 < v5)
    {
      *a2 = v4;
      *a3 = v5;
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v11;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 < v4)
  {
    *a3 = *a4;
    *a4 = v4;
    v12 = *(a3 + 2);
    *(a3 + 2) = *(a4 + 2);
    *(a4 + 2) = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v14;
      v15 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v15;
        v16 = *(result + 2);
        *(result + 2) = *(a2 + 2);
        *(a2 + 2) = v16;
      }
    }
  }

  return result;
}

_DWORD *_ZNSt3__116__insertion_sortB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_SO_T0_(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4[2];
        v6 = *v4;
        v4 = v2;
        if (v5 < v6)
        {
          v7 = *v2;
          v8 = v3;
          while (1)
          {
            v9 = result + v8;
            *(v9 + 2) = v6;
            *(v9 + 6) = *(result + v8 + 4);
            if (!v8)
            {
              break;
            }

            v6 = *(v9 - 2);
            v8 -= 8;
            if (v6 <= v7)
            {
              v10 = (result + v8 + 8);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v7;
          *(v10 + 2) = WORD2(v7);
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unsigned int *_ZNSt3__126__insertion_sort_unguardedB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_SO_T0_(unsigned int *result, unsigned int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 3;
      do
      {
        v4 = result[2];
        v5 = *result;
        result = v2;
        if (v4 < v5)
        {
          v6 = *v2;
          v7 = v3;
          do
          {
            v8 = v7;
            *(v7 - 1) = v5;
            v9 = *(v7 - 4);
            v7 -= 4;
            *v8 = v9;
            v5 = *(v8 - 5);
          }

          while (v5 > v6);
          *(v7 - 1) = v6;
          *v7 = WORD2(v6);
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

int *_ZNSt3__114__partial_sortB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEESN_EET1_SO_SO_T2_RT0_(int *result, int *a2, int *a3)
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
      v9 = &result[2 * v7];
      do
      {
        result = _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_(v5, v6, v9--);
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
        if (*v11 < v10)
        {
          *v11 = v10;
          *v5 = v12;
          v13 = *(v11 + 2);
          *(v11 + 2) = *(v5 + 4);
          *(v5 + 4) = v13;
          result = _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_(v5, v6, v5);
          v10 = *v5;
        }

        v11 += 2;
      }

      while (v11 != a3);
    }

    if (v6 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *v5;
        v16 = v5;
        do
        {
          v17 = v16 + 8 * v14;
          v18 = v17 + 8;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v6)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = *(v17 + 16);
            v21 = v17 + 16;
            v20 = v22;
            v23 = *(v21 - 8);
            v24 = v23 >= v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 8);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
          *(v16 + 4) = *(v18 + 4);
          v16 = v18;
        }

        while (v14 <= ((v6 - 2) >> 1));
        if (v18 == v4 - 2)
        {
          *v18 = v15;
          *(v18 + 4) = WORD2(v15);
        }

        else
        {
          *v18 = *(v4 - 2);
          *(v18 + 4) = *(v4 - 2);
          *(v4 - 2) = v15;
          *(v4 - 2) = WORD2(v15);
          v25 = (v18 - v5 + 8) >> 3;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = v5 + 8 * v28;
            v30 = *v29;
            if (*v29 < *v18)
            {
              v31 = *v18;
              do
              {
                v32 = v18;
                v18 = v29;
                *v32 = v30;
                *(v32 + 4) = *(v29 + 4);
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = v5 + 8 * v28;
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
              *(v18 + 4) = WORD2(v31);
            }
          }
        }

        v4 -= 2;
        v26 = v6-- <= 2;
      }

      while (!v26);
    }
  }

  return result;
}

uint64_t *_ZNSt3__131__partition_with_equals_on_leftB8nn200100INS_17_ClassicAlgPolicyEPNS_4pairIN3gss14StyleAttributeEtEERZN2md10StyleLogic15runBeforeLayoutERKNS7_13LayoutContextERKNS7_17LogicDependenciesIJN3gdc8TypeListIJEEESF_EE20ResolvedDependenciesERNS7_17StyleLogicContextEE3__0EET0_SO_SO_T1_(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  if (*(a2 - 8) <= *a1)
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (*v3 <= v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = *(v3++ + 2);
    }

    while (v4 <= v2);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 8);
      a2 -= 8;
    }

    while (v6 > v2);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      v9 = *(v3 + 2);
      *(v3 + 2) = *(a2 + 4);
      *(a2 + 4) = v9;
      do
      {
        v10 = *(v3++ + 2);
        v7 = v10;
      }

      while (v10 <= v2);
      do
      {
        v11 = *(a2 - 8);
        a2 -= 8;
        v8 = v11;
      }

      while (v11 > v2);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 2);
    *(a1 + 2) = *(v3 - 2);
  }

  *(v3 - 2) = v2;
  *(v3 - 2) = WORD2(v2);
  return v3;
}

uint64_t _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEvT1_OT0_NS_15iterator_traitsISO_E15difference_typeESO_(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2 >= 2)
  {
    v3 = a3 - result;
    v4 = (a2 - 2) >> 1;
    if (v4 >= (a3 - result) >> 3)
    {
      v5 = v3 >> 2;
      v6 = (v3 >> 2) + 1;
      v7 = result + 8 * v6;
      v8 = v5 + 2;
      if (v8 >= a2)
      {
        v9 = *v7;
      }

      else
      {
        v9 = *v7;
        v10 = *(v7 + 8);
        if (*v7 <= v10)
        {
          v9 = *(v7 + 8);
        }

        if (*v7 < v10)
        {
          v7 += 8;
          v6 = v8;
        }
      }

      if (v9 >= *a3)
      {
        v11 = *a3;
        do
        {
          v12 = a3;
          a3 = v7;
          *v12 = v9;
          *(v12 + 2) = *(v7 + 4);
          if (v4 < v6)
          {
            break;
          }

          v13 = (2 * v6) | 1;
          v7 = result + 8 * v13;
          v6 = 2 * v6 + 2;
          if (v6 >= a2)
          {
            v9 = *v7;
            v6 = v13;
          }

          else
          {
            v9 = *v7;
            v14 = *(v7 + 8);
            if (*v7 <= v14)
            {
              v9 = *(v7 + 8);
            }

            if (*v7 >= v14)
            {
              v6 = v13;
            }

            else
            {
              v7 += 8;
            }
          }
        }

        while (v9 >= v11);
        *a3 = v11;
        *(a3 + 2) = WORD2(v11);
      }
    }
  }

  return result;
}

uint64_t std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, char *__src)
{
  v6 = *(a2 + 8);
  memcpy(*(a2 + 16), __src, *(a1 + 8) - __src);
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - __src;
  *(a1 + 8) = __src;
  v9 = (__src - v7);
  v10 = (v8 - (__src - v7));
  memcpy(v10, v7, v9);
  *(a2 + 8) = v10;
  v11 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v13;
  *a2 = *(a2 + 8);
  return v6;
}

void ___ZN2md10StyleLogic26initiateTransitionAnimatedEf_block_invoke(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);
  gss::ClientStyleState<gss::ScenePropertyID>::setBlendingFactor(*(v3 + 208), a2);
  gss::ClientStyleState<gss::ScenePropertyID>::setBlendingFactor(*(v3 + 224), a2);
  v5 = 2;
  geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((v3 + 1128), &v5);
  v4 = **(v3 + 1240);
  if (v4)
  {
    v6 = 12;
    md::MapEngine::setNeedsTick(v4, &v6);
  }
}

void ___ZN2md10StyleLogic26initiateTransitionAnimatedEf_block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = **(v3 + 1240);
  if (v4)
  {
    v7 = 12;
    md::MapEngine::setNeedsTick(v4, &v7);
  }

  if (a2)
  {
    md::StyleLogic::_finishStyleBlend(v3);
  }

  v6 = 3;
  geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((v3 + 1128), &v6);
  v5 = *(v3 + 1184);
  if (v5)
  {
    *(v3 + 1184) = 0;
  }

  *(v3 + 337) = 0;
}

void gss::ClientStyleState<gss::PropertyID>::removeTargetClientStyleAttribute(uint64_t a1, unsigned int a2)
{
  v9 = (a1 + 16);
  v4 = pthread_rwlock_wrlock((a1 + 16));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "write lock", v5);
  }

  if (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase((a1 + 240), a2))
  {
    v6 = COERCE_FLOAT(atomic_load((a1 + 272)));
    v7 = v6 <= 0.0;
    v8 = 1;
    if (v7)
    {
      v8 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
    }

    atomic_store(v8, (a1 + 270));
    atomic_fetch_add((a1 + 264), 1u);
  }

  geo::write_lock_guard::~write_lock_guard(&v9);
}

void std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t md::StyleLogic::hybridContext(md::StyleLogic *this)
{
  if (!*(this + 74))
  {
    std::string::basic_string[abi:nn200100]<0>(__p, "hybrid");
    v2 = *(this + 30);
    v3 = *(this + 161);
    v4 = *(this + 17);
    gss::StyleManagerExtension::initWithName<gss::PropertyID>(&v12, __p, v3, v4, v2);
    v5 = *(this + 75);
    *(this + 37) = v12;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    md::StyleLogic::setupDecodingCallbacks(*(this + 151), *(this + 152), this + 74);
  }

  if (!*(this + 76))
  {
    v7 = *(this + 30);
    v6 = *(this + 31);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 76) = v7;
    v8 = *(this + 77);
    *(this + 77) = v6;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  return this + 592;
}

void sub_1B3054B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A29CC0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29CC0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29CC0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29C78;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_1>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29C78;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A29B28;
  result = std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  v5 = *(a1 + 48);
  a2[5] = *(a1 + 40);
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29B28;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29B28;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A29BB8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29BB8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1},std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0::operator() const(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)::{lambda(md::StyleLogic*)#1}>,void ()(md::StyleLogic*)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29BB8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29B70;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::StyleLogic::setupDecodingCallbacks(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29B70;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<gss::StylesheetManager<gss::ScenePropertyID> *,std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>>::__shared_ptr_default_delete<gss::StylesheetManager<gss::ScenePropertyID>,gss::StylesheetManager<gss::ScenePropertyID>>,std::allocator<gss::StylesheetManager<gss::ScenePropertyID>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x1000040CE7E837CuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>,unsigned int,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(gss::zone_mallocator *result)
{
  if ((*(result + 16) & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      v3 = *(result + 2);
      if (v3)
      {
        v4 = 24 * v3;
        v5 = v2 + 8;
        do
        {
          geo::intern_vector<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,unsigned short,geo::allocator_adapter<gss::StyleMatchingTreeNode<gss::CartoStyle<gss::ScenePropertyID>>::SubTreeNode,gss::zone_mallocator>>::deallocateStorage(v5);
          v5 += 24;
          v4 -= 24;
        }

        while (v4);
        v2 = *result;
      }

      v6 = gss::zone_mallocator::instance(result);
      v7 = pthread_rwlock_rdlock((v6 + 32));
      if (v7)
      {
        geo::read_write_lock::logFailure(v7, "read lock", v8);
      }

      if (v2)
      {
        atomic_fetch_add((v6 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v6, v2);
      geo::read_write_lock::unlock((v6 + 32));
    }
  }

  *result = 0;
  *(result + 1) = 0;
  *(result + 16) = 0;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::ConditionalStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::ScenePropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

uint64_t gss::CartoStyle<gss::ScenePropertyID>::~CartoStyle(uint64_t a1)
{
  *a1 = &unk_1F2A29900;
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62170](v2, 0x1000C8077774924);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 56);
  geo::intern_vector<gss::ZoomStyle<gss::ScenePropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::deallocateStorage(a1 + 40);
  geo::intern_vector<unsigned int,unsigned short,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::deallocateStorage((a1 + 24));
  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void geo::intern_vector<gss::ZoomStyle<gss::ScenePropertyID>,unsigned short,geo::allocator_adapter<gss::ZoomStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::deallocateStorage(uint64_t result)
{
  v1 = result;
  if ((*(result + 12) & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      if (*(result + 8))
      {
        v3 = 24 * *(result + 8);
        v4 = v2 + 2;
        do
        {
          result = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](result);
          }

          v4 += 3;
          v3 -= 24;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(result);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

uint64_t gss::ConditionalStyle<gss::ScenePropertyID>::to_string@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v19);
  if (*(*(a1 + 144) + 104))
  {
    v3 = *(*(a1 + 144) + 104);
  }

  else
  {
    v3 = "";
  }

  v4 = strlen(v3);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v3, v4);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, "-condStyle-", 11);
  v5 = MEMORY[0x1B8C61C90](&v20, *(a1 + 156));
  v25[0] = 45;
  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, v25, 1);
  v7 = MEMORY[0x1B8C61C90](v6, *(a1 + 152));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, "-{", 2);
  if (*(a1 + 136))
  {
    v8 = *(a1 + 128);
    v9 = &v8[6 * *(a1 + 136)];
    do
    {
      v10 = *v8;
      v25[0] = 64;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
      v11 = MEMORY[0x1B8C61C90](&v20, v10);
      v25[0] = 61;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, v25, 1);
      if (*(v8 + 8))
      {
        v12 = 0;
        v13 = *(v8 + 1);
        v14 = 4 * *(v8 + 8);
        do
        {
          v15 = *v13;
          if (v12)
          {
            v25[0] = 44;
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
          }

          MEMORY[0x1B8C61C90](&v20, v15);
          ++v13;
          v12 = 1;
          v14 -= 4;
        }

        while (v14);
      }

      v25[0] = 59;
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
      v8 += 6;
    }

    while (v8 != v9);
  }

  v25[0] = 125;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v20, v25, 1);
  std::stringbuf::str[abi:nn200100](a2, &v21);
  v19[0] = *MEMORY[0x1E69E54D8];
  v16 = *(MEMORY[0x1E69E54D8] + 72);
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v20 = v16;
  v21 = MEMORY[0x1E69E5548] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v24);
}

void sub_1B3055AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a10 = *MEMORY[0x1E69E54D8];
  v30 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a12 = v30;
  a13 = MEMORY[0x1E69E5548] + 16;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  a13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a14);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a29);
  _Unwind_Resume(a1);
}

void gss::ConditionalStyle<gss::ScenePropertyID>::~ConditionalStyle(void *a1)
{
  *a1 = &unk_1F2A29960;
  geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage(a1 + 16);
  gss::CartoStyle<gss::ScenePropertyID>::~CartoStyle(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gss::ConditionalStyle<gss::ScenePropertyID>::~ConditionalStyle(void *a1)
{
  *a1 = &unk_1F2A29960;
  geo::intern_vector<gss::StyleCondition,unsigned short,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::deallocateStorage(a1 + 16);

  return gss::CartoStyle<gss::ScenePropertyID>::~CartoStyle(a1);
}

void gss::CartoStyle<gss::ScenePropertyID>::to_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 104))
  {
    v3 = *(a1 + 104);
  }

  else
  {
    v3 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(&v7, v3);
  v4 = std::string::insert(&v7, 0, "[", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v8.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v8.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v8, "]", 1uLL);
  *a2 = *v6;
  v6->__r_.__value_.__r.__words[0] = 0;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1B3055DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void gss::CartoStyle<gss::ScenePropertyID>::~CartoStyle(uint64_t a1)
{
  gss::CartoStyle<gss::ScenePropertyID>::~CartoStyle(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gss::ConditionalStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::ConditionalStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::ScenePropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::ConditionalStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::ConditionalStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A298C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t result)
{
  v1 = result;
  if ((*(result + 12) & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      if (*(result + 8))
      {
        v3 = 16 * *(result + 8);
        v4 = v2 + 1;
        do
        {
          result = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](result);
          }

          v4 += 2;
          v3 -= 16;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(result);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylePropertySet<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylePropertySet<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>::__on_zero_shared(_BYTE *a1)
{
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 128));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 104));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 80));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 56));

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 32));
}

void std::__shared_ptr_emplace<gss::StylePropertySet<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t result)
{
  v1 = result;
  if ((*(result + 12) & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      if (*(result + 8))
      {
        v3 = 16 * *(result + 8);
        v4 = v2 + 1;
        do
        {
          result = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](result);
          }

          v4 += 2;
          v3 -= 16;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(result);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

__n128 std::__function::__func<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#2},std::allocator<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#2}>,void ()(BOOL)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A299D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#1},std::allocator<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}::operator() const(void)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A29988;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A29810;
  v2 = *(a1 + 8);
  *(a2 + 17) = *(a1 + 17);
  *(a2 + 8) = v2;
  return std::__function::__value_func<void ()(BOOL)>::__value_func[abi:nn200100](a2 + 40, a1 + 40);
}

void std::__function::__func<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29810;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 5));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1},std::allocator<gss::StyleSheet<gss::ScenePropertyID>::construct(unsigned char const*,unsigned long,std::string const&,float,gss::TargetDisplay,BOOL,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,std::shared_ptr<std::unordered_map<std::string,int,std::hash<std::string>,std::equal_to<std::string>,geo::allocator_adapter<std::pair<std::string const,int>,gss::zone_mallocator>>> const&,BOOL,BOOL,std::function<void ()(BOOL)>)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A29810;
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100]((a1 + 5));
  return a1;
}

void std::__hash_table<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::__unordered_map_hasher<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::hash<gss::StyleSheetResultCacheKey>,std::equal_to<gss::StyleSheetResultCacheKey>,true>,std::__unordered_map_equal<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::equal_to<gss::StyleSheetResultCacheKey>,std::hash<gss::StyleSheetResultCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,gss::zone_mallocator>>::__deallocate_node(void *result)
{
  if (result)
  {
    v1 = result;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<gss::StyleSheetResultCacheKey const,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,0>((v1 + 2));
      v4 = gss::zone_mallocator::instance(v3);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *>>(v4, v1);
      v1 = v2;
    }

    while (v2);
  }
}

gss::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100](gss::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<gss::StyleSheet<gss::ScenePropertyID>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 3023) < 0)
  {
    operator delete(*(a1 + 3000));
  }

  std::unique_ptr<std::vector<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator>>>::reset[abi:nn200100]((a1 + 2984), 0);
  std::unique_ptr<std::vector<std::function<void ()(BOOL)>,geo::allocator_adapter<std::function<void ()(BOOL)>,gss::zone_mallocator>>>::reset[abi:nn200100]((a1 + 2976), 0);
  std::mutex::~mutex((a1 + 2912));
  std::mutex::~mutex((a1 + 2848));
  std::future<void>::~future((a1 + 2840));
  std::future<void>::~future((a1 + 2832));
  MEMORY[0x1B8C61FC0](a1 + 2824);
  MEMORY[0x1B8C61FC0](a1 + 2816);
  std::__hash_table<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::__unordered_map_hasher<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::hash<gss::StyleSheetResultCacheKey>,std::equal_to<gss::StyleSheetResultCacheKey>,true>,std::__unordered_map_equal<gss::StyleSheetResultCacheKey,std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,std::equal_to<gss::StyleSheetResultCacheKey>,std::hash<gss::StyleSheetResultCacheKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,gss::zone_mallocator>>::__deallocate_node(*(a1 + 2776));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100]((a1 + 2752));
  geo::read_write_lock::~read_write_lock((a1 + 2552));
  v2 = (a1 + 2488);
  v3 = -2048;
  do
  {
    std::mutex::~mutex(v2);
    v2 = (v4 - 64);
    v3 += 64;
  }

  while (v3);
  v13 = (a1 + 472);
  std::vector<std::unique_ptr<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<gss::StyleCondition,geo::allocator_adapter<gss::StyleCondition,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = (a1 + 440);
  std::vector<std::unique_ptr<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo,std::default_delete<geo::intern_allocator<unsigned int,geo::allocator_adapter<unsigned int,gss::zone_mallocator>>::PageInfo>>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = (a1 + 408);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = (a1 + 376);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v13);
  v13 = (a1 + 336);
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&v13, v5);
  v13 = (a1 + 296);
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&v13, v6);
  v13 = (a1 + 256);
  std::vector<std::unique_ptr<unsigned char,std::function<void ()(unsigned char *)>>>::__destroy_vector::operator()[abi:nn200100](&v13, v7);
  std::mutex::~mutex((a1 + 192));
  std::unique_ptr<gss::StyleMatchingTree<gss::CartoStyle<gss::ScenePropertyID>>>::reset[abi:nn200100]((a1 + 184), 0);
  geo::intern_vector<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::StylePropertySet<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 168);
  v8 = *(a1 + 152);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  geo::intern_vector<std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 88);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(a1 + 32);
  if (v12)
  {

    std::__shared_weak_count::__release_weak(v12);
  }
}

void std::__shared_ptr_emplace<gss::StyleSheet<gss::ScenePropertyID>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A297B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t __Block_byref_object_copy__24729(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>> md::StyleSheetExtension::initWithName<gss::ScenePropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>> md::StyleSheetExtension::initWithName<gss::ScenePropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A29770;
  v4 = (a2 + 4);
  geo::_retain_ptr<NSData * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 1, a1 + 8);
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v5 = *(a1 + 32);
    v4->__r_.__value_.__r.__words[2] = *(a1 + 48);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = *(a1 + 56);
  a2[7] = result;
  return result;
}

void sub_1B3056938(_Unwind_Exception *a1)
{
  *(v1 + 8) = &unk_1F2A608E0;

  _Unwind_Resume(a1);
}

void std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>> md::StyleSheetExtension::initWithName<gss::ScenePropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>> md::StyleSheetExtension::initWithName<gss::ScenePropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A29770;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 8) = &unk_1F2A608E0;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>> md::StyleSheetExtension::initWithName<gss::ScenePropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1},std::allocator<std::shared_ptr<gss::StyleSheet<gss::ScenePropertyID>> md::StyleSheetExtension::initWithName<gss::ScenePropertyID>(std::string const&,float,gss::TargetDisplay,md::StylesheetVendor &,VKResourceManager *,BOOL)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A29770;

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 8) = &unk_1F2A608E0;

  return a1;
}

void std::__shared_ptr_pointer<gss::ClientStyleState<gss::ScenePropertyID> *,std::shared_ptr<gss::ClientStyleState<gss::ScenePropertyID>>::__shared_ptr_default_delete<gss::ClientStyleState<gss::ScenePropertyID>,gss::ClientStyleState<gss::ScenePropertyID>>,std::allocator<gss::ClientStyleState<gss::ScenePropertyID>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::Logic<md::StyleLogic,md::StyleLogicContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0xE42D19AFCA302E68 && *(a3 + 32))
  {
    *&v7[2] = v4;
    v8 = v5;
    return (*(*a1 + 160))(a1, a2, v7);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::StyleLogicContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::StyleLogicContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::StyleLogicContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::StyleLogicContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A29FE8;
  v2 = a1[4];
  if (v2)
  {
    v3 = v2[18];
    if (v3)
    {
      v2[19] = v3;
      operator delete(v3);
    }

    v4 = v2[15];
    if (v4)
    {
      v2[16] = v4;
      operator delete(v4);
    }

    v5 = v2[6];
    if (v5)
    {
      v2[7] = v5;
      operator delete(v5);
    }

    v6 = v2[5];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = v2[3];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = v2[1];
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    MEMORY[0x1B8C62190](v2, 0x10A0C4004EC7909);
  }

  return a1;
}

void md::StyleLogic::createDebugNode(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  md::LogicBase::createDebugNode(a1, a2);
  std::string::basic_string[abi:nn200100]<0>(__p, "StyleManager");
  ChildNode = gdc::DebugTreeNode::createChildNode(a2, __p);
  if (SHIBYTE(v89[0].__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  if (a1[32])
  {
    std::string::basic_string[abi:nn200100]<0>(__p, "Stylesheet Name");
    gdc::DebugTreeValue::DebugTreeValue(v79, (*(a1[32] + 16) + 32));
    gdc::DebugTreeNode::addProperty(ChildNode, __p, v79);
    if (v81 < 0)
    {
      operator delete(v80);
    }

    if (SHIBYTE(v89[0].__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(__p, "Is from a Dev Resource");
    gdc::DebugTreeValue::DebugTreeValue(v76, *(*(a1[32] + 16) + 80));
    gdc::DebugTreeNode::addProperty(ChildNode, __p, v76);
    if (v78 < 0)
    {
      operator delete(v77);
    }

    if (SHIBYTE(v89[0].__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(__p, "Supports Night Mode");
    v7 = *(a1[32] + 16);
    v8 = atomic_load((v7 + 2784));
    if ((v8 & 1) == 0)
    {
      std::__assoc_sub_state::wait(*(v7 + 2808));
    }

    gdc::DebugTreeValue::DebugTreeValue(v73, *(v7 + 136));
    gdc::DebugTreeNode::addProperty(ChildNode, __p, v73);
    if (v75 < 0)
    {
      operator delete(v74);
    }

    if (SHIBYTE(v89[0].__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(__p, "Is Finished Decoding");
    v9 = atomic_load((*(a1[32] + 16) + 2786));
    gdc::DebugTreeValue::DebugTreeValue(v70, v9 & 1);
    gdc::DebugTreeNode::addProperty(ChildNode, __p, v70);
    if (v72 < 0)
    {
      operator delete(v71);
    }

    if (SHIBYTE(v89[0].__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(__p, "Is Valid");
    v10 = atomic_load((*(a1[32] + 16) + 2787));
    gdc::DebugTreeValue::DebugTreeValue(v67, v10 & 1);
    gdc::DebugTreeNode::addProperty(ChildNode, __p, v67);
    if (v69 < 0)
    {
      operator delete(v68);
    }

    if (SHIBYTE(v89[0].__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(__p, "Target Display");
    v11 = gss::to_string(*(*(a1[32] + 16) + 60));
    gdc::DebugTreeValue::DebugTreeValue(v64, v11);
    gdc::DebugTreeNode::addProperty(ChildNode, __p, v64);
    if (v66 < 0)
    {
      operator delete(v65);
    }

    if (SHIBYTE(v89[0].__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(__p, "Blending Factor");
    gdc::DebugTreeValue::DebugTreeValue(v61, *(a1[26] + 272));
    gdc::DebugTreeNode::addProperty(ChildNode, __p, v61);
    if (v63 < 0)
    {
      operator delete(v62);
    }

    if (SHIBYTE(v89[0].__locale_) < 0)
    {
      operator delete(__p[0]);
    }

    v12 = atomic_load((*(a1[32] + 16) + 2787));
    if (v12)
    {
      goto LABEL_91;
    }

    std::string::basic_string[abi:nn200100]<0>(v59, "Stylesheet Detail");
    v13 = a1[32];
    std::ostringstream::basic_ostringstream[abi:nn200100](v84);
    if (!*(v13 + 16))
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v84, "  No stylesheet\n", 16);
LABEL_83:
      v2 = v84;
      std::stringbuf::str[abi:nn200100](&v55, &v84[1]);
      v84[0] = *MEMORY[0x1E69E54E8];
      *(v84 + *(v84[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
      v84[1] = (MEMORY[0x1E69E5548] + 16);
      if (v86 < 0)
      {
        operator delete(v85[7].__locale_);
      }

      v84[1] = (MEMORY[0x1E69E5538] + 16);
      std::locale::~locale(v85);
      std::ostream::~ostream();
      MEMORY[0x1B8C620C0](&v87);
      gdc::DebugTreeValue::DebugTreeValue(v56, &v55);
      gdc::DebugTreeNode::addProperty(ChildNode, v59, v56);
      if (v58 < 0)
      {
        operator delete(v57);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (v60 < 0)
      {
        operator delete(v59[0]);
      }

LABEL_91:
      std::string::basic_string[abi:nn200100]<0>(__p, "Client Attributes");
      v32 = gdc::DebugTreeNode::createChildNode(ChildNode, __p);
      if (SHIBYTE(v89[0].__locale_) < 0)
      {
        operator delete(__p[0]);
      }

      gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributes(__p, a1[26]);
      v33 = WORD2(__p[1]);
      if (WORD2(__p[1]))
      {
        v34 = 0;
        v2 = 0;
        v35 = 0;
        v36 = WORD2(__p[1]);
        do
        {
          if ((v35 >= v36) | v34 & 1)
          {
            v37 = v34;
          }

          else
          {
            v2 = (__p[0] + 4 * v35);
            v3 = (__p[0] + 2 * v35 + LODWORD(__p[1]));
            v37 = 1;
          }

          v38 = gss::to_string(*v2);
          std::string::basic_string[abi:nn200100]<0>(v84, v38);
          v39 = gss::to_string(*v2, *v3);
          gdc::DebugTreeValue::DebugTreeValue(v52, v39);
          gdc::DebugTreeNode::addProperty(v32, v84, v52);
          if (v54 < 0)
          {
            operator delete(v53);
          }

          if (SHIBYTE(v85[0].__locale_) < 0)
          {
            operator delete(v84[0]);
          }

          v36 = WORD2(__p[1]);
          if (v35 + 1 < WORD2(__p[1]))
          {
            ++v35;
          }

          else
          {
            v35 = WORD2(__p[1]);
          }

          if (v37)
          {
            v34 = 0;
          }

          else
          {
            v34 = v37;
          }
        }

        while (v35 != v33);
      }

      std::string::basic_string[abi:nn200100]<0>(v84, "Scene Client Attributes");
      v40 = gdc::DebugTreeNode::createChildNode(ChildNode, v84);
      if (SHIBYTE(v85[0].__locale_) < 0)
      {
        operator delete(v84[0]);
      }

      gss::ClientStyleState<gss::ScenePropertyID>::sourceClientStyleAttributes(v84, a1[28]);
      v41 = WORD2(v84[1]);
      if (WORD2(v84[1]))
      {
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v45 = WORD2(v84[1]);
        do
        {
          if ((v44 >= v45) | v42 & 1)
          {
            v46 = v42;
          }

          else
          {
            v43 = (v84[0] + 4 * v44);
            v2 = (v84[0] + 2 * v44 + LODWORD(v84[1]));
            v46 = 1;
          }

          v47 = gss::to_string(*v43);
          std::string::basic_string[abi:nn200100]<0>(v82, v47);
          v48 = gss::to_string(*v43, *v2);
          gdc::DebugTreeValue::DebugTreeValue(v49, v48);
          gdc::DebugTreeNode::addProperty(v40, v82, v49);
          if (v51 < 0)
          {
            operator delete(v50);
          }

          if (v83 < 0)
          {
            operator delete(v82[0]);
          }

          v45 = WORD2(v84[1]);
          if (v44 + 1 < WORD2(v84[1]))
          {
            ++v44;
          }

          else
          {
            v44 = WORD2(v84[1]);
          }

          if (v46)
          {
            v42 = 0;
          }

          else
          {
            v42 = v46;
          }
        }

        while (v44 != v41);
      }

      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v84);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(__p);
      return;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v84, "  Stylesheet:\n", 14);
    v14 = *(v13 + 16);
    std::ostringstream::basic_ostringstream[abi:nn200100](__p);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "    Name: ", 10);
    v15 = *(v14 + 55);
    if (v15 >= 0)
    {
      v16 = v14 + 32;
    }

    else
    {
      v16 = *(v14 + 32);
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 55);
    }

    else
    {
      v17 = *(v14 + 40);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v16, v17);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "    Finished decoding: ", 23);
    v18 = atomic_load((v14 + 2786));
    if (v18)
    {
      v19 = "yes";
    }

    else
    {
      v19 = "no";
    }

    if (v18)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v19, v20);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "    Valid: ", 11);
    v21 = atomic_load((v14 + 2787));
    if (v21)
    {
      v22 = "yes";
    }

    else
    {
      v22 = "no";
    }

    if (v21)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v22, v23);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "\n", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "    Loaded from dev resources: ", 31);
    if (*(v14 + 80))
    {
      v24 = "yes";
    }

    else
    {
      v24 = "no";
    }

    if (*(v14 + 80))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v24, v25);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "\n", 1);
    v26 = atomic_load((v14 + 2787));
    if ((v26 & 1) == 0)
    {
      if ((*(v14 + 2999) & 0x80000000) == 0)
      {
        if (!*(v14 + 2999))
        {
          goto LABEL_73;
        }

LABEL_66:
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "    Decode errors:\n", 19);
        v27 = *(v14 + 2999);
        if (v27 >= 0)
        {
          v28 = v14 + 2976;
        }

        else
        {
          v28 = *(v14 + 2976);
        }

        if (v27 >= 0)
        {
          v29 = *(v14 + 2999);
        }

        else
        {
          v29 = *(v14 + 2984);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v28, v29);
        goto LABEL_73;
      }

      if (*(v14 + 2984))
      {
        goto LABEL_66;
      }
    }

LABEL_73:
    std::stringbuf::str[abi:nn200100](v82, &__p[1]);
    __p[0] = *MEMORY[0x1E69E54E8];
    *(__p + *(__p[0] - 3)) = *(MEMORY[0x1E69E54E8] + 24);
    __p[1] = (MEMORY[0x1E69E5548] + 16);
    if (v90 < 0)
    {
      operator delete(v89[7].__locale_);
    }

    __p[1] = (MEMORY[0x1E69E5538] + 16);
    std::locale::~locale(v89);
    std::ostream::~ostream();
    MEMORY[0x1B8C620C0](&v91);
    if ((v83 & 0x80u) == 0)
    {
      v30 = v82;
    }

    else
    {
      v30 = v82[0];
    }

    if ((v83 & 0x80u) == 0)
    {
      v31 = v83;
    }

    else
    {
      v31 = v82[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v84, v30, v31);
    if (v83 < 0)
    {
      operator delete(v82[0]);
    }

    goto LABEL_83;
  }
}

void sub_1B3057608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  v44 = MEMORY[0x1E69E54E8];
  v45 = *MEMORY[0x1E69E54E8];
  STACK[0x2D0] = *MEMORY[0x1E69E54E8];
  *(&STACK[0x2D0] + *(v45 - 24)) = *(v44 + 24);
  STACK[0x2D8] = MEMORY[0x1E69E5548] + 16;
  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  STACK[0x2D8] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&STACK[0x2E0]);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&STACK[0x340]);
  if (a42 < 0)
  {
    operator delete(a37);
  }

  STACK[0x2B8] = v42 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x2B8]);
  STACK[0x2B8] = v42 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x2B8]);
  if (*(v42 + 47) < 0)
  {
    operator delete(*(v42 + 24));
  }

  if (*(v42 + 23) < 0)
  {
    operator delete(*v42);
  }

  _Unwind_Resume(a1);
}

void gss::ClientStyleState<gss::ScenePropertyID>::setSourceMapDisplayStyle(uint64_t a1, uint64_t a2)
{
  v8 = (a1 + 16);
  v9 = a2;
  v3 = pthread_rwlock_wrlock((a1 + 16));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  gss::DisplayStyle::applyDisplayStyle(&v9, (a1 + 216));
  if ((*(a1 + 232) & 1) == 0 && (*(a1 + 233) & 1) == 0)
  {
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate((a1 + 216), *(a1 + 230), 1);
  }

  v5 = COERCE_FLOAT(atomic_load((a1 + 272)));
  v6 = v5 <= 0.0;
  v7 = 1;
  if (v6)
  {
    v7 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
  }

  atomic_store(v7, (a1 + 270));
  atomic_fetch_add((a1 + 264), 1u);
  geo::write_lock_guard::~write_lock_guard(&v8);
}

void md::StyleLogic::~StyleLogic(md::StyleLogic *this)
{
  md::StyleLogic::~StyleLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A29420;
  v2 = *(this + 148);
  if (v2)
  {
    v3 = v2;
    [v3 stop];

    v4 = *(this + 148);
    if (v4)
    {
      *(this + 148) = 0;
    }
  }

  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 1432);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 1352);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 1272);
  v5 = *(this + 158);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 156);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 154);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 152);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  *(this + 147) = &unk_1F2A3EF58;

  *(this + 144) = &unk_1F2A295B0;
  v9 = *(this + 141);
  if (v9)
  {
    *(this + 142) = v9;
    operator delete(v9);
  }

  v10 = *(this + 134);
  if (v10)
  {
    *(this + 135) = v10;
    operator delete(v10);
  }

  v11 = *(this + 131);
  if (v11)
  {
    *(this + 132) = v11;
    operator delete(v11);
  }

  v12 = *(this + 122);
  if (v12)
  {
    *(this + 123) = v12;
    operator delete(v12);
  }

  v13 = *(this + 121);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = *(this + 119);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(this + 117);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *(this + 113);
  if (v16)
  {
    *(this + 114) = v16;
    operator delete(v16);
  }

  v17 = *(this + 110);
  if (v17)
  {
    *(this + 111) = v17;
    operator delete(v17);
  }

  v18 = *(this + 101);
  if (v18)
  {
    *(this + 102) = v18;
    operator delete(v18);
  }

  v19 = *(this + 100);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = *(this + 98);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = *(this + 96);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  v22 = *(this + 92);
  if (v22)
  {
    *(this + 93) = v22;
    operator delete(v22);
  }

  v23 = *(this + 89);
  if (v23)
  {
    *(this + 90) = v23;
    operator delete(v23);
  }

  v24 = *(this + 80);
  if (v24)
  {
    *(this + 81) = v24;
    operator delete(v24);
  }

  v25 = *(this + 79);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  v26 = *(this + 77);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  v27 = *(this + 75);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  v28 = *(this + 71);
  if (v28)
  {
    *(this + 72) = v28;
    operator delete(v28);
  }

  v29 = *(this + 68);
  if (v29)
  {
    *(this + 69) = v29;
    operator delete(v29);
  }

  v30 = *(this + 59);
  if (v30)
  {
    *(this + 60) = v30;
    operator delete(v30);
  }

  v31 = *(this + 58);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  v32 = *(this + 56);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = *(this + 54);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v34 = *(this + 50);
  if (v34)
  {
    *(this + 51) = v34;
    operator delete(v34);
  }

  v35 = *(this + 47);
  if (v35)
  {
    *(this + 48) = v35;
    operator delete(v35);
  }

  v36 = *(this + 38);
  if (v36)
  {
    *(this + 39) = v36;
    operator delete(v36);
  }

  v37 = *(this + 37);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  v38 = *(this + 35);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  v39 = *(this + 33);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  v40 = *(this + 31);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  v41 = *(this + 29);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  v42 = *(this + 27);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  *(this + 16) = &unk_1F2A59028;
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B3057E30(_Unwind_Exception *a1)
{
  v3 = v2;

  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 1432);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 1352);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 1272);
  v5 = *(v1 + 1264);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 1248);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(v1 + 1232);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(v1 + 1216);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  *(v1 + 1176) = &unk_1F2A3EF58;

  *(v1 + 1152) = &unk_1F2A295B0;
  v9 = *(v1 + 1128);
  if (v9)
  {
    *(v1 + 1136) = v9;
    operator delete(v9);
  }

  v10 = *(v1 + 1072);
  if (v10)
  {
    *(v1 + 1080) = v10;
    operator delete(v10);
  }

  v11 = *(v1 + 1048);
  if (v11)
  {
    *(v1 + 1056) = v11;
    operator delete(v11);
  }

  v12 = *(v1 + 976);
  if (v12)
  {
    *(v1 + 984) = v12;
    operator delete(v12);
  }

  v13 = *(v1 + 968);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = *(v1 + 952);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(v1 + 936);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v16 = *(v1 + 904);
  if (v16)
  {
    *(v1 + 912) = v16;
    operator delete(v16);
  }

  v17 = *(v1 + 880);
  if (v17)
  {
    *(v1 + 888) = v17;
    operator delete(v17);
  }

  v18 = *(v1 + 808);
  if (v18)
  {
    *(v1 + 816) = v18;
    operator delete(v18);
  }

  v19 = *(v1 + 800);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = *(v1 + 784);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  v21 = *(v1 + 768);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  v22 = *(v1 + 736);
  if (v22)
  {
    *(v1 + 744) = v22;
    operator delete(v22);
  }

  v23 = *(v1 + 712);
  if (v23)
  {
    *(v1 + 720) = v23;
    operator delete(v23);
  }

  v24 = *(v1 + 640);
  if (v24)
  {
    *(v1 + 648) = v24;
    operator delete(v24);
  }

  v25 = *(v1 + 632);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  v26 = *(v1 + 616);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  v27 = *(v1 + 600);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  v28 = *(v1 + 568);
  if (v28)
  {
    *(v1 + 576) = v28;
    operator delete(v28);
  }

  v29 = *(v1 + 544);
  if (v29)
  {
    *(v1 + 552) = v29;
    operator delete(v29);
  }

  v30 = *(v1 + 472);
  if (v30)
  {
    *(v1 + 480) = v30;
    operator delete(v30);
  }

  v31 = *(v1 + 464);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  v32 = *(v1 + 448);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = *(v1 + 432);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  v34 = *(v1 + 400);
  if (v34)
  {
    *(v1 + 408) = v34;
    operator delete(v34);
  }

  v35 = *(v1 + 376);
  if (v35)
  {
    *(v1 + 384) = v35;
    operator delete(v35);
  }

  v36 = *(v1 + 304);
  if (v36)
  {
    *(v1 + 312) = v36;
    operator delete(v36);
  }

  v37 = *(v1 + 296);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  v38 = *(v1 + 280);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  v39 = *(v1 + 264);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  v40 = *(v1 + 248);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  v41 = *(v1 + 232);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  v42 = *(v1 + 216);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  *(v1 + 128) = &unk_1F2A59028;
  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKSceneConfiguration * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A295B0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKSceneConfiguration * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A295B0;

  return a1;
}

void std::__function::__func<md::StyleLogic::StyleLogic(float,VKSharedResources *,objc_object  {objcproto14MDRenderTarget}*,md::MapEngine *,md::MapEngineSettings const*,md::World *,std::shared_ptr<md::TaskContext> const&,md::AnimationRunner const*,BOOL,md::World *<md::RunLoopController> const&,VKMapPurpose)::$_2,std::allocator<VKMapPurpose>,void ()(BOOL)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 1114) = *(v1 + 1448);
  v2 = *(v1 + 192);
  v3 = 8;
  md::MapEngine::setNeedsTick(v2, &v3);
}

void std::__function::__func<md::StyleLogic::StyleLogic(float,VKSharedResources *,objc_object  {objcproto14MDRenderTarget}*,md::MapEngine *,md::MapEngineSettings const*,md::World *,std::shared_ptr<md::TaskContext> const&,md::AnimationRunner const*,BOOL,md::World *<md::RunLoopController> const&,VKMapPurpose)::$_1,std::allocator<VKMapPurpose>,void ()(BOOL)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 1112) = *(v1 + 1368);
  v2 = *(v1 + 192);
  v3 = 1;
  md::MapEngine::setNeedsTick(v2, &v3);
}

void std::__function::__func<md::StyleLogic::StyleLogic(float,VKSharedResources *,objc_object  {objcproto14MDRenderTarget}*,md::MapEngine *,md::MapEngineSettings const*,md::World *,std::shared_ptr<md::TaskContext> const&,md::AnimationRunner const*,BOOL,md::World *<md::RunLoopController> const&,VKMapPurpose)::$_0,std::allocator<VKMapPurpose>,void ()(BOOL)>::operator()()
{
  v0 = [MEMORY[0x1E69A2478] modernManager];
  [v0 devResourcesFolderDidChange];
}

void std::__shared_ptr_emplace<md::StyleStateController>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = std::__function::__value_func<void ()(md::StyleLogic *)>::~__value_func[abi:nn200100](v3 - 32);
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<md::StyleStateController>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A29578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__shared_ptr_pointer<md::CallbackHolder<md::StyleLogic> *,std::shared_ptr<md::CallbackHolder<md::StyleLogic>>::__shared_ptr_default_delete<md::CallbackHolder<md::StyleLogic>,md::CallbackHolder<md::StyleLogic>>,std::allocator<md::CallbackHolder<md::StyleLogic>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    *result = 0;
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::CallbackHolder<md::StyleLogic> *,std::shared_ptr<md::CallbackHolder<md::StyleLogic>>::__shared_ptr_default_delete<md::CallbackHolder<md::StyleLogic>,md::CallbackHolder<md::StyleLogic>>,std::allocator<md::CallbackHolder<md::StyleLogic>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::StyleLogic::setLevelOfDetail(uint64_t a1, int a2, float a3)
{
  if (*(a1 + 165) != a2)
  {
    v7 = *(a1 + 1184);
    if (v7)
    {
      [v7 stop];
    }

    *(a1 + 165) = a2;
    gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(*(a1 + 208), 0x10088u, a2);
    gss::ClientStyleState<gss::ScenePropertyID>::setTargetClientStyleAttribute(*(a1 + 224), 0x10088u, *(a1 + 165));

    md::StyleLogic::queueStyleTransition(a1, a3);
  }
}

void md::StyleLogic::setDisplayStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 164);
  *(a1 + 177) = BYTE2(a2);
  v4 = a2 & 0xFF00FFFFFFFFFFFFLL | (v3 << 48);
  gss::ClientStyleState<gss::PropertyID>::setSourceMapDisplayStyle(*(a1 + 208), v4);
  gss::ClientStyleState<gss::PropertyID>::setTargetMapDisplayStyle(*(a1 + 208), v4);
  gss::ClientStyleState<gss::ScenePropertyID>::setSourceMapDisplayStyle(*(a1 + 224), v4);
  gss::ClientStyleState<gss::ScenePropertyID>::setTargetMapDisplayStyle(*(a1 + 224), v4);
  v6 = 4;
  geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((a1 + 1128), &v6);
  v5 = **(a1 + 1240);
  if (v5)
  {
    v7 = 8;
    md::MapEngine::setNeedsTick(v5, &v7);
  }
}

void std::__function::__func<md::StyleStateController::setHikingFeatureState(std::optional<gss::HikingFeatureState>,float)::$_0,std::allocator<md::StyleStateController::setHikingFeatureState(std::optional<gss::HikingFeatureState>,float)::$_0>,void ()(md::StyleLogic *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *(*a2 + 172);
  if (v5 != v3 >> 8 || v5 == 0)
  {
    if (v5 == v3 >> 8)
    {
      return;
    }
  }

  else if (*(v2 + 171) == v3)
  {
    return;
  }

  *(v2 + 171) = v3;
  v7 = *(v2 + 208);
  if ((v3 & 0x100) != 0)
  {
    gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(v7, 0x1007Cu, v3);
  }

  else
  {
    gss::ClientStyleState<gss::PropertyID>::removeTargetClientStyleAttribute(v7, 0x1007Cu);
  }

  md::StyleLogic::queueStyleTransition(v2, v4);
}

uint64_t std::__function::__func<md::StyleStateController::setHikingFeatureState(std::optional<gss::HikingFeatureState>,float)::$_0,std::allocator<md::StyleStateController::setHikingFeatureState(std::optional<gss::HikingFeatureState>,float)::$_0>,void ()(md::StyleLogic *)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A294F8;
  a2[1] = *(result + 8);
  return result;
}

double rubberBandOffsetForOffset(double result, double a2, double a3, double a4)
{
  v4 = fmax(a3, a2);
  if (v4 < result)
  {
    return v4 + (1.0 / ((v4 - result) * 0.55 / a4 - 1.0) + 1.0) * a4;
  }

  if (result < a3)
  {
    return a3 + (1.0 / ((a3 - result) * 0.55 / a4 + 1.0) - 1.0) * a4;
  }

  return result;
}

void md::MuninJunctionCrossStreet::createLabels(uint64_t a1, void *a2)
{
  v4 = a2[2];
  md::LabelSettingsStyleCache::muninRoadStyle(*(*(*a2 + 336) + 200));
  v63.f64[0] = md::MuninRoadEdge::direction(*(a1 + 48), *(*(a1 + 48) + 96) == **(a1 + 8));
  v63.f64[1] = v5;
  v64 = v5;
  v65 = -v63.f64[0];
  v66 = 0;
  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(a1 + 56) = v7;
  *(a1 + 72) = v8;
  v9 = *(a2[2] + 816);
  v50 = 0uLL;
  if (*&v63 != 0)
  {
    v10 = 0;
    *v69 = v7;
    *&v69[16] = v8;
    *v56 = vmlaq_n_f64(v7, v63, v9 * 25.0);
    *&v56[16] = v8;
    do
    {
      *(&v50 + v10) = *&v56[v10] - *&v69[v10];
      v10 += 8;
    }

    while (v10 != 24);
    *&v56[1] = *&v69[1];
    *&v56[16] = *&v69[16];
    v11 = *(v4 + 816);
    v56[0] = LOBYTE(v7.f64[0]);
    v57 = v50;
    v58 = v51;
    v12 = 0.0;
    for (i = 24; i != 48; i += 8)
    {
      v12 = v12 + *&v56[i] * *&v56[i];
    }

    v59 = sqrt(v12);
    v60 = v59 / v11;
    v62 = 0;
    v61 = 0uLL;
    v14 = gm::Ray<double,3>::at(v56, 0.0);
    v16 = v15;
    v49 = gm::Ray<double,3>::at(v56, 1.0);
    v48 = v17;
    v18 = exp(v16 * 6.28318531 + -3.14159265);
    v19 = atan(v18) * 2.0 + -1.57079633;
    v20 = fmod(v14 * 6.28318531, 6.28318531);
    v21 = fmod(v20 + 6.28318531, 6.28318531) + -3.14159265;
    v22 = __sincos_stret(v19);
    v23 = 6378137.0 / sqrt(1.0 - v22.__sinval * v22.__sinval * 0.00669437999);
    v24 = __sincos_stret(v21);
    *v69 = v23 * v22.__cosval * v24.__cosval;
    *&v69[8] = v23 * v22.__cosval * v24.__sinval;
    *&v69[16] = v22.__sinval * 0.99330562 * v23;
    v25 = exp(v48 * 6.28318531 + -3.14159265);
    v26 = atan(v25) * 2.0 + -1.57079633;
    v27 = fmod(v49 * 6.28318531, 6.28318531);
    v28 = fmod(v27 + 6.28318531, 6.28318531) + -3.14159265;
    v29 = __sincos_stret(v26);
    v30 = 6378137.0 / sqrt(1.0 - v29.__sinval * v29.__sinval * 0.00669437999);
    v31 = __sincos_stret(v28);
    v32 = 0;
    v67[0] = v30 * v29.__cosval * v31.__cosval;
    v67[1] = v30 * v29.__cosval * v31.__sinval;
    v68 = v29.__sinval * 0.99330562 * v30;
    do
    {
      *(&v50 + v32 * 8) = v67[v32] - *&v69[v32 * 8];
      ++v32;
    }

    while (v32 != 3);
    *&v61 = gm::Matrix<double,3,1>::normalized<int,void>(&v50);
    *(&v61 + 1) = v33;
    v62 = v34;
    v35 = gm::Ray<double,3>::at(v56, 0.0);
    v37 = v36;
    v38 = v35 * 6.28318531;
    v40 = exp(v39 * 6.28318531 + -3.14159265);
    v41 = atan(v40) * 2.0 + -1.57079633;
    v42 = fmod(v38, 6.28318531);
    v43 = fmod(v42 + 6.28318531, 6.28318531) + -3.14159265;
    v44 = __sincos_stret(v41);
    v45 = 6378137.0 / sqrt(v44.__sinval * v44.__sinval * -0.00669437999 + 1.0);
    v46 = (v45 + v37) * v44.__cosval;
    v47 = __sincos_stret(v43);
    v67[0] = v46 * v47.__cosval;
    v67[1] = v46 * v47.__sinval;
    v68 = (v37 + v45 * 0.99330562) * v44.__sinval;
    v54 = 0;
    v55 = 0;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 2;
    atomic_load((*a2 + 3426));
    operator new();
  }
}

void sub_1B305A004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28)
{
  v30 = *(v28 + 32);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a26);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  _Unwind_Resume(exception_object);
}

void md::MuninJunctionCrossStreet::~MuninJunctionCrossStreet(md::MuninJunctionCrossStreet *this)
{
  *this = &unk_1F2A59080;
  v1 = (this + 16);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A59080;
  v1 = (this + 16);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v1);
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(void *a1, unint64_t a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a1, a2);
  if (v3)
  {

    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(a1, v3);
  }
}

void sub_1B305BF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B305DB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  a54 = &a48;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a54);
  a54 = &a45;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a54);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(a1);
}

void sub_1B305E8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49, std::__shared_weak_count *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a68 < 0)
  {
    v72 = mdm::zone_mallocator::instance(v71);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v72, a67);
  }

  if (a66 < 0)
  {
    v73 = mdm::zone_mallocator::instance(v71);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v73, a65);
  }

  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a48);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a50);
  }

  _Unwind_Resume(a1);
}

void GetLabelNavStyleAttributes(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, __int16 a4, __int16 a5)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v62 = v66;
  v10 = mdm::zone_mallocator::instance(a1);
  v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v10, 1);
  *v11 = 0x1000000005;
  memcpy(v11 - (v64 - v63), v63, v64 - v63);
  v12 = v63;
  v13 = v65;
  v63 = v11 - (v64 - v63);
  v64 = v11 + 1;
  v65 = (v11 + 1);
  v60 = v12;
  v61 = v13;
  v58 = v12;
  v59 = v12;
  v14 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v58);
  v64 = v11 + 1;
  if ((v11 + 1) >= v65)
  {
    v16 = ((v11 + 1) - v63) >> 3;
    if ((v16 + 1) >> 61)
    {
      goto LABEL_54;
    }

    v17 = (v65 - v63) >> 2;
    if (v17 <= v16 + 1)
    {
      v17 = v16 + 1;
    }

    if (v65 - v63 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    v62 = v66;
    if (v18)
    {
      v19 = mdm::zone_mallocator::instance(v14);
      v20 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v19, v18);
    }

    else
    {
      v20 = 0;
    }

    v21 = &v20[8 * v16];
    v22 = &v20[8 * v18];
    *v21 = (a3 << 32) | 0x10007;
    v15 = (v21 + 1);
    v23 = v21 - (v64 - v63);
    memcpy(v23, v63, v64 - v63);
    v24 = v63;
    v25 = v65;
    v63 = v23;
    v64 = v15;
    v65 = v22;
    v60 = v24;
    v61 = v25;
    v58 = v24;
    v59 = v24;
    v14 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v58);
  }

  else
  {
    v11[1] = (a3 << 32) | 0x10007;
    v15 = v11 + 2;
  }

  v64 = v15;
  if (v15 >= v65)
  {
    v27 = (v15 - v63) >> 3;
    if ((v27 + 1) >> 61)
    {
      goto LABEL_54;
    }

    v28 = (v65 - v63) >> 2;
    if (v28 <= v27 + 1)
    {
      v28 = v27 + 1;
    }

    if (v65 - v63 >= 0x7FFFFFFFFFFFFFF8)
    {
      v29 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v28;
    }

    v62 = v66;
    if (v29)
    {
      v30 = mdm::zone_mallocator::instance(v14);
      v31 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v30, v29);
    }

    else
    {
      v31 = 0;
    }

    v33 = &v31[8 * v29];
    v32 = &v31[8 * v27];
    *v32 = ((a2 << 32) | 0x10007) + 46;
    v26 = (v32 + 8);
    v34 = &v32[-(v64 - v63)];
    memcpy(v34, v63, v64 - v63);
    v35 = v63;
    v36 = v65;
    v63 = v34;
    v64 = v26;
    v65 = v33;
    v60 = v35;
    v61 = v36;
    v58 = v35;
    v59 = v35;
    v14 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v58);
  }

  else
  {
    *v15 = ((a2 << 32) | 0x10007) + 46;
    v26 = v15 + 1;
  }

  v64 = v26;
  if ((a4 & 0x100) != 0)
  {
    if (v26 >= v65)
    {
      v37 = (v26 - v63) >> 3;
      if ((v37 + 1) >> 61)
      {
        goto LABEL_54;
      }

      v38 = (v65 - v63) >> 2;
      if (v38 <= v37 + 1)
      {
        v38 = v37 + 1;
      }

      if (v65 - v63 >= 0x7FFFFFFFFFFFFFF8)
      {
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v38;
      }

      v62 = v66;
      if (v39)
      {
        v40 = mdm::zone_mallocator::instance(v14);
        v41 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v40, v39);
      }

      else
      {
        v41 = 0;
      }

      v42 = &v41[8 * v39];
      v43 = &v41[8 * v37];
      *v43 = (a4 << 32) | 1;
      v26 = v43 + 1;
      v44 = &v41[8 * v37 - (v64 - v63)];
      memcpy(v44, v63, v64 - v63);
      v45 = v63;
      v46 = v65;
      v63 = v44;
      v64 = v26;
      v65 = v42;
      v60 = v45;
      v61 = v46;
      v58 = v45;
      v59 = v45;
      v14 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v58);
    }

    else
    {
      *v26++ = (a4 << 32) | 1;
    }

    v64 = v26;
  }

  if ((a5 & 0x100) == 0)
  {
    goto LABEL_53;
  }

  if (v26 < v65)
  {
    *v26 = ((a5 << 32) | 0x10007) + 77;
    v47 = v26 + 1;
LABEL_52:
    v64 = v47;
LABEL_53:
    _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(a1);
  }

  v48 = (v26 - v63) >> 3;
  if (!((v48 + 1) >> 61))
  {
    v49 = (v65 - v63) >> 2;
    if (v49 <= v48 + 1)
    {
      v49 = v48 + 1;
    }

    if (v65 - v63 >= 0x7FFFFFFFFFFFFFF8)
    {
      v50 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v50 = v49;
    }

    v62 = v66;
    if (v50)
    {
      v51 = mdm::zone_mallocator::instance(v14);
      v52 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v51, v50);
    }

    else
    {
      v52 = 0;
    }

    v53 = &v52[8 * v50];
    v54 = &v52[8 * v48];
    *v54 = ((a5 << 32) | 0x10007) + 77;
    v47 = (v54 + 8);
    v55 = &v52[8 * v48 - (v64 - v63)];
    memcpy(v55, v63, v64 - v63);
    v56 = v63;
    v57 = v65;
    v63 = v55;
    v64 = v47;
    v65 = v53;
    v60 = v56;
    v61 = v57;
    v58 = v56;
    v59 = v56;
    std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v58);
    goto LABEL_52;
  }

LABEL_54:
  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B305EFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::NavContext::styleQueryForFeatureAttributes(uint64_t *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::LabelStyleCache::styleQueryForFeatureAttributes(a1, (*(a2 + 336) + 184), v5, 0);
  if (a4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](a4);
  }
}

void sub_1B305F070(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

id VKLabelCopyShield(std::__shared_weak_count **a1, int a2, void *a3)
{
  v8 = 0;
  geo::codec::featureGetNativeShield(a1, 0, &v8, a3, 0);
  if (v8)
  {
    if (a2)
    {
      v5 = copyLocalizedLabel(a1, v8);
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v5 = [v6 initWithUTF8String:v8];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id VKLabelCopyText(std::__shared_weak_count **a1, int a2)
{
  v7 = 0;
  geo::codec::featureGetNativeLabel(a1, 0, &v7, 0);
  if (v7)
  {
    if (a2)
    {
      v4 = copyLocalizedLabel(a1, v7);
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696AEC0]);
      v4 = [v5 initWithUTF8String:v7];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t GetRoadSignMetadataForStyleQuery(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2 || !a5 && !a6 && !a7)
  {
    return 0;
  }

  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v66, a2, a3);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  if ((v69 & 1) == 0)
  {
    goto LABEL_66;
  }

  if (!a6)
  {
    goto LABEL_37;
  }

  __p.__r_.__value_.__s.__data_[0] = 1;
  gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(304, 1, v66[3], &__p);
  if (__p.__r_.__value_.__s.__data_[0] == 1)
  {
    *(a6 + 8) = v13;
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x131u, 2u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(305, 1, v66[3], 0);
    *(a6 + 24) = v14;
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x132u, 2u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(306, 1, v66[3], 0);
    *(a6 + 32) = v15;
  }

  hasValueForKey = gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x92u, 2u);
  v17 = v66[3];
  if (hasValueForKey)
  {
    v18 = *(v17 + 12);
    if (v18 == 2)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      v64.i8[0] = 1;
      v19 = gss::RenderStyle<gss::PropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(v17, 0, &__p);
      gss::RenderStyle<gss::PropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(v17, 1u, &v64);
      v20 = *v19;
    }

    else
    {
      v20 = *gss::RenderStyle<gss::PropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(v66[3], v18, 0);
    }

    *(a6 + 56) = vcvtq_f64_f32(v20);
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v17, 0x133u, 2u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(307, 1, v66[3], 0);
    *(a6 + 72) = v21;
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x6Du, 2u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(109, 1, v66[3], 0);
    *(a6 + 80) = v22;
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x160u, 2u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(352, 1, v66[3], 0);
    *(a6 + 88) = v23;
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x64u, 2u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(100, 1, v66[3], 0);
    *(a6 + 96) = v24;
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x134u, 2u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(308, 1, v66[3], 0);
    *(a6 + 128) = v25;
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x183u, 2u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(387, 1, v66[3], 0);
    *(a6 + 40) = v26;
  }

  if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x184u, 2u))
  {
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(388, 1, v66[3], 0);
    *(a6 + 48) = v27;
  }

  if (round(*(a6 + 8) * *(a6 + 96) * *(a6 + 16)) <= 0.0)
  {
LABEL_66:
    v40 = 0;
  }

  else
  {
LABEL_37:
    if (a7)
    {
      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x130u, 2u))
      {
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(304, 1, v66[3], 0);
        *a7 = v28;
      }

      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x135u, 2u))
      {
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(309, 1, v66[3], 0);
        *(a7 + 16) = v29;
      }

      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x151u, 2u))
      {
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(337, 1, v66[3], 0);
        *(a7 + 24) = v30;
      }

      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x150u, 2u))
      {
        *(a7 + 128) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(336, 1, v66[3]);
      }

      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x136u, 2u))
      {
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(310, 1, v66[3], 0);
        *(a7 + 32) = v31;
      }

      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 9u, 2u))
      {
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(9, 1, v66[3], 0);
        v33 = v32;
        v34 = round(*a7 * *(a7 + 8) * v33);
        *(a7 + 40) = v33;
        *(a7 + 48) = v34;
      }

      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x72u, 2u))
      {
        gss::RenderStyleHelper<gss::PropertyID,std::string>::valueForKey(&__p, 114, 1, v66[3], 0);
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

        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external((a7 + 56), p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (*(a7 + 79) >= 0)
        {
          v37 = (a7 + 56);
        }

        else
        {
          v37 = *(a7 + 56);
        }

        v38 = strlen(v37);
        if (v38 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v39 = v38;
        if (v38 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v38;
        if (v38)
        {
          memmove(&__p, v37, v38);
        }

        __p.__r_.__value_.__s.__data_[v39] = 0;
        v49 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v50 = __p.__r_.__value_.__r.__words[0];
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v51 = __p.__r_.__value_.__l.__size_;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v52 = &__p;
        }

        else
        {
          v52 = __p.__r_.__value_.__r.__words[0];
        }

        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external((a7 + 88), v52, v51);
        if (v49 < 0)
        {
          operator delete(v50);
        }
      }
    }

    if (a5)
    {
      v53 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(*(a1 + 8) + 112), *(*(*(a1 + 8) + 112) + 8));
      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x5Cu, 2u))
      {
        gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v64, v66[3], 92, 1);
        *&__p.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v64.f32)), vdupq_n_s32(0x37800080u));
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(489, 1, v66[3], 0);
        md::AccessibilityHelper::luminanceAdjustedColor(&v64, *v53, &__p, v54);
        *a5 = 1;
        v55 = vcvt_hight_f64_f32(v64);
        *(a5 + 8) = vcvtq_f64_f32(*v64.f32);
        *(a5 + 24) = v55;
      }

      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x74u, 2u))
      {
        gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v64, v66[3], 116, 1);
        *&__p.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v64.f32)), vdupq_n_s32(0x37800080u));
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(483, 1, v66[3], 0);
        md::AccessibilityHelper::luminanceAdjustedColor(&v64, *v53, &__p, v56);
        *(a5 + 3) = 1;
        v57 = vcvt_hight_f64_f32(v64);
        *(a5 + 104) = vcvtq_f64_f32(*v64.f32);
        *(a5 + 120) = v57;
      }

      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x15Fu, 2u))
      {
        gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v64, v66[3], 351, 1);
        *&__p.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v64.f32)), vdupq_n_s32(0x37800080u));
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(485, 1, v66[3], 0);
        md::AccessibilityHelper::luminanceAdjustedColor(&v64, *v53, &__p, v58);
        *(a5 + 4) = 1;
        v59 = vcvt_hight_f64_f32(v64);
        *(a5 + 136) = vcvtq_f64_f32(*v64.f32);
        *(a5 + 152) = v59;
      }

      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x93u, 2u))
      {
        gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v64, v66[3], 147, 1);
        *&__p.__r_.__value_.__l.__data_ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v64.f32)), vdupq_n_s32(0x37800080u));
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(493, 1, v66[3], 0);
        md::AccessibilityHelper::luminanceAdjustedColor(&v64, *v53, &__p, v60);
        *(a5 + 5) = 1;
        v61 = vcvt_hight_f64_f32(v64);
        *(a5 + 168) = vcvtq_f64_f32(*v64.f32);
        *(a5 + 184) = v61;
      }

      v40 = 1;
      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x73u, 2u))
      {
        md::AccessibilityHelper::adjustedColor<(gss::PropertyID)115,(gss::PropertyID)482>(&__p, v53, &v66);
        *(a5 + 6) = 1;
        v62 = vcvt_hight_f64_f32(*&__p.__r_.__value_.__l.__data_);
        *(a5 + 200) = vcvtq_f64_f32(__p.__r_.__value_.__l.__data_);
        *(a5 + 216) = v62;
        md::AccessibilityHelper::adjustedColor<(gss::PropertyID)115,(gss::PropertyID)482>(&__p, v53, &v66);
        *(a5 + 7) = 1;
        v63 = vcvt_hight_f64_f32(*&__p.__r_.__value_.__l.__data_);
        *(a5 + 232) = vcvtq_f64_f32(__p.__r_.__value_.__l.__data_);
        *(a5 + 248) = v63;
      }
    }

    else
    {
      v40 = 1;
    }
  }

  if (v69 == 1)
  {
    (*(*v66 + 56))(v66);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v68);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
  }

  if (!v40)
  {
    return 0;
  }

  v41 = *a4;
  if (!*a4)
  {
    return 1;
  }

  v42 = a4[1];
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v66, v41, v42);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  v43 = v69;
  if (v69)
  {
    if (a5 && gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x73u, 2u))
    {
      gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&__p, v66[3], 115, 1);
      v44 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(__p.__r_.__value_.__l.__data_)), vdupq_n_s32(0x37800080u));
      *(a5 + 7) = 1;
      *(a5 + 232) = vcvtq_f64_f32(*v44.f32);
      *(a5 + 248) = vcvt_hight_f64_f32(v44);
    }

    if (a7)
    {
      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 9u, 2u))
      {
        gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(9, 1, v66[3], 0);
        *(a7 + 48) = v45;
      }

      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(v66[3], 0x72u, 2u))
      {
        gss::RenderStyleHelper<gss::PropertyID,std::string>::valueForKey(&__p, 114, 1, v66[3], 0);
        v46 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        v47 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__assign_external((a7 + 88), v47, v46);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (v69 == 1)
  {
    (*(*v66 + 56))(v66);
  }

  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v68);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
  }

  return v43;
}

void sub_1B305FC58(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a18)
  {
    (*(*a14 + 56))(a14, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B305FD58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<md::NavRoadSign *,std::shared_ptr<md::NavLabel>::__shared_ptr_default_delete<md::NavLabel,md::NavRoadSign>,std::allocator<md::NavRoadSign>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::AccessibilityHelper::adjustedColor<(gss::PropertyID)115,(gss::PropertyID)482>(uint64_t a1, char *a2, uint64_t a3)
{
  gss::RenderStyle<gss::PropertyID>::valueForKey<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v8, *(*a3 + 24), 115, 1);
  v7 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v8)), vdupq_n_s32(0x37800080u));
  gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(482, 1, *(*a3 + 24), 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v7, v6);
}

char *gss::RenderStyle<gss::PropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v4 = *(a1 + 16 * a2 + 16);
  if (v4)
  {
    v5 = a1 + 16 * a2;
    if (*(v5 + 56))
    {
      v6 = *(v5 + 48);
      v7 = 8 * *(v5 + 56);
      do
      {
        v8 = *(*v6 + 72);
        if (v8)
        {
          v9 = *v8;
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v8, 0x92u) != *(v9 + 6))
          {
            goto LABEL_12;
          }
        }

        v6 += 8;
        v7 -= 8;
      }

      while (v7);
    }

    v10 = *(v4 + 72);
    if (v10)
    {
      v9 = *v10;
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, 0x92u) != *(v9 + 6))
      {
LABEL_12:
        v12 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v9 + 9, 0x92u);
        if (v12 == *(v9 + 42))
        {
          return &gss::PropertySetValueHelper<gss::PropertyID,gm::Matrix<float,2,1>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
        }

        else
        {
          return &v9[9][4 * v12] + *(v9 + 20);
        }
      }
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  return &gss::defaultValueForKey<gss::PropertyID,gm::Matrix<float,2,1>>(gss::PropertyID)::_defaultValue;
}

id copyLocalizedLabel(std::__shared_weak_count **a1, unint64_t a2)
{
  v8 = 0;
  geo::codec::featureGetLocalizedLabelForNativeLabel(a1, a2, &v8, 0);
  v3 = v8;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v3)
  {
    v5 = v8;
  }

  else
  {
    v5 = a2;
  }

  v6 = [v4 initWithUTF8String:v5];

  return v6;
}

uint64_t std::__shared_ptr_pointer<md::NavShield *,std::shared_ptr<md::NavLabel>::__shared_ptr_default_delete<md::NavLabel,md::NavShield>,std::allocator<md::NavShield>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::NavShield *,std::shared_ptr<md::NavLabel>::__shared_ptr_default_delete<md::NavLabel,md::NavShield>,std::allocator<md::NavShield>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B3060B98(_Unwind_Exception *a1)
{
  v3 = *(v1 - 200);
  if (v3)
  {
    *(v1 - 192) = v3;
    operator delete(v3);
  }

  std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v1 - 136));
  _Unwind_Resume(a1);
}

uint64_t geo::DouglasPeuckerSimplifyViaIndexes<gm::Matrix<double,2,1>,unsigned long>(uint64_t result, unint64_t a2, void *a3, unint64_t *a4, double a5)
{
  if (a2 > 2)
  {
    *a4 = 1;
    *a3 = 0;
    v8 = a2 - 1;
    result = geo::dpSimplifyViaIndexes<gm::Matrix<double,2,1>,unsigned long>(result, 0, a2 - 1, a3, a4, a5);
    v9 = (*a4)++;
    a3[v9] = v8;
  }

  else
  {
    if (a2)
    {
      v7 = vmovn_s64(vcgeq_u64(vdupq_n_s64(a2 - 1), xmmword_1B33B0560));
      if (v7.i8[0])
      {
        *a3 = 0;
      }

      if (v7.i8[4])
      {
        a3[1] = 1;
      }
    }

    *a4 = a2;
  }

  return result;
}

uint64_t geo::dpSimplifyViaIndexes<gm::Matrix<double,2,1>,unsigned long>(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, double a6)
{
  v10 = result;
  v11 = a6 * a6;
  __asm { FMOV            V0.2D, #1.0 }

  v32 = _Q0;
  while (1)
  {
    v17 = a2 + 1;
    if (a2 + 1 >= a3)
    {
      break;
    }

    v18 = 0;
    v19 = *(v10 + 16 * a2);
    v20 = vsubq_f64(*(v10 + 16 * a3), v19);
    v21 = vmulq_f64(v20, v20);
    v22 = vaddq_f64(vdupq_laneq_s64(v21, 1), v21);
    v23 = vaddvq_f64(v21);
    v24 = vdivq_f64(v32, v22);
    v25 = 0.0;
    do
    {
      v26 = *(v10 + 16 * v17);
      v27 = 0.0;
      if (v23 > 1.0e-15)
      {
        v28 = vmulq_f64(vsubq_f64(v26, v19), v20);
        v27 = fmin(fmax(vmulq_f64(vaddq_f64(vdupq_laneq_s64(v28, 1), v28), v24).f64[0], 0.0), 1.0);
      }

      v29 = vsubq_f64(v26, vmlaq_n_f64(v19, v20, v27));
      v30 = vaddvq_f64(vmulq_f64(v29, v29));
      if (v30 > v25)
      {
        v18 = v17;
      }

      v25 = fmax(v30, v25);
      ++v17;
    }

    while (a3 != v17);
    if (v25 <= v11)
    {
      break;
    }

    result = geo::dpSimplifyViaIndexes<gm::Matrix<double,2,1>,unsigned long>(v10, a2, v18, a4, a5, a6);
    v31 = (*a5)++;
    *(a4 + 8 * v31) = v18;
    a2 = v18;
  }

  return result;
}

void sub_1B306197C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B3062044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 == 1)
  {
    (*(*a10 + 56))(a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  _Unwind_Resume(a1);
}

uint64_t karo::media::ZipLoader::loadFromChunk(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 0x1E)
  {
    v8 = 0;
    while (1)
    {
      buf.avail_in = 0;
      buf.next_in = 0;
      memset(&buf.zalloc, 0, 24);
      if (inflateInit2_(&buf, -15, "1.2.12", 112))
      {
        return 0;
      }

      __p[0] = 0;
      __p[1] = 0;
      v34 = 0;
      v9 = a1 + v8;
      v10 = a2;
      if (*(a1 + v8) != 67324752)
      {
        goto LABEL_39;
      }

      v30 = v8;
      v11 = *(v9 + 8);
      v32 = *(v9 + 18);
      v12 = *(v9 + 22);
      v13 = *(v9 + 26);
      v14 = *(v9 + 28);
      if (v13 >= 0x17)
      {
        operator new();
      }

      BYTE7(__dst[1]) = *(v9 + 26);
      if (v13)
      {
        memcpy(__dst, (v9 + 30), v13);
      }

      *(__dst + v13) = 0;
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = __dst[0];
      v34 = *&__dst[1];
      memset(__dst, 0, 24);
      if (v12)
      {
        std::vector<unsigned char>::__append(__dst, v12);
      }

      v15 = v13 + v14 + 30;
      if (!v11)
      {
        break;
      }

      buf.avail_in = v32;
      buf.next_in = (v9 + v15);
      buf.avail_out = v12;
      v16 = *&__dst[0];
      buf.next_out = *&__dst[0];
      v17 = inflate(&buf, 0) + 4;
      if (v17 > 6)
      {
        goto LABEL_24;
      }

      v8 = v30;
      if (((1 << v17) & 0x43) == 0)
      {
        goto LABEL_25;
      }

      inflateEnd(&buf);
      v18 = 0;
LABEL_35:
      if (v16)
      {
        *(&__dst[0] + 1) = v16;
        operator delete(v16);
      }

      if (!v18)
      {
        v4 = 0;
        goto LABEL_41;
      }

      v10 = v8;
LABEL_39:
      inflateEnd(&buf);
      v4 = 1;
      v8 = v10;
LABEL_41:
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p[0]);
      }

      if (v8 < a2)
      {
        v28 = v4;
      }

      else
      {
        v28 = 0;
      }

      if ((v28 & 1) == 0)
      {
        return v4;
      }
    }

    v16 = *&__dst[0];
    memcpy(*&__dst[0], (v9 + v15), v12);
LABEL_24:
    v8 = v30;
LABEL_25:
    v37[0] = __p;
    v19 = std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, __p, v37);
    v21 = v19 + 7;
    v20 = v19[7];
    if (v20)
    {
      v19[8] = v20;
      operator delete(v20);
    }

    *v21 = 0;
    v21[1] = 0;
    v21[2] = 0;
    v37[0] = __p;
    v22 = std::__tree<std::__value_type<std::string,std::vector<unsigned char>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<unsigned char>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<unsigned char>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, __p, v37);
    v23 = v22[9];
    v24 = *(__dst + 8);
    v25 = *(v22 + 7);
    v22[7] = v16;
    v31 = v25;
    __dst[0] = v25;
    *(v22 + 4) = v24;
    *&__dst[1] = v23;
    v26 = *(a3 + 32);
    if (!v26)
    {
LABEL_33:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v27 = v26;
        if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(__p, (v26 + 32)) & 0x80) == 0)
        {
          break;
        }

        v26 = *v27;
        if (!*v27)
        {
          goto LABEL_33;
        }
      }

      if ((std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(v27 + 4, __p) & 0x80) == 0)
      {
        break;
      }

      v26 = v27[1];
      if (!v26)
      {
        goto LABEL_33;
      }
    }

    v16 = v31;
    v8 += v15 + v32;
    v18 = 1;
    goto LABEL_35;
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v3 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(GEOGetVectorKitVKDefaultLog_log, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.next_in) = 0;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_ERROR, "Zip file smaller than the zip header", &buf, 2u);
  }

  return 0;
}

void geo::small_vector_base<geo::Unit<geo::MeterUnitDescription,double>>::append<geo::Unit<geo::MeterUnitDescription,double> const*>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = (a3 - a2) >> 3;
  v8 = *(a1 + 8);
  v9 = v8 - *a1;
  if (v7 > *(a1 + 24) - (v9 >> 3))
  {
    geo::small_vector_base<geo::Unit<geo::MeterUnitDescription,double>>::grow(a1, ((v9 >> 3) + v7));
    v8 = *(a1 + 8);
  }

  if (v4 != a3)
  {
    v10 = v8;
    do
    {
      v11 = *v4;
      v4 += 8;
      *v10++ = v11;
    }

    while (v4 != a3);
  }

  *(a1 + 8) = v8 + v6;
}

uint64_t md::HighPrecisionAltitudeRequest::resolveResults(md::HighPrecisionAltitudeRequest *this)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 64))
  {
    return 1;
  }

  v3 = *this;
  if (*this)
  {
    std::mutex::lock(*this);
    v4 = *(v3 + 64);
    std::mutex::unlock(v3);
    if (v4 == 1)
    {
      *(this + 64) = 1;
      v5 = *this;
      v16 = v20;
      v17 = v20;
      v18 = v20;
      v19 = 2;
      geo::small_vector_base<geo::Unit<geo::MeterUnitDescription,double>>::append<geo::Unit<geo::MeterUnitDescription,double> const*>(&v16, *(v5 + 72), *(v5 + 80));
      v7 = *(*this + 120);
      v6 = *(*this + 128);
      v8 = +[VKSharedResourcesManager sharedResources];
      Undulation = md::GeoidModel::getUndulation([v8 undulationModel], v7, v6);

      if (!HIDWORD(Undulation))
      {
        v10 = GEOGetVectorKitHighPrecisionAltitudeRequestorLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219010;
          v22 = v7;
          v23 = 2048;
          v24 = v6;
          v25 = 2080;
          v26 = "undulation.has_value()";
          v27 = 2080;
          v28 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/HighPrecisionAltitudeRequestor.mm";
          v29 = 1024;
          v30 = 92;
          _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_ERROR, "Failed to resolve undulation request for coordinate:%f,%f: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x30u);
        }
      }

      v11 = v16;
      v12 = v17;
      if (*(this + 5) < (v17 - v16))
      {
        geo::small_vector_base<geo::Unit<geo::MeterUnitDescription,double>>::grow(this + 2, (v17 - v16));
        v11 = v16;
        v12 = v17;
      }

      if (v11 != v12)
      {
        do
        {
          if (!HIDWORD(Undulation))
          {
            std::__throw_bad_optional_access[abi:nn200100]();
          }

          v13 = *v11;
          v14 = *(this + 3);
          v15 = (((v14 - *(this + 2)) >> 3) + 1);
          if (*(this + 5) < v15)
          {
            geo::small_vector_base<geo::Unit<geo::MeterUnitDescription,double>>::grow(this + 2, v15);
            v14 = *(this + 3);
          }

          *v14 = v13 - *&Undulation;
          *(this + 3) = v14 + 1;
          ++v11;
        }

        while (v11 != v12);
        v11 = v16;
      }

      if (v11 != v18)
      {
        free(v11);
      }

      return 1;
    }
  }

  return 0;
}