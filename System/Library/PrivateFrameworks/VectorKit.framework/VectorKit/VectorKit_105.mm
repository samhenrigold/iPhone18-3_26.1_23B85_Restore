void sub_1B2F408F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t md::OverlaysLogic::updateRasterOverlays<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>(void)::{lambda(gdc::Entity,md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>&)#1}::operator()(void *a1, uint64_t a2, unsigned __int8 **a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 1065353216;
  v6 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(a1[19]);
  v7 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v6, a2);
  v8 = a1[20];
  if (v8 != a1 + 21)
  {
    while (1)
    {
      v9 = gdc::Context::context<md::components::SharedTransformData>(v8[5]);
      if (!v9)
      {
        v17 = GEOGetVectorKitOverlaysLogicLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v33 = "transformData";
          v34 = 2080;
          v35 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/Overlays/OverlaysLogic.mm";
          v36 = 1024;
          v37 = 453;
          _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_ERROR, "Invalid SharedTransformData.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
        }

        goto LABEL_28;
      }

      v10 = v9;
      v11 = *a3;
      if (v9[24] == 1)
      {
        geo::QuadTile::computeHash(v9);
        v10[24] = 0;
      }

      v12 = *(v10 + 2);
      if (v11[24])
      {
        v14 = *v11;
        v24 = (v11[1] + ((v14 - 0x61C8864680B583EBLL) << 6) + ((v14 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v14 - 0x61C8864680B583EBLL);
        v25 = (*(v11 + 1) + (v24 << 6) + (v24 >> 2) - 0x61C8864680B583EBLL) ^ v24;
        v13 = (*(v11 + 2) + (v25 << 6) + (v25 >> 2) - 0x61C8864680B583EBLL) ^ v25;
        *(v11 + 2) = v13;
        v11[24] = 0;
      }

      else
      {
        v13 = *(v11 + 2);
        LODWORD(v14) = *v11;
      }

      v15 = *v10;
      v16 = v12 == v13 && v15 == v14;
      if (v16 && v10[1] == v11[1] && *(v10 + 1) == *(v11 + 1) && *(v10 + 2) == *(v11 + 2))
      {
        break;
      }

      if (v15 != v14)
      {
        goto LABEL_28;
      }

      v18 = v10[1];
      v19 = v11[1];
      v20 = v19 >= v18;
      v21 = v19 - v18;
      if (v21 != 0 && v20)
      {
        if (*(v10 + 1) == *(v11 + 1) >> v21 && *(v10 + 2) == *(v11 + 2) >> v21)
        {
          break;
        }
      }

      else if (!v21 && *(v10 + 1) == *(v11 + 1) && *(v10 + 2) == *(v11 + 2))
      {
        break;
      }

LABEL_28:
      v22 = v8[1];
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
          v23 = v8[2];
          v16 = *v23 == v8;
          v8 = v23;
        }

        while (!v16);
      }

      v8 = v23;
      if (v23 == a1 + 21)
      {
        goto LABEL_36;
      }
    }

    std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__emplace_unique_key_args<gdc::Registry *,gdc::Registry * const&>(&v29, v8[5], v8 + 5);
    goto LABEL_28;
  }

LABEL_36:
  if (!v7)
  {
    v26 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(a1[19]);
    gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::emplace<std::unordered_set<gdc::Registry *>&>(v26, a2, &v29);
    v27 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(a1[19]);
    v7 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v27, a2);
LABEL_41:
    md::OverlaysLogic::updateFoundationAssociation(a1, a2, v7);
    return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v29);
  }

  if (!std::operator==[abi:nn200100]<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>(&v29, v7))
  {
    if (v7 != &v29)
    {
      *(v7 + 32) = v31;
      std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<gdc::Registry *,void *> *>>(v7, v30);
    }

    goto LABEL_41;
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v29);
}

void sub_1B2F40C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t md::OverlaysLogic::updatePolygonOverlays(void)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v51 = 0u;
  v52 = 0u;
  v53 = 1065353216;
  v5 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
  v6 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v5, a2);
  v7 = gdc::Registry::storage<std::unordered_map<gdc::Registry*,std::vector<gdc::Entity>>>(*(a1 + 152));
  v8 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v7, a2);
  v9 = gdc::Registry::storage<md::overlayComponents::TileIsInView>(*(a1 + 152));
  v48 = v6;
  v10 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v9, a2);
  CanDisable = gdc::Registry::storage<md::overlayComponents::CanDisableDraping>(*(a1 + 152));
  v50 = a2;
  v12 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(CanDisable, a2);
  if (v10)
  {
    if (v8)
    {
      if (*(v8 + 24))
      {
        v13 = v12;
        v14 = gdc::Registry::getOrAdd<gdc::components::RegistryBridgeMap<gdc::Entity>>(*(a1 + 152), a2);
        v15 = *(v8 + 16);
        if (v15)
        {
          v16 = v14;
          do
          {
            v17 = v15[2];
            gdc::components::RegistryBridgeMap<gdc::Entity>::entities(buf, v16, v17);
            v18 = *buf;
            v19 = *&buf[8];
            for (i = *buf; i != v19; ++i)
            {
              if (v13)
              {
                v21 = *(a1 + 920);
              }

              else
              {
                v21 = 1;
              }

              v22 = *i;
              v23 = gdc::Registry::storage<md::components::Visibility>(v17);
              v54 = v21 & 1;
              gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v23, v22, &v54);
              v24 = *i;
              v25 = gdc::Registry::storage<md::components::VisibilityChanged>(v17);
              gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v25, v24);
            }

            if (v18)
            {
              operator delete(v18);
            }

            v15 = *v15;
          }

          while (v15);
        }
      }
    }
  }

  v26 = *(a1 + 160);
  if (v26 != (a1 + 168))
  {
    while (1)
    {
      v27 = gdc::Context::context<md::components::SharedTransformData>(v26[5]);
      if (!v27)
      {
        v35 = GEOGetVectorKitOverlaysLogicLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "transformData";
          *&buf[12] = 2080;
          *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/Overlays/OverlaysLogic.mm";
          v56 = 1024;
          v57 = 506;
          _os_log_impl(&dword_1B2754000, v35, OS_LOG_TYPE_ERROR, "Invalid SharedTransformData.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
        }

        goto LABEL_47;
      }

      v28 = v27;
      v29 = *(a3 + 88);
      if (v27[24] == 1)
      {
        geo::QuadTile::computeHash(v27);
        v28[24] = 0;
      }

      v30 = *(v28 + 2);
      if (*(v29 + 192))
      {
        v32 = *(v29 + 168);
        v41 = (*(v29 + 169) + ((v32 - 0x61C8864680B583EBLL) << 6) + ((v32 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v32 - 0x61C8864680B583EBLL);
        v42 = (*(v29 + 172) + (v41 << 6) + (v41 >> 2) - 0x61C8864680B583EBLL) ^ v41;
        v31 = (*(v29 + 176) + (v42 << 6) + (v42 >> 2) - 0x61C8864680B583EBLL) ^ v42;
        *(v29 + 184) = v31;
        *(v29 + 192) = 0;
      }

      else
      {
        v31 = *(v29 + 184);
        LODWORD(v32) = *(v29 + 168);
      }

      v33 = *v28;
      v34 = v30 == v31 && v33 == v32;
      if (v34 && v28[1] == *(v29 + 169) && *(v28 + 1) == *(v29 + 172) && *(v28 + 2) == *(v29 + 176))
      {
        break;
      }

      if (v33 != v32)
      {
        goto LABEL_47;
      }

      v36 = v28[1];
      v37 = *(v29 + 169);
      v38 = v36 - v37;
      if (v36 >= v37)
      {
        if (v36 == v37 && *(v28 + 1) == *(v29 + 172) && *(v28 + 2) == *(v29 + 176))
        {
          break;
        }
      }

      else if (*(v28 + 1) == *(v29 + 172) >> (v37 - v36) && *(v28 + 2) == *(v29 + 176) >> (v37 - v36))
      {
        break;
      }

      if (v37 >= v36)
      {
        if (v37 == v36 && *(v29 + 172) == *(v28 + 1) && *(v29 + 176) == *(v28 + 2))
        {
          break;
        }
      }

      else if (*(v29 + 172) == *(v28 + 1) >> v38 && *(v29 + 176) == *(v28 + 2) >> v38)
      {
        break;
      }

LABEL_47:
      v39 = v26[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = v26[2];
          v34 = *v40 == v26;
          v26 = v40;
        }

        while (!v34);
      }

      v26 = v40;
      if (v40 == (a1 + 168))
      {
        goto LABEL_55;
      }
    }

    std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__emplace_unique_key_args<gdc::Registry *,gdc::Registry * const&>(&v51, v26[5], v26 + 5);
    goto LABEL_47;
  }

LABEL_55:
  v43 = v48;
  if (!v48)
  {
    v45 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
    v44 = v50;
    gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::emplace<std::unordered_set<gdc::Registry *>&>(v45, v50, &v51);
    v46 = gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(*(a1 + 152));
    v43 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v46, v50);
LABEL_60:
    md::OverlaysLogic::updateFoundationAssociation(a1, v44, v43);
    return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v51);
  }

  v44 = v50;
  if (!std::operator==[abi:nn200100]<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>(&v51, v48))
  {
    if (v48 != &v51)
    {
      *(v48 + 32) = v53;
      std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<gdc::Registry *,void *> *>>(v48, v52);
    }

    goto LABEL_60;
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v51);
}

void sub_1B2F41148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void md::OverlaysLogic::pruneSurfaceTexturesForLevel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a1 + 80 * a2 + 40 * a3;
    v6 = *(*a4 + 48);
    v7 = a1 + 16 * a2 + 8 * a3 + 640;

    v6(a4, v7, v5 + 344);
  }

  else
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();
    geo::TaskQueue::async(v8, v9, v10);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<geo::QuadTile,gdc::Registry *>>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t *std::vector<std::pair<geo::QuadTile,gdc::Registry *>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = 0;
    do
    {
      v6 = v4 + v5;
      *(v6 + 24) = 0;
      *(v6 + 4) = *(v2 + v5 + 4);
      *v6 = *(v2 + v5);
      *(v6 + 16) = *(v2 + v5 + 16);
      *(v6 + 24) = *(v2 + v5 + 24);
      *(v6 + 32) = *(v2 + v5 + 32);
      v5 += 40;
    }

    while (v2 + v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

id GEOGetVectorKitOverlaysLogicLog(void)
{
  if (GEOGetVectorKitOverlaysLogicLog(void)::onceToken[0] != -1)
  {
    dispatch_once(GEOGetVectorKitOverlaysLogicLog(void)::onceToken, &__block_literal_global_32_17491);
  }

  v1 = GEOGetVectorKitOverlaysLogicLog(void)::log;

  return v1;
}

void ___ZL31GEOGetVectorKitOverlaysLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "OverlaysLogic");
  v1 = GEOGetVectorKitOverlaysLogicLog(void)::log;
  GEOGetVectorKitOverlaysLogicLog(void)::log = v0;
}

void _ZNSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__4NS_9allocatorISM_EEFvvEEclEv(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = off_1F2A2D550;
  v5 = 0;
  v1 = 0u;
  v2 = 0u;
  v3 = 0;
  operator new();
}

void sub_1B2F41520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18)
{
  std::__function::__value_func<void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::~__value_func[abi:nn200100](&a13);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::list<std::shared_ptr<ggl::IOSurfaceTexture>>::pop_front(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  v5 = v2[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  operator delete(v2);
}

void _ZNSt3__110__function6__funcIZZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEENK3__4clEvEUlRT_14VKOverlayLevelE_NS_9allocatorISQ_EEFvRKN3geo11_retain_ptrIU8__strongP9VKOverlayNST_16_retain_objc_arcENST_17_release_objc_arcENST_10_hash_objcENST_11_equal_objcEEESP_EEclES14_OSP_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32[12] = *MEMORY[0x1E69E9840];
  v25 = *a3;
  v28 = *(a1 + 8);
  v3 = [*(a2 + 8) customTileProvider];

  if (v3)
  {
    v4 = a2;
    v5 = [*(a2 + 8) areResourcesRequired];
    for (i = *(v28 + 80 * v25 + 40 * v5 + 360); i; v4 = a2)
    {
      v8 = *(i + 17) | 0x200000000;
      v30 = (*(i + 6) | (*(i + 5) << 32));
      v31 = v8;
      v9 = *(v4 + 8);
      [v9 didExitKey:&v30];

      i = *i;
    }

    v24 = v5;
    v10 = v28 + 48 * v25 + 24 * v5;
    v11 = *(v10 + 504);
    for (j = *(v10 + 512); v11 != j; v4 = a2)
    {
      v13 = *(v11 + 1) | 0x200000000;
      v30 = (*(v11 + 8) | (*(v11 + 4) << 32));
      v31 = v13;
      v14 = *(v4 + 8);
      [v14 didEnterKey:&v30 withFallback:*(v11 + 32)];

      v11 += 40;
    }

    v15 = v28 + 80 * v25 + 40 * v24;
    v16 = *(v15 + 208);
    if (v16)
    {
      if (!(v16 >> 60))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v16);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (*(v15 + 200))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(1uLL);
    }

    for (k = *(v15 + 200); k; k = *k)
    {
      LOBYTE(v6) = *(k + 17);
      exp2((**(a1 + 16) - v6));
      v32[3] = *(*(a1 + 32) + 16 * v25 + 8 * v24);
      v18 = k[6];
      v19 = *(v18 + 768);
      for (m = v18 + 760; v19 != m; v19 = *(v19 + 8))
      {
        v20 = *(v19 + 112);
        if (v20)
        {
          v27 = v19;
          memset(v32, 0, 24);
          v21 = v20[1] - *v20;
          if (v21)
          {
            v22 = 0x8E38E38E38E38E39 * (v21 >> 4);
            if (v22 < 0x1C71C71C71C71C8)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::OverlayTileData::OverlayTileResource::CustomTile>>(v22);
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v30 = v32;
          std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>::__destroy_vector::operator()[abi:nn200100](&v30);
          v19 = v27;
        }
      }
    }

    ++*(*(a1 + 32) + 16 * v25 + 8 * v24);
  }
}

void sub_1B2F42B4C(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::find<md::SurfaceKey>(void *a1, geo::QuadTile *this)
{
  v4 = md::FoundationKeyHash::operator()(this);
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

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v6 == v12)
    {
      if (std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>::operator()[abi:nn200100](i + 16, this))
      {
        return i;
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
  }

  return i;
}

{
  v4 = md::FoundationKeyHash::operator()(this);
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

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v6)
    {
      if (std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>::operator()[abi:nn200100](i + 16, this))
      {
        return i;
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
  }

  return i;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
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

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
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

void sub_1B2F43590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>::__destroy_vector::operator()[abi:nn200100](va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

unsigned __int8 *geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>::operator[](unsigned __int8 **a1, unsigned __int8 a2)
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
    v5 += 32;
    if (v5 == v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 == v4)
  {
LABEL_7:
    v28[0] = v28;
    v28[1] = v28;
    v28[2] = 0;
    v29 = a2;
    v30[0] = v30;
    v30[1] = v30;
    v30[2] = 0;
    if (v3 == v4)
    {
      goto LABEL_13;
    }

    v5 = v3;
    while (*v5 != a2)
    {
      v5 += 32;
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
        v8 = (v4 - v3) >> 5;
        if ((v8 + 1) >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v9 = v6 - v3;
        v10 = v9 >> 4;
        if (v9 >> 4 <= (v8 + 1))
        {
          v10 = v8 + 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFE0)
        {
          v11 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        v34 = a1;
        if (v11)
        {
          if (!(v11 >> 59))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v31 = 0;
        v32 = (32 * v8);
        v33 = (32 * v8);
        *v32 = a2;
        std::list<std::shared_ptr<ggl::IOSurfaceTexture>>::list((32 * v8 + 8), v30);
        *&v33 = v33 + 32;
        v12 = *a1;
        v13 = a1[1];
        v14 = &v32[*a1 - v13];
        if (*a1 != v13)
        {
          v15 = 0;
          do
          {
            v16 = &v14[v15];
            v17 = &v12[v15];
            *v16 = v12[v15];
            v18 = &v14[v15 + 8];
            *(v16 + 1) = v18;
            *(v16 + 2) = v18;
            *(v16 + 3) = 0;
            v19 = *&v12[v15 + 24];
            if (v19)
            {
              v21 = *(v17 + 1);
              v20 = *(v17 + 2);
              v22 = *(v21 + 8);
              v23 = *v20;
              *(v23 + 8) = v22;
              *v22 = v23;
              v24 = *v18;
              *(v24 + 8) = v20;
              *v20 = v24;
              *v18 = v21;
              *(v21 + 8) = v18;
              *(v16 + 3) = v19;
              *(v17 + 3) = 0;
            }

            v15 += 32;
          }

          while (&v12[v15] != v13);
          do
          {
            std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(v12 + 1);
            v12 += 32;
          }

          while (v12 != v13);
          v12 = *a1;
        }

        *a1 = v14;
        v25 = a1[2];
        v27 = v33;
        *(a1 + 1) = v33;
        *&v33 = v12;
        *(&v33 + 1) = v25;
        v31 = v12;
        v32 = v12;
        std::__split_buffer<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>::~__split_buffer(&v31);
        v7 = v27;
      }

      else
      {
        *v4 = a2;
        std::list<std::shared_ptr<ggl::IOSurfaceTexture>>::list(v4 + 1, v30);
        v7 = v4 + 32;
        a1[1] = v4 + 32;
      }

      a1[1] = v7;
      v5 = v7 - 32;
    }

    std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(v30);
    std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(v28);
  }

  return v5 + 8;
}

void sub_1B2F4380C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(v5);
  std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::OverlaysLogic::checkoutSurfaceTexture(unsigned int,unsigned char,unsigned short)::$_0,std::allocator<md::OverlaysLogic::checkoutSurfaceTexture(unsigned int,unsigned char,unsigned short)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t result, uint64_t *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = **(result + 8);
  if (v2)
  {
    ggl::Texture2D::vendImplicitLoadItem(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<md::OverlaysLogic::checkoutSurfaceTexture(unsigned int,unsigned char,unsigned short)::$_0,std::allocator<md::OverlaysLogic::checkoutSurfaceTexture(unsigned int,unsigned char,unsigned short)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_1F2A180F8;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<ggl::IOSurfaceTexture>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D7B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(uint64_t *a1)
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
        v6 = v2[3];
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

uint64_t *std::list<std::shared_ptr<ggl::IOSurfaceTexture>>::list(uint64_t *a1, void *a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a2[1] != a2)
  {
    operator new();
  }

  return a1;
}

uint64_t std::__split_buffer<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 4;
        std::__list_imp<std::shared_ptr<ggl::IOSurfaceTexture>>::clear(v4 - 3);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(v2 + 56);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::OverlayTileData::OverlayTileResource::CustomTile>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

__n128 _ZNKSt3__110__function6__funcIZZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEENK3__4clEvEUlRT_14VKOverlayLevelE_NS_9allocatorISQ_EEFvRKN3geo11_retain_ptrIU8__strongP9VKOverlayNST_16_retain_objc_arcENST_17_release_objc_arcENST_10_hash_objcENST_11_equal_objcEEESP_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18508;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__4NS_9allocatorISM_EEFvvEE7__cloneEPNS0_6__baseISP_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A184C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 36) = 0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__3NS_9allocatorISM_EEFvRNS_10unique_ptrINS_13unordered_mapINS2_10SurfaceKeyENSQ_ImNS_10shared_ptrIN3ggl16IOSurfaceTextureEEENS_4hashImEENS_8equal_toImEENSN_INS_4pairIKmSV_EEEEEENS2_14SurfaceKeyHashENS2_15SurfaceKeyEqualENSN_INS10_IKSR_S14_EEEEEENS_14default_deleteIS1A_EEEERKNS_13unordered_setIN3geo8QuadTileENS1G_12QuadTileHashENSY_IS1H_EENSN_IS1H_EEEEEE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18478;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__2NS_9allocatorISM_EEFvRNS_10unique_ptrINS_13unordered_mapINS2_10SurfaceKeyENSQ_ImNS_10shared_ptrIN3ggl16IOSurfaceTextureEEENS_4hashImEENS_8equal_toImEENSN_INS_4pairIKmSV_EEEEEENS2_14SurfaceKeyHashENS2_15SurfaceKeyEqualENSN_INS10_IKSR_S14_EEEEEENS_14default_deleteIS1A_EEEERKNS_13unordered_setIN3geo8QuadTileENS1G_12QuadTileHashENSY_IS1H_EENSN_IS1H_EEEEEEclES1E_S1N_(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::clear(*a2);

  std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::clear(v2 + 672);
}

void std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table((v1 + 7));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__2NS_9allocatorISM_EEFvRNS_10unique_ptrINS_13unordered_mapINS2_10SurfaceKeyENSQ_ImNS_10shared_ptrIN3ggl16IOSurfaceTextureEEENS_4hashImEENS_8equal_toImEENSN_INS_4pairIKmSV_EEEEEENS2_14SurfaceKeyHashENS2_15SurfaceKeyEqualENSN_INS10_IKSR_S14_EEEEEENS_14default_deleteIS1A_EEEERKNS_13unordered_setIN3geo8QuadTileENS1G_12QuadTileHashENSY_IS1H_EENSN_IS1H_EEEEEE7__cloneEPNS0_6__baseIS1O_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18430;
  a2[1] = v2;
  return result;
}

uint64_t gdc::Registry::storage<std::unordered_set<gdc::Registry*>>(uint64_t a1)
{
  v3 = 0x5D35DD6F80F2990ALL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x5D35DD6F80F2990AuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    v4 = a1[11];
  }

  else
  {
    v4 = a1[10] + 40 * ((v3 - a1[7]) >> 3);
  }

  if (v4 == a1[11])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__emplace_unique_key_args<gdc::Registry *,gdc::Registry * const&>(void *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }
}

uint64_t gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::emplace<std::unordered_set<gdc::Registry *>&>(void *a1, uint64_t a2, uint64_t a3)
{
  std::unordered_set<gdc::Registry *>::unordered_set(&v44, a3);
  v49 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v49);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v22 = a1[10];
      v23 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v22) >> 3);
      if (v23 + 1 > 0x666666666666666)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v22) >> 3);
      v25 = 2 * v24;
      if (2 * v24 <= v23 + 1)
      {
        v25 = v23 + 1;
      }

      if (v24 >= 0x333333333333333)
      {
        v26 = 0x666666666666666;
      }

      else
      {
        v26 = v25;
      }

      v53 = a1 + 10;
      if (v26)
      {
        if (v26 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v50 = 0;
      v51 = 40 * v23;
      v52 = 40 * v23;
      std::unordered_set<gdc::Registry *>::unordered_set(40 * v23, &v44);
      *&v52 = v52 + 40;
      v29 = a1[10];
      v30 = a1[11];
      v31 = v51 + v29 - v30;
      if (v29 != v30)
      {
        v32 = 0;
        do
        {
          v33 = v31 + v32;
          v34 = *(v29 + v32);
          *(v29 + v32) = 0;
          *v33 = v34;
          v35 = *(v29 + v32 + 16);
          *(v33 + 8) = *(v29 + v32 + 8);
          *(v29 + v32 + 8) = 0;
          *(v31 + v32 + 16) = v35;
          v36 = *(v29 + v32 + 24);
          *(v33 + 24) = v36;
          *(v33 + 32) = *(v29 + v32 + 32);
          if (v36)
          {
            v37 = *(v35 + 8);
            v38 = *(v33 + 8);
            if ((v38 & (v38 - 1)) != 0)
            {
              if (v37 >= v38)
              {
                v37 %= v38;
              }
            }

            else
            {
              v37 &= v38 - 1;
            }

            *(v34 + 8 * v37) = v31 + v32 + 16;
            *(v29 + v32 + 16) = 0;
            *(v29 + v32 + 24) = 0;
          }

          v32 += 40;
        }

        while (v29 + v32 != v30);
        do
        {
          v29 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v29) + 40;
        }

        while (v29 != v30);
      }

      v39 = a1[10];
      a1[10] = v31;
      v40 = a1[12];
      v43 = v52;
      *(a1 + 11) = v52;
      *&v52 = v39;
      *(&v52 + 1) = v40;
      v50 = v39;
      v51 = v39;
      std::__split_buffer<std::unordered_set<gdc::Registry *>>::~__split_buffer(&v50);
      v9 = v43;
    }

    else
    {
      std::unordered_set<gdc::Registry *>::unordered_set(a1[11], &v44);
      v9 = v8 + 40;
      a1[11] = v8 + 40;
    }

    a1[11] = v9;
    v27 = a1[31];
LABEL_44:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v27, &v49, 1);
    }

    return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v44);
  }

  v10 = a1[10] + 40 * ((v5 - a1[7]) >> 3);
  if (*(v10 + 24))
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      do
      {
        v12 = *v11;
        operator delete(v11);
        v11 = v12;
      }

      while (v12);
    }

    *(v10 + 16) = 0;
    v13 = *(v10 + 8);
    if (v13)
    {
      for (j = 0; j != v13; ++j)
      {
        *(*v10 + 8 * j) = 0;
      }
    }

    *(v10 + 24) = 0;
  }

  v15 = v44;
  v44 = 0;
  v16 = *v10;
  *v10 = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = v45;
  v18 = v46;
  *(v10 + 16) = v46;
  *(v10 + 8) = v17;
  v45 = 0;
  v19 = v47;
  *(v10 + 24) = v47;
  *(v10 + 32) = v48;
  if (v19)
  {
    v20 = *(v18 + 8);
    v21 = *(v10 + 8);
    if ((v21 & (v21 - 1)) != 0)
    {
      if (v20 >= v21)
      {
        v20 %= v21;
      }
    }

    else
    {
      v20 &= v21 - 1;
    }

    *(*v10 + 8 * v20) = v10 + 16;
    v46 = 0;
    v47 = 0;
  }

  v27 = a1[31];
  if (v10 == a1[11])
  {
    goto LABEL_44;
  }

  for (k = a1[16]; k; k = *k)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v27, &v49, 1);
  }

  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v44);
}

void sub_1B2F447CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::__split_buffer<std::unordered_set<gdc::Registry *>>::~__split_buffer(va1);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:nn200100]<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v2 = (a1 + 16);
  v3 = a2[1];
  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = *&v3 - 1;
LABEL_3:
  v2 = *v2;
  result = v2 == 0;
  if (v2)
  {
    if (v3)
    {
      v7 = v2[2];
      v8 = 0x9DDFEA08EB382D69 * ((8 * (v7 & 0x1FFFFFFF) + 8) ^ HIDWORD(v7));
      v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v7) ^ (v8 >> 47) ^ v8);
      v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
      if (v4.u32[0] > 1uLL)
      {
        v11 = v10;
        if (v10 >= *&v3)
        {
          v11 = v10 % *&v3;
        }
      }

      else
      {
        v11 = v10 & v5;
      }

      v12 = *(*a2 + 8 * v11);
      if (v12)
      {
        while (1)
        {
          v12 = *v12;
          if (!v12)
          {
            break;
          }

          v13 = v12[1];
          if (v10 == v13)
          {
            if (v12[2] == v7)
            {
              result = 0;
              if (v7 == v12[2])
              {
                goto LABEL_3;
              }

              return result;
            }
          }

          else
          {
            if (v4.u32[0] > 1uLL)
            {
              if (v13 >= *&v3)
              {
                v13 %= *&v3;
              }
            }

            else
            {
              v13 &= v5;
            }

            if (v13 != v11)
            {
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<gdc::Registry *,void *> *>>(void *a1, void *a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v6[2] = a2[2];
      v7 = *v6;
      std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__node_insert_multi(a1, v6);
      a2 = *a2;
      v6 = v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v8 = *v6;
      operator delete(v6);
      v6 = v8;
    }

    while (v8);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void md::OverlaysLogic::updateFoundationAssociation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 152);
  v7 = gdc::Registry::storage<std::unordered_map<gdc::Registry*,std::vector<gdc::Entity>>>(v6);
  v8 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v7, a2);
  if (v8)
  {
    goto LABEL_37;
  }

  v9 = gdc::Registry::storage<std::unordered_map<gdc::Registry*,std::vector<gdc::Entity>>>(v6);
  *__p = 0u;
  *v111 = 0u;
  v112 = 1065353216;
  v113 = a2;
  v10 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v9 + 4, &v113);
  if (v11)
  {
    v13 = v9[11];
    v12 = v9[12];
    if (v13 >= v12)
    {
      v20 = v9[10];
      v21 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v20) >> 3);
      if (v21 + 1 > 0x666666666666666)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v20) >> 3);
      v23 = 2 * v22;
      if (2 * v22 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      if (v22 >= 0x333333333333333)
      {
        v24 = 0x666666666666666;
      }

      else
      {
        v24 = v23;
      }

      v116 = v9 + 10;
      if (v24)
      {
        if (v24 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v114[0] = 0;
      v114[1] = (40 * v21);
      v115[0] = (40 * v21);
      v115[1] = 0;
      std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>::unordered_map(40 * v21, __p);
      v115[0] = v115[0] + 40;
      v25 = v9[10];
      v26 = v9[11];
      v27 = v114[1] + v25 - v26;
      if (v25 != v26)
      {
        v28 = 0;
        do
        {
          v29 = &v27[v28 * 8];
          v30 = v25[v28];
          v25[v28] = 0;
          *v29 = v30;
          v31 = v25[v28 + 2];
          *(v29 + 1) = v25[v28 + 1];
          v25[v28 + 1] = 0;
          *&v27[v28 * 8 + 16] = v31;
          v32 = v25[v28 + 3];
          *(v29 + 3) = v32;
          *(v29 + 8) = v25[v28 + 4];
          if (v32)
          {
            v33 = v31[1];
            v34 = *(v29 + 1);
            if ((v34 & (v34 - 1)) != 0)
            {
              if (v33 >= v34)
              {
                v33 %= v34;
              }
            }

            else
            {
              v33 &= v34 - 1;
            }

            v30[v33] = &v27[v28 * 8 + 16];
            v25[v28 + 2] = 0;
            v25[v28 + 3] = 0;
          }

          v28 += 5;
        }

        while (&v25[v28] != v26);
        do
        {
          v25 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(v25) + 5;
        }

        while (v25 != v26);
      }

      v14 = v5;
      v35 = v9[10];
      v9[10] = v27;
      v36 = v9[12];
      v106 = v115[0];
      *(v9 + 11) = *v115;
      v115[0] = v35;
      v115[1] = v36;
      v114[0] = v35;
      v114[1] = v35;
      std::__split_buffer<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::~__split_buffer(v114);
      v15 = v106;
    }

    else
    {
      std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>::unordered_map(v9[11], __p);
      v14 = v5;
      v15 = v13 + 40;
      v9[11] = v13 + 40;
    }

    v9[11] = v15;
    v18 = v9[31];
  }

  else
  {
    v14 = v5;
    v16 = v9[10] + 40 * ((v10 - v9[7]) >> 3);
    std::__hash_table<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>>>::clear(v16);
    __p[0] = 0;
    v17 = *v16;
    *v16 = 0;
    if (v17)
    {
      operator delete(v17);
    }

    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    __p[1] = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 1065353216;
    v18 = v9[31];
    if (v16 != v9[11])
    {
      for (i = v9[16]; i; i = *i)
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v18, &v113, 1);
      }

      goto LABEL_34;
    }
  }

  for (j = v9[22]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v18, &v113, 1);
  }

LABEL_34:
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(v111[0]);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v38 = gdc::Registry::storage<std::unordered_map<gdc::Registry*,std::vector<gdc::Entity>>>(v6);
  v8 = gdc::ComponentStorageWrapper<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::get(v38, a2);
  v5 = v14;
LABEL_37:
  v109 = v8;
  v39 = gdc::Registry::storage<std::vector<gdc::Registry*>>(*(v5 + 152));
  v40 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v39, a2);
  v41 = v40;
  if (*(a3 + 24))
  {
    *v114 = 0u;
    *v115 = 0u;
    LODWORD(v116) = 1065353216;
    v42 = *(a3 + 16);
    if (v42)
    {
      v103 = v40;
      v105 = v5;
      do
      {
        v43 = v42[2];
        v113 = v43;
        v108 = 0;
        v44 = gdc::Registry::storage<md::components::MeshInstance>(v43);
        v45 = gdc::Registry::storage<md::overlayComponents::Overlayable>(v43);
        v46 = v45;
        v47 = (v45 + 32);
        v49 = v44[7];
        v48 = v44[8];
        if (*(v45 + 64) - *(v45 + 56) >= (v48 - v49))
        {
          v50 = v44 + 4;
        }

        else
        {
          v50 = (v45 + 32);
        }

        if (v44 + 4 == v50)
        {
          __p[0] = &v108;
          __p[1] = v114;
          v111[0] = &v113;
          v111[1] = &v109;
          while (v49 != v48)
          {
            if (*(v46 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v47, *(v49 + 4)))
            {
              md::OverlaysLogic::updateFoundationAssociation(gdc::Entity,std::unordered_set<gdc::Registry *> &)::$_0::operator()(__p, *v49);
            }

            v49 += 8;
          }
        }

        v107 = v42;
        if (v47 == v50)
        {
          __p[0] = &v108;
          __p[1] = v114;
          v111[0] = &v113;
          v111[1] = &v109;
          v77 = *(v46 + 56);
          v78 = *(v46 + 64);
          while (v77 != v78)
          {
            if (v44[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v44 + 4, *(v77 + 4)))
            {
              v79 = *v77;
              geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v44 + 4, HIDWORD(*v77));
              md::OverlaysLogic::updateFoundationAssociation(gdc::Entity,std::unordered_set<gdc::Registry *> &)::$_0::operator()(__p, v79);
            }

            v77 += 8;
          }
        }

        if (*(v105 + 922) == 1 && v108 == 0)
        {
          v52 = v113;
          v53 = gdc::Registry::storage<md::components::MeshInstance>(v113);
          v54 = gdc::Registry::storage<md::overlayComponents::OverlayableFallback>(v52);
          v55 = v54;
          v56 = (v54 + 32);
          v58 = v53[7];
          v57 = v53[8];
          if (*(v54 + 64) - *(v54 + 56) >= (v57 - v58))
          {
            v59 = v53 + 4;
          }

          else
          {
            v59 = (v54 + 32);
          }

          v104 = v59;
          if (v53 + 4 == v59 && v58 != v57)
          {
            do
            {
              if (*(v55 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v56, *(v58 + 1)))
              {
                v61 = *v58;
                __p[0] = &v113;
                v62 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__emplace_unique_key_args<gdc::Registry *,std::piecewise_construct_t const&,std::tuple<gdc::Registry * const&>,std::tuple<>>(v114, v113, __p);
                v63 = v62;
                v65 = v62[4];
                v64 = v62[5];
                if (v65 >= v64)
                {
                  v67 = v62[3];
                  v68 = (v65 - v67) >> 3;
                  if ((v68 + 1) >> 61)
                  {
LABEL_116:
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v69 = v64 - v67;
                  v70 = v69 >> 2;
                  if (v69 >> 2 <= (v68 + 1))
                  {
                    v70 = v68 + 1;
                  }

                  if (v69 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v71 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v71 = v70;
                  }

                  if (v71)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v71);
                  }

                  v72 = (8 * v68);
                  *v72 = v61;
                  v66 = 8 * v68 + 8;
                  v73 = v63[3];
                  v74 = v63[4] - v73;
                  v75 = v72 - v74;
                  memcpy(v72 - v74, v73, v74);
                  v76 = v63[3];
                  v63[3] = v75;
                  v63[4] = v66;
                  v63[5] = 0;
                  if (v76)
                  {
                    operator delete(v76);
                  }
                }

                else
                {
                  *v65 = v61;
                  v66 = (v65 + 1);
                }

                v63[4] = v66;
                std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__erase_unique<gdc::Registry *>(v109, v113);
              }

              ++v58;
            }

            while (v58 != v57);
          }

          if (v56 == v104)
          {
            v80 = *(v55 + 56);
            v81 = *(v55 + 64);
            while (v80 != v81)
            {
              if (v53[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v53 + 4, *(v80 + 1)))
              {
                v82 = *v80;
                geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v53 + 4, HIDWORD(*v80));
                __p[0] = &v113;
                v83 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__emplace_unique_key_args<gdc::Registry *,std::piecewise_construct_t const&,std::tuple<gdc::Registry * const&>,std::tuple<>>(v114, v113, __p);
                v84 = v83;
                v86 = v83[4];
                v85 = v83[5];
                if (v86 >= v85)
                {
                  v88 = v83[3];
                  v89 = (v86 - v88) >> 3;
                  if ((v89 + 1) >> 61)
                  {
                    goto LABEL_116;
                  }

                  v90 = v85 - v88;
                  v91 = v90 >> 2;
                  if (v90 >> 2 <= (v89 + 1))
                  {
                    v91 = v89 + 1;
                  }

                  if (v90 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v92 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v92 = v91;
                  }

                  if (v92)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v92);
                  }

                  v93 = (8 * v89);
                  *v93 = v82;
                  v87 = 8 * v89 + 8;
                  v94 = v84[3];
                  v95 = v84[4] - v94;
                  v96 = v93 - v95;
                  memcpy(v93 - v95, v94, v95);
                  v97 = v84[3];
                  v84[3] = v96;
                  v84[4] = v87;
                  v84[5] = 0;
                  if (v97)
                  {
                    operator delete(v97);
                  }
                }

                else
                {
                  *v86 = v82;
                  v87 = (v86 + 1);
                }

                v84[4] = v87;
                std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__erase_unique<gdc::Registry *>(v109, v113);
              }

              ++v80;
            }
          }
        }

        v42 = *v107;
      }

      while (*v107);
      v8 = v109;
      v41 = v103;
    }

    std::vector<md::Label *>::reserve(v41, v8[3]);
    for (k = v109 + 2; ; std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>(v41, k + 2))
    {
      k = *k;
      if (!k)
      {
        break;
      }
    }

    v99 = v109;
    if (v109 != v114)
    {
      *(v109 + 8) = v116;
      std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *> *>>(v99, v115[0]);
    }

    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(v115[0]);
    v100 = v114[0];
    v114[0] = 0;
    if (v100)
    {
      operator delete(v100);
    }
  }

  else
  {
    v101 = v8[3];
    if (v101)
    {
      std::vector<md::Label *>::reserve(v40, v101);
      for (m = v8[2]; m; m = *m)
      {
        std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>(v41, m + 2);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>>>::clear(v8);
    }
  }
}

void sub_1B2F45218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  std::__split_buffer<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::~__split_buffer(&a23);
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(a19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::overlayComponents::Overlayable>(uint64_t a1)
{
  v3 = 0x41A3BFA74D47A0E8;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x41A3BFA74D47A0E8uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void md::OverlaysLogic::updateFoundationAssociation(gdc::Entity,std::unordered_set<gdc::Registry *> &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  ++*v5;
  v23 = *(a1 + 16);
  v6 = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__emplace_unique_key_args<gdc::Registry *,std::piecewise_construct_t const&,std::tuple<gdc::Registry * const&>,std::tuple<>>(v4, *v23, &v23);
  v7 = v6;
  v9 = v6[4];
  v8 = v6[5];
  if (v9 >= v8)
  {
    v11 = v6[3];
    v12 = (v9 - v11) >> 3;
    if ((v12 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v8 - v11;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v15);
    }

    v16 = (8 * v12);
    *v16 = a2;
    v10 = 8 * v12 + 8;
    v17 = v7[3];
    v18 = v7[4] - v17;
    v19 = v16 - v18;
    memcpy(v16 - v18, v17, v18);
    v20 = v7[3];
    v7[3] = v19;
    v7[4] = v10;
    v7[5] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v9 = a2;
    v10 = (v9 + 1);
  }

  v7[4] = v10;
  v21 = **(a1 + 24);
  v22 = **(a1 + 16);

  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__erase_unique<gdc::Registry *>(v21, v22);
}

uint64_t gdc::Registry::storage<md::overlayComponents::OverlayableFallback>(uint64_t a1)
{
  v3 = 0x974739D36332BF1ELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x974739D36332BF1ELL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void *std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__emplace_unique_key_args<gdc::Registry *,std::piecewise_construct_t const&,std::tuple<gdc::Registry * const&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
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
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__erase_unique<gdc::Registry *>(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
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

    v9 = *a1;
    v10 = *(*a1 + 8 * v8);
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
              if (v16 == a1 + 2)
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
                  *(*a1 + 8 * v20) = v16;
                  v19 = *v11;
                }
              }

              *v16 = v19;
              *v11 = 0;
              --a1[3];
              std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *>>>::operator()[abi:nn200100](1, v11);
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::OverlayableFallback>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::OverlayableFallback>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::OverlayableFallback>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::Overlayable>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::Overlayable>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::Overlayable>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
    v7 = 0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v6 >> 47) ^ v6);
    v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    v9 = *(a1 + 8);
    if (!*&v9)
    {
      goto LABEL_18;
    }

    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= *&v9)
      {
        v11 = v8 % *&v9;
      }
    }

    else
    {
      v11 = v8 & (*&v9 - 1);
    }

    v12 = *(*a1 + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        break;
      }

      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v9)
        {
          v14 %= *&v9;
        }
      }

      else
      {
        v14 &= *&v9 - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_18;
      }

LABEL_17:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_18;
      }
    }

    if (v13[2] != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t std::__split_buffer<std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table((i - 40));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unordered_set<gdc::Registry *>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__emplace_unique_key_args<gdc::Registry *,gdc::Registry * const&>(a1, i[2], i + 2);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unordered_set<gdc::Registry *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 40 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    if (v6 != v7 - 40)
    {
      *(v6 + 32) = *(v7 - 8);
      std::__hash_table<gdc::Registry *,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,std::allocator<gdc::Registry *>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<gdc::Registry *,void *> *>>(v6, *(v7 - 24));
      v7 = a1[11];
    }

    a1[11] = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v7 - 40);
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::unordered_set<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<std::unordered_set<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<std::unordered_set<gdc::Registry *>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::unordered_set<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

__n128 std::__function::__func<md::OverlaysLogic::updateOverlaysResources(void)::$_0,std::allocator<md::OverlaysLogic::updateOverlaysResources(void)::$_0>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18080;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::find<geo::QuadTile>(void *a1, geo::QuadTile *this)
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

  for (i = *v9; i; i = *i)
  {
    v11 = *(i + 1);
    if (v5 == v11)
    {
      if (std::equal_to<geo::QuadTile>::operator()[abi:nn200100](i + 16, this))
      {
        return i;
      }
    }

    else
    {
      if (v7 > 1)
      {
        if (v11 >= *&v4)
        {
          v11 %= *&v4;
        }
      }

      else
      {
        v11 &= *&v4 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return i;
}

__n128 std::__function::__func<md::OverlaysLogic::updateVisibleTiles(md::LayoutContext const&)::$_0,std::allocator<md::OverlaysLogic::updateVisibleTiles(md::LayoutContext const&)::$_0>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18038;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>(uint64_t a1)
{
  v3 = 0x835FA63A3E4A7413;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x835FA63A3E4A7413);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>::each<std::function<void ()(gdc::Entity)>>(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v7, a2);
  if (v8)
  {
    if (v8 == v7)
    {
      v10 = v9;
      (*(*v8 + 24))();
    }

    else
    {
      v10 = v8;
      v8 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(v3 + 64);
  while (v4 != v5)
  {
    std::function<void ()(gdc::Entity)>::operator()(v10, *v4++);
  }

  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v9);
  return std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v7);
}

void sub_1B2F46A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>(uint64_t a1)
{
  v3 = 0x7C0BC22858AB748ALL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x7C0BC22858AB748AuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>::each<std::function<void ()(gdc::Entity)>>(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v7, a2);
  if (v8)
  {
    if (v8 == v7)
    {
      v10 = v9;
      (*(*v8 + 24))();
    }

    else
    {
      v10 = v8;
      v8 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(v3 + 64);
  while (v4 != v5)
  {
    std::function<void ()(gdc::Entity)>::operator()(v10, *v4++);
  }

  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v9);
  return std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v7);
}

void sub_1B2F46D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>(uint64_t a1)
{
  v3 = 0x9E43BC98CDFB9D64;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x9E43BC98CDFB9D64);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::RegistryView<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>::each<std::function<void ()(gdc::Entity)>>(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(gdc::Entity)>::__value_func[abi:nn200100](v7, a2);
  if (v8)
  {
    if (v8 == v7)
    {
      v10 = v9;
      (*(*v8 + 24))();
    }

    else
    {
      v10 = v8;
      v8 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v3 = *a1;
  v4 = *(*a1 + 56);
  v5 = *(v3 + 64);
  while (v4 != v5)
  {
    std::function<void ()(gdc::Entity)>::operator()(v10, *v4++);
  }

  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v9);
  return std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](v7);
}

void sub_1B2F46FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va1);
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)0>>(uint64_t a1)
{
  v3 = 0xD0623BC7489D09BBLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xD0623BC7489D09BBLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)2>>(uint64_t a1)
{
  v3 = 0x43549FEE549D79F2;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x43549FEE549D79F2uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>(uint64_t a1)
{
  v3 = 0x5AE6AA63834E6144;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x5AE6AA63834E6144uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t std::function<void ()(gdc::Entity)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v5);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>::contains(v3, v4);
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)2>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)2>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)2>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)0>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)0>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)0>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)21>>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>>::~ComponentStorageWrapper(uint64_t a1)
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

void std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_3,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_3>,void ()(gdc::Entity)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = gdc::Registry::storage<md::overlayComponents::Overlayable>(**(a1 + 8));

  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v3, v2);
}

uint64_t std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_3,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_3>,void ()(gdc::Entity)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18218;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_2,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_2>,void ()(gdc::Entity)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = gdc::Registry::storage<md::overlayComponents::OverlayableFallback>(**(a1 + 8));
  v16 = v2;
  v4 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(v3 + 4, &v16);
  if (v5)
  {
    v6 = v3[11];
    v7 = v3[12];
    if (v6 >= v7)
    {
      v11 = v3[10];
      v12 = v6 - v11 + 1;
      if (v12 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = v7 - v11;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        operator new();
      }

      v8 = v6 - v11 + 1;
      memcpy(0, v11, v6 - v11);
      v3[10] = 0;
      v3[11] = v8;
      v3[12] = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      v8 = v6 + 1;
    }

    v3[11] = v8;
    v9 = v3[31];
    goto LABEL_19;
  }

  v9 = v3[31];
  if (v3[10] + ((v4 - v3[7]) >> 3) == v3[11])
  {
LABEL_19:
    for (i = v3[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v9, &v16, 1);
    }

    return;
  }

  for (j = v3[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v9, &v16, 1);
  }
}

uint64_t std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_2,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_2>,void ()(gdc::Entity)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A181D0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_1,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_1>,void ()(gdc::Entity)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = gdc::Registry::storage<md::overlayComponents::Overlayable>(**(a1 + 8));

  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v3, v2);
}

uint64_t std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_1,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_1>,void ()(gdc::Entity)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18188;
  a2[1] = v2;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
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
      if (*(result + 4) == a3)
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

__n128 _ZNKSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__1NS_9allocatorISM_EEFv14VKOverlayLevel33VKOverlayResourceFallbackableModeEE7__cloneEPNS0_6__baseISR_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A183E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::__deallocate_node(char *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = (v1 + 24);
      std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>::__destroy_vector::operator()[abi:nn200100](&v3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__0NS_9allocatorISM_EEFv14VKOverlayLevel33VKOverlayResourceFallbackableModeEE7__cloneEPNS0_6__baseISR_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A183A0;
  a2[1] = v2;
  return result;
}

uint64_t md::Logic<md::OverlaysLogic,md::OverlaysContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xADE8F13E6C18D970 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x9F2276D081C2CB20);
    if (v8 && (v9 = v8[5], *(v9 + 8) == 0x9F2276D081C2CB20))
    {
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x8BD499FBD96FBB9ELL);
    if (v11 && (v12 = v11[5], *(v12 + 8) == 0x8BD499FBD96FBB9ELL))
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = 0;
    }

    v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x1AF456233693CD46uLL);
    if (v14 && (v15 = v14[5], *(v15 + 8) == 0x1AF456233693CD46))
    {
      v16 = *(v15 + 32);
    }

    else
    {
      v16 = 0;
    }

    v17 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0xA8300AA8F44B09FFLL)[5] + 32);
    v18[0] = v10;
    v18[1] = v13;
    v18[2] = v16;
    v18[3] = v17;
    return (*(*v6 + 160))(v6, a2, v18, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::OverlaysContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::OverlaysContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::OverlaysContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::OverlaysContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A186B8;
  v2 = a1[4];
  if (v2)
  {
    v3 = v2[27];
    if (v3)
    {
      v2[28] = v3;
      operator delete(v3);
    }

    v4 = v2[23];
    if (v4)
    {
      v2[24] = v4;
      operator delete(v4);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 14));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 5));
    v5 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v5, 0x10A0C4054AB8E80);
  }

  return a1;
}

void md::OverlaysLogic::didBecomeInactive(md::OverlaysLogic *this)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 93);
  if (v2)
  {
    v5[0] = &unk_1F2A18628;
    v5[3] = v5;
    geo::TaskQueue::barrierSync(v2, v5);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
  }

  md::OverlayContainer::flushCommandQueue(*(this + 89));
  v4[0] = &unk_1F2A18670;
  v4[1] = this;
  v4[3] = v4;
  md::OverlaysLogic::_forEachOverlayLevelAndFallback(v4, v3);
  std::__function::__value_func<void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::~__value_func[abi:nn200100](v4);
  std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::clear(this + 672);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>>>::clear(this + 600);
}

void sub_1B2F489C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::OverlaysLogic::didBecomeInactive(void)::$_1,std::allocator<md::OverlaysLogic::didBecomeInactive(void)::$_1>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18670;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::OverlaysLogic::reset(void)::$_1,std::allocator<md::OverlaysLogic::reset(void)::$_1>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A185E0;
  a2[1] = v2;
  return result;
}

void md::OverlaysLogic::~OverlaysLogic(md::OverlaysLogic *this)
{
  md::OverlaysLogic::~OverlaysLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  v22[4] = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A17D48;
  v2 = *(this + 93);
  if (v2)
  {
    v22[0] = &unk_1F2A17FC0;
    v22[3] = v22;
    geo::TaskQueue::barrierSync(v2, v22);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v22);
  }

  if (*(this + 15))
  {
    MapsFeature_RemoveBlockListener();
    v3 = *(this + 15);
    *(this + 15) = 0;
  }

  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(this + 118);
  v4 = *(this + 117);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 840);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 760);
  v5 = *(this + 90);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::~__hash_table(this + 672);
  v6 = (this + 664);
  for (i = 672; i != 640; i -= 16)
  {
    v8 = -16;
    v9 = v6;
    do
    {
      std::unique_ptr<std::unordered_map<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,std::allocator<std::pair<md::SurfaceKey const,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>>::reset[abi:nn200100](v9--, 0);
      v8 += 8;
    }

    while (v8);
    v6 -= 2;
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 75);
  v10 = this + 584;
  for (j = 600; j != 504; j -= 48)
  {
    v12 = -48;
    v13 = v10;
    do
    {
      v14 = *(v13 - 1);
      if (v14)
      {
        *v13 = v14;
        operator delete(v14);
      }

      v13 -= 3;
      v12 += 24;
    }

    while (v12);
    v10 -= 48;
  }

  v15 = this + 464;
  do
  {
    v16 = -80;
    v17 = v15;
    do
    {
      v17 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v17) - 40;
      v16 += 40;
    }

    while (v16);
    j -= 80;
    v15 -= 80;
  }

  while (j != 344);
  v18 = this + 304;
  do
  {
    v19 = -80;
    v20 = v18;
    do
    {
      v20 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::~__hash_table(v20) - 40;
      v19 += 40;
    }

    while (v19);
    j -= 80;
    v18 -= 80;
  }

  while (j != 184);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 21));
  v21 = *(this + 18);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B2F48E94(_Unwind_Exception *a1)
{
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v1 + 944));
  v3 = *(v1 + 936);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 840);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(v1 + 760);
  v4 = *(v1 + 720);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::~__hash_table(v1 + 672);
  v5 = (v1 + 664);
  for (i = 672; i != 640; i -= 16)
  {
    v7 = -16;
    v8 = v5;
    do
    {
      std::unique_ptr<std::unordered_map<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,std::allocator<std::pair<md::SurfaceKey const,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>>::reset[abi:nn200100](v8--, 0);
      v7 += 8;
    }

    while (v7);
    v5 -= 2;
  }

  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((v1 + 600));
  v9 = (v1 + 584);
  v10 = 600;
  while (1)
  {
    v11 = -48;
    v12 = v9;
    do
    {
      v13 = *(v12 - 1);
      if (v13)
      {
        *v12 = v13;
        operator delete(v13);
      }

      v12 -= 3;
      v11 += 24;
    }

    while (v11);
    v10 -= 48;
    v9 -= 6;
    if (v10 == 504)
    {
      v14 = v1 + 464;
      do
      {
        v15 = -80;
        v16 = v14;
        do
        {
          v16 = std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v16) - 40;
          v15 += 40;
        }

        while (v15);
        v10 -= 80;
        v14 -= 80;
      }

      while (v10 != 344);
      v17 = v1 + 304;
      do
      {
        v18 = -80;
        v19 = v17;
        do
        {
          v19 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::OverlayTileData>>>>::~__hash_table(v19) - 40;
          v18 += 40;
        }

        while (v18);
        v10 -= 80;
        v17 -= 80;
      }

      while (v10 != 184);
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 168));
      v20 = *(v1 + 144);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }

      *v1 = off_1F2A578C0;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
      _Unwind_Resume(a1);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void md::OverlaysContext::foundationEntitiesInRegistry(md::OverlaysContext *this, gdc::Registry *a2, uint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v6 = gdc::Registry::storage<md::components::MeshInstance>(a3);
  v7 = gdc::Registry::storage<md::overlayComponents::Overlayable>(a3);
  v8 = v7;
  v9 = (v7 + 32);
  v10 = v6[7];
  v11 = v6[8];
  if (*(v7 + 64) - *(v7 + 56) >= (v11 - v10))
  {
    v12 = v6 + 4;
  }

  else
  {
    v12 = (v7 + 32);
  }

  v29 = a2;
  if (v6 + 4 != v12 || v10 == v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      if (*(v8 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v9, *(v10 + 1)))
      {
        v30 = *v10;
        std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this, &v30);
        ++v13;
      }

      ++v10;
    }

    while (v10 != v11);
  }

  if (v9 == v12)
  {
    v24 = *(v8 + 56);
    v23 = *(v8 + 64);
    while (v24 != v23)
    {
      if (v6[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v6 + 4, *(v24 + 1)))
      {
        v25 = *v24;
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v6 + 4, HIDWORD(*v24));
        v30 = v25;
        std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this, &v30);
        ++v13;
      }

      ++v24;
    }
  }

  if (*(v29 + 208) == 1 && v13 == 0)
  {
    v15 = gdc::Registry::storage<md::components::MeshInstance>(a3);
    v16 = gdc::Registry::storage<md::overlayComponents::OverlayableFallback>(a3);
    v17 = v16;
    v18 = (v16 + 32);
    v20 = v15[7];
    v19 = v15[8];
    if (*(v16 + 64) - *(v16 + 56) >= (v19 - v20))
    {
      v21 = v15 + 4;
    }

    else
    {
      v21 = (v16 + 32);
    }

    if (v15 + 4 == v21 && v20 != v19)
    {
      do
      {
        if (*(v17 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v18, *(v20 + 1)))
        {
          v30 = *v20;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this, &v30);
        }

        ++v20;
      }

      while (v20 != v19);
    }

    if (v18 == v21)
    {
      v27 = *(v17 + 56);
      v26 = *(v17 + 64);
      while (v27 != v26)
      {
        if (v15[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v15 + 4, *(v27 + 1)))
        {
          v28 = *v27;
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v15 + 4, HIDWORD(*v27));
          v30 = v28;
          std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](this, &v30);
        }

        ++v27;
      }
    }
  }
}

void sub_1B2F49308(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN2md13OverlaysLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPN3geo9TaskQueueEPN3gdc15ResourceManagerEPU28objcproto17OS_dispatch_queue8NSObjectRKNS2_INS_17RunLoopControllerEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 32);
  if (a4)
  {
    result = MapsFeature_IsAvailable_ElevatedPolygons();
  }

  else
  {
    result = 0;
  }

  *(v4 + 128) = result;
  return result;
}

uint64_t std::__function::__func<md::OverlaysLogic::OverlaysLogic(std::shared_ptr<md::RegistryManager> const&,geo::TaskQueue *,gdc::ResourceManager *,NSObject  {objcproto17OS_dispatch_queue}*,std::shared_ptr<md::RunLoopController> const&)::$_0,std::allocator<md::OverlaysLogic::OverlaysLogic(std::shared_ptr<md::RegistryManager> const&,geo::TaskQueue *,gdc::ResourceManager *,NSObject  {objcproto17OS_dispatch_queue}*,std::shared_ptr<md::RunLoopController> const&)::$_0>,void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A17F78;
  a2[1] = v2;
  return result;
}

uint64_t *std::unique_ptr<anonymous namespace::PendingPathAnimation>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::~__hash_table(v2 + 2160);
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v2 + 320);
    v3 = *(v2 + 120);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2;
    std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v4);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<anonymous namespace::PathAnimationDescription>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 120);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2;
    std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v4);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<anonymous namespace::BumpAnimator>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    [*(v2 + 64) stop];
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v2 + 144);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2 + 112);
    std::__function::__value_func<void ()(geo::Geocentric<double> const&)>::~__value_func[abi:nn200100](v2 + 80);
    *(v2 + 56) = &unk_1F2A3EF58;

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B2F4981C(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v1 + 144);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v1 + 112);
  std::__function::__value_func<void ()(geo::Geocentric<double> const&)>::~__value_func[abi:nn200100](v1 + 80);
  *(v1 + 56) = &unk_1F2A3EF58;

  _Unwind_Resume(a1);
}

void anonymous namespace::PointSegment::~PointSegment(_anonymous_namespace_::PointSegment *this)
{
  v2 = *(this + 488);
  if (v2 != *(this + 490))
  {
    free(v2);
  }

  v3 = *(this + 485);
  if (v3)
  {
    *(this + 486) = v3;
    operator delete(v3);
  }

  v4 = *(this + 482);
  if (v4)
  {
    *(this + 483) = v4;
    operator delete(v4);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(this + 2080);
  v5 = *(this + 239);
  if (v5 != *(this + 241))
  {
    free(v5);
  }

  v6 = *(this + 236);
  if (v6)
  {
    *(this + 237) = v6;
    operator delete(v6);
  }

  v7 = *(this + 233);
  if (v7)
  {
    *(this + 234) = v7;
    operator delete(v7);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(this + 88);
}

uint64_t std::__function::__value_func<void ()(geo::Geocentric<double> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B2F49C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v17 - 72));

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_40c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE48c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void sub_1B2F4A4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a43 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a30 == 1)
  {
    *(v44 - 104) = v43;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100]((v44 - 104));
  }

  _Unwind_Resume(exception_object);
}

void std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 249;
        std::allocator_traits<std::allocator<md::mun::PointView>>::destroy[abi:nn200100]<md::mun::PointView,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator_traits<std::allocator<md::mun::PointView>>::destroy[abi:nn200100]<md::mun::PointView,void,0>(void *a1)
{
  v2 = a1[239];
  if (v2 != a1[241])
  {
    free(v2);
  }

  v3 = a1[236];
  if (v3)
  {
    a1[237] = v3;
    operator delete(v3);
  }

  v4 = a1[233];
  if (v4)
  {
    a1[234] = v4;
    operator delete(v4);
  }

  return geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((a1 + 11));
}

void sub_1B2F4AA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double gdc::CameraFrame<geo::Radians,double>::toRigidTransformEcefNoOffset(uint64_t a1, double *a2)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = __sincos_stret(*a2);
  v7 = 6378137.0 / sqrt(v6.__sinval * v6.__sinval * -0.00669437999 + 1.0);
  v8 = (v7 + v5) * v6.__cosval;
  v9 = __sincos_stret(v4);
  *&v22 = v8 * v9.__cosval;
  *(&v22 + 1) = v8 * v9.__sinval;
  v23 = (v5 + v7 * 0.99330562) * v6.__sinval;
  gdc::CameraFrame<geo::Radians,double>::createLocalEcefFrame(v20, &v22);
  v10 = a2[4];
  v11 = a2[6];
  v12 = __sincos_stret(a2[5] * 0.5);
  v13 = __sincos_stret(v10 * -0.5);
  v14 = __sincos_stret(v11 * -0.5);
  v19[0] = v13.__sinval * v12.__cosval * v14.__cosval + v13.__cosval * v12.__sinval * v14.__sinval;
  v19[1] = -(v13.__sinval * v12.__cosval * v14.__sinval - v13.__cosval * v12.__sinval * v14.__cosval);
  v19[2] = -(v14.__cosval * v13.__sinval * v12.__sinval - v13.__cosval * v12.__cosval * v14.__sinval);
  v19[3] = v13.__cosval * v12.__cosval * v14.__cosval + v14.__sinval * v12.__sinval * v13.__sinval;
  gm::Quaternion<double>::operator*(&v16, &v21, v19);
  *a1 = v22;
  *(a1 + 16) = v23;
  *(a1 + 24) = v16;
  *(a1 + 40) = v17;
  result = v18;
  *(a1 + 48) = v18;
  return result;
}

void sub_1B2F4D598(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(location, a9);
  STACK[0x988] = v10;
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v11 + 88);
  if (STACK[0x9F8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x9F8]);
  }

  STACK[0x880] = &STACK[0x980];
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&STACK[0x880]);
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v12 + 192);
  objc_destroyWeak(location);

  _Unwind_Resume(a1);
}

void std::vector<md::mun::CollectionPoint>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 1864;
        geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((v3 - 1776));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

double geo::RigidTransform<double,float>::operator*(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    *&v9[i] = *(a1 + 24 + 4 * i);
  }

  *&v9[3] = *(a1 + 36);
  v4 = gm::Quaternion<double>::operator*(v9, a2);
  v5 = 0;
  *v10 = v4;
  v10[1] = v6;
  v10[2] = v7;
  do
  {
    *(&v11 + v5 * 8) = *&v10[v5] + *(a1 + v5 * 8);
    ++v5;
  }

  while (v5 != 3);
  return v11;
}

void anonymous namespace::PathAnimator::PathAnimator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  __src[293] = *MEMORY[0x1E69E9840];
  *v9 = 0;
  *(v9 + 8) = 0;
  v12 = *v11;
  v13 = v11[2];
  *(v9 + 32) = v11[1];
  *(v9 + 48) = v13;
  *(v9 + 16) = v12;
  v14 = v11[3];
  v15 = v11[4];
  v16 = v11[5];
  *(v9 + 112) = *(v11 + 48);
  *(v9 + 80) = v15;
  *(v9 + 96) = v16;
  *(v9 + 64) = v14;
  *(v9 + 120) = *(v11 + 13);
  *(v9 + 128) = *(v11 + 14);
  *(v9 + 136) = *(v11 + 15);
  *(v9 + 144) = *(v11 + 16);
  *(v9 + 152) = *(v11 + 17);
  *(v9 + 160) = *(v11 + 18);
  *(v9 + 168) = *(v11 + 19);
  v17 = v11[11];
  *(v9 + 176) = v11[10];
  *(v9 + 192) = v17;
  *(v9 + 208) = -1;
  *(v9 + 216) = v18;
  *(v9 + 217) = v19;
  *(v9 + 218) = a9;
  v21 = *v20;
  *(v9 + 240) = *(v20 + 2);
  *(v9 + 224) = v21;
  v23 = *v22;
  *(v9 + 264) = *(v22 + 2);
  *(v9 + 248) = v23;
  v24 = *(v22 + 24);
  *(v9 + 288) = *(v22 + 5);
  *(v9 + 272) = v24;
  *(v9 + 296) = *(v22 + 6);
  *(v9 + 312) = 0;
  *(v9 + 320) = 0;
  *(v9 + 304) = v9 + 312;
  *(v9 + 352) = 0;
  *(v9 + 384) = 0u;
  *(v9 + 400) = 0u;
  *(v9 + 416) = 0u;
  *(v9 + 464) = 0;
  v99 = (v9 + 504);
  v100 = v9;
  *(v9 + 552) = 0;
  *(v9 + 584) = 0;
  *(v9 + 496) = 0u;
  *(v9 + 512) = 0u;
  *(v9 + 592) = &unk_1F2A18A60;
  *(v9 + 600) = 0;
  *(v9 + 616) = 0u;
  *(v9 + 632) = 0u;
  *(v9 + 648) = 0;
  v25 = v10[1];
  if (v25 != *v10)
  {
    v26 = 0x63FB9AEB1FDCD759 * ((v25 - *v10) >> 3);
    if (v26 <= 0x20E64C148FEF8CLL)
    {
      __src[4] = v99;
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::PointView>>(v26);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v27 = *(v9 + 512);
  v101 = 0;
  v102 = 0;
  v103 = 0;
  std::vector<gm::Matrix<double,3,1>>::reserve(&v101, 0x367D6E020E64C149 * ((v27 - *v99) >> 3));
  v28 = *(v100 + 504);
  v29 = *(v100 + 512);
  if (v28 == v29)
  {
    v30 = v102;
  }

  else
  {
    v30 = v102;
    do
    {
      if (v30 >= v103)
      {
        v32 = v101;
        v33 = v30 - v101;
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v101) >> 3) + 1;
        if (v34 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (0x5555555555555556 * ((v103 - v101) >> 3) > v34)
        {
          v34 = 0x5555555555555556 * ((v103 - v101) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v103 - v101) >> 3) >= 0x555555555555555)
        {
          v35 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v35 = v34;
        }

        if (v35)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v35);
        }

        v36 = *(v28 + 8);
        v37 = 8 * ((v30 - v101) >> 3);
        *(v37 + 16) = *(v28 + 24);
        *v37 = v36;
        if (v32 != v30)
        {
          v38 = v37 - v33;
          do
          {
            v39 = *v32;
            *(v38 + 16) = *(v32 + 2);
            *v38 = v39;
            v38 += 24;
            v32 += 24;
          }

          while (v32 != v30);
          v32 = v101;
        }

        v30 = (v37 + 24);
        v101 = (v37 - v33);
        v102 = v37 + 24;
        v103 = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        v31 = *(v28 + 8);
        *(v30 + 2) = *(v28 + 24);
        *v30 = v31;
        v30 += 24;
      }

      v102 = v30;
      v28 += 1992;
    }

    while (v28 != v29);
  }

  v40 = 0;
  v41 = v101;
  v116 = 0;
  v117 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v101) >> 3);
  do
  {
    *&__src[v40] = *&v30[v40 * 8 - 24] - *&v41[v40 * 8];
    ++v40;
  }

  while (v40 != 3);
  v42 = __src[0];
  v43 = __src[1];
  v44 = __src[2];
  v109 = *__src;
  v110 = __src[2];
  v45 = gm::Matrix<double,3,1>::normalized<int,void>(v41);
  *__src = -(v46 * *&v43 - v47 * *&v44);
  *&__src[1] = -(v45 * *&v44 - v46 * *&v42);
  *&__src[2] = -(v47 * *&v42 - v45 * *&v43);
  v114[0] = gm::Matrix<double,3,1>::normalized<int,void>(__src);
  v114[1] = v48;
  v114[2] = v49;
  *__src = -(v48 * *&v44 - v49 * *&v43);
  *&__src[1] = -(v49 * *&v42 - v114[0] * *&v44);
  *&__src[2] = -(v114[0] * *&v43 - v48 * *&v42);
  v108[0] = gm::Matrix<double,3,1>::normalized<int,void>(__src);
  v108[1] = v50;
  v108[2] = v51;
  v120 = *v41;
  v52 = *(v41 + 2);
  v122 = v109;
  v121 = v52;
  v123 = v110;
  v106 = 0uLL;
  v107 = 0;
  v104 = 0;
  v105 = 0uLL;
  if (v41 == v30)
  {
    v64 = 0;
    v63 = 0;
  }

  else
  {
    v53 = v41;
    do
    {
      v54 = gm::Ray<double,3>::closestOffsetTo(&v120, v53);
      v55 = gm::Ray<double,3>::at(&v120, v54);
      v56 = 0;
      v118[0] = *&v55;
      v118[1] = v57;
      v118[2] = v58;
      do
      {
        *&__src[v56] = *(v53 + v56 * 8) - *&v118[v56];
        ++v56;
      }

      while (v56 != 3);
      v59 = 0;
      *v119 = *__src;
      v119[2] = __src[2];
      v60 = 0.0;
      do
      {
        v60 = v60 + *&v119[v59] * v114[v59];
        ++v59;
      }

      while (v59 != 3);
      __src[0] = *&v54;
      __src[1] = *&v60;
      std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](&v106, __src);
      v61 = 0;
      v62 = 0.0;
      do
      {
        v62 = v62 + *&v119[v61] * *&v108[v61];
        ++v61;
      }

      while (v61 != 3);
      __src[0] = *&v54;
      __src[1] = *&v62;
      std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](&v104, __src);
      v53 += 24;
    }

    while (v53 != v30);
    v64 = v104;
    v63 = v105;
  }

  memset(__src, 0, 24);
  v65 = (v63 - v64) >> 4;
  std::vector<gm::Matrix<double,2,1>>::resize(__src, v65);
  v66 = __src[0];
  *__src[0] = *v64;
  *(v66 + 1) = *(v64 + 1);
  v67 = &v64[16 * v65 - 16];
  v68 = &v66[16 * v65 - 16];
  *v68 = *v67;
  *(v68 + 1) = *(v67 + 1);
  if (v65 - 1 >= 2)
  {
    v69 = (v66 + 16);
    v70 = v65 - 2;
    v71 = (v64 + 32);
    __asm { FMOV            V0.2D, #-0.5 }

    v77 = vdupq_n_s64(0xBFE6666660000000);
    do
    {
      v79 = v71[-2];
      v78 = v71[-1];
      v80 = *v71++;
      *v69++ = vmlaq_f64(v78, v77, vmlaq_f64(v78, _Q0, vaddq_f64(v80, v79)));
      --v70;
    }

    while (v70);
  }

  v104 = v66;
  v105 = *&__src[1];
  operator delete(v64);
  v81 = 0;
  v82 = 0.0;
  do
  {
    v82 = v82 + *(&v109 + v81) * *(&v109 + v81);
    v81 += 8;
  }

  while (v81 != 24);
  memset(v115, 0, 24);
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v83 = *(&v106 + 1);
  v84 = v106;
  v85 = (*(&v106 + 1) - v106) >> 4;
  std::vector<double>::reserve(v115, v85);
  std::vector<double>::reserve(&v111, v85);
  while (v84 != v83)
  {
    std::vector<double>::push_back[abi:nn200100](v115, v84);
    v86 = v84 + 1;
    std::vector<double>::push_back[abi:nn200100](&v111, v86);
    v84 = v86 + 1;
  }

  v87 = sqrt(v82);
  if (v111 == v112)
  {
    v89 = 0.0;
    v88 = 0.0;
  }

  else
  {
    v88 = 0.0;
    v89 = 0.0;
    v90 = v111;
    do
    {
      v91 = *v90++;
      v88 = fmax(v88, v91);
      v89 = fmax(v89, -v91);
    }

    while (v90 != v112);
  }

  if (fmin(v89, v88) / v87 > 0.1 || v87 < 15.0)
  {
    v93 = v112 - v111;
    if ((v93 - 1) >= 2)
    {
      v95 = *v111;
      v96 = v111[1];
      v94 = v111 + 2;
      v97 = v93 - 2;
      do
      {
        v98 = *v94;
        v95 = v96 + (v96 + (v95 + *v94) * -0.5) * -0.75;
        *(v94++ - 1) = v95;
        v96 = v98;
        --v97;
      }

      while (v97);
    }
  }

  if (!(((*(&v106 + 1) - v106) >> 4) >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((*(&v106 + 1) - v106) >> 4);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B2F51E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, std::locale *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](&STACK[0x9A0]);
  operator delete(v64);
  if (__p)
  {
    operator delete(__p);
  }

  v66 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v66;
    operator delete(v66);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::~__value_func[abi:nn200100](&STACK[0x250]);
  if (a45)
  {
    operator delete(a45);
  }

  *(a24 + 592) = a10;

  STACK[0x250] = a23;
  std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&STACK[0x250]);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a24 + 472);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a24 + 440);
  v67 = *(a24 + 408);
  if (v67)
  {
    *(a24 + 416) = v67;
    operator delete(v67);
  }

  v68 = *(a24 + 384);
  if (v68)
  {
    *(a24 + 392) = v68;
    operator delete(v68);
  }

  std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::~__value_func[abi:nn200100](a14);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a24 + 312));
  v69 = *(a24 + 8);
  if (v69)
  {
    std::__shared_weak_count::__release_weak(v69);
  }

  _Unwind_Resume(a1);
}

id **std::unique_ptr<anonymous namespace::PathAnimator>::~unique_ptr[abi:nn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

double anonymous namespace::PathAnimator::_computeFrameForT(_anonymous_namespace_::PathAnimator *this, double a2, void *a3)
{
  v8 = v7;
  v10 = v9;
  v11 = std::function<double ()(double)>::operator()(a3[58], a2);
  v12 = std::function<double ()(double)>::operator()(a3[62], a2);
  v13 = __sincos_stret(v11 * 0.5);
  v14 = __sincos_stret(v12 * 0.5);
  v16[0] = v14.__sinval * v13.__cosval;
  v16[1] = v14.__cosval * v13.__sinval;
  v16[2] = -(v13.__sinval * v14.__sinval);
  v16[3] = v14.__cosval * v13.__cosval;
  gm::Quaternion<double>::operator*(&v17, (a3 + 34), v16);
  *this = v6;
  *(this + 1) = v8;
  *(this + 2) = v10;
  *(this + 24) = v17;
  *(this + 5) = v18;
  result = v19;
  *(this + 6) = v19;
  return result;
}

uint64_t *std::vector<std::pair<md::mun::ViewId,unsigned int>>::vector[abi:nn200100](uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::pair<md::mun::ViewId,unsigned int>>::__vallocate[abi:nn200100](a1, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3));
  }

  return a1;
}

void std::vector<std::pair<md::mun::ViewId,unsigned int>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::pair<md::mun::ViewId,unsigned int> const*>,std::__wrap_iter<std::pair<md::mun::ViewId,unsigned int> const*>>(void *a1, _DWORD *a2, uint64_t *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v5 = a3;
    v6 = a2;
    v8 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3)) >= a5)
    {
      v14 = v8 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v8 - a2) >> 3)) >= a5)
      {
        v17 = &v8[-24 * a5];
        if (v17 >= v8)
        {
          v19 = a1[1];
        }

        else
        {
          v18 = &v8[-24 * a5];
          v19 = a1[1];
          do
          {
            v20 = *v18;
            *(v19 + 16) = *(v18 + 2);
            *v19 = v20;
            v19 += 24;
            v18 += 24;
          }

          while (v18 < v8);
        }

        a1[1] = v19;
        if (v8 != &a2[6 * a5])
        {
          v42 = 0;
          do
          {
            v43 = v42 + v8;
            v44 = *(v42 + v17 - 24);
            *(v43 - 17) = *(v42 + v17 - 17);
            *(v43 - 3) = v44;
            *(v43 - 2) = *(v42 + v17 - 8);
            v42 -= 6;
          }

          while ((&a2[6 * a5] - v8) != v42);
        }

        do
        {
          v45 = *v5;
          *(v6 + 7) = *(v5 + 7);
          *v6 = v45;
          v6[4] = *(v5 + 4);
          v5 += 3;
          v6 += 6;
        }

        while (v5 != &a3[3 * a5]);
      }

      else
      {
        v15 = (a3 + v14);
        if ((a3 + v14) == a4)
        {
          v16 = a1[1];
        }

        else
        {
          v31 = (a3 + v14);
          v16 = a1[1];
          do
          {
            v32 = *v31;
            *(v16 + 16) = *(v31 + 2);
            *v16 = v32;
            v16 += 24;
            v31 = (v31 + 24);
          }

          while (v31 != a4);
        }

        a1[1] = v16;
        if (v14 >= 1)
        {
          v33 = &a2[6 * a5];
          v34 = v16 - 24 * a5;
          v35 = v16;
          while (v34 < v8)
          {
            v36 = *v34;
            *(v35 + 16) = *(v34 + 16);
            *v35 = v36;
            v35 += 24;
            v34 += 24;
          }

          a1[1] = v35;
          if (v16 != v33)
          {
            v37 = 0;
            v38 = -24 * a5;
            do
            {
              v39 = v37 + v16;
              v40 = *(v38 + v16 - 24);
              *(v39 - 17) = *(v38 + v16 - 17);
              *(v39 - 24) = v40;
              *(v39 - 8) = *(v38 + v16 - 8);
              v37 -= 24;
              v38 -= 24;
              v33 += 6;
            }

            while (v16 != v33);
          }

          do
          {
            v41 = *v5;
            *(v6 + 7) = *(v5 + 7);
            *v6 = v41;
            v6[4] = *(v5 + 4);
            v5 += 3;
            v6 += 6;
          }

          while (v5 != v15);
        }
      }
    }

    else
    {
      v10 = *a1;
      v11 = a5 - 0x5555555555555555 * (&v8[-*a1] >> 3);
      if (v11 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(v13);
      }

      v21 = 8 * ((a2 - v10) >> 3);
      v22 = (v21 + 24 * a5);
      v23 = 24 * a5;
      v24 = v21;
      do
      {
        v25 = *v5;
        *(v24 + 16) = v5[2];
        *v24 = v25;
        v24 += 24;
        v5 += 3;
        v23 -= 24;
      }

      while (v23);
      memcpy(v22, a2, a1[1] - a2);
      v26 = *a1;
      v27 = &v22[a1[1] - v6];
      a1[1] = v6;
      v28 = v6 - v26;
      v29 = (v21 - (v6 - v26));
      memcpy(v29, v26, v28);
      v30 = *a1;
      *a1 = v29;
      a1[1] = v27;
      a1[2] = 0;
      if (v30)
      {

        operator delete(v30);
      }
    }
  }
}

uint64_t std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::function(uint64_t a1, uint64_t a2)
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

uint64_t std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~function(uint64_t a1)
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

void std::allocator_traits<std::allocator<md::mun::CollectionPoint>>::construct[abi:nn200100]<md::mun::CollectionPoint,md::mun::CollectionPoint const&,void,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 44) = *(a2 + 44);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  *(a1 + 88) = a1 + 120;
  v7 = a1 + 88;
  *(a1 + 56) = v5;
  *(a1 + 72) = v6;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = a1 + 120;
  *(a1 + 112) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((a1 + 88), *(a2 + 88), *(a2 + 96));
  v8 = *(a2 + 1848);
  *(v7 + 1765) = *(a2 + 1853);
  *(v7 + 1760) = v8;
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::operator()(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKMuninLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
  }

  v2 = GEOGetVectorKitVKMuninLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3);
    *buf = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "Preloading %zu initial points", buf, 0xCu);
  }

  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v4 = GEOGetVectorKitResourceLoadingLog_log;
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PathPreload", &unk_1B3514CAA, buf, 2u);
  }

  v9 = 0uLL;
  v10 = 0;
  std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(&v9, *(a1 + 72), *(a1 + 80), 0x63FB9AEB1FDCD759 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  v11 = *(a1 + 96);
  v12 = *(a1 + 112);
  v13 = *(a1 + 120);
  v14 = *(a1 + 136);
  v15 = *(a1 + 144);
  v16 = *(a1 + 160);
  v17 = *(a1 + 168);
  v5 = *(a1 + 184);
  v18 = *(a1 + 176);
  v19 = v5;
  v6 = *(a1 + 192);
  v20 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(a1 + 200);
  v22 = 0;
  operator new();
}

void sub_1B2F5308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32)
{
  std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100](v32 - 104);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#2},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::operator()(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    if (GEOGetVectorKitVKMuninLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
    }

    v5 = GEOGetVectorKitVKMuninLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a3 + 24);
      v7 = 134217984;
      v8 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "Preloaded %zu views.", &v7, 0xCu);
    }

    md::MuninSceneLogic::addActiveViews(*(result + 8), *(a3 + 16));
  }
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#2},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18E18;
  a2[1] = v2;
  return result;
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::operator()(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    if (GEOGetVectorKitVKMuninLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
    }

    v7 = GEOGetVectorKitVKMuninLog_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a3 + 24);
      LODWORD(__p[0]) = 134217984;
      *(__p + 4) = v8;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Finished loading required views (n: %zu) - start animation", __p, 0xCu);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(*v9 + 48))(v9, a1 + 40, a3);
      return;
    }

LABEL_12:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  *__p = 0u;
  v11 = 0u;
  v12 = 1065353216;
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_12;
  }

  (*(*v4 + 48))(v4, a1 + 40, __p);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(v11);
  v5 = __p[0];
  __p[0] = 0;
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_1B2F53470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, void *a11)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(a11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = (a1 + 40);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v3);

  operator delete(a1);
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (a1 + 40);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v4);
}

uint64_t *std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18DD0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  result = std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>((a2 + 40), *(a1 + 40), *(a1 + 48), 0x63FB9AEB1FDCD759 * ((*(a1 + 48) - *(a1 + 40)) >> 3));
  v5 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 64) = v5;
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  v7 = *(a1 + 112);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 112) = v7;
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 144) = *(a1 + 144);
  v8 = *(a1 + 160);
  *(a2 + 152) = *(a1 + 152);
  *(a2 + 160) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 168) = *(a1 + 168);
  return result;
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A18DD0;
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = (a1 + 40);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(void)::{lambda(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)#1},std::allocator<gdc::RequestCompletionStatus>,void ()($_1,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A18DD0;
  v2 = *(a1 + 160);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v4 = (a1 + 40);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 9;
  v3 = a1[24];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = v2;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  operator delete(a1);
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::destroy(void *a1)
{
  v2 = (a1 + 9);
  v3 = a1[24];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = v2;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;

    operator delete(v4);
  }
}

uint64_t *std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18D88;
  std::vector<std::pair<md::mun::ViewId,unsigned int>>::vector[abi:nn200100]((a2 + 8), (a1 + 8));
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  result = std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>((a2 + 72), *(a1 + 72), *(a1 + 80), 0x63FB9AEB1FDCD759 * ((*(a1 + 80) - *(a1 + 72)) >> 3));
  v5 = *(a1 + 96);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 96) = v5;
  v6 = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 120) = v6;
  v7 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 144) = v7;
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 176) = *(a1 + 176);
  v8 = *(a1 + 192);
  *(a2 + 184) = *(a1 + 184);
  *(a2 + 192) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 200) = *(a1 + 200);
  return result;
}

void sub_1B2F53A2C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2F53B64(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18D88;
  v2 = (a1 + 9);
  v3 = a1[24];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = v2;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v5);
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18D88;
  v2 = (a1 + 9);
  v3 = a1[24];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v6 = v2;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v6);
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<std::pair<md::mun::ViewId,unsigned int>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

double geo::ConstantStepSimpleSpline<anonymous namespace::PathCurve>::position(void *a1, double a2)
{
  v4 = a1[5];
  v5 = v4;
  v6 = (v3 * v4);
  v7 = v4 - 1;
  if (v7 >= v6)
  {
    v7 = v6;
  }

  v8 = (v3 - v7 / v5) / ((v7 + 1) / v5 - v7 / v5);
  v14 = v7;
  v13 = v8;
  v9 = a1[3];
  if (v9)
  {
    (*(*v9 + 48))(v9, &v14, &v13);
  }

  else
  {
    v11 = std::__throw_bad_function_call[abi:nn200100]();
    std::function<double ()(double)>::operator()(v11, v12);
  }

  return result;
}

double std::function<double ()(double)>::operator()(uint64_t a1, double a2)
{
  v5 = a2;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v5);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}

double geo::ConstantStepSimpleSpline<anonymous namespace::PathCurve>::remappedT(void *a1, double a2)
{
  v2 = 0.0;
  if (a2 > 0.0)
  {
    v2 = 1.0;
    if (a2 < 1.0)
    {
      v3 = a1[7];
      v4 = a1[8];
      if (v4 == v3)
      {
        v6 = a1[8];
      }

      else
      {
        v5 = v4 - v3;
        v6 = a1[7];
        do
        {
          v7 = v5 >> 1;
          v8 = &v6[v5 >> 1];
          v10 = *v8;
          v9 = v8 + 1;
          v5 += ~(v5 >> 1);
          if (v10 > a2)
          {
            v5 = v7;
          }

          else
          {
            v6 = v9;
          }
        }

        while (v5);
      }

      if (v4 != v6)
      {
        v11 = v6 - v3;
        if (v11 <= 1)
        {
          v11 = 1;
        }

        v12 = 8 * v11 - 8;
        v13 = (a2 - *(v3 + v12)) / (v3[v11] - *(v3 + v12));
        return fmax(fmin(*(a1[10] + v12) + (*(a1[10] + 8 * v11) - *(a1[10] + v12)) * v13, 1.0), 0.0);
      }
    }
  }

  return v2;
}

void anonymous namespace::PathAnimator::~PathAnimator(id *this)
{
  [this[75] stop];
  this[74] = &unk_1F2A18A60;

  v5 = this + 63;
  std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&v5);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((this + 59));
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((this + 55));
  v2 = this[51];
  if (v2)
  {
    this[52] = v2;
    operator delete(v2);
  }

  v3 = this[48];
  if (v3)
  {
    this[49] = v3;
    operator delete(v3);
  }

  std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::~__value_func[abi:nn200100]((this + 41));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[39]);
  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1B2F53FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 592) = &unk_1F2A18A60;

  a10 = (v10 + 504);
  std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&a10);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v10 + 472);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v10 + 440);
  v12 = *(v10 + 408);
  if (v12)
  {
    *(v10 + 416) = v12;
    operator delete(v12);
  }

  v13 = *(v10 + 384);
  if (v13)
  {
    *(v10 + 392) = v13;
    operator delete(v13);
  }

  std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::~__value_func[abi:nn200100](v10 + 328);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 312));
  v14 = *(v10 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(anonymous namespace::PathAnimator *,unsigned long,anonymous namespace::PointSegment &&)>::~function(uint64_t a1)
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

uint64_t std::function<void ()(anonymous namespace::PathAnimator *,geo::RigidTransform<double,double> const&,unsigned long,float,float)>::~function(uint64_t a1)
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

uint64_t std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::_retain_ptr<VKQuickDynamicAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A18A60;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKQuickDynamicAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A18A60;

  return a1;
}

id *std::__shared_ptr_pointer<anonymous namespace::PathAnimator *,std::shared_ptr<anonymous namespace::PathAnimator>::__shared_ptr_default_delete<anonymous namespace::PathAnimator,anonymous namespace::PathAnimator>,std::allocator<anonymous namespace::PathAnimator>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<anonymous namespace::PathAnimator *,std::shared_ptr<anonymous namespace::PathAnimator>::__shared_ptr_default_delete<anonymous namespace::PathAnimator,anonymous namespace::PathAnimator>,std::allocator<anonymous namespace::PathAnimator>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<double>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void anonymous namespace::polynomialFit(_anonymous_namespace_ *this, double *a2, double *a3, int a4, unint64_t a5, double *a6, const double *a7, double *a8)
{
  if (a5 < 0x1FFFFFFFFFFFFFFELL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a5 + 2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B2F54BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (v15)
  {
    operator delete(v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<double ()(double)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<gm::Matrix<double,3,1> ()(int,double)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void geo::refine<gm::Matrix<double,3,1>>(char **a1)
{
  v24 = 0uLL;
  v25 = 0;
  std::vector<gm::Matrix<double,3,1>>::resize(&v24, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v2 = 0;
  v3 = *a1;
  v4 = v24;
  do
  {
    *(v4 + v2) = *&v3[v2];
    v2 += 8;
  }

  while (v2 != 24);
  v5 = a1[1];
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v3) >> 3);
  v7 = v6 - 1;
  v8 = -24;
  do
  {
    *(v4 + v5 - v3 + v8) = *&v5[v8];
    v8 += 8;
  }

  while (v8);
  if (v6 - 3 >= 0xFFFFFFFFFFFFFFFELL)
  {
    *a1 = v24;
    a1[2] = v25;
LABEL_15:

    operator delete(v3);
    return;
  }

  v9 = 1;
  v10 = v3;
  do
  {
    v11 = 0;
    v12 = &v3[24 * v9];
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v9 + 1;
    do
    {
      *(&v26 + v11) = *&v10[v11 + 48] + *&v10[v11];
      v11 += 8;
    }

    while (v11 != 24);
    v17 = 0;
    v22 = v26;
    v23 = v27;
    do
    {
      *(&v26 + v17) = *(&v22 + v17) * 0.5;
      v17 += 8;
    }

    while (v17 != 24);
    v18 = gm::lerp<gm::Matrix<double,3,1>,float>(v13, v14, v15, *&v26, *(&v26 + 1), v27, 0.5);
    v19 = v4 + 24 * v9;
    *v19 = v18;
    *(v19 + 8) = v20;
    *(v19 + 16) = v21;
    v10 += 24;
    ++v9;
  }

  while (v16 != v7);
  *a1 = v24;
  a1[2] = v25;
  if (v3)
  {
    goto LABEL_15;
  }
}

void sub_1B2F550DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double anonymous namespace::PathCurve::arcLength(_anonymous_namespace_::PathCurve *this, int a2, double a3, double a4)
{
  LODWORD(v29) = a2;
  *&v31 = a3;
  v7 = this + 24;
  v5 = *(this + 3);
  v6 = *(v7 + 1);
  if (v5)
  {
    v10 = a4 - a3;
    v11 = ((a4 - a3) * (10 * v6));
    if (v11 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = 0;
    *&v29 = (*(*v5 + 48))(v5, &v29, &v31);
    *(&v29 + 1) = v14;
    v30 = v15;
    v16 = 0.0;
    while (1)
    {
      LODWORD(v27) = a2;
      *&v31 = a3 + v10 * v13 * (1.0 / (v12 - 1));
      v17 = *(this + 3);
      if (!v17)
      {
        break;
      }

      v18 = (*(*v17 + 48))(v17, &v27, &v31);
      v19 = 0;
      *&v27 = v18;
      *(&v27 + 1) = v20;
      v28 = v21;
      do
      {
        *(&v31 + v19) = *(&v27 + v19) - *(&v29 + v19);
        v19 += 8;
      }

      while (v19 != 24);
      v22 = 0;
      v23 = 0.0;
      do
      {
        v23 = v23 + *(&v31 + v22) * *(&v31 + v22);
        v22 += 8;
      }

      while (v22 != 24);
      v29 = v27;
      v30 = v28;
      v16 = sqrt(v23) + v16;
      if (++v13 == v12)
      {
        return v16;
      }
    }
  }

  v25 = std::__throw_bad_function_call[abi:nn200100]();
  return result;
}

void geo::ConstantStepSimpleSpline<anonymous namespace::PathCurve>::tangent(void *a1, double a2)
{
  v4 = a1[5];
  v5 = v4;
  v6 = (v3 * v4);
  v7 = v4 - 1;
  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = (v3 - v8 / v5) / ((v8 + 1) / v5 - v8 / v5);
  v10 = v9;
  v11 = v9 + 0.001;
  if (v11 >= 1.0)
  {
    LODWORD(v33) = v8;
    *&v36 = v10;
    v20 = a1[3];
    if (v20)
    {
      v33 = (*(*v20 + 48))(v20, &v33, &v36);
      v34 = v21;
      LODWORD(v30) = v8;
      v35 = v22;
      *&v36 = v10 + -0.001;
      v23 = a1[3];
      if (v23)
      {
        v24 = (*(*v23 + 48))(v23, &v30, &v36);
        v25 = 0;
        v30 = v24;
        v31 = v26;
        v32 = v27;
        do
        {
          *(&v36 + v25) = *(&v33 + v25) - *(&v30 + v25);
          v25 += 8;
        }

        while (v25 != 24);
        goto LABEL_14;
      }
    }
  }

  else
  {
    LODWORD(v33) = v8;
    *&v36 = v11;
    v12 = a1[3];
    if (v12)
    {
      v33 = (*(*v12 + 48))(v12, &v33, &v36);
      v34 = v13;
      v35 = v14;
      *&v36 = v10;
      LODWORD(v30) = v8;
      v15 = a1[3];
      if (v15)
      {
        v16 = (*(*v15 + 48))(v15, &v30, &v36);
        v17 = 0;
        v30 = v16;
        v31 = v18;
        v32 = v19;
        do
        {
          *(&v36 + v17) = *(&v33 + v17) - *(&v30 + v17);
          v17 += 8;
        }

        while (v17 != 24);
LABEL_14:
        gm::Matrix<double,3,1>::normalized<int,void>(&v36);
        return;
      }
    }
  }

  v28 = std::__throw_bad_function_call[abi:nn200100]();
}

void anonymous namespace::AngleCurve::AngleCurve(uint64_t a1, char **a2)
{
  v3 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 0;
  v2 = a2[1] - *a2;
  if (!((v2 >> 4) >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v2 >> 4);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B2F55664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  operator delete(v15);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v14);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<double ()(double)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

double geo::Frustum<double>::point(uint64_t a1, double a2, double a3, double a4)
{
  v4 = 0;
  v5 = 1.0 - a2;
  do
  {
    *(&v99 + v4) = *(a1 + 240 + v4) * v5;
    v4 += 8;
  }

  while (v4 != 24);
  v6 = 0;
  v81 = v99;
  v82 = v100;
  v7 = 1.0 - a3;
  do
  {
    *(&v99 + v6) = *(&v81 + v6) * v7;
    v6 += 8;
  }

  while (v6 != 24);
  v8 = 0;
  v83 = v99;
  v84 = v100;
  v9 = 1.0 - a4;
  do
  {
    *(&v99 + v8) = *(&v83 + v8) * v9;
    v8 += 8;
  }

  while (v8 != 24);
  v10 = 0;
  v85 = v99;
  v86 = v100;
  do
  {
    *(&v99 + v10) = *(a1 + 336 + v10) * a2;
    v10 += 8;
  }

  while (v10 != 24);
  v11 = 0;
  v75 = v99;
  v76 = v100;
  do
  {
    *(&v99 + v11) = *(&v75 + v11) * v7;
    v11 += 8;
  }

  while (v11 != 24);
  v12 = 0;
  v77 = v99;
  v78 = v100;
  do
  {
    *(&v99 + v12) = *(&v77 + v12) * v9;
    v12 += 8;
  }

  while (v12 != 24);
  v13 = 0;
  v79 = v99;
  v80 = v100;
  do
  {
    *(&v99 + v13) = *(&v79 + v13) + *(&v85 + v13);
    v13 += 8;
  }

  while (v13 != 24);
  v14 = 0;
  v87 = v99;
  v88 = v100;
  do
  {
    *(&v99 + v14) = *(a1 + 192 + v14) * v5;
    v14 += 8;
  }

  while (v14 != 24);
  v15 = 0;
  v69 = v99;
  v70 = v100;
  do
  {
    *(&v99 + v15) = *(&v69 + v15) * a3;
    v15 += 8;
  }

  while (v15 != 24);
  v16 = 0;
  v71 = v99;
  v72 = v100;
  do
  {
    *(&v99 + v16) = *(&v71 + v16) * v9;
    v16 += 8;
  }

  while (v16 != 24);
  v17 = 0;
  v73 = v99;
  v74 = v100;
  do
  {
    *(&v99 + v17) = *(&v73 + v17) + *(&v87 + v17);
    v17 += 8;
  }

  while (v17 != 24);
  v18 = 0;
  v89 = v99;
  v90 = v100;
  do
  {
    *(&v99 + v18) = *(a1 + 288 + v18) * a2;
    v18 += 8;
  }

  while (v18 != 24);
  v19 = 0;
  v63 = v99;
  v64 = v100;
  do
  {
    *(&v99 + v19) = *(&v63 + v19) * a3;
    v19 += 8;
  }

  while (v19 != 24);
  v20 = 0;
  v65 = v99;
  v66 = v100;
  do
  {
    *(&v99 + v20) = *(&v65 + v20) * v9;
    v20 += 8;
  }

  while (v20 != 24);
  v21 = 0;
  v67 = v99;
  v68 = v100;
  do
  {
    *(&v99 + v21) = *(&v67 + v21) + *(&v89 + v21);
    v21 += 8;
  }

  while (v21 != 24);
  v22 = 0;
  v91 = v99;
  v92 = v100;
  do
  {
    *(&v99 + v22) = *(a1 + 264 + v22) * v5;
    v22 += 8;
  }

  while (v22 != 24);
  v23 = 0;
  v57 = v99;
  v58 = v100;
  do
  {
    *(&v99 + v23) = *(&v57 + v23) * v7;
    v23 += 8;
  }

  while (v23 != 24);
  v24 = 0;
  v59 = v99;
  v60 = v100;
  do
  {
    *(&v99 + v24) = *(&v59 + v24) * a4;
    v24 += 8;
  }

  while (v24 != 24);
  v25 = 0;
  v61 = v99;
  v62 = v100;
  do
  {
    *(&v99 + v25) = *(&v61 + v25) + *(&v91 + v25);
    v25 += 8;
  }

  while (v25 != 24);
  v26 = 0;
  v93 = v99;
  v94 = v100;
  do
  {
    *(&v99 + v26) = *(a1 + 360 + v26) * a2;
    v26 += 8;
  }

  while (v26 != 24);
  v27 = 0;
  v51 = v99;
  v52 = v100;
  do
  {
    *(&v99 + v27) = *(&v51 + v27) * v7;
    v27 += 8;
  }

  while (v27 != 24);
  v28 = 0;
  v53 = v99;
  v54 = v100;
  do
  {
    *(&v99 + v28) = *(&v53 + v28) * a4;
    v28 += 8;
  }

  while (v28 != 24);
  v29 = 0;
  v55 = v99;
  v56 = v100;
  do
  {
    *(&v99 + v29) = *(&v55 + v29) + *(&v93 + v29);
    v29 += 8;
  }

  while (v29 != 24);
  v30 = 0;
  v95 = v99;
  v96 = v100;
  do
  {
    *(&v99 + v30) = *(a1 + 216 + v30) * v5;
    v30 += 8;
  }

  while (v30 != 24);
  v31 = 0;
  v45 = v99;
  v46 = v100;
  do
  {
    *(&v99 + v31) = *(&v45 + v31) * a3;
    v31 += 8;
  }

  while (v31 != 24);
  v32 = 0;
  v47 = v99;
  v48 = v100;
  do
  {
    *(&v99 + v32) = *(&v47 + v32) * a4;
    v32 += 8;
  }

  while (v32 != 24);
  v33 = 0;
  v49 = v99;
  v50 = v100;
  do
  {
    *(&v99 + v33) = *(&v49 + v33) + *(&v95 + v33);
    v33 += 8;
  }

  while (v33 != 24);
  v34 = 0;
  v97 = v99;
  v98 = v100;
  do
  {
    *(&v99 + v34) = *(a1 + 312 + v34) * a2;
    v34 += 8;
  }

  while (v34 != 24);
  v35 = 0;
  v39 = v99;
  v40 = v100;
  do
  {
    *(&v99 + v35) = *(&v39 + v35) * a3;
    v35 += 8;
  }

  while (v35 != 24);
  v36 = 0;
  v41 = v99;
  v42 = v100;
  do
  {
    *(&v99 + v36) = *(&v41 + v36) * a4;
    v36 += 8;
  }

  while (v36 != 24);
  v37 = 0;
  v43 = v99;
  v44 = v100;
  do
  {
    *(&v99 + v37) = *(&v43 + v37) + *(&v97 + v37);
    v37 += 8;
  }

  while (v37 != 24);
  return *&v99;
}

void std::deque<anonymous namespace::PathAnimator::_pickRequiredPoints(BOOL *)::Path,std::allocator<anonymous namespace::PathAnimator::_pickRequiredPoints(BOOL *)::Path>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    if (!(v8 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<geo::QuadTile *>::emplace_back<geo::QuadTile *&>(a1, &v9);
}

void sub_1B2F562CC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::greater<std::pair<float,anonymous namespace::PathAnimator::_pickRequiredPoints(BOOL *)::Path *>> &,std::__wrap_iter<std::pair<float,anonymous namespace::PathAnimator::_pickRequiredPoints(BOOL *)::Path *>*>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = (a3 - 2) >> 1;
    v4 = result + 16 * v3;
    v5 = a2 - 16;
    v6 = *(a2 - 16);
    v7 = *v4;
    if (*v4 == v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = -127;
    }

    if (*v4 > v6)
    {
      v8 = 1;
    }

    if (*v4 < v6)
    {
      v8 = -1;
    }

    if (v8 || ((v9 = *(v4 + 8), v10 = *(a2 - 8), v11 = v9 == v10, v9 < v10) ? (LOBYTE(v8) = -1) : (LOBYTE(v8) = 1), !v11))
    {
      if (v8 == 1)
      {
        v12 = *(a2 - 8);
        do
        {
          v13 = v5;
          v5 = v4;
          *v13 = v7;
          *(v13 + 8) = *(v4 + 8);
          if (!v3)
          {
            break;
          }

          v3 = (v3 - 1) >> 1;
          v4 = result + 16 * v3;
          v7 = *v4;
          if (*v4 == v6)
          {
            v14 = 0;
          }

          else
          {
            v14 = -127;
          }

          if (*v4 > v6)
          {
            v14 = 1;
          }

          if (*v4 < v6)
          {
            v14 = -1;
          }

          if (!v14)
          {
            v15 = *(v4 + 8);
            v16 = v15 == v12;
            LOBYTE(v14) = v15 < v12 ? -1 : 1;
            if (v16)
            {
              break;
            }
          }
        }

        while (v14 == 1);
        *v5 = v6;
        *(v5 + 8) = v12;
      }
    }
  }

  return result;
}

BOOL ___ZN12_GLOBAL__N_112PathAnimatorC2EPN2md13MapDataAccessERKN3geo14RigidTransformIddEEONSt3__16vectorINS1_3mun15CollectionPointENS9_9allocatorISC_EEEERKNS4_10GeocentricIdEERKNS1_13MuninSettingsEhbb_block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 616);
  v5 = *(v3 + 640);
  v6 = *(v3 + 648);
  if (v5 - v4 * v5 <= v6)
  {
    v10 = (v4 + -1.0 + v6 / v5) / (v6 / v5);
    v11 = fmax(*(v3 + 632) - v10 * v10 * v10 * *(v3 + 632), 0.2);
    *(v3 + 624) = v11;
    v8 = fmin(v11 * a2 / v5 + v4, 1.0);
    *(v3 + 616) = v8;
  }

  else
  {
    v7 = *(v3 + 624);
    v8 = v7 * a2 / v5 + v4;
    *(v3 + 616) = v8;
    v9 = v7 + *(a1 + 40) * a2;
    *(v3 + 624) = v9;
    *(v3 + 632) = v9;
  }

  v12 = v8;
  v13 = *(v3 + 304);
  v14 = (v3 + 312);
  if (v13 != (v3 + 312))
  {
    v15 = 0;
    v16 = *(v3 + 304);
    do
    {
      v17 = *(v16 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v16 + 2);
          v19 = *v18 == v16;
          v16 = v18;
        }

        while (!v19);
      }

      ++v15;
      v16 = v18;
    }

    while (v18 != v14);
    do
    {
      v20 = v15 >> 1;
      v21 = v13;
      if (v15 >= 2)
      {
        v22 = v15 >> 1;
        v23 = v13;
        do
        {
          v24 = *(v23 + 1);
          if (v24)
          {
            do
            {
              v21 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v21 = *(v23 + 2);
              v19 = *v21 == v23;
              v23 = v21;
            }

            while (!v19);
          }

          v23 = v21;
          v28 = v22-- <= 1;
        }

        while (!v28);
      }

      if (v21[9] <= v12)
      {
        v25 = *(v21 + 1);
        if (v25)
        {
          do
          {
            v13 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v13 = *(v21 + 2);
            v19 = *v13 == v21;
            v21 = v13;
          }

          while (!v19);
        }

        v20 = v15 + ~v20;
      }

      v15 = v20;
    }

    while (v20);
  }

  if (v14 == v13 || ((v26 = v13[8], v27 = v13[9], v26 <= v12) ? (v28 = v27 <= v12) : (v28 = 1), v28))
  {
    v29 = *(v3 + 320) - 1;
    v30 = 1.0;
  }

  else
  {
    v29 = *(v13 + 5);
    v30 = 0.0;
    if (v26 != v27)
    {
      v30 = (fminf(v27, v12) - v26) / (v27 - v26);
    }
  }

  v31 = *(v3 + 208);
  if (v29 != v31)
  {
    *(v3 + 208) = v29;
  }

  v32 = *(v3 + 8);
  if (!v32 || (v33 = std::__shared_weak_count::lock(v32)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:nn200100]();
    goto LABEL_48;
  }

  v2 = v33;
  v34 = *(v3 + 616);
  v44 = v29;
  v45 = v3;
  v42 = v34;
  v43 = v30;
  v35 = *(v3 + 552);
  if (!v35)
  {
    goto LABEL_48;
  }

  (*(*v35 + 48))(v35, &v45, v41, &v44, &v43, &v42);
  if (v29 != v31)
  {
    v36 = *(v3 + 504) + 1992 * *(v3 + 208);
    v44 = *(v3 + 208);
    v45 = v3;
    v37 = *(v3 + 584);
    if (v37)
    {
      (*(*v37 + 48))(v37, &v45, &v44, v41);
      goto LABEL_46;
    }

LABEL_48:
    v40 = std::__throw_bad_function_call[abi:nn200100]();
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    _Unwind_Resume(v40);
  }

LABEL_46:
  v38 = *(v3 + 616) >= 1.0;
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  return v38;
}

_anonymous_namespace_::PointSegment *anonymous namespace::PointSegment::PointSegment(_anonymous_namespace_::PointSegment *this, const md::mun::PointView *a2, const md::mun::PointView *a3)
{
  v5 = md::mun::PointView::PointView(this, a2);
  md::mun::PointView::PointView((v5 + 1992), a3);
  return this;
}

void sub_1B2F56738(_Unwind_Exception *a1)
{
  v3 = v1[239];
  if (v3 != v1[241])
  {
    free(v3);
  }

  v4 = v1[236];
  if (v4)
  {
    v1[237] = v4;
    operator delete(v4);
  }

  v5 = v1[233];
  if (v5)
  {
    v1[234] = v5;
    operator delete(v5);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((v1 + 11));
  _Unwind_Resume(a1);
}

md::mun::PointView *md::mun::PointView::PointView(md::mun::PointView *this, const md::mun::PointView *a2)
{
  *this = *a2;
  v4 = *(a2 + 8);
  *(this + 3) = *(a2 + 3);
  *(this + 8) = v4;
  v5 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v5;
  *(this + 44) = *(a2 + 44);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(this + 11) = this + 120;
  v8 = (this + 88);
  *(this + 56) = v6;
  *(this + 72) = v7;
  *(this + 12) = this + 120;
  *(this + 13) = this + 120;
  *(this + 14) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(this + 11, *(a2 + 11), *(a2 + 12));
  v9 = *(a2 + 231);
  *(v8 + 1765) = *(a2 + 1853);
  v8[220] = v9;
  std::vector<std::pair<md::mun::ViewId,unsigned int>>::vector[abi:nn200100](v8 + 222, a2 + 233);
  std::vector<std::pair<md::mun::ViewId,unsigned int>>::vector[abi:nn200100](this + 236, a2 + 236);
  *(this + 239) = this + 1944;
  *(this + 240) = this + 1944;
  *(this + 241) = this + 1944;
  *(this + 242) = 6;
  geo::small_vector_base<md::mun::PointView::CameraLod>::append<md::mun::PointView::CameraLod const*>(this + 239, *(a2 + 239), *(a2 + 240));
  return this;
}

void sub_1B2F5687C(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 1896) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v2 + 1872) = v7;
    operator delete(v7);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v1);
  _Unwind_Resume(a1);
}

void geo::small_vector_base<md::mun::PointView::CameraLod>::append<md::mun::PointView::CameraLod const*>(void *result, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = (a3 - a2) >> 3;
  v8 = result[1];
  v9 = v8 - *result;
  if (v7 > result[3] - (v9 >> 3))
  {
    geo::small_vector_base<md::mun::PointView::CameraLod>::grow(result, (v9 >> 3) + v7);
    v8 = result[1];
  }

  if (v4 != a3)
  {
    do
    {
      v10 = *v4;
      v4 += 8;
      *v8++ = v10;
    }

    while (v4 != a3);
    v8 = result[1];
  }

  result[1] = v8 + v6;
}

void geo::small_vector_base<md::mun::PointView::CameraLod>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(8 * v9, 0x100004087EB8081uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12++;
      *v14++ = v15;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = v11 + v4 - v3;
  *(a1 + 24) = v9;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::PointView>>(unint64_t a1)
{
  if (a1 < 0x20E64C148FEF8DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::PointView>,md::mun::PointView*>(void *result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = result;
    do
    {
      *a3 = *v6;
      v7 = *(v6 + 1);
      *(a3 + 24) = v6[3];
      *(a3 + 8) = v7;
      v8 = v6[4];
      *(a3 + 40) = *(v6 + 10);
      *(a3 + 32) = v8;
      *(a3 + 44) = *(v6 + 44);
      v9 = *(v6 + 7);
      *(a3 + 72) = *(v6 + 9);
      *(a3 + 56) = v9;
      geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base((a3 + 88), v6 + 11, (a3 + 120));
      v10 = v6[231];
      *(a3 + 1853) = *(v6 + 1853);
      *(a3 + 1848) = v10;
      *(a3 + 1864) = 0;
      *(a3 + 1872) = 0u;
      *(a3 + 1864) = v6[233];
      *(a3 + 1872) = *(v6 + 117);
      v6[235] = 0;
      *(v6 + 233) = 0u;
      *(a3 + 1904) = 0;
      *(a3 + 1888) = 0u;
      *(a3 + 1888) = *(v6 + 118);
      *(a3 + 1904) = v6[238];
      v6[238] = 0;
      *(v6 + 118) = 0u;
      v11 = (a3 + 1944);
      *(a3 + 1912) = a3 + 1944;
      *(a3 + 1920) = a3 + 1944;
      *(a3 + 1928) = a3 + 1944;
      *(a3 + 1936) = v6[242];
      v12 = v6[239];
      if (v12 == v6[241])
      {
        *(a3 + 1920) = v11 + v6[240] - v12;
        v13 = v6[240];
        while (v12 != v13)
        {
          v14 = *v12++;
          *v11++ = v14;
        }
      }

      else
      {
        *(a3 + 1912) = v12;
        *(a3 + 1920) = v6[240];
        *(v6 + 239) = 0uLL;
        *(v6 + 241) = 0uLL;
      }

      v6 += 249;
      a3 += 1992;
    }

    while (v6 != a2);
    do
    {
      result = std::allocator_traits<std::allocator<md::mun::PointView>>::destroy[abi:nn200100]<md::mun::PointView,void,0>(v5);
      v5 += 249;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<md::mun::PointView>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1992;
    std::allocator_traits<std::allocator<md::mun::PointView>>::destroy[abi:nn200100]<md::mun::PointView,void,0>((i - 1992));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<gm::Range<float>,unsigned long>,std::__map_value_compare<gm::Range<float>,std::__value_type<gm::Range<float>,unsigned long>,geo::range_map<float,unsigned long,std::less<float>,std::allocator<std::pair<gm::Range<float> const,unsigned long>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<float>,unsigned long>>>::__emplace_unique_key_args<gm::Range<float>,std::pair<gm::Range<float> const,unsigned long>>(uint64_t **a1, _OWORD *a2, float a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 9);
      if (v5 <= a3)
      {
        break;
      }

      v3 = *v3;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a3)
    {
      return 0;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

double std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2}>,gm::Matrix<double,3,1> ()(int,double)>::operator()(uint64_t a1, unsigned int *a2, double *a3)
{
  v3 = 0;
  v4 = *a2;
  v5 = *a3;
  if (*a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = *a2;
  }

  v7 = *(a1 + 8);
  v8 = v7 + 24 * v6;
  v9 = *(v8 - 8);
  v10 = (v7 + 24 * v4);
  v11 = *(v10 + 2);
  v12 = *(v10 + 5);
  v13 = v4 + 2;
  if (v13 >= (-1431655765 * ((*(a1 + 16) - v7) >> 3) - 1))
  {
    v13 = -1431655765 * ((*(a1 + 16) - v7) >> 3) - 1;
  }

  v14 = (v7 + 24 * v13);
  v15 = *(v14 + 2);
  v48 = *(v8 - 24);
  v49 = v9;
  v46 = *v10;
  v47 = v11;
  v44 = *(v10 + 24);
  v45 = v12;
  v42 = *v14;
  v43 = v15;
  v16 = v5 * v5;
  do
  {
    *(&v50 + v3) = *(&v48 + v3) * -(v5 + v5 * v5 * (v5 + -2.0));
    v3 += 8;
  }

  while (v3 != 24);
  v17 = 0;
  v34 = v50;
  v35 = v51;
  do
  {
    *(&v50 + v17) = *(&v46 + v17) * ((v5 * 3.0 + -5.0) * v16 + 2.0);
    v17 += 8;
  }

  while (v17 != 24);
  v18 = 0;
  v19 = v5 + -1.0;
  v32 = v50;
  v33 = v51;
  do
  {
    *(&v50 + v18) = *(&v32 + v18) + *(&v34 + v18);
    v18 += 8;
  }

  while (v18 != 24);
  v20 = 0;
  v21 = (4.0 - v5 * 3.0) * (v5 * v5) + v5;
  v36 = v50;
  v37 = v51;
  do
  {
    *(&v50 + v20) = *(&v44 + v20) * v21;
    v20 += 8;
  }

  while (v20 != 24);
  v22 = 0;
  v30 = v50;
  v31 = v51;
  do
  {
    *(&v50 + v22) = *(&v30 + v22) + *(&v36 + v22);
    v22 += 8;
  }

  while (v22 != 24);
  v23 = 0;
  v24 = v16 * v19;
  v38 = v50;
  v39 = v51;
  do
  {
    *(&v50 + v23) = v24 * *(&v42 + v23);
    v23 += 8;
  }

  while (v23 != 24);
  v25 = 0;
  v28 = v50;
  v29 = v51;
  do
  {
    *(&v50 + v25) = *(&v28 + v25) + *(&v38 + v25);
    v25 += 8;
  }

  while (v25 != 24);
  v26 = 0;
  v40 = v50;
  v41 = v51;
  do
  {
    *(&v50 + v26) = *(&v40 + v26) * 0.5;
    v26 += 8;
  }

  while (v26 != 24);
  return *&v50;
}

void std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2}>,gm::Matrix<double,3,1> ()(int,double)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2}>,gm::Matrix<double,3,1> ()(int,double)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2}>,gm::Matrix<double,3,1> ()(int,double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18BA0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#2}>,gm::Matrix<double,3,1> ()(int,double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18BA0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void std::vector<gm::Matrix<double,3,1>>::resize(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    if (a2 >= v4)
    {
      return;
    }

    v10 = v2 + 24 * a2;
  }

  else
  {
    v6 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v3) >> 3) < v5)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v2) >> 3);
        v8 = 2 * v7;
        if (2 * v7 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x555555555555555)
        {
          v9 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v9 = v8;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v9);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v3 + 24 * (24 * v5 / 0x18);
  }

  a1[1] = v10;
}

double std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::operator()(uint64_t a1, uint64_t a2, double *a3)
{
  v4 = *a3;
  v14[0] = gm::Ray<double,3>::at(a1 + 8, *a3);
  v14[1] = v5;
  v14[2] = v6;
  v7 = std::function<double ()(double)>::operator()(*(a1 + 80), v4);
  for (i = 0; i != 3; ++i)
  {
    *&v14[i + 3] = *(a1 + 88 + i * 8) * v7;
  }

  for (j = 0; j != 3; ++j)
  {
    *&v14[j] = *&v14[j] + *&v14[j + 3];
  }

  v10 = std::function<double ()(double)>::operator()(*(a1 + 136), v4);
  for (k = 0; k != 3; ++k)
  {
    *&v14[k + 3] = *(a1 + 144 + k * 8) * v10;
  }

  for (m = 0; m != 3; ++m)
  {
    *&v14[m] = *&v14[m] + *&v14[m + 3];
  }

  return *v14;
}

void std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 112);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 56);

  operator delete(a1);
}

uint64_t std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::destroy(uint64_t a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 112);

  return std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 56);
}

__n128 std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18B58;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v5;
  *(a2 + 8) = v4;
  std::__function::__value_func<double ()(double)>::__value_func[abi:nn200100](a2 + 56, a1 + 56);
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  std::__function::__value_func<double ()(double)>::__value_func[abi:nn200100](a2 + 112, a1 + 112);
  result = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 144) = result;
  return result;
}

void sub_1B2F575A4(_Unwind_Exception *a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v1 + 56);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18B58;
  v1 = a1 + 7;
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 14));
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1},std::allocator<anonymous namespace::PathCurve::PathCurve(std::vector<gm::Matrix<double,3,1>> const&)::{lambda(int,double)#1}>,gm::Matrix<double,3,1> ()(int,double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18B58;
  v2 = a1 + 7;
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 14));
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v2);
  return a1;
}

double std::__function::__func<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0,std::allocator<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0>,double ()(double)>::operator()(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = v3 - v2;
  if (v3 == v2)
  {
    return 0.0;
  }

  v5 = *a2;
  v6 = (v4 >> 4) - 1;
  v7 = (v2 + 16);
  v8 = 1 - (v4 >> 4);
  v9 = -1;
  while (v8 + v9 != -1)
  {
    v10 = *v7;
    v7 += 2;
    v11 = v10;
    ++v9;
    if (v10 >= v5)
    {
      return (v5 - *(v2 + 16 * v9)) * (*(v2 + 16 * v9 + 24) - *(v2 + 16 * v9 + 8)) / (v11 - *(v2 + 16 * v9)) + *(v2 + 16 * v9 + 8);
    }
  }

  return *(v2 + 16 * v6 + 8);
}

void std::__function::__func<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0,std::allocator<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0>,double ()(double)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0,std::allocator<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0>,double ()(double)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0,std::allocator<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18B10;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0,std::allocator<anonymous namespace::linearInterpolation(std::vector<gm::Matrix<double,2,1>> const&)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18B10;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

double std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::operator()(uint64_t a1, double *a2)
{
  v3 = *a2;
  v4 = *(a1 + 72);
  if (v4 <= *a2)
  {
    v6 = *(a1 + 80);
    if (v6 >= v3)
    {
      v9 = (v3 - v4) / (v6 - v4);
      v10 = std::function<double ()(double)>::operator()(*(a1 + 32), *a2);
      v11 = std::function<double ()(double)>::operator()(*(a1 + 64), v3);
      v12 = v9;
      v13 = 1.0 - cos(v12 * 3.14159265);
      return v10 + (v11 - v10) * (v13 * 0.5);
    }

    v5 = *(a1 + 64);
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v7 = *a2;

  return std::function<double ()(double)>::operator()(v5, v7);
}

void std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 40);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::destroy(uint64_t a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 40);

  return std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](a1 + 8);
}

__n128 std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A18AC8;
  v4 = a2 + 40;
  std::__function::__value_func<double ()(double)>::__value_func[abi:nn200100](a2 + 8, a1 + 8);
  std::__function::__value_func<double ()(double)>::__value_func[abi:nn200100](v4, a1 + 40);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  return result;
}

void sub_1B2F57B3C(_Unwind_Exception *a1)
{
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18AC8;
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 5));
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0,std::allocator<anonymous namespace::multiPolynomialFit(std::vector<gm::Matrix<double,2,1>> const&,double)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18AC8;
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 5));
  std::__function::__value_func<double ()(double)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

double std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::operator()(uint64_t a1, double *a2)
{
  v2 = *(a1 + 32);
  result = 0.0;
  if ((v2 & 0x80000000) == 0)
  {
    v4 = *(a1 + 8);
    v5 = &v4[v2];
    v6 = (v2 + 1);
    v7 = 1.0;
    result = 0.0;
    do
    {
      v8 = *v4++;
      result = result + v8 * v7;
      v7 = v7 * (*a2 - v5[1]);
      --v6;
    }

    while (v6);
  }

  return result;
}

void std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

uint64_t *std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A18A80;
  result = std::vector<gdc::Entity>::vector[abi:nn200100](a2 + 1, (a1 + 8));
  a2[4] = *(a1 + 32);
  return result;
}

void std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18A80;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0,std::allocator<anonymous namespace::polynomialFit(double const*,double const*,unsigned long,unsigned long,double const*,double const*,double const*)::$_0>,double ()(double)>::~__func(void *a1)
{
  *a1 = &unk_1F2A18A80;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_0,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = atomic_load((v1 + 960));
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t std::__function::__func<anonymous namespace::preparePath(anonymous namespace::TapDescription const&,md::MapDataAccess *,md::MuninSceneLogic *,CGSize,std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_0,std::allocator<std::function<void ()(anonymous namespace::PathAnimationDescription const&,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A18D08;
  a2[1] = v2;
  return result;
}

void sub_1B2F58240(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 48));

  _Block_object_dispose(&STACK[0x820], 8);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(STACK[0x860]);
  v7 = STACK[0x850];
  STACK[0x850] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  _Block_object_dispose((v5 - 248), 8);
  v8 = *(v5 - 80);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  STACK[0x820] = v2;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&STACK[0x820]);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__334(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v2 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v2;
  v3 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v3;
  v4 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v4;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  result = *(a2 + 160);
  *(a1 + 160) = result;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a1 + 176) = *(a2 + 176);
  return result;
}

void __Block_byref_object_dispose__335(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = (a1 + 48);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v3);
}

uint64_t std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 15);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = *(i + 15);
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
LABEL_18:
      operator new();
    }

    while (1)
    {
      v12 = *(v11 + 1);
      if (v12 == v5)
      {
        break;
      }

      if (v8 > 1)
      {
        if (v12 >= *&v6)
        {
          v12 %= *&v6;
        }
      }

      else
      {
        v12 &= *&v6 - 1;
      }

      if (v12 != v9)
      {
        goto LABEL_18;
      }

LABEL_17:
      v11 = *v11;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v11 + 16, i + 16))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void ___ZZ38__VKMuninCameraController_tapAtPoint__ENK4__15clERKN12_GLOBAL__N_124PathAnimationDescriptionEONSt3__113unordered_mapIN3gdc19LayerDataRequestKeyENS4_10shared_ptrINS6_9LayerDataEEENS6_23LayerDataRequestKeyHashENS4_8equal_toIS7_EENS4_9allocatorINS4_4pairIKS7_SA_EEEEEE_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(*(a1 + 32) + 8);
    memset(v35, 0, sizeof(v35));
    std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(v35, *(v3 + 48), *(v3 + 56), 0x63FB9AEB1FDCD759 * ((*(v3 + 56) - *(v3 + 48)) >> 3));
    v36 = *(v3 + 72);
    v4 = *(v3 + 88);
    v38 = *(v3 + 96);
    v5 = *(v3 + 112);
    v37 = v4;
    v39 = v5;
    v40 = *(v3 + 120);
    v41 = *(v3 + 136);
    v42 = *(v3 + 144);
    v6 = *(v3 + 160);
    v43 = *(v3 + 152);
    v44 = v6;
    v7 = *(v3 + 168);
    v45 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v3 + 176);
    v9 = *(a1 + 104);
    v17[2] = *(a1 + 88);
    v17[3] = v9;
    v10 = *(a1 + 136);
    v17[4] = *(a1 + 120);
    v17[5] = v10;
    v11 = *(a1 + 72);
    v17[0] = *(a1 + 56);
    v17[1] = v11;
    v19 = *(a1 + 160);
    v23 = *(a1 + 196);
    v12 = *(a1 + 208);
    v25 = *(a1 + 224);
    v46 = v8;
    v13 = *(a1 + 176);
    v14 = *(a1 + 184);
    v18 = *(a1 + 152);
    v20 = v13;
    v21 = v14;
    v22 = *(a1 + 192);
    v24 = v12;
    v26[0] = v27;
    v26[1] = v27;
    v26[2] = v27;
    v26[3] = 6;
    geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v26, *(a1 + 240), *(a1 + 248));
    *(v28 + 5) = *(a1 + 2005);
    v28[0] = *(a1 + 2000);
    v29 = *(a1 + 2016);
    v30 = *(a1 + 2032);
    v32 = *(a1 + 2056);
    v31 = *(a1 + 2040);
    v33 = *(a1 + 2064);
    v34 = *(a1 + 2072);
    std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>>::unordered_map(__p, *(*(a1 + 40) + 8) + 48);
    [WeakRetained pathAnimationPrepared:v35 tap:v17 preloadedViews:__p];
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(__p[2]);
    v15 = __p[0];
    __p[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }

    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v26);
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    v47 = v35;
    std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v47);
  }
}

void sub_1B2F58838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(a12);
  if (__p)
  {
    operator delete(__p);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v13 + 184);
  if (*(v14 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v14 - 72));
  }

  *(v14 - 56) = v14 - 192;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100]((v14 - 56));

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_56c36_ZTSN12_GLOBAL__N_114TapDescriptionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  v4 = *(a2 + 88);
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  *(a1 + 88) = v4;
  *(a1 + 152) = *(a2 + 152);
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v7;
  v8 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v8;
  *(a1 + 196) = *(a2 + 196);
  v9 = *(a2 + 208);
  v10 = *(a2 + 224);
  *(a1 + 240) = a1 + 272;
  v11 = a1 + 240;
  *(a1 + 208) = v9;
  *(a1 + 224) = v10;
  *(a1 + 248) = a1 + 272;
  *(a1 + 256) = a1 + 272;
  *(a1 + 264) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((a1 + 240), *(a2 + 240), *(a2 + 248));
  v12 = *(a2 + 2000);
  *(v11 + 1765) = *(a2 + 2005);
  *(v11 + 1760) = v12;
  v13 = *(a2 + 2016);
  *(v11 + 1792) = *(a2 + 2032);
  *(v11 + 1776) = v13;
  v14 = *(a2 + 2040);
  *(v11 + 1816) = *(a2 + 2056);
  *(v11 + 1800) = v14;
  result = *(a2 + 2064);
  *(v11 + 1824) = result;
  *(v11 + 1832) = *(a2 + 2072);
  return result;
}

void sub_1B2F58C68(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 1);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1B2F59024(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 1840));
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v1);
  _Unwind_Resume(a1);
}

void sub_1B2F59660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44)
{
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v46 + 224);
  objc_destroyWeak((v46 + 32));
  objc_destroyWeak((v47 - 152));
  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_40c36_ZTSN12_GLOBAL__N_114TapDescriptionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v3;
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v6;
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  *(a1 + 136) = *(a2 + 136);
  v7 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v7;
  v8 = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 168) = v8;
  *(a1 + 180) = *(a2 + 180);
  v9 = *(a2 + 192);
  v10 = *(a2 + 208);
  *(a1 + 224) = a1 + 256;
  v11 = a1 + 224;
  *(a1 + 192) = v9;
  *(a1 + 208) = v10;
  *(a1 + 232) = a1 + 256;
  *(a1 + 240) = a1 + 256;
  *(a1 + 248) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((a1 + 224), *(a2 + 224), *(a2 + 232));
  v12 = *(a2 + 1984);
  *(v11 + 1765) = *(a2 + 1989);
  *(v11 + 1760) = v12;
  v13 = *(a2 + 2000);
  *(v11 + 1792) = *(a2 + 2016);
  *(v11 + 1776) = v13;
  v14 = *(a2 + 2024);
  *(v11 + 1816) = *(a2 + 2040);
  *(v11 + 1800) = v14;
  result = *(a2 + 2048);
  *(v11 + 1824) = result;
  *(v11 + 1832) = *(a2 + 2056);
  return result;
}

void sub_1B2F59C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, void *a12)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(a12);
  if (__p)
  {
    operator delete(__p);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v12 + 184);
  if (*(v13 - 96))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v13 - 96));
  }

  *(v13 - 80) = v13 - 216;
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100]((v13 - 80));
  _Unwind_Resume(a1);
}

void sub_1B2F5A354(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(STACK[0x1120]);
  v4 = STACK[0x1110];
  STACK[0x1110] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v1 + 320);
  if (STACK[0x918])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x918]);
  }

  *(v2 - 104) = &STACK[0x8A0];
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100]((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1B2F5AB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, void *a18, id a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *(v46 + 56) = v47;

  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v48 - 256);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v48 - 224);
  std::__function::__value_func<void ()(geo::Geocentric<double> const&)>::~__value_func[abi:nn200100](v48 - 192);
  MEMORY[0x1B8C62190](v46, 0x10A0C40F8EDBF0ELL);

  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a20);
  objc_destroyWeak(&a27);

  _Unwind_Resume(a1);
}

uint64_t ___ZN12_GLOBAL__N_112BumpAnimatorC2EN2gm6MatrixIdLi3ELi1EEERKS3_dddddNSt3__18functionIFvRKN3geo10GeocentricIdEEEEENS7_IFvvEEENS7_IFvbEEE_block_invoke(void *a1, __n128 a2)
{
  v3 = a2.n128_f32[0];
  a2.n128_u64[0] = a1[7];
  if (a2.n128_f64[0] <= v3)
  {
    v5 = a1[6];
    if ((*(v5 + 48) & 1) == 0)
    {
      *(v5 + 48) = 1;
      v6 = *(v5 + 136);
      if (v6)
      {
        (*(*v6 + 48))(v6);
        a2.n128_u64[0] = a1[7];
      }
    }

    a2.n128_f64[0] = (v3 - a2.n128_f64[0]) / (1.0 - a2.n128_f64[0]);
    a2.n128_f32[0] = a2.n128_f64[0];
    v4 = a1[5];
  }

  else
  {
    a2.n128_f64[0] = v3 / a2.n128_f64[0];
    a2.n128_f32[0] = a2.n128_f64[0];
    v4 = a1[4];
    a2.n128_f32[0] = 1.0 - a2.n128_f32[0];
  }

  v7 = *(v4 + 16);

  return v7(a2);
}

uint64_t ___ZN12_GLOBAL__N_112BumpAnimatorC2EN2gm6MatrixIdLi3ELi1EEERKS3_dddddNSt3__18functionIFvRKN3geo10GeocentricIdEEEEENS7_IFvvEEENS7_IFvbEEE_block_invoke_2(uint64_t result, float a2)
{
  v2 = *(result + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    v6[0] = gm::lerp<gm::Matrix<double,3,1>,double>(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), 1.0 - a2);
    v6[1] = v4;
    v6[2] = v5;
    return (*(*v3 + 48))(v3, v6);
  }

  return result;
}

int16x4_t ___ZN12_GLOBAL__N_112BumpAnimatorC2EN2gm6MatrixIdLi3ELi1EEERKS3_dddddNSt3__18functionIFvRKN3geo10GeocentricIdEEEEENS7_IFvvEEENS7_IFvbEEE_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 168);
  if (v2)
  {
    return std::function<void ()(BOOL)>::operator()(v2, a2);
  }

  return result;
}

void ___ZZ74__VKMuninCameraController_runBumpAnimation_targetPoint_completionHandler__ENK4__14clEb_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 48));
    }

    v4 = [v5 cameraDelegate];
    [v4 didEndAnimatingAccess];

    WeakRetained = v5;
  }
}

void ___ZZ74__VKMuninCameraController_runBumpAnimation_targetPoint_completionHandler__ENK4__13clEv_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained cameraDelegate];
    [v2 mapLayerWasUnableToAnimate];

    WeakRetained = v3;
  }
}

void std::__shared_ptr_emplace<anonymous namespace::PathAnimator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A18A28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F5C8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, id location, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p)
{
  std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100](&a37);
  objc_destroyWeak((v53 + 24));
  objc_destroyWeak(&location);
  if (__p)
  {
    operator delete(__p);
  }

  objc_destroyWeak(&a25);

  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17741(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  if (v2)
  {
    if (v2 == a2 + 48)
    {
      *(result + 72) = result + 48;
      return (*(**(a2 + 72) + 24))(*(a2 + 72), result + 48);
    }

    else
    {
      *(result + 72) = v2;
      *(a2 + 72) = 0;
    }
  }

  else
  {
    *(result + 72) = 0;
  }

  return result;
}

uint64_t ___ZN12_GLOBAL__N_112PathAnimator21setCompletionCallbackENSt3__18functionIFvPS0_bONS_12PointSegmentEEEE_block_invoke(void *a1, char a2)
{
  v2 = *(a1[4] + 8);
  v3 = *(a1[5] + 8);
  v8 = a1[6];
  v7 = a2;
  v4 = *(v2 + 72);
  if (v4)
  {
    return (*(*v4 + 48))(v4, &v8, &v7, v3 + 48);
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
}

uint64_t std::function<void ()(anonymous namespace::PathAnimator *,BOOL,anonymous namespace::PointSegment &&)>::~function(uint64_t a1)
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

void sub_1B2F5CE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a29 == 1)
  {
    *(v44 - 56) = v43;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100]((v44 - 56));
  }

  _Unwind_Resume(a1);
}

md::mun::PointView *anonymous namespace::PointSegment::PointSegment(md::mun::PointView *a1, uint64_t a2)
{
  v4 = md::mun::PointView::PointView(a1, a2);
  md::mun::PointView::PointView((v4 + 1992), (a2 + 1992));
  return a1;
}

void sub_1B2F5D4E8(_Unwind_Exception *a1)
{
  v3 = v1[239];
  if (v3 != v1[241])
  {
    free(v3);
  }

  v4 = v1[236];
  if (v4)
  {
    v1[237] = v4;
    operator delete(v4);
  }

  v5 = v1[233];
  if (v5)
  {
    v1[234] = v5;
    operator delete(v5);
  }

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((v1 + 11));
  _Unwind_Resume(a1);
}

void sub_1B2F5D9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<md::mun::ViewId>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + 1;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::ViewId>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::ViewId>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B2F5DEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1B2F5E48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  if (a45 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  if (a32 == 1)
  {
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&a57);
    if (!v58)
    {
LABEL_6:
      if (!v57)
      {
LABEL_11:

        _Unwind_Resume(a1);
      }

LABEL_10:
      operator delete(v57);
      goto LABEL_11;
    }
  }

  else if (!v58)
  {
    goto LABEL_6;
  }

  operator delete(v58);
  if (!v57)
  {
    goto LABEL_11;
  }

  goto LABEL_10;
}

void sub_1B2F5E9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a43 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a30 == 1)
  {
    *(v44 - 40) = v43;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100]((v44 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2F5EB04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a43 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a30 == 1)
  {
    *(v44 - 40) = v43;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100]((v44 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2F5EE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 + 3984) == 1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::mun::PointView::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  for (i = 32; i != 44; i += 4)
  {
    *(a1 + i) = *(a2 + i);
  }

  *(a1 + 44) = *(a2 + 44);
  for (j = 8; j != 32; j += 8)
  {
    *(a1 + j) = *(a2 + j);
  }

  *(a1 + 48) = *(a2 + 48);
  for (k = 56; k != 80; k += 8)
  {
    *(a1 + k) = *(a2 + k);
  }

  *(a1 + 80) = *(a2 + 80);
  if (a1 == a2)
  {
    v10 = *(a2 + 1848);
    *(a1 + 1853) = *(a2 + 1853);
    *(a1 + 1848) = v10;
  }

  else
  {
    geo::small_vector_base<md::mun::PhotoInfo>::copy((a1 + 88), (a2 + 88), (a1 + 120));
    v7 = *(a2 + 1848);
    *(a1 + 1853) = *(a2 + 1853);
    *(a1 + 1848) = v7;
    std::vector<std::pair<md::mun::ViewId,unsigned int>>::__assign_with_size[abi:nn200100]<std::pair<md::mun::ViewId,unsigned int>*,std::pair<md::mun::ViewId,unsigned int>*>((a1 + 1864), *(a2 + 1864), *(a2 + 1872), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1872) - *(a2 + 1864)) >> 3));
    std::vector<std::pair<md::mun::ViewId,unsigned int>>::__assign_with_size[abi:nn200100]<std::pair<md::mun::ViewId,unsigned int>*,std::pair<md::mun::ViewId,unsigned int>*>((a1 + 1888), *(a2 + 1888), *(a2 + 1896), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1896) - *(a2 + 1888)) >> 3));
    v8 = a1 + 1944;
    v9 = *(a1 + 1912);
    if (v9 != *(a1 + 1928))
    {
      free(v9);
    }

    *(a1 + 1928) = v8;
    *(a1 + 1912) = v8;
    *(a1 + 1920) = v8;
    *(a1 + 1936) = 6;
    geo::small_vector_base<md::mun::PointView::CameraLod>::append<md::mun::PointView::CameraLod const*>((a1 + 1912), *(a2 + 1912), *(a2 + 1920));
  }

  return a1;
}

char *std::vector<std::pair<md::mun::ViewId,unsigned int>>::__assign_with_size[abi:nn200100]<std::pair<md::mun::ViewId,unsigned int>*,std::pair<md::mun::ViewId,unsigned int>*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::pair<md::mun::ViewId,unsigned int>>::__vallocate[abi:nn200100](a1, v11);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      v17 = *v5;
      *(result + 7) = *(v5 + 7);
      *result = v17;
      *(result + 4) = *(v5 + 4);
      v5 = (v5 + 24);
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        v14 = *v5;
        *(result + 7) = *(v5 + 7);
        *result = v14;
        *(result + 4) = *(v5 + 4);
        v5 = (v5 + 24);
        result += 24;
      }

      while (v5 != v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v13 != a3)
    {
      v15 = v12;
      do
      {
        v16 = *v13;
        *(v15 + 16) = *(v13 + 2);
        *v15 = v16;
        v15 += 24;
        v13 = (v13 + 24);
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_1B2F5F844(_Unwind_Exception *a1)
{
  STACK[0x7D0] = &STACK[0x808];
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&STACK[0x7D0]);

  _Unwind_Resume(a1);
}

uint64_t std::vector<md::mun::CollectionPoint>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<md::mun::CollectionPoint>::__emplace_back_slow_path<md::mun::CollectionPoint const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<md::mun::CollectionPoint>>::construct[abi:nn200100]<md::mun::CollectionPoint,md::mun::CollectionPoint const&,void,0>(a1[1], a2);
    result = v3 + 1864;
    a1[1] = v3 + 1864;
  }

  a1[1] = result;
  return result;
}

void sub_1B2F5FD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v12 - 104);

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v11 + 96);
  objc_destroyWeak(&a9);
  MEMORY[0x1B8C62190](v10, 0x10A0C401B67C7C3);

  _Unwind_Resume(a1);
}

void sub_1B2F5FFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a29 == 1)
  {
    *(v44 - 56) = v43;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100]((v44 - 56));
  }

  _Unwind_Resume(a1);
}

void ___ZZZ88__VKMuninCameraController_moveToPoint_withHeading_withPitch_animated_completionHandler__EN3__6clEN3gdc23RequestCompletionStatusEONSt3__113unordered_mapINS0_19LayerDataRequestKeyENS2_10shared_ptrINS0_9LayerDataEEENS0_23LayerDataRequestKeyHashENS2_8equal_toIS4_EENS2_9allocatorINS2_4pairIKS4_S7_EEEEEEENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained cameraDelegate];
    [v4 didEndAnimatingAccess];

    WeakRetained = v5;
  }
}

void sub_1B2F602DC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 1);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1B2F60658(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 1);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1B2F61164(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

double __copy_helper_block_ea8_40c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE48c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE56c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE64c45_ZTSN3geo4UnitINS_21RadianUnitDescriptionEdEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

void geo::small_vector_base<md::mun::PointView::CameraLod>::emplace_back<unsigned char const&,unsigned char &>(void *a1, _BYTE *a2, unsigned __int8 *a3)
{
  v6 = a1[1];
  v7 = ((v6 - *a1) >> 3) + 1;
  if (a1[3] < v7)
  {
    geo::small_vector_base<md::mun::PointView::CameraLod>::grow(a1, v7);
    v6 = a1[1];
  }

  v8 = *a3;
  *v6 = *a2;
  if (v8 >= 7)
  {
    v9 = 7;
  }

  else
  {
    v9 = v8;
  }

  *(v6 + 1) = v9;
  *(v6 + 2) = 0;
  *(v6 + 4) = 0;
  a1[1] = v6 + 8;
}

void sub_1B2F623A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  if (LOBYTE(STACK[0x748]) == 1)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(va);
  }

  _Unwind_Resume(a1);
}

void sub_1B2F62AD0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void gm::quaternionFromAngleAxis<float>(uint64_t a1, uint64_t a2, float a3)
{
  v12[0] = gm::Matrix<float,3,1>::normalized<int,void>(a2);
  v12[1] = v5;
  v12[2] = v6;
  v7 = a3 * 0.5;
  v8 = sinf(v7);
  for (i = 0; i != 3; ++i)
  {
    *(&v13 + i * 4) = *&v12[i] * v8;
  }

  v10 = v14;
  v11 = cosf(v7);
  *a1 = v13;
  *(a1 + 8) = v10;
  *(a1 + 12) = v11;
}

uint64_t md::COverlayRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 360) + 72);
  *(v3 + 28) = 127;
  *(v3 + 32) = 0;
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(a1 + 49) - *(a1 + 48) + 1), v3);
  *(a1 + 396) = result;
  return result;
}

void md::COverlayRenderLayer::layout(md::COverlayRenderLayer *this, const md::LayoutContext *a2)
{
  v387 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1);
  v333 = gdc::Context::context<md::OverlaysContext>(v3);
  if (*(v333 + 177) != 1)
  {
    return;
  }

  v310 = md::LayoutContext::get<md::ElevationContext>(v3);
  v4 = md::LayoutContext::get<md::CameraContext>(v3);
  v5 = gdc::ToCoordinateSystem(v4[3784]);
  v6 = *(gdc::Camera::cameraFrame(v4) + 32);
  v322 = v5;
  if (v5)
  {
    v7 = gdc::Context::get<md::GeometryContext>(v3);
    if (!v7)
    {
      return;
    }

    v8 = *(this + 45);
    if (!*(v8 + 80))
    {
      v9 = v7;
      v10 = gdc::ToCoordinateSystem(*(v7 + 320));
      v11 = 2;
      if (v10)
      {
        v11 = 6;
      }

      v12 = &v9[v11];
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      v15 = *(v8 + 88);
      *(v8 + 80) = v14;
      *(v8 + 88) = v13;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }
    }
  }

  v16 = 234;
  if (!*(this + 87))
  {
    v16 = 196;
  }

  v17 = *(*(this + 47) + 8);
  v18 = *(v17 + v16);
  v19 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(v17 + v16));
  if (v19)
  {
    v19 = *(*(v19 + 16) + 8 * (v18 >> 8));
  }

  v20 = v19;
  ggl::CommandBuffer::clearRenderItems(v19);
  v326 = v20;
  *(v20 + 32) = 0;
  v21 = *(this + 45);
  v22 = *(v21 + 344);
  v356[0] = &unk_1F2A19608;
  v357 = v356;
  v23 = *(v22 + 32);
  v24 = *(v22 + 40);
  while (v23 != v24)
  {
    std::function<void ()(ggl::RenderItem *)>::operator()(v357, *v23++);
  }

  v329 = v4;
  v321 = this;
  std::__function::__value_func<void ()(ggl::RenderItem *)>::~__value_func[abi:nn200100](v356);
  ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(v21 + 344));
  v25 = *(v21 + 304);
  v26 = *(v25 + 4);
  v27 = *(v25 + 5);
  if (v26 != v27)
  {
    do
    {
      v356[0] = *v26;
      std::vector<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v25, v356);
      ++v26;
    }

    while (v26 != v27);
    v26 = *(v25 + 4);
    v27 = *(v25 + 5);
  }

  if (v26 != v27)
  {
    *(v25 + 5) = v26;
  }

  v28 = *(v21 + 312);
  v29 = *(v28 + 4);
  v30 = *(v28 + 5);
  if (v29 != v30)
  {
    do
    {
      v356[0] = *v29;
      std::vector<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendColormappedPos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v28, v356);
      ++v29;
    }

    while (v29 != v30);
    v29 = *(v28 + 4);
    v30 = *(v28 + 5);
  }

  if (v29 != v30)
  {
    *(v28 + 5) = v29;
  }

  ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(v21 + 136));
  ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>::pushAll(*(v21 + 128));
  v31 = *(v21 + 296);
  v32 = *(v31 + 4);
  v33 = *(v31 + 5);
  if (v32 != v33)
  {
    do
    {
      v356[0] = *v32;
      std::vector<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::SRGBBlendPos4DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v31, v356);
      ++v32;
    }

    while (v32 != v33);
    v32 = *(v31 + 4);
    v33 = *(v31 + 5);
  }

  if (v32 != v33)
  {
    *(v31 + 5) = v32;
  }

  ggl::FragmentedPool<ggl::PolygonSolidFill::MeshPipelineSetup>::pushAll(*(v21 + 160));
  v34 = *(v21 + 440);
  v35 = *(v34 + 4);
  v36 = *(v34 + 5);
  if (v35 != v36)
  {
    do
    {
      v356[0] = *v35;
      std::vector<ggl::Textured::PoleTexturedBlendPipelineSetup *,geo::allocator_adapter<ggl::Textured::PoleTexturedBlendPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v34, v356);
      ++v35;
    }

    while (v35 != v36);
    v35 = *(v34 + 4);
    v36 = *(v34 + 5);
  }

  if (v35 != v36)
  {
    *(v34 + 5) = v35;
  }

  v37 = *(v21 + 448);
  v38 = *(v37 + 4);
  v39 = *(v37 + 5);
  if (v38 != v39)
  {
    do
    {
      v356[0] = *v38;
      std::vector<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Textured::TileScalar> *,ggl::zone_mallocator>>::push_back[abi:nn200100](v37, v356);
      ++v38;
    }

    while (v38 != v39);
    v38 = *(v37 + 4);
    v39 = *(v37 + 5);
  }

  if (v38 != v39)
  {
    *(v37 + 5) = v38;
  }

  v40 = *(v21 + 328);
  v41 = *v40;
  ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>::pushAll(*(*v40 + 48));
  v42 = ggl::FragmentedPool<ggl::PolygonOverlay::FillPipelineSetup>::pushAll(*(v41 + 56));
  v43 = *(v41 + 64);
  v44 = *(v43 + 32);
  v45 = *(v43 + 40);
  if (v44 != v45)
  {
    v46 = *(v43 + 8);
    do
    {
      v47 = *v44;
      v48 = *(v43 + 16);
      if (v46 >= v48)
      {
        v49 = (v46 - *v43) >> 3;
        if ((v49 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v50 = v48 - *v43;
        v51 = v50 >> 2;
        if (v50 >> 2 <= (v49 + 1))
        {
          v51 = v49 + 1;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFF8)
        {
          v52 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v52 = v51;
        }

        v358 = v43 + 24;
        if (v52)
        {
          v53 = ggl::zone_mallocator::instance(v42);
          v54 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonOverlay::AntialiasPipelineSetup *>(v53, v52);
        }

        else
        {
          v54 = 0;
        }

        v56 = &v54[8 * v52];
        v55 = &v54[8 * v49];
        *v55 = v47;
        v46 = v55 + 8;
        v57 = *(v43 + 8) - *v43;
        v58 = &v55[-v57];
        memcpy(&v55[-v57], *v43, v57);
        v59 = *v43;
        *v43 = v58;
        v356[1] = v59;
        *(v43 + 8) = v46;
        v356[2] = v59;
        v60 = *(v43 + 16);
        *(v43 + 16) = v56;
        v357 = v60;
        v356[0] = v59;
        v42 = std::__split_buffer<ggl::PolygonOverlay::AntialiasPipelineSetup *,geo::allocator_adapter<ggl::PolygonOverlay::AntialiasPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v356);
      }

      else
      {
        *v46++ = v47;
      }

      *(v43 + 8) = v46;
      ++v44;
    }

    while (v44 != v45);
    v44 = *(v43 + 32);
    v45 = *(v43 + 40);
  }

  if (v44 != v45)
  {
    *(v43 + 40) = v44;
  }

  md::PolylineOverlaySharedResources::resetPools(*(*(v21 + 328) + 16));
  v61 = *(v21 + 336);
  v62 = *(v61 + 48);
  v63 = *(v62 + 4);
  v64 = *(v62 + 5);
  if (v63 != v64)
  {
    do
    {
      v356[0] = *v63;
      std::vector<ggl::MaskingOverlay::FillPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v62, v356);
      ++v63;
    }

    while (v63 != v64);
    v63 = *(v62 + 4);
    v64 = *(v62 + 5);
  }

  v65 = v321;
  if (v63 != v64)
  {
    *(v62 + 5) = v63;
  }

  v66 = *(v61 + 80);
  v67 = *(v66 + 4);
  v68 = *(v66 + 5);
  if (v67 != v68)
  {
    do
    {
      v356[0] = *v67;
      std::vector<ggl::MaskingOverlay::MaskingPipelineSetup *,geo::allocator_adapter<ggl::MaskingOverlay::MaskingPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v66, v356);
      ++v67;
    }

    while (v67 != v68);
    v67 = *(v66 + 4);
    v68 = *(v66 + 5);
    v65 = v321;
  }

  if (v67 != v68)
  {
    *(v66 + 5) = v67;
  }

  md::PolylineOverlaySharedResources::resetPools(*(v65 + 46));
  v69 = md::LayoutContext::get<md::SceneContext>(*(a2 + 1));
  isFinishedLoadingRequiredLayers = md::SceneStateManager::isFinishedLoadingRequiredLayers(*v69);
  v305 = *(v321 + 48);
  if (isFinishedLoadingRequiredLayers)
  {
    v71 = *(v321 + 48) != *(v321 + 49);
  }

  else
  {
    v71 = 1;
  }

  *(v321 + 393) = v71;
  v306 = *(v321 + 99);
  *(v326 + 32) = *(*(v321 + 45) + 72);
  md::RibbonLayoutContext::RibbonLayoutContext(v356, a2);
  v364 = 0;
  v365 = 1065353216;
  v366 = 0;
  v370 = 0;
  v369 = 0;
  v367 = 0;
  v368 = 0;
  v371 = 255;
  v373 = 0;
  v372 = 0;
  v374 = 0;
  v375 = 1;
  v359 = *(v321 + 393);
  v72 = +[VKDebugSettings sharedSettings];
  [v72 ribbonCrispness];
  v73 = fabs(v6);
  v361 = v74;

  v75 = 0;
  v76 = *(v321 + 46);
  v77 = *(*(v76 + 256) + 8);
  v362 = v77;
  v364 = v76;
  v360 = 0;
  if (v73 > 0.0001)
  {
    md::LayoutContext::zoomAtCentrePoint(*(a2 + 1));
    v75 = v77 > 13.5;
  }

  BYTE4(v367) = v75;
  isSplinedEnabled = md::CameraContext::isSplinedEnabled(v329, v77);
  v79 = *(v321 + 34);
  v78 = *(v321 + 35);
  if (v79 == v78)
  {
    v330 = 0;
    v328 = 0;
  }

  else
  {
    v80 = 0;
    v330 = 0;
    v81 = 0;
    v328 = 0;
    v315 = *(v321 + 35);
    do
    {
      v82 = *(*v79 + 392);
      v83 = (v82 + 760);
      for (i = *(v82 + 768); i != v83; i = i[1])
      {
        if (i[13])
        {
          v85 = i[16];
          if (i[17] - v85 == 4)
          {
            v86 = *v85;
            LODWORD(v337[0]) = v86;
            v87 = v333[15];
            if (v87)
            {
              v88 = vcnt_s8(v87);
              v88.i16[0] = vaddlv_u8(v88);
              if (v88.u32[0] > 1uLL)
              {
                v89 = v86;
                if (*&v87 <= v86)
                {
                  v89 = v86 % v87.i32[0];
                }
              }

              else
              {
                v89 = (v87.i32[0] - 1) & v86;
              }

              v90 = *(v333[14] + 8 * v89);
              if (v90)
              {
                for (j = *v90; j; j = *j)
                {
                  v92 = j[1];
                  if (v92 == v86)
                  {
                    if (*(j + 4) == v86)
                    {
                      v93 = *(j + 12);
                      LODWORD(v354[0]) = *(j + 26);
                      WORD2(v354[0]) = *(j + 15);
                      v94 = *(j + 4);
                      v95 = *(j + 40);
                      v318 = *(j + 41);
                      LODWORD(v96) = *(j + 21);
                      v97 = *(j + 44);
                      LOBYTE(v334[0]) = *(j + 45);
                      v323 = v97;
                      if (v330 < v80)
                      {
                        *v330 = v86;
                        v330 += 4;
                        goto LABEL_107;
                      }

                      v311 = v81;
                      v98 = v79;
                      v99 = v93;
                      v100 = v95;
                      v101 = v96;
                      v96 = v330;
                      v102 = (v330 >> 2) + 1;
                      if (!(v102 >> 62))
                      {
                        if (v80 >> 1 > v102)
                        {
                          v102 = v80 >> 1;
                        }

                        if (v102)
                        {
                          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v102);
                        }

                        v103 = (4 * (v330 >> 2));
                        v80 = 0;
                        *v103 = v86;
                        v330 = (v103 + 1);
                        memcpy(0, 0, v96);
                        LODWORD(v96) = v101;
                        v95 = v100;
                        v93 = v99;
                        v79 = v98;
                        v81 = v311;
                        v78 = v315;
                        v97 = v323;
LABEL_107:
                        if (v97)
                        {
                          if (v96 == 0xFFFF)
                          {
                            LOWORD(v104) = 0;
                          }

                          else
                          {
                            v104 = (v96 + 1) % v93;
                          }

                          v376 = COERCE_DOUBLE(v337);
                          v110 = std::__hash_table<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::COverlayRenderLayer::KeyframeState>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v321 + 100, v337[0], &v376);
                          *(v110 + 10) = v96;
                          *(v110 + 11) = v104;
                          *(v110 + 6) = 0;
                          break;
                        }

                        if (v328 < v81)
                        {
                          *v328 = v337[0];
                          v328 += 4;
                          goto LABEL_120;
                        }

                        v312 = v80;
                        v105 = v79;
                        v106 = v93;
                        v107 = v95;
                        v108 = v96;
                        v96 = v328;
                        v109 = (v328 >> 2) + 1;
                        if (!(v109 >> 62))
                        {
                          if (v81 >> 1 > v109)
                          {
                            v109 = v81 >> 1;
                          }

                          if (v109)
                          {
                            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v109);
                          }

                          v111 = (4 * (v328 >> 2));
                          v81 = 0;
                          *v111 = v337[0];
                          v328 = (v111 + 1);
                          memcpy(0, 0, v96);
                          LOWORD(v96) = v108;
                          v95 = v107;
                          v93 = v106;
                          v79 = v105;
                          v80 = v312;
                          v78 = v315;
LABEL_120:
                          v112 = *(v321 + 56);
                          if (v112)
                          {
                            v113 = vcnt_s8(v112);
                            v113.i16[0] = vaddlv_u8(v113);
                            if (v113.u32[0] > 1uLL)
                            {
                              v114 = LODWORD(v337[0]);
                              if (v112 <= LODWORD(v337[0]))
                              {
                                v114 = LODWORD(v337[0]) % v112;
                              }
                            }

                            else
                            {
                              v114 = (v112 - 1) & v337[0];
                            }

                            v115 = *(*(v321 + 55) + 8 * v114);
                            if (v115)
                            {
                              for (k = *v115; k; k = *k)
                              {
                                v117 = k[1];
                                if (v117 == LODWORD(v337[0]))
                                {
                                  if (*(k + 4) == LODWORD(v337[0]))
                                  {
                                    goto LABEL_155;
                                  }
                                }

                                else
                                {
                                  if (v113.u32[0] > 1uLL)
                                  {
                                    if (v117 >= v112)
                                    {
                                      v117 %= v112;
                                    }
                                  }

                                  else
                                  {
                                    v117 &= v112 - 1;
                                  }

                                  if (v117 != v114)
                                  {
                                    break;
                                  }
                                }
                              }
                            }
                          }

                          v118 = objc_alloc_init(VKTimedAnimation);
                          [(VKTimedAnimation *)v118 setDuration:v94];
                          [(VKTimedAnimation *)v118 setTimingFunction:VKAnimationCurveLinear];
                          if ((v95 & 1) == 0)
                          {
                            v119 = v93 / v94;
                            *&v119 = v119;
                            [(VKAnimation *)v118 setFrequency:v119];
                          }

                          [(VKAnimation *)v118 setRunsForever:1];
                          v338 = MEMORY[0x1E69E9820];
                          v339 = 3221225472;
                          v340 = ___ZN2md19COverlayRenderLayer24updateKeyframeAnimationsERKNSt3__16vectorIPNS_21MapTileDataRenderableINS_15OverlayTileDataEEENS1_9allocatorIS6_EEEEPKNS_15OverlaysContextE_block_invoke;
                          v341 = &__block_descriptor_71_e8_v12__0f8l;
                          v342 = v321;
                          v352 = v93;
                          LOWORD(v343) = v93;
                          *(&v343 + 2) = v354[0];
                          HIWORD(v343) = WORD2(v354[0]);
                          v344 = v94;
                          v345 = v95;
                          v346 = v318;
                          v347 = v96;
                          v348 = v323;
                          v350 = BYTE2(v334[0]);
                          v349 = v334[0];
                          v353 = v95;
                          v351 = v337[0];
                          [(VKTimedAnimation *)v118 setStepHandler:&v338];
                          v120 = v118;
                          v376 = COERCE_DOUBLE(&unk_1F2A4BA00);
                          p_super = &v120->super;
                          *&v377 = v120;
                          v121 = *(v321 + 56);
                          if (!v121)
                          {
                            goto LABEL_154;
                          }

                          v122 = vcnt_s8(v121);
                          v122.i16[0] = vaddlv_u8(v122);
                          if (v122.u32[0] > 1uLL)
                          {
                            v123 = LODWORD(v337[0]);
                            if (v121 <= LODWORD(v337[0]))
                            {
                              v123 = LODWORD(v337[0]) % v121;
                            }
                          }

                          else
                          {
                            v123 = (v121 - 1) & v337[0];
                          }

                          v124 = *(*(v321 + 55) + 8 * v123);
                          if (!v124 || (v125 = *v124) == 0)
                          {
LABEL_154:
                            operator new();
                          }

                          while (1)
                          {
                            v126 = v125[1];
                            if (v126 == LODWORD(v337[0]))
                            {
                              if (*(v125 + 4) == LODWORD(v337[0]))
                              {
                                v376 = COERCE_DOUBLE(&unk_1F2A4BA00);

                                v78 = v315;
                                md::AnimationRunner::runAnimation(*(v321 + 44), p_super);

                                goto LABEL_155;
                              }
                            }

                            else
                            {
                              if (v122.u32[0] > 1uLL)
                              {
                                if (v126 >= v121)
                                {
                                  v126 %= v121;
                                }
                              }

                              else
                              {
                                v126 &= v121 - 1;
                              }

                              if (v126 != v123)
                              {
                                goto LABEL_154;
                              }
                            }

                            v125 = *v125;
                            if (!v125)
                            {
                              goto LABEL_154;
                            }
                          }
                        }
                      }

                      std::__throw_bad_array_new_length[abi:nn200100]();
                    }
                  }

                  else
                  {
                    if (v88.u32[0] > 1uLL)
                    {
                      if (v92 >= *&v87)
                      {
                        v92 %= *&v87;
                      }
                    }

                    else
                    {
                      v92 &= *&v87 - 1;
                    }

                    if (v92 != v89)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_155:
        ;
      }

      v79 += 8;
    }

    while (v79 != v78);
  }

  v325 = v306 - v305;
  v127 = v6;
  v128 = v321;
  v129 = *(v321 + 87) != 0;
  v130 = v321 + 416;
  v319 = (v321 + 416);
  while (1)
  {
    v130 = *v130;
    if (!v130)
    {
      break;
    }

    v131 = *(v130 + 4);
    v132 = *(v130 + 10);
    v133 = v333[20];
    std::mutex::lock((v133 + 232));
    v377 = 0uLL;
    v376 = 0.0;
    std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__init_with_size[abi:nn200100]<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*,geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(&v376, *(v133 + 24 * v129 + 160), *(v133 + 24 * v129 + 168), 0xAAAAAAAAAAAAAAABLL * ((*(v133 + 24 * v129 + 168) - *(v133 + 24 * v129 + 160)) >> 3));
    v134 = v376;
    v135 = v377;
    while (*&v134 != v135)
    {
      v136 = *(*&v134 + 8);
      if ([v136 identifier] == v131)
      {
        goto LABEL_166;
      }

      *&v134 += 24;
    }

    v136 = 0;
LABEL_166:
    *&v354[0] = &v376;
    std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](v354);
    std::mutex::unlock((v133 + 232));
    if (v136)
    {
      v137 = [v136 rasterTileProvider];
      v138 = [v137 visibleKeyframeIndex] == v132;

      if (!v138)
      {
        v139 = [v136 rasterTileProvider];
        [v139 setVisibleKeyframeIndex:v132];
      }
    }

    v128 = v321;
  }

  v140 = *(v128 + 57);
  if (v140)
  {
    v141 = (v128 + 456);
    while (v328)
    {
      v142 = 0;
      while (*v142 != *(v140 + 16))
      {
        if (++v142 == v328)
        {
          goto LABEL_179;
        }
      }

      if (v142 == v328)
      {
        break;
      }

      v143 = *v140;
LABEL_206:
      v140 = v143;
      if (!v143)
      {
        goto LABEL_207;
      }
    }

LABEL_179:
    v144 = *(v140 + 32);
    [v144 stop];

    v128 = v321;
    v145 = *(v321 + 448);
    v146 = *(v140 + 8);
    v147 = vcnt_s8(v145);
    v147.i16[0] = vaddlv_u8(v147);
    if (v147.u32[0] > 1uLL)
    {
      if (v146 >= *&v145)
      {
        v146 %= *&v145;
      }
    }

    else
    {
      v146 &= *&v145 - 1;
    }

    v143 = *v140;
    v148 = *(v321 + 55);
    v149 = *(v148 + 8 * v146);
    do
    {
      v150 = v149;
      v149 = *v149;
    }

    while (v149 != v140);
    if (v150 == v141)
    {
      goto LABEL_389;
    }

    v151 = v150[1];
    if (v147.u32[0] > 1uLL)
    {
      if (v151 >= *&v145)
      {
        v151 %= *&v145;
      }
    }

    else
    {
      v151 &= *&v145 - 1;
    }

    v152 = *v140;
    if (v151 != v146)
    {
LABEL_389:
      if (v143)
      {
        v153 = *(v143 + 8);
        if (v147.u32[0] > 1uLL)
        {
          if (v153 >= *&v145)
          {
            v153 %= *&v145;
          }
        }

        else
        {
          v153 &= *&v145 - 1;
        }

        v152 = *v140;
        if (v153 == v146)
        {
          goto LABEL_199;
        }
      }

      *(v148 + 8 * v146) = 0;
      v152 = *v140;
    }

    if (!v152)
    {
LABEL_205:
      *v150 = v152;
      *v140 = 0;
      --*(v321 + 58);
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,geo::_retain_ptr<VKAnimation * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,void *>>>::operator()[abi:nn200100](1, v140);
      goto LABEL_206;
    }

LABEL_199:
    v154 = *(v152 + 8);
    if (v147.u32[0] > 1uLL)
    {
      if (v154 >= *&v145)
      {
        v154 %= *&v145;
      }
    }

    else
    {
      v154 &= *&v145 - 1;
    }

    if (v154 != v146)
    {
      *(*(v321 + 55) + 8 * v154) = v150;
      v152 = *v140;
    }

    goto LABEL_205;
  }

LABEL_207:
  v155 = *v319;
  v156 = v330;
  if (*v319)
  {
    while (v156)
    {
      v157 = 0;
      while (*v157 != *(v155 + 4))
      {
        if (++v157 == v330)
        {
          goto LABEL_215;
        }
      }

      if (v157 == v330)
      {
        break;
      }

      v158 = *v155;
LABEL_242:
      v155 = v158;
      v156 = v330;
      if (!v158)
      {
        goto LABEL_243;
      }
    }

LABEL_215:
    v159 = *(v128 + 408);
    v160 = *(v155 + 1);
    v161 = vcnt_s8(v159);
    v161.i16[0] = vaddlv_u8(v161);
    if (v161.u32[0] > 1uLL)
    {
      if (v160 >= *&v159)
      {
        v160 %= *&v159;
      }
    }

    else
    {
      v160 &= *&v159 - 1;
    }

    v158 = *v155;
    v162 = *(v128 + 50);
    v163 = *(v162 + 8 * v160);
    do
    {
      v164 = v163;
      v163 = *v163;
    }

    while (v163 != v155);
    if (v164 == v319)
    {
      goto LABEL_390;
    }

    v165 = *(v164 + 1);
    if (v161.u32[0] > 1uLL)
    {
      if (v165 >= *&v159)
      {
        v165 %= *&v159;
      }
    }

    else
    {
      v165 &= *&v159 - 1;
    }

    v166 = *v155;
    if (v165 != v160)
    {
LABEL_390:
      if (v158)
      {
        v167 = *(v158 + 1);
        if (v161.u32[0] > 1uLL)
        {
          if (v167 >= *&v159)
          {
            v167 %= *&v159;
          }
        }

        else
        {
          v167 &= *&v159 - 1;
        }

        v166 = *v155;
        if (v167 == v160)
        {
          goto LABEL_235;
        }
      }

      *(v162 + 8 * v160) = 0;
      v166 = *v155;
    }

    if (!v166)
    {
LABEL_241:
      *v164 = v166;
      *v155 = 0;
      --*(v128 + 53);
      operator delete(v155);
      goto LABEL_242;
    }

LABEL_235:
    v168 = *(v166 + 1);
    if (v161.u32[0] > 1uLL)
    {
      if (v168 >= *&v159)
      {
        v168 %= *&v159;
      }
    }

    else
    {
      v168 &= *&v159 - 1;
    }

    if (v168 != v160)
    {
      *(*(v128 + 50) + 8 * v168) = v164;
      v166 = *v155;
    }

    goto LABEL_241;
  }

LABEL_243:
  memset(v334, 0, sizeof(v334));
  v335 = 1065353216;
  v169 = v333[19];
  v355[0] = &unk_1F2A19698;
  v355[3] = v355;
  geo::TaskQueue::barrierSync(v169, v355);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v355);
  v170 = *(v128 + 34);
  v316 = *(v128 + 35);
  if (v170 == v316)
  {
    goto LABEL_381;
  }

  v171 = *(v128 + 87);
  if (v322)
  {
    v172 = 160;
  }

  else
  {
    v172 = 128;
  }

  v173 = 112;
  if (v322)
  {
    v173 = 144;
  }

  v308 = v173;
  v309 = v172;
  __asm { FMOV            V0.4S, #1.0 }

  v307 = _Q0;
  do
  {
    __p = *v170;
    v179 = (*v170)[49];
    if (!*(v179 + 776))
    {
      goto LABEL_380;
    }

    v180 = gdc::Context::context<md::TerrainMeshProviderContext>(*(a2 + 1));
    __src = v170;
    if (v180)
    {
      v181 = v180;
      v182 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(v180 + 1, (v179 + 168));
      if (v182)
      {
        v183 = *(v182 + 6);
      }

      else
      {
        v183 = v181 + 6;
      }

      v313 = v183 != v181 + 6 && v73 > 0.0001;
    }

    else
    {
      v313 = 0;
    }

    md::BaseMapTileDataRenderable::adjustZScale(__p, v310[4], v310[5]);
    v184 = *(__p + 56);
    v185 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v186 = 0;
    v187 = 1 << *(v179 + 169);
    v188 = (v187 + ~*(v179 + 172));
    v189 = 1.0 / v187;
    v190 = v184 + v189 * *(v179 + 176);
    v383 = 0;
    v381 = 0;
    v380 = 0u;
    v379 = 0u;
    v378 = 0u;
    v377 = 0u;
    v376 = v189;
    *&v379 = v189;
    v382 = v189;
    v384 = v190;
    v191 = v185 + 101;
    v385 = v189 * v188;
    v386 = xmmword_1B33B0740;
    do
    {
      v192 = 0;
      v193 = &v376;
      do
      {
        v194 = 0;
        v195 = 0.0;
        v196 = v191;
        do
        {
          v197 = *v196;
          v196 += 4;
          v195 = v195 + v193[v194++] * v197;
        }

        while (v194 != 4);
        *(&v338 + 4 * v192++ + v186) = v195;
        v193 += 4;
      }

      while (v192 != 4);
      ++v186;
      ++v191;
    }

    while (v186 != 4);
    v198 = 0;
    v199 = &v338;
    do
    {
      v201 = *v199;
      v200 = *(v199 + 1);
      v199 += 4;
      v337[v198++] = vcvt_hight_f32_f64(vcvt_f32_f64(v201), v200);
    }

    while (v198 != 4);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(&v338, *(v179 + 728), 1);
    v202 = v343;
    *v343 = v337[0];
    *(v202 + 1) = v337[1];
    *(v202 + 2) = v337[2];
    *(v202 + 3) = v337[3];
    v203 = v185[471] * v185[173] / (v185[171] * v189);
    v202[16] = v203;
    ggl::BufferMemory::~BufferMemory(&v338);
    v336 = (v179 + 880);
    v204 = pthread_rwlock_wrlock((v179 + 880));
    if (v204)
    {
      geo::read_write_lock::logFailure(v204, "write lock", v205);
    }

    v206 = (v179 + 760);
    v320 = v179;
    v207 = *(v179 + 768);
    v331 = (v179 + 760);
    while (v207 != v206)
    {
      v208 = v207[2];
      if (v208)
      {
        ggl::DataAccess<ggl::Tile::View>::DataAccess(&v338, *(v208 + 64), 1);
        v209 = *(v208 + 48);
        v210 = v343;
        *v343 = *v209;
        v210[1] = v209[1];
        goto LABEL_271;
      }

      v211 = v207[13];
      if (v211)
      {
        v213 = *v211;
        v212 = v211[1];
        if (*v211 != v212)
        {
          do
          {
            md::OverlayTileData::OverlayTileResource::RasterTile::updateWithContext(v213, *(a2 + 1), v184);
            v213 = (v213 + 144);
          }

          while (v213 != v212);
        }
      }

      else
      {
        v214 = v207[14];
        if (v214)
        {
          v216 = *v214;
          v215 = v214[1];
          while (v216 != v215)
          {
            v217 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
            v218 = 0;
            v219 = 1 << *(v216 + 1);
            v220 = 1.0 / v219;
            v221 = (v219 + ~*(v216 + 4));
            v222 = v184 + v220 * *(v216 + 8);
            v383 = 0;
            v381 = 0;
            v380 = 0u;
            v379 = 0u;
            v378 = 0u;
            v377 = 0u;
            v376 = v220;
            *&v379 = v220;
            v382 = v220;
            v384 = v222;
            v223 = (v217 + 808);
            v385 = v220 * v221;
            v386 = xmmword_1B33B0740;
            do
            {
              v224 = 0;
              v225 = &v376;
              do
              {
                v226 = 0;
                v227 = 0.0;
                v228 = v223;
                do
                {
                  v229 = *v228;
                  v228 += 4;
                  v227 = v227 + v225[v226++] * v229;
                }

                while (v226 != 4);
                *(&v338 + 4 * v224++ + v218) = v227;
                v225 += 4;
              }

              while (v224 != 4);
              ++v218;
              ++v223;
            }

            while (v218 != 4);
            v230 = 0;
            v231 = &v338;
            do
            {
              v233 = *v231;
              v232 = *(v231 + 1);
              v231 += 4;
              v354[v230++] = vcvt_hight_f32_f64(vcvt_f32_f64(v233), v232);
            }

            while (v230 != 4);
            ggl::DataAccess<ggl::Tile::View>::DataAccess(&v338, *(v216 + 64), 1);
            v234 = v343;
            v235 = v354[1];
            *v343 = v354[0];
            *(v234 + 1) = v235;
            v236 = v354[3];
            *(v234 + 2) = v354[2];
            *(v234 + 3) = v236;
            ggl::BufferMemory::~BufferMemory(&v338);
            ggl::DataAccess<ggl::Tile::View>::DataAccess(&v338, *(v216 + 112), 1);
            v237 = *(v216 + 96);
            v238 = v343;
            *v343 = *(v216 + 128) * *v237;
            v238[1] = v237[1];
            ggl::BufferMemory::~BufferMemory(&v338);
            v216 += 144;
          }
        }

        else
        {
          v239 = v207[11];
          if (v239)
          {
            gdc::Tiled::unitsPerMeter((v179 + 168));
            v241 = v240;
            ggl::ConstantDataTyped<ggl::Grid::Style>::write(&v338, *(v239 + 8));
            ggl::ConstantDataTyped<ggl::Tile::Transform>::read(&v376, __p[30]);
            v242 = 0;
            v243 = v379;
            v244 = v343;
            do
            {
              v244[v242] = *(v243 + v242 * 4);
              ++v242;
            }

            while (v242 != 4);
            for (m = 0; m != 3; ++m)
            {
              v244[m + 4] = *(v243 + 16 + m * 4);
            }

            v246 = 0;
            v247 = v244 + 8;
            v248 = v243 + 32;
            do
            {
              for (n = 0; n != 16; n += 4)
              {
                *(v247 + n) = *(v248 + n);
              }

              ++v246;
              ++v247;
              v248 += 16;
            }

            while (v246 != 16);
            for (ii = 0; ii != 4; ++ii)
            {
              v244[ii + 72] = *(v243 + 288 + ii * 4);
            }

            for (jj = 0; jj != 3; ++jj)
            {
              v244[jj + 76] = *(v243 + 304 + jj * 4);
            }

            for (kk = 0; kk != 3; ++kk)
            {
              v244[kk + 80] = *(v243 + 320 + kk * 4);
            }

            goto LABEL_320;
          }

          v253 = v207[12];
          if (v253)
          {
            gdc::Tiled::unitsPerMeter((v179 + 168));
            v241 = v254;
            ggl::ConstantDataTyped<ggl::Grid::Style>::write(&v338, *(v253 + 8));
            ggl::ConstantDataTyped<ggl::Tile::Transform>::read(&v376, __p[30]);
            v255 = 0;
            v243 = v379;
            v244 = v343;
            do
            {
              v244[v255] = *(v243 + v255 * 4);
              ++v255;
            }

            while (v255 != 4);
            for (mm = 0; mm != 3; ++mm)
            {
              v244[mm + 4] = *(v243 + 16 + mm * 4);
            }

            v257 = 0;
            v258 = v244 + 8;
            v259 = v243 + 32;
            do
            {
              for (nn = 0; nn != 16; nn += 4)
              {
                *(v258 + nn) = *(v259 + nn);
              }

              ++v257;
              ++v258;
              v259 += 16;
            }

            while (v257 != 16);
            for (i1 = 0; i1 != 4; ++i1)
            {
              v244[i1 + 72] = *(v243 + 288 + i1 * 4);
            }

            for (i2 = 0; i2 != 3; ++i2)
            {
              v244[i2 + 76] = *(v243 + 304 + i2 * 4);
            }

            for (i3 = 0; i3 != 3; ++i3)
            {
              v244[i3 + 80] = *(v243 + 320 + i3 * 4);
            }

LABEL_320:
            v264 = *(v243 + 336);
            v244[88] = *(v243 + 352);
            *(v244 + 21) = v264;
            v244[84] = computeRouteZOffset(*(a2 + 1)) * v241;
            ggl::BufferMemory::~BufferMemory(&v376);
LABEL_271:
            ggl::BufferMemory::~BufferMemory(&v338);
          }
        }
      }

      v207 = v207[1];
      v206 = (v179 + 760);
    }

    geo::write_lock_guard::~write_lock_guard(&v336);
    v265 = v321;
    v170 = __src;
    if ((*(v333 + 209) & 1) == 0)
    {
      if (v320)
      {
        v265 = v321;
        v170 = __src;
        if (md::OverlayTileData::hasTileData(v320))
        {
          if (!_tileIsFallbackable(v320))
          {
            v273 = *(v321 + 34);
            v274 = *(v321 + 35);
            while (v273 != v274)
            {
              v275 = *(*v273 + 392);
              if (_tileIsFallbackable(v275))
              {
                v276 = (*(*v275 + 32))(v275);
                v277 = (*(*v320 + 32))(v320);
                if (*v277 >= *v276 && v277[3] <= v276[3])
                {
                  v278 = 0;
                  v279 = v276 + 4;
                  v280 = v277 + 4;
                  do
                  {
                    if (v278 == 2)
                    {
                      goto LABEL_354;
                    }

                    v281 = v278;
                    if (*(v280 - 3) < *(v279 - 3))
                    {
                      break;
                    }

                    v282 = *v280++;
                    v283 = v282;
                    v284 = *v279++;
                    ++v278;
                  }

                  while (v283 <= v284);
                  if (v281 > 1)
                  {
                    goto LABEL_354;
                  }
                }
              }

              v273 += 8;
            }
          }
        }
      }

      if (!v313 && *(v265 + 393) == 1)
      {
        v266 = gdc::Context::get<md::GeometryContext>(*(a2 + 1));
        if (v266)
        {
          v267 = v266;
          v268 = *(__p[49] + 169);
          v269 = COERCE_DOUBLE(ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(v265 + 360) + 136)));
          v270 = *(*(v321 + 45) + v309);
          v271 = v270[1];
          if (v271 != *v270)
          {
            v272 = *(v271 - 8);
            v376 = *&v272;
            v270[1] = v271 - 8;
            goto LABEL_343;
          }

          v285 = v270[11];
          if (!v285)
          {
            goto LABEL_386;
          }

          *&v272 = COERCE_DOUBLE((*(*v285 + 48))(v285));
          v376 = *&v272;
LABEL_343:
          std::vector<ggl::PolygonSolidFill::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::MeshPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v270 + 4), &v376);
          v338 = v272;
          v286 = v270[15];
          if (!v286)
          {
LABEL_386:
            std::__throw_bad_function_call[abi:nn200100]();
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          (*(*v286 + 48))(v286, &v338);
          v287 = *(v272 + 136);
          v287[1] = 0;
          v288 = __p[28];
          *v287 = v288;
          v289 = *(v272 + 232);
          v290 = __p[29];
          if (v290)
          {
            atomic_fetch_add_explicit((v290 + 8), 1uLL, memory_order_relaxed);
          }

          v314 = v268;
          v291 = v289[1];
          *v289 = v288;
          v289[1] = v290;
          if (v291)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v291);
          }

          ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v272 + 136), *(v272 + 232), __p[30], __p[31]);
          v292 = (*(v321 + 45) + v308);
          v338 = *v292;
          v293 = v292[1];
          v339 = v293;
          *&v294 = v269;
          if (v293)
          {
            atomic_fetch_add_explicit(&v293->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v272, &v338);
            std::__shared_weak_count::__release_shared[abi:nn200100](v293);
          }

          else
          {
            ggl::PipelineSetup::setState(v272, &v338);
          }

          v170 = __src;
          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v338, *(*(v272 + 136) + 32));
          v295 = v343;
          *v343 = v307;
          *(v295 + 1) = xmmword_1B33B0720;
          v265 = v321;
          v294[3] = *(*(v321 + 45) + 104);
          v296 = gdc::ToCoordinateSystem(*(v267 + 320));
          v297 = 16;
          if (v296)
          {
            v297 = 18;
          }

          v294[8] = *&v267[v297];
          v294[4] = *&v272;
          v294[6] = 0.0;
          *(v294 + 10) = v325 + v314;
          v376 = *&v294;
          std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v326 + 72), &v376);
          ggl::BufferMemory::~BufferMemory(&v338);
        }
      }
    }

LABEL_354:
    for (i4 = *(v320 + 96); i4 != v331; i4 = *(i4 + 8))
    {
      v299 = *(i4 + 136);
      v300 = *(i4 + 128);
      if (v299 != v300)
      {
        while (1)
        {
          v301 = v171 == 1 ? v333 + 5 : v333;
          v302 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(v301, *v300);
          if (v302)
          {
            break;
          }

          if (++v300 == v299)
          {
            v303 = 1;
            goto LABEL_364;
          }
        }

        v303 = (4 * *(v302 + 5)) | 1;
LABEL_364:
        if (v322)
        {
          md::COverlayRenderLayer::layoutResourceForGlobe(v265, (i4 + 16), __p, v326, a2, v333, v356, v325, v303, 0);
        }

        else
        {
          md::COverlayRenderLayer::layoutResource(v265, (i4 + 16), __p, v326, a2, v333, v356, v325, v127, v303, v334, 0);
        }

        v304 = *(i4 + 24) || *(i4 + 32) || *(i4 + 88) || *(i4 + 96) != 0;
        if (v73 > 0.0001 && *(v265 + 394) == 1 && (v171 != 1 || v304) && *(v333 + 176) == 1)
        {
          if (v322)
          {
            md::COverlayRenderLayer::layoutResourceForGlobe(v265, (i4 + 16), __p, v326, a2, v333, v356, v325, v303, 1);
          }

          else
          {
            md::COverlayRenderLayer::layoutResource(v265, (i4 + 16), __p, v326, a2, v333, v356, v325, v127, v303, v334, 1);
          }
        }
      }
    }

LABEL_380:
    ++v170;
  }

  while (v170 != v316);
LABEL_381:
  ggl::CommandBuffer::stableSortRenderItems(*(v326 + 72), *(v326 + 80));
  std::__hash_table<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::__unordered_map_hasher<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,md::RenderedCirclePairHash,std::equal_to<std::pair<signed char,BOOL>>,true>,std::__unordered_map_equal<std::pair<signed char,BOOL>,std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>,std::equal_to<std::pair<signed char,BOOL>>,md::RenderedCirclePairHash,true>,std::allocator<std::__hash_value_type<std::pair<signed char,BOOL>,std::unordered_set<std::shared_ptr<md::CircleOverlayRenderable>>>>>::~__hash_table(v334);
  if (v370)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v370);
  }
}