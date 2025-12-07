uint64_t md::mun::PointView::hasViewRequest(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a5 == a6)
  {
    return 0;
  }

  while (*a5 != a1 || *(a5 + 8) != a3 || *(a5 + 9) != a4 || *(a5 + 10) != a2)
  {
    a5 += 24;
    if (a5 == a6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t md::mun::PointView::PointView(uint64_t a1, uint64_t a2, char **a3)
{
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v6;
  v7 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v7;
  *(a1 + 44) = *(a2 + 44);
  v8 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v8;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = a1 + 120;
  *(a1 + 112) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((a1 + 88), *(a2 + 88), *(a2 + 96));
  v9 = *(a2 + 1848);
  *(a1 + 1853) = *(a2 + 1853);
  *(a1 + 1848) = v9;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1896) = 0u;
  *(a1 + 1912) = a1 + 1944;
  *(a1 + 1920) = a1 + 1944;
  *(a1 + 1928) = a1 + 1944;
  *(a1 + 1936) = 6;
  geo::small_vector_base<md::mun::PointView::CameraLod>::append<md::mun::PointView::CameraLod const*>((a1 + 1912), *a3, a3[1]);
  return a1;
}

void md::mun::PointView::addOptionalView(md::mun::PointView *this, unsigned __int8 a2, int a3)
{
  v3 = a3;
  v6 = *this;
  v7 = *(this + 1859);
  v8 = *(this + 236);
  v9 = *(this + 237);
  if ((md::mun::PointView::hasViewRequest(*this, v7, a2, a3, v8, v9) & 1) == 0)
  {
    v10 = *(this + 238);
    if (v9 >= v10)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v8) >> 3);
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(v15);
      }

      v16 = 24 * v12;
      *v16 = v6;
      *(v16 + 8) = a2;
      *(v16 + 9) = v3;
      *(v16 + 10) = v7;
      *(v16 + 16) = 0;
      v11 = 24 * v12 + 24;
      v17 = *(this + 236);
      v18 = *(this + 237) - v17;
      v19 = (24 * v12 - v18);
      memcpy(v19, v17, v18);
      v20 = *(this + 236);
      *(this + 236) = v19;
      *(this + 237) = v11;
      *(this + 238) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v9 = v6;
      *(v9 + 8) = a2;
      *(v9 + 9) = v3;
      *(v9 + 10) = v7;
      v11 = v9 + 24;
      *(v9 + 16) = 0;
    }

    *(this + 237) = v11;
  }
}

void md::mun::PointView::addRequiredView(md::mun::PointView *this, unsigned __int8 a2, int a3)
{
  v3 = a3;
  v6 = *this;
  v7 = *(this + 1859);
  v8 = *(this + 233);
  v9 = *(this + 234);
  if ((md::mun::PointView::hasViewRequest(*this, v7, a2, a3, v8, v9) & 1) == 0)
  {
    v10 = *(this + 235);
    if (v9 >= v10)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v8) >> 3);
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(v15);
      }

      v16 = 24 * v12;
      *v16 = v6;
      *(v16 + 8) = a2;
      *(v16 + 9) = v3;
      *(v16 + 10) = v7;
      *(v16 + 16) = 0;
      v11 = 24 * v12 + 24;
      v17 = *(this + 233);
      v18 = *(this + 234) - v17;
      v19 = (24 * v12 - v18);
      memcpy(v19, v17, v18);
      v20 = *(this + 233);
      *(this + 233) = v19;
      *(this + 234) = v11;
      *(this + 235) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v9 = v6;
      *(v9 + 8) = a2;
      *(v9 + 9) = v3;
      *(v9 + 10) = v7;
      v11 = v9 + 24;
      *(v9 + 16) = 0;
    }

    *(this + 234) = v11;
  }
}

void md::Logic<md::NonTiledAssetLogic,md::NonTiledAssetContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *md::Logic<md::NonTiledAssetLogic,md::NonTiledAssetContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0x932EE29454ABDC4ELL && *(a3 + 32))
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

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t gdc::ObjectHolder<md::NonTiledAssetContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::NonTiledAssetContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::NonTiledAssetContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::NonTiledAssetContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A4E6F8;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(v2 + 80);
    std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(v2 + 40);
    v3 = std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C40ED4D4612);
  }

  return a1;
}

void md::NonTiledAssetLogic::~NonTiledAssetLogic(md::NonTiledAssetLogic *this)
{
  md::NonTiledAssetLogic::~NonTiledAssetLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4E620;
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(this + 200);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(this + 160);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::~__hash_table(this + 120);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::preparePolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(uint64_t **a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = md::LayoutContext::get<md::SharedResourcesContext>(a2);
  v7 = md::LayoutContext::get<md::CameraContext>(a2);
  v8 = *v6;
  v9 = v8;
  if (v8)
  {
    objc_msgSend_textureManager(v8);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v32[0] = &unk_1F2A4E7B8;
  v33 = v32;
  v25 = v27;
  v26 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  v11 = a1[1];
  if (*a1 != v11)
  {
    v12 = fmaxf(*(v7 + 3080) + *(v7 + 3076), 1.0);
    while (1)
    {
      v13 = *v10;
      if (!v33 || std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::operator()(v33, *v10))
      {
        break;
      }

LABEL_17:
      if (++v10 == v11)
      {
        goto LABEL_18;
      }
    }

    v14 = *(v13 + 392);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v29, *(v13 + 224), 0);
    v15 = v30[1];
    v31[0] = *v30;
    v31[1] = v15;
    v16 = v30[3];
    v31[2] = v30[2];
    v31[3] = v16;
    ggl::BufferMemory::~BufferMemory(v29);
    v17 = ggl::CullingGrid::intersectedCellsForView(v31, 0.0);
    v18 = (*(*v14 + 48))(v14);
    v19 = *v18;
    v20 = v18[1];
    while (1)
    {
      if (v19 == v20)
      {
        goto LABEL_17;
      }

      v21 = *(v19 + 8);
      if (((*(*a3 + 56))(a3, v13, v21, v17) & 1) == 0)
      {
        v22 = *(v19 + 8);
        v23 = (*(*a3 + 64))(a3, v22, 1);

        if (!v23)
        {
          goto LABEL_16;
        }

        v21 = *(v19 + 8);
        *&v24 = v12;
        [v21 updateTexturesIfNecessary:&v25 textureManager:v24];
      }

LABEL_16:
      v19 += 24;
    }
  }

LABEL_18:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v32);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }
}

void md::layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(uint64_t **a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5, char a6)
{
  v106[4] = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 104);
  v87 = 0;
  v86 = 0u;
  v85 = 0u;
  v67 = v11;
  v93 = off_1F2A4E798;
  v94 = 0;
  v95 = a6;
  [v11 size];
  v97[0] = v12;
  v97[1] = v13;
  md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
  v88 = v14;
  v98 = [v11 multiSample];
  v15 = *(a3 + 24);
  v16 = *(v15 + 8);
  v17 = md::FrameGraph::renderQueueForPass(v16, a5[40]);
  if (v17)
  {
    v18 = *(*(v17 + 16) + 8 * a5[41]);
  }

  else
  {
    v18 = 0;
  }

  v77[0] = v18;
  v19 = md::FrameGraph::renderQueueForPass(v16, a5[42]);
  if (v19)
  {
    v20 = *(*(v19 + 16) + 8 * a5[43]);
  }

  else
  {
    v20 = 0;
  }

  v77[1] = v20;
  v21 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[44]);
  if (v21)
  {
    v22 = *(*(v21 + 16) + 8 * a5[45]);
  }

  else
  {
    v22 = 0;
  }

  v77[2] = v22;
  if (a5[48] == 1 && (v23 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[46])) != 0)
  {
    v73 = *(*(v23 + 16) + 8 * a5[47]);
  }

  else
  {
    v73 = 0;
  }

  if (a5[51] == 1 && (v24 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[49])) != 0)
  {
    v72 = *(*(v24 + 16) + 8 * a5[50]);
  }

  else
  {
    v72 = 0;
  }

  v82[0] = &unk_1F2A4E890;
  v83 = v82;
  v106[0] = &unk_1F2A4E800;
  v106[3] = v106;
  v105[0] = &unk_1F2A4E800;
  v105[3] = v105;
  v70 = *(a5 + 3);
  v71 = *(a5 + 2);
  if (v70 != v71)
  {
    std::vector<gdc::Entity>::vector[abi:nn200100](&__p, a5 + 2);
    v25 = v80 - __p;
    if (v80 != __p)
    {
      if (!((v25 >> 3) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v25 >> 3);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    *(&v102 + 1) = 0;
    operator new();
  }

  v26 = *(a2 + 8);
  v68 = md::LayoutContext::get<md::CameraContext>(v26);
  v74 = md::LayoutContext::get<md::SharedResourcesContext>(v26);
  v75 = gdc::Context::get<md::StyleLogicContext>(v26);
  v27 = *(*v75 + 520);
  v28 = *(*v75 + 528);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    if (!v27)
    {
      goto LABEL_58;
    }

    v27 = *(*v75 + 520);
    v29 = *(*v75 + 528);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *(v27 + 272);
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
      goto LABEL_26;
    }
  }

  else if (!v27)
  {
    goto LABEL_58;
  }

  v30 = *(v27 + 272);
LABEL_26:
  v31 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v101, a4[119]);
  **(&v103 + 1) = v30;
  ggl::BufferMemory::~BufferMemory(v31);
  v32 = *a1;
  v69 = a1[1];
  if (*a1 != v69)
  {
    while (1)
    {
      v33 = *v32;
      if (!v83 || (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::operator()(v83, *v32) & 1) != 0)
      {
        break;
      }

LABEL_57:
      if (++v32 == v69)
      {
        goto LABEL_58;
      }
    }

    v84 = v33;
    v34 = *(v33 + 392);
    v35 = *(v34 + 752);
    if (v35)
    {
      if (v35 < 0x201)
      {
        v36 = 0;
        i = 512;
      }

      else
      {
        v36 = 0;
        for (i = 512; i < v35; i *= 2)
        {
          ++v36;
        }
      }

      v38 = *(v34 + 752);
      if (i > v35)
      {
        do
        {
          --v36;
          v39 = i <= 2 * v38;
          v38 *= 2;
        }

        while (!v39);
      }
    }

    else
    {
      v36 = 0;
    }

    v40 = *(v34 + 169);
    v41 = exp2((ceilf(v88) - (v36 + v40))) * (v35 >> 7);
    v42 = fmaxf(*(v68 + 3080) + *(v68 + 3076), 1.0);
    v91 = v41;
    v89 = v42;
    v92 = *(v68 + 3768) / (*(v68 + 1368) * (*(v33 + 80) - *(v33 + 64)));
    v44 = *(v33 + 224);
    v43 = *(v33 + 232);
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(&v85 + 1);
    *&v85 = v44;
    *(&v85 + 1) = v43;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    v47 = *(v33 + 240);
    v46 = *(v33 + 248);
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    v48 = *(&v86 + 1);
    *&v86 = v47;
    *(&v86 + 1) = v46;
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&__p, v85, 0);
    v101 = *v81;
    v102 = v81[1];
    v103 = v81[2];
    v104 = v81[3];
    ggl::BufferMemory::~BufferMemory(&__p);
    v96 = ggl::CullingGrid::intersectedCellsForView(&v101, 0.0);
    v90 = v40;
    v49 = (*(*v34 + 48))(v34);
    v50 = *v49;
    v51 = v49[1];
    while (1)
    {
      if (v50 == v51)
      {
        goto LABEL_57;
      }

      v52 = v94;
      v53 = (*(*a5 + 40))(a5, v52);

      if (v53)
      {
        ggl::DataAccess<ggl::Tile::View>::DataAccess(v78, v85, 0);
        v54 = v84;
        v55 = v78[5];
        v56 = *(v50 + 8);
        (*(*a5 + 48))(&__p, a5, &v86, v55, v54 + 96, v56, v97, v88);

        ggl::BufferMemory::~BufferMemory(v78);
        v96 = ggl::CullingGrid::intersectedCellsForView(&__p, 0.0);
      }

      v57 = *(v50 + 8);
      if ((*(*a5 + 56))(a5, v33, v57, v96))
      {
        goto LABEL_55;
      }

      v58 = *(v50 + 8);
      v59 = (*(*a5 + 64))(a5, v58, 0);

      if (v59)
      {
        v60 = *(v50 + 8);
        v61 = (*(*a5 + 72))(a5, v60);

        geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&v93, *(v50 + 8));
        v62 = *v74;
        v63 = *(a2 + 16);
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v100, v106);
        HIBYTE(v65) = v61;
        LOBYTE(v65) = 0;
        md::_layoutPolygonGroup<md::PolygonTileData>(v62, v63, v75, a4, v77, v73, v72, a5, &v84, v65, v100);
        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v100);

        if (v70 != v71)
        {
          break;
        }
      }

LABEL_56:
      v50 += 24;
    }

    v57 = *v74;
    v64 = *(a2 + 16);
    std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v99, v105);
    HIBYTE(v66) = v61;
    LOBYTE(v66) = 1;
    md::_layoutPolygonGroup<md::PolygonTileData>(v57, v64, v75, a4, v77, v73, v72, a5, &v84, v66, v99);
    std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v99);
LABEL_55:

    goto LABEL_56;
  }

LABEL_58:
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v105);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v106);
  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v82);
  v93 = off_1F2A4E798;

  if (*(&v86 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v86 + 1));
  }

  if (*(&v85 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v85 + 1));
  }
}

void sub_1B3292E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49, uint64_t a50, std::__shared_weak_count *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  operator delete(v58);
  if (v57)
  {
    operator delete(v57);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v59 - 184);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v59 - 152);
  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](&a43);
  a56 = a14;

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a51);
  }

  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a49);
  }

  _Unwind_Resume(a1);
}

void md::_layoutPolygonGroup<md::PolygonTileData>(void *a1, void **a2, uint64_t a3, void *a4, ggl::CommandBuffer *a5, ggl::zone_mallocator *a6, uint64_t a7, _BYTE *a8, float *a9, __int16 a10, uint64_t a11)
{
  v388 = *MEMORY[0x1E69E9840];
  v361 = 0;
  v345 = 0u;
  v346 = 0u;
  v347 = 0u;
  v341 = 0;
  v343 = 0;
  v337 = 0;
  v339 = 0;
  v17 = a1;
  v18 = *(*a3 + 520);
  v19 = *(*a3 + 528);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = *(v18 + 272);
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  else
  {
    v20 = *(v18 + 272);
  }

  objc_msgSend_textureManager(v17);
  v349 = **v371;
  if (*&v371[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[8]);
  }

  v335 = a8;
  v336 = a4;
  v331 = a7;
  v350 = *([v17 alphaAtlas] + 24);
  v21 = *(a9 + 10);
  *v371 = a10;
  v359 = [v21 styleQueries:v371];

  if (!v359)
  {
    goto LABEL_67;
  }

  if (v359[1] == *v359)
  {
    goto LABEL_67;
  }

  v358 = 0;
  v355 = 0;
  *v353 = 0;
  v354 = 0;
  v351 = 0;
  v362 = 0;
  v357 = (*(*a8 + 96))(a8);
  v22 = *v359;
  if (v359[1] == *v359)
  {
    goto LABEL_67;
  }

  v329 = a2;
  v333 = a5;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = v20;
  do
  {
    v28 = *&v22[2 * v23];
    v29 = v22[2 * v23 + 1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v371, v28, v29);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    if (v371[32])
    {
      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v371 + 24), 0x8Au, 1u))
      {
        gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(138, 2, *(*v371 + 24));
      }

      v26 |= md::_polygonIsVisibleWithQueryLocker(v371, a9[12]);
      if (v26)
      {
        v30 = a9[12];
        if (v30 >= 0x17)
        {
          v31 = 23;
        }

        else
        {
          v31 = v30;
        }

        v32 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v371 + 24), 420, v31, 2, 0) == 0;
      }

      else
      {
        v32 = 0;
      }

      v360 = v32;
      if ((v24 & 1) == 0)
      {
        v33 = a9[12];
        if (v33 >= 0x17)
        {
          v34 = 23;
        }

        else
        {
          v34 = v33;
        }

        LODWORD(v355) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v371 + 24), 104, v34, 2, 0);
      }

      if ((v24 & 1) == 0)
      {
        v35 = a9[12];
        if (v35 >= 0x17)
        {
          v36 = 23;
        }

        else
        {
          v36 = v35;
        }

        v358 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v371 + 24), 319, v36, 2, 0);
      }

      if (gss::FeatureAttributeSet::getValueForAttributeKey(*((*v359)[2 * v23] + 240), *((*v359)[2 * v23] + 248), 187, v366))
      {
        v362 = 1;
      }

      if (v371[32])
      {
        (*(**v371 + 56))(*v371);
      }

      v24 = 1;
    }

    if (*&v371[24])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[24]);
    }

    if (*&v371[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[8]);
    }

    v23 = ++v25;
    v22 = *v359;
  }

  while (v25 < ((v359[1] - *v359) >> 4));
  v37 = v333;
  if ((v26 & 1) == 0)
  {
LABEL_67:
  }

  else
  {
    v38 = *v22;
    v39 = v22[1];
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v371, v38, v39);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v39);
    }

    LOBYTE(v386[0]) = 0;
    v40 = v335;
    if (v371[32] == 1)
    {
      hasValueForKey = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v371 + 24), 0x8Au, 1u);
      if (hasValueForKey)
      {
        LOBYTE(hasValueForKey) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(138, 2, *(*v371 + 24));
      }

      v353[0] = (*(*v335 + 24))(v335, hasValueForKey, v386);
      v42 = *(*v371 + 24);
      v43 = fminf(fmaxf(a9[12], 0.0), 23.0);
      v44 = *v42;
      if (*v42 && (v45 = *v44, LODWORD(v44) = *v44 == 1.0, *(v42 + 10) == 1) && (v45 != 0.0 ? (v46 = v45 == 1.0) : (v46 = 1), !v46) || (v47 = *(v42 + v44 + 11), v45 = 0.0, v47 == 2))
      {
        v366[0] = 1;
        LOBYTE(v380) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v42, 329, 0, v366, v43);
        v325 = v27;
        v327 = v326;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v42, 329, 1, &v380, v43);
        v49 = v327 + ((v328 - v327) * v45);
        v27 = v325;
      }

      else
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v371 + 24), 329, v47, 0, v43);
        v49 = v48;
      }

      v50 = *(a9 + 8);
      v51 = v50 * (*(*v335 + 80))(v335) * v49;
      *(&v355 + 1) = v51;
      v52 = *(*v371 + 24);
      v53 = *v52;
      if (*v52)
      {
        LOBYTE(v53) = *(v52 + 9);
      }

      v351 = v53 & (v27 > 0.0);
      v54 = a9[12];
      if (v54 >= 0x17)
      {
        v55 = 23;
      }

      else
      {
        v55 = v54;
      }

      v361 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v52, 420, v55, 2, 0);
      v56 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(*v329, v329[1]);
      v57 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(108, 0, *(*v371 + 24));
      v58 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(108, 1u, *(*v371 + 24));
      if (v57)
      {
        md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v366, v56, v371, 0, a9[12]);
      }

      else
      {
        v59.n128_f32[0] = a9[12];
        md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v366, v56, v371, v59.n128_f32[0], 0, v59, v60);
      }

      v342 = *v366;
      v61 = a9[12];
      v62 = v61;
      v63 = *(*v371 + 24);
      if (gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(v63, 0x14Cu, v61))
      {
        if (v57)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v366, v63, 332, 0, fminf(fmaxf(v61, 0.0), 23.0));
        }

        else
        {
          if (v62 >= 0x17)
          {
            v66 = 23;
          }

          else
          {
            v66 = v62;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v366, v63, 332, v66, 0, 0, v64, v65);
        }

        v37 = v333;
        v40 = v335;
        v344 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v366)), vdupq_n_s32(0x37800080u));
        v61 = a9[12];
        v63 = *(*v371 + 24);
        v62 = v61;
      }

      else
      {
        v344 = v342;
        v37 = v333;
        v40 = v335;
      }

      if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v63, 0x5Cu, v62))
      {
        if (v58)
        {
          md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v366, v56, v371, 1u, v61);
        }

        else
        {
          md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v366, v56, v371, v62, 1u, v67, v68);
        }

        v338 = *v366;
      }

      else
      {
        v338 = v342;
      }

      v69 = a9[12];
      v70 = v69;
      v71 = *(*v371 + 24);
      if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v71, 0x14Cu, v69))
      {
        if (v58)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v366, v71, 332, 1u, fminf(fmaxf(v69, 0.0), 23.0));
        }

        else
        {
          if (v70 >= 0x17)
          {
            v75 = 23;
          }

          else
          {
            v75 = v70;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v366, v71, 332, v75, 1u, 0, v72, v73);
        }

        v74 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v366)), vdupq_n_s32(0x37800080u));
      }

      else
      {
        v74 = v338;
      }

      v340 = v74;
    }

    else
    {
      v342 = 0uLL;
      v344 = 0uLL;
      v338 = 0uLL;
      v340 = 0uLL;
    }

    v353[1] = *(a9 + 52) + LOBYTE(v386[0]);
    v354 = v40[10] + LOBYTE(v386[0]);
    if (v371[32] == 1)
    {
      (*(**v371 + 56))(*v371);
    }

    if (*&v371[24])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[24]);
    }

    if (*&v371[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[8]);
    }

    v76 = *(a9 + 10);
    v77 = [v76 sourceTexture];
    if (v77)
    {
      v78 = v77;
    }

    else
    {
      v78 = v349;
    }

    v341 = v78;

    v79 = *(a9 + 10);
    v80 = [v79 targetTexture];
    if (v80)
    {
      v81 = v80;
    }

    else
    {
      v81 = v349;
    }

    v337 = v81;

    v82 = *(a9 + 10);
    v83 = [v82 sourceRoofTexture];
    if (v83)
    {
      v84 = v83;
    }

    else
    {
      v84 = v78;
    }

    v343 = v84;

    v85 = *(a9 + 10);
    v86 = [v85 targetRoofTexture];
    if (v86)
    {
      v87 = v86;
    }

    else
    {
      v87 = v81;
    }

    v339 = v87;

    v356 = 1065353216;
    v88 = v342.f32[3] >= 1.0 && (v351 != 1 || v338.f32[3] >= 1.0);
    v352 = v88;
    v89 = *(a9 + 10);
    md::PolygonRenderResources::worldTransformForPolygonGroup(v371, v89, a9[11]);
    v348[0] = *v371;
    v348[1] = *&v371[16];
    v348[2] = *&v371[32];
    v348[3] = *&v371[48];

    v90 = *(a9 + 10);
    v91 = (*(*v335 + 40))(v335, v90);

    v92 = md::PolygonViewConstantsFrameCache::pop((a4 + 30));
    v94 = *v92;
    v93 = v92[1];
    if (v93)
    {
      atomic_fetch_add_explicit((v93 + 8), 1uLL, memory_order_relaxed);
    }

    v95 = *(&v345 + 1);
    *&v345 = v94;
    *(&v345 + 1) = v93;
    if (v95)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v95);
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v386, *(a9 + 1), 0);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v366, v345, 1);
    v96 = v387;
    v97 = *&v366[40];
    *(*&v366[40] + 64) = *(v387 + 64);
    if (v91)
    {
      v98 = *a9;
      v99 = *(a9 + 10);
      (*(*v335 + 48))(v371, v335, a9 + 3, v96, v98 + 96, v99, a9 + 13, a9[11]);
      v100 = 0;
      v101 = *&v366[40];
      do
      {
        *(v101 + v100) = *&v371[v100];
        v100 += 4;
      }

      while (v100 != 64);
    }

    else
    {
      for (i = 0; i != 64; i += 4)
      {
        *(v97 + i) = *(v96 + i);
      }
    }

    ggl::BufferMemory::~BufferMemory(v366);
    v104 = *(a9 + 3);
    v103 = *(a9 + 4);
    if (v103)
    {
      atomic_fetch_add_explicit((v103 + 8), 1uLL, memory_order_relaxed);
    }

    v105 = *(&v347 + 1);
    *&v347 = v104;
    *(&v347 + 1) = v103;
    if (v105)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v105);
    }

    if (*(&v355 + 1) > 0.00000011921)
    {
      v106 = md::PolygonViewConstantsFrameCache::pop((a4 + 30));
      v107 = *v106;
      v108 = v106[1];
      if (v108)
      {
        atomic_fetch_add_explicit((v108 + 8), 1uLL, memory_order_relaxed);
      }

      v109 = v78;
      v110 = *(&v346 + 1);
      *&v346 = v107;
      *(&v346 + 1) = v108;
      if (v110)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v110);
        v107 = v346;
      }

      ggl::DataAccess<ggl::Tile::View>::DataAccess(v363, v107, 1);
      v111 = v387;
      v112 = v364;
      *(v364 + 64) = *(v387 + 64);
      if (v91)
      {
        v113 = *(a9 + 10);
        (*(*v335 + 48))(v366, a9[11]);
        memset(v382, 0, sizeof(v382));
        v381 = 0u;
        v380 = 1065353216;
        v382[0] = 1065353216;
        v385 = 1065353216;
        v383 = 0;
        v382[5] = 1065353216;
        v384 = HIDWORD(v355);
        gm::operator*<float,4,4,4>(v371, v366, &v380);
        v114 = 0;
        v115 = v364;
        v37 = v333;
        v78 = v109;
        do
        {
          *(v115 + v114) = *&v371[v114];
          v114 += 16;
        }

        while (v114 != 64);
      }

      else
      {
        memset(&v366[20], 0, 36);
        *&v366[4] = 0u;
        *v366 = 1065353216;
        *&v366[20] = 1065353216;
        *&v366[40] = 1065353216;
        *&v367 = HIDWORD(v355) | 0x3F80000000000000;
        gm::operator*<float,4,4,4>(v371, v111, v366);
        for (j = 0; j != 64; j += 16)
        {
          *(v112 + j) = *&v371[j];
        }

        v37 = v333;
        v78 = v109;
      }

      ggl::BufferMemory::~BufferMemory(v363);
    }

    ggl::BufferMemory::~BufferMemory(v386);

    v117 = v78;
    v118 = v335;
    v334 = md::_commandBufferForConfiguration(v335, &v345, v37, *(a9 + 96));
    if (v334)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v379, a11);
      v119 = *(a9 + 96);
      v120 = v335[8];
      v121 = (*(*v335 + 88))(v335, *(a9 + 10));
      if (v120)
      {
        v122 = 0;
      }

      else
      {
        v122 = v119;
      }

      if ((v121 & 0x100) != 0)
      {
        v123 = v121;
      }

      else
      {
        v123 = v122;
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v380, v379);
      LOBYTE(v363[0]) = 0;
      a4 = v336;
      if (v351 == 1)
      {
        v124 = md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(v336, a9, &v345, &v341, &v337, v363);
      }

      else
      {
        v124 = md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(v336[22], a9, &v345, &v341, v363);
      }

      v125 = v124;
      *v366 = a9;
      *&v366[8] = v336;
      *&v366[16] = &v380;
      *&v366[24] = v334;
      if (v124)
      {
        v126 = v353[1];
        v127 = LOBYTE(v363[0]);
        if (LOBYTE(v363[0]) == 1)
        {
          if (v353[0] == 1)
          {
            v128 = md::PolygonRenderResources::renderStateForBlendingEqual(v336, v353[1], v354);
          }

          else
          {
            v128 = v336 + 136;
            v126 = v354;
          }
        }

        else
        {
          v128 = v336[(v335[8] | (2 * v353[0]) | (16 * v123)) + 34];
        }

        v129 = ggl::RenderItem::RenderItem(v371, "");
        *&v371[40] = v126;
        *&v371[24] = v128;
        *&v371[32] = v125;
        v130 = *(*a9 + 392);
        v131 = v130 ? v130 + 168 : 0;
        *&v371[48] = (*(*v335 + 32))(v335, v352, v355, 0, v131, 1, v117 != v349, *v359, v129, 0);
        md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v366, v371);
        if (v127)
        {
          if (v353[0])
          {
            v132 = v353[1];
          }

          else
          {
            v132 = 0;
          }

          v133 = md::PolygonRenderResources::renderStateForBlendingEqual(v336, v354, v132);
          if (v351 == 1)
          {
            v134 = md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(v336, a9, &v345, &v341, &v337, v363);
            v135 = v336[8];
            v136 = v336[9];
          }

          else
          {
            v134 = md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(v336[22], a9, &v345, &v341, v363);
            v135 = v336[2];
            v136 = v336[3];
          }

          v386[0] = v135;
          v386[1] = v136;
          if (v136)
          {
            atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v134, v386);
            std::__shared_weak_count::__release_shared[abi:nn200100](v136);
          }

          else
          {
            ggl::PipelineSetup::setState(v134, v386);
          }

          *&v371[40] = v354;
          *&v371[24] = v133;
          *&v371[32] = v134;
          md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v366, v371);
        }
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v380);
      v137 = *v359;
      if (v359[1] != *v359)
      {
        v138 = 0;
        v139 = 0;
        v140 = fminf(fmaxf(a9[12], 0.0), 23.0);
        while (1)
        {
          v141 = *&v137[2 * v138];
          v142 = v137[2 * v138 + 1];
          if (v142)
          {
            atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v371, v141, v142);
          if (v142)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v142);
          }

          if (v371[32] == 1)
          {
            break;
          }

          v149 = 0;
LABEL_200:
          if (*&v371[24])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[24]);
          }

          if (*&v371[8])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[8]);
          }

          if (v149)
          {
            std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v386, v379);
            v365 = 0;
            a4 = v336;
            if (v351 == 1)
            {
              v153 = md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(v336, a9, &v345, &v341, &v337, &v365);
            }

            else
            {
              v153 = md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(v336[22], a9, &v345, &v341, &v365);
            }

            v154 = v153;
            *v366 = a9;
            *&v366[8] = v336;
            *&v366[16] = v386;
            *&v366[24] = v334;
            if (v153)
            {
              v155 = v353[1];
              v156 = v365;
              if (v365 == 1)
              {
                if (v353[0] == 1)
                {
                  v157 = md::PolygonRenderResources::renderStateForBlendingEqual(v336, v353[1], v354);
                }

                else
                {
                  v157 = v336 + 136;
                  v155 = v354;
                }
              }

              else
              {
                v157 = v336[(v335[8] | (2 * v353[0]) | (16 * v123)) + 34];
              }

              v158 = ggl::RenderItem::RenderItem(v371, "");
              *&v371[40] = v155;
              *&v371[24] = v157;
              *&v371[32] = v154;
              v159 = *(*a9 + 392);
              v160 = v159 ? v159 + 168 : 0;
              *&v371[48] = (*(*v335 + 32))(v335, v352, v355, 0, v160, 2, v341 != v349, *v359, v158, 0);
              md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v366, v371);
              if (v156)
              {
                if (v353[0])
                {
                  v161 = v353[1];
                }

                else
                {
                  v161 = 0;
                }

                v162 = md::PolygonRenderResources::renderStateForBlendingEqual(v336, v354, v161);
                if (v351 == 1)
                {
                  v163 = md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(v336, a9, &v345, &v341, &v337, &v365);
                  v164 = v336[8];
                  v165 = v336[9];
                }

                else
                {
                  v163 = md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(v336[22], a9, &v345, &v341, &v365);
                  v164 = v336[2];
                  v165 = v336[3];
                }

                v363[0] = v164;
                v363[1] = v165;
                if (v165)
                {
                  atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
                  ggl::PipelineSetup::setState(v163, v363);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v165);
                }

                else
                {
                  ggl::PipelineSetup::setState(v163, v363);
                }

                *&v371[40] = v354;
                *&v371[24] = v162;
                *&v371[32] = v163;
                md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v366, v371);
              }
            }

            std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v386);
            goto LABEL_233;
          }

          v138 = ++v139;
          v137 = *v359;
          a4 = v336;
          if (v139 >= ((v359[1] - *v359) >> 4))
          {
            goto LABEL_233;
          }
        }

        v143 = *(*v371 + 24);
        v144 = *v143;
        if (!*v143 || (v145 = *v144, LODWORD(v144) = *v144 == 1.0, *(v143 + 10) != 1) || (v145 != 0.0 ? (v146 = v145 == 1.0) : (v146 = 1), v146))
        {
          v147 = *(v143 + v144 + 11);
          if (v147 != 2)
          {
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v371 + 24), 404, v147, 0, v140);
LABEL_198:
            v149 = v148 > 0.0;
            (*(**v371 + 56))(*v371);
            goto LABEL_200;
          }

          v145 = 0.0;
        }

        v366[0] = 1;
        LOBYTE(v386[0]) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v143, 404, 0, v366, v140);
        v151 = v150;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v143, 404, 1, v386, v140);
        v148 = v151 + ((v152 - v151) * v145);
        goto LABEL_198;
      }

LABEL_233:
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v379);
      if (v360)
      {
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v378, a11);
        v166 = *(a9 + 96);
        v167 = v335[8];
        v168 = (*(*v335 + 88))(v335, *(a9 + 10));
        if ((v166 & (v167 == 0)) != 0)
        {
          v169 = 2;
        }

        else
        {
          v169 = 0;
        }

        if ((v168 & 0x100) != 0)
        {
          v169 = v168;
        }

        if (v352)
        {
          v170 = 0;
        }

        else
        {
          v170 = 8;
        }

        v171 = v336 + 34;
        v172 = v336[(v170 | (2 * v353[0]) | (16 * v169) | v352) + 34];
        if (v351 == 1)
        {
          v173 = md::animatingPolygonFillPipelineSetup<md::PolygonTileData>(v336, a9, &v345, &v345, &v341, &v337, 0);
        }

        else
        {
          v173 = md::polygonFillPipelineSetup<md::PolygonTileData>(v336, a9, &v345, &v345, &v341, 0);
        }

        v174 = v173;
        a4 = v336;
        if (v173)
        {
          v175 = ggl::RenderItem::RenderItem(v366, "");
          v176 = *(*a9 + 392);
          if (v176)
          {
            v177 = v176 + 168;
          }

          else
          {
            v177 = 0;
          }

          v178 = (*(*v335 + 32))(v335, v352, v355, 0, v177, 0, v341 != v349, *v359, v175, 0);
          *&v366[40] = v353[1];
          *&v366[24] = v172;
          *&v366[32] = v174;
          *&v366[48] = v178;
          v179 = [*(a9 + 10) fillMeshes];
          v180 = *v179;
          v181 = *(v179 + 8);
          if (*v179 != v181)
          {
            v182 = 0;
            do
            {
              v183 = *(a9 + 10);
              v184 = *(a9 + 25);
              std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v380, v378);
              v185 = [v183 commitRangesToFillRenderItemBatcher:a4 + 123 forMeshAtIndex:v182 cullingMask:v184 featureIdPredicate:&v380];
              std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v380);

              v186 = *v180;
              *v371 = &off_1F2A5D8B8;
              *&v371[8] = *&v366[8];
              *&v371[24] = *&v366[24];
              *&v371[40] = *&v366[40];
              v374 = v370;
              v373 = v369;
              v372 = v368;
              *&v371[56] = v367;
              v187 = a4[134];
              v188 = v187[1];
              if (v188 == a4[135])
              {
                v187 = *v187;
                if (!v187)
                {
                  v187 = malloc_type_malloc(120 * v188 + 16, 0x1020040EDED9539uLL);
                  *v187 = 0;
                  v187[1] = 0;
                  *a4[134] = v187;
                }

                a4[134] = v187;
                v188 = v187[1];
              }

              v189 = &v187[15 * v188];
              v187[1] = v188 + 1;
              v189[2] = &off_1F2A5D8B8;
              v190 = *&v371[8];
              v191 = *&v371[24];
              *(v189 + 7) = *&v371[40];
              *(v189 + 5) = v191;
              *(v189 + 3) = v190;
              v192 = *&v371[56];
              v193 = v372;
              v194 = v373;
              *(v189 + 15) = v374;
              *(v189 + 13) = v194;
              *(v189 + 11) = v193;
              *(v189 + 9) = v192;
              ggl::RenderItem::~RenderItem(v371);
              v189[10] = v186;
              v195 = *v185;
              v189[13] = *v185;
              v189[14] = (v185[1] - v195) >> 4;
              ggl::CommandBuffer::pushRenderItem(v334, (v189 + 2));
              ++v182;
              v180 += 2;
              a4 = v336;
            }

            while (v180 != v181);
          }

          v118 = v335;
          v171 = v336 + 34;
        }

        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v378);
        if (*(&v355 + 1) > 0.00000011921)
        {
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v377, a11);
          if (v352)
          {
            v196 = 0;
          }

          else
          {
            v196 = 8;
          }

          v197 = v171[((v196 | (2 * v353[0])) | 0xFFFFFFE1) & 0x2BLL];
          if (v351 == 1)
          {
            v198 = md::animatingPolygonFillPipelineSetup<md::PolygonTileData>(a4, a9, &v346, &v345, &v341, &v337, 1);
          }

          else
          {
            v198 = md::polygonFillPipelineSetup<md::PolygonTileData>(a4, a9, &v346, &v345, &v341, 1);
          }

          v199 = v198;
          v200 = ggl::RenderItem::RenderItem(v366, "");
          *&v366[40] = v353[1];
          *&v366[24] = v197;
          *&v366[32] = v199;
          v201 = *(*a9 + 392);
          if (v201)
          {
            v202 = v201 + 168;
          }

          else
          {
            v202 = 0;
          }

          *&v366[48] = (*(*v118 + 32))(v118, v352, v355, 1, v202, 0, v341 != v349, *v359, v200, 0);
          v203 = [*(a9 + 10) fillMeshes];
          v204 = *v203;
          v205 = *(v203 + 8);
          if (*v203 != v205)
          {
            v206 = 0;
            do
            {
              v207 = *(a9 + 10);
              v208 = *(a9 + 25);
              std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v380, v377);
              v209 = [v207 commitRangesToFillRenderItemBatcher:a4 + 123 forMeshAtIndex:v206 cullingMask:v208 featureIdPredicate:&v380];
              std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v380);

              v210 = *v204;
              *v371 = &off_1F2A5D8B8;
              *&v371[8] = *&v366[8];
              *&v371[24] = *&v366[24];
              *&v371[40] = *&v366[40];
              v374 = v370;
              v373 = v369;
              v372 = v368;
              *&v371[56] = v367;
              v211 = a4[134];
              v212 = v211[1];
              if (v212 == a4[135])
              {
                v211 = *v211;
                if (!v211)
                {
                  v211 = malloc_type_malloc(120 * v212 + 16, 0x1020040EDED9539uLL);
                  *v211 = 0;
                  v211[1] = 0;
                  *a4[134] = v211;
                }

                a4[134] = v211;
                v212 = v211[1];
              }

              v213 = &v211[15 * v212];
              v211[1] = v212 + 1;
              v213[2] = &off_1F2A5D8B8;
              v214 = *&v371[8];
              v215 = *&v371[24];
              *(v213 + 7) = *&v371[40];
              *(v213 + 5) = v215;
              *(v213 + 3) = v214;
              v216 = *&v371[56];
              v217 = v372;
              v218 = v373;
              *(v213 + 15) = v374;
              *(v213 + 13) = v218;
              *(v213 + 11) = v217;
              *(v213 + 9) = v216;
              ggl::RenderItem::~RenderItem(v371);
              v213[10] = v210;
              v219 = *v209;
              v213[13] = *v209;
              v213[14] = (v209[1] - v219) >> 4;
              ggl::CommandBuffer::pushRenderItem(v334, (v213 + 2));
              ++v206;
              v204 += 2;
              a4 = v336;
            }

            while (v204 != v205);
          }

          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v377);
          v118 = v335;
        }
      }
    }

    if (a6 && v118[52] == 1 && md::_maskTarget(&v345) == 1)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v376, a11);
      v220 = ggl::FragmentedPool<ggl::PolygonStrokeMask::MeshPipelineSetup>::pop(a4[23]);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v220 + 17), *(v220 + 29), v345, *(&v345 + 1));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v220 + 17), *(v220 + 29), v347, *(&v347 + 1));
      **(v220 + 21) = v350;
      v330 = v220;
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v371, *(*(v220 + 17) + 32));
      v221 = 0;
      v222 = *&v371[40];
      do
      {
        *(v222 + v221) = *(v348 + v221);
        v221 += 4;
      }

      while (v221 != 64);
      *(v222 + 320) = 0;
      *(v222 + 328) = 0;
      *(v222 + 464) = a9[14];
      v223 = 1.0 / *(a9 + 8);
      *(v222 + 468) = v223;
      *(v222 + 472) = v357;
      v224 = *v359;
      if (v359[1] != *v359)
      {
        v225 = 0;
        v226 = 0;
        v227 = 1.0;
        v228 = -0.5;
        v229 = 0.5;
        v230 = -1.0;
        v231 = 1.75;
        while (1)
        {
          v232 = *&v224[2 * v225];
          v233 = v224[2 * v225 + 1];
          if (v233)
          {
            atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v366, v232, v233);
          if (v233)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v233);
          }

          if (v366[32] == 1)
          {
            break;
          }

          v241 = 0.0;
          v243 = v358;
LABEL_323:
          if (v243 == 1)
          {
            v260 = 0.0;
          }

          else
          {
            v260 = v227;
          }

          if (v243 == 1)
          {
            v261 = v230;
          }

          else
          {
            v261 = 0.0;
          }

          if (v243 == 2)
          {
            v260 = v229;
            v261 = v228;
          }

          v262 = *&v371[40];
          v263 = v241 * v231 * *(a9 + 8);
          v264 = *&v371[40] + 4 * v225;
          *(v264 + 336) = v260 * v263;
          *(v264 + 400) = v261 * v263;
          *(v262 + 476) = 0;
          v265 = v262 + 16 * v225;
          *(v265 + 64) = 0;
          *(v265 + 72) = 0;
          if (v366[32] == 1)
          {
            (*(**v366 + 56))(*v366);
          }

          if (*&v366[24])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v366[24]);
          }

          if (*&v366[8])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v366[8]);
          }

          v225 = ++v226;
          v224 = *v359;
          if (v226 >= ((v359[1] - *v359) >> 4))
          {
            goto LABEL_347;
          }
        }

        v234 = *(*v366 + 24);
        v235 = fminf(fmaxf(a9[12], 0.0), 23.0);
        v236 = *v234;
        if (!*v234 || (v237 = *v236, LODWORD(v236) = *v236 == v227, *(v234 + 10) != 1) || (v237 != 0.0 ? (v238 = v237 == v227) : (v238 = 1), v238))
        {
          v239 = *(v234 + v236 + 11);
          if (v239 != 2)
          {
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v366 + 24), 466, v239, 0, v235);
            v241 = v240;
LABEL_296:
            v242 = a9[12];
            v243 = v358;
            v244 = *(*v366 + 24);
            if (v242 >= 0x17)
            {
              v245 = 23;
            }

            else
            {
              v245 = v242;
            }

            v246 = *v244;
            if (*v244 && (v247 = *v246, LODWORD(v246) = *v246 == v227, *(v244 + 10) == 1) && (v247 != 0.0 ? (v248 = v247 == v227) : (v248 = 1), !v248) || (v249 = *(v244 + v246 + 11), v249 == 2))
            {
              v250 = *(v244 + 16);
              if (v250)
              {
                v251 = *(v250 + 72);
                if (v251)
                {
                  v252 = *v251 + 120 * *(v251 + v245 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v252, 0x1D3u) != *(v252 + 12))
                  {
                    goto LABEL_321;
                  }
                }

                if (*(v244 + 56))
                {
                  v253 = *(v244 + 48);
                  v254 = 8 * *(v244 + 56);
                  while (1)
                  {
                    v255 = *(*v253 + 72);
                    if (v255)
                    {
                      v256 = *v255 + 120 * *(v255 + v245 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v256, 0x1D3u) != *(v256 + 12))
                      {
                        goto LABEL_321;
                      }
                    }

                    v253 += 8;
                    v249 = 1;
                    v254 -= 8;
                    if (!v254)
                    {
                      goto LABEL_318;
                    }
                  }
                }
              }

              v249 = 1;
            }

LABEL_318:
            v257 = *(v244 + 16 * v249 + 16);
            if (!v257)
            {
LABEL_322:
              v118 = v335;
              a4 = v336;
              goto LABEL_323;
            }

            v258 = *(v257 + 72);
            if (!v258 || (v259 = *v258 + 120 * *(v258 + v245 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v259, 0x1D3u) == *(v259 + 12)))
            {
              v266 = v244 + 16 * v249;
              if (!*(v266 + 56))
              {
                goto LABEL_322;
              }

              v267 = *(v266 + 48);
              v268 = 8 * *(v266 + 56);
              while (1)
              {
                v269 = *(*v267 + 72);
                if (v269)
                {
                  v270 = *v269 + 120 * *(v269 + v245 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v270, 0x1D3u) != *(v270 + 12))
                  {
                    break;
                  }
                }

                v267 += 8;
                v268 -= 8;
                if (!v268)
                {
                  goto LABEL_322;
                }
              }
            }

LABEL_321:
            v243 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v244, 467, v245, 2, 0);
            goto LABEL_322;
          }

          v237 = 0.0;
        }

        LOBYTE(v380) = 1;
        LOBYTE(v386[0]) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v234, 466, 0, &v380, v235);
        v272 = v271;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v234, 466, 1, v386, v235);
        v241 = v272 + ((v273 - v272) * v237);
        v231 = 1.75;
        v230 = -1.0;
        v229 = 0.5;
        v228 = -0.5;
        v227 = 1.0;
        goto LABEL_296;
      }

LABEL_347:
      ggl::BufferMemory::~BufferMemory(v371);
      v274 = a4;
      v275 = a4[((v118[8] | (2 * v353[0])) & 3) + 34];
      *&v276 = ggl::RenderItem::RenderItem(v366, "").u64[0];
      *&v366[40] = *(a9 + 52) + *(v274 + 912);
      *&v366[24] = v275;
      *&v366[32] = v330;
      *&v366[48] = 0;
      v277 = [*(a9 + 10) strokeMeshes];
      v278 = *v277;
      v279 = *(v277 + 8);
      a4 = v336;
      if (*v277 != v279)
      {
        v280 = 0;
        do
        {
          v281 = *(a9 + 10);
          v282 = *(a9 + 25);
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v380, v376);
          v283 = [v281 commitRangesToStrokeRenderItemBatcher:a4 + 123 forMeshAtIndex:v280 cullingMask:v282 featureIdPredicate:&v380];
          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v380);

          v284 = *v278;
          *v371 = &off_1F2A5D8B8;
          *&v371[8] = *&v366[8];
          *&v371[24] = *&v366[24];
          *&v371[40] = *&v366[40];
          v374 = v370;
          v373 = v369;
          v372 = v368;
          *&v371[56] = v367;
          v285 = a4[134];
          v286 = v285[1];
          if (v286 == a4[135])
          {
            v285 = *v285;
            if (!v285)
            {
              v285 = malloc_type_malloc(120 * v286 + 16, 0x1020040EDED9539uLL);
              *v285 = 0;
              v285[1] = 0;
              *a4[134] = v285;
            }

            a4[134] = v285;
            v286 = v285[1];
          }

          v287 = &v285[15 * v286];
          v285[1] = v286 + 1;
          v287[2] = &off_1F2A5D8B8;
          v288 = *&v371[8];
          v289 = *&v371[24];
          *(v287 + 7) = *&v371[40];
          *(v287 + 5) = v289;
          *(v287 + 3) = v288;
          v290 = *&v371[56];
          v291 = v372;
          v292 = v373;
          *(v287 + 15) = v374;
          *(v287 + 13) = v292;
          *(v287 + 11) = v291;
          *(v287 + 9) = v290;
          ggl::RenderItem::~RenderItem(v371);
          v287[10] = v284;
          v293 = *v283;
          v287[13] = *v283;
          v287[14] = (v283[1] - v293) >> 4;
          ggl::CommandBuffer::pushRenderItem(a6, (v287 + 2));
          ++v280;
          v278 += 2;
          a4 = v336;
        }

        while (v278 != v279);
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v376);
      v118 = v335;
    }

    if (v331 && v118[53] == 1 && v362 == 1)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v375, a11);
      v294 = ggl::FragmentedPool<ggl::HillshadeFillMask::CompressedMeshPipelineSetup>::pop(a4[24]);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v294 + 17), *(v294 + 29), v345, *(&v345 + 1));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v294 + 17), *(v294 + 29), v347, *(&v347 + 1));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v371, *(*(v294 + 17) + 32));
      v295 = 0;
      v296 = *&v371[40];
      do
      {
        *(v296 + v295) = *(v348 + v295);
        v295 += 4;
      }

      while (v295 != 64);
      *(v296 + 64) = a9[14];
      v297 = *(a9 + 10);
      v298 = [v297 origin];
      *(*&v371[40] + 72) = *v298;

      v299 = *(a9 + 10);
      [v299 size];
      v300 = *&v371[40];
      *(*&v371[40] + 80) = v301;
      *(v300 + 84) = v302;

      ggl::BufferMemory::~BufferMemory(v371);
      v303 = a4[((v352 | (2 * v353[0])) & 3) + 34];
      v304 = ggl::RenderItem::RenderItem(v366, "");
      v305 = *(*a9 + 392);
      if (v305)
      {
        v306 = v305 + 168;
      }

      else
      {
        v306 = 0;
      }

      v307 = (*(*v335 + 32))(v335, 1, v355, 0, v306, 0, 0, *v359, v304, 0);
      *&v366[40] = v353[1];
      *&v366[24] = v303;
      *&v366[32] = v294;
      *&v366[48] = v307;
      v308 = [*(a9 + 10) fillMeshes];
      v309 = *v308;
      v310 = *(v308 + 8);
      if (*v308 != v310)
      {
        v311 = 0;
        do
        {
          v312 = *(a9 + 10);
          v313 = *(a9 + 25);
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v380, v375);
          v314 = [v312 commitRangesToFillRenderItemBatcher:a4 + 123 forMeshAtIndex:v311 cullingMask:v313 featureIdPredicate:&v380];
          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v380);

          v315 = *v309;
          *v371 = &off_1F2A5D8B8;
          *&v371[8] = *&v366[8];
          *&v371[24] = *&v366[24];
          *&v371[40] = *&v366[40];
          v374 = v370;
          v373 = v369;
          v372 = v368;
          *&v371[56] = v367;
          v316 = a4[134];
          v317 = v316[1];
          if (v317 == a4[135])
          {
            v316 = *v316;
            if (!v316)
            {
              v316 = malloc_type_malloc(120 * v317 + 16, 0x1020040EDED9539uLL);
              *v316 = 0;
              v316[1] = 0;
              *a4[134] = v316;
            }

            a4[134] = v316;
            v317 = v316[1];
          }

          v318 = &v316[15 * v317];
          v316[1] = v317 + 1;
          v318[2] = &off_1F2A5D8B8;
          v319 = *&v371[8];
          v320 = *&v371[24];
          *(v318 + 7) = *&v371[40];
          *(v318 + 5) = v320;
          *(v318 + 3) = v319;
          v321 = *&v371[56];
          v322 = v372;
          v323 = v373;
          *(v318 + 15) = v374;
          *(v318 + 13) = v323;
          *(v318 + 11) = v322;
          *(v318 + 9) = v321;
          ggl::RenderItem::~RenderItem(v371);
          v318[10] = v315;
          v324 = *v314;
          v318[13] = *v314;
          v318[14] = (v314[1] - v324) >> 4;
          ggl::CommandBuffer::pushRenderItem(v334, (v318 + 2));
          ++v311;
          v309 += 2;
          a4 = v336;
        }

        while (v309 != v310);
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v375);
    }
  }

  if (*(&v347 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v347 + 1));
  }

  if (*(&v346 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v346 + 1));
  }

  if (*(&v345 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v345 + 1));
  }
}

void sub_1B32952FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36)
{
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v36 - 216);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&STACK[0x308]);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a36);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  _Unwind_Resume(a1);
}

uint64_t md::_commandBufferForConfiguration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = **(a2 + 160);
  if (*(*(a2 + 160) + 8) == v5)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(v5 + 16 * v10);
    v13 = *(v5 + 16 * v10 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v17, v12, v13);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = v20;
    if (v20)
    {
      hasValueForKey = gss::RenderStyle<gss::PropertyID>::hasValueForKey(v17[3], 0x8Au, 1u);
      if (hasValueForKey)
      {
        LOBYTE(hasValueForKey) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(138, 2, v17[3]);
      }

      v4 = (*(*a1 + 16))(a1, hasValueForKey, a4, a3);
      if (v20)
      {
        (*(*v17 + 56))(v17);
      }
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    if (v14)
    {
      break;
    }

    v10 = ++v11;
    v5 = **(a2 + 160);
    if (v11 >= ((*(*(a2 + 160) + 8) - v5) >> 4))
    {
      return 0;
    }
  }

  return v4;
}

void sub_1B3295760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
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

uint64_t md::_maskTarget(uint64_t a1)
{
  v2 = **(a1 + 160);
  if (*(*(a1 + 160) + 8) == v2)
  {
    return 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = *(v2 + 16 * v4);
      v7 = *(v2 + 16 * v4 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v10, v6, v7);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v8 = v13;
      if (v13)
      {
        if ((gss::RenderStyle<gss::PropertyID>::hasValueForKey(v10[3], 0x1D4u, 0) & 1) != 0 || gss::RenderStyle<gss::PropertyID>::hasValueForKey(v10[3], 0x1D4u, 1u))
        {
          v1 = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(468, 2, v10[3]);
        }

        else
        {
          v1 = 0;
        }
      }

      if (v13 == 1)
      {
        (*(*v10 + 56))(v10);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }

      if (v8)
      {
        break;
      }

      v4 = ++v5;
      v2 = **(a1 + 160);
      if (v5 >= ((*(*(a1 + 160) + 8) - v2) >> 4))
      {
        return 0;
      }
    }
  }

  return v1;
}

void sub_1B3295938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

ggl::zone_mallocator *ggl::FragmentedPool<ggl::HillshadeFillMask::CompressedMeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::HillshadeFillMask::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PolygonStrokeMask::MeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonStrokeMask::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonStrokeMask::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStrokeMask::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *md::animatingPolygonFillPipelineSetup<md::PolygonTileData>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = ggl::FragmentedPool<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup>::pop(a1[28]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v14 + 17), *(v14 + 29), *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v14 + 17), *(v14 + 29), *(a4 + 32), *(a4 + 40));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v14 + 17), *(v14 + 29), a1[119], a1[120]);
  v15 = 24;
  if (!a7)
  {
    v15 = 0;
  }

  **(v14 + 21) = *(a5 + v15);
  *(*(v14 + 21) + 8) = *(a6 + v15);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v33, *(*(v14 + 17) + 32));
  v16 = 0;
  v17 = v34;
  do
  {
    *(v17 + v16) = *(a4 + 48 + v16);
    v16 += 4;
  }

  while (v16 != 64);
  if (a7)
  {
    v18 = 32;
  }

  else
  {
    v18 = 8;
  }

  v19 = *(a5 + v18 + 12) * *(a4 + 144);
  v20 = *(a5 + v18);
  *(v17 + 72) = *(a5 + v18 + 8);
  *(v17 + 64) = v20;
  *(v17 + 76) = v19;
  v21 = *(a2 + 80);
  v22 = [v21 origin];
  *(v34 + 104) = *v22;

  v23 = *(a2 + 80);
  [v23 size];
  v24 = v34;
  *(v34 + 112) = v25;
  *(v24 + 116) = v26;

  v27 = *(a6 + v18 + 12) * *(a4 + 144);
  v28 = v34;
  v29 = *(a6 + v18 + 8);
  *(v34 + 80) = *(a6 + v18);
  *(v28 + 88) = v29;
  *(v28 + 92) = v27;
  v30 = v27 <= 0.0 && v19 <= 0.0;
  *(v28 + 96) = *(a2 + 56);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v14;
  }

  ggl::BufferMemory::~BufferMemory(v33);
  return v31;
}

ggl::zone_mallocator *md::polygonFillPipelineSetup<md::PolygonTileData>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = 216;
  if (*(a4 + 129))
  {
    v11 = 208;
  }

  v12 = ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pop(*(a1 + v11));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v12 + 17), *(v12 + 29), *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v12 + 17), *(v12 + 29), *(a4 + 32), *(a4 + 40));
  v13 = 24;
  if (!a6)
  {
    v13 = 0;
  }

  **(v12 + 21) = *(a5 + v13);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v27, *(*(v12 + 17) + 32));
  v14 = 0;
  v15 = v28;
  do
  {
    *(v15 + v14) = *(a4 + 48 + v14);
    v14 += 4;
  }

  while (v14 != 64);
  v16 = 8;
  if (a6)
  {
    v16 = 32;
  }

  v17 = (a5 + v16);
  v18 = v17[3] * *(a4 + 144);
  v19 = *v17;
  *(v15 + 72) = v17[2];
  *(v15 + 64) = v19;
  *(v15 + 76) = v18;
  *(v15 + 80) = *(a2 + 56);
  v20 = *(a2 + 80);
  v21 = [v20 origin];
  *(v28 + 88) = *v21;

  v22 = *(a2 + 80);
  [v22 size];
  v23 = v28;
  *(v28 + 96) = v24;
  *(v23 + 100) = v25;

  if (v18 <= 0.0)
  {
    v12 = 0;
  }

  ggl::BufferMemory::~BufferMemory(v27);
  return v12;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, _BYTE *a6)
{
  v12 = ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>::pop(a1[25]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v12 + 17), *(v12 + 29), *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v12 + 17), *(v12 + 29), a3[4], a3[5]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v12 + 17), *(v12 + 29), a1[119], a1[120]);
  **(v12 + 21) = a3[15];
  *(*(v12 + 21) + 8) = *a4;
  *(*(v12 + 21) + 16) = *a5;
  md::writeSourceConstants<md::PolygonTileData,md::Stroke2StyleProperties>(a2, a3, *(*(v12 + 17) + 32), a6);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v15, *(*(v12 + 17) + 64));
  v13 = v16;
  *v16 = 0;
  v13[1] = 0;
  ggl::BufferMemory::~BufferMemory(v15);
  return v12;
}

ggl::zone_mallocator *md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke2StyleProperties>(ggl::zone_mallocator *a1, uint64_t a2, uint64_t *a3, void *a4, _BYTE *a5)
{
  v9 = ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>::pop(a1);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v9 + 17), *(v9 + 29), *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v9 + 17), *(v9 + 29), a3[4], a3[5]);
  **(v9 + 21) = a3[15];
  *(*(v9 + 21) + 8) = *a4;
  if (md::writeSourceConstants<md::PolygonTileData,md::Stroke2StyleProperties>(a2, a3, *(*(v9 + 17) + 32), a5))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

ggl::zone_mallocator *md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  result = [*(*a1 + 80) strokeMeshes];
  v5 = *result;
  v23 = *(result + 1);
  if (*result != v23)
  {
    v6 = 0;
    do
    {
      v7 = *(*a1 + 80);
      v8 = a1[1];
      v9 = *(*a1 + 100);
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v32, a1[2]);
      v10 = [v7 commitRangesToStrokeRenderItemBatcher:v8 + 984 forMeshAtIndex:v6 cullingMask:v9 featureIdPredicate:v32];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v32);

      v11 = a1[3];
      v12 = a1[1];
      v13 = *v5;
      v24 = &off_1F2A5D8B8;
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
      v27 = *(a2 + 40);
      v31 = *(a2 + 104);
      v30 = *(a2 + 88);
      v29 = *(a2 + 72);
      v28 = *(a2 + 56);
      v14 = *(v12 + 1072);
      v15 = v14[1];
      if (v15 == *(v12 + 1080))
      {
        v14 = *v14;
        if (!v14)
        {
          v14 = malloc_type_malloc(120 * v15 + 16, 0x1020040EDED9539uLL);
          *v14 = 0;
          v14[1] = 0;
          **(v12 + 1072) = v14;
        }

        *(v12 + 1072) = v14;
        v15 = v14[1];
      }

      v16 = &v14[15 * v15];
      v14[1] = v15 + 1;
      v16[2] = &off_1F2A5D8B8;
      v17 = v25;
      v18 = v26;
      *(v16 + 7) = v27;
      *(v16 + 5) = v18;
      *(v16 + 3) = v17;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      *(v16 + 15) = v31;
      *(v16 + 13) = v21;
      *(v16 + 11) = v20;
      *(v16 + 9) = v19;
      ggl::RenderItem::~RenderItem(&v24);
      v16[10] = v13;
      v22 = (v10[1] - *v10) >> 4;
      v16[13] = *v10;
      v16[14] = v22;
      result = ggl::CommandBuffer::pushRenderItem(v11, (v16 + 2));
      ++v6;
      v5 += 2;
    }

    while (v5 != v23);
  }

  return result;
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonStroke::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonStroke::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

uint64_t md::writeSourceConstants<md::PolygonTileData,md::Stroke2StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v109, a3);
  v6 = 0;
  v7 = v110;
  do
  {
    *(v7 + v6) = *(a2 + 48 + v6);
    v6 += 4;
  }

  while (v6 != 64);
  *(v7 + 320) = 0;
  *(v7 + 328) = 0;
  *(v7 + 464) = *(a1 + 56);
  v8 = 1.0 / *(a1 + 64);
  *(v7 + 468) = v8;
  *(v7 + 472) = *(a2 + 148);
  *a4 = 0;
  v9 = **(a2 + 160);
  if (*(*(a2 + 160) + 8) != v9)
  {
    v10 = 0;
    v103 = 0;
    v11 = 0;
    v101 = vdupq_n_s32(0x37800080u);
    while (1)
    {
      v12 = *(v9 + 16 * v10);
      v13 = *(v9 + 16 * v10 + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v105, v12, v13);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      v14 = 0.0;
      v15 = v108;
      if (v108 != 1)
      {
        v30 = 0;
        goto LABEL_53;
      }

      v16 = *(a1 + 48);
      v17 = v105[3];
      if (v16 >= 0x17)
      {
        v18 = 23;
      }

      else
      {
        v18 = v16;
      }

      v19 = *v17;
      if (*v17 && (v20 = *v19, LODWORD(v19) = *v19 == 1.0, *(v17 + 10) == 1) && (v20 != 0.0 ? (v21 = v20 == 1.0) : (v21 = 1), !v21) || (v22 = *(v17 + v19 + 11), v22 == 2))
      {
        v23 = *(v17 + 16);
        if (v23)
        {
          v24 = *(v23 + 72);
          if (v24)
          {
            v25 = *v24 + 120 * *(v24 + v18 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0x11Du) != *(v25 + 12))
            {
              goto LABEL_35;
            }
          }

          if (*(v17 + 56))
          {
            v26 = *(v17 + 48);
            v27 = 8 * *(v17 + 56);
            while (1)
            {
              v28 = *(*v26 + 72);
              if (v28)
              {
                v29 = *v28 + 120 * *(v28 + v18 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v29, 0x11Du) != *(v29 + 12))
                {
                  break;
                }
              }

              v26 += 8;
              v22 = 1;
              v27 -= 8;
              if (!v27)
              {
                goto LABEL_32;
              }
            }

LABEL_35:
            v30 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v17, 285, v18, 2u, 0);
            v15 = v108;
            if ((v108 & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_44;
          }
        }

        v22 = 1;
      }

LABEL_32:
      v31 = *(v17 + 16 * v22 + 16);
      if (v31)
      {
        v32 = *(v31 + 72);
        if (v32)
        {
          v33 = *v32 + 120 * *(v32 + v18 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v33, 0x11Du) != *(v33 + 12))
          {
            goto LABEL_35;
          }
        }

        v34 = v17 + 16 * v22;
        if (*(v34 + 56))
        {
          v35 = *(v34 + 48);
          v36 = 8 * *(v34 + 56);
          while (1)
          {
            v37 = *(*v35 + 72);
            if (v37)
            {
              v38 = *v37 + 120 * *(v37 + v18 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0x11Du) != *(v38 + 12))
              {
                goto LABEL_35;
              }
            }

            v35 += 8;
            v30 = 1;
            v15 = 1;
            v36 -= 8;
            if (!v36)
            {
              goto LABEL_44;
            }
          }
        }
      }

      v30 = 1;
      v15 = 1;
LABEL_44:
      v39 = v105[3];
      v40 = fminf(fmaxf(*(a1 + 48), 0.0), 23.0);
      v41 = *v39;
      if (*v39)
      {
        v42 = *v41;
        LODWORD(v41) = *v41 == 1.0;
        if (*(v39 + 10) == 1 && v42 != 0.0 && v42 != 1.0)
        {
          goto LABEL_132;
        }
      }

      v44 = *(v39 + v41 + 11);
      if (v44 == 2)
      {
        v42 = 0.0;
LABEL_132:
        LOBYTE(v104) = 1;
        v111[0].i8[0] = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 404, 0, &v104, v40);
        v100 = v97;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 404, 1, v111, v40);
        v14 = v100 + ((v98 - v100) * v42);
        goto LABEL_53;
      }

      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105[3], 404, v44, 0, v40);
      v14 = v45;
LABEL_53:
      v46 = *(a1 + 64) * 1.75;
      if (!v30 || v14 >= 0.0001)
      {
        v50 = v46 * v14;
        if ((v15 & 1) == 0)
        {
          v65 = *(a2 + 152);
          if (v65 == 1)
          {
            v66 = 0.0;
          }

          else
          {
            v66 = 1.0;
          }

          if (v65 == 1)
          {
            v67 = -1.0;
          }

          else
          {
            v67 = 0.0;
          }

          if (v65 == 2)
          {
            v66 = 0.5;
            v67 = -0.5;
          }

          v68 = v110;
          v69 = v110 + 4 * v10;
          *(v69 + 336) = v66 * v50;
          *(v69 + 400) = v67 * v50;
          *(v68 + 476) = 0;
          v70 = v68 + 16 * v10;
          *(v70 + 64) = 0;
          *(v70 + 72) = 0;
          goto LABEL_123;
        }

        v51 = *(a1 + 48);
        v52 = v105[3];
        if (v51 >= 0x17)
        {
          v53 = 23;
        }

        else
        {
          v53 = v51;
        }

        v54 = *v52;
        if (*v52 && (v55 = *v54, LODWORD(v54) = *v54 == 1.0, *(v52 + 10) == 1) && (v55 != 0.0 ? (v56 = v55 == 1.0) : (v56 = 1), !v56) || (v57 = *(v52 + v54 + 11), v57 == 2))
        {
          v58 = *(v52 + 16);
          if (v58)
          {
            v59 = *(v58 + 72);
            if (v59)
            {
              v60 = *v59 + 120 * *(v59 + v53 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v60, 0x198u) != *(v60 + 12))
              {
                goto LABEL_97;
              }
            }

            if (*(v52 + 56))
            {
              v61 = *(v52 + 48);
              v62 = 8 * *(v52 + 56);
              while (1)
              {
                v63 = *(*v61 + 72);
                if (v63)
                {
                  v64 = *v63 + 120 * *(v63 + v53 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v64, 0x198u) != *(v64 + 12))
                  {
                    break;
                  }
                }

                v61 += 8;
                v57 = 1;
                v62 -= 8;
                if (!v62)
                {
                  goto LABEL_94;
                }
              }

LABEL_97:
              v78 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v52, 408, v53, 2, 0);
              v52 = v105[3];
              v79 = *(a1 + 48);
              if (v79 >= 0x17)
              {
                v53 = 23;
              }

              else
              {
                v53 = v79;
              }

              goto LABEL_106;
            }
          }

          v57 = 1;
        }

LABEL_94:
        v75 = *(v52 + 16 * v57 + 16);
        if (v75)
        {
          v76 = *(v75 + 72);
          if (v76)
          {
            v77 = *v76 + 120 * *(v76 + v53 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v77, 0x198u) != *(v77 + 12))
            {
              goto LABEL_97;
            }
          }

          v80 = v52 + 16 * v57;
          if (*(v80 + 56))
          {
            v81 = *(v80 + 48);
            v82 = 8 * *(v80 + 56);
            do
            {
              v83 = *(*v81 + 72);
              if (v83)
              {
                v84 = *v83 + 120 * *(v83 + v53 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v84, 0x198u) != *(v84 + 12))
                {
                  goto LABEL_97;
                }
              }

              v81 += 8;
              v82 -= 8;
            }

            while (v82);
          }
        }

        v78 = *(a2 + 152);
LABEL_106:
        v85 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v52, 420, v53, 2, 0);
        if (v78 == 1)
        {
          v86 = 0.0;
        }

        else
        {
          v86 = 1.0;
        }

        if (v78 == 1)
        {
          v87 = -1.0;
        }

        else
        {
          v87 = 0.0;
        }

        if (v78 == 2)
        {
          v86 = 0.5;
          v87 = -0.5;
        }

        v88 = v110;
        v89 = v110 + 4 * v10;
        *(v89 + 336) = v86 * v50;
        *(v89 + 400) = v87 * v50;
        *(v88 + 476) = v85 == 1;
        v90 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(407, 2u, v105[3]);
        v92.n128_u32[0] = *(a1 + 48);
        if (v90)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v111, v105[3], 403, 2u, fminf(fmaxf(v92.n128_f32[0], 0.0), 23.0));
        }

        else
        {
          if (v92.n128_f32[0] >= 0x17)
          {
            v93 = 23;
          }

          else
          {
            v93 = v92.n128_f32[0];
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v111, v105[3], 403, v93, 2u, 0, v92, v91);
        }

        v94 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v111[0])), v101);
        *&v104 = v94.i64[0];
        DWORD2(v104) = v94.i32[2];
        v95 = 0;
        v96 = v94.f32[3] * *(a2 + 144);
        *(&v104 + 3) = v96;
        do
        {
          *(&v104 + v95) = *(&v104 + v95) * v96;
          v95 += 4;
        }

        while (v95 != 12);
        *(v110 + 16 * v10 + 64) = v104;
        v103 |= *(&v104 + 3) > 0.001;
        *a4 |= *(&v104 + 3) < 1.0;
        goto LABEL_123;
      }

      v47 = v110;
      v48 = v110 + 4 * v10;
      v49 = v110 + 16 * v10;
      if (*(a1 + 120))
      {
        *(v48 + 336) = 0;
        *(v48 + 400) = 0;
        *(v49 + 64) = 0;
        *(v49 + 72) = 0;
      }

      else
      {
        v71 = v46;
        *(v48 + 336) = v71;
        *(v48 + 400) = 0;
        *(v49 + 64) = 0;
        *(v49 + 72) = 0;
        if (v108 == 1)
        {
          v72 = *(a1 + 48);
          if (v72 >= 0x17)
          {
            v73 = 23;
          }

          else
          {
            v73 = v72;
          }

          v74 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v105[3], 420, v73, 2, 0) == 1;
          *(v110 + 476) = v74;
          goto LABEL_123;
        }
      }

      *(v47 + 476) = 0;
LABEL_123:
      if (v108 == 1)
      {
        (*(*v105 + 7))(v105);
      }

      if (v107)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v107);
      }

      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v106);
      }

      v10 = ++v11;
      v9 = **(a2 + 160);
      if (v11 >= ((*(*(a2 + 160) + 8) - v9) >> 4))
      {
        goto LABEL_134;
      }
    }
  }

  v103 = 0;
LABEL_134:
  ggl::BufferMemory::~BufferMemory(v109);
  return v103 & 1;
}

void sub_1B3296F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, char a23)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(exception_object);
}

ggl::zone_mallocator *ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>::pop(ggl::zone_mallocator *a1)
{
  v1 = a1;
  v2 = *(a1 + 1);
  if (v2 == *a1)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    *(a1 + 1) = v2 - 8;
  }

  v6 = *(v1 + 5);
  v5 = *(v1 + 6);
  if (v6 >= v5)
  {
    v8 = *(v1 + 4);
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
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

    v24[4] = v1 + 56;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonAnimatableStroke::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 1;
    v17 = *(v1 + 4);
    v18 = *(v1 + 5) - v17;
    v19 = v15 - v18;
    memcpy(v15 - v18, v17, v18);
    v20 = *(v1 + 4);
    *(v1 + 4) = v19;
    *(v1 + 5) = v7;
    v21 = *(v1 + 6);
    *(v1 + 6) = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonAnimatableStroke::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  *(v1 + 5) = v7;
  v24[0] = v3;
  v22 = *(v1 + 15);
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

ggl::zone_mallocator *md::animatingPolygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6)
{
  v12 = ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>::pop(*(a1 + 200));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v12 + 17), *(v12 + 29), *a3, *(a3 + 8));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v12 + 17), *(v12 + 29), *(a3 + 32), *(a3 + 40));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v12 + 17), *(v12 + 29), *(a1 + 952), *(a1 + 960));
  **(v12 + 21) = *(a3 + 120);
  *(*(v12 + 21) + 8) = *a4;
  *(*(v12 + 21) + 16) = *a5;
  v13 = md::writeSourceConstants<md::PolygonTileData,md::Stroke1StyleProperties>(a2, a3, a4, *(*(v12 + 17) + 32), a6);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, *(*(v12 + 17) + 64));
  v14 = 0;
  v18 = *(a5 + 8);
  v15 = *(&v18 + 3) * *(a3 + 144);
  *(&v18 + 3) = v15;
  do
  {
    *&v19[v14 - 16] = *&v19[v14 - 16] * v15;
    v14 += 4;
  }

  while (v14 != 12);
  *v20 = v18;
  if (*(&v18 + 3) >= 0.0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  if (!v16)
  {
    v12 = 0;
  }

  ggl::BufferMemory::~BufferMemory(v19);
  return v12;
}

ggl::zone_mallocator *md::polygonStrokePipelineSetup<md::PolygonTileData,md::Stroke1StyleProperties>(ggl::zone_mallocator *a1, uint64_t a2, uint64_t *a3, void *a4, _BYTE *a5)
{
  v9 = ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>::pop(a1);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v9 + 17), *(v9 + 29), *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v9 + 17), *(v9 + 29), a3[4], a3[5]);
  **(v9 + 21) = a3[15];
  *(*(v9 + 21) + 8) = *a4;
  if (md::writeSourceConstants<md::PolygonTileData,md::Stroke1StyleProperties>(a2, a3, a4, *(*(v9 + 17) + 32), a5))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

ggl::zone_mallocator *md::generateStrokeRenderItem<md::PolygonTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::PolygonTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  result = [*(*a1 + 80) strokeMeshes];
  v5 = *result;
  v23 = *(result + 1);
  if (*result != v23)
  {
    v6 = 0;
    do
    {
      v7 = *(*a1 + 80);
      v8 = a1[1];
      v9 = *(*a1 + 100);
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v32, a1[2]);
      v10 = [v7 commitRangesToStrokeRenderItemBatcher:v8 + 984 forMeshAtIndex:v6 cullingMask:v9 featureIdPredicate:v32];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v32);

      v11 = a1[3];
      v12 = a1[1];
      v13 = *v5;
      v24 = &off_1F2A5D8B8;
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
      v27 = *(a2 + 40);
      v31 = *(a2 + 104);
      v30 = *(a2 + 88);
      v29 = *(a2 + 72);
      v28 = *(a2 + 56);
      v14 = *(v12 + 1072);
      v15 = v14[1];
      if (v15 == *(v12 + 1080))
      {
        v14 = *v14;
        if (!v14)
        {
          v14 = malloc_type_malloc(120 * v15 + 16, 0x1020040EDED9539uLL);
          *v14 = 0;
          v14[1] = 0;
          **(v12 + 1072) = v14;
        }

        *(v12 + 1072) = v14;
        v15 = v14[1];
      }

      v16 = &v14[15 * v15];
      v14[1] = v15 + 1;
      v16[2] = &off_1F2A5D8B8;
      v17 = v25;
      v18 = v26;
      *(v16 + 7) = v27;
      *(v16 + 5) = v18;
      *(v16 + 3) = v17;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      *(v16 + 15) = v31;
      *(v16 + 13) = v21;
      *(v16 + 11) = v20;
      *(v16 + 9) = v19;
      ggl::RenderItem::~RenderItem(&v24);
      v16[10] = v13;
      v22 = (v10[1] - *v10) >> 4;
      v16[13] = *v10;
      v16[14] = v22;
      result = ggl::CommandBuffer::pushRenderItem(v11, (v16 + 2));
      ++v6;
      v5 += 2;
    }

    while (v5 != v23);
  }

  return result;
}

uint64_t md::writeSourceConstants<md::PolygonTileData,md::Stroke1StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v112, a4);
  v8 = 0;
  v9 = v113;
  do
  {
    *(v9 + v8) = *(a2 + 48 + v8);
    v8 += 4;
  }

  while (v8 != 64);
  v10 = 0;
  v111 = *(a3 + 8);
  v11 = *(&v111 + 3) * *(a2 + 144);
  *(&v111 + 3) = v11;
  do
  {
    *&v112[v10 - 16] = *&v112[v10 - 16] * v11;
    v10 += 4;
  }

  while (v10 != 12);
  *(v9 + 320) = v111;
  *(v9 + 464) = *(a1 + 56);
  v12 = 1.0 / *(a1 + 64);
  *(v9 + 468) = v12;
  *(v9 + 472) = *(a2 + 148);
  *a5 = 0;
  v13 = **(a2 + 160);
  if (*(*(a2 + 160) + 8) != v13)
  {
    v14 = 0;
    v105 = 0;
    v15 = 0;
    v103 = vdupq_n_s32(0x37800080u);
    while (1)
    {
      v16 = *(v13 + 16 * v14);
      v17 = *(v13 + 16 * v14 + 8);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v107, v16, v17);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }

      v19 = 0.0;
      v20 = v110;
      if (v110 != 1)
      {
        v35 = 0;
        goto LABEL_55;
      }

      v21 = *(a1 + 48);
      v22 = v107[3];
      if (v21 >= 0x17)
      {
        v23 = 23;
      }

      else
      {
        v23 = v21;
      }

      v24 = *v22;
      if (*v22 && (v25 = *v24, LODWORD(v24) = *v24 == 1.0, *(v22 + 10) == 1) && (v25 != 0.0 ? (v26 = v25 == 1.0) : (v26 = 1), !v26) || (v27 = *(v22 + v24 + 11), v27 == 2))
      {
        v28 = *(v22 + 16);
        if (v28)
        {
          v29 = *(v28 + 72);
          if (v29)
          {
            v30 = *v29 + 120 * *(v29 + v23 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v30, 0x11Du) != *(v30 + 12))
            {
              goto LABEL_37;
            }
          }

          if (*(v22 + 56))
          {
            v31 = *(v22 + 48);
            v32 = 8 * *(v22 + 56);
            while (1)
            {
              v33 = *(*v31 + 72);
              if (v33)
              {
                v34 = *v33 + 120 * *(v33 + v23 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v34, 0x11Du) != *(v34 + 12))
                {
                  break;
                }
              }

              v31 += 8;
              v27 = 1;
              v32 -= 8;
              if (!v32)
              {
                goto LABEL_34;
              }
            }

LABEL_37:
            v35 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v22, 285, v23, 2u, 0);
            v20 = v110;
            if ((v110 & 1) == 0)
            {
              goto LABEL_55;
            }

            goto LABEL_46;
          }
        }

        v27 = 1;
      }

LABEL_34:
      v36 = *(v22 + 16 * v27 + 16);
      if (v36)
      {
        v37 = *(v36 + 72);
        if (v37)
        {
          v38 = *v37 + 120 * *(v37 + v23 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0x11Du) != *(v38 + 12))
          {
            goto LABEL_37;
          }
        }

        v39 = v22 + 16 * v27;
        if (*(v39 + 56))
        {
          v40 = *(v39 + 48);
          v41 = 8 * *(v39 + 56);
          while (1)
          {
            v42 = *(*v40 + 72);
            if (v42)
            {
              v43 = *v42 + 120 * *(v42 + v23 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v43, 0x11Du) != *(v43 + 12))
              {
                goto LABEL_37;
              }
            }

            v40 += 8;
            v35 = 1;
            v20 = 1;
            v41 -= 8;
            if (!v41)
            {
              goto LABEL_46;
            }
          }
        }
      }

      v35 = 1;
      v20 = 1;
LABEL_46:
      v44 = v107[3];
      v45 = fminf(fmaxf(*(a1 + 48), 0.0), 23.0);
      v46 = *v44;
      if (*v44)
      {
        v47 = *v46;
        LODWORD(v46) = *v46 == 1.0;
        if (*(v44 + 10) == 1 && v47 != 0.0 && v47 != 1.0)
        {
          goto LABEL_135;
        }
      }

      v49 = *(v44 + v46 + 11);
      if (v49 == 2)
      {
        v47 = 0.0;
LABEL_135:
        v106.n128_u8[0] = 1;
        v114[0].i8[0] = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v44, 97, 0, &v106, v45);
        v102 = v100;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v44, 97, 1, v114, v45);
        v19 = v102 + ((v18.n128_f32[0] - v102) * v47);
        goto LABEL_55;
      }

      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v107[3], 97, v49, 0, v45);
      v19 = v18.n128_f32[0];
LABEL_55:
      v18.n128_f64[0] = *(a1 + 64) * 1.75;
      if (!v35 || v19 >= 0.0001)
      {
        v18.n128_f64[0] = v18.n128_f64[0] * v19;
        v53 = v18.n128_f64[0];
        if (v20)
        {
          v54 = *(a1 + 48);
          v55 = v107[3];
          if (v54 >= 0x17)
          {
            v56 = 23;
          }

          else
          {
            v56 = v54;
          }

          v57 = *v55;
          if (*v55 && (v58 = *v57, LODWORD(v57) = *v57 == 1.0, *(v55 + 10) == 1) && (v58 != 0.0 ? (v59 = v58 == 1.0) : (v59 = 1), !v59) || (v60 = *(v55 + v57 + 11), v60 == 2))
          {
            v61 = *(v55 + 16);
            if (v61)
            {
              v62 = *(v61 + 72);
              if (v62)
              {
                v63 = *v62 + 120 * *(v62 + v56 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v63, 0x13Fu) != *(v63 + 12))
                {
                  goto LABEL_100;
                }
              }

              if (*(v55 + 56))
              {
                v64 = *(v55 + 48);
                v65 = 8 * *(v55 + 56);
                while (1)
                {
                  v66 = *(*v64 + 72);
                  if (v66)
                  {
                    v67 = *v66 + 120 * *(v66 + v56 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v67, 0x13Fu) != *(v67 + 12))
                    {
                      break;
                    }
                  }

                  v64 += 8;
                  v60 = 1;
                  v65 -= 8;
                  if (!v65)
                  {
                    goto LABEL_97;
                  }
                }

LABEL_100:
                v82 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v55, 319, v56, 2, 0);
                v55 = v107[3];
                v83 = *(a1 + 48);
                if (v83 >= 0x17)
                {
                  v56 = 23;
                }

                else
                {
                  v56 = v83;
                }

                goto LABEL_109;
              }
            }

            v60 = 1;
          }

LABEL_97:
          v79 = *(v55 + 16 * v60 + 16);
          if (v79)
          {
            v80 = *(v79 + 72);
            if (v80)
            {
              v81 = *v80 + 120 * *(v80 + v56 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v81, 0x13Fu) != *(v81 + 12))
              {
                goto LABEL_100;
              }
            }

            v84 = v55 + 16 * v60;
            if (*(v84 + 56))
            {
              v85 = *(v84 + 48);
              v86 = 8 * *(v84 + 56);
              do
              {
                v87 = *(*v85 + 72);
                if (v87)
                {
                  v88 = *v87 + 120 * *(v87 + v56 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v88, 0x13Fu) != *(v88 + 12))
                  {
                    goto LABEL_100;
                  }
                }

                v85 += 8;
                v86 -= 8;
              }

              while (v86);
            }
          }

          v82 = *(a2 + 152);
LABEL_109:
          v89 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v55, 420, v56, 2, 0);
          if (v82 == 1)
          {
            v90 = 0.0;
          }

          else
          {
            v90 = 1.0;
          }

          if (v82 == 1)
          {
            v91 = -1.0;
          }

          else
          {
            v91 = 0.0;
          }

          if (v82 == 2)
          {
            v90 = 0.5;
            v91 = -0.5;
          }

          v92 = v113;
          v93 = v113 + 4 * v14;
          *(v93 + 336) = v90 * v53;
          *(v93 + 400) = v91 * v53;
          *(v92 + 476) = v89 == 1;
          v94 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(107, 2u, v107[3]);
          v96.n128_u32[0] = *(a1 + 48);
          if (v94)
          {
            gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v114, v107[3], 93, 2u, fminf(fmaxf(v96.n128_f32[0], 0.0), 23.0));
          }

          else
          {
            if (v96.n128_f32[0] >= 0x17)
            {
              v97 = 23;
            }

            else
            {
              v97 = v96.n128_f32[0];
            }

            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v114, v107[3], 93, v97, 2u, 0, v96, v95);
          }

          v99 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v114[0])), v103);
          v106.n128_u64[0] = v99.i64[0];
          v106.n128_u32[2] = v99.u32[2];
          v98 = 0;
          v99.i32[0] = *(a2 + 144);
          v106.n128_f32[3] = v99.f32[3] * v99.f32[0];
          do
          {
            v106.n128_f32[v98] = v106.n128_f32[v98] * (v99.f32[3] * v99.f32[0]);
            ++v98;
          }

          while (v98 != 3);
          v18 = v106;
          *(v113 + 16 * v14 + 64) = v106;
          v18.n128_u32[0] = v106.n128_u32[3];
          v105 |= v106.n128_f32[3] > 0.001 || *(&v111 + 3) > 0.001;
          *a5 |= v106.n128_f32[3] < 1.0;
          goto LABEL_126;
        }

        v68 = *(a2 + 152);
        if (v68 == 1)
        {
          v69 = 0.0;
        }

        else
        {
          v69 = 1.0;
        }

        if (v68 == 1)
        {
          v70 = -1.0;
        }

        else
        {
          v70 = 0.0;
        }

        if (v68 == 2)
        {
          v69 = 0.5;
          v70 = -0.5;
        }

        v71 = v113;
        v72 = v113 + 4 * v14;
        *(v72 + 336) = v69 * v53;
        *(v72 + 400) = v70 * v53;
        *(v71 + 476) = 0;
        v73 = v71 + 16 * v14;
        *(v73 + 64) = 0;
        *(v73 + 72) = 0;
        goto LABEL_95;
      }

      v50 = v113;
      v51 = v113 + 4 * v14;
      v52 = v113 + 16 * v14;
      if ((*(a1 + 120) & 1) == 0)
      {
        v74 = 0;
        v75 = v18.n128_f64[0];
        *(v51 + 336) = v75;
        *(v51 + 400) = 0;
        *(v52 + 64) = 0;
        *(v52 + 72) = 0;
        if (v110 == 1)
        {
          v76 = *(a1 + 48);
          if (v76 >= 0x17)
          {
            v77 = 23;
          }

          else
          {
            v77 = v76;
          }

          v78 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v107[3], 420, v77, 2, 0);
          v50 = v113;
          v74 = v78 == 1;
        }

        *(v50 + 476) = v74;
LABEL_95:
        v18.n128_u32[0] = HIDWORD(v111);
        v105 |= *(&v111 + 3) > 0.001;
        goto LABEL_126;
      }

      *(v51 + 336) = 0;
      *(v51 + 400) = 0;
      *(v52 + 64) = 0;
      *(v52 + 72) = 0;
      *(v50 + 476) = 0;
LABEL_126:
      if (v110 == 1)
      {
        (*(*v107 + 7))(v107, v18);
      }

      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v109);
      }

      if (v108)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v108);
      }

      v14 = ++v15;
      v13 = **(a2 + 160);
      if (v15 >= ((*(*(a2 + 160) + 8) - v13) >> 4))
      {
        goto LABEL_137;
      }
    }
  }

  LOBYTE(v105) = 0;
LABEL_137:
  ggl::BufferMemory::~BufferMemory(v112);
  return v105 & 1;
}

void sub_1B3297E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::_polygonIsVisibleWithQueryLocker(uint64_t a1, float a2)
{
  v3 = a2;
  v4 = *(*a1 + 24);
  if (a2 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = v3;
  }

  result = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v4, 91, v5, 2u, 0);
  if (result)
  {
    v7 = *(*a1 + 24);
    if (gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(v7, 0x5Cu, v3) & 1) != 0 || (gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(v7, 0x88u, v3) & 1) != 0 || (gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(v7, 0x5Du, v3) & 1) != 0 || (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v7, 0x5Cu, v3) & 1) != 0 || (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v7, 0x88u, v3))
    {
      return 1;
    }

    else
    {

      return gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v7, 0x5Du, v3);
    }
  }

  return result;
}

BOOL std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*v2 != *a2)
    {
      if (++v2 == v3)
      {
        v2 = *(a1 + 16);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A4E848;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::PolygonTileData>>(std::vector<md::MapTileDataRenderable<md::PolygonTileData> *,std::allocator<md::MapTileDataRenderable<md::PolygonTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::PolygonTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A4E848;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t md::PolygonLayoutCharacteristics::commandBufferInfo(void *a1, unsigned __int8 *a2, md::FrameGraph *this)
{
  v6 = md::FrameGraph::renderQueueForPass(this, a2[40]);
  if (v6)
  {
    v7 = *(*(v6 + 16) + 8 * a2[41]);
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  v8 = md::FrameGraph::renderQueueForPass(this, a2[42]);
  if (v8)
  {
    v9 = *(*(v8 + 16) + 8 * a2[43]);
  }

  else
  {
    v9 = 0;
  }

  a1[1] = v9;
  result = md::FrameGraph::renderQueueForPass(this, a2[44]);
  if (result)
  {
    v11 = *(*(result + 16) + 8 * a2[45]);
  }

  else
  {
    v11 = 0;
  }

  a1[2] = v11;
  return result;
}

void md::preparePolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(uint64_t **a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = md::LayoutContext::get<md::SharedResourcesContext>(a2);
  v7 = md::LayoutContext::get<md::CameraContext>(a2);
  v8 = *v6;
  v9 = v8;
  if (v8)
  {
    objc_msgSend_textureManager(v8);
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v32[0] = &unk_1F2A4E8D8;
  v33 = v32;
  v25 = v27;
  v26 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  v11 = a1[1];
  if (*a1 != v11)
  {
    v12 = fmaxf(*(v7 + 3080) + *(v7 + 3076), 1.0);
    while (1)
    {
      v13 = *v10;
      if (!v33 || std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::operator()(v33, *v10))
      {
        break;
      }

LABEL_17:
      if (++v10 == v11)
      {
        goto LABEL_18;
      }
    }

    v14 = *(v13 + 392);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v29, *(v13 + 224), 0);
    v15 = v30[1];
    v31[0] = *v30;
    v31[1] = v15;
    v16 = v30[3];
    v31[2] = v30[2];
    v31[3] = v16;
    ggl::BufferMemory::~BufferMemory(v29);
    v17 = ggl::CullingGrid::intersectedCellsForView(v31, 0.0);
    v18 = (*(*v14 + 48))(v14);
    v19 = *v18;
    v20 = v18[1];
    while (1)
    {
      if (v19 == v20)
      {
        goto LABEL_17;
      }

      v21 = *(v19 + 8);
      if (((*(*a3 + 56))(a3, v13, v21, v17) & 1) == 0)
      {
        v22 = *(v19 + 8);
        v23 = (*(*a3 + 64))(a3, v22, 1);

        if (!v23)
        {
          goto LABEL_16;
        }

        v21 = *(v19 + 8);
        *&v24 = v12;
        [v21 updateTexturesIfNecessary:&v25 textureManager:v24];
      }

LABEL_16:
      v19 += 24;
    }
  }

LABEL_18:
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::~__value_func[abi:nn200100](v32);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }
}

void md::layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4, _BYTE *a5, char a6)
{
  v106[4] = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 104);
  v87 = 0;
  v86 = 0u;
  v85 = 0u;
  v67 = v11;
  v93 = off_1F2A4E798;
  v94 = 0;
  v95 = a6;
  [v11 size];
  v97[0] = v12;
  v97[1] = v13;
  md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
  v88 = v14;
  v98 = [v11 multiSample];
  v15 = *(a3 + 24);
  v16 = *(v15 + 8);
  v17 = md::FrameGraph::renderQueueForPass(v16, a5[40]);
  if (v17)
  {
    v18 = *(*(v17 + 16) + 8 * a5[41]);
  }

  else
  {
    v18 = 0;
  }

  v77[0] = v18;
  v19 = md::FrameGraph::renderQueueForPass(v16, a5[42]);
  if (v19)
  {
    v20 = *(*(v19 + 16) + 8 * a5[43]);
  }

  else
  {
    v20 = 0;
  }

  v77[1] = v20;
  v21 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[44]);
  if (v21)
  {
    v22 = *(*(v21 + 16) + 8 * a5[45]);
  }

  else
  {
    v22 = 0;
  }

  v77[2] = v22;
  if (a5[48] == 1 && (v23 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[46])) != 0)
  {
    v73 = *(*(v23 + 16) + 8 * a5[47]);
  }

  else
  {
    v73 = 0;
  }

  if (a5[51] == 1 && (v24 = md::FrameGraph::renderQueueForPass(*(v15 + 8), a5[49])) != 0)
  {
    v72 = *(*(v24 + 16) + 8 * a5[50]);
  }

  else
  {
    v72 = 0;
  }

  v82[0] = &unk_1F2A4E968;
  v83 = v82;
  v106[0] = &unk_1F2A4E800;
  v106[3] = v106;
  v105[0] = &unk_1F2A4E800;
  v105[3] = v105;
  v70 = *(a5 + 3);
  v71 = *(a5 + 2);
  if (v70 != v71)
  {
    std::vector<gdc::Entity>::vector[abi:nn200100](&__p, a5 + 2);
    v25 = v80 - __p;
    if (v80 != __p)
    {
      if (!((v25 >> 3) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v25 >> 3);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    *(&v102 + 1) = 0;
    operator new();
  }

  v26 = *(a2 + 8);
  v68 = md::LayoutContext::get<md::CameraContext>(v26);
  v74 = md::LayoutContext::get<md::SharedResourcesContext>(v26);
  v75 = gdc::Context::get<md::StyleLogicContext>(v26);
  v27 = *(*v75 + 520);
  v28 = *(*v75 + 528);
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    if (!v27)
    {
      goto LABEL_58;
    }

    v27 = *(*v75 + 520);
    v29 = *(*v75 + 528);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v30 = *(v27 + 272);
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
      goto LABEL_26;
    }
  }

  else if (!v27)
  {
    goto LABEL_58;
  }

  v30 = *(v27 + 272);
LABEL_26:
  v31 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v101, a4[119]);
  **(&v103 + 1) = v30;
  ggl::BufferMemory::~BufferMemory(v31);
  v32 = *a1;
  v69 = a1[1];
  if (*a1 != v69)
  {
    while (1)
    {
      v33 = *v32;
      if (!v83 || (std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::operator()(v83, *v32) & 1) != 0)
      {
        break;
      }

LABEL_57:
      if (++v32 == v69)
      {
        goto LABEL_58;
      }
    }

    v84 = v33;
    v34 = *(v33 + 392);
    v35 = *(v34 + 752);
    if (v35)
    {
      if (v35 < 0x201)
      {
        v36 = 0;
        i = 512;
      }

      else
      {
        v36 = 0;
        for (i = 512; i < v35; i *= 2)
        {
          ++v36;
        }
      }

      v38 = *(v34 + 752);
      if (i > v35)
      {
        do
        {
          --v36;
          v39 = i <= 2 * v38;
          v38 *= 2;
        }

        while (!v39);
      }
    }

    else
    {
      v36 = 0;
    }

    v40 = *(v34 + 169);
    v41 = exp2((ceilf(v88) - (v36 + v40))) * (v35 >> 7);
    v42 = fmaxf(*(v68 + 3080) + *(v68 + 3076), 1.0);
    v91 = v41;
    v89 = v42;
    v92 = *(v68 + 3768) / (*(v68 + 1368) * (*(v33 + 80) - *(v33 + 64)));
    v44 = *(v33 + 224);
    v43 = *(v33 + 232);
    if (v43)
    {
      atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
    }

    v45 = *(&v85 + 1);
    *&v85 = v44;
    *(&v85 + 1) = v43;
    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    v47 = *(v33 + 240);
    v46 = *(v33 + 248);
    if (v46)
    {
      atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
    }

    v48 = *(&v86 + 1);
    *&v86 = v47;
    *(&v86 + 1) = v46;
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(&__p, v85, 0);
    v101 = *v81;
    v102 = v81[1];
    v103 = v81[2];
    v104 = v81[3];
    ggl::BufferMemory::~BufferMemory(&__p);
    v96 = ggl::CullingGrid::intersectedCellsForView(&v101, 0.0);
    v90 = v40;
    v49 = (*(*v34 + 48))(v34);
    v50 = *v49;
    v51 = v49[1];
    while (1)
    {
      if (v50 == v51)
      {
        goto LABEL_57;
      }

      v52 = v94;
      v53 = (*(*a5 + 40))(a5, v52);

      if (v53)
      {
        ggl::DataAccess<ggl::Tile::View>::DataAccess(v78, v85, 0);
        v54 = v84;
        v55 = v78[5];
        v56 = *(v50 + 8);
        (*(*a5 + 48))(&__p, a5, &v86, v55, v54 + 96, v56, v97, v88);

        ggl::BufferMemory::~BufferMemory(v78);
        v96 = ggl::CullingGrid::intersectedCellsForView(&__p, 0.0);
      }

      v57 = *(v50 + 8);
      if ((*(*a5 + 56))(a5, v33, v57, v96))
      {
        goto LABEL_55;
      }

      v58 = *(v50 + 8);
      v59 = (*(*a5 + 64))(a5, v58, 0);

      if (v59)
      {
        v60 = *(v50 + 8);
        v61 = (*(*a5 + 72))(a5, v60);

        geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&v93, *(v50 + 8));
        v62 = *v74;
        v63 = *(a2 + 16);
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v100, v106);
        HIBYTE(v65) = v61;
        LOBYTE(v65) = 0;
        md::_layoutPolygonGroup<md::VenueTileData>(v62, v63, v75, a4, v77, v73, v72, a5, &v84, v65, v100);
        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v100);

        if (v70 != v71)
        {
          break;
        }
      }

LABEL_56:
      v50 += 24;
    }

    v57 = *v74;
    v64 = *(a2 + 16);
    std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v99, v105);
    HIBYTE(v66) = v61;
    LOBYTE(v66) = 1;
    md::_layoutPolygonGroup<md::VenueTileData>(v57, v64, v75, a4, v77, v73, v72, a5, &v84, v66, v99);
    std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v99);
LABEL_55:

    goto LABEL_56;
  }

LABEL_58:
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v105);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v106);
  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::~__value_func[abi:nn200100](v82);
  v93 = off_1F2A4E798;

  if (*(&v86 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v86 + 1));
  }

  if (*(&v85 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v85 + 1));
  }
}

void sub_1B3298EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49, uint64_t a50, std::__shared_weak_count *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  operator delete(v58);
  if (v57)
  {
    operator delete(v57);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v59 - 184);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v59 - 152);
  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::~__value_func[abi:nn200100](&a43);
  a56 = a14;

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a51);
  }

  if (a49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a49);
  }

  _Unwind_Resume(a1);
}

void md::_layoutPolygonGroup<md::VenueTileData>(void *a1, void **a2, uint64_t a3, uint64_t *a4, ggl::CommandBuffer *a5, ggl::zone_mallocator *a6, uint64_t a7, _BYTE *a8, float *a9, __int16 a10, uint64_t a11)
{
  v388 = *MEMORY[0x1E69E9840];
  v361 = 0;
  v345 = 0u;
  v346 = 0u;
  v347 = 0u;
  v341 = 0;
  v343 = 0;
  v337 = 0;
  v339 = 0;
  v17 = a1;
  v18 = *(*a3 + 520);
  v19 = *(*a3 + 528);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = *(v18 + 272);
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  else
  {
    v20 = *(v18 + 272);
  }

  objc_msgSend_textureManager(v17);
  v349 = **v371;
  if (*&v371[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[8]);
  }

  v335 = a8;
  v336 = a4;
  v331 = a7;
  v350 = *([v17 alphaAtlas] + 24);
  v21 = *(a9 + 10);
  *v371 = a10;
  v359 = [v21 styleQueries:v371];

  if (!v359)
  {
    goto LABEL_67;
  }

  if (v359[1] == *v359)
  {
    goto LABEL_67;
  }

  v358 = 0;
  v355 = 0;
  *v353 = 0;
  v354 = 0;
  v351 = 0;
  v362 = 0;
  v357 = (*(*a8 + 96))(a8);
  v22 = *v359;
  if (v359[1] == *v359)
  {
    goto LABEL_67;
  }

  v329 = a2;
  v333 = a5;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = v20;
  do
  {
    v28 = *&v22[2 * v23];
    v29 = v22[2 * v23 + 1];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v371, v28, v29);
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    if (v371[32])
    {
      if (gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v371 + 24), 0x8Au, 1u))
      {
        gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(138, 2, *(*v371 + 24));
      }

      v26 |= md::_polygonIsVisibleWithQueryLocker(v371, a9[12]);
      if (v26)
      {
        v30 = a9[12];
        if (v30 >= 0x17)
        {
          v31 = 23;
        }

        else
        {
          v31 = v30;
        }

        v32 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v371 + 24), 420, v31, 2, 0) == 0;
      }

      else
      {
        v32 = 0;
      }

      v360 = v32;
      if ((v24 & 1) == 0)
      {
        v33 = a9[12];
        if (v33 >= 0x17)
        {
          v34 = 23;
        }

        else
        {
          v34 = v33;
        }

        LODWORD(v355) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v371 + 24), 104, v34, 2, 0);
      }

      if ((v24 & 1) == 0)
      {
        v35 = a9[12];
        if (v35 >= 0x17)
        {
          v36 = 23;
        }

        else
        {
          v36 = v35;
        }

        v358 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*v371 + 24), 319, v36, 2, 0);
      }

      if (gss::FeatureAttributeSet::getValueForAttributeKey(*((*v359)[2 * v23] + 240), *((*v359)[2 * v23] + 248), 187, v366))
      {
        v362 = 1;
      }

      if (v371[32])
      {
        (*(**v371 + 56))(*v371);
      }

      v24 = 1;
    }

    if (*&v371[24])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[24]);
    }

    if (*&v371[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[8]);
    }

    v23 = ++v25;
    v22 = *v359;
  }

  while (v25 < ((v359[1] - *v359) >> 4));
  v37 = v333;
  if ((v26 & 1) == 0)
  {
LABEL_67:
  }

  else
  {
    v38 = *v22;
    v39 = v22[1];
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v371, v38, v39);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v39);
    }

    LOBYTE(v386[0]) = 0;
    v40 = v335;
    if (v371[32] == 1)
    {
      hasValueForKey = gss::RenderStyle<gss::PropertyID>::hasValueForKey(*(*v371 + 24), 0x8Au, 1u);
      if (hasValueForKey)
      {
        LOBYTE(hasValueForKey) = gss::RenderStyleHelper<gss::PropertyID,unsigned int>::valueForKey(138, 2, *(*v371 + 24));
      }

      v353[0] = (*(*v335 + 24))(v335, hasValueForKey, v386);
      v42 = *(*v371 + 24);
      v43 = fminf(fmaxf(a9[12], 0.0), 23.0);
      v44 = *v42;
      if (*v42 && (v45 = *v44, LODWORD(v44) = *v44 == 1.0, *(v42 + 10) == 1) && (v45 != 0.0 ? (v46 = v45 == 1.0) : (v46 = 1), !v46) || (v47 = *(v42 + v44 + 11), v45 = 0.0, v47 == 2))
      {
        v366[0] = 1;
        LOBYTE(v380) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v42, 329, 0, v366, v43);
        v325 = v27;
        v327 = v326;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v42, 329, 1, &v380, v43);
        v49 = v327 + ((v328 - v327) * v45);
        v27 = v325;
      }

      else
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v371 + 24), 329, v47, 0, v43);
        v49 = v48;
      }

      v50 = *(a9 + 8);
      v51 = v50 * (*(*v335 + 80))(v335) * v49;
      *(&v355 + 1) = v51;
      v52 = *(*v371 + 24);
      v53 = *v52;
      if (*v52)
      {
        LOBYTE(v53) = *(v52 + 9);
      }

      v351 = v53 & (v27 > 0.0);
      v54 = a9[12];
      if (v54 >= 0x17)
      {
        v55 = 23;
      }

      else
      {
        v55 = v54;
      }

      v361 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v52, 420, v55, 2, 0);
      v56 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(*v329, v329[1]);
      v57 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(108, 0, *(*v371 + 24));
      v58 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(108, 1u, *(*v371 + 24));
      if (v57)
      {
        md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v366, v56, v371, 0, a9[12]);
      }

      else
      {
        v59.n128_f32[0] = a9[12];
        md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v366, v56, v371, v59.n128_f32[0], 0, v59, v60);
      }

      v342 = *v366;
      v61 = a9[12];
      v62 = v61;
      v63 = *(*v371 + 24);
      if (gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(v63, 0x14Cu, v61))
      {
        if (v57)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v366, v63, 332, 0, fminf(fmaxf(v61, 0.0), 23.0));
        }

        else
        {
          if (v62 >= 0x17)
          {
            v66 = 23;
          }

          else
          {
            v66 = v62;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v366, v63, 332, v66, 0, 0, v64, v65);
        }

        v37 = v333;
        v40 = v335;
        v344 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v366)), vdupq_n_s32(0x37800080u));
        v61 = a9[12];
        v63 = *(*v371 + 24);
        v62 = v61;
      }

      else
      {
        v344 = v342;
        v37 = v333;
        v40 = v335;
      }

      if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v63, 0x5Cu, v62))
      {
        if (v58)
        {
          md::AccessibilityHelper::adjustedSampledColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v366, v56, v371, 1u, v61);
        }

        else
        {
          md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)92,(gss::PropertyID)489>(v366, v56, v371, v62, 1u, v67, v68);
        }

        v338 = *v366;
      }

      else
      {
        v338 = v342;
      }

      v69 = a9[12];
      v70 = v69;
      v71 = *(*v371 + 24);
      if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v71, 0x14Cu, v69))
      {
        if (v58)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v366, v71, 332, 1u, fminf(fmaxf(v69, 0.0), 23.0));
        }

        else
        {
          if (v70 >= 0x17)
          {
            v75 = 23;
          }

          else
          {
            v75 = v70;
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v366, v71, 332, v75, 1u, 0, v72, v73);
        }

        v74 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v366)), vdupq_n_s32(0x37800080u));
      }

      else
      {
        v74 = v338;
      }

      v340 = v74;
    }

    else
    {
      v342 = 0uLL;
      v344 = 0uLL;
      v338 = 0uLL;
      v340 = 0uLL;
    }

    v353[1] = *(a9 + 52) + LOBYTE(v386[0]);
    v354 = v40[10] + LOBYTE(v386[0]);
    if (v371[32] == 1)
    {
      (*(**v371 + 56))(*v371);
    }

    if (*&v371[24])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[24]);
    }

    if (*&v371[8])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[8]);
    }

    v76 = *(a9 + 10);
    v77 = [v76 sourceTexture];
    if (v77)
    {
      v78 = v77;
    }

    else
    {
      v78 = v349;
    }

    v341 = v78;

    v79 = *(a9 + 10);
    v80 = [v79 targetTexture];
    if (v80)
    {
      v81 = v80;
    }

    else
    {
      v81 = v349;
    }

    v337 = v81;

    v82 = *(a9 + 10);
    v83 = [v82 sourceRoofTexture];
    if (v83)
    {
      v84 = v83;
    }

    else
    {
      v84 = v78;
    }

    v343 = v84;

    v85 = *(a9 + 10);
    v86 = [v85 targetRoofTexture];
    if (v86)
    {
      v87 = v86;
    }

    else
    {
      v87 = v81;
    }

    v339 = v87;

    v356 = 1065353216;
    v88 = v342.f32[3] >= 1.0 && (v351 != 1 || v338.f32[3] >= 1.0);
    v352 = v88;
    v89 = *(a9 + 10);
    md::PolygonRenderResources::worldTransformForPolygonGroup(v371, v89, a9[11]);
    v348[0] = *v371;
    v348[1] = *&v371[16];
    v348[2] = *&v371[32];
    v348[3] = *&v371[48];

    v90 = *(a9 + 10);
    v91 = (*(*v335 + 40))(v335, v90);

    v92 = md::PolygonViewConstantsFrameCache::pop((a4 + 30));
    v94 = *v92;
    v93 = v92[1];
    if (v93)
    {
      atomic_fetch_add_explicit((v93 + 8), 1uLL, memory_order_relaxed);
    }

    v95 = *(&v345 + 1);
    *&v345 = v94;
    *(&v345 + 1) = v93;
    if (v95)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v95);
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v386, *(a9 + 1), 0);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v366, v345, 1);
    v96 = v387;
    v97 = *&v366[40];
    *(*&v366[40] + 64) = *(v387 + 64);
    if (v91)
    {
      v98 = *a9;
      v99 = *(a9 + 10);
      (*(*v335 + 48))(v371, v335, a9 + 3, v96, v98 + 96, v99, a9 + 13, a9[11]);
      v100 = 0;
      v101 = *&v366[40];
      do
      {
        *(v101 + v100) = *&v371[v100];
        v100 += 4;
      }

      while (v100 != 64);
    }

    else
    {
      for (i = 0; i != 64; i += 4)
      {
        *(v97 + i) = *(v96 + i);
      }
    }

    ggl::BufferMemory::~BufferMemory(v366);
    v104 = *(a9 + 3);
    v103 = *(a9 + 4);
    if (v103)
    {
      atomic_fetch_add_explicit((v103 + 8), 1uLL, memory_order_relaxed);
    }

    v105 = *(&v347 + 1);
    *&v347 = v104;
    *(&v347 + 1) = v103;
    if (v105)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v105);
    }

    if (*(&v355 + 1) > 0.00000011921)
    {
      v106 = md::PolygonViewConstantsFrameCache::pop((a4 + 30));
      v107 = *v106;
      v108 = v106[1];
      if (v108)
      {
        atomic_fetch_add_explicit((v108 + 8), 1uLL, memory_order_relaxed);
      }

      v109 = v78;
      v110 = *(&v346 + 1);
      *&v346 = v107;
      *(&v346 + 1) = v108;
      if (v110)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v110);
        v107 = v346;
      }

      ggl::DataAccess<ggl::Tile::View>::DataAccess(v363, v107, 1);
      v111 = v387;
      v112 = v364;
      *(v364 + 64) = *(v387 + 64);
      if (v91)
      {
        v113 = *(a9 + 10);
        (*(*v335 + 48))(v366, a9[11]);
        memset(v382, 0, sizeof(v382));
        v381 = 0u;
        v380 = 1065353216;
        v382[0] = 1065353216;
        v385 = 1065353216;
        v383 = 0;
        v382[5] = 1065353216;
        v384 = HIDWORD(v355);
        gm::operator*<float,4,4,4>(v371, v366, &v380);
        v114 = 0;
        v115 = v364;
        v37 = v333;
        v78 = v109;
        do
        {
          *(v115 + v114) = *&v371[v114];
          v114 += 16;
        }

        while (v114 != 64);
      }

      else
      {
        memset(&v366[20], 0, 36);
        *&v366[4] = 0u;
        *v366 = 1065353216;
        *&v366[20] = 1065353216;
        *&v366[40] = 1065353216;
        *&v367 = HIDWORD(v355) | 0x3F80000000000000;
        gm::operator*<float,4,4,4>(v371, v111, v366);
        for (j = 0; j != 64; j += 16)
        {
          *(v112 + j) = *&v371[j];
        }

        v37 = v333;
        v78 = v109;
      }

      ggl::BufferMemory::~BufferMemory(v363);
    }

    ggl::BufferMemory::~BufferMemory(v386);

    v117 = v78;
    v118 = v335;
    v334 = md::_commandBufferForConfiguration(v335, &v345, v37, *(a9 + 96));
    if (v334)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v379, a11);
      v119 = *(a9 + 96);
      v120 = v335[8];
      v121 = (*(*v335 + 88))(v335, *(a9 + 10));
      if (v120)
      {
        v122 = 0;
      }

      else
      {
        v122 = v119;
      }

      if ((v121 & 0x100) != 0)
      {
        v123 = v121;
      }

      else
      {
        v123 = v122;
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v380, v379);
      LOBYTE(v363[0]) = 0;
      a4 = v336;
      if (v351 == 1)
      {
        v124 = md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(v336, a9, &v345, &v341, &v337, v363);
      }

      else
      {
        v124 = md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(v336[22], a9, &v345, &v341, v363);
      }

      v125 = v124;
      *v366 = a9;
      *&v366[8] = v336;
      *&v366[16] = &v380;
      *&v366[24] = v334;
      if (v124)
      {
        v126 = v353[1];
        v127 = LOBYTE(v363[0]);
        if (LOBYTE(v363[0]) == 1)
        {
          if (v353[0] == 1)
          {
            v128 = md::PolygonRenderResources::renderStateForBlendingEqual(v336, v353[1], v354);
          }

          else
          {
            v128 = v336 + 136;
            v126 = v354;
          }
        }

        else
        {
          v128 = v336[(v335[8] | (2 * v353[0]) | (16 * v123)) + 34];
        }

        v129 = ggl::RenderItem::RenderItem(v371, "");
        *&v371[40] = v126;
        *&v371[24] = v128;
        *&v371[32] = v125;
        v130 = *(*a9 + 392);
        v131 = v130 ? v130 + 168 : 0;
        *&v371[48] = (*(*v335 + 32))(v335, v352, v355, 0, v131, 1, v117 != v349, *v359, v129, 0);
        md::generateStrokeRenderItem<md::VenueTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v366, v371);
        if (v127)
        {
          if (v353[0])
          {
            v132 = v353[1];
          }

          else
          {
            v132 = 0;
          }

          v133 = md::PolygonRenderResources::renderStateForBlendingEqual(v336, v354, v132);
          if (v351 == 1)
          {
            v134 = md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(v336, a9, &v345, &v341, &v337, v363);
            v135 = v336[8];
            v136 = v336[9];
          }

          else
          {
            v134 = md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(v336[22], a9, &v345, &v341, v363);
            v135 = v336[2];
            v136 = v336[3];
          }

          v386[0] = v135;
          v386[1] = v136;
          if (v136)
          {
            atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v134, v386);
            std::__shared_weak_count::__release_shared[abi:nn200100](v136);
          }

          else
          {
            ggl::PipelineSetup::setState(v134, v386);
          }

          *&v371[40] = v354;
          *&v371[24] = v133;
          *&v371[32] = v134;
          md::generateStrokeRenderItem<md::VenueTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v366, v371);
        }
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v380);
      v137 = *v359;
      if (v359[1] != *v359)
      {
        v138 = 0;
        v139 = 0;
        v140 = fminf(fmaxf(a9[12], 0.0), 23.0);
        while (1)
        {
          v141 = *&v137[2 * v138];
          v142 = v137[2 * v138 + 1];
          if (v142)
          {
            atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v371, v141, v142);
          if (v142)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v142);
          }

          if (v371[32] == 1)
          {
            break;
          }

          v149 = 0;
LABEL_200:
          if (*&v371[24])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[24]);
          }

          if (*&v371[8])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v371[8]);
          }

          if (v149)
          {
            std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v386, v379);
            v365 = 0;
            a4 = v336;
            if (v351 == 1)
            {
              v153 = md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(v336, a9, &v345, &v341, &v337, &v365);
            }

            else
            {
              v153 = md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(v336[22], a9, &v345, &v341, &v365);
            }

            v154 = v153;
            *v366 = a9;
            *&v366[8] = v336;
            *&v366[16] = v386;
            *&v366[24] = v334;
            if (v153)
            {
              v155 = v353[1];
              v156 = v365;
              if (v365 == 1)
              {
                if (v353[0] == 1)
                {
                  v157 = md::PolygonRenderResources::renderStateForBlendingEqual(v336, v353[1], v354);
                }

                else
                {
                  v157 = v336 + 136;
                  v155 = v354;
                }
              }

              else
              {
                v157 = v336[(v335[8] | (2 * v353[0]) | (16 * v123)) + 34];
              }

              v158 = ggl::RenderItem::RenderItem(v371, "");
              *&v371[40] = v155;
              *&v371[24] = v157;
              *&v371[32] = v154;
              v159 = *(*a9 + 392);
              v160 = v159 ? v159 + 168 : 0;
              *&v371[48] = (*(*v335 + 32))(v335, v352, v355, 0, v160, 2, v341 != v349, *v359, v158, 0);
              md::generateStrokeRenderItem<md::VenueTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v366, v371);
              if (v156)
              {
                if (v353[0])
                {
                  v161 = v353[1];
                }

                else
                {
                  v161 = 0;
                }

                v162 = md::PolygonRenderResources::renderStateForBlendingEqual(v336, v354, v161);
                if (v351 == 1)
                {
                  v163 = md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(v336, a9, &v345, &v341, &v337, &v365);
                  v164 = v336[8];
                  v165 = v336[9];
                }

                else
                {
                  v163 = md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(v336[22], a9, &v345, &v341, &v365);
                  v164 = v336[2];
                  v165 = v336[3];
                }

                v363[0] = v164;
                v363[1] = v165;
                if (v165)
                {
                  atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
                  ggl::PipelineSetup::setState(v163, v363);
                  std::__shared_weak_count::__release_shared[abi:nn200100](v165);
                }

                else
                {
                  ggl::PipelineSetup::setState(v163, v363);
                }

                *&v371[40] = v354;
                *&v371[24] = v162;
                *&v371[32] = v163;
                md::generateStrokeRenderItem<md::VenueTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(v366, v371);
              }
            }

            std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v386);
            goto LABEL_233;
          }

          v138 = ++v139;
          v137 = *v359;
          a4 = v336;
          if (v139 >= ((v359[1] - *v359) >> 4))
          {
            goto LABEL_233;
          }
        }

        v143 = *(*v371 + 24);
        v144 = *v143;
        if (!*v143 || (v145 = *v144, LODWORD(v144) = *v144 == 1.0, *(v143 + 10) != 1) || (v145 != 0.0 ? (v146 = v145 == 1.0) : (v146 = 1), v146))
        {
          v147 = *(v143 + v144 + 11);
          if (v147 != 2)
          {
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v371 + 24), 404, v147, 0, v140);
LABEL_198:
            v149 = v148 > 0.0;
            (*(**v371 + 56))(*v371);
            goto LABEL_200;
          }

          v145 = 0.0;
        }

        v366[0] = 1;
        LOBYTE(v386[0]) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v143, 404, 0, v366, v140);
        v151 = v150;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v143, 404, 1, v386, v140);
        v148 = v151 + ((v152 - v151) * v145);
        goto LABEL_198;
      }

LABEL_233:
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v379);
      if (v360)
      {
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v378, a11);
        v166 = *(a9 + 96);
        v167 = v335[8];
        v168 = (*(*v335 + 88))(v335, *(a9 + 10));
        if ((v166 & (v167 == 0)) != 0)
        {
          v169 = 2;
        }

        else
        {
          v169 = 0;
        }

        if ((v168 & 0x100) != 0)
        {
          v169 = v168;
        }

        if (v352)
        {
          v170 = 0;
        }

        else
        {
          v170 = 8;
        }

        v171 = v336 + 34;
        v172 = v336[(v170 | (2 * v353[0]) | (16 * v169) | v352) + 34];
        if (v351 == 1)
        {
          v173 = md::animatingPolygonFillPipelineSetup<md::VenueTileData>(v336, a9, &v345, &v345, &v341, &v337, 0);
        }

        else
        {
          v173 = md::polygonFillPipelineSetup<md::VenueTileData>(v336, a9, &v345, &v345, &v341, 0);
        }

        v174 = v173;
        a4 = v336;
        if (v173)
        {
          v175 = ggl::RenderItem::RenderItem(v366, "");
          v176 = *(*a9 + 392);
          if (v176)
          {
            v177 = v176 + 168;
          }

          else
          {
            v177 = 0;
          }

          v178 = (*(*v335 + 32))(v335, v352, v355, 0, v177, 0, v341 != v349, *v359, v175, 0);
          *&v366[40] = v353[1];
          *&v366[24] = v172;
          *&v366[32] = v174;
          *&v366[48] = v178;
          v179 = [*(a9 + 10) fillMeshes];
          v180 = *v179;
          v181 = *(v179 + 8);
          if (*v179 != v181)
          {
            v182 = 0;
            do
            {
              v183 = *(a9 + 10);
              v184 = *(a9 + 25);
              std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v380, v378);
              v185 = [v183 commitRangesToFillRenderItemBatcher:a4 + 123 forMeshAtIndex:v182 cullingMask:v184 featureIdPredicate:&v380];
              std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v380);

              v186 = *v180;
              *v371 = &off_1F2A5D8B8;
              *&v371[8] = *&v366[8];
              *&v371[24] = *&v366[24];
              *&v371[40] = *&v366[40];
              v374 = v370;
              v373 = v369;
              v372 = v368;
              *&v371[56] = v367;
              v187 = a4[134];
              v188 = v187[1];
              if (v188 == a4[135])
              {
                v187 = *v187;
                if (!v187)
                {
                  v187 = malloc_type_malloc(120 * v188 + 16, 0x1020040EDED9539uLL);
                  *v187 = 0;
                  v187[1] = 0;
                  *a4[134] = v187;
                }

                a4[134] = v187;
                v188 = v187[1];
              }

              v189 = &v187[15 * v188];
              v187[1] = v188 + 1;
              v189[2] = &off_1F2A5D8B8;
              v190 = *&v371[8];
              v191 = *&v371[24];
              *(v189 + 7) = *&v371[40];
              *(v189 + 5) = v191;
              *(v189 + 3) = v190;
              v192 = *&v371[56];
              v193 = v372;
              v194 = v373;
              *(v189 + 15) = v374;
              *(v189 + 13) = v194;
              *(v189 + 11) = v193;
              *(v189 + 9) = v192;
              ggl::RenderItem::~RenderItem(v371);
              v189[10] = v186;
              v195 = *v185;
              v189[13] = *v185;
              v189[14] = (v185[1] - v195) >> 4;
              ggl::CommandBuffer::pushRenderItem(v334, (v189 + 2));
              ++v182;
              v180 += 2;
              a4 = v336;
            }

            while (v180 != v181);
          }

          v118 = v335;
          v171 = v336 + 34;
        }

        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v378);
        if (*(&v355 + 1) > 0.00000011921)
        {
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v377, a11);
          if (v352)
          {
            v196 = 0;
          }

          else
          {
            v196 = 8;
          }

          v197 = v171[((v196 | (2 * v353[0])) | 0xFFFFFFE1) & 0x2BLL];
          if (v351 == 1)
          {
            v198 = md::animatingPolygonFillPipelineSetup<md::VenueTileData>(a4, a9, &v346, &v345, &v341, &v337, 1);
          }

          else
          {
            v198 = md::polygonFillPipelineSetup<md::VenueTileData>(a4, a9, &v346, &v345, &v341, 1);
          }

          v199 = v198;
          v200 = ggl::RenderItem::RenderItem(v366, "");
          *&v366[40] = v353[1];
          *&v366[24] = v197;
          *&v366[32] = v199;
          v201 = *(*a9 + 392);
          if (v201)
          {
            v202 = v201 + 168;
          }

          else
          {
            v202 = 0;
          }

          *&v366[48] = (*(*v118 + 32))(v118, v352, v355, 1, v202, 0, v341 != v349, *v359, v200, 0);
          v203 = [*(a9 + 10) fillMeshes];
          v204 = *v203;
          v205 = *(v203 + 8);
          if (*v203 != v205)
          {
            v206 = 0;
            do
            {
              v207 = *(a9 + 10);
              v208 = *(a9 + 25);
              std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v380, v377);
              v209 = [v207 commitRangesToFillRenderItemBatcher:a4 + 123 forMeshAtIndex:v206 cullingMask:v208 featureIdPredicate:&v380];
              std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v380);

              v210 = *v204;
              *v371 = &off_1F2A5D8B8;
              *&v371[8] = *&v366[8];
              *&v371[24] = *&v366[24];
              *&v371[40] = *&v366[40];
              v374 = v370;
              v373 = v369;
              v372 = v368;
              *&v371[56] = v367;
              v211 = a4[134];
              v212 = v211[1];
              if (v212 == a4[135])
              {
                v211 = *v211;
                if (!v211)
                {
                  v211 = malloc_type_malloc(120 * v212 + 16, 0x1020040EDED9539uLL);
                  *v211 = 0;
                  v211[1] = 0;
                  *a4[134] = v211;
                }

                a4[134] = v211;
                v212 = v211[1];
              }

              v213 = &v211[15 * v212];
              v211[1] = v212 + 1;
              v213[2] = &off_1F2A5D8B8;
              v214 = *&v371[8];
              v215 = *&v371[24];
              *(v213 + 7) = *&v371[40];
              *(v213 + 5) = v215;
              *(v213 + 3) = v214;
              v216 = *&v371[56];
              v217 = v372;
              v218 = v373;
              *(v213 + 15) = v374;
              *(v213 + 13) = v218;
              *(v213 + 11) = v217;
              *(v213 + 9) = v216;
              ggl::RenderItem::~RenderItem(v371);
              v213[10] = v210;
              v219 = *v209;
              v213[13] = *v209;
              v213[14] = (v209[1] - v219) >> 4;
              ggl::CommandBuffer::pushRenderItem(v334, (v213 + 2));
              ++v206;
              v204 += 2;
              a4 = v336;
            }

            while (v204 != v205);
          }

          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v377);
          v118 = v335;
        }
      }
    }

    if (a6 && v118[52] == 1 && md::_maskTarget(&v345) == 1)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v376, a11);
      v220 = ggl::FragmentedPool<ggl::PolygonStrokeMask::MeshPipelineSetup>::pop(a4[23]);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v220 + 17), *(v220 + 29), v345, *(&v345 + 1));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v220 + 17), *(v220 + 29), v347, *(&v347 + 1));
      **(v220 + 21) = v350;
      v330 = v220;
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v371, *(*(v220 + 17) + 32));
      v221 = 0;
      v222 = *&v371[40];
      do
      {
        *(v222 + v221) = *(v348 + v221);
        v221 += 4;
      }

      while (v221 != 64);
      *(v222 + 320) = 0;
      *(v222 + 328) = 0;
      *(v222 + 464) = a9[14];
      v223 = 1.0 / *(a9 + 8);
      *(v222 + 468) = v223;
      *(v222 + 472) = v357;
      v224 = *v359;
      if (v359[1] != *v359)
      {
        v225 = 0;
        v226 = 0;
        v227 = 1.0;
        v228 = -0.5;
        v229 = 0.5;
        v230 = -1.0;
        v231 = 1.75;
        while (1)
        {
          v232 = *&v224[2 * v225];
          v233 = v224[2 * v225 + 1];
          if (v233)
          {
            atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v366, v232, v233);
          if (v233)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v233);
          }

          if (v366[32] == 1)
          {
            break;
          }

          v241 = 0.0;
          v243 = v358;
LABEL_323:
          if (v243 == 1)
          {
            v260 = 0.0;
          }

          else
          {
            v260 = v227;
          }

          if (v243 == 1)
          {
            v261 = v230;
          }

          else
          {
            v261 = 0.0;
          }

          if (v243 == 2)
          {
            v260 = v229;
            v261 = v228;
          }

          v262 = *&v371[40];
          v263 = v241 * v231 * *(a9 + 8);
          v264 = *&v371[40] + 4 * v225;
          *(v264 + 336) = v260 * v263;
          *(v264 + 400) = v261 * v263;
          *(v262 + 476) = 0;
          v265 = v262 + 16 * v225;
          *(v265 + 64) = 0;
          *(v265 + 72) = 0;
          if (v366[32] == 1)
          {
            (*(**v366 + 56))(*v366);
          }

          if (*&v366[24])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v366[24]);
          }

          if (*&v366[8])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*&v366[8]);
          }

          v225 = ++v226;
          v224 = *v359;
          if (v226 >= ((v359[1] - *v359) >> 4))
          {
            goto LABEL_347;
          }
        }

        v234 = *(*v366 + 24);
        v235 = fminf(fmaxf(a9[12], 0.0), 23.0);
        v236 = *v234;
        if (!*v234 || (v237 = *v236, LODWORD(v236) = *v236 == v227, *(v234 + 10) != 1) || (v237 != 0.0 ? (v238 = v237 == v227) : (v238 = 1), v238))
        {
          v239 = *(v234 + v236 + 11);
          if (v239 != 2)
          {
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(*v366 + 24), 466, v239, 0, v235);
            v241 = v240;
LABEL_296:
            v242 = a9[12];
            v243 = v358;
            v244 = *(*v366 + 24);
            if (v242 >= 0x17)
            {
              v245 = 23;
            }

            else
            {
              v245 = v242;
            }

            v246 = *v244;
            if (*v244 && (v247 = *v246, LODWORD(v246) = *v246 == v227, *(v244 + 10) == 1) && (v247 != 0.0 ? (v248 = v247 == v227) : (v248 = 1), !v248) || (v249 = *(v244 + v246 + 11), v249 == 2))
            {
              v250 = *(v244 + 16);
              if (v250)
              {
                v251 = *(v250 + 72);
                if (v251)
                {
                  v252 = *v251 + 120 * *(v251 + v245 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v252, 0x1D3u) != *(v252 + 12))
                  {
                    goto LABEL_321;
                  }
                }

                if (*(v244 + 56))
                {
                  v253 = *(v244 + 48);
                  v254 = 8 * *(v244 + 56);
                  while (1)
                  {
                    v255 = *(*v253 + 72);
                    if (v255)
                    {
                      v256 = *v255 + 120 * *(v255 + v245 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v256, 0x1D3u) != *(v256 + 12))
                      {
                        goto LABEL_321;
                      }
                    }

                    v253 += 8;
                    v249 = 1;
                    v254 -= 8;
                    if (!v254)
                    {
                      goto LABEL_318;
                    }
                  }
                }
              }

              v249 = 1;
            }

LABEL_318:
            v257 = *(v244 + 16 * v249 + 16);
            if (!v257)
            {
LABEL_322:
              v118 = v335;
              a4 = v336;
              goto LABEL_323;
            }

            v258 = *(v257 + 72);
            if (!v258 || (v259 = *v258 + 120 * *(v258 + v245 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v259, 0x1D3u) == *(v259 + 12)))
            {
              v266 = v244 + 16 * v249;
              if (!*(v266 + 56))
              {
                goto LABEL_322;
              }

              v267 = *(v266 + 48);
              v268 = 8 * *(v266 + 56);
              while (1)
              {
                v269 = *(*v267 + 72);
                if (v269)
                {
                  v270 = *v269 + 120 * *(v269 + v245 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v270, 0x1D3u) != *(v270 + 12))
                  {
                    break;
                  }
                }

                v267 += 8;
                v268 -= 8;
                if (!v268)
                {
                  goto LABEL_322;
                }
              }
            }

LABEL_321:
            v243 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v244, 467, v245, 2, 0);
            goto LABEL_322;
          }

          v237 = 0.0;
        }

        LOBYTE(v380) = 1;
        LOBYTE(v386[0]) = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v234, 466, 0, &v380, v235);
        v272 = v271;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v234, 466, 1, v386, v235);
        v241 = v272 + ((v273 - v272) * v237);
        v231 = 1.75;
        v230 = -1.0;
        v229 = 0.5;
        v228 = -0.5;
        v227 = 1.0;
        goto LABEL_296;
      }

LABEL_347:
      ggl::BufferMemory::~BufferMemory(v371);
      v274 = a4;
      v275 = a4[((v118[8] | (2 * v353[0])) & 3) + 34];
      *&v276 = ggl::RenderItem::RenderItem(v366, "").u64[0];
      *&v366[40] = *(a9 + 52) + *(v274 + 912);
      *&v366[24] = v275;
      *&v366[32] = v330;
      *&v366[48] = 0;
      v277 = [*(a9 + 10) strokeMeshes];
      v278 = *v277;
      v279 = *(v277 + 8);
      a4 = v336;
      if (*v277 != v279)
      {
        v280 = 0;
        do
        {
          v281 = *(a9 + 10);
          v282 = *(a9 + 25);
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v380, v376);
          v283 = [v281 commitRangesToStrokeRenderItemBatcher:a4 + 123 forMeshAtIndex:v280 cullingMask:v282 featureIdPredicate:&v380];
          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v380);

          v284 = *v278;
          *v371 = &off_1F2A5D8B8;
          *&v371[8] = *&v366[8];
          *&v371[24] = *&v366[24];
          *&v371[40] = *&v366[40];
          v374 = v370;
          v373 = v369;
          v372 = v368;
          *&v371[56] = v367;
          v285 = a4[134];
          v286 = v285[1];
          if (v286 == a4[135])
          {
            v285 = *v285;
            if (!v285)
            {
              v285 = malloc_type_malloc(120 * v286 + 16, 0x1020040EDED9539uLL);
              *v285 = 0;
              v285[1] = 0;
              *a4[134] = v285;
            }

            a4[134] = v285;
            v286 = v285[1];
          }

          v287 = &v285[15 * v286];
          v285[1] = v286 + 1;
          v287[2] = &off_1F2A5D8B8;
          v288 = *&v371[8];
          v289 = *&v371[24];
          *(v287 + 7) = *&v371[40];
          *(v287 + 5) = v289;
          *(v287 + 3) = v288;
          v290 = *&v371[56];
          v291 = v372;
          v292 = v373;
          *(v287 + 15) = v374;
          *(v287 + 13) = v292;
          *(v287 + 11) = v291;
          *(v287 + 9) = v290;
          ggl::RenderItem::~RenderItem(v371);
          v287[10] = v284;
          v293 = *v283;
          v287[13] = *v283;
          v287[14] = (v283[1] - v293) >> 4;
          ggl::CommandBuffer::pushRenderItem(a6, (v287 + 2));
          ++v280;
          v278 += 2;
          a4 = v336;
        }

        while (v278 != v279);
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v376);
      v118 = v335;
    }

    if (v331 && v118[53] == 1 && v362 == 1)
    {
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v375, a11);
      v294 = ggl::FragmentedPool<ggl::HillshadeFillMask::CompressedMeshPipelineSetup>::pop(a4[24]);
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v294 + 17), *(v294 + 29), v345, *(&v345 + 1));
      ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v294 + 17), *(v294 + 29), v347, *(&v347 + 1));
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v371, *(*(v294 + 17) + 32));
      v295 = 0;
      v296 = *&v371[40];
      do
      {
        *(v296 + v295) = *(v348 + v295);
        v295 += 4;
      }

      while (v295 != 64);
      *(v296 + 64) = a9[14];
      v297 = *(a9 + 10);
      v298 = [v297 origin];
      *(*&v371[40] + 72) = *v298;

      v299 = *(a9 + 10);
      [v299 size];
      v300 = *&v371[40];
      *(*&v371[40] + 80) = v301;
      *(v300 + 84) = v302;

      ggl::BufferMemory::~BufferMemory(v371);
      v303 = a4[((v352 | (2 * v353[0])) & 3) + 34];
      v304 = ggl::RenderItem::RenderItem(v366, "");
      v305 = *(*a9 + 392);
      if (v305)
      {
        v306 = v305 + 168;
      }

      else
      {
        v306 = 0;
      }

      v307 = (*(*v335 + 32))(v335, 1, v355, 0, v306, 0, 0, *v359, v304, 0);
      *&v366[40] = v353[1];
      *&v366[24] = v303;
      *&v366[32] = v294;
      *&v366[48] = v307;
      v308 = [*(a9 + 10) fillMeshes];
      v309 = *v308;
      v310 = *(v308 + 8);
      if (*v308 != v310)
      {
        v311 = 0;
        do
        {
          v312 = *(a9 + 10);
          v313 = *(a9 + 25);
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](&v380, v375);
          v314 = [v312 commitRangesToFillRenderItemBatcher:a4 + 123 forMeshAtIndex:v311 cullingMask:v313 featureIdPredicate:&v380];
          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&v380);

          v315 = *v309;
          *v371 = &off_1F2A5D8B8;
          *&v371[8] = *&v366[8];
          *&v371[24] = *&v366[24];
          *&v371[40] = *&v366[40];
          v374 = v370;
          v373 = v369;
          v372 = v368;
          *&v371[56] = v367;
          v316 = a4[134];
          v317 = v316[1];
          if (v317 == a4[135])
          {
            v316 = *v316;
            if (!v316)
            {
              v316 = malloc_type_malloc(120 * v317 + 16, 0x1020040EDED9539uLL);
              *v316 = 0;
              v316[1] = 0;
              *a4[134] = v316;
            }

            a4[134] = v316;
            v317 = v316[1];
          }

          v318 = &v316[15 * v317];
          v316[1] = v317 + 1;
          v318[2] = &off_1F2A5D8B8;
          v319 = *&v371[8];
          v320 = *&v371[24];
          *(v318 + 7) = *&v371[40];
          *(v318 + 5) = v320;
          *(v318 + 3) = v319;
          v321 = *&v371[56];
          v322 = v372;
          v323 = v373;
          *(v318 + 15) = v374;
          *(v318 + 13) = v323;
          *(v318 + 11) = v322;
          *(v318 + 9) = v321;
          ggl::RenderItem::~RenderItem(v371);
          v318[10] = v315;
          v324 = *v314;
          v318[13] = *v314;
          v318[14] = (v314[1] - v324) >> 4;
          ggl::CommandBuffer::pushRenderItem(v334, (v318 + 2));
          ++v311;
          v309 += 2;
          a4 = v336;
        }

        while (v309 != v310);
      }

      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v375);
    }
  }

  if (*(&v347 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v347 + 1));
  }

  if (*(&v346 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v346 + 1));
  }

  if (*(&v345 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v345 + 1));
  }
}

void sub_1B329B32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36)
{
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v36 - 216);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](&STACK[0x308]);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a36);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  _Unwind_Resume(a1);
}

ggl::zone_mallocator *md::animatingPolygonFillPipelineSetup<md::VenueTileData>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v14 = ggl::FragmentedPool<ggl::PolygonAnimatableFill::CompressedMeshPipelineSetup>::pop(*(a1 + 224));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v14 + 17), *(v14 + 29), *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v14 + 17), *(v14 + 29), *(a4 + 32), *(a4 + 40));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v14 + 17), *(v14 + 29), *(a1 + 952), *(a1 + 960));
  v15 = 24;
  if (!a7)
  {
    v15 = 0;
  }

  **(v14 + 21) = *(a5 + v15);
  *(*(v14 + 21) + 8) = *(a6 + v15);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v33, *(*(v14 + 17) + 32));
  v16 = 0;
  v17 = v34;
  do
  {
    *(v17 + v16) = *(a4 + 48 + v16);
    v16 += 4;
  }

  while (v16 != 64);
  if (a7)
  {
    v18 = 32;
  }

  else
  {
    v18 = 8;
  }

  v19 = *(a5 + v18 + 12) * *(a4 + 144);
  v20 = *(a5 + v18);
  *(v17 + 72) = *(a5 + v18 + 8);
  *(v17 + 64) = v20;
  *(v17 + 76) = v19;
  v21 = *(a2 + 80);
  v22 = [v21 origin];
  *(v34 + 104) = *v22;

  v23 = *(a2 + 80);
  [v23 size];
  v24 = v34;
  *(v34 + 112) = v25;
  *(v24 + 116) = v26;

  v27 = *(a6 + v18 + 12) * *(a4 + 144);
  v28 = v34;
  v29 = *(a6 + v18 + 8);
  *(v34 + 80) = *(a6 + v18);
  *(v28 + 88) = v29;
  *(v28 + 92) = v27;
  v30 = v27 <= 0.0 && v19 <= 0.0;
  *(v28 + 96) = *(a2 + 56);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = v14;
  }

  ggl::BufferMemory::~BufferMemory(v33);
  return v31;
}

ggl::zone_mallocator *md::polygonFillPipelineSetup<md::VenueTileData>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = 216;
  if (*(a4 + 129))
  {
    v11 = 208;
  }

  v12 = ggl::FragmentedPool<ggl::PolygonFill::CompressedMeshPipelineSetup>::pop(*(a1 + v11));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v12 + 17), *(v12 + 29), *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v12 + 17), *(v12 + 29), *(a4 + 32), *(a4 + 40));
  v13 = 24;
  if (!a6)
  {
    v13 = 0;
  }

  **(v12 + 21) = *(a5 + v13);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v27, *(*(v12 + 17) + 32));
  v14 = 0;
  v15 = v28;
  do
  {
    *(v15 + v14) = *(a4 + 48 + v14);
    v14 += 4;
  }

  while (v14 != 64);
  v16 = 8;
  if (a6)
  {
    v16 = 32;
  }

  v17 = (a5 + v16);
  v18 = v17[3] * *(a4 + 144);
  v19 = *v17;
  *(v15 + 72) = v17[2];
  *(v15 + 64) = v19;
  *(v15 + 76) = v18;
  *(v15 + 80) = *(a2 + 56);
  v20 = *(a2 + 80);
  v21 = [v20 origin];
  *(v28 + 88) = *v21;

  v22 = *(a2 + 80);
  [v22 size];
  v23 = v28;
  *(v28 + 96) = v24;
  *(v23 + 100) = v25;

  if (v18 <= 0.0)
  {
    v12 = 0;
  }

  ggl::BufferMemory::~BufferMemory(v27);
  return v12;
}

ggl::zone_mallocator *md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, _BYTE *a6)
{
  v12 = ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>::pop(*(a1 + 200));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v12 + 17), *(v12 + 29), *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v12 + 17), *(v12 + 29), a3[4], a3[5]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v12 + 17), *(v12 + 29), *(a1 + 952), *(a1 + 960));
  **(v12 + 21) = a3[15];
  *(*(v12 + 21) + 8) = *a4;
  *(*(v12 + 21) + 16) = *a5;
  md::writeSourceConstants<md::VenueTileData,md::Stroke2StyleProperties>(a2, a3, *(*(v12 + 17) + 32), a6);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v15, *(*(v12 + 17) + 64));
  v13 = v16;
  *v16 = 0;
  v13[1] = 0;
  ggl::BufferMemory::~BufferMemory(v15);
  return v12;
}

ggl::zone_mallocator *md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke2StyleProperties>(ggl::zone_mallocator *a1, uint64_t a2, uint64_t *a3, void *a4, _BYTE *a5)
{
  v9 = ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>::pop(a1);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v9 + 17), *(v9 + 29), *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v9 + 17), *(v9 + 29), a3[4], a3[5]);
  **(v9 + 21) = a3[15];
  *(*(v9 + 21) + 8) = *a4;
  if (md::writeSourceConstants<md::VenueTileData,md::Stroke2StyleProperties>(a2, a3, *(*(v9 + 17) + 32), a5))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

ggl::zone_mallocator *md::generateStrokeRenderItem<md::VenueTileData,md::Stroke2StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  result = [*(*a1 + 80) strokeMeshes];
  v5 = *result;
  v23 = *(result + 1);
  if (*result != v23)
  {
    v6 = 0;
    do
    {
      v7 = *(*a1 + 80);
      v8 = a1[1];
      v9 = *(*a1 + 100);
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v32, a1[2]);
      v10 = [v7 commitRangesToStrokeRenderItemBatcher:v8 + 984 forMeshAtIndex:v6 cullingMask:v9 featureIdPredicate:v32];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v32);

      v11 = a1[3];
      v12 = a1[1];
      v13 = *v5;
      v24 = &off_1F2A5D8B8;
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
      v27 = *(a2 + 40);
      v31 = *(a2 + 104);
      v30 = *(a2 + 88);
      v29 = *(a2 + 72);
      v28 = *(a2 + 56);
      v14 = *(v12 + 1072);
      v15 = v14[1];
      if (v15 == *(v12 + 1080))
      {
        v14 = *v14;
        if (!v14)
        {
          v14 = malloc_type_malloc(120 * v15 + 16, 0x1020040EDED9539uLL);
          *v14 = 0;
          v14[1] = 0;
          **(v12 + 1072) = v14;
        }

        *(v12 + 1072) = v14;
        v15 = v14[1];
      }

      v16 = &v14[15 * v15];
      v14[1] = v15 + 1;
      v16[2] = &off_1F2A5D8B8;
      v17 = v25;
      v18 = v26;
      *(v16 + 7) = v27;
      *(v16 + 5) = v18;
      *(v16 + 3) = v17;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      *(v16 + 15) = v31;
      *(v16 + 13) = v21;
      *(v16 + 11) = v20;
      *(v16 + 9) = v19;
      ggl::RenderItem::~RenderItem(&v24);
      v16[10] = v13;
      v22 = (v10[1] - *v10) >> 4;
      v16[13] = *v10;
      v16[14] = v22;
      result = ggl::CommandBuffer::pushRenderItem(v11, (v16 + 2));
      ++v6;
      v5 += 2;
    }

    while (v5 != v23);
  }

  return result;
}

uint64_t md::writeSourceConstants<md::VenueTileData,md::Stroke2StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v109, a3);
  v6 = 0;
  v7 = v110;
  do
  {
    *(v7 + v6) = *(a2 + 48 + v6);
    v6 += 4;
  }

  while (v6 != 64);
  *(v7 + 320) = 0;
  *(v7 + 328) = 0;
  *(v7 + 464) = *(a1 + 56);
  v8 = 1.0 / *(a1 + 64);
  *(v7 + 468) = v8;
  *(v7 + 472) = *(a2 + 148);
  *a4 = 0;
  v9 = **(a2 + 160);
  if (*(*(a2 + 160) + 8) != v9)
  {
    v10 = 0;
    v103 = 0;
    v11 = 0;
    v101 = vdupq_n_s32(0x37800080u);
    while (1)
    {
      v12 = *(v9 + 16 * v10);
      v13 = *(v9 + 16 * v10 + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v105, v12, v13);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      v14 = 0.0;
      v15 = v108;
      if (v108 != 1)
      {
        v30 = 0;
        goto LABEL_53;
      }

      v16 = *(a1 + 48);
      v17 = v105[3];
      if (v16 >= 0x17)
      {
        v18 = 23;
      }

      else
      {
        v18 = v16;
      }

      v19 = *v17;
      if (*v17 && (v20 = *v19, LODWORD(v19) = *v19 == 1.0, *(v17 + 10) == 1) && (v20 != 0.0 ? (v21 = v20 == 1.0) : (v21 = 1), !v21) || (v22 = *(v17 + v19 + 11), v22 == 2))
      {
        v23 = *(v17 + 16);
        if (v23)
        {
          v24 = *(v23 + 72);
          if (v24)
          {
            v25 = *v24 + 120 * *(v24 + v18 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0x11Du) != *(v25 + 12))
            {
              goto LABEL_35;
            }
          }

          if (*(v17 + 56))
          {
            v26 = *(v17 + 48);
            v27 = 8 * *(v17 + 56);
            while (1)
            {
              v28 = *(*v26 + 72);
              if (v28)
              {
                v29 = *v28 + 120 * *(v28 + v18 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v29, 0x11Du) != *(v29 + 12))
                {
                  break;
                }
              }

              v26 += 8;
              v22 = 1;
              v27 -= 8;
              if (!v27)
              {
                goto LABEL_32;
              }
            }

LABEL_35:
            v30 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v17, 285, v18, 2u, 0);
            v15 = v108;
            if ((v108 & 1) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_44;
          }
        }

        v22 = 1;
      }

LABEL_32:
      v31 = *(v17 + 16 * v22 + 16);
      if (v31)
      {
        v32 = *(v31 + 72);
        if (v32)
        {
          v33 = *v32 + 120 * *(v32 + v18 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v33, 0x11Du) != *(v33 + 12))
          {
            goto LABEL_35;
          }
        }

        v34 = v17 + 16 * v22;
        if (*(v34 + 56))
        {
          v35 = *(v34 + 48);
          v36 = 8 * *(v34 + 56);
          while (1)
          {
            v37 = *(*v35 + 72);
            if (v37)
            {
              v38 = *v37 + 120 * *(v37 + v18 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0x11Du) != *(v38 + 12))
              {
                goto LABEL_35;
              }
            }

            v35 += 8;
            v30 = 1;
            v15 = 1;
            v36 -= 8;
            if (!v36)
            {
              goto LABEL_44;
            }
          }
        }
      }

      v30 = 1;
      v15 = 1;
LABEL_44:
      v39 = v105[3];
      v40 = fminf(fmaxf(*(a1 + 48), 0.0), 23.0);
      v41 = *v39;
      if (*v39)
      {
        v42 = *v41;
        LODWORD(v41) = *v41 == 1.0;
        if (*(v39 + 10) == 1 && v42 != 0.0 && v42 != 1.0)
        {
          goto LABEL_132;
        }
      }

      v44 = *(v39 + v41 + 11);
      if (v44 == 2)
      {
        v42 = 0.0;
LABEL_132:
        LOBYTE(v104) = 1;
        v111[0].i8[0] = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 404, 0, &v104, v40);
        v100 = v97;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v39, 404, 1, v111, v40);
        v14 = v100 + ((v98 - v100) * v42);
        goto LABEL_53;
      }

      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v105[3], 404, v44, 0, v40);
      v14 = v45;
LABEL_53:
      v46 = *(a1 + 64) * 1.75;
      if (!v30 || v14 >= 0.0001)
      {
        v50 = v46 * v14;
        if ((v15 & 1) == 0)
        {
          v65 = *(a2 + 152);
          if (v65 == 1)
          {
            v66 = 0.0;
          }

          else
          {
            v66 = 1.0;
          }

          if (v65 == 1)
          {
            v67 = -1.0;
          }

          else
          {
            v67 = 0.0;
          }

          if (v65 == 2)
          {
            v66 = 0.5;
            v67 = -0.5;
          }

          v68 = v110;
          v69 = v110 + 4 * v10;
          *(v69 + 336) = v66 * v50;
          *(v69 + 400) = v67 * v50;
          *(v68 + 476) = 0;
          v70 = v68 + 16 * v10;
          *(v70 + 64) = 0;
          *(v70 + 72) = 0;
          goto LABEL_123;
        }

        v51 = *(a1 + 48);
        v52 = v105[3];
        if (v51 >= 0x17)
        {
          v53 = 23;
        }

        else
        {
          v53 = v51;
        }

        v54 = *v52;
        if (*v52 && (v55 = *v54, LODWORD(v54) = *v54 == 1.0, *(v52 + 10) == 1) && (v55 != 0.0 ? (v56 = v55 == 1.0) : (v56 = 1), !v56) || (v57 = *(v52 + v54 + 11), v57 == 2))
        {
          v58 = *(v52 + 16);
          if (v58)
          {
            v59 = *(v58 + 72);
            if (v59)
            {
              v60 = *v59 + 120 * *(v59 + v53 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v60, 0x198u) != *(v60 + 12))
              {
                goto LABEL_97;
              }
            }

            if (*(v52 + 56))
            {
              v61 = *(v52 + 48);
              v62 = 8 * *(v52 + 56);
              while (1)
              {
                v63 = *(*v61 + 72);
                if (v63)
                {
                  v64 = *v63 + 120 * *(v63 + v53 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v64, 0x198u) != *(v64 + 12))
                  {
                    break;
                  }
                }

                v61 += 8;
                v57 = 1;
                v62 -= 8;
                if (!v62)
                {
                  goto LABEL_94;
                }
              }

LABEL_97:
              v78 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v52, 408, v53, 2, 0);
              v52 = v105[3];
              v79 = *(a1 + 48);
              if (v79 >= 0x17)
              {
                v53 = 23;
              }

              else
              {
                v53 = v79;
              }

              goto LABEL_106;
            }
          }

          v57 = 1;
        }

LABEL_94:
        v75 = *(v52 + 16 * v57 + 16);
        if (v75)
        {
          v76 = *(v75 + 72);
          if (v76)
          {
            v77 = *v76 + 120 * *(v76 + v53 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v77, 0x198u) != *(v77 + 12))
            {
              goto LABEL_97;
            }
          }

          v80 = v52 + 16 * v57;
          if (*(v80 + 56))
          {
            v81 = *(v80 + 48);
            v82 = 8 * *(v80 + 56);
            do
            {
              v83 = *(*v81 + 72);
              if (v83)
              {
                v84 = *v83 + 120 * *(v83 + v53 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v84, 0x198u) != *(v84 + 12))
                {
                  goto LABEL_97;
                }
              }

              v81 += 8;
              v82 -= 8;
            }

            while (v82);
          }
        }

        v78 = *(a2 + 152);
LABEL_106:
        v85 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v52, 420, v53, 2, 0);
        if (v78 == 1)
        {
          v86 = 0.0;
        }

        else
        {
          v86 = 1.0;
        }

        if (v78 == 1)
        {
          v87 = -1.0;
        }

        else
        {
          v87 = 0.0;
        }

        if (v78 == 2)
        {
          v86 = 0.5;
          v87 = -0.5;
        }

        v88 = v110;
        v89 = v110 + 4 * v10;
        *(v89 + 336) = v86 * v50;
        *(v89 + 400) = v87 * v50;
        *(v88 + 476) = v85 == 1;
        v90 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(407, 2u, v105[3]);
        v92.n128_u32[0] = *(a1 + 48);
        if (v90)
        {
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v111, v105[3], 403, 2u, fminf(fmaxf(v92.n128_f32[0], 0.0), 23.0));
        }

        else
        {
          if (v92.n128_f32[0] >= 0x17)
          {
            v93 = 23;
          }

          else
          {
            v93 = v92.n128_f32[0];
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v111, v105[3], 403, v93, 2u, 0, v92, v91);
        }

        v94 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v111[0])), v101);
        *&v104 = v94.i64[0];
        DWORD2(v104) = v94.i32[2];
        v95 = 0;
        v96 = v94.f32[3] * *(a2 + 144);
        *(&v104 + 3) = v96;
        do
        {
          *(&v104 + v95) = *(&v104 + v95) * v96;
          v95 += 4;
        }

        while (v95 != 12);
        *(v110 + 16 * v10 + 64) = v104;
        v103 |= *(&v104 + 3) > 0.001;
        *a4 |= *(&v104 + 3) < 1.0;
        goto LABEL_123;
      }

      v47 = v110;
      v48 = v110 + 4 * v10;
      v49 = v110 + 16 * v10;
      if (*(a1 + 120))
      {
        *(v48 + 336) = 0;
        *(v48 + 400) = 0;
        *(v49 + 64) = 0;
        *(v49 + 72) = 0;
      }

      else
      {
        v71 = v46;
        *(v48 + 336) = v71;
        *(v48 + 400) = 0;
        *(v49 + 64) = 0;
        *(v49 + 72) = 0;
        if (v108 == 1)
        {
          v72 = *(a1 + 48);
          if (v72 >= 0x17)
          {
            v73 = 23;
          }

          else
          {
            v73 = v72;
          }

          v74 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v105[3], 420, v73, 2, 0) == 1;
          *(v110 + 476) = v74;
          goto LABEL_123;
        }
      }

      *(v47 + 476) = 0;
LABEL_123:
      if (v108 == 1)
      {
        (*(*v105 + 7))(v105);
      }

      if (v107)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v107);
      }

      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v106);
      }

      v10 = ++v11;
      v9 = **(a2 + 160);
      if (v11 >= ((*(*(a2 + 160) + 8) - v9) >> 4))
      {
        goto LABEL_134;
      }
    }
  }

  v103 = 0;
LABEL_134:
  ggl::BufferMemory::~BufferMemory(v109);
  return v103 & 1;
}

void sub_1B329C618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, char a23)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(exception_object);
}

ggl::zone_mallocator *md::animatingPolygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6)
{
  v12 = ggl::FragmentedPool<ggl::PolygonAnimatableStroke::MeshPipelineSetup>::pop(*(a1 + 200));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v12 + 17), *(v12 + 29), *a3, *(a3 + 8));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v12 + 17), *(v12 + 29), *(a3 + 32), *(a3 + 40));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setGlyphOptionsConstantData(*(v12 + 17), *(v12 + 29), *(a1 + 952), *(a1 + 960));
  **(v12 + 21) = *(a3 + 120);
  *(*(v12 + 21) + 8) = *a4;
  *(*(v12 + 21) + 16) = *a5;
  v13 = md::writeSourceConstants<md::VenueTileData,md::Stroke1StyleProperties>(a2, a3, a4, *(*(v12 + 17) + 32), a6);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, *(*(v12 + 17) + 64));
  v14 = 0;
  v18 = *(a5 + 8);
  v15 = *(&v18 + 3) * *(a3 + 144);
  *(&v18 + 3) = v15;
  do
  {
    *&v19[v14 - 16] = *&v19[v14 - 16] * v15;
    v14 += 4;
  }

  while (v14 != 12);
  *v20 = v18;
  if (*(&v18 + 3) >= 0.0)
  {
    v16 = 1;
  }

  else
  {
    v16 = v13;
  }

  if (!v16)
  {
    v12 = 0;
  }

  ggl::BufferMemory::~BufferMemory(v19);
  return v12;
}

ggl::zone_mallocator *md::polygonStrokePipelineSetup<md::VenueTileData,md::Stroke1StyleProperties>(ggl::zone_mallocator *a1, uint64_t a2, uint64_t *a3, void *a4, _BYTE *a5)
{
  v9 = ggl::FragmentedPool<ggl::PolygonStroke::MeshPipelineSetup>::pop(a1);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v9 + 17), *(v9 + 29), *a3, a3[1]);
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v9 + 17), *(v9 + 29), a3[4], a3[5]);
  **(v9 + 21) = a3[15];
  *(*(v9 + 21) + 8) = *a4;
  if (md::writeSourceConstants<md::VenueTileData,md::Stroke1StyleProperties>(a2, a3, a4, *(*(v9 + 17) + 32), a5))
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

ggl::zone_mallocator *md::generateStrokeRenderItem<md::VenueTileData,md::Stroke1StyleProperties>(ggl::CommandBuffer *,md::PolygonRenderResources &,md::PolygonLayoutCharacteristics const&,md::PolygonGroupLayoutInfo<md::VenueTileData> const&,md::PolygonConfiguration const&,md::PolygonBlendingConfiguration const&,md::PolygonBlendingConfiguration const&,std::function<BOOL ()(unsigned long long)>,md::PolygonLayoutCharacteristics::StrokeState,md::PolygonRenderDepthType)::{lambda(ggl::RenderItem const&)#1}::operator()(void *a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  result = [*(*a1 + 80) strokeMeshes];
  v5 = *result;
  v23 = *(result + 1);
  if (*result != v23)
  {
    v6 = 0;
    do
    {
      v7 = *(*a1 + 80);
      v8 = a1[1];
      v9 = *(*a1 + 100);
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v32, a1[2]);
      v10 = [v7 commitRangesToStrokeRenderItemBatcher:v8 + 984 forMeshAtIndex:v6 cullingMask:v9 featureIdPredicate:v32];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v32);

      v11 = a1[3];
      v12 = a1[1];
      v13 = *v5;
      v24 = &off_1F2A5D8B8;
      v25 = *(a2 + 8);
      v26 = *(a2 + 24);
      v27 = *(a2 + 40);
      v31 = *(a2 + 104);
      v30 = *(a2 + 88);
      v29 = *(a2 + 72);
      v28 = *(a2 + 56);
      v14 = *(v12 + 1072);
      v15 = v14[1];
      if (v15 == *(v12 + 1080))
      {
        v14 = *v14;
        if (!v14)
        {
          v14 = malloc_type_malloc(120 * v15 + 16, 0x1020040EDED9539uLL);
          *v14 = 0;
          v14[1] = 0;
          **(v12 + 1072) = v14;
        }

        *(v12 + 1072) = v14;
        v15 = v14[1];
      }

      v16 = &v14[15 * v15];
      v14[1] = v15 + 1;
      v16[2] = &off_1F2A5D8B8;
      v17 = v25;
      v18 = v26;
      *(v16 + 7) = v27;
      *(v16 + 5) = v18;
      *(v16 + 3) = v17;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      *(v16 + 15) = v31;
      *(v16 + 13) = v21;
      *(v16 + 11) = v20;
      *(v16 + 9) = v19;
      ggl::RenderItem::~RenderItem(&v24);
      v16[10] = v13;
      v22 = (v10[1] - *v10) >> 4;
      v16[13] = *v10;
      v16[14] = v22;
      result = ggl::CommandBuffer::pushRenderItem(v11, (v16 + 2));
      ++v6;
      v5 += 2;
    }

    while (v5 != v23);
  }

  return result;
}

uint64_t md::writeSourceConstants<md::VenueTileData,md::Stroke1StyleProperties>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v112, a4);
  v8 = 0;
  v9 = v113;
  do
  {
    *(v9 + v8) = *(a2 + 48 + v8);
    v8 += 4;
  }

  while (v8 != 64);
  v10 = 0;
  v111 = *(a3 + 8);
  v11 = *(&v111 + 3) * *(a2 + 144);
  *(&v111 + 3) = v11;
  do
  {
    *&v112[v10 - 16] = *&v112[v10 - 16] * v11;
    v10 += 4;
  }

  while (v10 != 12);
  *(v9 + 320) = v111;
  *(v9 + 464) = *(a1 + 56);
  v12 = 1.0 / *(a1 + 64);
  *(v9 + 468) = v12;
  *(v9 + 472) = *(a2 + 148);
  *a5 = 0;
  v13 = **(a2 + 160);
  if (*(*(a2 + 160) + 8) != v13)
  {
    v14 = 0;
    v105 = 0;
    v15 = 0;
    v103 = vdupq_n_s32(0x37800080u);
    while (1)
    {
      v16 = *(v13 + 16 * v14);
      v17 = *(v13 + 16 * v14 + 8);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v107, v16, v17);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }

      v19 = 0.0;
      v20 = v110;
      if (v110 != 1)
      {
        v35 = 0;
        goto LABEL_55;
      }

      v21 = *(a1 + 48);
      v22 = v107[3];
      if (v21 >= 0x17)
      {
        v23 = 23;
      }

      else
      {
        v23 = v21;
      }

      v24 = *v22;
      if (*v22 && (v25 = *v24, LODWORD(v24) = *v24 == 1.0, *(v22 + 10) == 1) && (v25 != 0.0 ? (v26 = v25 == 1.0) : (v26 = 1), !v26) || (v27 = *(v22 + v24 + 11), v27 == 2))
      {
        v28 = *(v22 + 16);
        if (v28)
        {
          v29 = *(v28 + 72);
          if (v29)
          {
            v30 = *v29 + 120 * *(v29 + v23 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v30, 0x11Du) != *(v30 + 12))
            {
              goto LABEL_37;
            }
          }

          if (*(v22 + 56))
          {
            v31 = *(v22 + 48);
            v32 = 8 * *(v22 + 56);
            while (1)
            {
              v33 = *(*v31 + 72);
              if (v33)
              {
                v34 = *v33 + 120 * *(v33 + v23 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v34, 0x11Du) != *(v34 + 12))
                {
                  break;
                }
              }

              v31 += 8;
              v27 = 1;
              v32 -= 8;
              if (!v32)
              {
                goto LABEL_34;
              }
            }

LABEL_37:
            v35 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v22, 285, v23, 2u, 0);
            v20 = v110;
            if ((v110 & 1) == 0)
            {
              goto LABEL_55;
            }

            goto LABEL_46;
          }
        }

        v27 = 1;
      }

LABEL_34:
      v36 = *(v22 + 16 * v27 + 16);
      if (v36)
      {
        v37 = *(v36 + 72);
        if (v37)
        {
          v38 = *v37 + 120 * *(v37 + v23 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v38, 0x11Du) != *(v38 + 12))
          {
            goto LABEL_37;
          }
        }

        v39 = v22 + 16 * v27;
        if (*(v39 + 56))
        {
          v40 = *(v39 + 48);
          v41 = 8 * *(v39 + 56);
          while (1)
          {
            v42 = *(*v40 + 72);
            if (v42)
            {
              v43 = *v42 + 120 * *(v42 + v23 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v43, 0x11Du) != *(v43 + 12))
              {
                goto LABEL_37;
              }
            }

            v40 += 8;
            v35 = 1;
            v20 = 1;
            v41 -= 8;
            if (!v41)
            {
              goto LABEL_46;
            }
          }
        }
      }

      v35 = 1;
      v20 = 1;
LABEL_46:
      v44 = v107[3];
      v45 = fminf(fmaxf(*(a1 + 48), 0.0), 23.0);
      v46 = *v44;
      if (*v44)
      {
        v47 = *v46;
        LODWORD(v46) = *v46 == 1.0;
        if (*(v44 + 10) == 1 && v47 != 0.0 && v47 != 1.0)
        {
          goto LABEL_135;
        }
      }

      v49 = *(v44 + v46 + 11);
      if (v49 == 2)
      {
        v47 = 0.0;
LABEL_135:
        v106.n128_u8[0] = 1;
        v114[0].i8[0] = 1;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v44, 97, 0, &v106, v45);
        v102 = v100;
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v44, 97, 1, v114, v45);
        v19 = v102 + ((v18.n128_f32[0] - v102) * v47);
        goto LABEL_55;
      }

      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v107[3], 97, v49, 0, v45);
      v19 = v18.n128_f32[0];
LABEL_55:
      v18.n128_f64[0] = *(a1 + 64) * 1.75;
      if (!v35 || v19 >= 0.0001)
      {
        v18.n128_f64[0] = v18.n128_f64[0] * v19;
        v53 = v18.n128_f64[0];
        if (v20)
        {
          v54 = *(a1 + 48);
          v55 = v107[3];
          if (v54 >= 0x17)
          {
            v56 = 23;
          }

          else
          {
            v56 = v54;
          }

          v57 = *v55;
          if (*v55 && (v58 = *v57, LODWORD(v57) = *v57 == 1.0, *(v55 + 10) == 1) && (v58 != 0.0 ? (v59 = v58 == 1.0) : (v59 = 1), !v59) || (v60 = *(v55 + v57 + 11), v60 == 2))
          {
            v61 = *(v55 + 16);
            if (v61)
            {
              v62 = *(v61 + 72);
              if (v62)
              {
                v63 = *v62 + 120 * *(v62 + v56 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v63, 0x13Fu) != *(v63 + 12))
                {
                  goto LABEL_100;
                }
              }

              if (*(v55 + 56))
              {
                v64 = *(v55 + 48);
                v65 = 8 * *(v55 + 56);
                while (1)
                {
                  v66 = *(*v64 + 72);
                  if (v66)
                  {
                    v67 = *v66 + 120 * *(v66 + v56 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v67, 0x13Fu) != *(v67 + 12))
                    {
                      break;
                    }
                  }

                  v64 += 8;
                  v60 = 1;
                  v65 -= 8;
                  if (!v65)
                  {
                    goto LABEL_97;
                  }
                }

LABEL_100:
                v82 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v55, 319, v56, 2, 0);
                v55 = v107[3];
                v83 = *(a1 + 48);
                if (v83 >= 0x17)
                {
                  v56 = 23;
                }

                else
                {
                  v56 = v83;
                }

                goto LABEL_109;
              }
            }

            v60 = 1;
          }

LABEL_97:
          v79 = *(v55 + 16 * v60 + 16);
          if (v79)
          {
            v80 = *(v79 + 72);
            if (v80)
            {
              v81 = *v80 + 120 * *(v80 + v56 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v81, 0x13Fu) != *(v81 + 12))
              {
                goto LABEL_100;
              }
            }

            v84 = v55 + 16 * v60;
            if (*(v84 + 56))
            {
              v85 = *(v84 + 48);
              v86 = 8 * *(v84 + 56);
              do
              {
                v87 = *(*v85 + 72);
                if (v87)
                {
                  v88 = *v87 + 120 * *(v87 + v56 + 16);
                  if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v88, 0x13Fu) != *(v88 + 12))
                  {
                    goto LABEL_100;
                  }
                }

                v85 += 8;
                v86 -= 8;
              }

              while (v86);
            }
          }

          v82 = *(a2 + 152);
LABEL_109:
          v89 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v55, 420, v56, 2, 0);
          if (v82 == 1)
          {
            v90 = 0.0;
          }

          else
          {
            v90 = 1.0;
          }

          if (v82 == 1)
          {
            v91 = -1.0;
          }

          else
          {
            v91 = 0.0;
          }

          if (v82 == 2)
          {
            v90 = 0.5;
            v91 = -0.5;
          }

          v92 = v113;
          v93 = v113 + 4 * v14;
          *(v93 + 336) = v90 * v53;
          *(v93 + 400) = v91 * v53;
          *(v92 + 476) = v89 == 1;
          v94 = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(107, 2u, v107[3]);
          v96.n128_u32[0] = *(a1 + 48);
          if (v94)
          {
            gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v114, v107[3], 93, 2u, fminf(fmaxf(v96.n128_f32[0], 0.0), 23.0));
          }

          else
          {
            if (v96.n128_f32[0] >= 0x17)
            {
              v97 = 23;
            }

            else
            {
              v97 = v96.n128_f32[0];
            }

            gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v114, v107[3], 93, v97, 2u, 0, v96, v95);
          }

          v99 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v114[0])), v103);
          v106.n128_u64[0] = v99.i64[0];
          v106.n128_u32[2] = v99.u32[2];
          v98 = 0;
          v99.i32[0] = *(a2 + 144);
          v106.n128_f32[3] = v99.f32[3] * v99.f32[0];
          do
          {
            v106.n128_f32[v98] = v106.n128_f32[v98] * (v99.f32[3] * v99.f32[0]);
            ++v98;
          }

          while (v98 != 3);
          v18 = v106;
          *(v113 + 16 * v14 + 64) = v106;
          v18.n128_u32[0] = v106.n128_u32[3];
          v105 |= v106.n128_f32[3] > 0.001 || *(&v111 + 3) > 0.001;
          *a5 |= v106.n128_f32[3] < 1.0;
          goto LABEL_126;
        }

        v68 = *(a2 + 152);
        if (v68 == 1)
        {
          v69 = 0.0;
        }

        else
        {
          v69 = 1.0;
        }

        if (v68 == 1)
        {
          v70 = -1.0;
        }

        else
        {
          v70 = 0.0;
        }

        if (v68 == 2)
        {
          v69 = 0.5;
          v70 = -0.5;
        }

        v71 = v113;
        v72 = v113 + 4 * v14;
        *(v72 + 336) = v69 * v53;
        *(v72 + 400) = v70 * v53;
        *(v71 + 476) = 0;
        v73 = v71 + 16 * v14;
        *(v73 + 64) = 0;
        *(v73 + 72) = 0;
        goto LABEL_95;
      }

      v50 = v113;
      v51 = v113 + 4 * v14;
      v52 = v113 + 16 * v14;
      if ((*(a1 + 120) & 1) == 0)
      {
        v74 = 0;
        v75 = v18.n128_f64[0];
        *(v51 + 336) = v75;
        *(v51 + 400) = 0;
        *(v52 + 64) = 0;
        *(v52 + 72) = 0;
        if (v110 == 1)
        {
          v76 = *(a1 + 48);
          if (v76 >= 0x17)
          {
            v77 = 23;
          }

          else
          {
            v77 = v76;
          }

          v78 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v107[3], 420, v77, 2, 0);
          v50 = v113;
          v74 = v78 == 1;
        }

        *(v50 + 476) = v74;
LABEL_95:
        v18.n128_u32[0] = HIDWORD(v111);
        v105 |= *(&v111 + 3) > 0.001;
        goto LABEL_126;
      }

      *(v51 + 336) = 0;
      *(v51 + 400) = 0;
      *(v52 + 64) = 0;
      *(v52 + 72) = 0;
      *(v50 + 476) = 0;
LABEL_126:
      if (v110 == 1)
      {
        (*(*v107 + 7))(v107, v18);
      }

      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v109);
      }

      if (v108)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v108);
      }

      v14 = ++v15;
      v13 = **(a2 + 160);
      if (v15 >= ((*(*(a2 + 160) + 8) - v13) >> 4))
      {
        goto LABEL_137;
      }
    }
  }

  LOBYTE(v105) = 0;
LABEL_137:
  ggl::BufferMemory::~BufferMemory(v112);
  return v105 & 1;
}

void sub_1B329D3D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 != v3)
  {
    while (*v2 != *a2)
    {
      if (++v2 == v3)
      {
        v2 = *(a1 + 16);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A4E920;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1},std::allocator<void md::_layoutPolygonTiles<md::MapTileDataRenderable<md::VenueTileData>>(std::vector<md::MapTileDataRenderable<md::VenueTileData> *,std::allocator<md::MapTileDataRenderable<md::VenueTileData> *>> const&,md::LayoutContext const&,md::PolygonRenderResources &,std::array<ggl::CommandBuffer *,3ul> const&,ggl::CommandBuffer *,ggl::CommandBuffer *,geo::QuadTile const*,float,std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>,md::PolygonGroupLayoutInfo<md::MapTileDataRenderable<md::VenueTileData>::MapTileDataType> &,md::PolygonLayoutCharacteristics const&,BOOL)::{lambda(unsigned long long)#1}>,BOOL ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F2A4E920;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void md::PolygonLayoutCharacteristics::setSelectedFeatureIds(uint64_t a1, char **a2)
{
  v3 = *(a1 + 16);
  v2 = (a1 + 16);
  v2[1] = v3;
  std::vector<unsigned long long>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(v2, v3, *a2, a2[1], (a2[1] - *a2) >> 3);
}

unint64_t md::RasterTileResourceFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
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

uint64_t md::RasterTileResourceFetcher::createResource(uint64_t a1, void *a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6, char a7, id **a8)
{
  v16 = *a8;
  if (gdc::DataObject::length(*a8) == 4)
  {
    v17 = *gdc::DataObject::bytes(v16);
    if (v17 != 0x2000000)
    {
      v19 = bswap32(v17);
      v20 = *(a1 + 768);
      v21 = [MEMORY[0x1E69A2470] defaultConfiguration];
      v25 = [v20 dataForGenericTileType:v19 configuration:v21];

      v24 = 0;
      v22[1] = 0uLL;
      LOBYTE(v23) = 0;
      std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>(v22, &v25);
    }
  }

  return md::TiledGEOResourceFetcher::createResource(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1B329D9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t md::RasterTileResourceFetcher::tileSize(md::RasterTileResourceFetcher *this)
{
  v2 = *(this + 96);
  if (v2)
  {
    if ([v2 scale] == 2)
    {
      if (*(this + 2) > 1.0)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 1;
    }

    v4 = [*(this + 96) size];
    v5 = 0x20001000080uLL >> (16 * v4);
    if (v4 >= 3)
    {
      LOWORD(v5) = 0;
    }

    v6 = ((v5 & 0x380) / v3) | 0x100000000;
  }

  else
  {
    v6 = 0;
  }

  if ((*(*this + 144))(this) == 1 && *(this + 2) <= 1.0)
  {
    v8 = vcvts_n_f32_u32(v6, 1uLL);
    if (HIDWORD(v6))
    {
      return v8 | 0x100000000;
    }

    else
    {
      return 0x100000100;
    }
  }

  else if (HIDWORD(v6))
  {
    return v6 | 0x100000000;
  }

  else
  {
    return 0x100000200;
  }
}

void md::RasterTileResourceFetcher::~RasterTileResourceFetcher(md::RasterTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::RasterTileResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4EA68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B329E118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B329E24C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B329E32C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

double std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,md::ARCameraPanEvent,md::ARCameraRotateEvent> &&>(void **a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  v2[1] = *(a2 + 8);
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::ARCameraPanEvent,md::ARCameraRotateEvent>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,md::ARCameraPanEvent,md::ARCameraRotateEvent> &&>(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void sub_1B329F7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_1B329F890(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__split_buffer<md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo,std::allocator<md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo> &>::__split_buffer(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *a1 = 0;
  a1[1] = 24 * a3;
  a1[2] = 24 * a3;
  a1[3] = 0;
  return a1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *,false>(double *a1, double *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 3);
  v10 = a2 - 6;
  v11 = a2 - 9;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * (a2 - v12);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        result.n128_f64[0] = *(a2 - 2);
        if (result.n128_f64[0] >= v12[1])
        {
          return result;
        }

LABEL_111:
        v193 = *(v12 + 2);
        v168 = *v12;
        v90 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v90;
        result = v168;
        *(a2 - 8) = v193;
LABEL_112:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = v12[4];
      v92 = v12[7];
      if (v91 >= v12[1])
      {
        if (v92 < v91)
        {
          v138 = *(v12 + 5);
          result = *(v12 + 3);
          *(v12 + 3) = *(v12 + 3);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 3) = result;
          *(v12 + 64) = v138;
          if (v12[4] < v12[1])
          {
            v196 = *(v12 + 2);
            v171 = *v12;
            *v12 = *(v12 + 3);
            *(v12 + 16) = *(v12 + 40);
            result.n128_u64[1] = v171.n128_u64[1];
            *(v12 + 3) = v171;
            *(v12 + 40) = v196;
          }
        }
      }

      else if (v92 >= v91)
      {
        v198 = *(v12 + 2);
        v173 = *v12;
        *v12 = *(v12 + 3);
        *(v12 + 16) = *(v12 + 40);
        *(v12 + 3) = v173;
        *(v12 + 40) = v198;
        if (v92 < v12[4])
        {
          v146 = *(v12 + 5);
          result = *(v12 + 3);
          *(v12 + 3) = *(v12 + 3);
          *(v12 + 40) = *(v12 + 64);
          *(v12 + 3) = result;
          *(v12 + 64) = v146;
        }
      }

      else
      {
        v194 = *(v12 + 2);
        v169 = *v12;
        *v12 = *(v12 + 3);
        *(v12 + 16) = *(v12 + 64);
        result.n128_u64[1] = v169.n128_u64[1];
        *(v12 + 3) = v169;
        *(v12 + 64) = v194;
      }

      result.n128_f64[0] = *(a2 - 2);
      if (result.n128_f64[0] >= v12[7])
      {
        return result;
      }

      result = *(v12 + 6);
      v147 = *(v12 + 8);
      v148 = *(a2 - 8);
      *(v12 + 3) = *v9;
      *(v12 + 64) = v148;
      *(a2 - 8) = v147;
      *v9 = result;
      result.n128_f64[0] = v12[7];
      if (result.n128_f64[0] >= v12[4])
      {
        return result;
      }

      v149 = *(v12 + 5);
      result = *(v12 + 3);
      *(v12 + 3) = *(v12 + 3);
      *(v12 + 40) = *(v12 + 64);
      *(v12 + 3) = result;
      *(v12 + 64) = v149;
LABEL_187:
      result.n128_f64[0] = v12[4];
      if (result.n128_f64[0] < v12[1])
      {
        v199 = *(v12 + 2);
        v174 = *v12;
        *v12 = *(v12 + 3);
        *(v12 + 16) = *(v12 + 40);
        result = v174;
        *(v12 + 3) = v174;
        *(v12 + 40) = v199;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *,0>(v12, (v12 + 3), v12 + 3, (v12 + 9), (a2 - 3), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v93 = v12 + 3;
      v95 = v12 == a2 || v93 == a2;
      if (a4)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = v12;
          do
          {
            v98 = v93;
            result.n128_f64[0] = v97[4];
            if (result.n128_f64[0] < v97[1])
            {
              v99 = *v93;
              v100 = *(v97 + 40);
              v101 = v96;
              while (1)
              {
                v102 = v12 + v101;
                *(v102 + 24) = *(v12 + v101);
                v102[40] = *(v12 + v101 + 16);
                if (!v101)
                {
                  break;
                }

                v101 -= 24;
                if (result.n128_f64[0] >= *(v102 - 2))
                {
                  v103 = v12 + v101 + 24;
                  goto LABEL_131;
                }
              }

              v103 = v12;
LABEL_131:
              *v103 = v99;
              *(v103 + 8) = result.n128_u64[0];
              *(v103 + 16) = v100;
            }

            v93 = v98 + 3;
            v96 += 24;
            v97 = v98;
          }

          while (v98 + 3 != a2);
        }
      }

      else if (!v95)
      {
        do
        {
          v139 = v93;
          result.n128_f64[0] = a1[4];
          if (result.n128_f64[0] < a1[1])
          {
            v140 = *v93;
            v141 = *(a1 + 5);
            v142 = v139;
            do
            {
              *v142 = *(v142 - 3);
              *(v142 + 16) = *(v142 - 8);
              v143 = *(v142 - 5);
              v142 -= 3;
            }

            while (result.n128_f64[0] < v143);
            *v142 = v140;
            v142[1] = result.n128_f64[0];
            *(v142 + 16) = v141;
          }

          v93 = v139 + 3;
          a1 = v139;
        }

        while (v139 + 3 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v104 = (v14 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v12[3 * v107];
            if (2 * v106 + 2 < v14 && v108[1] < v108[4])
            {
              v108 += 3;
              v107 = 2 * v106 + 2;
            }

            v109 = &v12[3 * v106];
            v110 = v109[1];
            if (v108[1] >= v110)
            {
              v111 = *v109;
              v112 = *(v109 + 16);
              do
              {
                v113 = v109;
                v109 = v108;
                v114 = *v108;
                *(v113 + 16) = *(v108 + 16);
                *v113 = v114;
                if (v104 < v107)
                {
                  break;
                }

                v115 = 2 * v107;
                v107 = (2 * v107) | 1;
                v108 = &v12[3 * v107];
                v116 = v115 + 2;
                if (v116 < v14 && v108[1] < v108[4])
                {
                  v108 += 3;
                  v107 = v116;
                }
              }

              while (v108[1] >= v110);
              *v109 = v111;
              v109[1] = v110;
              *(v109 + 16) = v112;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        v117 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v118 = 0;
          v195 = *(v12 + 2);
          v170 = *v12;
          v119 = v12;
          do
          {
            v120 = &v119[3 * v118];
            v121 = (v120 + 3);
            v122 = (2 * v118) | 1;
            v118 = 2 * v118 + 2;
            if (v118 >= v117)
            {
              v118 = v122;
            }

            else
            {
              v123 = v120[4];
              v124 = v120[7];
              v125 = (v120 + 6);
              if (v123 >= v124)
              {
                v118 = v122;
              }

              else
              {
                v121 = v125;
              }
            }

            v126 = *v121;
            *(v119 + 16) = v121[1].n128_u8[0];
            *v119 = v126;
            v119 = v121;
          }

          while (v118 <= ((v117 - 2) >> 1));
          a2 -= 3;
          if (v121 == a2)
          {
            result = v170;
            v121[1].n128_u8[0] = v195;
            *v121 = v170;
          }

          else
          {
            v127 = *a2;
            v121[1].n128_u8[0] = *(a2 + 16);
            *v121 = v127;
            result = v170;
            *(a2 + 16) = v195;
            *a2 = v170;
            v128 = v121 - v12 + 24;
            if (v128 >= 25)
            {
              v129 = (-2 - 0x5555555555555555 * (v128 >> 3)) >> 1;
              v130 = &v12[3 * v129];
              result.n128_u64[0] = v121->n128_u64[1];
              if (v130[1] < result.n128_f64[0])
              {
                v131 = v121->n128_u64[0];
                v132 = v121[1].n128_i8[0];
                do
                {
                  v133 = v121;
                  v121 = v130;
                  v134 = *v130;
                  v133[1].n128_u8[0] = *(v130 + 16);
                  *v133 = v134;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = &v12[3 * v129];
                }

                while (v130[1] < result.n128_f64[0]);
                v121->n128_u64[0] = v131;
                v121->n128_u64[1] = result.n128_u64[0];
                v121[1].n128_u8[0] = v132;
              }
            }
          }
        }

        while (v117-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v12[3 * (v14 >> 1)];
    v17 = *(a2 - 2);
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_f64[1];
      if (v18 >= v12[1])
      {
        if (v17 < v18)
        {
          v177 = v16[1].n128_u64[0];
          v152 = *v16;
          v22 = *v9;
          v16[1].n128_u8[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v177;
          *v9 = v152;
          if (v16->n128_f64[1] < v12[1])
          {
            v178 = *(v12 + 2);
            v153 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u8[0];
            *v12 = v23;
            v16[1].n128_u8[0] = v178;
            *v16 = v153;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v175 = *(v12 + 2);
          v150 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v181 = *(v12 + 2);
        v156 = *v12;
        v24 = *v16;
        *(v12 + 16) = v16[1].n128_u8[0];
        *v12 = v24;
        v16[1].n128_u8[0] = v181;
        *v16 = v156;
        if (*(a2 - 2) < v16->n128_f64[1])
        {
          v175 = v16[1].n128_u64[0];
          v150 = *v16;
          v25 = *v9;
          v16[1].n128_u8[0] = *(a2 - 8);
          *v16 = v25;
LABEL_26:
          *(a2 - 8) = v175;
          *v9 = v150;
        }
      }

      v26 = &v12[3 * v15];
      v27 = (v26 - 3);
      v28 = *(v26 - 2);
      v29 = *(a2 - 5);
      if (v28 >= v12[4])
      {
        if (v29 < v28)
        {
          v182 = *(v26 - 1);
          v157 = *v27;
          v33 = *v10;
          *(v26 - 8) = *(a2 - 32);
          *v27 = v33;
          *(a2 - 32) = v182;
          *v10 = v157;
          if (*(v26 - 2) < v12[4])
          {
            v34 = *(v12 + 3);
            v35 = *(v12 + 5);
            v36 = v27[1].n128_i8[0];
            *(v12 + 3) = *v27;
            *(v12 + 40) = v36;
            v27[1].n128_u8[0] = v35;
            *v27 = v34;
          }
        }
      }

      else
      {
        if (v29 < v28)
        {
          v30 = *(v12 + 3);
          v31 = *(v12 + 5);
          v32 = *(a2 - 32);
          *(v12 + 3) = *v10;
          *(v12 + 40) = v32;
          *(a2 - 32) = v31;
          goto LABEL_38;
        }

        v38 = *(v12 + 3);
        v39 = *(v12 + 5);
        v40 = v27[1].n128_i8[0];
        *(v12 + 3) = *v27;
        *(v12 + 40) = v40;
        v27[1].n128_u8[0] = v39;
        *v27 = v38;
        if (*(a2 - 5) < v27->n128_f64[1])
        {
          v184 = v27[1].n128_i64[0];
          v159 = *v27;
          v41 = *v10;
          v27[1].n128_u8[0] = *(a2 - 32);
          *v27 = v41;
          v30 = v159;
          *(a2 - 32) = v184;
LABEL_38:
          *v10 = v30;
        }
      }

      v42 = &v12[3 * v15];
      v43 = v42[4];
      v44 = *(a2 - 8);
      if (v43 >= v12[7])
      {
        if (v44 < v43)
        {
          v185 = *(v42 + 5);
          v160 = *(v42 + 3);
          v48 = *v11;
          *(v42 + 40) = *(a2 - 56);
          *(v42 + 3) = v48;
          *(a2 - 56) = v185;
          *v11 = v160;
          if (v42[4] < v12[7])
          {
            v49 = *(v12 + 3);
            v50 = *(v12 + 8);
            v51 = *(v42 + 40);
            *(v12 + 3) = *(v42 + 3);
            *(v12 + 64) = v51;
            *(v42 + 40) = v50;
            *(v42 + 3) = v49;
          }
        }
      }

      else
      {
        if (v44 < v43)
        {
          v45 = *(v12 + 3);
          v46 = *(v12 + 8);
          v47 = *(a2 - 56);
          *(v12 + 3) = *v11;
          *(v12 + 64) = v47;
          *(a2 - 56) = v46;
          goto LABEL_47;
        }

        v52 = *(v12 + 3);
        v53 = *(v12 + 8);
        v54 = *(v42 + 40);
        *(v12 + 3) = *(v42 + 3);
        *(v12 + 64) = v54;
        *(v42 + 40) = v53;
        *(v42 + 3) = v52;
        if (*(a2 - 8) < v42[4])
        {
          v186 = *(v42 + 5);
          v161 = *(v42 + 3);
          v55 = *v11;
          *(v42 + 40) = *(a2 - 56);
          *(v42 + 3) = v55;
          v45 = v161;
          *(a2 - 56) = v186;
LABEL_47:
          *v11 = v45;
        }
      }

      v56 = v16->n128_f64[1];
      v57 = v42[4];
      if (v56 >= v27->n128_f64[1])
      {
        if (v57 < v56)
        {
          v188 = v16[1].n128_u64[0];
          v163 = *v16;
          *v16 = *(v42 + 3);
          v16[1].n128_u8[0] = *(v42 + 40);
          *(v42 + 40) = v188;
          *(v42 + 3) = v163;
          if (v16->n128_f64[1] < v27->n128_f64[1])
          {
            v189 = v27[1].n128_i64[0];
            v164 = *v27;
            *v27 = *v16;
            v27[1].n128_u8[0] = v16[1].n128_u8[0];
            v16[1].n128_u8[0] = v189;
            *v16 = v164;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          v187 = v27[1].n128_u64[0];
          v162 = *v27;
          *v27 = *(v42 + 3);
          v27[1].n128_u8[0] = *(v42 + 40);
          goto LABEL_56;
        }

        v190 = v27[1].n128_i64[0];
        v165 = *v27;
        *v27 = *v16;
        v27[1].n128_u8[0] = v16[1].n128_u8[0];
        v16[1].n128_u8[0] = v190;
        *v16 = v165;
        if (v42[4] < v16->n128_f64[1])
        {
          v187 = v16[1].n128_u64[0];
          v162 = *v16;
          *v16 = *(v42 + 3);
          v16[1].n128_u8[0] = *(v42 + 40);
LABEL_56:
          *(v42 + 40) = v187;
          *(v42 + 3) = v162;
        }
      }

      v191 = *(v12 + 2);
      v166 = *v12;
      result = *v16;
      *(v12 + 16) = v16[1].n128_u8[0];
      *v12 = result;
      result.n128_u64[1] = v166.n128_u64[1];
      v16[1].n128_u8[0] = v191;
      *v16 = v166;
      goto LABEL_58;
    }

    v20 = v12[1];
    if (v20 >= v16->n128_f64[1])
    {
      if (v17 < v20)
      {
        v179 = *(v12 + 2);
        v154 = *v12;
        result = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = result;
        result.n128_u64[1] = v154.n128_u64[1];
        *(a2 - 8) = v179;
        *v9 = v154;
        if (v12[1] < v16->n128_f64[1])
        {
          v180 = v16[1].n128_u64[0];
          v155 = *v16;
          result = *v12;
          v16[1].n128_u8[0] = *(v12 + 16);
          *v16 = result;
          result.n128_u64[1] = v155.n128_u64[1];
          *(v12 + 16) = v180;
          *v12 = v155;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v20)
    {
      v176 = v16[1].n128_u64[0];
      v151 = *v16;
      v21 = *v9;
      v16[1].n128_u8[0] = *(a2 - 8);
      *v16 = v21;
LABEL_35:
      result.n128_u64[1] = v151.n128_u64[1];
      *(a2 - 8) = v176;
      *v9 = v151;
      goto LABEL_58;
    }

    v183 = v16[1].n128_u64[0];
    v158 = *v16;
    result = *v12;
    v16[1].n128_u8[0] = *(v12 + 16);
    *v16 = result;
    result.n128_u64[1] = v158.n128_u64[1];
    *(v12 + 16) = v183;
    *v12 = v158;
    if (*(a2 - 2) < v12[1])
    {
      v176 = *(v12 + 2);
      v151 = *v12;
      v37 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v37;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_f64[0] = v12[1];
LABEL_61:
      v58 = *v12;
      v59 = *(v12 + 2);
      v60 = v12;
      do
      {
        v61 = v60;
        v60 += 3;
      }

      while (v61[4] < result.n128_f64[0]);
      v62 = a2;
      if (v61 == v12)
      {
        v65 = a2;
        while (v60 < v65)
        {
          v63 = v65 - 24;
          v66 = *(v65 - 16);
          v65 -= 24;
          if (v66 < result.n128_f64[0])
          {
            goto LABEL_71;
          }
        }

        v63 = v65;
      }

      else
      {
        do
        {
          v63 = v62 - 24;
          v64 = *(v62 - 16);
          v62 -= 24;
        }

        while (v64 >= result.n128_f64[0]);
      }

LABEL_71:
      v12 = v60;
      if (v60 < v63)
      {
        v67 = v63;
        do
        {
          v68 = *v12;
          v69 = *(v12 + 2);
          v70 = *(v67 + 16);
          *v12 = *v67;
          *(v12 + 16) = v70;
          *(v67 + 16) = v69;
          *v67 = v68;
          do
          {
            v71 = v12[4];
            v12 += 3;
          }

          while (v71 < result.n128_f64[0]);
          do
          {
            v72 = *(v67 - 16);
            v67 -= 24;
          }

          while (v72 >= result.n128_f64[0]);
        }

        while (v12 < v67);
      }

      if (v12 - 3 != a1)
      {
        v73 = *(v12 - 3);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v73;
      }

      *(v12 - 3) = v58;
      *(v12 - 2) = result.n128_f64[0];
      *(v12 - 8) = v59;
      if (v60 < v63)
      {
        goto LABEL_82;
      }

      v74 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *>(a1, v12 - 3, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *>(v12, a2, v75))
      {
        a2 = v12 - 3;
        if (!v74)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v74)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *,false>(a1, (v12 - 3), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      result.n128_f64[0] = v12[1];
      if (*(v12 - 2) < result.n128_f64[0])
      {
        goto LABEL_61;
      }

      if (result.n128_f64[0] >= *(a2 - 2))
      {
        v78 = (v12 + 3);
        do
        {
          v12 = v78;
          if (v78 >= a2)
          {
            break;
          }

          v79 = *(v78 + 8);
          v78 += 24;
        }

        while (result.n128_f64[0] >= v79);
      }

      else
      {
        v76 = v12;
        do
        {
          v12 = v76 + 3;
          v77 = v76[4];
          v76 += 3;
        }

        while (result.n128_f64[0] >= v77);
      }

      v80 = a2;
      if (v12 < a2)
      {
        v81 = a2;
        do
        {
          v80 = v81 - 24;
          v82 = *(v81 - 16);
          v81 -= 24;
        }

        while (result.n128_f64[0] < v82);
      }

      v83 = *a1;
      v84 = *(a1 + 2);
      while (v12 < v80)
      {
        v192 = *(v12 + 2);
        v167 = *v12;
        v85 = *v80;
        *(v12 + 16) = *(v80 + 16);
        *v12 = v85;
        *(v80 + 16) = v192;
        *v80 = v167;
        do
        {
          v86 = v12[4];
          v12 += 3;
        }

        while (result.n128_f64[0] >= v86);
        do
        {
          v87 = *(v80 - 16);
          v80 -= 24;
        }

        while (result.n128_f64[0] < v87);
      }

      if (v12 - 3 != a1)
      {
        v88 = *(v12 - 3);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 3) = v83;
      *(v12 - 2) = result.n128_f64[0];
      *(v12 - 8) = v84;
    }
  }

  result.n128_f64[0] = v12[4];
  v89 = *(a2 - 2);
  if (result.n128_f64[0] >= v12[1])
  {
    if (v89 >= result.n128_f64[0])
    {
      return result;
    }

    result = *(v12 + 3);
    v136 = *(v12 + 5);
    v137 = *(a2 - 8);
    *(v12 + 3) = *v9;
    *(v12 + 40) = v137;
    *(a2 - 8) = v136;
    *v9 = result;
    goto LABEL_187;
  }

  if (v89 < result.n128_f64[0])
  {
    goto LABEL_111;
  }

  v197 = *(v12 + 2);
  v172 = *v12;
  *v12 = *(v12 + 3);
  *(v12 + 16) = *(v12 + 40);
  result.n128_u64[1] = v172.n128_u64[1];
  *(v12 + 3) = v172;
  *(v12 + 40) = v197;
  result.n128_f64[0] = *(a2 - 2);
  if (result.n128_f64[0] < v12[4])
  {
    result = *(v12 + 3);
    v144 = *(v12 + 5);
    v145 = *(a2 - 8);
    *(v12 + 3) = *v9;
    *(v12 + 40) = v145;
    *(a2 - 8) = v144;
    goto LABEL_112;
  }

  return result;
}

void sub_1B32A0948(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<md::MuninJunctionCrossStreet *,std::shared_ptr<md::MuninJunctionElement>::__shared_ptr_default_delete<md::MuninJunctionElement,md::MuninJunctionCrossStreet>,std::allocator<md::MuninJunctionCrossStreet>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MuninJunctionCrossStreet *,std::shared_ptr<md::MuninJunctionElement>::__shared_ptr_default_delete<md::MuninJunctionElement,md::MuninJunctionCrossStreet>,std::allocator<md::MuninJunctionCrossStreet>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f64[1];
  v7 = a3->n128_f64[1];
  if (v6 >= a1->n128_f64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      v10 = a2[1].n128_u64[0];
      v11 = a3[1].n128_u8[0];
      *a2 = *a3;
      a2[1].n128_u8[0] = v11;
      a3[1].n128_u8[0] = v10;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        result = *a1;
        v12 = a1[1].n128_u64[0];
        v13 = a2[1].n128_u8[0];
        *a1 = *a2;
        a1[1].n128_u8[0] = v13;
        a2[1].n128_u8[0] = v12;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = a1[1].n128_u64[0];
      v9 = a3[1].n128_u8[0];
      *a1 = *a3;
      a1[1].n128_u8[0] = v9;
LABEL_9:
      a3[1].n128_u8[0] = v8;
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    v14 = a1[1].n128_u64[0];
    v15 = a2[1].n128_u8[0];
    *a1 = *a2;
    a1[1].n128_u8[0] = v15;
    a2[1].n128_u8[0] = v14;
    *a2 = result;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      v8 = a2[1].n128_u64[0];
      v16 = a3[1].n128_u8[0];
      *a2 = *a3;
      a2[1].n128_u8[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[1] < a3->n128_f64[1])
  {
    result = *a3;
    v17 = a3[1].n128_u64[0];
    v18 = a4[1].n128_u8[0];
    *a3 = *a4;
    a3[1].n128_u8[0] = v18;
    a4[1].n128_u8[0] = v17;
    *a4 = result;
    if (a3->n128_f64[1] < a2->n128_f64[1])
    {
      result = *a2;
      v19 = a2[1].n128_u64[0];
      v20 = a3[1].n128_u8[0];
      *a2 = *a3;
      a2[1].n128_u8[0] = v20;
      a3[1].n128_u8[0] = v19;
      *a3 = result;
      if (a2->n128_f64[1] < a1->n128_f64[1])
      {
        result = *a1;
        v21 = a1[1].n128_u64[0];
        v22 = a2[1].n128_u8[0];
        *a1 = *a2;
        a1[1].n128_u8[0] = v22;
        a2[1].n128_u8[0] = v21;
        *a2 = result;
      }
    }
  }

  result.n128_u64[0] = a5->n128_u64[1];
  if (result.n128_f64[0] < a4->n128_f64[1])
  {
    result = *a4;
    v23 = a4[1].n128_u64[0];
    v24 = a5[1].n128_u8[0];
    *a4 = *a5;
    a4[1].n128_u8[0] = v24;
    a5[1].n128_u8[0] = v23;
    *a5 = result;
    result.n128_u64[0] = a4->n128_u64[1];
    if (result.n128_f64[0] < a3->n128_f64[1])
    {
      result = *a3;
      v25 = a3[1].n128_u64[0];
      v26 = a4[1].n128_u8[0];
      *a3 = *a4;
      a3[1].n128_u8[0] = v26;
      a4[1].n128_u8[0] = v25;
      *a4 = result;
      result.n128_u64[0] = a3->n128_u64[1];
      if (result.n128_f64[0] < a2->n128_f64[1])
      {
        result = *a2;
        v27 = a2[1].n128_u64[0];
        v28 = a3[1].n128_u8[0];
        *a2 = *a3;
        a2[1].n128_u8[0] = v28;
        a3[1].n128_u8[0] = v27;
        *a3 = result;
        result.n128_u64[0] = a2->n128_u64[1];
        if (result.n128_f64[0] < a1->n128_f64[1])
        {
          result = *a1;
          v29 = a1[1].n128_u64[0];
          v30 = a2[1].n128_u8[0];
          *a1 = *a2;
          a1[1].n128_u8[0] = v30;
          a2[1].n128_u8[0] = v29;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *>(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 3);
      v8 = *(a1 + 32);
      v9 = *(a2 - 2);
      if (v8 < *(a1 + 8))
      {
        if (v9 >= v8)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v36;
          *(a1 + 40) = v35;
          if (*(a2 - 2) >= *(a1 + 32))
          {
            return 1;
          }

          v10 = *(a1 + 24);
          v11 = *(a1 + 40);
          v37 = *(a2 - 8);
          *(a1 + 24) = *v7;
          *(a1 + 40) = v37;
        }

        else
        {
          v10 = *a1;
          v11 = *(a1 + 16);
          v12 = *(a2 - 8);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *(a2 - 8) = v11;
        *v7 = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v24 = *(a1 + 24);
      v25 = *(a1 + 40);
      v26 = *(a2 - 8);
      *(a1 + 24) = *v7;
      *(a1 + 40) = v26;
      *(a2 - 8) = v25;
      *v7 = v24;
LABEL_50:
      if (*(a1 + 32) < *(a1 + 8))
      {
        v57 = *(a1 + 16);
        v58 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v58;
        *(a1 + 40) = v57;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::$_0 &,md::MuninJunctionFeature::setupCrossStreetLabeling(md::MuninRoadLabelingContext const&)::RoadEdgeInfo *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 3), a3);
      return 1;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 8);
    v21 = *(a1 + 56);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v32;
        *(a1 + 64) = v31;
        if (*(a1 + 32) < v20)
        {
          v33 = *(a1 + 16);
          v34 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v34;
          *(a1 + 40) = v33;
        }
      }

      goto LABEL_47;
    }

    if (v21 >= v19)
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v50;
      *(a1 + 40) = v49;
      if (v21 >= *(a1 + 32))
      {
        goto LABEL_47;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *(a1 + 48);
      *(a1 + 16) = *(a1 + 64);
    }

    *(a1 + 48) = v23;
    *(a1 + 64) = v22;
LABEL_47:
    if (*(a2 - 2) >= *(a1 + 56))
    {
      return 1;
    }

    v51 = a2 - 3;
    v52 = *(a1 + 48);
    v53 = *(a1 + 64);
    v54 = *(a2 - 8);
    *(a1 + 48) = *(a2 - 3);
    *(a1 + 64) = v54;
    *(v51 + 16) = v53;
    *v51 = v52;
    if (*(a1 + 56) >= *(a1 + 32))
    {
      return 1;
    }

    v55 = *(a1 + 40);
    v56 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v56;
    *(a1 + 64) = v55;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 2) < *(a1 + 8))
    {
      v4 = *a1;
      v5 = *(a1 + 16);
      v6 = *(a2 - 8);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v6;
      *(a2 - 8) = v5;
      *(a2 - 3) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 32);
  v15 = *(a1 + 8);
  v16 = *(a1 + 56);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v28;
      *(a1 + 64) = v27;
      if (*(a1 + 32) < v15)
      {
        v29 = *(a1 + 16);
        v30 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (v16 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 40);
      v18 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *a1 = *v13;
      *(a1 + 16) = *(a1 + 64);
    }

    *v13 = v18;
    *(a1 + 64) = v17;
  }

LABEL_33:
  v40 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = v40[1];
    if (v43 < v13[1])
    {
      v44 = *v40;
      v45 = *(v40 + 16);
      v46 = v41;
      while (1)
      {
        v47 = a1 + v46;
        *(v47 + 72) = *(a1 + v46 + 48);
        *(v47 + 88) = *(a1 + v46 + 64);
        if (v46 == -48)
        {
          break;
        }

        v46 -= 24;
        if (v43 >= *(v47 + 32))
        {
          v48 = a1 + v46 + 72;
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v44;
      *(v48 + 8) = v43;
      *(v48 + 16) = v45;
      if (++v42 == 8)
      {
        return v40 + 3 == a2;
      }
    }

    v13 = v40;
    v41 += 24;
    v40 += 3;
    if (v40 == a2)
    {
      return 1;
    }
  }
}