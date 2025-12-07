void sub_1B29BEEC8(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *>,gss::zone_mallocator>>::operator()[abi:nn200100](1, v1);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ElevatedStrokeConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevatedStrokeConstantDataHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevatedStrokeConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevatedStrokeConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevatedStrokeConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevatedStrokeConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ElevatedStrokeConstantDataHandle>();
    *algn_1EB83BB38 = 0xB3E1F50BFD41E071;
    qword_1EB83BB40 = "md::ls::ElevatedStrokeConstantDataHandle]";
    qword_1EB83BB48 = 40;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ElevatedStrokeConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ElevatedStrokeConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[247];
}

BOOL md::TiledGEOResourceFetcher::regionContainsTile(unsigned int *a1, uint64_t a2)
{
  v2 = *(a2 + 1);
  v3 = *a1;
  if (*a1 <= v2 && a1[1] >= v2)
  {
    if (*(a2 + 1))
    {
      if (v2 >= (v2 - v3))
      {
        v5 = v2 - v3;
      }

      else
      {
        v5 = *(a2 + 1);
      }

      v6 = *(a2 + 4) >> v5;
      v7 = *(a2 + 8) >> v5;
    }

    else
    {
      v6 = *(a2 + 4);
      v7 = *(a2 + 8);
    }

    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v7;
      if (v7 < a1[v9 + 2])
      {
        break;
      }

      v11 = a1[v9 + 4];
      v9 = 1;
      v12 = (v7 <= v11) & ~v8;
      v8 = 1;
      v7 = v6;
      if ((v12 & 1) == 0)
      {
        return v10 <= v11;
      }
    }
  }

  return 0;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls32ElevatedStrokeConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A15A28;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void gss::StylesheetQuery<gss::PropertyID>::resolve(uint64_t **a1)
{
  v2 = a1[2];
  if (!v2)
  {
    v5 = 0;
    v3 = 0;
LABEL_34:
    LOBYTE(v6) = 1;
    goto LABEL_35;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_34;
  }

  v4 = a1[1];
  if (!v4)
  {
    v5 = 0;
    LOBYTE(v6) = 0;
LABEL_35:
    v18 = a1[38];
    a1[37] = 0;
    a1[38] = 0;
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    goto LABEL_18;
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    goto LABEL_35;
  }

  gss::StylesheetManager<gss::PropertyID>::sourceStyleAttributes(v21, v4, a1 + 30, (a1 + 34));
  gss::StyleSheet<gss::PropertyID>::styleMatchingAttributes(&v19, v6, v21);
  v7 = v19;
  v8 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a1[38];
  a1[37] = v7;
  a1[38] = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v21);
  v10 = v4[65];
  v11 = v4[66];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  hasTargetStyleAttributes = gss::ClientStyleState<gss::PropertyID>::hasTargetStyleAttributes(v10);
  v13 = hasTargetStyleAttributes;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    if ((v13 & 1) == 0)
    {
LABEL_17:
      LOBYTE(v6) = 0;
LABEL_18:
      v14 = a1[40];
      a1[39] = 0;
      a1[40] = 0;
      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      goto LABEL_20;
    }
  }

  else if (!hasTargetStyleAttributes)
  {
    goto LABEL_17;
  }

  gss::StylesheetManager<gss::PropertyID>::targetStyleAttributes(v21, v4, a1 + 30, (a1 + 34));
  gss::StyleSheet<gss::PropertyID>::styleMatchingAttributes(&v19, v6, v21);
  v15 = v19;
  v16 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a1[40];
  a1[39] = v15;
  a1[40] = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v21);
  LOBYTE(v6) = 0;
LABEL_20:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  if ((v6 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B29BF7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  _Unwind_Resume(a1);
}

uint64_t md::DaVinciElevationRasterLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>();
    unk_1EB83C130 = 0xDC9FD09A63403ED3;
    qword_1EB83C138 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>]";
    qword_1EB83C140 = 90;
  }
}

void std::vector<std::pair<gss::StyleAttribute,unsigned short>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short> const*>,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short> const*>>(void *a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v9 = a1[1];
    v10 = a1[2];
    if (a5 <= (v10 - v9) >> 3)
    {
      v16 = (v9 - a2) >> 3;
      if (v16 >= a5)
      {
        v19 = &a2[8 * a5];
        v20 = &v9[-8 * a5];
        if (v20 >= v9)
        {
          v22 = a1[1];
        }

        else
        {
          v21 = &v9[-8 * a5];
          v22 = a1[1];
          do
          {
            v23 = *v21;
            v21 += 8;
            *v22++ = v23;
          }

          while (v21 < v9);
        }

        a1[1] = v22;
        if (v9 != v19)
        {
          v42 = 0;
          v43 = v19 - v9;
          do
          {
            v44 = &v9[v42];
            *(v44 - 2) = *&v20[v42 - 8];
            *(v44 - 2) = *&v20[v42 - 4];
            v42 -= 8;
          }

          while (v43 != v42);
        }

        do
        {
          *v7 = *v6;
          *(v7 + 2) = *(v6++ + 2);
          v7 += 8;
        }

        while (v6 != &a3[a5]);
      }

      else
      {
        v17 = (a3 + v9 - a2);
        if (v17 == a4)
        {
          v18 = a1[1];
        }

        else
        {
          v33 = (a3 + v9 - a2);
          v18 = a1[1];
          do
          {
            v34 = *v33++;
            *v18++ = v34;
          }

          while (v33 != a4);
        }

        a1[1] = v18;
        if (v16 >= 1)
        {
          v35 = &a2[8 * a5];
          v36 = &v18[-a5];
          v37 = v18;
          while (v36 < v9)
          {
            v38 = *v36;
            v36 += 8;
            *v37++ = v38;
          }

          a1[1] = v37;
          if (v18 != v35)
          {
            v39 = 0;
            v40 = -1 * a5;
            do
            {
              v41 = &v18[v39];
              *(v41 - 2) = v18[v40 - 1];
              *(v41 - 2) = WORD2(v18[v40 - 1]);
              --v39;
              --v40;
              ++v35;
            }

            while (v18 != v35);
          }

          if (v9 != a2)
          {
            do
            {
              *v7 = *v6;
              *(v7 + 2) = *(v6++ + 2);
              v7 += 8;
            }

            while (v6 != v17);
          }
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + (&v9[-*a1] >> 3);
      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = v10 - v11;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      v15 = (a2 - v11) >> 3;
      if (v14)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gss::StyleAttribute,unsigned short>>>(v14);
      }

      v24 = 8 * v15;
      v25 = 8 * a5;
      v26 = (8 * v15);
      do
      {
        v27 = *v6++;
        *v26++ = v27;
        v25 -= 8;
      }

      while (v25);
      memcpy((v24 + 8 * a5), a2, a1[1] - a2);
      v28 = *a1;
      v29 = v24 + 8 * a5 + a1[1] - v7;
      a1[1] = v7;
      v30 = v7 - v28;
      v31 = (v24 - (v7 - v28));
      memcpy(v31, v28, v30);
      v32 = *a1;
      *a1 = v31;
      a1[1] = v29;
      a1[2] = 0;
      if (v32)
      {

        operator delete(v32);
      }
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls32ElevatedStrokeConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15A28;
  a2[1] = v2;
  return result;
}

void md::SelectedDaVinciRoadsLayerDataSource::constructRequests(uint64_t a1, void **a2, void **a3)
{
  if (*(a1 + 864))
  {
    v7 = a2 == a3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v22 = v6;
    v23 = v5;
    v24 = v3;
    v25 = v4;
    v9 = a2;
    do
    {
      gdc::Tiled::tileFromLayerDataKey(v20, (*v9)[2]);
      v11 = *(a1 + 856);
      if (v11)
      {
        v12 = vrev64_s32(v21);
        v13 = v20[1];
        do
        {
          v14 = v11[2];
          v19[0] = v12;
          v19[2] = v14;
          v19[1] = v13;
          if (((*v9)[12] & 0x100000000) != 0)
          {
            v15 = (*v9)[12];
          }

          else
          {
            v15 = 2147483646;
          }

          gdc::ResourceKey::ResourceKey(v16, *(a1 + 592), v19, 24, (*v9)[14], v15);
          gdc::LayerDataRequest::request(*v9, v16, 0);
          if (v17 != v18)
          {
            free(v17);
          }

          v11 = *v11;
        }

        while (v11);
      }

      v9 += 2;
    }

    while (v9 != a3);
  }
}

void md::DaVinciAssetLayerDataSource::constructRequests(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v12, *v4);
      UInt64 = gdc::ResourceKey::getUInt64(v13, 0);
      v6 = **v4;
      v7 = *(*v4 + 112);
      v15[0] = UInt64;
      v15[1] = 0;
      gdc::ResourceKey::ResourceKey(v9, v6, 28, v15, 2, v7);
      v8 = *v4;
      v4 += 2;
      gdc::LayerDataRequest::request(v8, v9, 1);
      if (v10 != v11)
      {
        free(v10);
      }

      if (v13 != v14)
      {
        free(v13);
      }
    }

    while (v4 != a3);
  }
}

void gss::ResolveMultiAttributeVectorToMap(uint64_t *a1, unsigned int **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  v7 = v6 >> 3;
  if (v6 >> 3 < 1)
  {
    v11 = 0;
LABEL_7:
    std::__stable_sort<std::_ClassicAlgPolicy,gss::ResolveMultiAttributeVectorToMap(std::vector<std::pair<gss::StyleAttribute,unsigned short>> &)::$_1 &,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short>*>>(v4, v5, v7, 0, v11);
  }

  else
  {
    v8 = MEMORY[0x1E69E5398];
    v9 = v6 >> 3;
    while (1)
    {
      v10 = operator new(8 * v9, v8);
      if (v10)
      {
        break;
      }

      v11 = v9 >> 1;
      v12 = v9 > 1;
      v9 >>= 1;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v13 = v10;
    std::__stable_sort<std::_ClassicAlgPolicy,gss::ResolveMultiAttributeVectorToMap(std::vector<std::pair<gss::StyleAttribute,unsigned short>> &)::$_1 &,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short>*>>(v4, v5, v7, v10, v9);
    operator delete(v13);
  }

  v16 = a2;
  v14 = *a2;
  v15 = v16[1];
  if (v15 == v14)
  {
    v17 = v15;
LABEL_15:
    if (v17 != v14)
    {
      if (v17 - 4 != v14)
      {
        v20 = v17 - 6;
        do
        {
          if (*(v17 - 2) != *v20)
          {
            *(v17 - 4) = *v20;
            *(v17 - 6) = *(v20 + 2);
            v17 -= 2;
          }

          v21 = v20 == v14;
          v20 -= 2;
        }

        while (!v21);
      }

      v14 = v17 - 2;
    }
  }

  else
  {
    v17 = v15 + 2;
    while (v17 - 4 != v14)
    {
      v18 = *(v17 - 4);
      v19 = *(v17 - 6);
      v17 -= 2;
      if (v18 == v19)
      {
        goto LABEL_15;
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
  *(a1 + 8) = 256;
  if ((((v15 - v14) >> 3) - 1) <= 0xFFFE)
  {
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, (v15 - v14) >> 3, 0);
  }

  while (v14 != v15 && geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(a1))
  {
    v22 = *(a1 + 6);
    v23 = *a1;
    *(*a1 + 4 * v22) = *v14;
    *(v23 + *(a1 + 2) + 2 * v22) = *(v14 + 2);
    ++*(a1 + 6);
    v14 += 2;
  }

  *(a1 + 17) = 1;
}

unsigned int *std::__stable_sort<std::_ClassicAlgPolicy,gss::ResolveMultiAttributeVectorToMap(std::vector<std::pair<gss::StyleAttribute,unsigned short>> &)::$_1 &,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short>*>>(unsigned int *result, unsigned int *a2, unint64_t a3, unsigned int *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v7 = *(a2 - 2);
      v8 = *result;
      if (v7 < *result)
      {
        *result = v7;
        *(a2 - 2) = v8;
        v9 = *(result + 2);
        *(result + 2) = *(a2 - 2);
        *(a2 - 2) = v9;
      }
    }

    else if (a3 <= 0)
    {
      if (result != a2)
      {
        v16 = result + 2;
        if (result + 2 != a2)
        {
          v17 = 0;
          v18 = result;
          do
          {
            v19 = *v18;
            v18 = v16;
            if (*v16 < v19)
            {
              v20 = *v16;
              v21 = v17;
              while (1)
              {
                v22 = result + v21;
                *(v22 + 2) = v19;
                *(v22 + 6) = *(result + v21 + 4);
                if (!v21)
                {
                  break;
                }

                v19 = *(v22 - 2);
                v21 -= 8;
                if (v19 <= v20)
                {
                  v23 = (result + v21 + 8);
                  goto LABEL_20;
                }
              }

              v23 = result;
LABEL_20:
              *v23 = v20;
              *(v23 + 2) = WORD2(v20);
            }

            v16 = v18 + 2;
            v17 += 8;
          }

          while (v18 + 2 != a2);
        }
      }
    }

    else
    {
      v12 = a4;
      v13 = a3 >> 1;
      v14 = &result[2 * (a3 >> 1)];
      v15 = a3 >> 1;
      if (a3 <= a5)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,gss::ResolveMultiAttributeVectorToMap(std::vector<std::pair<gss::StyleAttribute,unsigned short>> &)::$_1 &,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short>*>>(result, v14, v15, a4);
        v24 = &v12[2 * v13];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,gss::ResolveMultiAttributeVectorToMap(std::vector<std::pair<gss::StyleAttribute,unsigned short>> &)::$_1 &,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short>*>>(&v6[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), v24);
        v25 = &v12[2 * a3];
        v26 = v24;
        while (v26 != v25)
        {
          v27 = *v26;
          if (*v26 < *v12)
          {
            v28 = v26;
          }

          else
          {
            v27 = *v12;
            v28 = v12;
          }

          v29 = *(v28 + 2);
          if (*v26 < *v12)
          {
            v26 += 2;
          }

          else
          {
            v12 += 2;
          }

          *v6 = v27;
          *(v6 + 2) = v29;
          v6 += 2;
          if (v12 == v24)
          {
            if (v26 != v25)
            {
              v30 = 0;
              do
              {
                v31 = &v26[v30];
                v32 = &v6[v30];
                *v32 = v26[v30];
                *(v32 + 2) = v26[v30 + 1];
                v30 += 2;
              }

              while (v31 + 2 != v25);
            }

            return result;
          }
        }

        if (v12 != v24)
        {
          v33 = 0;
          do
          {
            v34 = &v12[v33];
            v35 = &v6[v33];
            *v35 = v12[v33];
            *(v35 + 2) = v12[v33 + 1];
            v33 += 2;
          }

          while (v34 + 2 != v24);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,gss::ResolveMultiAttributeVectorToMap(std::vector<std::pair<gss::StyleAttribute,unsigned short>> &)::$_1 &,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short>*>>(result, v14, v15, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,gss::ResolveMultiAttributeVectorToMap(std::vector<std::pair<gss::StyleAttribute,unsigned short>> &)::$_1 &,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short>*>>(&v6[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), v12, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,gss::ResolveMultiAttributeVectorToMap(std::vector<std::pair<gss::StyleAttribute,unsigned short>> &)::$_1 &,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short>*>>(v6, &v6[2 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v12, a5);
      }
    }
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[314];
}

uint64_t md::AttributesLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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

uint64_t md::MuninAvailabilityDaVinciLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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

unsigned int *std::__stable_sort_move<std::_ClassicAlgPolicy,gss::ResolveMultiAttributeVectorToMap(std::vector<std::pair<gss::StyleAttribute,unsigned short>> &)::$_1 &,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short>*>>(unsigned int *result, unsigned int *a2, unint64_t a3, unsigned int *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_10:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 2);
      v9 = v8 >= *result;
      if (v8 >= *result)
      {
        v10 = result;
      }

      else
      {
        v10 = a2 - 2;
      }

      *a4 = *v10;
      v4 = a4 + 2;
      if (v9)
      {
        v6 = a2 - 2;
      }

      goto LABEL_10;
    }

    if (a3 > 8)
    {
      v20 = &result[2 * (a3 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,gss::ResolveMultiAttributeVectorToMap(std::vector<std::pair<gss::StyleAttribute,unsigned short>> &)::$_1 &,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short>*>>(result, v20, a3 >> 1, a4, a3 >> 1);
      result = std::__stable_sort<std::_ClassicAlgPolicy,gss::ResolveMultiAttributeVectorToMap(std::vector<std::pair<gss::StyleAttribute,unsigned short>> &)::$_1 &,std::__wrap_iter<std::pair<gss::StyleAttribute,unsigned short>*>>(&v6[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v4[2 * (a3 >> 1)], a3 - (a3 >> 1));
      v21 = &v6[2 * (a3 >> 1)];
      while (v21 != a2)
      {
        v22 = *v21 >= *v6;
        if (*v21 >= *v6)
        {
          v23 = v6;
        }

        else
        {
          v23 = v21;
        }

        v21 += 2 * (*v21 < *v6);
        v6 += 2 * v22;
        *v4 = *v23;
        v4 += 2;
        if (v6 == v20)
        {
          while (v21 != a2)
          {
            v25 = *v21;
            v21 += 2;
            *v4 = v25;
            v4 += 2;
          }

          return result;
        }
      }

      while (v6 != v20)
      {
        v24 = *v6;
        v6 += 2;
        *v4 = v24;
        v4 += 2;
      }
    }

    else if (result != a2)
    {
      v11 = result + 2;
      *a4 = *result;
      if (result + 2 != a2)
      {
        v12 = 0;
        v13 = a4;
        v14 = a4;
        do
        {
          v15 = v11;
          v16 = *v14;
          v14 += 2;
          if (*v11 >= v16)
          {
            *v14 = *v11;
          }

          else
          {
            *(v13 + 1) = *v13;
            v17 = a4;
            if (v13 != a4)
            {
              v18 = v12;
              while (1)
              {
                v17 = (a4 + v18);
                v19 = *(a4 + v18 - 8);
                if (*v15 >= v19)
                {
                  break;
                }

                *v17 = v19;
                *(v17 + 2) = *(v17 - 2);
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }

            *v17 = *v15;
            *(v17 + 2) = *(v6 + 6);
          }

          v11 = v15 + 2;
          v12 += 8;
          v13 = v14;
          v6 = v15;
        }

        while (v15 + 2 != a2);
      }
    }
  }

  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci14ElevatedStrokeEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13788;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci14ElevatedStrokeEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13788;
  a2[1] = v2;
  return result;
}

void gdc::ResourceManager::finishBatch(gdc::ResourceManager *this)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = *(this + 29);
  if (v2)
  {
    v3 = (this + 256);
    v4 = (this + 264);
    do
    {
      v5 = *(v2 + 9);
      v6 = *(this + 11);
      *(this + 11) = v6 + 1;
      v43 = v2[2];
      v44[0] = v47;
      v44[1] = v47;
      v45 = v47;
      v46 = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(v44, v2[3], v2[4]);
      v7 = v2[11];
      v48 = *(v2 + 6);
      v47[4] = v7;
      v49 = v6;
      if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      v8 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
      v9 = os_signpost_id_generate(v8);

      *&v48 = v9;
      if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      v10 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = (*(**(this + 56) + 16))(*(this + 56));
        gdc::ResourceKey::keysInt32Str(&__p, v2 + 16);
        p_p = &__p;
        if (SBYTE7(v52) < 0)
        {
          p_p = __p;
        }

        *buf = 136315650;
        *&buf[4] = v11;
        *&buf[12] = 2080;
        *&buf[14] = p_p;
        *&buf[22] = 2048;
        *&v55 = v49;
        _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_DEBUG, "%s Adding to requests in progress: %s, %lu", buf, 0x20u);
        if (SBYTE7(v52) < 0)
        {
          operator delete(__p);
        }
      }

      std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::__emplace_unique_key_args<gdc::ResourceKey,std::pair<gdc::ResourceKey,unsigned long> &>(this + 12, &v43, &v43);
      v13 = geo::linear_map<unsigned short,gdc::ResourceFetcher *,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,gdc::ResourceFetcher *>>,std::vector<std::pair<unsigned short,gdc::ResourceFetcher *>>>::operator[](this + 4, v5);
      v14 = *v13;
      v15 = *v3;
      v16 = *v4;
      if (*v3 == *v4)
      {
        goto LABEL_18;
      }

      v17 = *v3;
      while (v14 != *v17)
      {
        v17 += 6;
        if (v17 == v16)
        {
          goto LABEL_18;
        }
      }

      if (v17 == v16)
      {
LABEL_18:
        *buf = *v13;
        *&buf[8] = 0u;
        v55 = 0u;
        v56 = 1065353216;
        if (v15 == v16)
        {
          goto LABEL_25;
        }

        v17 = v15;
        while (v14 != *v17)
        {
          v17 += 6;
          if (v17 == v16)
          {
            goto LABEL_25;
          }
        }

        if (v17 == v16)
        {
LABEL_25:
          v18 = *(this + 34);
          if (v16 >= v18)
          {
            v22 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 4);
            if (v22 + 1 > 0x555555555555555)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v23 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v15) >> 4);
            v24 = 2 * v23;
            if (2 * v23 <= v22 + 1)
            {
              v24 = v22 + 1;
            }

            if (v23 >= 0x2AAAAAAAAAAAAAALL)
            {
              v25 = 0x555555555555555;
            }

            else
            {
              v25 = v24;
            }

            v53 = this + 256;
            if (v25)
            {
              if (v25 <= 0x555555555555555)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            __p = 0;
            v51 = 48 * v22;
            v52 = 48 * v22;
            *v51 = v14;
            std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>>::unordered_map(48 * v22 + 8, &buf[8]);
            *&v52 = v52 + 48;
            v26 = *v4;
            v27 = *v3;
            v28 = v51 + *v3 - *v4;
            if (*v3 != *v4)
            {
              v29 = 0;
              do
              {
                v30 = v28 + v29 * 8;
                *v30 = v27[v29];
                v31 = v27[v29 + 1];
                v27[v29 + 1] = 0;
                *(v30 + 8) = v31;
                v32 = v27[v29 + 3];
                *(v30 + 16) = v27[v29 + 2];
                v27[v29 + 2] = 0;
                *(v28 + v29 * 8 + 24) = v32;
                v33 = v27[v29 + 4];
                *(v30 + 32) = v33;
                *(v30 + 40) = v27[v29 + 5];
                if (v33)
                {
                  v34 = *(v32 + 8);
                  v35 = *(v30 + 16);
                  if ((v35 & (v35 - 1)) != 0)
                  {
                    if (v34 >= v35)
                    {
                      v34 %= v35;
                    }
                  }

                  else
                  {
                    v34 &= v35 - 1;
                  }

                  *(v31 + 8 * v34) = v28 + v29 * 8 + 24;
                  v27[v29 + 3] = 0;
                  v27[v29 + 4] = 0;
                }

                v29 += 6;
              }

              while (&v27[v29] != v26);
              do
              {
                std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::~__hash_table((v27 + 1));
                v27 += 6;
              }

              while (v27 != v26);
            }

            v36 = *(this + 32);
            *(this + 32) = v28;
            v37 = *(this + 34);
            v42 = v52;
            *v4 = v52;
            *&v52 = v36;
            *(&v52 + 1) = v37;
            __p = v36;
            v51 = v36;
            std::__split_buffer<std::pair<gdc::ResourceFetcher *,std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>>>>::~__split_buffer(&__p);
            v21 = v42;
            v20 = v55;
            v19 = *&buf[8];
          }

          else
          {
            *v16 = v14;
            std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>>::unordered_map((v16 + 1), &buf[8]);
            v19 = 0;
            v20 = 0;
            v21 = v16 + 6;
            *v4 = v16 + 6;
          }

          *v4 = v21;
          v17 = v21 - 6;
          std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>>>::__deallocate_node(v20);
          *&buf[8] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>>>::__deallocate_node(0);
          *&buf[8] = 0;
        }

        std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>>>::__deallocate_node(0);
      }

      std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::__emplace_unique_key_args<gdc::ResourceKey,std::pair<gdc::ResourceKey,unsigned long> &>(v17 + 1, &v43, &v43);
      if (v44[0] != v45)
      {
        free(v44[0]);
      }

      v2 = *v2;
    }

    while (v2);
  }

  v38 = *(this + 32);
  v39 = *(this + 33);
  while (v38 != v39)
  {
    (*(**v38 + 16))(*v38, v38 + 1, *(this + 35), 0);
    if (v38[4])
    {
      std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>>>::__deallocate_node(v38[3]);
      v38[3] = 0;
      v40 = v38[2];
      if (v40)
      {
        for (i = 0; i != v40; ++i)
        {
          *(v38[1] + 8 * i) = 0;
        }
      }

      v38[4] = 0;
    }

    v38 += 6;
  }

  std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::clear(this + 216);
}

void sub_1B29C0B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>>>::__deallocate_node(0);
  std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>>>::__deallocate_node(0);
  if (a14 != a16)
  {
    free(a14);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::__emplace_unique_key_args<gdc::ResourceKey,std::pair<gdc::ResourceKey,unsigned long> &>(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = (v4 + ((v3 - 0x61C8864680B583EBLL) << 6) + ((v3 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v3 - 0x61C8864680B583EBLL);
  v6 = *(a2 + 9) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583EBLL;
  v7 = v6 ^ v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_20;
  }

  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v6 ^ v5;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v7)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v8)
      {
        v15 %= *&v8;
      }
    }

    else
    {
      v15 &= *&v8 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_20;
    }

LABEL_19:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  if (*(v14 + 16) != v3)
  {
    goto LABEL_19;
  }

  if (*(v14 + 9) != v4)
  {
    goto LABEL_19;
  }

  v16 = v12;
  v17 = v4;
  v18 = gdc::GenericKey::operator==((v14 + 3), (a2 + 8));
  v4 = v17;
  v12 = v16;
  if (!v18)
  {
    goto LABEL_19;
  }
}

void gss::StyleSheet<gss::PropertyID>::styleMatchingAttributes(void *a1, uint64_t a2, uint64_t *a3)
{
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit(a3);
  v5 = *a3;
  v73 = *a3;
  v6 = *(a3 + 2);
  *v74 = *(a3 + 2);
  v7 = *(a3 + 6);
  *&v74[4] = *(a3 + 6);
  *&v74[6] = *(a3 + 14);
  *(a3 + 8) = 256;
  *a3 = 0;
  a3[1] = 0;
  v8 = pthread_rwlock_rdlock((a2 + 2528));
  if (v8)
  {
    geo::read_write_lock::logFailure(v8, "read lock", v9);
  }

  v11 = 0;
  if (v7)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      if (!((v14 >= v7) | v12 & 1))
      {
        v13 = (v5 + 4 * v14);
        v10 = (v5 + v6 + 2 * v14);
        v12 = 1;
      }

      v15 = ((v11 << 6) - 0x61C8864680B583EBLL + (v11 >> 2) + *v13) ^ v11;
      v11 = (*v10 - 0x61C8864680B583EBLL + (v15 << 6) + (v15 >> 2)) ^ v15;
      v16 = v14 + 1;
      if (v12)
      {
        v12 = 0;
      }

      if (v16 < v7)
      {
        ++v14;
      }

      else
      {
        v14 = v7;
      }
    }

    while (v16 < v7);
  }

  v17 = (a2 + 2728);
  v18 = *(a2 + 2736);
  if (v18)
  {
    v19 = vcnt_s8(v18);
    v19.i16[0] = vaddlv_u8(v19);
    v7 = v19.u32[0];
    if (v19.u32[0] > 1uLL)
    {
      v20 = v11;
      if (v11 >= *&v18)
      {
        v20 = v11 % *&v18;
      }
    }

    else
    {
      v20 = (*&v18 - 1) & v11;
    }

    v21 = *(*v17 + 8 * v20);
    if (v21)
    {
      v22 = *v21;
      if (*v21)
      {
        do
        {
          v23 = v22[1];
          if (v23 == v11)
          {
            if (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(&v73, (v22 + 2)))
            {
              v63 = v22[6];
              *a1 = v22[5];
              a1[1] = v63;
              if (v63)
              {
                atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
              }

              geo::read_write_lock::unlock((a2 + 2528));
              goto LABEL_126;
            }
          }

          else
          {
            if (v7 > 1)
            {
              if (v23 >= *&v18)
              {
                v23 %= *&v18;
              }
            }

            else
            {
              v23 &= *&v18 - 1;
            }

            if (v23 != v20)
            {
              break;
            }
          }

          v22 = *v22;
        }

        while (v22);
      }
    }
  }

  geo::read_write_lock::unlock((a2 + 2528));
  v24 = atomic_load((a2 + 2786));
  if ((v24 & 1) == 0)
  {
    std::__assoc_sub_state::wait(*(a2 + 2816));
  }

  v25 = atomic_load((a2 + 2787));
  if ((v25 & 1) == 0)
  {
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_126;
  }

  gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::matchAttributes(&v72, **(a2 + 160), &v73, &v71, (*(a2 + 160) + 8), (a2 + 64), (*(a2 + 160) + 32));
  v71 = (a2 + 2528);
  v26 = pthread_rwlock_wrlock((a2 + 2528));
  if (v26)
  {
    geo::read_write_lock::logFailure(v26, "write lock", v27);
  }

  if (*&v74[4])
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    do
    {
      if (!((v32 >= *&v74[4]) | v30 & 1))
      {
        v31 = (v73 + 4 * v32);
        v28 = (v73 + *v74 + 2 * v32);
        v30 = 1;
      }

      v33 = ((v29 << 6) - 0x61C8864680B583EBLL + (v29 >> 2) + *v31) ^ v29;
      v29 = (*v28 - 0x61C8864680B583EBLL + (v33 << 6) + (v33 >> 2)) ^ v33;
      v34 = v32 + 1;
      if (v30)
      {
        v30 = 0;
      }

      if (v34 < *&v74[4])
      {
        ++v32;
      }

      else
      {
        v32 = *&v74[4];
      }
    }

    while (v34 < *&v74[4]);
  }

  else
  {
    v29 = 0;
  }

  v35 = *(a2 + 2736);
  if (v35)
  {
    v36 = vcnt_s8(v35);
    v36.i16[0] = vaddlv_u8(v36);
    v37 = v36.u32[0];
    if (v36.u32[0] > 1uLL)
    {
      v7 = v29;
      if (v29 >= v35)
      {
        v7 = v29 % v35;
      }
    }

    else
    {
      v7 = (v35 - 1) & v29;
    }

    v38 = *(*v17 + 8 * v7);
    if (v38)
    {
      v39 = *v38;
      if (*v38)
      {
        do
        {
          v40 = v39[1];
          if (v40 == v29)
          {
            v26 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(&v73, (v39 + 2));
            if (v26)
            {
              goto LABEL_125;
            }
          }

          else
          {
            if (v37 > 1)
            {
              if (v40 >= v35)
              {
                v40 %= v35;
              }
            }

            else
            {
              v40 &= v35 - 1;
            }

            if (v40 != v7)
            {
              break;
            }
          }

          v39 = *v39;
        }

        while (v39);
      }
    }
  }

  v41 = gss::zone_mallocator::instance(v26);
  v42 = pthread_rwlock_rdlock((v41 + 32));
  if (v42)
  {
    geo::read_write_lock::logFailure(v42, "read lock", v43);
  }

  v44 = malloc_type_zone_malloc(*v41, 0x38uLL, 0x1030040238084B7uLL);
  atomic_fetch_add((v41 + 24), 1u);
  geo::read_write_lock::unlock((v41 + 32));
  *v44 = 0;
  *(v44 + 1) = v29;
  *(v44 + 2) = v73;
  *(v44 + 6) = *v74;
  *(v44 + 14) = *&v74[4];
  *(v44 + 30) = *&v74[6];
  v73 = 0;
  *v74 = 0;
  *&v74[8] = 256;
  v46 = *(&v72 + 1);
  *(v44 + 5) = v72;
  *(v44 + 6) = v46;
  if (v46)
  {
    atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
  }

  v47 = (*(a2 + 2768) + 1);
  v48 = *(a2 + 2776);
  if (!v35 || (v48 * v35) < v47)
  {
    v49 = v35 < 3 || (v35 & (v35 - 1)) != 0;
    v50 = v49 | (2 * v35);
    v51 = vcvtps_u32_f32(v47 / v48);
    if (v50 <= v51)
    {
      v52 = v51;
    }

    else
    {
      v52 = v50;
    }

    if (v52 == 1)
    {
      v52 = 2;
    }

    else if ((v52 & (v52 - 1)) != 0)
    {
      prime = std::__next_prime(v52);
      v52 = prime;
    }

    v35 = *(a2 + 2736);
    if (v52 > v35)
    {
      goto LABEL_79;
    }

    if (v52 < v35)
    {
      prime = vcvtps_u32_f32(*(a2 + 2768) / *(a2 + 2776));
      if (v35 < 3 || (v61 = vcnt_s8(v35), v61.i16[0] = vaddlv_u8(v61), v61.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v62 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v62;
        }
      }

      if (v52 <= prime)
      {
        v52 = prime;
      }

      if (v52 >= v35)
      {
        v35 = *(a2 + 2736);
      }

      else
      {
        if (v52)
        {
LABEL_79:
          v53 = gss::zone_mallocator::instance(prime);
          v54 = pthread_rwlock_rdlock((v53 + 32));
          if (v54)
          {
            geo::read_write_lock::logFailure(v54, "read lock", v55);
          }

          v56 = malloc_type_zone_malloc(*v53, 8 * v52, 0x2004093837F09uLL);
          atomic_fetch_add((v53 + 24), 1u);
          geo::read_write_lock::unlock((v53 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> **,0>((a2 + 2728), v56);
          v57 = 0;
          *(a2 + 2736) = v52;
          do
          {
            *(*v17 + 8 * v57++) = 0;
          }

          while (v52 != v57);
          v58 = *(a2 + 2752);
          if (v58)
          {
            v59 = v58[1];
            v60 = vcnt_s8(v52);
            v60.i16[0] = vaddlv_u8(v60);
            if (v60.u32[0] > 1uLL)
            {
              if (v59 >= v52)
              {
                v59 %= v52;
              }
            }

            else
            {
              v59 &= v52 - 1;
            }

            *(*v17 + 8 * v59) = a2 + 2752;
            v64 = *v58;
            if (*v58)
            {
              do
              {
                v65 = v64[1];
                if (v60.u32[0] > 1uLL)
                {
                  if (v65 >= v52)
                  {
                    v65 %= v52;
                  }
                }

                else
                {
                  v65 &= v52 - 1;
                }

                if (v65 != v59)
                {
                  v66 = *v17;
                  if (!*(*v17 + 8 * v65))
                  {
                    *(v66 + 8 * v65) = v58;
                    goto LABEL_106;
                  }

                  *v58 = *v64;
                  *v64 = **(v66 + 8 * v65);
                  **(v66 + 8 * v65) = v64;
                  v64 = v58;
                }

                v65 = v59;
LABEL_106:
                v58 = v64;
                v64 = *v64;
                v59 = v65;
              }

              while (v64);
            }
          }

          v35 = v52;
          goto LABEL_110;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> **,0>((a2 + 2728), 0);
        v35 = 0;
        *(a2 + 2736) = 0;
      }
    }

LABEL_110:
    if ((v35 & (v35 - 1)) != 0)
    {
      if (v29 >= v35)
      {
        v7 = v29 % v35;
      }

      else
      {
        v7 = v29;
      }
    }

    else
    {
      v7 = (v35 - 1) & v29;
    }
  }

  v67 = *v17;
  v68 = *(*v17 + 8 * v7);
  if (v68)
  {
    *v44 = *v68;
  }

  else
  {
    *v44 = *(a2 + 2752);
    *(a2 + 2752) = v44;
    *(v67 + 8 * v7) = a2 + 2752;
    if (!*v44)
    {
      goto LABEL_124;
    }

    v69 = *(*v44 + 8);
    if ((v35 & (v35 - 1)) != 0)
    {
      if (v69 >= v35)
      {
        v69 %= v35;
      }
    }

    else
    {
      v69 &= v35 - 1;
    }

    v68 = (*v17 + 8 * v69);
  }

  *v68 = v44;
LABEL_124:
  ++*(a2 + 2768);
LABEL_125:
  geo::write_lock_guard::~write_lock_guard(&v71);
  *a1 = v72;
LABEL_126:
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v73);
}

void sub_1B29C167C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v9 = va_arg(va1, pthread_rwlock_t *);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, std::__shared_weak_count *);
  v13 = va_arg(va1, void);
  geo::read_write_lock::unlock((v5 + 32));
  std::__destroy_at[abi:nn200100]<std::pair<gss::StyleSheetResultCacheKey const,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,0>(v4);
  v8 = gss::zone_mallocator::instance(v7);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *>>(v8, v3);
  geo::write_lock_guard::~write_lock_guard(va);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va1);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>>::unordered_map(uint64_t a1, uint64_t a2)
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

uint64_t std::__split_buffer<std::pair<gdc::ResourceFetcher *,std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignSRGBBlendStyleData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignSRGBBlendStyleData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignSRGBBlendStyleData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3 != v1[5])
      {
        free(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::matchAttributes(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t *a5, void *a6, void *a7)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = *a5;
  v12 = *(a3 + 12);
  v13 = *a3 + *(a3 + 8);
  do
  {
    while (1)
    {
      while (1)
      {
        v14 = *a2;
        if (*a2 == 0x7FFFFFFF)
        {
          v18 = *a7 + 16 * *(a2 + 6);
          if (gss::MatchingGraphEndChain::matches(*v18, *(v18 + 8), a3))
          {
            v19 = (*a6 + 16 * *(a2 + 4));
            v20 = *v19;
            if (*v19)
            {
              *a4 = *(v20 + 112);
              v21 = v19[1];
              *a1 = v20;
              a1[1] = v21;
              if (v21)
              {
                atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
              }

              return;
            }

            v23 = GEOGetGeoCSSStyleSheetLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "false";
              *&buf[12] = 2080;
              *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoCSS/GeoCSS/StyleMatchingTree.hpp";
              v31 = 1024;
              v32 = 382;
              _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_ERROR, "endchain with no style: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
            }
          }

LABEL_21:
          *a4 = 0;
          *a1 = 0;
          a1[1] = 0;
          return;
        }

        SubTreeWithValue = gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::getSubTreeWithValue(a2, 0xFFFFu, v11);
        v16 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a3, v14);
        if (v16 != v12)
        {
          break;
        }

        a2 = SubTreeWithValue;
        if (!SubTreeWithValue)
        {
          goto LABEL_21;
        }
      }

      v17 = gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::getSubTreeWithValue(a2, *(v13 + 2 * v16), v11);
      if (SubTreeWithValue)
      {
        break;
      }

      a2 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    a2 = SubTreeWithValue;
  }

  while (!v17);
  v29 = 0;
  gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::matchAttributes(buf, v17, a3, &v29 + 1, a5, a6, a7);
  gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::matchAttributes(&v28, SubTreeWithValue, a3, &v29, a5, a6, a7);
  if (HIDWORD(v29) >= v29)
  {
    v24 = *buf;
    v22 = *(&v28 + 1);
    *a4 = HIDWORD(v29);
    *a1 = v24;
    if (v22)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *a4 = v29;
    *a1 = v28;
    v22 = *&buf[8];
    if (!*&buf[8])
    {
      return;
    }

LABEL_24:
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }
}

void sub_1B29C1D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gss::StyleMatchingTreeNode<gss::CartoStyle<gss::PropertyID>>::getSubTreeWithValue(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = &v3[4 * v4];
  while (v4)
  {
    v6 = v4 >> 1;
    v7 = &v3[4 * (v4 >> 1)];
    v9 = *v7;
    v8 = v7 + 4;
    v4 += ~(v4 >> 1);
    if (v9 < a2)
    {
      v3 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  if (v3 == v5 || *v3 != a2)
  {
    return 0;
  }

  else
  {
    return a3 + 24 * *(v3 + 1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,unsigned long long>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,unsigned long long>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gss::MatchingGraphEndChain::matches(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  v5 = a1;
  v6 = a1 + 24 * a2;
  v7 = *(a3 + 12);
  v8 = *a3 + *(a3 + 8);
  while (1)
  {
    v9 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a3, *v5);
    if (v9 == v7)
    {
      break;
    }

    v10 = *(v5 + 16);
    if (v9 < v7)
    {
      v3 = (v8 + 2 * v9);
    }

    if (*(v5 + 16))
    {
      v11 = 4 * v10;
      for (i = *(v5 + 8); *i != *v3; ++i)
      {
        v11 -= 4;
        if (!v11)
        {
          return 0;
        }
      }
    }

    else
    {
      i = *(v5 + 8);
    }

    if (i == (*(v5 + 8) + 4 * v10))
    {
      break;
    }

    v5 += 24;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return 0;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>();
    unk_1EB83BEF0 = 0xF94A4E2652CF266ELL;
    qword_1EB83BEF8 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>]";
    qword_1EB83BF00 = 91;
  }
}

void md::TiledGEOResourceFetcher::fetchResources(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v99 = *MEMORY[0x1E69E9840];
  v55 = a4;
  if (*(a1 + 768) || (*(a1 + 777) & 1) == 0)
  {
    v6 = *(a1 + 16);
    v7 = 7;
    if ((v6 & 1) == 0)
    {
      v7 = 3;
    }

    v50 = v7;
    v54 = md::TiledGEOResourceFetcher::getTileLoader(a1);
    v8 = *(a1 + 768);
    if (v8 && [v8 hasTimeToLiveSeconds])
    {
      v52 = 1000 * [*(a1 + 768) timeToLiveSeconds];
    }

    else
    {
      v52 = 0;
    }

    v9 = *(a2 + 16);
    if (!v9)
    {
LABEL_46:

      goto LABEL_47;
    }

    v49 = (4 * v6) & 8 | (((v6 >> 2) & 1) << 12);
    v51 = *MEMORY[0x1E69A1980];
    v48 = (*MEMORY[0x1E69A1648] + 1) & 0x7F;
    while (1)
    {
      v12 = v9[14];
      v87 = v9[2];
      v88 = v92;
      v89 = v92;
      v90 = v92;
      v91 = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(&v88, v9[3], v9[4]);
      v93 = v9[11];
      v94 = *(v9 + 6);
      *(&v86 + 1) = 0;
      *&v86 = 0;
      *&v86 = (*(*a1 + 152))(a1, *(a1 + 768), &v87);
      *(&v86 + 1) = v13;
      (*(*a1 + 160))(v84, a1, &v87);
      v14 = +[VKDebugSettings sharedSettings];
      v15 = [v14 shouldUseTestTileLoader];

      if (v15 && (*&v86 & 0x7F) == v51)
      {
        *&v86 = v48 | *&v86 & 0x80;
      }

      if (*(a1 + 776) == 1)
      {
        GEOTileKeyAssertIsStandard();
        if (v10[350] != -1)
        {
          dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
        }

        v16 = v11[351];
        v17 = v16;
        v18 = v94;
        if ((v94 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v16))
        {
          goto LABEL_25;
        }

        *buf = 67110144;
        *v96 = *(&v86 + 6) >> 6;
        *&v96[4] = 1024;
        *&v96[6] = *(&v86 + 10) & 0x3FFFFFF;
        LOWORD(v97) = 1024;
        *(&v97 + 2) = *(&v86 + 6) & 0x3F;
        HIWORD(v97) = 1024;
        *v98 = (*(&v86 + 10) | (*(&v86 + 14) << 32)) >> 26;
        *&v98[4] = 2048;
        *&v98[6] = *(&v94 + 1);
        v19 = v17;
        v20 = v18;
        v21 = "key=%d.%d.%d type=%d parent_signpost=%llu";
        v22 = 36;
      }

      else
      {
        if (v10[350] != -1)
        {
          dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
        }

        v23 = v11[351];
        v17 = v23;
        v24 = v94;
        if ((v94 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v23))
        {
          goto LABEL_25;
        }

        *buf = 0;
        v19 = v17;
        v20 = v24;
        v21 = "Unknown tile key";
        v22 = 2;
      }

      _os_signpost_emit_with_name_impl(&dword_1B2754000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v20, "ResourceFetch", v21, buf, v22);
LABEL_25:

      if (v10[350] != -1)
      {
        dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
      }

      v25 = v11[351];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = (*(**(a1 + 448) + 16))(*(a1 + 448));
        gdc::ResourceKey::keysInt32Str(&__p, &v87);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *v96 = v26;
        *&v96[8] = 2080;
        v97 = p_p;
        *v98 = 2048;
        *&v98[2] = v12;
        _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_DEBUG, "%s TiledGEOResourceFetcher fetching resource: %s, %llu", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (v87)
      {
        v56 = *(a1 + 648);
        md::GEOResourceFetcher::willLoadGEOKey(a1, &v86, v56, &v87);
        if (v85)
        {
          v28 = v84;
        }

        else
        {
          v28 = 0;
        }

        v29 = HIDWORD(v87);
        v30 = qos_class_self();
        v31 = v94;
        v32 = *(a1 + 672);
        v33 = *(a3 + 16);
        md::LabelExternalPointFeature::incident(v33);
        objc_claimAutoreleasedReturnValue();
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3321888768;
        v58[2] = ___ZN2md23TiledGEOResourceFetcher14fetchResourcesERKNSt3__113unordered_mapIN3gdc11ResourceKeyEyNS3_15ResourceKeyHashENS1_8equal_toIS4_EENS1_9allocatorINS1_4pairIKS4_yEEEEEEPN3geo9TaskQueueEPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke_17;
        v58[3] = &unk_1F2A0E798;
        v34 = a1;
        v61 = a1;
        v62 = v87;
        v63[0] = v66;
        v63[1] = v66;
        v64 = v66;
        v65 = 32;
        geo::small_vector_base<unsigned char>::append<unsigned char const*>(v63, v88, v89);
        v66[4] = v93;
        v67 = v94;
        v70 = v86;
        v35 = v56;
        v59 = v35;
        v68 = v12;
        v69 = v52;
        v60 = v55;
        LODWORD(v47) = v30;
        v36 = v29;
        v37 = v35;
        [v54 loadKey:&v86 additionalInfo:v28 priority:v36 forClient:v35 options:65 reason:1 qos:v47 signpostID:v31 auditToken:v32 callbackQ:v33 beginNetwork:0 callback:v58];

        a1 = v34;

        v38 = v63[0];
        v39 = v64;
      }

      else
      {
        gdc::ResourceFetcher::willStartLoading(a1);
        v40 = *(a1 + 624);
        md::GEOResourceFetcher::willLoadGEOKey(a1, &v86, v40, &v87);
        v41 = v84;
        if (!v85)
        {
          v41 = 0;
        }

        v57 = v41;
        v42 = HIDWORD(v87);
        v43 = qos_class_self();
        v44 = v94;
        v45 = *(a1 + 672);
        v46 = *(a3 + 16);
        md::LabelExternalPointFeature::incident(v46);
        objc_claimAutoreleasedReturnValue();
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3321888768;
        v71[2] = ___ZN2md23TiledGEOResourceFetcher14fetchResourcesERKNSt3__113unordered_mapIN3gdc11ResourceKeyEyNS3_15ResourceKeyHashENS1_8equal_toIS4_EENS1_9allocatorINS1_4pairIKS4_yEEEEEEPN3geo9TaskQueueEPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke;
        v71[3] = &unk_1F2A0E760;
        v74 = a1;
        v75 = v87;
        v76[0] = v79;
        v76[1] = v79;
        v77 = v79;
        v78 = 32;
        geo::small_vector_base<unsigned char>::append<unsigned char const*>(v76, v88, v89);
        v79[4] = v93;
        v80 = v94;
        v37 = v40;
        v72 = v37;
        v81 = v12;
        v82 = v52;
        v73 = v55;
        LODWORD(v47) = v43;
        [v54 loadKey:&v86 additionalInfo:v57 priority:v42 forClient:v37 options:v49 | v50 reason:1 qos:v47 signpostID:v44 auditToken:v45 callbackQ:v46 beginNetwork:0 callback:v71];

        v38 = v76[0];
        v39 = v77;
      }

      if (v38 != v39)
      {
        free(v38);
      }

      if (v88 != v90)
      {
        free(v88);
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_47:
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::BlendRasterConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BlendRasterConstantDataHandle>();
    unk_1EB83BDF0 = 0xDF0018B9242ADFDBLL;
    qword_1EB83BDF8 = "md::ls::BlendRasterConstantDataHandle]";
    qword_1EB83BE00 = 37;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[290];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_8Blending14SRGBBlendStyleEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A135E8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

unint64_t md::GEOVectorTileResourceFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a3 + 8);
  gdc::ResourceKey::getInt32(v5, 0);
  gdc::ResourceKey::getInt32(v5, 1u);
  gdc::ResourceKey::getInt32(v5, 2u);
  [v4 size];
  [v4 scale];
  v6 = objc_msgSend_style(v4);
  v7 = GEOTileKeyMake();
  if (v6 <= 0x19 && ((1 << v6) & 0x200101C) != 0)
  {
    v8 = 128;
  }

  else
  {
    v8 = (v6 == 26) << 7;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFF7FLL;

  return v8 | v9;
}

uint64_t gss::ClientStyleState<gss::PropertyID>::hasTargetStyleAttributes(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 16));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216);
  geo::read_write_lock::unlock((a1 + 16));
  return v4 ^ 1u;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Blending14SRGBBlendStyleEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A135E8;
  a2[1] = v2;
  return result;
}

void gss::CartoStyle<gss::PropertyID>::populateStyles(unint64_t a1, uint64_t a2)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v4 >> 47) ^ v4);
  v6 = a2 + (((9 * ((v5 >> 47) ^ v5)) & 0x1F) << 6);
  std::mutex::lock((v6 + 480));
  v8 = atomic_load((a1 + 123));
  if ((v8 & 1) == 0)
  {
    if (*(a1 + 72))
    {
LABEL_88:
      atomic_store(1u, (a1 + 123));
      goto LABEL_89;
    }

    v65 = v6;
    v9 = gss::zone_mallocator::instance(v7);
    v10 = pthread_rwlock_rdlock((v9 + 32));
    if (v10)
    {
      geo::read_write_lock::logFailure(v10, "read lock", v11);
    }

    v12 = malloc_type_zone_malloc(*v9, 0x48uLL, 0x108104076DFA842uLL);
    atomic_fetch_add((v9 + 24), 1u);
    geo::read_write_lock::unlock((v9 + 32));
    v12[1] = 0;
    v12[2] = 0;
    *v12 = &unk_1F2A5B6E8;
    v13 = 0uLL;
    *(v12 + 3) = 0u;
    *(v12 + 2) = 0u;
    v12[8] = 0;
    *&v14 = v12 + 4;
    *(&v14 + 1) = v12;
    v15 = *(a1 + 80);
    *(a1 + 72) = v14;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      v13 = 0uLL;
    }

    v82 = v13;
    v83 = v13;
    v84 = 1065353216;
    v81 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 256;
    v69 = 0;
    v70 = 0;
    v71 = 256;
    v72 = 0;
    v73 = 0;
    v74 = 256;
    v75 = 0;
    v76 = 0;
    v77 = 256;
    v78 = 0;
    v79 = 0;
    v80 = 256;
    gss::CartoStyle<gss::PropertyID>::applyStyle(a1, &v66, a2, -1.0);
    gss::StylePropertySet<gss::PropertyID>::shrink_to_fit(&v66);
    std::__hash_table<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::__unordered_map_hasher<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::hash<gss::StylePropertySet<gss::PropertyID>>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,true>,std::__unordered_map_equal<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,std::hash<gss::StylePropertySet<gss::PropertyID>>,true>,std::allocator<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>>>::__emplace_unique_key_args<gss::StylePropertySet<gss::PropertyID>,gss::StylePropertySet<gss::PropertyID>,unsigned char &>(&v82, &v66, &v66, &v81);
    v81 = 1;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v78);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v75);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v72);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v69);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v66);
    v16 = 0;
    v17 = 256;
    v18 = 1;
    do
    {
      v66 = 0;
      v67 = 0;
      v68 = 256;
      v69 = 0;
      v70 = 0;
      v71 = 256;
      v72 = 0;
      v73 = 0;
      v74 = 256;
      v75 = 0;
      v76 = 0;
      v77 = 256;
      v78 = 0;
      v79 = 0;
      v80 = 256;
      gss::CartoStyle<gss::PropertyID>::applyStyle(a1, &v66, a2, v16);
      gss::StylePropertySet<gss::PropertyID>::shrink_to_fit(&v66);
      v19 = std::__hash_table<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::__unordered_map_hasher<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::hash<gss::StylePropertySet<gss::PropertyID>>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,true>,std::__unordered_map_equal<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,std::hash<gss::StylePropertySet<gss::PropertyID>>,true>,std::allocator<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>>>::__emplace_unique_key_args<gss::StylePropertySet<gss::PropertyID>,gss::StylePropertySet<gss::PropertyID>,unsigned char &>(&v82, &v66, &v66, &v81);
      if (v20)
      {
        v81 = ++v18;
      }

      *(*(a1 + 72) + v16 + 16) = *(v19 + 136);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v78);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v75);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v72);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v69);
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v66);
      ++v16;
    }

    while (v16 != 24);
    v22 = *(a1 + 72);
    if ((*(v22 + 12) & 1) == 0)
    {
      v17 = v18;
      v23 = *(v22 + 4);
      if (v23 <= v18)
      {
        if (v23 >= v18)
        {
          goto LABEL_25;
        }

        v24 = v18;
        if (*(v22 + 5) >= v18)
        {
          v28 = *v22;
        }

        else
        {
          v25 = gss::zone_mallocator::instance(v21);
          v26 = pthread_rwlock_rdlock((v25 + 32));
          if (v26)
          {
            geo::read_write_lock::logFailure(v26, "read lock", v27);
          }

          v28 = malloc_type_zone_malloc(*v25, 120 * v18, 0x1010040836E77A0uLL);
          atomic_fetch_add((v25 + 24), 1u);
          geo::read_write_lock::unlock((v25 + 32));
          v29 = *v22;
          v23 = *(v22 + 4);
          if (*v22)
          {
            if (*(v22 + 4))
            {
              v30 = *(v22 + 4);
              v31 = v28;
              do
              {
                *v31 = 0;
                *(v31 + 1) = 0;
                *(v31 + 8) = 256;
                *v31 = *v29;
                *(v31 + 2) = *(v29 + 2);
                *(v31 + 3) = *(v29 + 3);
                *(v31 + 8) = *(v29 + 8);
                *v29 = 0;
                *(v29 + 1) = 0;
                *(v29 + 8) = 256;
                *(v31 + 3) = 0;
                *(v31 + 4) = 0;
                *(v31 + 20) = 256;
                *(v31 + 3) = *(v29 + 3);
                *(v31 + 8) = *(v29 + 8);
                *(v31 + 9) = *(v29 + 9);
                *(v31 + 20) = *(v29 + 20);
                *(v29 + 3) = 0;
                *(v29 + 4) = 0;
                *(v29 + 20) = 256;
                *(v31 + 6) = 0;
                *(v31 + 7) = 0;
                *(v31 + 32) = 256;
                *(v31 + 6) = *(v29 + 6);
                *(v31 + 14) = *(v29 + 14);
                *(v31 + 15) = *(v29 + 15);
                *(v31 + 32) = *(v29 + 32);
                *(v29 + 6) = 0;
                *(v29 + 7) = 0;
                *(v29 + 32) = 256;
                *(v31 + 9) = 0;
                *(v31 + 10) = 0;
                *(v31 + 44) = 256;
                *(v31 + 9) = *(v29 + 9);
                *(v31 + 20) = *(v29 + 20);
                *(v31 + 21) = *(v29 + 21);
                *(v31 + 44) = *(v29 + 44);
                *(v29 + 9) = 0;
                *(v29 + 10) = 0;
                *(v29 + 44) = 256;
                *(v31 + 12) = 0;
                *(v31 + 13) = 0;
                *(v31 + 56) = 256;
                *(v31 + 12) = *(v29 + 12);
                *(v31 + 26) = *(v29 + 26);
                *(v31 + 27) = *(v29 + 27);
                *(v31 + 56) = *(v29 + 56);
                *(v29 + 12) = 0;
                *(v29 + 13) = 0;
                *(v29 + 56) = 256;
                v31 += 120;
                v29 += 120;
                --v30;
              }

              while (v30);
            }

            geo::intern_vector<gss::StylePropertySet<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::deallocateStorage(v22);
            *(v22 + 4) = v23;
          }

          *(v22 + 5) = v24;
          *v22 = v28;
        }

        if (v23 != v17)
        {
          v64 = &v28[120 * v23];
          do
          {
            *(v64 + 2) = 0uLL;
            *(v64 + 3) = 0uLL;
            *(v64 + 4) = 0uLL;
            *(v64 + 5) = 0uLL;
            *(v64 + 6) = 0uLL;
            *(v64 + 13) = 0;
            *(v64 + 14) = 0;
            *v64 = 0uLL;
            *(v64 + 1) = 0uLL;
            v64[17] = 1;
            *(v64 + 3) = 0;
            *(v64 + 4) = 0;
            *(v64 + 20) = 256;
            *(v64 + 6) = 0;
            *(v64 + 7) = 0;
            *(v64 + 32) = 256;
            *(v64 + 9) = 0;
            *(v64 + 10) = 0;
            *(v64 + 44) = 256;
            *(v64 + 12) = 0;
            v64[112] = 0;
            v64[113] = 1;
            v64 += 120;
          }

          while (v64 != &v28[120 * v17]);
        }
      }

      else
      {
        geo::intern_vector<gss::StylePropertySet<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::runDestructors(&(*v22)[120 * v18], &(*v22)[120 * *(v22 + 4)]);
        v24 = v18;
      }

      *(v22 + 4) = v24;
    }

LABEL_25:
    for (i = v83; i; i = *i)
    {
      v33 = **(a1 + 72) + 120 * *(i + 136);
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator=(v33, (i + 2));
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator=((v33 + 24), (i + 5));
      if ((v33 + 48) != i + 8)
      {
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v33 + 48));
        *(v33 + 48) = 0;
        *(v33 + 56) = 0;
        *(v33 + 64) = 0;
        *(v33 + 65) = 1;
        v34 = *(i + 80);
        if (v34 == 1)
        {
          *(v33 + 48) = i[8];
          *(v33 + 56) = *(i + 18);
          *(v33 + 60) = *(i + 38);
        }

        else
        {
          v35 = *(i + 38);
          if (*(i + 38))
          {
            geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(v33 + 48, *(i + 38), 0);
            v35 = *(i + 38);
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (v37 != v35 && geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(v33 + 48))
          {
            if ((v38 & 1) == 0 && v37 < *(i + 38))
            {
              v39 = i[8];
              v36 = (v39 + 2 * v37);
              v17 = v39 + *(i + 18) + 4 * v37;
              v38 = 1;
            }

            v40 = *(v33 + 60);
            v41 = *(v33 + 48);
            *(v41 + 2 * v40) = *v36;
            *(v41 + *(v33 + 56) + 4 * v40) = *v17;
            *(v33 + 60) = v40 + 1;
            if (v37 + 1 < *(i + 38))
            {
              ++v37;
            }

            else
            {
              v37 = *(i + 38);
            }

            if (v38)
            {
              v38 = 0;
            }
          }

          LOBYTE(v34) = *(i + 80);
        }

        *(v33 + 64) = v34;
        *(v33 + 65) = *(i + 81);
      }

      if ((v33 + 72) != i + 11)
      {
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v33 + 72));
        *(v33 + 72) = 0;
        *(v33 + 80) = 0;
        *(v33 + 88) = 0;
        *(v33 + 89) = 1;
        v42 = *(i + 104);
        if (v42 == 1)
        {
          *(v33 + 72) = i[11];
          *(v33 + 80) = *(i + 24);
          *(v33 + 84) = *(i + 50);
        }

        else
        {
          v43 = *(i + 50);
          if (*(i + 50))
          {
            geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate((v33 + 72), *(i + 50), 0);
            v43 = *(i + 50);
          }

          v44 = 0;
          v45 = 0;
          v46 = 0;
          while (v45 != v43 && geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable((v33 + 72)))
          {
            if ((v46 & 1) == 0 && v45 < *(i + 50))
            {
              v47 = i[11];
              v44 = (v47 + 2 * v45);
              v17 = v47 + *(i + 24) + 8 * v45;
              v46 = 1;
            }

            v48 = *(v33 + 84);
            v49 = *(v33 + 72);
            *(v49 + 2 * v48) = *v44;
            *(v49 + *(v33 + 80) + 8 * v48) = *v17;
            *(v33 + 84) = v48 + 1;
            if (v45 + 1 < *(i + 50))
            {
              ++v45;
            }

            else
            {
              v45 = *(i + 50);
            }

            if (v46)
            {
              v46 = 0;
            }
          }

          LOBYTE(v42) = *(i + 104);
        }

        *(v33 + 88) = v42;
        *(v33 + 89) = *(i + 105);
      }

      if ((v33 + 96) != i + 14)
      {
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v33 + 96));
        *(v33 + 96) = 0;
        *(v33 + 104) = 0;
        *(v33 + 112) = 0;
        *(v33 + 113) = 1;
        v50 = *(i + 128);
        if (v50 == 1)
        {
          *(v33 + 96) = i[14];
          *(v33 + 104) = *(i + 30);
          *(v33 + 108) = *(i + 62);
        }

        else
        {
          v51 = *(i + 62);
          if (*(i + 62))
          {
            geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate((v33 + 96), *(i + 62), 0);
            v51 = *(i + 62);
          }

          v52 = 0;
          v53 = 0;
          v54 = 0;
          while (v53 != v51 && geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable((v33 + 96)))
          {
            if ((v54 & 1) == 0 && v53 < *(i + 62))
            {
              v55 = i[14];
              v52 = (v55 + 2 * v53);
              v17 = v55 + *(i + 30) + 16 * v53;
              v54 = 1;
            }

            v56 = *(v33 + 108);
            v57 = *(v33 + 96);
            *(v57 + 2 * v56) = *v52;
            *(v57 + *(v33 + 104) + 16 * v56) = *v17;
            ++*(v33 + 108);
            if (v53 + 1 < *(i + 62))
            {
              ++v53;
            }

            else
            {
              v53 = *(i + 62);
            }

            if (v54)
            {
              v54 = 0;
            }
          }

          LOBYTE(v50) = *(i + 128);
        }

        *(v33 + 112) = v50;
        *(v33 + 113) = *(i + 129);
      }
    }

    std::mutex::lock((a2 + 168));
    v58 = *(a1 + 72);
    v6 = v65;
    if (*(v58 + 8))
    {
      v59 = *v58;
      v60 = 120 * *(v58 + 8);
      do
      {
        gss::StylePropertySet<gss::PropertyID>::intern(v59, a2 + 232);
        v59 += 120;
        v60 -= 120;
      }

      while (v60);
    }

    std::mutex::unlock((a2 + 168));
    std::__hash_table<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::__unordered_map_hasher<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::hash<gss::StylePropertySet<gss::PropertyID>>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,true>,std::__unordered_map_equal<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,std::hash<gss::StylePropertySet<gss::PropertyID>>,true>,std::allocator<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>>>::~__hash_table(&v82);
    goto LABEL_88;
  }

LABEL_89:
  std::mutex::unlock((v6 + 480));
  if (*(a1 + 64))
  {
    v61 = *(a1 + 56);
    v62 = 16 * *(a1 + 64);
    do
    {
      v63 = *v61;
      v61 += 2;
      gss::CartoStyle<gss::PropertyID>::populateStyles(v63, a2);
      v62 -= 16;
    }

    while (v62);
  }

  atomic_store(1u, (a1 + 122));
}

void sub_1B29C392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  geo::read_write_lock::unlock((v10 + 32));
  std::__hash_table<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::__unordered_map_hasher<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::hash<gss::StylePropertySet<gss::PropertyID>>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,true>,std::__unordered_map_equal<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,std::hash<gss::StylePropertySet<gss::PropertyID>>,true>,std::allocator<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>>>::~__hash_table(v11 - 128);
  std::mutex::unlock((a10 + 480));
  _Unwind_Resume(a1);
}

uint64_t gdc::ResourceFetcher::willStartLoading(gdc::ResourceFetcher *this)
{
  result = atomic_load(this + 14);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignRasterOverlayData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignRasterOverlayData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignRasterOverlayData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

std::__shared_weak_count *gss::StylesheetQuery<gss::PropertyID>::sourceCartoStyle@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(a1 + 304);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(a1 + 296);
    }
  }

  return result;
}

void gdc::LoadingStatusTracker::willStartLoadingResources(gdc::LoadingStatusTracker *this)
{
  std::mutex::lock((this + 8));
  v2 = *(this + 18);
  *(this + 18) = v2 + 1;
  if (!v2)
  {
    if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
    }

    v3 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
    if (os_signpost_enabled(v3))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LoadingResources", &unk_1B3514CAA, v5, 2u);
    }

    v4 = *(this + 15);
    if (v4)
    {
      (*(*v4 + 48))(v4);
    }
  }

  std::mutex::unlock((this + 8));
}

uint64_t *std::unique_ptr<gss::RenderStyle<gss::PropertyID>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v4 = v2 + v3;
      if ((*(v2 + v3 + 76) & 1) == 0)
      {
        v5 = *(v4 + 64);
        if (v5)
        {
          operator delete(v5);
        }
      }

      *(v4 + 69) = 0;
      *(v4 + 64) = 0;
      v3 -= 16;
      if (v3 == -32)
      {
        v6 = 40;
        while (1)
        {
          v7 = *(v2 + v6);
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v7);
          }

          v6 -= 16;
          if (v6 == 8)
          {

            JUMPOUT(0x1B8C62190);
          }
        }
      }
    }
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>();
    *algn_1EB83C158 = 0xDC269C102C25EFECLL;
    qword_1EB83C160 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>]";
    qword_1EB83C168 = 89;
  }
}

std::__shared_weak_count *gss::StylesheetQuery<gss::PropertyID>::targetCartoStyle@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = *(a1 + 320);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    a2[1] = result;
    if (result)
    {
      *a2 = *(a1 + 312);
    }
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RasterOverlayConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RasterOverlayConstantDataHandle>();
    *algn_1EB83BBB8 = 0xDC66BF6D06F6D0BALL;
    qword_1EB83BBC0 = "md::ls::RasterOverlayConstantDataHandle]";
    qword_1EB83BBC8 = 39;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[315];
}

_BYTE *gss::StylePropertySet<gss::PropertyID>::unionWith(_BYTE *result, uint64_t a2)
{
  v4 = result;
  if ((result[16] & 1) == 0)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = *(a2 + 12);
    v49 = v48;
    while (v46 != v48)
    {
      if (v47 & 1 | (v46 >= v49))
      {
        v50 = v47;
      }

      else
      {
        v45 = (*a2 + 2 * v46);
        v2 = (*a2 + *(a2 + 8) + v46);
        v50 = 1;
      }

      result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v4, *v45);
      if (result == *(v4 + 6))
      {
        result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(v4);
        if (!result)
        {
          break;
        }

        v51 = (*a2 + *(a2 + 8) + v46);
        v52 = (v50 & 1 | (v46 >= *(a2 + 12))) == 0;
        if (!(v50 & 1 | (v46 >= *(a2 + 12))))
        {
          v45 = (*a2 + 2 * v46);
        }

        v53 = *(v4 + 6);
        v54 = *v4;
        (*v4)[v53] = *v45;
        if (v52)
        {
          v2 = v51;
        }

        *(v54 + *(v4 + 2) + v53) = *v2;
        if (v52)
        {
          v50 = 1;
        }

        ++*(v4 + 6);
        *(v4 + 17) = 0;
        v49 = *(a2 + 12);
      }

      if (v46 + 1 < v49)
      {
        ++v46;
      }

      else
      {
        v46 = v49;
      }

      if (v50)
      {
        v47 = 0;
      }

      else
      {
        v47 = v50;
      }
    }
  }

  v5 = *(a2 + 36);
  if (*(a2 + 36))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(a2 + 36);
    do
    {
      v10 = *(a2 + 24);
      v11 = (v10 + 2 * v8);
      v12 = (v10 + *(a2 + 32) + v8);
      if ((v8 >= v9) | v6 & 1)
      {
        v13 = v6;
      }

      else
      {
        v7 = v11;
        v2 = v12;
        v13 = 1;
      }

      v14 = *v2;
      result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((v4 + 3), *v7);
      *result = v14;
      v9 = *(a2 + 36);
      if (v8 + 1 < v9)
      {
        ++v8;
      }

      else
      {
        v8 = *(a2 + 36);
      }

      if (v13)
      {
        v6 = 0;
      }

      else
      {
        v6 = v13;
      }
    }

    while (v8 != v5);
  }

  v15 = *(a2 + 60);
  if (*(a2 + 60))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = *(a2 + 60);
    do
    {
      v20 = *(a2 + 48);
      v21 = (v20 + 2 * v18);
      v22 = v20 + *(a2 + 56) + 4 * v18;
      if ((v18 >= v19) | v16 & 1)
      {
        v23 = v16;
      }

      else
      {
        v17 = v21;
        v2 = v22;
        v23 = 1;
      }

      v24 = *v2;
      result = geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((v4 + 6), *v17);
      *result = v24;
      v19 = *(a2 + 60);
      if (v18 + 1 < v19)
      {
        ++v18;
      }

      else
      {
        v18 = *(a2 + 60);
      }

      if (v23)
      {
        v16 = 0;
      }

      else
      {
        v16 = v23;
      }
    }

    while (v18 != v15);
  }

  v25 = *(a2 + 84);
  if (*(a2 + 84))
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = *(a2 + 84);
    do
    {
      v30 = *(a2 + 72);
      v31 = (v30 + 2 * v28);
      v32 = v30 + *(a2 + 80) + 8 * v28;
      if ((v28 >= v29) | v26 & 1)
      {
        v33 = v26;
      }

      else
      {
        v27 = v31;
        v2 = v32;
        v33 = 1;
      }

      v34 = *v2;
      result = geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((v4 + 9), *v27);
      *result = v34;
      v29 = *(a2 + 84);
      if (v28 + 1 < v29)
      {
        ++v28;
      }

      else
      {
        v28 = *(a2 + 84);
      }

      if (v33)
      {
        v26 = 0;
      }

      else
      {
        v26 = v33;
      }
    }

    while (v28 != v25);
  }

  v35 = *(a2 + 108);
  if (*(a2 + 108))
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = *(a2 + 108);
    do
    {
      v40 = (v36 >= v39) | v38;
      v41 = *(a2 + 96);
      v42 = (v41 + 2 * v36);
      v43 = v41 + *(a2 + 104) + 16 * v36;
      if (v40)
      {
        v44 = v38;
      }

      else
      {
        v44 = 1;
      }

      if ((v40 & 1) == 0)
      {
        v2 = v43;
        v37 = v42;
      }

      result = geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[]((v4 + 12), *v37);
      *result = *v2;
      v39 = *(a2 + 108);
      if (v36 + 1 < v39)
      {
        ++v36;
      }

      else
      {
        v36 = *(a2 + 108);
      }

      if (v44)
      {
        v38 = 0;
      }

      else
      {
        v38 = v44;
      }
    }

    while (v36 != v35);
  }

  return result;
}

void md::GEOResourceFetcher::willLoadGEOKey(md::GEOResourceFetcher *this, const _GEOTileKey *a2, void *a3, const gdc::ResourceKey *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(this + 488) != 1)
  {
    return;
  }

  std::mutex::lock((this + 496));
  *buf = *a2;
  *&buf[16] = a3;
  v8 = std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>::operator()[abi:nn200100](buf);
  v9 = v8;
  v10 = *(this + 568);
  if (!*&v10)
  {
    goto LABEL_22;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*(this + 70) + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v16 = *(v15 + 1);
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
      goto LABEL_22;
    }

LABEL_21:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  v17 = GEOTileKeyEquals();
  if (*(v15 + 4) == *&buf[16])
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_21;
  }

  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v19 = GEOGetVectorKitResourceLoadingLog_log;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = (*(**(this + 56) + 16))(*(this + 56));
    v21 = GEOStringFromTileKey();
    gdc::ResourceKey::keysInt32Str(&v28, a4);
    v22 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
    v23 = v28.__r_.__value_.__r.__words[0];
    gdc::ResourceKey::keysInt32Str(&__p, v15 + 40);
    if (v22 >= 0)
    {
      v24 = &v28;
    }

    else
    {
      v24 = v23;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136316162;
    *&buf[4] = v20;
    *&buf[12] = 2112;
    *&buf[14] = a3;
    *&buf[22] = 2112;
    v30 = v21;
    v31 = 2080;
    v32 = v24;
    v33 = 2080;
    v34 = p_p;
    _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_ERROR, "%s Duplicate key request detected from client:%@ tilekey:%@ requested resource key:%s existing resource key:%s", buf, 0x34u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

  v26 = *(this + 60);
  if (v26)
  {
    (*(*v26 + 48))(v26);
  }

  std::mutex::unlock((this + 496));
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci13RasterOverlayEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13B98;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

__n128 __copy_helper_block_ea8_56c23_ZTSN3gdc11ResourceKeyE(void *a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  a1[8] = a1 + 12;
  v4 = a1 + 8;
  a1[7] = v3;
  a1[9] = a1 + 12;
  a1[10] = a1 + 12;
  a1[11] = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(a1 + 8, *(a2 + 64), *(a2 + 72));
  v4[8] = *(a2 + 128);
  result = *(a2 + 136);
  *(v4 + 9) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci13RasterOverlayEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13B98;
  a2[1] = v2;
  return result;
}

uint64_t md::RegionalResourceSetFetcher::tileKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  Int32 = gdc::ResourceKey::getInt32(v3, 0);
  v5 = gdc::ResourceKey::getInt32(v3, 1u);
  v6 = GEOResourceFilterScaleForScale();
  v7 = *MEMORY[0x1E69A1948];

  return MEMORY[0x1EEE0BCF8](Int32, v7, v6, v5);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::StyleColorConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleColorConstantDataHandle>();
    unk_1EB83BE80 = 0x7E6F38B7040F8E0FLL;
    qword_1EB83BE88 = "md::ls::StyleColorConstantDataHandle]";
    qword_1EB83BE90 = 36;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void md::PendingSceneLogic::_prefetchData(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 376))
  {
    v5 = *(result + 128);
    v6 = v5[22];
    v7 = v5[23];
    if (v6 != v7)
    {
      do
      {
        v9 = *v6;
        v10 = *(result + 392);
        v11 = *(v10 + 160);
        v12 = *(v10 + 168);
        while (v11 != v12)
        {
          if (*v11 == v9)
          {
            v12 = v11;
            break;
          }

          v11 += 56;
        }

        md::World::layerDataTypesForSelectionSetType(v25, *(*(result + 128) + 152), *v6);
        for (i = *(a2 + 16); i; i = *i)
        {
          v14 = *(i + 8);
          v15 = std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(v25[0], v25[1], v14);
          if (v15)
          {
            v16 = v15;
            v23 = v14;
            std::unordered_set<unsigned short>::unordered_set(v24, &v23, 1);
            std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::erase(v25, v16);
            std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::operator()(&v22, i[6], v9, *(i + 8), 2, (v12 + 28), v17, v18, v21);
            md::PendingSceneLogic::addSelectionContextMap(result, v9, *(result + 328), *(result + 336), &v22, 0, (v12 + 28), *(v12 + 13), v24);
            v19 = v22;
            v22 = 0;
            if (v19)
            {
              (*(*v19 + 8))(v19);
            }

            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v24);
          }
        }

        md::PendingSceneLogic::updateSelectionContextMap(v9, *(result + 328), *(result + 336), 0, (v12 + 28), *(v12 + 13), v25);
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v25);
        ++v6;
      }

      while (v6 != v7);
      v5 = *(result + 128);
    }

    v20 = v5[3];
    gdc::LayerDataManager::requestLayerDataKeys(v20, *(result + 328), *(result + 336), 1);
    {
      {
        md::PendingSceneLogic::_prefetchData(md::ResolvedTileSelectionContext const&,md::PendingSceneContext &,long long)::kEmpty = 0;
        *algn_1EB82AEA8 = 0;
        qword_1EB82AEB0 = 0;
      }
    }

    gdc::LayerDataManager::createDataRequests(v20, (result + 328), &md::PendingSceneLogic::_prefetchData(md::ResolvedTileSelectionContext const&,md::PendingSceneContext &,long long)::kEmpty, a3);
  }
}

void sub_1B29C52FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  if (a8)
  {
    (*(*a8 + 8))(a8, a2, a3, a4, a5);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleColorData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleColorData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleColorData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void gdc::LayerDataManager::cleanUpExtendedResources(gdc::LayerDataManager *this, const gdc::SelectionContext *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  for (i = *(a2 + 4); i; i = *i)
  {
    v4 = *(this + 1);
    v5 = *(this + 2);
    if (v4 != v5)
    {
      while (*(i + 8) != *v4)
      {
        v4 += 12;
        if (v4 == v5)
        {
          goto LABEL_30;
        }
      }

      if (v4 != v5)
      {
        v6 = *(v4 + 1);
        v7 = *(v6 + 248);
        v8 = *(v6 + 256);
        if (v7 != v8)
        {
          v9 = *(a2 + 1);
          do
          {
            if (std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>((v9 + 48), v7))
            {
              v7 += 208;
            }

            else
            {
              if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
              {
                dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
              }

              v10 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
              if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
              {
                v11 = (*(**(v6 + 584) + 16))(*(v6 + 584));
                gdc::LayerDataRequestKey::keysInt32Str(&v22, v7);
                if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v12 = &v22;
                }

                else
                {
                  v12 = v22.__r_.__value_.__r.__words[0];
                }

                gdc::ResourceKey::keysInt32Str(&__p, (v7 + 112));
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = v11;
                v24 = 2080;
                v25 = v12;
                v26 = 2080;
                v27 = p_p;
                _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_DEBUG, "%s cleaning up extended key: %s (resource:%s) ", buf, 0x20u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v22.__r_.__value_.__l.__data_);
                }
              }

              v14 = *(v6 + 272);
              *buf = v7 + 112;
              v15 = std::__hash_table<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>>>::__emplace_unique_key_args<gdc::ResourceKey,std::piecewise_construct_t const&,std::tuple<gdc::ResourceKey const&>,std::tuple<>>((v14 + 8), (v7 + 112), buf);
              v15[15] = (v15[15] - 1);
              v16 = *(v6 + 256);
              v8 = v7;
              if ((v7 + 208) != v16)
              {
                do
                {
                  v17 = v8;
                  v18 = *(v8 + 208);
                  v8 += 208;
                  *v17 = v18;
                  *(v17 + 8) = *(v17 + 216);
                  geo::small_vector_base<unsigned char>::copy((v17 + 16), (v17 + 224), (v17 + 48));
                  v19 = *(v17 + 304);
                  *(v17 + 80) = *(v17 + 288);
                  *(v17 + 96) = v19;
                  *(v17 + 112) = *(v17 + 320);
                  geo::small_vector_base<unsigned char>::move(v17 + 120, v17 + 328, (v17 + 152));
                  *(v17 + 184) = *(v17 + 392);
                  *(v17 + 192) = *(v17 + 400);
                }

                while ((v17 + 416) != v16);
                v16 = *(v6 + 256);
              }

              while (v16 != v8)
              {
                v16 -= 26;
                std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey,gdc::ResourceKey>,0>(v16);
              }

              *(v6 + 256) = v8;
            }
          }

          while (v7 != v8);
        }
      }
    }

LABEL_30:
    ;
  }
}

uint64_t gdc::LayerDataManager::getData(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      for (i = *(v4 + 16); i != v4 + 8; i = *(i + 8))
      {
        for (j = *(*(i + 16) + 32); j; j = *j)
        {
          v8 = *(v5 + 8);
          v9 = *(v5 + 16);
          if (v8 != v9)
          {
            while (*(j + 8) != *v8)
            {
              v8 += 12;
              if (v8 == v9)
              {
                goto LABEL_12;
              }
            }

            if (v8 != v9)
            {
              result = (*(**(v8 + 1) + 40))(*(v8 + 1), *(*(i + 16) + 8));
            }
          }

LABEL_12:
          ;
        }
      }

      v4 += 32;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleColorConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleColorConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[286];
}

void gdc::LayerDataSource::addData(const gdc::LayerDataRequestKey **this, unsigned __int16 **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(this + 16);
  v10 = *geo::linear_map<unsigned short,std::vector<gdc::LayerDataHolder>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>,std::vector<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>>::operator[](a2 + 3, v9, a3, a4, a5, a6, a7);
  v16 = *(geo::linear_map<unsigned short,std::vector<gdc::LayerDataHolder>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>,std::vector<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>>::operator[](a2 + 3, v9, v11, v12, v13, v14, v15) + 1);
  while (v10 != v16)
  {
    gdc::LayerDataStore::get(&v20, this[2], v10);
    v17 = v20;
    v18 = *(v10 + 120);
    *(v10 + 112) = v20;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
      if (*(v10 + 112))
      {
        goto LABEL_5;
      }
    }

    else if (v17)
    {
LABEL_5:
      v19 = 3;
      goto LABEL_10;
    }

    if (gdc::LayerDataSource::dataRequestFailed(this, v10))
    {
      v19 = 2;
    }

    else
    {
      v19 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(this + 5, v10) != 0;
    }

LABEL_10:
    *(v10 + 128) = v19;
    v10 += 144;
  }
}

void geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit(_WORD *result)
{
  if ((result[8] & 1) == 0)
  {
    v1 = result[6];
    v2 = result[7];
    if (v1 != v2 || (*(result + 17) & 1) == 0)
    {
      geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(result, v1, v1 == v2 || (*(result + 17) & 1) == 0);
    }
  }
}

void gss::StylePropertySet<gss::PropertyID>::shrink_to_fit(uint64_t a1)
{
  geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit(a1);
  geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit((a1 + 24));
  if ((*(a1 + 64) & 1) == 0)
  {
    v2 = *(a1 + 60);
    v3 = *(a1 + 62);
    if (v2 != v3 || (*(a1 + 65) & 1) == 0)
    {
      geo::intern_linear_map<gss::PropertyID,unsigned int,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1 + 48, v2, v2 == v3 || (*(a1 + 65) & 1) == 0);
    }
  }

  if ((*(a1 + 88) & 1) == 0)
  {
    v4 = *(a1 + 84);
    v5 = *(a1 + 86);
    if (v4 != v5 || (*(a1 + 89) & 1) == 0)
    {
      geo::intern_linear_map<gss::PropertyID,unsigned long long,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate((a1 + 72), v4, v4 == v5 || (*(a1 + 89) & 1) == 0);
    }
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    v6 = *(a1 + 108);
    v7 = *(a1 + 110);
    v8 = *(a1 + 113);
    if (v6 != v7 || (*(a1 + 113) & 1) == 0)
    {

      geo::intern_linear_map<gss::PropertyID,gss::StylePropertySetInternObject,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate((a1 + 96), v6, v6 == v7 || (v8 & 1) == 0);
    }
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28StyleColorConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A357B8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void md::SingleGEOResourceLayerDataSource::addFallbackData(md::SingleGEOResourceLayerDataSource *this, const gdc::SelectionContext *a2)
{
  v4 = *(a2 + 1);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 1065353216;
  v22 = v4;
  gdc::LayerDataCollector::missingData(&v26, v4, *(this + 16));
  v40[0] = v26;
  v40[1] = *v27;
  while (1)
  {
    v39[0] = v28;
    v39[1] = v29;
    if (!gdc::MissingDataIterator::operator!=(v40, v39))
    {
      break;
    }

    v5 = *(&v40[0] + 1);
    v6 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>>>::find<geo::QuadTile>(v41, (*(&v40[0] + 1) + 112));
    if (!v6)
    {
      v8 = gdc::Camera::cameraFrame(v5);
LABEL_8:
      std::__hash_table<std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&,gdc::LayerDataKey const&>(v41, (v5 + 112), v5 + 112, v8);
      goto LABEL_9;
    }

    v7 = v6;
    v8 = gdc::Camera::cameraFrame(v5);
    if (!gdc::LayerDataKey::operator==(v7 + 24, v8))
    {
      goto LABEL_8;
    }

    v9 = *(v5 + 113);
    v10 = *(v5 + 116);
    v11 = *(v5 + 112);
    v12 = *(v5 + 128);
    v13 = *(v5 + 136);
    gdc::Tiled::tileFromLayerDataKey(v39, *(v5 + 16));
    v14 = 1 << SBYTE1(v39[0]);
    v34[0] = v39[0];
    v35 = (SDWORD1(v39[0]) % v14 + v14) % v14;
    v36 = (SDWORD2(v39[0]) % v14 + v14) % v14;
    v37 = 0;
    v38 = 1;
    gdc::FallbackCollector::start((this + 600), v34);
    md::TileAdjustmentHelpers::getFallbackDataForTile(this + 89, *(this + 16), v34, *(this + 2), this + 600);
    if (*(this + 705) == 1)
    {
      v15 = *(a2 + 7);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(this + 704);
    v30[1] = v9;
    v31 = v10;
    v30[0] = v11;
    v32 = v12;
    v33 = v13;
    gdc::FallbackCollector::collectFallbackData(this + 600, &v43, v16, v15, v30);
    gdc::FallbackCollector::end((this + 600), v17);
LABEL_9:
    gdc::MissingDataIterator::operator++(v40);
  }

  v18 = v44;
  if (v43 != v44)
  {
    v19 = v43 + 15;
    do
    {
      v20 = *grl::IconMetricsRenderResult::getFillRect(*v19);
      gdc::LayerDataKey::LayerDataKey(v23, (v19 - 11));
      gdc::LayerDataRequestKey::LayerDataRequestKey(&v26, v20, v23);
      gdc::LayerDataCollector::addFallbackData(v22, &v26, v19 - 60, v19);
      if (v27[0] != v28)
      {
        free(v27[0]);
      }

      if (v24 != v25)
      {
        free(v24);
      }

      v21 = v19 + 2;
      v19 += 17;
    }

    while (v21 != v18);
  }

  std::__hash_table<std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>>>::~__hash_table(v41);
  *&v26 = &v43;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&v26);
}

void sub_1B29C5F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  std::__hash_table<std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>>>::~__hash_table(v21 - 176);
  a21 = v21 - 136;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&a21);
  _Unwind_Resume(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>();
    unk_1EB83C1C0 = 0xF10E3A2DC308C279;
    qword_1EB83C1C8 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>]";
    qword_1EB83C1D0 = 86;
  }
}

uint64_t gdc::LayerDataManager::getFallbackData(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      for (i = *(v4 + 16); i != v4 + 8; i = *(i + 8))
      {
        for (j = *(*(i + 16) + 32); j; j = *j)
        {
          v8 = *(v5 + 8);
          v9 = *(v5 + 16);
          if (v8 != v9)
          {
            while (*(j + 8) != *v8)
            {
              v8 += 12;
              if (v8 == v9)
              {
                goto LABEL_12;
              }
            }

            if (v8 != v9)
            {
              result = (*(**(v8 + 1) + 48))(*(v8 + 1), *(i + 16));
            }
          }

LABEL_12:
          ;
        }
      }

      v4 += 32;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t gdc::LayerDataCollector::missingData(gdc::LayerDataCollector *this, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2[3];
  v6 = a2[4];
  while (1)
  {
    if (v5 == v6)
    {
      goto LABEL_12;
    }

    if (*v5 == a3)
    {
      break;
    }

    v5 += 16;
  }

  if (v5 == v6)
  {
LABEL_12:
    v9 = 0;
    v11 = 0;
    v7 = a2[1];
LABEL_13:
    v8 = v7;
    goto LABEL_14;
  }

  v8 = *a2;
  v7 = a2[1];
  v9 = *(v5 + 1);
  if (*a2 != v7)
  {
    while (1)
    {
      if (*(v8 + 8) == a3)
      {
        v10 = v9 + 144 * *(v8 + 144);
        if (!*(v10 + 112) || *(v10 + 136))
        {
          break;
        }
      }

      v8 += 152;
      if (v8 == v7)
      {
        v11 = *(v5 + 1);
        goto LABEL_13;
      }
    }
  }

  v11 = *(v5 + 1);
LABEL_14:
  result = gdc::MissingDataIterator::MissingDataIterator(this + 32, a3, v7, v7, v11);
  *this = v3;
  *(this + 1) = v8;
  *(this + 2) = v7;
  *(this + 3) = v9;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28StyleColorConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A357B8;
  a2[1] = v2;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::__unordered_map_hasher<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::hash<gss::StylePropertySet<gss::PropertyID>>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,true>,std::__unordered_map_equal<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,std::hash<gss::StylePropertySet<gss::PropertyID>>,true>,std::allocator<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>>>::__emplace_unique_key_args<gss::StylePropertySet<gss::PropertyID>,gss::StylePropertySet<gss::PropertyID>,unsigned char &>(float *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a2 + 12);
  if (*(a2 + 12))
  {
    v8 = 0;
    LODWORD(v4) = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      if (!((v10 >= v7) | v4 & 1))
      {
        v9 = (*a2 + 2 * v10);
        LODWORD(v4) = 1;
      }

      v8 ^= (v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + *v9;
      v5 = v10 + 1;
      if (v4)
      {
        v4 = 0;
      }

      else
      {
        v4 = v4;
      }

      if (v5 < v7)
      {
        ++v10;
      }

      else
      {
        v10 = *(a2 + 12);
      }
    }

    while (v5 < v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = *(a2 + 36);
  if (*(a2 + 36))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = *(a2 + 24);
    v4 = v15 + *(a2 + 32);
    do
    {
      if (!((v14 >= v11) | v12 & 1))
      {
        v13 = (v15 + 2 * v14);
        v5 = v4 + v14;
        v12 = 1;
      }

      v16 = ((v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + *v13) ^ v8;
      v8 = (*v5 - 0x61C8864680B583EBLL + (v16 << 6) + (v16 >> 2)) ^ v16;
      v17 = v14 + 1;
      if (v12)
      {
        v12 = 0;
      }

      if (v17 < v11)
      {
        ++v14;
      }

      else
      {
        v14 = *(a2 + 36);
      }
    }

    while (v17 < v11);
  }

  v18 = *(a2 + 60);
  if (*(a2 + 60))
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = *(a2 + 48);
    do
    {
      if (!((v21 >= v18) | v19 & 1))
      {
        v20 = (v22 + 2 * v21);
        v4 = v22 + *(a2 + 56) + 4 * v21;
        v19 = 1;
      }

      v23 = ((v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + *v20) ^ v8;
      v8 = (*v4 - 0x61C8864680B583EBLL + (v23 << 6) + (v23 >> 2)) ^ v23;
      v24 = v21 + 1;
      if (v19)
      {
        v19 = 0;
      }

      if (v24 < v18)
      {
        ++v21;
      }

      else
      {
        v21 = *(a2 + 60);
      }
    }

    while (v24 < v18);
  }

  v25 = *(a2 + 84);
  if (*(a2 + 84))
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = *(a2 + 72);
    do
    {
      if (!((v28 >= v25) | v26 & 1))
      {
        v27 = (v29 + 2 * v28);
        v4 = v29 + *(a2 + 80) + 8 * v28;
        v26 = 1;
      }

      v30 = ((v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + *v27) ^ v8;
      v8 = (*v4 - 0x61C8864680B583EBLL + (v30 << 6) + (v30 >> 2)) ^ v30;
      v31 = v28 + 1;
      if (v26)
      {
        v26 = 0;
      }

      if (v31 < v25)
      {
        ++v28;
      }

      else
      {
        v28 = *(a2 + 84);
      }
    }

    while (v31 < v25);
  }

  v114 = *(a2 + 60);
  v32 = *(a2 + 108);
  if (*(a2 + 108))
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = *(a2 + 96);
    v37 = v36 + *(a2 + 104);
    while (1)
    {
      if ((v33 >= v32) | v35 & 1)
      {
        v38 = v35;
      }

      else
      {
        v38 = 1;
      }

      if (!((v33 >= v32) | v35 & 1))
      {
        v6 = (v37 + 16 * v33);
        v34 = (v36 + 2 * v33);
      }

      v8 ^= (v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + *v34;
      v39 = *v6;
      if (v39 == 2)
      {
        break;
      }

      if (v39 == 1)
      {
        v40 = *(v6 + 1);
        v41 = *(v40 + 23);
        if (v41 >= 0)
        {
          v42 = *(v6 + 1);
        }

        else
        {
          v42 = *v40;
        }

        if (v41 >= 0)
        {
          v43 = *(v40 + 23);
        }

        else
        {
          v43 = *(v40 + 8);
        }

        v44 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v42, v43);
        goto LABEL_61;
      }

LABEL_62:
      v45 = v33 + 1;
      if (v38)
      {
        v35 = 0;
      }

      else
      {
        v35 = v38;
      }

      if (v45 < v32)
      {
        ++v33;
      }

      else
      {
        v33 = v32;
      }

      if (v45 >= v32)
      {
        goto LABEL_69;
      }
    }

    v44 = std::hash<gss::DashPattern>::operator()(*(v6 + 1));
LABEL_61:
    v8 ^= (v8 << 6) - 0x61C8864680B583EBLL + (v8 >> 2) + v44;
    goto LABEL_62;
  }

LABEL_69:
  v46 = *(a1 + 2);
  if (!*&v46)
  {
    goto LABEL_173;
  }

  v47 = vcnt_s8(v46);
  v47.i16[0] = vaddlv_u8(v47);
  v48 = v47.u32[0];
  if (v47.u32[0] > 1uLL)
  {
    v49 = v8;
    v50 = a2;
    if (v8 >= *&v46)
    {
      v49 = v8 % *&v46;
    }
  }

  else
  {
    v49 = (*&v46 - 1) & v8;
    v50 = a2;
  }

  v51 = *(*a1 + 8 * v49);
  if (!v51 || (v52 = *v51) == 0)
  {
LABEL_173:
    operator new();
  }

  v116 = *(v50 + 48) + *(v50 + 56);
  v117 = *(v50 + 48);
  v111 = *(v50 + 72) + *(v50 + 80);
  v112 = *(v50 + 72);
  v109 = *(v50 + 96) + *(v50 + 104);
  v110 = *(v50 + 96);
  while (1)
  {
    v53 = v52[1];
    if (v53 != v8)
    {
      if (v48 > 1)
      {
        if (v53 >= *&v46)
        {
          v53 %= *&v46;
        }
      }

      else
      {
        v53 &= *&v46 - 1;
      }

      if (v53 != v49)
      {
        goto LABEL_173;
      }

      goto LABEL_172;
    }

    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(v52 + 2, v50))
    {
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(v52 + 5, v50 + 24))
      {
        v56 = *(v52 + 38);
        if (v56 == v114)
        {
          if (v114)
          {
            v57 = 0;
            v58 = v52[8];
            while (*(v58 + 2 * v57) == *(v117 + 2 * v57) && *(v58 + *(v52 + 18) + 4 * v57) == *(v116 + 4 * v57))
            {
              if (v56 == ++v57)
              {
                goto LABEL_87;
              }
            }

            goto LABEL_172;
          }

LABEL_87:
          v59 = *(v52 + 50);
          if (v59 == v25)
          {
            if (v25)
            {
              v60 = 0;
              v61 = v52[11];
              while (*(v61 + 2 * v60) == *(v112 + 2 * v60) && *(v61 + *(v52 + 24) + 8 * v60) == *(v111 + 8 * v60))
              {
                if (v59 == ++v60)
                {
                  goto LABEL_93;
                }
              }

              goto LABEL_172;
            }

LABEL_93:
            if (*(v52 + 62) == v32)
            {
              break;
            }
          }
        }
      }
    }

LABEL_172:
    v52 = *v52;
    if (!v52)
    {
      goto LABEL_173;
    }
  }

  if (v32)
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    while (1)
    {
      if (v64 < v32 && (v62 & 1) == 0)
      {
        v68 = v52[14];
        v63 = (v68 + 2 * v64);
        v54 = (v68 + *(v52 + 30) + 16 * v64);
        v62 = 1;
      }

      v69 = v65 | (v67 >= v32);
      v70 = v65 & 1 | (v67 >= v32) ? v66 : (v110 + 2 * v67);
      v71 = v65 & 1 | (v67 >= v32) ? v65 : 1;
      if (*v63 != *v70)
      {
        goto LABEL_172;
      }

      if (v64 < v32 && (v62 & 1) == 0)
      {
        v72 = v52[14];
        v63 = (v72 + 2 * v64);
        v54 = (v72 + *(v52 + 30) + 16 * v64);
        v62 = 1;
      }

      v73 = *v54;
      if (v71 & 1 | (v67 >= v32))
      {
        v66 = v70;
      }

      else
      {
        v66 = (v110 + 2 * v67);
      }

      if (v71 & 1 | (v67 >= v32))
      {
        v74 = v71;
      }

      else
      {
        v74 = 1;
      }

      if (((v71 & 1 | (v67 >= v32)) & v69) == 0)
      {
        v55 = (v109 + 16 * v67);
      }

      if (v73 != *v55)
      {
        goto LABEL_172;
      }

      if (v64 < v32 && (v62 & 1) == 0)
      {
        v75 = v52[14];
        v63 = (v75 + 2 * v64);
        v54 = (v75 + *(v52 + 30) + 16 * v64);
        v73 = *v54;
        v62 = 1;
      }

      if (v73 == 2)
      {
        v98 = v66;
        v93 = (v110 + 2 * v67);
        if (v64 < v32 && (v62 & 1) == 0)
        {
          v88 = v52[14];
          v63 = (v88 + 2 * v64);
          v54 = (v88 + *(v52 + 30) + 16 * v64);
          v62 = 1;
        }

        v100 = v62;
        v102 = v54;
        v104 = v63;
        v89 = v74 | (v67 >= v32);
        if (!(v74 & 1 | (v67 >= v32)))
        {
          v55 = (v109 + 16 * v67);
        }

        v106 = v55;
        v108 = v64;
        v94 = v67;
        v96 = v74;
        v90 = gss::DashPattern::operator==(v54[1], *(v55 + 1));
        v67 = v94;
        v74 = v96;
        v62 = v100;
        v54 = v102;
        v63 = v104;
        v55 = v106;
        v64 = v108;
        v66 = v98;
        if (!v90)
        {
          goto LABEL_172;
        }

        if ((v89 & 1) == 0)
        {
          v74 = 1;
          v66 = v93;
        }
      }

      else if (v73 == 1)
      {
        if (v64 < v32 && (v62 & 1) == 0)
        {
          v76 = v52[14];
          v63 = (v76 + 2 * v64);
          v54 = (v76 + *(v52 + 30) + 16 * v64);
          v62 = 1;
        }

        v77 = v54[1];
        v78 = v74 | (v67 >= v32);
        if (!(v74 & 1 | (v67 >= v32)))
        {
          v55 = (v109 + 16 * v67);
        }

        v79 = *(v55 + 1);
        v80 = *(v77 + 23);
        if (v80 >= 0)
        {
          v81 = *(v77 + 23);
        }

        else
        {
          v81 = *(v77 + 1);
        }

        v82 = *(v79 + 23);
        v83 = v82;
        if ((v82 & 0x80u) != 0)
        {
          v82 = *(v79 + 8);
        }

        if (v81 != v82)
        {
          goto LABEL_172;
        }

        if (!(v74 & 1 | (v67 >= v32)))
        {
          v74 = 1;
        }

        v95 = v74;
        if ((v78 & 1) == 0)
        {
          v66 = (v110 + 2 * v67);
        }

        v97 = v66;
        v84 = v80 >= 0 ? v54[1] : *v77;
        v103 = v63;
        v105 = v55;
        v85 = v83 >= 0 ? *(v55 + 1) : *v79;
        v107 = v64;
        v86 = v67;
        v101 = v54;
        v99 = v62;
        v87 = memcmp(v84, v85, v81);
        v74 = v95;
        v66 = v97;
        v62 = v99;
        v54 = v101;
        v63 = v103;
        v55 = v105;
        v64 = v107;
        if (v87)
        {
          goto LABEL_172;
        }

        v67 = v86;
      }

      v91 = v64 + 1;
      if (v62)
      {
        v62 = 0;
      }

      if (v67 + 1 < v32)
      {
        ++v67;
      }

      else
      {
        v67 = v32;
      }

      if (v74)
      {
        v65 = 0;
      }

      else
      {
        v65 = v74;
      }

      if (v91 < v32)
      {
        ++v64;
      }

      else
      {
        v64 = v32;
      }

      if (v91 >= v32)
      {
        return v52;
      }
    }
  }

  return v52;
}

void sub_1B29C6DFC(_Unwind_Exception *a1)
{
  v7 = v1;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v6);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v5);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v4);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v3);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v7);
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t gdc::MissingDataIterator::MissingDataIterator(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a5;
  if (a3 != a4)
  {
    while (1)
    {
      if (*(a3 + 8) == a2)
      {
        v5 = a5 + 144 * *(a3 + 144);
        if (!*(v5 + 112) || *(v5 + 136))
        {
          break;
        }
      }

      a3 += 152;
      if (a3 == a4)
      {
        a3 = a4;
        break;
      }
    }

    *(result + 8) = a3;
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[320];
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>>>::find<geo::QuadTile>(void *a1, geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = *(this + 2);
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(this + 2);
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  v10 = *v9;
  if (*v9)
  {
    v11 = *(this + 2);
    do
    {
      v12 = *(v10 + 1);
      if (v12 == v5)
      {
        if (v10[40] == 1)
        {
          geo::QuadTile::computeHash(v10 + 16);
          v10[40] = 0;
          v13 = *(v10 + 4);
          if (*(this + 24))
          {
            v14 = (*(this + 1) + ((*this - 0x61C8864680B583EBLL) << 6) + ((*this - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*this - 0x61C8864680B583EBLL);
            v15 = (*(this + 1) + (v14 << 6) + (v14 >> 2) - 0x61C8864680B583EBLL) ^ v14;
            v11 = (*(this + 2) + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583EBLL) ^ v15;
            *(this + 2) = v11;
            *(this + 24) = 0;
          }

          else
          {
            v11 = *(this + 2);
          }
        }

        else
        {
          v13 = *(v10 + 4);
        }

        if (v13 == v11 && v10[16] == *this && v10[17] == *(this + 1) && *(v10 + 5) == *(this + 1) && *(v10 + 6) == *(this + 2))
        {
          return v10;
        }
      }

      else
      {
        if (v7 > 1)
        {
          if (v12 >= *&v4)
          {
            v12 %= *&v4;
          }
        }

        else
        {
          v12 &= *&v4 - 1;
        }

        if (v12 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
    }

    while (v10);
  }

  return v10;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci10StyleColorEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A13FA8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci10StyleColorEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A13FA8;
  a2[1] = v2;
  return result;
}

uint64_t geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 6);
  if (v2 == *(a2 + 12))
  {
    if (!*(a1 + 6))
    {
      return 1;
    }

    v3 = 0;
    v4 = *a1;
    while (*(v4 + 2 * v3) == *(*a2 + 2 * v3) && *(v4 + *(a1 + 2) + v3) == *(*a2 + *(a2 + 8) + v3))
    {
      if (v2 == ++v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

void std::__hash_table<std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&,gdc::LayerDataKey const&>(float *a1, geo::QuadTile *this, uint64_t a3, const gdc::LayerDataKey *a4)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v6 = *(this + 2);
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_31;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = *(this + 2);
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_31:
    operator new();
  }

  v13 = *(this + 2);
  while (1)
  {
    v14 = *(v12 + 1);
    if (v14 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v10)
    {
      goto LABEL_31;
    }

LABEL_26:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  if (v12[40] == 1)
  {
    geo::QuadTile::computeHash(v12 + 16);
    v12[40] = 0;
    v15 = *(v12 + 4);
    if (*(this + 24))
    {
      v16 = (*(this + 1) + ((*this - 0x61C8864680B583EBLL) << 6) + ((*this - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*this - 0x61C8864680B583EBLL);
      v17 = (*(this + 1) + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583EBLL) ^ v16;
      v13 = (*(this + 2) + (v17 << 6) + (v17 >> 2) - 0x61C8864680B583EBLL) ^ v17;
      *(this + 2) = v13;
      *(this + 24) = 0;
    }

    else
    {
      v13 = *(this + 2);
    }
  }

  else
  {
    v15 = *(v12 + 4);
  }

  if (v15 != v13 || v12[16] != *this || v12[17] != *(this + 1) || *(v12 + 5) != *(this + 1) || *(v12 + 6) != *(this + 2))
  {
    goto LABEL_26;
  }
}

void sub_1B29C76FC(_Unwind_Exception *a1)
{
  v3 = v1[7];
  if (v3 != v1[9])
  {
    free(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t gdc::LayerDataKey::LayerDataKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = a1 + 40;
  *(a1 + 16) = a1 + 40;
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>((a1 + 8), *(a2 + 8), *(a2 + 16));
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void gdc::CameraFrame<geo::Radians,double>::toLookAtMercator(uint64_t a1, uint64_t a2)
{
  gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(&v18, a2, 1);
  v15 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = tan(*a2 * 0.5 + 0.785398163);
  v6 = log(v5);
  v7.f64[0] = v15;
  v7.f64[1] = v6;
  __asm { FMOV            V1.2D, #0.5 }

  *(a1 + 24) = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v7);
  *(a1 + 40) = v4;
  *a1 = v18;
  *(a1 + 16) = v19;
  v16 = xmmword_1B33B0740;
  v17 = 0;
  *(a1 + 48) = gm::Quaternion<double>::operator*(&v20, &v16);
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
}

void *gdc::MissingDataIterator::operator++(void *result)
{
  v1 = result[2];
  v2 = result[1] + 152;
  if (v2 != v1)
  {
    while (1)
    {
      if (*(v2 + 8) == *result)
      {
        v3 = result[3] + 144 * *(v2 + 144);
        if (!*(v3 + 112) || *(v3 + 136))
        {
          break;
        }
      }

      v2 += 152;
      if (v2 == v1)
      {
        v2 = result[2];
        break;
      }
    }
  }

  result[1] = v2;
  return result;
}

float gss::_interpolateSize(int a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = (a6 - a4) / (a5 - a4);
  if ((a1 - 3) < 2)
  {
    v12 = v6 * v6;
    v8 = 1.0 - v6;
    v13 = (v6 * 0.42) * (1.0 - v6);
    v10 = (v6 * v6) * v6;
    v11 = v13 + (v12 * 0.58);
    goto LABEL_6;
  }

  if (a1 == 2)
  {
    v6 = (v6 * v6) * ((v6 * -0.74) + 1.74);
    return a2 + (v6 * (a3 - a2));
  }

  if (a1 == 1)
  {
    v7 = v6 * v6;
    v8 = 1.0 - v6;
    v9 = v6 * 0.42;
    v10 = (v6 * v6) * v6;
    v11 = v7 + (v9 * v8);
LABEL_6:
    v6 = v10 + ((v8 * 3.0) * v11);
  }

  return a2 + (v6 * (a3 - a2));
}

double gdc::FallbackCollector::start(gdc::FallbackCollector *this, const geo::QuadTile *a2)
{
  geo::MortonTileIndex::MortonTileIndex(&v4, a2);
  result = *&v4;
  *this = v4;
  *(this + 16) = 1;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignTileViewData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignTileViewData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignTileViewData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t md::TileAdjustmentHelpers::getFallbackDataForTile(void *a1, uint64_t a2, uint64_t a3, const gdc::LayerDataRequestKey *a4, _BOOL8 a5)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F2A1C900;
  v6[1] = md::TileAdjustmentHelpers::dataKeyForTile;
  v6[3] = v6;
  md::TileAdjustmentHelpers::getFallbackDataForTile(a1, a2, a3, a4, v6, a5);
  return std::__function::__value_func<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::~__value_func[abi:nn200100](v6);
}

void sub_1B29C7A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ViewConstantDataHandle>();
    unk_1EB83CA90 = 0xCFE242268B958ADALL;
    qword_1EB83CA98 = "md::ls::ViewConstantDataHandle]";
    qword_1EB83CAA0 = 30;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void md::TileAdjustmentHelpers::getFallbackDataForTile(void *a1, __int16 a2, uint64_t a3, const gdc::LayerDataRequestKey *a4, uint64_t a5, _BOOL8 a6)
{
  v9 = a3;
  v10 = a1;
  v70 = a2;
  v11 = *(a3 + 1);
  if (v11 <= 6)
  {
    v12 = 6;
  }

  else
  {
    v12 = *(a3 + 1);
  }

  a1[1] = *a1;
  std::vector<geo::QuadTile>::push_back[abi:nn200100](a1, a3);
  v13 = *v10;
  v14 = v10[1];
  if (v14 != *v10)
  {
    v15 = (v12 - 5);
    v36 = v15;
    v37 = (v11 + 3);
    LOBYTE(v16) = v11;
    v38 = v9;
    while (v15 < v11 || v37 > v16)
    {
      if ((v11 - 2) <= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = (v11 - 2);
      }

      if (v17 < v11)
      {
        while (1)
        {
          v18 = *(v9 + 1);
          if (*(v9 + 1))
          {
            v19 = 0;
            v20 = v18 >= (v18 - v11 + 1) ? (v18 - v11 + 1) : *(v9 + 1);
            LOBYTE(v18) = v18 - v20;
            v21 = vshl_s32(*(v9 + 4), vneg_s32(vdup_n_s32(v20)));
            v22 = 1;
          }

          else
          {
            v21 = *(v9 + 4);
            v19 = *(v9 + 16);
            v22 = *(v9 + 24);
          }

          v23 = *v9;
          v49 = v18;
          v50 = v21;
          v48 = v23;
          v51 = v19;
          v52 = v22;
          std::function<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::operator()(v59, *(a5 + 24));
          gdc::LayerDataStore::get(&v45, a4, v59);
          if (v45)
          {
            break;
          }

          if (*(&v45 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v45 + 1));
          }

          if (v61 != v63)
          {
            free(v61);
          }

          v11 = (v11 - 1);
          if (v11 <= v17)
          {
            v13 = *v10;
            v14 = v10[1];
            goto LABEL_25;
          }
        }

        v35 = gdc::Camera::cameraFrame(v59);
        gdc::FallbackCollector::addFallbackNode(a6, &v48, v35, &v45);
        if (*(&v45 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v45 + 1));
        }

        if (v61 != v63)
        {
          free(v61);
        }

        return;
      }

LABEL_25:
      if (v37 >= (v16 + 1))
      {
        v24 = (v16 + 1);
      }

      else
      {
        v24 = v37;
      }

      v40 = v24;
      if (v24 > v16)
      {
        v25 = v10[3];
        v39 = v11;
        do
        {
          v10[4] = v25;
          std::vector<geo::QuadTile>::reserve(v10 + 3, (v14 - v13) >> 3);
          v25 = *v10;
          v26 = v10[1];
          if (*v10 != v26)
          {
            v41 = v16;
            v16 = v10;
            v42 = v10[1];
            do
            {
              v28 = *v25;
              v29 = *(v25 + 16);
              v30 = *(v25 + 24);
              v49 = *(v25 + 1);
              v27 = v49;
              v48 = v28;
              v51 = v29;
              v52 = v30;
              v53 = 1;
              v54 = 0;
              v57 = 0;
              LOBYTE(v55) = v28;
              v31 = *(v25 + 4);
              v50 = v31;
              v55 = __PAIR16__(v49, v28) + 256;
              v56 = vadd_s32(v31, v31);
              while (1)
              {
                v58 = 1;
                v59[1] = v27;
                v60 = v31;
                v59[0] = v28;
                v61 = v29;
                v62 = v30;
                LOBYTE(v63) = 1;
                v64 = 4;
                v66 = 0;
                v67 = 0;
                v65 = 255;
                v68 = 0;
                v69 = 1;
                if (!geo::QuadTileIterator::operator!=(&v48, v59))
                {
                  break;
                }

                *(&v45 + 4) = v56;
                LOWORD(v45) = v55;
                v46 = v57;
                v47 = v58;
                std::function<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::operator()(v59, *(a5 + 24));
                gdc::LayerDataStore::get(&v43, a4, v59);
                if (v43)
                {
                  v32 = gdc::Camera::cameraFrame(v59);
                  gdc::FallbackCollector::addFallbackNode(a6, &v45, v32, &v43);
                }

                else
                {
                  std::vector<geo::QuadTile>::push_back[abi:nn200100](v16 + 3, &v45);
                }

                if (v44)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v44);
                }

                if (v61 != v63)
                {
                  free(v61);
                }

                ++v54;
                LOBYTE(v55) = v48;
                HIBYTE(v55) = v49 + v53;
                v56.i32[0] = (v50.i32[0] << v53) + v54 / (1 << v53);
                v56.i32[1] = (v50.i32[1] << v53) + v54 % (1 << v53);
                v57 = 0;
              }

              v25 += 32;
            }

            while (v25 != v42);
            v10 = v16;
            v25 = *v16;
            v26 = v16[1];
            v9 = v38;
            v11 = v39;
            LOBYTE(v16) = v41;
          }

          v33 = v10[2];
          v13 = v10[3];
          *v10 = v13;
          v34 = *(v10 + 2);
          v10[3] = v25;
          v10[4] = v26;
          *(v10 + 1) = v34;
          v10[5] = v33;
          LODWORD(v16) = (v16 + 1);
          v14 = v34;
        }

        while (v16 < v40);
        LOBYTE(v16) = v40;
      }

      v15 = v36;
      if (v14 == v13)
      {
        return;
      }
    }
  }
}

void sub_1B29C83B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, void *a35)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a33 != a35)
  {
    free(a33);
  }

  _Unwind_Resume(exception_object);
}

gss::zone_mallocator *geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator=(gss::zone_mallocator *a1, gss::zone_mallocator *a2)
{
  if (a1 != a2)
  {
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(a1);
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 8) = 256;
    v5 = *(a2 + 16);
    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 6) = *(a2 + 6);
    }

    else
    {
      v6 = *(a2 + 6);
      if (*(a2 + 6))
      {
        geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(a1, *(a2 + 6), 0);
        v6 = *(a2 + 6);
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (v8 != v6 && geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::isSpaceAvailable(a1))
      {
        if (v9 & 1 | (v8 >= *(a2 + 6)))
        {
          v10 = v9;
        }

        else
        {
          v7 = (*a2 + 2 * v8);
          v2 = (*a2 + *(a2 + 2) + v8);
          v10 = 1;
        }

        v11 = *(a1 + 6);
        v12 = *a1;
        *(*a1 + 2 * v11) = *v7;
        *(v12 + *(a1 + 2) + v11) = *v2;
        ++*(a1 + 6);
        if (v8 + 1 < *(a2 + 6))
        {
          ++v8;
        }

        else
        {
          v8 = *(a2 + 6);
        }

        if (v10)
        {
          v9 = 0;
        }

        else
        {
          v9 = v10;
        }
      }

      LOBYTE(v5) = *(a2 + 16);
    }

    *(a1 + 16) = v5;
    *(a1 + 17) = *(a2 + 17);
  }

  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>();
    *algn_1EB83C248 = 0x90CDA7E17AF1623ELL;
    qword_1EB83C250 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>]";
    qword_1EB83C258 = 77;
  }
}

uint64_t geo::MortonTileIndex::MortonTileIndex(uint64_t this, const geo::QuadTile *a2)
{
  *this = 0;
  *(this + 8) = 0;
  v2 = *(a2 + 1);
  if (v2 <= 0x1E)
  {
    v3 = 1 << v2;
    v4 = *(a2 + 2);
    v5 = vcvtmd_s64_f64(v4 / (1 << v2));
    if (v5 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = -v5;
    }

    if (v6 <= 0x7F)
    {
      *(this + 8) = v2;
      *(this + 9) = v5;
      v7 = ((*(a2 + 1) % v3 + v3) % v3);
      v8 = (((v4 % v3 + v3) % v3) | (((v4 % v3 + v3) % v3) << 16)) & 0xFFFF0000FFFFLL;
      v9 = (v8 | (v8 << 8)) & 0xF000F000F000FLL | (16 * ((v8 | (v8 << 8)) & 0xFF00FF00FF00FFLL)) & 0xF0F0F0F0F0F0F0FLL;
      v10 = (v7 | (v7 << 16)) & 0xFF000000FFLL | (((v7 | (v7 << 16)) & 0xFFFF0000FFFFLL) << 8) & 0xFF00FF00FF00FFLL;
      v11 = (v10 | (16 * v10)) & 0x303030303030303 | (4 * ((v10 | (16 * v10)) & 0xF0F0F0F0F0F0F0FLL)) & 0x3333333333333333;
      *this = (v9 | (4 * v9)) & 0x1111111111111111 | (2 * ((v9 | (4 * v9)) & 0x3333333333333333)) & 0x5555555555555555 | ((4 * v11) | (2 * v11)) & 0xAAAAAAAAAAAAAAAALL;
    }
  }

  return this;
}

unsigned __int8 *gdc::Tiled::mapDataKeyFromTile(unsigned __int8 *a1, unsigned __int8 a2, unsigned __int8 *a3, __int16 a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = vrev64_s32(*(a3 + 4));
  v4 = *a3;
  v7 = a3[1];
  v8 = v4;
  return gdc::LayerDataRequestKey::LayerDataRequestKey(a1, a2, a4, &v6, 4);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[327];
}

void *std::function<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (a2)
  {
    return (*(*a2 + 48))(a2, &v5);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return _ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_4Tile4ViewEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(v3, v4);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_4Tile4ViewEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14D78;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile4ViewEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14D78;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<gdc::LayerDataRequestKey ()(gdc::RequestType,unsigned short const&,geo::QuadTile const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void gdc::FallbackCollector::end(gdc::FallbackCollector *this, const geo::QuadTile *a2)
{
  *this = 0;
  *(this + 16) = 0;
  v3 = *(this + 3);
  v4 = this + 32;
  if (v3 != this + 32)
  {
    do
    {
      v5 = *(v3 + 6);
      if (v5 && *(this + 9))
      {
        v6 = v5[12];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v7 = v5[1];
        if (v7 != v5[3])
        {
          free(v7);
        }

        *v5 = *(this + 12);
        *(this + 12) = v5;
      }

      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 4));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v4;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignPositionScaleInfo>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignPositionScaleInfo>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignPositionScaleInfo::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t gdc::FallbackCollector::collectFallbackData(uint64_t result, unint64_t *a2, int a3, void *a4, uint64_t a5)
{
  if (*(result + 16) == 1)
  {
    v5 = result;
    if (*(result + 40))
    {
      v11 = (result + 32);
      v10 = *(result + 32);
      if (v10)
      {
        v12 = (result + 32);
        do
        {
          result = std::__map_value_compare<geo::MortonTileIndex,std::__value_type<geo::MortonTileIndex,std::bitset<82ul>>,geo::MortonTileIndexCompare,true>::operator()[abi:nn200100](v10 + 4, v5);
          if (result)
          {
            v13 = 1;
          }

          else
          {
            v13 = 0;
          }

          if (!result)
          {
            v12 = v10;
          }

          v10 = v10[v13];
        }

        while (v10);
      }

      else
      {
        v12 = (result + 32);
      }

      if (v12 == v5[3])
      {
        goto LABEL_31;
      }

      v14 = *v12;
      if (*v12)
      {
        do
        {
          v15 = v14;
          v14 = v14[1];
        }

        while (v14);
      }

      else
      {
        v16 = v12;
        do
        {
          v15 = v16[2];
          v17 = *v15 == v16;
          v16 = v15;
        }

        while (v17);
      }

      v18 = v15[6];
      v19 = a2[1];
      v20 = a2[2];
      if (v19 >= v20)
      {
        v22 = 0xF0F0F0F0F0F0F0F1 * ((v19 - *a2) >> 3);
        if (v22 + 1 > 0x1E1E1E1E1E1E1E1)
        {
LABEL_54:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v23 = 0xF0F0F0F0F0F0F0F1 * ((v20 - *a2) >> 3);
        v24 = 2 * v23;
        if (2 * v23 <= v22 + 1)
        {
          v24 = v22 + 1;
        }

        if (v23 >= 0xF0F0F0F0F0F0F0)
        {
          v25 = 0x1E1E1E1E1E1E1E1;
        }

        else
        {
          v25 = v24;
        }

        v55 = a2;
        if (v25)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::FallbackData>>(v25);
        }

        v26 = 136 * v22;
        gdc::FallbackData::FallbackData(v26, a5, v18, (v18 + 88));
        v21 = (v26 + 136);
        v27 = a2[1];
        v28 = v26 + *a2 - v27;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::FallbackData>,gdc::FallbackData*>(*a2, v27, v28);
        v29 = *a2;
        *a2 = v28;
        a2[1] = v26 + 136;
        v30 = a2[2];
        a2[2] = 0;
        v53 = v29;
        v54 = v30;
        v51 = v29;
        v52 = v29;
        result = std::__split_buffer<gdc::FallbackData>::~__split_buffer(&v51);
      }

      else
      {
        result = gdc::FallbackData::FallbackData(v19, a5, v15[6], (v18 + 88));
        v21 = (result + 136);
      }

      a2[1] = v21;
      if (a3)
      {
LABEL_31:
        v48 = *(a5 + 4);
        *v47 = *a5;
        v49 = *(a5 + 16);
        v50 = *(a5 + 24);
        if (v12 != v11)
        {
          do
          {
            v31 = v12[6];
            v32 = (v31 + 88);
            if (*(v31 + 88))
            {
              if (!a4 || (result = std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::find<geo::QuadTile>(a4, v47)) != 0)
              {
                v33 = a2[1];
                v34 = a2[2];
                if (v33 >= v34)
                {
                  v36 = 0xF0F0F0F0F0F0F0F1 * ((v33 - *a2) >> 3);
                  v37 = v36 + 1;
                  if (v36 + 1 > 0x1E1E1E1E1E1E1E1)
                  {
                    goto LABEL_54;
                  }

                  v38 = 0xF0F0F0F0F0F0F0F1 * ((v34 - *a2) >> 3);
                  if (2 * v38 > v37)
                  {
                    v37 = 2 * v38;
                  }

                  if (v38 >= 0xF0F0F0F0F0F0F0)
                  {
                    v39 = 0x1E1E1E1E1E1E1E1;
                  }

                  else
                  {
                    v39 = v37;
                  }

                  v55 = a2;
                  if (v39)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::FallbackData>>(v39);
                  }

                  v40 = 136 * v36;
                  gdc::FallbackData::FallbackData(v40, v47, v31, v32);
                  v35 = (v40 + 136);
                  v41 = a2[1];
                  v42 = v40 + *a2 - v41;
                  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::FallbackData>,gdc::FallbackData*>(*a2, v41, v42);
                  v43 = *a2;
                  *a2 = v42;
                  a2[1] = v40 + 136;
                  v44 = a2[2];
                  a2[2] = 0;
                  v53 = v43;
                  v54 = v44;
                  v51 = v43;
                  v52 = v43;
                  result = std::__split_buffer<gdc::FallbackData>::~__split_buffer(&v51);
                }

                else
                {
                  result = gdc::FallbackData::FallbackData(v33, v47, v31, v32);
                  v35 = (result + 136);
                }

                a2[1] = v35;
              }
            }

            v45 = v12[1];
            if (v45)
            {
              do
              {
                v46 = v45;
                v45 = *v45;
              }

              while (v45);
            }

            else
            {
              do
              {
                v46 = v12[2];
                v17 = *v46 == v12;
                v12 = v46;
              }

              while (!v17);
            }

            v12 = v46;
          }

          while (v46 != v11);
        }
      }
    }
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>();
    *algn_1EB83C268 = 0x9E3F3811EAB07CCALL;
    qword_1EB83C270 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>]";
    qword_1EB83C278 = 90;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,gdc::LayerDataKey>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if (v4 != v2[9])
      {
        free(v4);
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

void std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 17;
        std::__destroy_at[abi:nn200100]<gdc::FallbackData,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[329];
}

void md::InjectedFeaturesLayerDataSource::addFallbackData(md::InjectedFeaturesLayerDataSource *this, const gdc::SelectionContext *a2)
{
  v4 = *(a2 + 1);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  gdc::LayerDataCollector::missingData(&v21, v4, *(this + 16));
  v35[0] = v21;
  v35[1] = *v22;
  while (1)
  {
    v34[0] = v23;
    v34[1] = v24;
    if (!gdc::MissingDataIterator::operator!=(v35, v34))
    {
      break;
    }

    v5 = *(*(&v35[0] + 1) + 113);
    v6 = *(*(&v35[0] + 1) + 116);
    v7 = *(*(&v35[0] + 1) + 112);
    v8 = *(*(&v35[0] + 1) + 128);
    v9 = *(*(&v35[0] + 1) + 136);
    gdc::Tiled::tileFromLayerDataKey(v34, *(*(&v35[0] + 1) + 16));
    v10 = 1 << SBYTE1(v34[0]);
    v29[0] = v34[0];
    v30 = (SDWORD1(v34[0]) % v10 + v10) % v10;
    v31 = (SDWORD2(v34[0]) % v10 + v10) % v10;
    v32 = 0;
    v33 = 1;
    gdc::FallbackCollector::start((this + 616), v29);
    md::TileAdjustmentHelpers::getFallbackDataForTile(this + 90, *(this + 16), v29, *(this + 2), this + 616);
    if (*(this + 609) == 1)
    {
      v14 = *(a2 + 7);
    }

    else
    {
      v14 = 0;
    }

    v11 = *(this + 608);
    v25[1] = v5;
    v26 = v6;
    v25[0] = v7;
    v27 = v8;
    v28 = v9;
    gdc::FallbackCollector::collectFallbackData(this + 616, &v36, v11, v14, v25);
    gdc::FallbackCollector::end((this + 616), v12);
    gdc::MissingDataIterator::operator++(v35);
  }

  v13 = v37;
  if (v36 != v37)
  {
    v15 = v36 + 15;
    do
    {
      v16 = *grl::IconMetricsRenderResult::getFillRect(*v15);
      gdc::LayerDataKey::LayerDataKey(v18, (v15 - 11));
      gdc::LayerDataRequestKey::LayerDataRequestKey(&v21, v16, v18);
      gdc::LayerDataCollector::addFallbackData(v4, &v21, v15 - 60, v15);
      if (v22[0] != v23)
      {
        free(v22[0]);
      }

      if (v19 != v20)
      {
        free(v19);
      }

      v17 = v15 + 2;
      v15 += 17;
    }

    while (v17 != v13);
  }

  *&v21 = &v36;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&v21);
}

void sub_1B29C93D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = (v21 - 136);
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](&a21);
  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_4Tile17PositionScaleInfoEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14BD8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile17PositionScaleInfoEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14BD8;
  a2[1] = v2;
  return result;
}

void gdc::LayerDataCollector::sortIndexList(gdc::LayerDataCollector *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = 126 - 2 * __clz(0x86BCA1AF286BCA1BLL * ((v3 - v2) >> 3));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = *this;
  v7 = *(this + 1);
  if (*this != v7)
  {
    do
    {
      v8 = v6 + 152;
      if (v6 + 152 == v7)
      {
        v6 = v7;
        goto LABEL_16;
      }

      v6 += 152;
    }

    while (!v9);
    v10 = v8 - 152;
    for (i = v8 + 152; i != v7; i += 152)
    {
      {
        v10[152] = *i;
        *(v10 + 80) = *(i + 4);
        if (i - 152 != v10)
        {
          geo::small_vector_base<unsigned char>::copy(v10 + 21, i + 2, v10 + 200);
        }

        *(v10 + 232) = *(i + 5);
        *(v10 + 248) = *(i + 6);
        v12 = *(i + 7);
        *(v10 + 273) = *(i + 121);
        *(v10 + 264) = v12;
        *(v10 + 37) = *(i + 18);
        v10 += 152;
      }
    }

    v6 = v10 + 152;
  }

LABEL_16:
  v13 = *(this + 1);
  if (v6 != v13)
  {
    while (v13 != v6)
    {
      v14 = *(v13 - 17);
      if (v14 != *(v13 - 15))
      {
        free(v14);
      }

      v13 -= 152;
    }

    *(this + 1) = v6;
  }
}

void std::__introsort<std::_ClassicAlgPolicy,anonymous namespace::LayerDataIndexLessThan &,gdc::LayerDataIndex *,false>(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v92 = a2 - 152;
    v8 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v8;
        v9 = a2 - v8;
        v10 = 0x86BCA1AF286BCA1BLL * (v9 >> 3);
        v11 = v10 - 2;
        if (v10 > 2)
        {
          switch(v10)
          {
            case 3:
              return;
            case 4:
              {
                std::swap[abi:nn200100]<gdc::LayerDataIndex>(a1 + 304, v92);
                {
                  gdc::LayerDataRequestKey::LayerDataRequestKey(v101, a1 + 152);
                  v28 = (a1 + 264);
                  *&v107[4] = *(a1 + 268);
                  *v107 = *(a1 + 264);
                  *&v107[16] = *(a1 + 280);
                  v107[24] = *(a1 + 288);
                  v108 = *(a1 + 296);
                  *(a1 + 152) = *(a1 + 304);
                  *(a1 + 160) = *(a1 + 312);
                  geo::small_vector_base<unsigned char>::copy((a1 + 168), (a1 + 320), (a1 + 200));
                  v29 = *(a1 + 400);
                  *(a1 + 232) = *(a1 + 384);
                  *(a1 + 248) = v29;
                  *(a1 + 264) = *(a1 + 416);
                  *(a1 + 273) = *(a1 + 425);
                  *(a1 + 296) = *(a1 + 448);
                  *(a1 + 304) = v101[0];
                  *(a1 + 312) = v102;
                  if (v101 != (a1 + 304))
                  {
                    geo::small_vector_base<unsigned char>::copy((a1 + 320), v103, (a1 + 352));
                  }

                  v30 = v106;
                  *(a1 + 384) = v105;
                  *(a1 + 400) = v30;
                  *(a1 + 416) = *v107;
                  *(a1 + 425) = *&v107[9];
                  *(a1 + 448) = v108;
                  if (v103[0] != v104)
                  {
                    free(v103[0]);
                  }

                  {
                    gdc::LayerDataRequestKey::LayerDataRequestKey(v101, a1);
                    v31 = *(a1 + 112);
                    *&v107[4] = *(a1 + 116);
                    *v107 = v31;
                    *&v107[16] = *(a1 + 128);
                    v107[24] = *(a1 + 136);
                    v108 = *(a1 + 144);
                    *a1 = *(a1 + 152);
                    *(a1 + 8) = *(a1 + 160);
                    geo::small_vector_base<unsigned char>::copy((a1 + 16), (a1 + 168), (a1 + 48));
                    v32 = *(a1 + 248);
                    *(a1 + 80) = *(a1 + 232);
                    *(a1 + 96) = v32;
                    *(a1 + 112) = *v28;
                    *(a1 + 121) = *(a1 + 273);
                    *(a1 + 144) = *(a1 + 296);
                    *(a1 + 152) = v101[0];
                    *(a1 + 160) = v102;
                    if (v101 != (a1 + 152))
                    {
                      geo::small_vector_base<unsigned char>::copy((a1 + 168), v103, (a1 + 200));
                    }

                    v33 = v106;
                    *(a1 + 232) = v105;
                    *(a1 + 248) = v33;
                    *v28 = *v107;
                    *(a1 + 273) = *&v107[9];
                    *(a1 + 296) = v108;
                    if (v103[0] != v104)
                    {
                      free(v103[0]);
                    }
                  }
                }
              }

              return;
            case 5:
              return;
          }
        }

        else
        {
          if (v10 < 2)
          {
            return;
          }

          if (v10 == 2)
          {
            {
              std::swap[abi:nn200100]<gdc::LayerDataIndex>(a1, v92);
            }

            return;
          }
        }

        if (v9 <= 3647)
        {
          if (a4)
          {
            if (a1 != a2)
            {
              v34 = a1 + 152;
              if (a1 + 152 != a2)
              {
                v35 = 0;
                v36 = a1;
                do
                {
                  v37 = v34;
                  {
                    gdc::LayerDataRequestKey::LayerDataRequestKey(v101, v37);
                    *&v107[4] = *(v36 + 268);
                    *v107 = *(v36 + 264);
                    *&v107[16] = *(v36 + 280);
                    v107[24] = *(v36 + 288);
                    v108 = *(v36 + 296);
                    v38 = v35;
                    while (1)
                    {
                      v39 = v38;
                      v40 = a1 + v38;
                      *(v40 + 152) = *v40;
                      *(v40 + 160) = *(v40 + 8);
                      geo::small_vector_base<unsigned char>::copy((v40 + 168), (v40 + 16), (v40 + 200));
                      v41 = *(v40 + 96);
                      *(v40 + 232) = *(v40 + 80);
                      *(v40 + 248) = v41;
                      *(v40 + 264) = *(v40 + 112);
                      *(v40 + 273) = *(v40 + 121);
                      *(v40 + 296) = *(v40 + 144);
                      if (!v39)
                      {
                        break;
                      }

                      v38 = v39 - 152;
                      {
                        v42 = a2;
                        v43 = a1 + v39;
                        v44 = a1 + v39;
                        v45 = (a1 + v39 + 112);
                        v46 = (v44 + 96);
                        goto LABEL_89;
                      }
                    }

                    v42 = a2;
                    v45 = (v40 + 112);
                    v46 = (v40 + 96);
                    v43 = a1;
LABEL_89:
                    *v43 = v101[0];
                    *(v43 + 8) = v102;
                    if (v43 != v101)
                    {
                      geo::small_vector_base<unsigned char>::copy((v43 + 16), v103, (v43 + 48));
                    }

                    *(v43 + 80) = v105;
                    *v46 = v106;
                    v47 = *v107;
                    *(v45 + 9) = *&v107[9];
                    *v45 = v47;
                    *(v43 + 144) = v108;
                    if (v103[0] != v104)
                    {
                      free(v103[0]);
                    }

                    a2 = v42;
                  }

                  v34 = v37 + 152;
                  v35 += 152;
                  v36 = v37;
                }

                while (v37 + 152 != a2);
              }
            }
          }

          else if (a1 != a2)
          {
            v82 = a1 + 152;
            if (a1 + 152 != a2)
            {
              v83 = a1 - 152;
              do
              {
                v84 = v82;
                {
                  v85 = a2;
                  gdc::LayerDataRequestKey::LayerDataRequestKey(v101, v84);
                  *&v107[4] = *(a1 + 268);
                  *v107 = *(a1 + 264);
                  *&v107[16] = *(a1 + 280);
                  v107[24] = *(a1 + 288);
                  v108 = *(a1 + 296);
                  v86 = v83;
                  do
                  {
                    v87 = v86;
                    v88 = v86 + 152;
                    *(v86 + 304) = *(v86 + 152);
                    *(v86 + 312) = *(v86 + 160);
                    geo::small_vector_base<unsigned char>::copy((v86 + 320), (v86 + 168), (v86 + 352));
                    v89 = *(v87 + 248);
                    *(v87 + 384) = *(v87 + 232);
                    *(v87 + 400) = v89;
                    *(v87 + 416) = *(v87 + 264);
                    *(v87 + 425) = *(v87 + 273);
                    *(v87 + 448) = *(v87 + 296);
                    v86 = v87 - 152;
                  }

                  while ((v90 & 1) != 0);
                  *v88 = v101[0];
                  *(v88 + 8) = v102;
                  if (v88 != v101)
                  {
                    geo::small_vector_base<unsigned char>::copy((v87 + 168), v103, (v88 + 48));
                  }

                  *(v88 + 80) = v105;
                  *(v87 + 248) = v106;
                  v91 = *v107;
                  *(v87 + 273) = *&v107[9];
                  *(v87 + 264) = v91;
                  *(v88 + 144) = v108;
                  if (v103[0] != v104)
                  {
                    free(v103[0]);
                  }

                  a2 = v85;
                }

                v82 = v84 + 152;
                v83 += 152;
                a1 = v84;
              }

              while (v84 + 152 != a2);
            }
          }

          return;
        }

        if (!a3)
        {
          if (a1 != a2)
          {
            v93 = a2;
            v48 = v11 >> 1;
            v49 = v11 >> 1;
            do
            {
              v50 = v49;
              if (v48 >= v49)
              {
                v51 = (2 * v49) | 1;
                v52 = a1 + 152 * v51;
                {
                  v52 += 152;
                  v51 = 2 * v50 + 2;
                }

                v53 = a1 + 152 * v50;
                {
                  gdc::LayerDataRequestKey::LayerDataRequestKey(v101, a1 + 152 * v50);
                  *v107 = *(v53 + 112);
                  *&v107[4] = *(v53 + 116);
                  *&v107[16] = *(v53 + 128);
                  v107[24] = *(v53 + 136);
                  v108 = *(v53 + 144);
                  do
                  {
                    v54 = v52;
                    *v53 = *v52;
                    *(v53 + 8) = *(v52 + 8);
                    if (v53 != v52)
                    {
                      geo::small_vector_base<unsigned char>::copy((v53 + 16), (v52 + 16), (v53 + 48));
                    }

                    *(v53 + 80) = *(v52 + 80);
                    *(v53 + 96) = *(v52 + 96);
                    v55 = *(v52 + 112);
                    *(v53 + 121) = *(v52 + 121);
                    *(v53 + 112) = v55;
                    *(v53 + 144) = *(v52 + 144);
                    if (v48 < v51)
                    {
                      break;
                    }

                    v56 = (2 * v51) | 1;
                    v52 = a1 + 152 * v56;
                    v57 = 2 * v51 + 2;
                    {
                      v52 += 152;
                      v56 = v57;
                    }

                    v53 = v54;
                    v51 = v56;
                  }

                  *v54 = v101[0];
                  *(v54 + 8) = v102;
                  if (v54 != v101)
                  {
                    geo::small_vector_base<unsigned char>::copy((v54 + 16), v103, (v54 + 48));
                  }

                  *(v54 + 80) = v105;
                  *(v54 + 96) = v106;
                  v58 = *v107;
                  *(v54 + 121) = *&v107[9];
                  *(v54 + 112) = v58;
                  *(v54 + 144) = v108;
                  if (v103[0] != v104)
                  {
                    free(v103[0]);
                  }
                }
              }

              v49 = v50 - 1;
            }

            while (v50);
            v59 = 0x86BCA1AF286BCA1BLL * (v9 >> 3);
            v60 = v93;
            do
            {
              gdc::LayerDataRequestKey::LayerDataRequestKey(v94, a1);
              v61 = 0;
              v62 = *(a1 + 112);
              *&v99[4] = *(a1 + 116);
              *v99 = v62;
              *&v99[16] = *(a1 + 128);
              v99[24] = *(a1 + 136);
              v100 = *(a1 + 144);
              v63 = a1;
              do
              {
                v64 = v63 + 152 * v61;
                v65 = v64 + 152;
                v66 = 2 * v61;
                v61 = (2 * v61) | 1;
                v67 = v66 + 2;
                if (v66 + 2 < v59)
                {
                  v68 = v64 + 304;
                  {
                    v65 = v68;
                    v61 = v67;
                  }
                }

                *v63 = *v65;
                *(v63 + 8) = *(v65 + 8);
                if (v63 != v65)
                {
                  geo::small_vector_base<unsigned char>::copy((v63 + 16), (v65 + 16), (v63 + 48));
                }

                *(v63 + 80) = *(v65 + 80);
                *(v63 + 96) = *(v65 + 96);
                v69 = *(v65 + 112);
                *(v63 + 121) = *(v65 + 121);
                *(v63 + 112) = v69;
                *(v63 + 144) = *(v65 + 144);
                v63 = v65;
              }

              while (v61 <= ((v59 - 2) >> 1));
              if (v65 == v60 - 152)
              {
                *v65 = v94[0];
                *(v65 + 8) = v95;
                if (v65 != v94)
                {
                  geo::small_vector_base<unsigned char>::copy((v65 + 16), v96, (v65 + 48));
                }

                *(v65 + 80) = v97;
                *(v65 + 96) = v98;
                v80 = *v99;
                *(v65 + 121) = *&v99[9];
                *(v65 + 112) = v80;
                *(v65 + 144) = v100;
              }

              else
              {
                *v65 = *(v60 - 152);
                *(v65 + 8) = *(v60 - 144);
                geo::small_vector_base<unsigned char>::copy((v65 + 16), (v60 - 136), (v65 + 48));
                *(v65 + 80) = *(v60 - 72);
                *(v65 + 96) = *(v60 - 56);
                v70 = *(v60 - 40);
                *(v65 + 121) = *(v60 - 31);
                *(v65 + 112) = v70;
                *(v65 + 144) = *(v60 - 8);
                *(v60 - 152) = v94[0];
                *(v60 - 144) = v95;
                if ((v60 - 152) != v94)
                {
                  geo::small_vector_base<unsigned char>::copy((v60 - 136), v96, (v60 - 104));
                }

                v71 = (v60 - 40);
                *(v60 - 72) = v97;
                *(v60 - 56) = v98;
                v72 = *v99;
                *(v71 + 9) = *&v99[9];
                *v71 = v72;
                *(v60 - 8) = v100;
                v73 = v65 + 152 - a1;
                if (v73 >= 153)
                {
                  v74 = (-2 - 0x79435E50D79435E5 * (v73 >> 3)) >> 1;
                  v75 = a1 + 152 * v74;
                  {
                    gdc::LayerDataRequestKey::LayerDataRequestKey(v101, v65);
                    v76 = *(v65 + 112);
                    *&v107[4] = *(v65 + 116);
                    *v107 = v76;
                    *&v107[16] = *(v65 + 128);
                    v107[24] = *(v65 + 136);
                    v108 = *(v65 + 144);
                    do
                    {
                      v77 = v75;
                      *v65 = *v75;
                      *(v65 + 8) = *(v75 + 8);
                      if (v65 != v75)
                      {
                        geo::small_vector_base<unsigned char>::copy((v65 + 16), (v75 + 16), (v65 + 48));
                      }

                      *(v65 + 80) = *(v75 + 80);
                      *(v65 + 96) = *(v75 + 96);
                      v78 = *(v75 + 112);
                      *(v65 + 121) = *(v75 + 121);
                      *(v65 + 112) = v78;
                      *(v65 + 144) = *(v75 + 144);
                      if (!v74)
                      {
                        break;
                      }

                      v74 = (v74 - 1) >> 1;
                      v75 = a1 + 152 * v74;
                      v65 = v77;
                    }

                    *v77 = v101[0];
                    *(v77 + 8) = v102;
                    if (v77 != v101)
                    {
                      geo::small_vector_base<unsigned char>::copy((v77 + 16), v103, (v77 + 48));
                    }

                    *(v77 + 80) = v105;
                    *(v77 + 96) = v106;
                    v79 = *v107;
                    *(v77 + 121) = *&v107[9];
                    *(v77 + 112) = v79;
                    *(v77 + 144) = v108;
                    if (v103[0] != v104)
                    {
                      free(v103[0]);
                    }
                  }
                }
              }

              if (v96[0] != v96[2])
              {
                free(v96[0]);
              }

              v60 -= 152;
            }

            while (v59-- > 2);
          }

          return;
        }

        if (v9 < 0x4C01)
        {
        }

        else
        {
          v12 = 152 * (v10 >> 1);
          std::swap[abi:nn200100]<gdc::LayerDataIndex>(a1, a1 + v12);
        }

        --a3;
        {
          break;
        }

        gdc::LayerDataRequestKey::LayerDataRequestKey(v101, a1);
        v21 = *(a1 + 112);
        *&v107[4] = *(a1 + 116);
        *v107 = v21;
        *&v107[16] = *(a1 + 128);
        v107[24] = *(a1 + 136);
        v108 = *(a1 + 144);
        {
          v8 = a1;
          do
          {
            v8 += 152;
          }
        }

        else
        {
          v22 = a1 + 152;
          do
          {
            v8 = v22;
            if (v22 >= a2)
            {
              break;
            }

            v22 = v8 + 152;
          }

          while (!v23);
        }

        v24 = a2;
        if (v8 < a2)
        {
          v24 = a2;
          do
          {
            v24 -= 152;
          }
        }

        while (v8 < v24)
        {
          std::swap[abi:nn200100]<gdc::LayerDataIndex>(v8, v24);
          do
          {
            v8 += 152;
          }

          do
          {
            v24 -= 152;
          }
        }

        if (v8 - 152 != a1)
        {
          *a1 = *(v8 - 152);
          *(a1 + 8) = *(v8 - 144);
          geo::small_vector_base<unsigned char>::copy((a1 + 16), (v8 - 136), (a1 + 48));
          *(a1 + 80) = *(v8 - 72);
          *(a1 + 96) = *(v8 - 56);
          v25 = *(v8 - 40);
          *(a1 + 121) = *(v8 - 31);
          *(a1 + 112) = v25;
          *(a1 + 144) = *(v8 - 8);
        }

        *(v8 - 152) = v101[0];
        *(v8 - 144) = v102;
        if ((v8 - 152) != v101)
        {
          geo::small_vector_base<unsigned char>::copy((v8 - 136), v103, (v8 - 104));
        }

        *(v8 - 72) = v105;
        *(v8 - 56) = v106;
        v26 = *v107;
        *(v8 - 31) = *&v107[9];
        *(v8 - 40) = v26;
        *(v8 - 8) = v108;
        if (v103[0] != v104)
        {
          free(v103[0]);
        }

LABEL_40:
        a4 = 0;
      }

      gdc::LayerDataRequestKey::LayerDataRequestKey(v101, a1);
      v13 = *(a1 + 112);
      *&v107[4] = *(a1 + 116);
      *v107 = v13;
      *&v107[16] = *(a1 + 128);
      v107[24] = *(a1 + 136);
      v108 = *(a1 + 144);
      v14 = a1;
      do
      {
        v15 = v14;
        v14 += 152;
      }

      v16 = a2;
      if (v15 == a1)
      {
        v16 = a2;
        do
        {
          if (v14 >= v16)
          {
            break;
          }

          v16 -= 152;
        }
      }

      else
      {
        do
        {
          v16 -= 152;
        }
      }

      v8 = v14;
      if (v14 < v16)
      {
        v17 = v16;
        do
        {
          std::swap[abi:nn200100]<gdc::LayerDataIndex>(v8, v17);
          do
          {
            v8 += 152;
          }

          do
          {
            v17 -= 152;
          }
        }

        while (v8 < v17);
      }

      if (v8 - 152 != a1)
      {
        *a1 = *(v8 - 152);
        *(a1 + 8) = *(v8 - 144);
        geo::small_vector_base<unsigned char>::copy((a1 + 16), (v8 - 136), (a1 + 48));
        *(a1 + 80) = *(v8 - 72);
        *(a1 + 96) = *(v8 - 56);
        v18 = *(v8 - 40);
        *(a1 + 121) = *(v8 - 31);
        *(a1 + 112) = v18;
        *(a1 + 144) = *(v8 - 8);
      }

      *(v8 - 152) = v101[0];
      *(v8 - 144) = v102;
      if ((v8 - 152) != v101)
      {
        geo::small_vector_base<unsigned char>::copy((v8 - 136), v103, (v8 - 104));
      }

      *(v8 - 72) = v105;
      *(v8 - 56) = v106;
      v19 = *v107;
      *(v8 - 31) = *&v107[9];
      *(v8 - 40) = v19;
      *(v8 - 8) = v108;
      if (v103[0] != v104)
      {
        free(v103[0]);
      }

      if (v14 < v16)
      {
LABEL_39:
        goto LABEL_40;
      }

      {
        break;
      }

      if (!v20)
      {
        goto LABEL_39;
      }
    }

    a2 = v8 - 152;
    if (!v20)
    {
      continue;
    }

    break;
  }
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::LayerDataIndexLessThan &,gdc::LayerDataIndex *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v6)
  {
    if (v7)
    {
      v8 = a1;
    }

    else
    {
      std::swap[abi:nn200100]<gdc::LayerDataIndex>(a1, a2);
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    std::swap[abi:nn200100]<gdc::LayerDataIndex>(a2, a3);
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  std::swap[abi:nn200100]<gdc::LayerDataIndex>(v8, v9);
}

uint64_t std::__hash_table<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::__unordered_map_hasher<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::hash<gss::StylePropertySet<gss::PropertyID>>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,true>,std::__unordered_map_equal<gss::StylePropertySet<gss::PropertyID>,std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>,std::equal_to<gss::StylePropertySet<gss::PropertyID>>,std::hash<gss::StylePropertySet<gss::PropertyID>>,true>,std::allocator<std::__hash_value_type<gss::StylePropertySet<gss::PropertyID>,unsigned char>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v2 + 14));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v2 + 11));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v2 + 8));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v2 + 5));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v2 + 2));
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

uint64_t anonymous namespace::LayerDataIndexLessThan::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 113);
  v3 = *(a2 + 113);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v4 = *(a1 + 116);
  v5 = *(a2 + 116);
  v7 = __OFSUB__(v4, v5);
  v6 = v4 - v5 < 0;
  if (v4 == v5)
  {
    v8 = *(a1 + 120);
    v9 = *(a2 + 120);
    v7 = __OFSUB__(v8, v9);
    v6 = v8 - v9 < 0;
    if (v8 == v9)
    {
      return gdc::LayerDataRequestKey::operator<(a1, a2);
    }
  }

  return v6 != v7;
}

void std::swap[abi:nn200100]<gdc::LayerDataIndex>(uint64_t a1, uint64_t a2)
{
  gdc::LayerDataRequestKey::LayerDataRequestKey(v7, a1);
  v4 = *(a1 + 112);
  *&v12[4] = *(a1 + 116);
  *v12 = v4;
  *&v12[16] = *(a1 + 128);
  v12[24] = *(a1 + 136);
  v13 = *(a1 + 144);
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    geo::small_vector_base<unsigned char>::copy((a1 + 16), (a2 + 16), (a1 + 48));
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 112) = v5;
  *(a1 + 144) = *(a2 + 144);
  *a2 = v7[0];
  *(a2 + 8) = v8;
  if (v7 != a2)
  {
    geo::small_vector_base<unsigned char>::copy((a2 + 16), v9, (a2 + 48));
  }

  v6 = v11;
  *(a2 + 80) = v10;
  *(a2 + 96) = v6;
  *(a2 + 112) = *v12;
  *(a2 + 121) = *&v12[9];
  *(a2 + 144) = v13;
  if (v9[0] != v9[2])
  {
    free(v9[0]);
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightStylizedShadingSettings>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightStylizedShadingSettings>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v3 = (a1 + 8);
  v60[0] = &unk_1F2A15838;
  v60[1] = a1 + 8;
  v61 = v60;
  v4 = *(a2 + 8);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v4);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsStylizedShading>(v4);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsSteepnessDarkening>(v4);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(v4);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v4);
  *&v10 = v5;
  *(&v10 + 1) = v6;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v62[0] = v10;
  v62[1] = v11;
  v12 = 8;
  v13 = v5;
  v14 = v62;
  do
  {
    if (*(*(v62 + v12) + 40) - *(*(v62 + v12) + 32) < *(v13 + 40) - *(v13 + 32))
    {
      v13 = *(v62 + v12);
      v14 = v62 + v12;
    }

    v12 += 8;
  }

  while (v12 != 32);
  v15 = *(*v14 + 32);
  v16 = *(*v14 + 40);
  v53 = v15;
  v54 = v16;
  v55 = v5;
  v56 = v6;
  v57 = v7;
  v58 = v8;
  v59 = v9;
  while (v15 != v16 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::SharedColorDataHandle const&,md::ls::UniqueColorDataHandle const*,md::ls::ColorDataHandle &,md::ls::AlbedoTintColor const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::SharedColorDataHandle const,md::ls::ColorDataHandle,md::ls::AlbedoTintColor const>(&v53, *v15, v15[1]))
  {
    v15 += 2;
    v53 = v15;
  }

  v17 = v53;
  if (v53 == v16)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v23 = _ZTWN4ecs27Runtime11_stackIndexE();
    v24 = 0;
    goto LABEL_26;
  }

  v50 = a2;
  v51 = v3;
  v18 = v55;
  v19 = v56;
  v21 = v57;
  v20 = v58;
  v22 = v59;
  v52 = _ZTWN4ecs27Runtime11_localStateE();
  v23 = _ZTWN4ecs27Runtime11_stackIndexE();
  v24 = 0;
  v25 = v54;
  do
  {
    v26 = v17[1];
    v27 = v26 >> 6;
    v28 = v26 & 0x3F;
    v29 = v21[1];
    if (v27 >= (v21[2] - v29) >> 3)
    {
LABEL_15:
      v30 = 0;
      goto LABEL_16;
    }

    v30 = *(v29 + 8 * v27);
    if (v30)
    {
      if (*(v30 + 4 * v28) != *v17)
      {
        goto LABEL_15;
      }

      v30 = v21[4] + 4 * *(v30 + 4 * v28 + 2);
    }

LABEL_16:
    v31 = *(v18 + 32);
    v32 = *(*(*(v18 + 8) + 8 * v27) + 4 * v28 + 2);
    v33 = *(v19 + 32);
    v34 = *(*(*(v19 + 8) + 8 * v27) + 4 * v28 + 2);
    v35 = *(*(*(v20 + 8) + 8 * v27) + 4 * v28 + 2);
    v36 = *(*(v20 + 56) + ((v35 >> 3) & 0x1FF8));
    v37 = *(*(*(v22 + 8) + 8 * v27) + 4 * v28 + 2);
    v38 = *(*(v22 + 56) + ((v37 >> 3) & 0x1FF8));
    *(v52 + 104 * *v23 + 24) = *v17;
    *&v62[0] = v30;
    if (!v61)
    {
      std::__throw_bad_function_call[abi:nn200100]();
    }

    (*(*v61 + 48))(v61, v31 + 4 * v32, v33 + 4 * v34, v62, v36 + 12 * (v35 & 0x3F), v38 + 8 * (v37 & 0x3F));
    ++v24;
    v39 = v17 + 2;
    while (1)
    {
      v17 = v39;
      v53 = v39;
      if (v39 == v25)
      {
        break;
      }

      v40 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::SharedColorDataHandle const&,md::ls::UniqueColorDataHandle const*,md::ls::ColorDataHandle &,md::ls::AlbedoTintColor const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::SharedColorDataHandle const,md::ls::ColorDataHandle,md::ls::AlbedoTintColor const>(&v53, *v39, v39[1]);
      v39 = v17 + 2;
      if (v40)
      {
        v41 = v17;
        goto LABEL_22;
      }
    }

    v41 = v25;
LABEL_22:
    ;
  }

  while (v41 != v16);
  v3 = v51;
  v42 = *(v50 + 8);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
    *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
    qword_1EB83D950 = "md::ls::PipelineSetup]";
    qword_1EB83D958 = 21;
  }

  *(v42 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v42 + 4096);
  v43 = v52;
LABEL_26:
  *(v43 + 104 * *v23 + 24) = -65536;
  v44 = v43 + 104 * *v23;
  v45 = *(v44 + 92);
  *(v44 + 92) = v45 + 1;
  *(v44 + 4 * v45 + 28) = v24;
  v46 = v43 + 104 * *v23;
  v48 = *(v46 + 92);
  v47 = (v46 + 92);
  if (v48 >= 0x10)
  {
    *v47 = 0;
  }

  result = std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::SupportsStylizedShading const&,md::ls::SupportsSteepnessDarkening const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v60);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return result;
}

void sub_1B29CAD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::SupportsStylizedShading const&,md::ls::SupportsSteepnessDarkening const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::LayerDataRequestKey::operator<(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  v4 = v2 >= v3;
  if (v2 != v3)
  {
    return !v4;
  }

  if (gdc::GenericKey::operator==((a1 + 16), (a2 + 16)))
  {
    v4 = *a1 >= *a2;
    return !v4;
  }

  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);

  return gdc::GenericKey::operator<(v8, v9, v10, v11);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SupportsSteepnessDarkening>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsSteepnessDarkening>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsSteepnessDarkening>(void)::localId;
    *algn_1EB82B468 = 0xC48764EACEE66A08;
    qword_1EB82B470 = "md::ls::SupportsSteepnessDarkening]";
    qword_1EB82B478 = 34;
  }
}

void gss::StylesheetQuery<gss::PropertyID>::getAttributeMapForStyle(uint64_t **a1, uint64_t a2, int a3)
{
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 256;
  v6 = a1[2];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (!v9)
      {
LABEL_10:
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        return;
      }

      if (a3)
      {
        gss::StylesheetManager<gss::PropertyID>::targetStyleAttributes(&v10, v9, a1 + 30, (a1 + 34));
        if (&v10 != a2)
        {
          goto LABEL_8;
        }
      }

      else
      {
        gss::StylesheetManager<gss::PropertyID>::sourceStyleAttributes(&v10, v9, a1 + 30, (a1 + 34));
        if (&v10 != a2)
        {
LABEL_8:
          geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(a2);
          *a2 = v10;
          *(a2 + 8) = v11[0];
          *(a2 + 12) = WORD2(v11[0]);
          *(a2 + 14) = *(v11 + 6);
          LOWORD(v11[1]) = 256;
          v10 = 0;
          v11[0] = 0;
        }
      }

      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v10);
      goto LABEL_10;
    }
  }
}

void sub_1B29CB1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  _Unwind_Resume(a1);
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,anonymous namespace::LayerDataIndexLessThan &,gdc::LayerDataIndex *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  {
    std::swap[abi:nn200100]<gdc::LayerDataIndex>(a3, a4);
    {
      std::swap[abi:nn200100]<gdc::LayerDataIndex>(a2, a3);
      {
        std::swap[abi:nn200100]<gdc::LayerDataIndex>(a1, a2);
      }
    }
  }

  {
    std::swap[abi:nn200100]<gdc::LayerDataIndex>(a4, a5);
    {
      std::swap[abi:nn200100]<gdc::LayerDataIndex>(a3, a4);
      {
        std::swap[abi:nn200100]<gdc::LayerDataIndex>(a2, a3);
        {

          std::swap[abi:nn200100]<gdc::LayerDataIndex>(a1, a2);
        }
      }
    }
  }
}

BOOL anonymous namespace::LayerDataIndexEquals::operator()(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*(a1 + 18) != *(a2 + 18) || *a1 != *a2 || *(a1 + 4) != *(a2 + 4) || !gdc::GenericKey::operator==((a1 + 16), (a2 + 16)))
  {
    return 0;
  }

  return geo::QuadTile::operator==(a1 + 112, a2 + 112);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(void)::metadata >= 0x200)
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

uint64_t md::SceneStateManager::updateTileSets(md::SceneStateManager *this)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>>>::clear(this + 8);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::__unordered_map_hasher<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,gdc::LayerDataWithWorldHash,std::equal_to<gdc::LayerDataWithWorld>,true>,std::__unordered_map_equal<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::equal_to<gdc::LayerDataWithWorld>,gdc::LayerDataWithWorldHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>>>::clear(this + 72);
  for (i = *(this + 46); i; i = *i)
  {
    for (j = i[5]; j; j = *j)
    {
      j[3] = 0;
    }
  }

  for (k = *(this + 51); k; k = *k)
  {
    for (m = k[5]; m; m = *m)
    {
      m[3] = 0;
    }
  }

  v5 = *(this + 6);
  v6 = *(this + 7);
  if (v5 != v6)
  {
    v7 = v5 + 16;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*v7);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 - 8) = v7;
      v8 = v7 + 16;
      v7 += 32;
    }

    while (v8 != v6);
  }

  for (n = 0; n != 9; ++n)
  {
    v10 = md::TileSelectionTileSetTypeList[n];
    v12 = *(this + 14);
    v11 = *(this + 15);
    while (v12 != v11)
    {
      if (v10 == *v12)
      {
        v11 = v12;
        break;
      }

      v12 += 56;
    }

    result = md::SceneStateManager::updateSceneTileSet(this, (v11 + 4), v10);
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(void)::localId;
    unk_1EB82B3F0 = 0x38CA2B944B3EDDDELL;
    qword_1EB82B3F8 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>]";
    qword_1EB82B400 = 100;
  }
}

uint64_t md::SceneStateManager::updateSceneTileSet(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v306 = *MEMORY[0x1E69E9840];
  v293 = a3;
  v281 = *(a2 + 96);
  v299 = &v293;
  v5 = std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(a1 + 54, a3, &v299);
  v268 = a2;
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a2 + 8));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v4[42]);
  v4[42] = 0;
  v4[43] = 0;
  v278 = (v4 + 42);
  v4[41] = v4 + 42;
  v6 = v5[5];
  v282 = v4;
  if (!v6)
  {
    v267 = 1;
    goto LABEL_30;
  }

  while (1)
  {
    v7 = v6[5];
    if (v7)
    {
      break;
    }

LABEL_25:
    v6 = *v6;
    if (!v6)
    {
      v267 = 1;
      goto LABEL_28;
    }
  }

  while (1)
  {
    if (*(v7 + 48))
    {
      if (*(v7 + 40))
      {
        v8 = (*(v7 + 17) - 0x61C8864680B583EBLL + ((*(v7 + 16) - 0x61C8864680B583EBLL) << 6) + ((*(v7 + 16) - 0x61C8864680B583EBLL) >> 2)) ^ (*(v7 + 16) - 0x61C8864680B583EBLL);
        v9 = (*(v7 + 20) - 0x61C8864680B583EBLL + (v8 << 6) + (v8 >> 2)) ^ v8;
        v10 = (*(v7 + 24) - 0x61C8864680B583EBLL + (v9 << 6) + (v9 >> 2)) ^ v9;
        *(v7 + 32) = v10;
        *(v7 + 40) = 0;
      }

      else
      {
        v10 = *(v7 + 32);
      }

      v11 = *(v268 + 64);
      if (v11)
      {
        v12 = vcnt_s8(v11);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = v12.u32[0];
        if (v12.u32[0] > 1uLL)
        {
          v14 = v10;
          v15 = v268;
          if (v10 >= *&v11)
          {
            v14 = v10 % *&v11;
          }
        }

        else
        {
          v14 = (*&v11 - 1) & v10;
          v15 = v268;
        }

        v16 = *(*(v15 + 56) + 8 * v14);
        if (v16)
        {
          v17 = *v16;
          if (*v16)
          {
            break;
          }
        }
      }
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  while (1)
  {
    v18 = *(v17 + 1);
    if (v10 == v18)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v18 >= *&v11)
      {
        v18 %= *&v11;
      }
    }

    else
    {
      v18 &= *&v11 - 1;
    }

    if (v18 != v14)
    {
      goto LABEL_22;
    }

LABEL_21:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_22;
    }
  }

  if (!std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v17 + 16, (v7 + 16)))
  {
    goto LABEL_21;
  }

  v267 = 0;
LABEL_28:
  v4 = v282;
LABEL_30:
  *__p = 0u;
  v291 = 0u;
  v292 = 1065353216;
  gdc::LayerDataCollector::virtualTilesBegin(v286, *v281, *(v281 + 8));
  v279 = v5;
LABEL_31:
  gdc::LayerDataCollector::virtualTilesEnd(&v299, *(v281 + 8));
  v19 = *v286;
  if (geo::codec::VectorTile::daVinciBuildingColorsArePresent(*v286, v299))
  {
    gdc::VirtualTileIterator::tileKey(v294, v19);
    LOBYTE(v299) = 0;
    v304 = 0;
    grl::LayerMetrics::anchor(v19);
    v21 = v20;
    v287 = v20;
    while (1)
    {
      grl::LayerMetrics::anchor(*&v286[8]);
      if (!gdc::DataKeyIterator::operator!=(v21, v22))
      {
        if (v304 == 1 && v300 != *&v302)
        {
          free(v300);
        }

        gdc::VirtualTileIterator::operator++(v286);
        goto LABEL_31;
      }

      v24 = *v21;
      v289 = *(v21 + 4);
      v23 = v289;
      v25 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((v4[59] + 136), v289);
      if (v25)
      {
        v283 = *(v25 + 18) == 0;
      }

      else
      {
        v283 = 0;
      }

      v26 = v5[4];
      if (!v26)
      {
        goto LABEL_54;
      }

      v27 = vcnt_s8(v26);
      v27.i16[0] = vaddlv_u8(v27);
      if (v27.u32[0] > 1uLL)
      {
        v28 = v23;
        if (v26 <= v23)
        {
          v28 = v23 % v5[4];
        }
      }

      else
      {
        v28 = (v26 - 1) & v23;
      }

      v29 = v5[3];
      v30 = v29[v28];
      if (!v30)
      {
        goto LABEL_54;
      }

      v31 = *v30;
      if (!*v30)
      {
        goto LABEL_54;
      }

      v32 = v26 - 1;
      while (1)
      {
        v33 = v31[1];
        if (v33 == v23)
        {
          break;
        }

        if (v27.u32[0] > 1uLL)
        {
          if (v33 >= v26)
          {
            v33 %= v26;
          }
        }

        else
        {
          v33 &= v32;
        }

        if (v33 != v28)
        {
          goto LABEL_54;
        }

LABEL_53:
        v31 = *v31;
        if (!v31)
        {
          goto LABEL_54;
        }
      }

      if (*(v31 + 8) != v23)
      {
        goto LABEL_53;
      }

      if (v27.u32[0] > 1uLL)
      {
        v65 = v23;
        if (v26 <= v23)
        {
          v65 = v23 % v5[4];
        }
      }

      else
      {
        v65 = (v26 - 1) & v23;
      }

      v66 = v29[v65];
      if (!v66)
      {
        goto LABEL_467;
      }

      do
      {
        while (1)
        {
          v66 = *v66;
          if (!v66)
          {
            goto LABEL_467;
          }

          v67 = v66[1];
          if (v67 == v23)
          {
            break;
          }

          if (v27.u32[0] > 1uLL)
          {
            if (v67 >= v26)
            {
              v67 %= v26;
            }
          }

          else
          {
            v67 &= v32;
          }

          if (v67 != v65)
          {
            goto LABEL_467;
          }
        }
      }

      while (v66[2].u16[0] != v23);
      if (v294[3])
      {
        v68 = (((LOBYTE(v294[0]) - 0x61C8864680B583EBLL) << 6) - 0x61C8864680B583EBLL + ((LOBYTE(v294[0]) - 0x61C8864680B583EBLL) >> 2) + BYTE1(v294[0])) ^ (LOBYTE(v294[0]) - 0x61C8864680B583EBLL);
        v69 = (SHIDWORD(v294[0]) - 0x61C8864680B583EBLL + (v68 << 6) + (v68 >> 2)) ^ v68;
        v70 = (SLODWORD(v294[1]) - 0x61C8864680B583EBLL + (v69 << 6) + (v69 >> 2)) ^ v69;
        v294[2] = v70;
        LOBYTE(v294[3]) = 0;
      }

      else
      {
        v70 = v294[2];
      }

      v71 = v66[4];
      if (v71)
      {
        v72 = vcnt_s8(v71);
        v72.i16[0] = vaddlv_u8(v72);
        v73 = v72.u32[0];
        if (v72.u32[0] > 1uLL)
        {
          v74 = v70;
          if (v70 >= *&v71)
          {
            v74 = v70 % *&v71;
          }
        }

        else
        {
          v74 = (*&v71 - 1) & v70;
        }

        v78 = *(*&v66[3] + 8 * v74);
        if (v78)
        {
          for (i = *v78; i; i = *i)
          {
            v80 = *(i + 1);
            if (v70 == v80)
            {
              if (std::equal_to<geo::QuadTile>::operator()[abi:nn200100](i + 16, v294))
              {
                if (*(i + 6))
                {
                  gdc::LayerDataCollector::setHasLayerDataDependency(v281, v21, *(i + 6));
                }

                break;
              }
            }

            else
            {
              if (v73 > 1)
              {
                if (v80 >= *&v71)
                {
                  v80 %= *&v71;
                }
              }

              else
              {
                v80 &= *&v71 - 1;
              }

              if (v80 != v74)
              {
                break;
              }
            }
          }
        }
      }

LABEL_54:
      v34 = gdc::LayerDataCollector::status(*(v281 + 24), *(v281 + 32), v23, *(v287 + 18));
      hasExternalDependencies = gdc::LayerDataCollector::hasExternalDependencies(*(v281 + 24), *(v281 + 32), v23, *(v287 + 18));
      v36 = hasExternalDependencies;
      if (v34 == 3)
      {
        if (!hasExternalDependencies)
        {
          if (v304 == 1)
          {
            v37 = gdc::Camera::cameraFrame(v21);
            if (gdc::LayerDataKey::operator==(&v299, v37))
            {
              v38 = *(v37 + 80);
              v39 = __p[1];
              if (__p[1])
              {
                v40 = vcnt_s8(__p[1]);
                v40.i16[0] = vaddlv_u8(v40);
                v41 = v40.u32[0];
                if (v40.u32[0] > 1uLL)
                {
                  v42 = *(v37 + 80);
                  if (v38 >= __p[1])
                  {
                    v42 = v38 % __p[1];
                  }
                }

                else
                {
                  v42 = (__p[1] - 1) & v38;
                }

                v75 = *(__p[0] + v42);
                if (v75)
                {
                  v76 = *v75;
                  if (*v75)
                  {
                    v277 = __p[1] - 1;
                    do
                    {
                      v77 = *(v76 + 1);
                      if (v77 == v38)
                      {
                        if (gdc::LayerDataKey::operator==(v76 + 8, v37))
                        {
                          goto LABEL_147;
                        }
                      }

                      else
                      {
                        if (v41 > 1)
                        {
                          if (v77 >= v39)
                          {
                            v77 %= v39;
                          }
                        }

                        else
                        {
                          v77 &= v277;
                        }

                        if (v77 != v42)
                        {
                          break;
                        }
                      }

                      v76 = *v76;
                    }

                    while (v76);
                  }
                }
              }

              operator new();
            }
          }

          if (v283)
          {
            gdc::Tiled::tileFromLayerDataKey(v305, *(v21 + 2));
            v43 = v305[1];
            if (v305[1] < BYTE1(v294[0]) || vcvtmd_s64_f64(*&v305[8] / (1 << v305[1])) != vcvtmd_s64_f64(SLODWORD(v294[1]) / (1 << SBYTE1(v294[0]))))
            {
              *v305 = *v294;
              *&v305[9] = *(&v294[1] + 1);
              v43 = BYTE1(v294[0]);
            }

            v295 = 0;
            v296 = 0;
            v276 = v289;
            if (v43 > 0x1E || ((v44 = 1 << v43, v45 = vcvtmd_s64_f64(*&v305[8] / (1 << v43)), v45 >= 0) ? (v46 = v45) : (v46 = -v45), v46 > 0x7F))
            {
              v56 = 0;
              v47 = 0;
              v43 = 0;
            }

            else
            {
              LOBYTE(v296) = v43;
              v47 = v45;
              v48.i64[0] = ((*&v305[8] % v44 + v44) % v44) | (((*&v305[8] % v44 + v44) % v44) << 16);
              v48.i64[1] = ((*&v305[4] % v44 + v44) % v44) | (((*&v305[4] % v44 + v44) % v44) << 16);
              HIBYTE(v296) = v45;
              v49.i64[0] = 0xFFFF0000FFFFLL;
              v49.i64[1] = 0xFFFF0000FFFFLL;
              v50 = vandq_s8(v48, v49);
              v51 = *&vorrq_s8(vshlq_n_s64(v50, 8uLL), v50) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
              v52 = *&vorrq_s8(vshlq_n_s64(v51, 4uLL), v51) & __PAIR128__(0xFF0FFF0FFF0FFF0FLL, 0xFF0FFF0FFF0FFF0FLL);
              v49.i64[0] = 0x3333333333333333;
              v49.i64[1] = 0x3333333333333333;
              v53 = vandq_s8(vorrq_s8(vshlq_n_s64(v52, 2uLL), v52), v49);
              v54 = vshlq_u64(v53, xmmword_1B33B0920);
              v53.i64[1] *= 2;
              v55 = vandq_s8(vorrq_s8(v54, v53), xmmword_1B33B2180);
              v295 = vorrq_s8(v55, vdupq_laneq_s64(v55, 1)).u64[0];
              v56 = v295;
            }

            v57 = *v278;
            if (!*v278)
            {
LABEL_94:
              operator new();
            }

            v58 = HIBYTE(v296);
            while (1)
            {
              v59 = v57;
              v60 = *(v57 + 40);
              v62 = v43 - v60;
              v61 = v43 > v60;
              if (v43 >= v60)
              {
                v64 = *(v59 + 41);
                if (v61)
                {
                  if (v64 == v58)
                  {
                    if (v56 >> (2 * v62) < v59[4])
                    {
                      goto LABEL_76;
                    }
                  }

                  else if (v64 > v58)
                  {
                    goto LABEL_76;
                  }
                }

                else if (v47 == v64)
                {
                  if (v56 < v59[4])
                  {
                    goto LABEL_76;
                  }
                }

                else if (v47 < v64)
                {
LABEL_76:
                  v57 = *v59;
                  if (!*v59)
                  {
                    goto LABEL_94;
                  }

                  continue;
                }
              }

              else
              {
                v63 = *(v59 + 41);
                if (v58 == v63)
                {
                  if (v56 <= v59[4] >> (2 * (v60 - v43)))
                  {
                    goto LABEL_76;
                  }
                }

                else if (v58 < v63)
                {
                  goto LABEL_76;
                }
              }

              if (!std::__map_value_compare<geo::MortonTileIndex,std::__value_type<geo::MortonTileIndex,std::bitset<82ul>>,geo::MortonTileIndexCompare,true>::operator()[abi:nn200100](v59 + 4, &v295))
              {
                if (v276 < 0x52)
                {
                  *(v59 + ((v276 >> 3) & 0x1FF8) + 48) |= 1 << v276;
                  break;
                }

LABEL_467:
                abort();
              }

              v57 = v59[1];
              if (!v57)
              {
                goto LABEL_94;
              }
            }
          }
        }

LABEL_147:
        v81 = gdc::Camera::cameraFrame(v21);
        v82 = v81;
        if (v304 == 1)
        {
          LOWORD(v299) = *v81;
          if (&v299 != v81)
          {
            geo::small_vector_base<unsigned char>::copy(&v300, (v81 + 8), v303);
          }

          v303[2] = *(v82 + 72);
        }

        else
        {
          gdc::LayerDataKey::LayerDataKey(&v299, v81);
          v304 = 1;
        }
      }

      v4 = v282;
      if (!v24)
      {
        if (v36 && v34 != 2)
        {
          v83 = 1;
        }

        else
        {
          v83 = v34;
        }

        LODWORD(v295) = v83;
        *v305 = &v295;
        if (v283)
        {
          v84 = std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus const&>,std::tuple<>>(v282 + 49, v83, v305);
        }

        else
        {
          v84 = std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus const&>,std::tuple<>>(v282 + 44, v83, v305);
        }

        *v305 = &v289;
        v85 = std::__hash_table<std::__hash_value_type<md::MapDataType,unsigned long>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,unsigned long>,std::hash<md::MapDataType>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,unsigned long>,std::equal_to<md::MapDataType>,std::hash<md::MapDataType>,true>,std::allocator<std::__hash_value_type<md::MapDataType,unsigned long>>>::__emplace_unique_key_args<md::MapDataType,std::piecewise_construct_t const&,std::tuple<md::MapDataType const&>,std::tuple<>>(v84 + 3, v289, v305);
        v85[3] = (v85[3] + 1);
      }

      gdc::DataKeyIterator::operator++(&v287);
      v21 = v287;
      v5 = v279;
    }
  }

  v86 = v4[41];
  if (v86 != v278)
  {
    do
    {
      v87 = v86[1];
      v88 = v87;
      v89 = v86;
      if (v87)
      {
        do
        {
          v90 = v88;
          v88 = *v88;
        }

        while (v88);
      }

      else
      {
        do
        {
          v90 = v89[2];
          v104 = *v90 == v89;
          v89 = v90;
        }

        while (!v104);
      }

      if (v90 != v278)
      {
        v91 = *(v86 + 41);
        v92 = *(v86 + 40);
        v93 = v86[4];
        do
        {
          if (v91 != *(v90 + 41))
          {
            break;
          }

          v94 = *(v90 + 40);
          v252 = v94 >= v92;
          v95 = v94 - v92;
          if (v95 != 0 && v252)
          {
            v96 = v90[4] >> (2 * v95);
          }

          else
          {
            if (v95)
            {
              break;
            }

            v96 = v90[4];
          }

          if (v93 != v96)
          {
            break;
          }

          v97 = v90[7];
          v90[6] = (v90[6] | v86[6]);
          v90[7] = (v97 | v86[7]);
          v98 = v90[1];
          if (v98)
          {
            do
            {
              v99 = v98;
              v98 = *v98;
            }

            while (v98);
          }

          else
          {
            do
            {
              v99 = v90[2];
              v104 = *v99 == v90;
              v90 = v99;
            }

            while (!v104);
          }

          v90 = v99;
        }

        while (v99 != v278);
      }

      if (v87)
      {
        do
        {
          v100 = v87;
          v87 = *v87;
        }

        while (v87);
      }

      else
      {
        do
        {
          v100 = v86[2];
          v104 = *v100 == v86;
          v86 = v100;
        }

        while (!v104);
      }

      v86 = v100;
    }

    while (v100 != v278);
  }

  v287 = 0;
  v288 = 0;
  v101 = v293;
  if (v293 != 5)
  {
    v102 = v4[59];
    v297[0] = &unk_1F2A36648;
    v297[1] = &v287;
    v298 = v297;
    for (j = *(v102 + 152); j; j = *j)
    {
      v104 = *(j + 10) == v101 && *(j + 18) == 0;
      if (v104)
      {
        LOWORD(v299) = *(j + 8);
        if (!v298)
        {
LABEL_468:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        (*(*v298 + 48))(v298, &v299);
      }
    }

    std::__function::__value_func<void ()(md::MapDataType)>::~__value_func[abi:nn200100](v297);
  }

  v269 = v4[32];
  v270 = v4[33];
  grl::LayerMetrics::anchor(*v281);
  v271 = v106;
  if (v105 != v106)
  {
    v109 = v105;
    while (1)
    {
      if (!*(v109 + 113) && !*(v109 + 116) && !*(v109 + 120))
      {
        goto LABEL_434;
      }

      if (*v109 == 1)
      {
        v110 = gdc::Camera::cameraFrame(v109);
        v111 = __p[1];
        if (__p[1])
        {
          v112 = v110;
          v113 = *(v110 + 80);
          v114 = vcnt_s8(__p[1]);
          v114.i16[0] = vaddlv_u8(v114);
          v115 = v114.u32[0];
          if (v114.u32[0] > 1uLL)
          {
            v116 = *(v110 + 80);
            if (v113 >= __p[1])
            {
              v116 = v113 % __p[1];
            }
          }

          else
          {
            v116 = (__p[1] - 1) & v113;
          }

          v117 = *(__p[0] + v116);
          if (v117)
          {
            for (k = *v117; k; k = *k)
            {
              v119 = *(k + 1);
              if (v119 == v113)
              {
                if (gdc::LayerDataKey::operator==(k + 8, v112))
                {
                  goto LABEL_434;
                }
              }

              else
              {
                if (v115 > 1)
                {
                  if (v119 >= v111)
                  {
                    v119 %= v111;
                  }
                }

                else
                {
                  v119 &= v111 - 1;
                }

                if (v119 != v116)
                {
                  break;
                }
              }
            }
          }
        }
      }

      gdc::Tiled::tileFromLayerDataKey(v286, *(v109 + 16));
      v120 = *(v109 + 8);
      Data = gdc::LayerDataCollector::getData(*(v281 + 24), *(v281 + 32), *(v109 + 8), *(v109 + 144));
      v122 = gdc::LayerDataCollector::hasExternalDependencies(*(v281 + 24), *(v281 + 32), v120, *(v109 + 144));
      v123 = *(v109 + 113);
      if (v286[1] < v123 || vcvtmd_s64_f64(*&v286[8] / (1 << v286[1])) != vcvtmd_s64_f64(*(v109 + 120) / (1 << v123)))
      {
        *v286 = *(v109 + 112);
        *&v286[9] = *(v109 + 121);
      }

      if (v270 == v269)
      {
        break;
      }

      v124 = v282[32];
      v125 = v282[33];
      if (v124 == v125)
      {
        break;
      }

      v126 = v286[1];
      v127 = 1.0 / (1 << v286[1]);
      v128 = v127 * *&v286[8];
      v129 = v127 * ((1 << v286[1]) + ~*&v286[4]);
      v130 = v128 + v127;
      v131 = v129 + v127;
      v132 = v120 >> 6;
      v133 = 1 << v120;
      while (1)
      {
        v134 = 0;
        v299 = *&v128;
        v300 = *&v129;
        v135 = &v299;
        v136 = 1;
        v301 = v130;
        v302 = v131;
        do
        {
          if (*v135 < *(v124 + 8 * v134) || *(&v301 + v134) > *(v124 + 16 + 8 * v134))
          {
            goto LABEL_251;
          }

          v137 = v136;
          v136 = 0;
          v135 = &v300;
          v134 = 1;
        }

        while ((v137 & 1) != 0);
        if (*(v124 + 32) <= v126 && *(v124 + 33) >= v126)
        {
          *v294 = 0uLL;
          if (v120 >= 0x80)
          {
            goto LABEL_467;
          }

          v294[v132] |= v133;
          if ((*(v124 + 56) & *v294) != 0)
          {
            break;
          }

          *v294 = 0uLL;
          v294[v132] |= v133;
          if ((*(v124 + 40) & *v294) == 0)
          {
            break;
          }
        }

LABEL_251:
        v124 += 72;
        if (v124 == v125)
        {
          goto LABEL_252;
        }
      }

LABEL_434:
      v109 += 152;
      if (v109 == v271)
      {
        goto LABEL_207;
      }
    }

LABEL_252:
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v282 + 36);
    v273 = Data;
    v274 = v122;
    if (!v282[43])
    {
      goto LABEL_332;
    }

    *v305 = &unk_1F2A36690;
    *&v305[8] = &v287;
    *&v305[24] = v305;
    v138 = v286[1];
    if (v286[1] > 0x1Eu || ((v139 = 1 << v286[1], v140 = vcvtmd_s64_f64(*&v286[8] / (1 << v286[1])), v140 >= 0) ? (v141 = v140) : (v141 = -v140), v141 > 0x7F))
    {
      v150 = 0;
      v151 = 0;
      LOBYTE(v140) = 0;
    }

    else
    {
      v142.i64[0] = ((*&v286[8] % v139 + v139) % v139) | (((*&v286[8] % v139 + v139) % v139) << 16);
      v142.i64[1] = ((*&v286[4] % v139 + v139) % v139) | (((*&v286[4] % v139 + v139) % v139) << 16);
      v143.i64[0] = 0xFFFF0000FFFFLL;
      v143.i64[1] = 0xFFFF0000FFFFLL;
      v144 = vandq_s8(v142, v143);
      v145 = *&vorrq_s8(vshlq_n_s64(v144, 8uLL), v144) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
      v146 = *&vorrq_s8(vshlq_n_s64(v145, 4uLL), v145) & __PAIR128__(0xFF0FFF0FFF0FFF0FLL, 0xFF0FFF0FFF0FFF0FLL);
      v143.i64[0] = 0x3333333333333333;
      v143.i64[1] = 0x3333333333333333;
      v147 = vandq_s8(vorrq_s8(vshlq_n_s64(v146, 2uLL), v146), v143);
      v148 = vshlq_u64(v147, xmmword_1B33B0920);
      v147.i64[1] *= 2;
      v149 = vandq_s8(vorrq_s8(v148, v147), xmmword_1B33B2180);
      v150 = vorrq_s8(v149, vdupq_laneq_s64(v149, 1)).u64[0];
      v151 = v286[1];
    }

    v152 = v282[41];
    if (v278 == v152)
    {
      goto LABEL_287;
    }

    v153 = v278;
    while (1)
    {
      v154 = *v153;
      v155 = *v153;
      v156 = v153;
      if (*v153)
      {
        do
        {
          v157 = v155;
          v155 = v155[1];
        }

        while (v155);
      }

      else
      {
        do
        {
          v157 = v156[2];
          v104 = *v157 == v156;
          v156 = v157;
        }

        while (v104);
      }

      if (*(v157 + 40) < v151)
      {
        v158 = *v153;
        v159 = v153;
        if (v154)
        {
          do
          {
            v160 = v158;
            v158 = v158[1];
          }

          while (v158);
        }

        else
        {
          do
          {
            v160 = v159[2];
            v104 = *v160 == v159;
            v159 = v160;
          }

          while (v104);
        }

        if (*(v160 + 41) == v140)
        {
          v161 = *(v160 + 40);
          v252 = v151 >= v161;
          v162 = v151 - v161;
          if (v162 != 0 && v252)
          {
            if (*(v160 + 32) == v150 >> (2 * v162))
            {
              break;
            }

            goto LABEL_274;
          }

          if (!v162 && *(v160 + 32) == v150)
          {
            break;
          }
        }
      }

LABEL_274:
      if (v154)
      {
        do
        {
          v163 = v154;
          v154 = v154[1];
        }

        while (v154);
      }

      else
      {
        do
        {
          v163 = v153[2];
          v104 = *v163 == v153;
          v153 = v163;
        }

        while (v104);
      }

      v153 = v163;
      if (v163 == v152)
      {
        goto LABEL_287;
      }
    }

    if (v154)
    {
      do
      {
        v164 = v154;
        v154 = v154[1];
      }

      while (v154);
    }

    else
    {
      do
      {
        v164 = v153[2];
        v104 = *v164 == v153;
        v153 = v164;
      }

      while (v104);
    }

    if (std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,4ul>,true,true>(&v287, 0, &v288, 0x12u, v164 + 6))
    {
      std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(v282 + 36, v286, v286);
      goto LABEL_331;
    }

LABEL_287:
    v299 = &unk_1F2A366D8;
    v300 = &v287;
    v302 = COERCE_DOUBLE(&v299);
    if (v138 > 0x1E || ((v165 = 1 << v138, v166 = vcvtmd_s64_f64(*&v286[8] / (1 << v138)), v166 >= 0) ? (v167 = v166) : (v167 = -v166), v167 > 0x7F))
    {
      v177 = 0;
      v168 = 0;
    }

    else
    {
      v168 = v138 & 0xFFFF00FF | (v166 << 8);
      v169.i64[0] = ((*&v286[8] % v165 + v165) % v165) | (((*&v286[8] % v165 + v165) % v165) << 16);
      v169.i64[1] = ((*&v286[4] % v165 + v165) % v165) | (((*&v286[4] % v165 + v165) % v165) << 16);
      v170.i64[0] = 0xFFFF0000FFFFLL;
      v170.i64[1] = 0xFFFF0000FFFFLL;
      v171 = vandq_s8(v169, v170);
      v172 = *&vorrq_s8(vshlq_n_s64(v171, 8uLL), v171) & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL);
      v173 = *&vorrq_s8(vshlq_n_s64(v172, 4uLL), v172) & __PAIR128__(0xFF0FFF0FFF0FFF0FLL, 0xFF0FFF0FFF0FFF0FLL);
      v170.i64[0] = 0x3333333333333333;
      v170.i64[1] = 0x3333333333333333;
      v174 = vandq_s8(vorrq_s8(vshlq_n_s64(v173, 2uLL), v173), v170);
      v175 = vshlq_u64(v174, xmmword_1B33B0920);
      v174.i64[1] *= 2;
      v176 = vandq_s8(vorrq_s8(v175, v174), xmmword_1B33B2180);
      v177 = vorrq_s8(v176, vdupq_laneq_s64(v176, 1)).u64[0];
    }

    v295 = (v177 + 1) & ~(-1 << (2 * v168));
    v296 = (v168 + (((v177 + 1) >> (2 * v168)) << 8)) & 0xFF00 | v168;
    v294[0] = 0;
    LOWORD(v294[1]) = 0;
    if (v138 <= 0x1E)
    {
      v178 = 1 << v138;
      v179 = vcvtmd_s64_f64(*&v286[8] / (1 << v138));
      v180 = v179 >= 0 ? v179 : -v179;
      if (v180 <= 0x7F)
      {
        LOBYTE(v294[1]) = v138;
        BYTE1(v294[1]) = v179;
        v181 = ((*&v286[4] % v178 + v178) % v178);
        v182 = (((*&v286[8] % v178 + v178) % v178) | (((*&v286[8] % v178 + v178) % v178) << 16)) & 0xFFFF0000FFFFLL;
        v183 = (v182 | (v182 << 8)) & 0xF000F000F000FLL | (16 * ((v182 | (v182 << 8)) & 0xFF00FF00FF00FFLL)) & 0xF0F0F0F0F0F0F0FLL;
        v184 = (v181 | (v181 << 16)) & 0xFF000000FFLL | (((v181 | (v181 << 16)) & 0xFFFF0000FFFFLL) << 8) & 0xFF00FF00FF00FFLL;
        v185 = (v184 | (16 * v184)) & 0x303030303030303 | (4 * ((v184 | (16 * v184)) & 0xF0F0F0F0F0F0F0FLL)) & 0x3333333333333333;
        v294[0] = (v183 | (4 * v183)) & 0x1111111111111111 | (2 * ((v183 | (4 * v183)) & 0x3333333333333333)) & 0x5555555555555555 | ((4 * v185) | (2 * v185)) & 0xAAAAAAAAAAAAAAAALL;
      }
    }

    v186 = v278;
    v187 = *v278;
    v188 = *v278;
    if (*v278)
    {
      do
      {
        v189 = std::__map_value_compare<geo::MortonTileIndex,std::__value_type<geo::MortonTileIndex,std::bitset<82ul>>,geo::MortonTileIndexCompare,true>::operator()[abi:nn200100](v188 + 4, v294);
        v190 = v189;
        if (!v189)
        {
          v186 = v188;
        }

        v188 = v188[v190];
      }

      while (v188);
      v191 = v278;
      do
      {
        v192 = std::__map_value_compare<geo::MortonTileIndex,std::__value_type<geo::MortonTileIndex,std::bitset<82ul>>,geo::MortonTileIndexCompare,true>::operator()[abi:nn200100](v187 + 4, &v295);
        v193 = v192;
        if (!v192)
        {
          v191 = v187;
        }

        v187 = v187[v193];
      }

      while (v187);
      if (v186 != v191)
      {
        do
        {
          if (*(v186 + 41) != (v168 >> 8))
          {
            break;
          }

          v194 = *(v186 + 40);
          if (v194 > v168)
          {
            v195 = v186[4] >> (2 * (v194 - v168));
          }

          else
          {
            if (v194 != v168)
            {
              break;
            }

            v195 = v186[4];
          }

          if (v177 != v195)
          {
            break;
          }

          if (v302 == 0.0)
          {
            goto LABEL_468;
          }

          if ((*(**&v302 + 48))(COERCE_DOUBLE(*&v302), v186 + 6))
          {
            v196 = *(v186 + 41);
            v197 = v186[4];
            v198 = v197 & 0x1111111111111111 | ((v197 & 0x5555555555555555) >> 1) & 0x3333333333333333;
            v199 = (v198 | (v198 >> 2)) & 0xF000F000F000FLL | (((v198 | (v198 >> 2)) & 0xF0F0F0F0F0F0F0FLL) >> 4) & 0xFF00FF00FF00FFLL;
            v200 = ((v199 | (v199 >> 8)) >> 16) & 0xFFFF0000 | (v199 | (v199 >> 8));
            v201 = ((((v197 >> 1) & 0x4444444444444444 | v197 & 0x2222222222222222) >> 3) | (((v197 >> 1) & 0x4444444444444444 | v197 & 0x2222222222222222) >> 1)) & 0xF0F0F0F0F0F0F0FLL;
            v202 = (v201 | (v201 >> 4)) & 0xFF00FF00FF00FFLL | (((v201 | (v201 >> 4)) & 0xFF00FF00FF00FFLL) >> 8);
            LODWORD(v199) = (v202 >> 16) & 0xFFFF0000 | v202;
            LOBYTE(v202) = *(v186 + 40);
            LOBYTE(v294[0]) = v286[0];
            BYTE1(v294[0]) = v202;
            HIDWORD(v294[0]) = v199;
            LODWORD(v294[1]) = (v196 << v202) + v200;
            v294[2] = 0;
            LOBYTE(v294[3]) = 1;
            std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile>(v282 + 36, v294, v294);
          }

          v203 = v186[1];
          if (v203)
          {
            do
            {
              v204 = v203;
              v203 = *v203;
            }

            while (v203);
          }

          else
          {
            do
            {
              v204 = v186[2];
              v104 = *v204 == v186;
              v186 = v204;
            }

            while (!v104);
          }

          v186 = v204;
        }

        while (v204 != v191);
      }
    }

    std::__function::__value_func<BOOL ()(std::bitset<82ul> const&)>::~__value_func[abi:nn200100](&v299);
    Data = v273;
    v122 = v274;
LABEL_331:
    std::__function::__value_func<BOOL ()(std::bitset<82ul> const&)>::~__value_func[abi:nn200100](v305);
LABEL_332:
    if (v282[39])
    {
      v205 = 1;
    }

    else
    {
      v206 = vcnt_s8(v287);
      v206.i16[0] = vaddlv_u8(v206);
      v207 = v206.i32[0];
      v206.i32[0] = v288 & 0x3FFFF;
      v208 = vcnt_s8(v206);
      v208.i16[0] = vaddlv_u8(v208);
      v205 = (v208.i32[0] | v207) == 0;
    }

    if (v286[0] == 255 && !v205)
    {
      goto LABEL_430;
    }

    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>((v268 + 8), (v109 + 112), v109 + 112);
    gdc::Tiled::tileFromLayerDataKey(&v299, *(v109 + 16));
    v210 = *(v109 + 104);
    v211 = v282[2];
    if (!*&v211)
    {
      goto LABEL_355;
    }

    v212 = vcnt_s8(v211);
    v212.i16[0] = vaddlv_u8(v212);
    v213 = v212.u32[0];
    if (v212.u32[0] > 1uLL)
    {
      v214 = *(v109 + 104);
      if (v210 >= *&v211)
      {
        v214 = v210 % *&v211;
      }
    }

    else
    {
      v214 = (*&v211 - 1) & v210;
    }

    v215 = *(v282[1] + 8 * v214);
    if (!v215 || (v216 = *v215) == 0)
    {
LABEL_355:
      operator new();
    }

    while (2)
    {
      v217 = *(v216 + 1);
      if (v217 == v210)
      {
        if (gdc::LayerDataRequestKey::operator==(v216 + 16, v109))
        {
          Data = v273;
          v122 = v274;
          v218 = v282[38];
          if (!v218)
          {
            goto LABEL_430;
          }

          v272 = v109;
          while (1)
          {
            v219 = *(v216 + 17);
            v220 = ((v219 - *(v216 + 16)) >> 5) + 1;
            if (*(v216 + 19) < v220)
            {
              geo::small_vector_base<geo::QuadTile>::grow(v216 + 16, v220);
              v219 = *(v216 + 17);
            }

            *(v219 + 24) = 0;
            *(v219 + 4) = *(v218 + 20);
            *v219 = *(v218 + 8);
            *(v219 + 16) = v218[4];
            *(v219 + 24) = *(v218 + 40);
            *(v216 + 17) = v219 + 32;
            v221 = *Data;
            if (*Data == 0 || v122)
            {
              goto LABEL_394;
            }

            v222 = *(v218 + 17);
            if (v222 <= BYTE1(v299))
            {
              goto LABEL_394;
            }

            v223 = (v222 - BYTE1(v299));
            if (v223 >= 5)
            {
              v224 = 5;
            }

            else
            {
              v224 = v222 - BYTE1(v299);
            }

            if (v223 <= 5)
            {
              v225 = 0;
            }

            else
            {
              v225 = v223 - 5;
            }

            v275 = v225;
            v226 = Data[1];
            v280 = v226;
            if (v226)
            {
              atomic_fetch_add_explicit(&v226->__shared_owners_, 1uLL, memory_order_relaxed);
              LOBYTE(v222) = *(v218 + 17);
            }

            v227 = (1 << v222);
            v228 = *(v218 + 6);
            v229 = vcvtmd_s64_f64(v228 / v227);
            v284 = (1 << v224);
            v230 = ((v221 << 6) - 0x61C8864680B583EBLL + (v221 >> 2) + v229) ^ v221;
            v231 = v282[10];
            if (!*&v231)
            {
              goto LABEL_390;
            }

            v232 = vcnt_s8(v231);
            v232.i16[0] = vaddlv_u8(v232);
            if (v232.u32[0] > 1uLL)
            {
              v233 = ((v221 << 6) - 0x61C8864680B583EBLL + (v221 >> 2) + v229) ^ v221;
              v234 = v282 + 9;
              if (v230 >= *&v231)
              {
                v233 = v230 % *&v231;
              }
            }

            else
            {
              v233 = v230 & (*&v231 - 1);
              v234 = v282 + 9;
            }

            v235 = *(*v234 + 8 * v233);
            if (!v235 || (v236 = *v235) == 0)
            {
LABEL_390:
              operator new();
            }

            while (1)
            {
              v237 = v236[1];
              if (v237 == v230)
              {
                break;
              }

              if (v232.u32[0] > 1uLL)
              {
                if (v237 >= *&v231)
                {
                  v237 %= *&v231;
                }
              }

              else
              {
                v237 &= *&v231 - 1;
              }

              if (v237 != v233)
              {
                goto LABEL_390;
              }

LABEL_389:
              v236 = *v236;
              if (!v236)
              {
                goto LABEL_390;
              }
            }

            if (*(v236 + 32) != v229 || v236[2] != v221)
            {
              goto LABEL_389;
            }

            v239 = v236[5];
            v240 = v239[3];
            if (v284 <= v240)
            {
              v109 = v272;
              if (v284 >= v240)
              {
                goto LABEL_391;
              }

              v247 = v240 >> v224;
              v248 = (v228 & (v284 - 1)) * v247;
              v249 = (*(v218 + 5) & (v284 - 1)) * v247;
              v250 = v248 + v247 - 1;
              v251 = v249 + v247 - 1;
              v252 = v239[4] == v240 * v240 || v250 >= v240;
              v253 = v252 || v251 >= v240;
              v285 = v249 + v247 - 1;
              v254 = !v253 && v251 >= v249;
              Data = v273;
              if (v254)
              {
                do
                {
                  for (m = v248; m <= v250; ++m)
                  {
                    gdc::SubtileClipMask::addSubTile(v239, m, v249);
                  }

                  ++v249;
                  v109 = v272;
                }

                while (v249 <= v285);
              }
            }

            else
            {
              v109 = v272;
              if (v240 != v284)
              {
                v241 = v239[4];
                if (v241 != v240 * v240 && v241 != 0)
                {
                  v239[4] = 0;
                  memset(v294, 0, 24);
                  std::vector<BOOL>::__vallocate[abi:nn200100](v294, v284 << v224);
                }

                std::vector<BOOL>::resize(v236[5], v284 << v224, 0);
                v243 = v239[3] * v239[3];
                v244 = v243 - 63;
                if (v243 - 63 < 0)
                {
                  v244 = v239[3] * v239[3];
                }

                v245 = v244 >> 6;
                if (v243 >= 0)
                {
                  v245 = v243 >> 6;
                }

                v246 = (v239[1] & 0x3F) - (v243 & 0x3F) + (v239[1] & 0xFFFFFFFFFFFFFFC0) - (v245 << 6);
                if (v246 >= 1)
                {
                  if (v239[4] == v243)
                  {
                    v294[0] = *v239 + 8 * v245;
                    LODWORD(v294[1]) = v243 & 0x3F;
                    std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(v294, v246);
                  }

                  else
                  {
                    v294[0] = *v239 + 8 * v245;
                    LODWORD(v294[1]) = v243 & 0x3F;
                    std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(v294, v246);
                  }
                }

                if (v239[4] == v239[3] * v239[3])
                {
                  v239[4] = v284 << v224;
                }

                v239[3] = v284;
              }

LABEL_391:
              gdc::SubtileClipMask::addSubTile(v236[5], (v284 - 1) & (*(v218 + 6) >> v275), (*(v218 + 5) >> v275) & (v284 - 1));
              Data = v273;
            }

            v122 = v274;
            if (v280)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v280);
            }

LABEL_394:
            v218 = *v218;
            if (!v218)
            {
LABEL_430:
              if (*Data != 0 && !v122)
              {
                v299 = 0;
                v300 = 0;
                if ((std::__equal_aligned[abi:nn200100]<std::__bitset<1ul,4ul>,true,true>(&v287, 0, &v288, 0x12u, &v299) & 1) != 0 || v282[39])
                {
                  geo::linear_map<unsigned short,std::set<gdc::LayerDataWithWorld>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>,std::vector<std::pair<unsigned short,std::set<gdc::LayerDataWithWorld>>>>::operator[](v282 + 6, *(v109 + 8));
                  operator new();
                }
              }

              goto LABEL_434;
            }
          }
        }
      }

      else
      {
        if (v213 > 1)
        {
          if (v217 >= *&v211)
          {
            v217 %= *&v211;
          }
        }

        else
        {
          v217 &= *&v211 - 1;
        }

        if (v217 != v214)
        {
          goto LABEL_355;
        }
      }

      v216 = *v216;
      if (!v216)
      {
        goto LABEL_355;
      }

      continue;
    }
  }

LABEL_207:
  LODWORD(v294[0]) = 2;
  v299 = v294;
  v107 = std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus&&>,std::tuple<>>(v282 + 49, 2, &v299) + 5;
  while (1)
  {
    v107 = *v107;
    if (!v107)
    {
      break;
    }

    if (v107[3])
    {
LABEL_441:
      v257 = 0;
      goto LABEL_442;
    }
  }

  *v305 = 1;
  v299 = v305;
  v108 = std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus&&>,std::tuple<>>(v282 + 49, 1, &v299) + 5;
  while (1)
  {
    v108 = *v108;
    if (!v108)
    {
      break;
    }

    if (v108[3])
    {
      goto LABEL_441;
    }
  }

  *v286 = 0;
  v299 = v286;
  v256 = std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus&&>,std::tuple<>>(v282 + 49, 0, &v299) + 5;
  while (1)
  {
    v256 = *v256;
    v257 = v256 == 0;
    if (!v256)
    {
      break;
    }

    if (v256[3])
    {
      goto LABEL_441;
    }
  }

LABEL_442:
  LODWORD(v294[0]) = 1;
  v299 = v294;
  v258 = std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus&&>,std::tuple<>>(v282 + 49, 1, &v299) + 5;
  while (1)
  {
    v258 = *v258;
    if (!v258)
    {
      break;
    }

    if (v258[3])
    {
LABEL_457:
      v262 = 0;
      goto LABEL_458;
    }
  }

  *v305 = 0;
  v299 = v305;
  v259 = std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus&&>,std::tuple<>>(v282 + 49, 0, &v299) + 5;
  while (1)
  {
    v259 = *v259;
    if (!v259)
    {
      break;
    }

    if (v259[3])
    {
      goto LABEL_457;
    }
  }

  *v286 = 1;
  v299 = v286;
  v260 = std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus&&>,std::tuple<>>(v282 + 44, 1, &v299) + 5;
  while (1)
  {
    v260 = *v260;
    if (!v260)
    {
      break;
    }

    if (v260[3])
    {
      goto LABEL_457;
    }
  }

  LODWORD(v295) = 0;
  v299 = &v295;
  v261 = std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus&&>,std::tuple<>>(v282 + 44, 0, &v299) + 5;
  while (1)
  {
    v261 = *v261;
    v262 = v261 == 0;
    if (!v261)
    {
      break;
    }

    if (v261[3])
    {
      goto LABEL_457;
    }
  }

LABEL_458:
  LODWORD(v294[0]) = 2;
  v299 = v294;
  v263 = std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus&&>,std::tuple<>>(v282 + 49, 2, &v299) + 5;
  while (1)
  {
    v263 = *v263;
    if (!v263)
    {
      break;
    }

    if (v263[3])
    {
LABEL_465:
      v265 = 1;
      goto LABEL_466;
    }
  }

  *v305 = 2;
  v299 = v305;
  v264 = std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus&&>,std::tuple<>>(v282 + 44, 2, &v299) + 5;
  while (1)
  {
    v264 = *v264;
    v265 = v264 != 0;
    if (!v264)
    {
      break;
    }

    if (v264[3])
    {
      goto LABEL_465;
    }
  }

LABEL_466:
  *v268 = v257;
  *(v268 + 1) = v267 & v262;
  *(v268 + 2) = v265;
  return std::__hash_table<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>>>::~__hash_table(__p);
}