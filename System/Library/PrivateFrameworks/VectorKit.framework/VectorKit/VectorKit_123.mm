__n128 std::__function::__func<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4,std::allocator<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A30310;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3,std::allocator<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  std::string::basic_string[abi:nn200100]<0>(&__str, "main");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (**(a1 + 8) == 1)
  {
    md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v4 + 112));
    md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v4 + 120));
  }

  if (*(v4 + 168) == 1)
  {
    v6 = *(v4 + 128);
    *(a2 + 104) = v6;
    if ((*(a2 + 196) & 1) == 0)
    {
      result = *(v6 + 88);
      *(a2 + 192) = *(v6 + 104);
      *(a2 + 176) = result;
      *(a2 + 196) = 1;
    }

    *(a2 + 168) = *(v4 + 136);
  }

  else
  {
    v7 = *(a1 + 24);
    v8 = *v7;
    *(a2 + 120) = v7[1];
    *(a2 + 104) = v8;
    result = v7[2];
    v9 = v7[3];
    v10 = v7[4];
    *(a2 + 184) = v7[5];
    *(a2 + 168) = v10;
    *(a2 + 152) = v9;
    *(a2 + 136) = result;
  }

  return result;
}

__n128 std::__function::__func<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3,std::allocator<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_3>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A302C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  std::to_string(&v16, **(a1 + 8));
  v5 = std::string::insert(&v16, 0, "rig_pass_", 9uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v17, "_downsample_pass_", 0x11uLL);
  v8 = v7->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, **(a1 + 16));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v18, p_p, size);
  v12 = v11->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  md::FrameGraphPassBuilder::addAttachmentInput(a2, **(a1 + 24));
  v14 = *(*(v4 + 88) + 8 * **(a1 + 40));
  *(a2 + 104) = v14;
  if ((*(a2 + 196) & 1) == 0)
  {
    result = *(v14 + 88);
    *(a2 + 192) = *(v14 + 104);
    *(a2 + 176) = result;
    *(a2 + 196) = 1;
  }

  return result;
}

void sub_1B30EAF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1,std::allocator<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_1>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A30238;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2,std::allocator<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "composite");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v3[4])
  {
    v4 = 0;
    v5 = 16;
    do
    {
      md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3[5] + 8 * v4));
      md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3[8] + 8 * v4++));
      md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v3[11] + v5));
      v5 += 24;
    }

    while (v4 < v3[4]);
  }

  v6 = v3[14];
  *(a2 + 104) = v6;
  if ((*(a2 + 196) & 1) == 0)
  {
    v7 = *(v6 + 88);
    *(a2 + 192) = *(v6 + 104);
    *(a2 + 176) = v7;
    *(a2 + 196) = 1;
  }

  *(a2 + 168) = v3[15];
}

uint64_t std::__function::__func<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2,std::allocator<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_2>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A30280;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  std::to_string(&v9, **(a1 + 8));
  v5 = std::string::insert(&v9, 0, "rig_pass", 8uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  __str.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&__str.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v7 = *(*(v4 + 40) + 8 * **(a1 + 8));
  *(a2 + 104) = v7;
  if ((*(a2 + 196) & 1) == 0)
  {
    v8 = *(v7 + 88);
    *(a2 + 192) = *(v7 + 104);
    *(a2 + 176) = v8;
    *(a2 + 196) = 1;
  }

  *(a2 + 168) = *(*(v4 + 64) + 8 * **(a1 + 8));
}

void sub_1B30EB2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0,std::allocator<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_0>,void ()(md::FrameGraphRenderPassBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A301F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::MuninPassList::~MuninPassList(md::MuninPassList *this)
{
  *this = &unk_1F2A301C0;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    *(this + 9) = v5;
    operator delete(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    *(this + 6) = v6;
    operator delete(v6);
  }

  *this = &unk_1F2A36F90;
  std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](this + 2, 0);
  std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](this + 1, 0);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A301C0;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    *(this + 12) = v4;
    operator delete(v4);
  }

  v5 = *(this + 8);
  if (v5)
  {
    *(this + 9) = v5;
    operator delete(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    *(this + 6) = v6;
    operator delete(v6);
  }

  *this = &unk_1F2A36F90;
  std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](this + 2, 0);
  std::unique_ptr<md::FrameGraph>::reset[abi:nn200100](this + 1, 0);
}

uint64_t md::GEOFlyoverMetadataResourceFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a3 + 8);
  gdc::ResourceKey::getInt32(v5, 4u);
  Int32 = gdc::ResourceKey::getInt32(v5, 2u);
  v7 = gdc::ResourceKey::getInt32(v5, 1u);
  LODWORD(v5) = gdc::ResourceKey::getInt32(v5, 0);
  [v4 size];
  [v4 scale];
  LOBYTE(v9) = GEOTileKeyMakeEmpty();
  *(&v9 + 1) = Int32 & 0x3F | (v5 << 6);
  *(&v9 + 5) = v7 & 0x3FFFFFF;

  return v9;
}

uint64_t md::GEOFlyoverMetadataResourceFetcher::resourceTileForTile@<X0>(uint64_t this@<X0>, const geo::QuadTile *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 768))
  {
    RegionAreas = md::FlyoverRegionManager::getRegionAreas(**(this + 784), a2);
    v8 = v12;
    v9 = v12;
    v10 = v12;
    v11 = 2;
    geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::append<md::FlyoverRegionManager::RegionArea const*>(&v8, *RegionAreas, RegionAreas[1]);
    if (v8 == v9)
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      *(a3 + 1) = *(a2 + 1);
      *(a3 + 4) = *(a2 + 4);
      v6 = *a2;
      *(a3 + 16) = *(a2 + 2);
      *(a3 + 24) = *(a2 + 24);
      v7 = 1;
    }

    *a3 = v6;
    *(a3 + 32) = v7;
    return geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::~small_vector_base(&v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 32) = 0;
  }

  return this;
}

void md::GEOFlyoverMetadataResourceFetcher::~GEOFlyoverMetadataResourceFetcher(md::GEOFlyoverMetadataResourceFetcher *this)
{
  md::GEOFlyoverMetadataResourceFetcher::~GEOFlyoverMetadataResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A30358;
  v2 = *(this + 99);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);
}

void std::__shared_ptr_emplace<md::GEOFlyoverMetadataResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RasterLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
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

void md::RasterLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  gdc::Tiled::tileFromLayerDataKey(&v17, *(a2 + 16));
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v15, *(a1 + 592), *a3, a3[1]);
  v7 = v15;
  if (v15)
  {
    memset(__p, 0, sizeof(__p));
    gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], __p);
    if (*(v7 + 160) == 1 && v18)
    {
      os_unfair_lock_lock((a1 + 784));
      if (a1 + 840 == geo::LRUPolicy<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash>::get(a1 + 840, (a1 + 800), &v17))
      {
        v8 = v18;
        if (v18)
        {
          v9 = 0;
          v8 = v18 - 1;
          v10 = vshr_n_s32(v19, 1uLL);
          v11 = 1;
        }

        else
        {
          v10 = v19;
          v9 = v20;
          v11 = v21;
        }

        BYTE1(v22) = v8;
        v23 = v10;
        LOBYTE(v22) = v17;
        v24 = v9;
        LOBYTE(v25) = v11;
        geo::Cache<geo::QuadTile,geo::QuadTile,geo::QuadTileHash,geo::LRUPolicy>::insert(a1 + 792, &v17, &v22);
      }

      os_unfair_lock_unlock((a1 + 784));
    }

    if (*(v7 + 144))
    {
      v22 = 1;
      LODWORD(v12) = 1;
      std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,0>(&v13, &v22, &v12);
    }

    *a4 = 0;
    a4[1] = 0;
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void sub_1B30EBCB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  os_unfair_lock_unlock(v21 + 196);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  _Unwind_Resume(a1);
}

void geo::Cache<geo::QuadTile,geo::QuadTile,geo::QuadTileHash,geo::LRUPolicy>::insert(uint64_t a1, geo::QuadTile *a2, unsigned __int8 *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>,void *>>>>::find<geo::QuadTile>((a1 + 8), a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + 6);
    v8 = *v6;
    v7 = v6[1];
    *(v8 + 8) = v7;
    *v7 = v8;
    --*(a1 + 64);
    operator delete(v6);
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((a1 + 8), v5);
  }

  operator new();
}

void std::__shared_ptr_emplace<md::RasterTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30580;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::RasterLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0,std::allocator<md::RasterLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A30538;
  a2[1] = v2;
  return result;
}

void md::RasterLayerDataSource::~RasterLayerDataSource(md::RasterLayerDataSource *this)
{
  md::RasterLayerDataSource::~RasterLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A30490;
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 105);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 800);
  *(this + 95) = &unk_1F2A59028;

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::GlobeTextured>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::GlobeTextured>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::GlobeTextured>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::DaVinci::GlobeTextured>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30690;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::GlobeTexturedMesh::~GlobeTexturedMesh(ggl::DaVinci::GlobeTexturedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::GlobeTextured>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::GlobeTextured>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DaVinci::GlobeTexturedPipelineSetup::~GlobeTexturedPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DaVinciCenterLineRoadsTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30708;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciCenterLineRoadsLayerDataSource::~DaVinciCenterLineRoadsLayerDataSource(md::DaVinciCenterLineRoadsLayerDataSource *this)
{
  *this = &unk_1F2A4B498;
  v2 = *(this + 104);
  *(this + 104) = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    MEMORY[0x1B8C62190](v2, 0x1020C40509EF904);
  }

  std::__function::__value_func<BOOL ()(md::GEOVectorTileResource const&,GeoCodecsRoadFeature const&,md::MapDataType)>::~__value_func[abi:nn200100](this + 792);

  v5 = *(this + 96);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4B498;
  v2 = *(this + 104);
  *(this + 104) = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    MEMORY[0x1B8C62190](v2, 0x1020C40509EF904);
  }

  std::__function::__value_func<BOOL ()(md::GEOVectorTileResource const&,GeoCodecsRoadFeature const&,md::MapDataType)>::~__value_func[abi:nn200100](this + 792);

  v5 = *(this + 96);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void std::__shared_ptr_emplace<md::DsmDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A34800;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

_DWORD *md::TransitInterTileMediator::updateTileInfos(uint64_t a1, int32x2_t *a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 8) != *(a3 + 16);
  v8 = (a1 + 8);
  do
  {
    v17 = *a2;
    v9 = neighborTileOffsets[v6];
    v18 = a2[1].i32[0];
    v17 = vadd_s32(v17, v9);
    v10 = 1 << v18;
    if (v17.i32[0] < 0)
    {
      v11 = v10 + v17.i32[0];
    }

    else
    {
      v11 = v17.i32[0] - v10;
      if (v17.i32[0] < v10)
      {
        goto LABEL_7;
      }
    }

    v17.i32[0] = v11;
LABEL_7:
    result = std::__tree<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::__map_value_compare<md::TransitInterTileMediator::TileKey,std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::less<md::TransitInterTileMediator::TileKey>,true>,std::allocator<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>>>::find<md::TransitInterTileMediator::TileKey>(a1, &v17);
    *(a3 + v6) = v8 != result;
    if (v8 != result)
    {
      v13 = oppositeTileEdges[v6];
      if (*(result + v13 + 48) != v7)
      {
        *(result + v13 + 48) = v7;
        v14 = *(result + 7);
        v15 = *(result + 8);
        while (v14 != v15)
        {
          v16 = *v14++;
          *(v16 + 1377) = 1;
        }
      }
    }

    ++v6;
  }

  while (v6 != 4);
  return result;
}

_DWORD *std::__tree<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::__map_value_compare<md::TransitInterTileMediator::TileKey,std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>,std::less<md::TransitInterTileMediator::TileKey>,true>,std::allocator<std::__value_type<md::TransitInterTileMediator::TileKey,md::TransitInterTileMediator::TileInfo>>>::find<md::TransitInterTileMediator::TileKey>(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = v2;
    v8 = a2[2];
    do
    {
      v9 = v3[8];
      v10 = v9 < v6;
      if (v9 == v6 && (v11 = v3[9], v10 = v11 < v5, v11 == v5))
      {
        v12 = v3[10] < v8;
      }

      else
      {
        v12 = v10;
      }

      v13 = !v12;
      if (v12)
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        v7 = v3;
      }

      v3 = *&v3[v14];
    }

    while (v3);
    if (v2 != v7)
    {
      v15 = v7[8];
      v16 = v6 < v15;
      if (v6 == v15 && (v17 = v7[9], v16 = v5 < v17, v5 == v17))
      {
        if (v8 >= v7[10])
        {
          return v7;
        }
      }

      else if (!v16)
      {
        return v7;
      }
    }
  }

  return v2;
}

void md::TransitInterTileMediator::populateSectionTerminusPaths(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a3 != a4)
  {
    v16[7] = v4;
    v16[8] = v5;
    v7 = a3;
    v9 = result;
    do
    {
      v10 = v7[7];
      v11 = v7[8];
      while (v10 != v11)
      {
        if (v10[93] == 1)
        {
          if (v10[32] == 2 && v10[33] == v9)
          {
            v15 = v10;
            v16[0] = v7;
            v14 = v10;
            std::vector<md::TransitInterTileMediator::SectionTerminusPath>::emplace_back<md::TransitLink *,md::TransitLink::Section *,md::TransitLink::SectionTerminus *>(a2, v16, &v15, &v14);
          }

          if (v10[72] == 2 && v10[73] == v9)
          {
            v15 = v10;
            v16[0] = v7;
            v14 = v10 + 40;
            std::vector<md::TransitInterTileMediator::SectionTerminusPath>::emplace_back<md::TransitLink *,md::TransitLink::Section *,md::TransitLink::SectionTerminus *>(a2, v16, &v15, &v14);
          }
        }

        v10 += 96;
      }

      v7 += 31;
    }

    while (v7 != a4);
  }
}

void std::vector<md::TransitInterTileMediator::SectionTerminusPath>::emplace_back<md::TransitLink *,md::TransitLink::Section *,md::TransitLink::SectionTerminus *>(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v17 = *a1;
    v18 = v5 - *a1;
    v19 = 0xCCCCCCCCCCCCCCCDLL * (v18 >> 3) + 1;
    if (v19 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v17) >> 3);
    if (2 * v20 > v19)
    {
      v19 = 2 * v20;
    }

    if (v20 >= 0x333333333333333)
    {
      v21 = 0x666666666666666;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v22 = (8 * (v18 >> 3));
    v23 = **a2;
    v26 = *(v23 + 64);
    v24 = (v23 + 64);
    v25 = v26;
    v27 = v24 - 1;
    v28 = *(v24 - 1);
    v29 = v26 >= v28;
    if (v26 >= v28)
    {
      v25 = *(v24 - 1);
    }

    v30 = *a3;
    v31 = *a4;
    *v22 = *a2;
    *(8 * (v18 >> 3) + 8) = v25;
    if (v29)
    {
      v27 = v24;
    }

    *(8 * (v18 >> 3) + 0x10) = *v27;
    *(8 * (v18 >> 3) + 0x18) = v30;
    *(8 * (v18 >> 3) + 0x20) = v31;
    v16 = v22 + 5;
    v32 = v22 - v18;
    if (v17 != v5)
    {
      v33 = v32;
      do
      {
        v34 = *v17;
        v35 = v17[1];
        *(v33 + 4) = *(v17 + 4);
        *v33 = v34;
        *(v33 + 1) = v35;
        v17 = (v17 + 40);
        v33 += 40;
      }

      while (v17 != v5);
      v17 = *a1;
    }

    *a1 = v32;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v7 = **a2;
    v10 = *(v7 + 64);
    v8 = (v7 + 64);
    v9 = v10;
    v11 = *(v8 - 1);
    v12 = v10 >= v11;
    if (v10 >= v11)
    {
      v9 = *(v8 - 1);
    }

    v13 = *a3;
    v14 = *a4;
    *v5 = *a2;
    v5[1] = v9;
    if (v12)
    {
      v15 = v8;
    }

    else
    {
      v15 = v8 - 1;
    }

    v5[2] = *v15;
    v5[3] = v13;
    v5[4] = v14;
    v16 = v5 + 5;
  }

  *(a1 + 8) = v16;
}

void md::LabelLayerData::~LabelLayerData(md::LabelLayerData *this)
{
  md::LabelLayerData::~LabelLayerData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A30740;
  *(this + 80) = &unk_1F2A30780;
  v2 = *(this + 92);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapTileData::~MapTileData(this);
}

md::LabelLineResolvedPosition *md::LabelLineResolvedPosition::LabelLineResolvedPosition(md::LabelLineResolvedPosition *this, const md::LabelLinePosition *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *this;
  }

  v5 = *(a2 + 1);
  *(this + 1) = v5;
  v6 = *(a2 + 4);
  *(this + 4) = v6;
  v7 = *(a2 + 10);
  *(this + 38) = 0;
  *(this + 10) = v7;
  *(this + 12) = 0;
  *(this + 56) = 0u;
  *(this + 24) = 2139095039;
  v8 = (this + 96);
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 50) = 0;
  *(this + 102) = 0;
  *(this + 104) = 0u;
  v9 = (this + 104);
  *(this + 36) = 2139095039;
  v10 = (this + 144);
  *(this + 120) = 0u;
  *(this + 17) = 0;
  *(this + 74) = 0;
  *(this + 150) = 0;
  *(this + 39) = 0;
  *(this + 40) = 0;
  v11 = 0;
  if (v3 && v7 == *(v3 + 16) && *(&v5 + 1) && (v6 & 0x80000000) == 0)
  {
    v11 = *(**(&v5 + 1) + 34);
  }

  *(this + 164) = v11;
  *(this + 165) = 0;
  *(this + 167) = 0;
  if (md::LabelLineResolvedPosition::ensureValidLinePosition(this, *&v5) && ((*(this + 166) = md::LabelLinePosition::getLabelPoint(this, (this + 104)), md::LabelLineResolvedPosition::ensureValidLinePosition(this, v12), LODWORD(v13) = *(this + 9), *&v13 >= 0.0) ? (md::LabelLineResolvedPosition::ensureValidLinePosition(this, v13), v14 = *(this + 9) > 1.0) : (v14 = 1), *(this + 167) = v14, *(this + 9) = *(this + 15), *(this + 56) = *v9, *(this + 5) = *(this + 8), *v8 = *v10, *(this + 99) = *(this + 147), v15 = (*(***(this + 3) + 24))(**(this + 3), *(this + 17)), (v16 = md::LabelLinePosition::pointAtOffset(this, 1)) != 0))
  {
    v25[0] = *&md::LabelPoint::vectorToPoint(v15, v16, *(*this + 159));
    v25[1] = v17;
    v25[2] = v18;
    v19 = gm::Matrix<double,3,1>::normalized<int,void>(v25);
    v20 = 0;
    *v26 = v19;
    v26[1] = v21;
    v26[2] = v22;
    do
    {
      v23 = *&v26[v20];
      *(&v27 + v20++) = v23;
    }

    while (v20 != 3);
    *(this + 19) = v27;
    *(this + 40) = v28;
  }

  else
  {
    *(this + 166) = 0;
  }

  return this;
}

void sub_1B30ED2C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL md::LabelLineResolvedPosition::positionAtDistance(std::__shared_weak_count **this, md::LabelLineResolvedPosition *a2, double a3)
{
  if (!md::LabelLineResolvedPosition::ensureValidLinePosition(this, a3))
  {
    return 0;
  }

  v6 = this[1];
  v30 = *this;
  v31 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = *(this + 1);
  v33 = this[4];
  v34 = *(this + 10);
  v7 = md::LabelLinePosition::offsetDistance(&v30, 0, a3);
  v8 = v7;
  if (v7)
  {
    md::LabelLineResolvedPosition::LabelLineResolvedPosition(&v15, &v30);
    v10 = v15;
    v9 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a2 + 1);
    *a2 = v10;
    *(a2 + 1) = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    *(a2 + 1) = v17[0];
    *(a2 + 28) = *(v17 + 12);
    *(a2 + 12) = v18;
    *(a2 + 56) = v19;
    *(a2 + 9) = v20;
    *(a2 + 5) = v21;
    *(a2 + 99) = *&v22[3];
    *(a2 + 24) = *v22;
    v12 = v23;
    *(a2 + 15) = v24;
    *(a2 + 104) = v12;
    *(a2 + 8) = v25;
    *(a2 + 147) = *(v26 + 3);
    *(a2 + 36) = v26[0];
    *(a2 + 19) = v27;
    v13 = v29;
    *(a2 + 40) = v28;
    *(a2 + 41) = v13;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  return (v8 & 1) != 0;
}

void sub_1B30ED444(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LabelLinePosition::hasShield(md::LabelLinePosition *this)
{
  if (*(*this + 152))
  {
    return 1;
  }

  result = md::LabelLinePosition::geoFeature(this);
  if (result)
  {
    return geo::codec::featureGetNativeShieldCount(result) != 0;
  }

  return result;
}

void md::SatelliteGridMapEngineMode::~SatelliteGridMapEngineMode(md::SatelliteGridMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t **md::SatelliteGridMapEngineMode::SatelliteGridMapEngineMode(uint64_t **this)
{
  v2 = md::MapEngineMode::MapEngineMode(this, 4);
  *v2 = &unk_1F2A30798;
  *(v2 + 49) = 1;
  *(v2 + 52) = 21;
  LOWORD(v4) = 5376;
  v5 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(v2 + 464, &v4);
  LOWORD(v4) = 5376;
  v5 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((this + 64), &v4);
  LOWORD(v4) = 5376;
  v5 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((this + 61), &v4);
  LOWORD(v4) = 13056;
  BYTE2(v4) = 2;
  md::MapEngineMode::addRequiredRenderLayers(this, &v4, 3);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::AnchorLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::SettingsLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::StyleLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LayerDataLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileSelectionLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingSceneLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LoadingStatusLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>((this + 29));
  gdc::LogicExecutionGraphBuilder::addLogic<md::ResolvedSceneLogic>((this + 29));
  v4 = 28;
  md::MapEngineMode::addOptionalMapDataTypes(this, &v4, 1);
  return this;
}

void md::MuninSceneContext::~MuninSceneContext(md::MuninSceneContext *this)
{
  md::MuninSceneContext::~MuninSceneContext(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A307E0;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>>>::~__hash_table(this + 152);
  std::unique_ptr<md::MuninTapContext>::reset[abi:nn200100](this + 8, 0);
  v4 = (this + 40);
  std::vector<md::MuninSceneEvent>::__destroy_vector::operator()[abi:nn200100](&v4);
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<md::MuninTapContext>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<md::SpriteSheet>::reset[abi:nn200100]((v2 + 88), 0);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<md::MuninSceneEvent>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 272;
        std::allocator_traits<std::allocator<md::MuninSceneEvent>>::destroy[abi:nn200100]<md::MuninSceneEvent,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<md::MuninSceneEvent>>::destroy[abi:nn200100]<md::MuninSceneEvent,void,0>(uint64_t a1)
{
  if (*(a1 + 264) == 1)
  {
    v2 = *(a1 + 168);
    if (v2)
    {
      *(a1 + 176) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 160) == 1)
  {
    v3 = (a1 + 128);
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&v3);
  }
}

void ***std::unique_ptr<md::SpriteSheet>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      geo::small_vector_base<std::shared_ptr<md::mun::MuninViewData>>::~small_vector_base((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t geo::small_vector_base<std::shared_ptr<md::mun::MuninViewData>>::~small_vector_base(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v4 = v2[1];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v2 += 2;
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

void md::Logic<md::MuninSceneLogic,md::MuninSceneContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::MuninSceneLogic::requestData(md::MuninSceneLogic *this, const md::CameraContext *a2, md::MuninSceneContext *a3)
{
  v17 = *MEMORY[0x1E69E9840];
    ;
  }

  v6 = (*(**(i + 8) + 64))(*(i + 8), a2, a3);
  v7 = gdc::Camera::cameraFrame(a2);
  v8 = 640;
  if (*(this + 832))
  {
    v8 = 632;
  }

  md::mun::MuninMetadataContainer::nearestMetadataTiles(v16, *(this + 21), v7, *(this + v8));
  memset(&v15[40], 0, 24);
  v9 = *(this + 121);
    ;
  }

  if ((v6 & 0x100000000) != 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = 512;
  }

  v14 = v11;
  std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::unordered_set(v15, v16);
  v12 = pthread_rwlock_rdlock((this + 208));
  if (v12)
  {
    geo::read_write_lock::logFailure(v12, "read lock", v13);
  }

  operator new();
}

void sub_1B30EE504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29)
{
  *(v29 - 128) = &a26;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100]((v29 - 128));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a13);
  a12 = &a18;
  std::vector<std::pair<unsigned short,std::list<std::unique_ptr<gdc::SelectionContext>>>>::__destroy_vector::operator()[abi:nn200100](&a12);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

void md::MuninSceneLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *a2, uint64_t *a3, void *a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = a3[1];
  v56[0] = &unk_1F2A30B68;
  v56[1] = a1;
  v56[3] = v56;
  md::StyleLogicContext::parseEvents(v7, v56);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v56);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v51 = v10;
  v52 = a2;
  if (v9)
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    gss::StylesheetManager<gss::ScenePropertyID>::styleQueryForFeatureAttributes(&v55, v9, &v57);
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v57);
    v11 = v55;
    if (*(&v55 + 1))
    {
      atomic_fetch_add_explicit((*(&v55 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::ScenePropertyID>::QueryableLocker(&v57, v11, *(&v11 + 1));
    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v11 + 1));
    }

    if (v61 == 1)
    {
      if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(v57[3], 73))
      {
        gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(73, v57[3]);
        *(a1 + 584) = v12;
        *(a1 + 588) = 1;
      }

      if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(v57[3], 74))
      {
        gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(74, v57[3]);
        *(a1 + 592) = v13;
        *(a1 + 596) = 1;
      }

      if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(v57[3], 75))
      {
        gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(75, v57[3]);
        *(a1 + 600) = v14;
        *(a1 + 604) = 1;
      }

      if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(v57[3], 76))
      {
        gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(76, v57[3]);
        *(a1 + 608) = v15;
        *(a1 + 612) = 1;
      }
    }

    gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(&v57);
    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v11 + 1));
    }
  }

  md::SceneStateManager::clear(*(a1 + 968));
  v16 = *(a1 + 544);
  if (v16)
  {
    v17 = *(a1 + 552);
    if (v17)
    {
      [*(v17 + 48) stop];
      v16 = *(a1 + 544);
    }

    *(a1 + 544) = 0;
    std::unique_ptr<md::FadeEffectBlock>::reset[abi:nn200100]((a1 + 552), v16);
    v18 = *(a1 + 552);
    v19 = *(a1 + 136);
    v20 = [[VKTimedAnimation alloc] initWithDuration:*(v18 + 4)];
    geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v18 + 40, v20);

    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = ___ZN2md15FadeEffectBlock3runEPNS_15AnimationRunnerE_block_invoke;
    v60 = &__block_descriptor_40_e8_v12__0f8l;
    v61 = v18;
    [*(v18 + 48) setStepHandler:&v57];
    [*(v18 + 48) setCompletionHandler:&__block_literal_global_15605];
    md::AnimationRunner::runAnimation(v19, *(v18 + 48));
  }

  v21 = *(a1 + 552);
  if (v21 && ([*(v21 + 48) running] & 1) == 0)
  {
    std::unique_ptr<md::FadeEffectBlock>::reset[abi:nn200100]((a1 + 552), 0);
  }

  v22 = *(a1 + 968);
  geo::linear_set<md::TileSelectionTileSetType,std::less<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>,std::vector<md::TileSelectionTileSetType>>::operator=(v22 + 23, (*(a1 + 144) + 176));
  md::SceneStateManager::updateMerged(v22);
  v23 = *(a1 + 833);
  v24 = a4;
  v25 = a1;
  v28 = a4[5];
  v26 = a4 + 5;
  v27 = v28;
  *(v26 + 200) = v23;
  *(v26 - 1) = *(v25 + 552);
  v53 = v25;
  v29 = (v25 + 560);
  v54 = v24;
  if (v28)
  {
    v30 = v24[6];
    v31 = v27;
    if (v30 != v27)
    {
      do
      {
        v30 -= 272;
        std::allocator_traits<std::allocator<md::MuninSceneEvent>>::destroy[abi:nn200100]<md::MuninSceneEvent,void,0>(v30);
      }

      while (v30 != v27);
      v31 = *v26;
    }

    v24[6] = v27;
    operator delete(v31);
    *v26 = 0;
    v26[1] = 0;
    v26[2] = 0;
  }

  *(v24 + 5) = *(v53 + 560);
  v24[7] = *(v53 + 576);
  *v29 = 0;
  v29[1] = 0;
  v29[2] = 0;
  v33 = v24[5];
  v32 = v24[6];
  if (v33 == v32)
  {
    v36 = 0;
    v34 = 0;
    v33 = 0;
    v35 = v52;
  }

  else
  {
    v34 = v24[5];
    v35 = v52;
    do
    {
      if (*v34 == 2)
      {
        goto LABEL_36;
      }

      v34 += 272;
    }

    while (v34 != v32);
    v34 = 0;
LABEL_36:
    v36 = v33;
    do
    {
      if (*v36 == 4)
      {
        goto LABEL_40;
      }

      v36 += 272;
    }

    while (v36 != v32);
    v36 = 0;
    do
    {
LABEL_40:
      if (!*v33)
      {
        goto LABEL_44;
      }

      v33 += 272;
    }

    while (v33 != v32);
    v33 = 0;
  }

LABEL_44:
  v38 = v54 + 8;
  v37 = v54[8];
  if (v37)
  {
    if (*(v37 + 64) == 1)
    {
      v39 = *(*(v37 + 88) + 64) >= *(*(v37 + 88) + 56);
      if (v36)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v39 = 0;
      if (v36)
      {
        goto LABEL_55;
      }
    }

    if (v34 || v39)
    {
LABEL_55:
      std::unique_ptr<md::MuninTapContext>::reset[abi:nn200100](v54 + 8, 0);
      if (!v33)
      {
        goto LABEL_60;
      }

LABEL_56:
      if (!v36 && !v34 && (v33[120] & 1) != 0)
      {
        operator new();
      }

LABEL_60:
      v40 = *v38;
      if (*v38)
      {
        md::LayoutContext::frameState(v35);
        v42 = *(v41 + 88);
        v43 = v42 - *(v40 + 56);
        *(v40 + 80) = v43;
        v44 = *(v40 + 88);
        if (*(v40 + 104))
        {
          v45 = v42 + 0.883333333;
          *(v44 + 48) = v42;
          *(v44 + 56) = v42 + 0.883333333;
          *(v44 + 64) = v42;
          *(v44 + 80) = xmmword_1B33B1F30;
          *(v44 + 72) = 0x404E000000000000;
          *(v40 + 104) = 0;
          v46 = v42;
          v47 = v42;
        }

        else
        {
          v45 = *(v44 + 56);
          v47 = *(v44 + 64);
          v46 = *(v44 + 48);
        }

        v48 = fmax(v47, v42);
        *(v44 + 64) = v48;
        if (v48 - v46 >= v45 - v46 && !*(v40 + 64))
        {
          *(v40 + 104) = 1;
        }

        v49 = **(v40 + 96);
        if (v49)
        {
          LOBYTE(v57) = 8;
          md::MapEngine::setNeedsTick(v49, &v57);
        }
      }

      md::LayoutContext::frameState(v35);
      md::MuninSceneLogic::requestData(v53, v8, (*(v50 + 88) * 1000.0));
    }
  }

  else if (v36 | v34)
  {
    goto LABEL_55;
  }

  if (!v33)
  {
    goto LABEL_60;
  }

  goto LABEL_56;
}

uint64_t *std::unique_ptr<md::FadeEffectBlock>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *(v2 + 40) = &unk_1F2A3EF58;

    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2 + 8);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__stable_sort<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>(uint64_t a1, float *a2, unint64_t a3, uint64_t a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v7 = *(a2 - 6);
      v8 = *a1;
      if (v7 < *a1)
      {
        *a1 = v7;
        *(a2 - 6) = v8;
        v9 = *(a1 + 8);
        *(a1 + 8) = *(a2 - 2);
        *(a2 - 2) = v9;
        v10 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 1);
        *(a2 - 1) = v10;
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v17 = (a1 + 24);
        if ((a1 + 24) != a2)
        {
          v18 = 0;
          v19 = a1;
          do
          {
            v20 = v19;
            v19 = v17;
            v21 = *v17;
            v22 = *v20;
            if (*v17 < *v20)
            {
              v23 = *(v20 + 32);
              v24 = *(v20 + 40);
              v25 = v18;
              *(v20 + 32) = 0;
              *(v20 + 40) = 0;
              while (1)
              {
                v26 = a1 + v25;
                *(v26 + 24) = v22;
                v27 = *(a1 + v25 + 8);
                *(v26 + 8) = 0;
                *(v26 + 16) = 0;
                v28 = *(a1 + v25 + 40);
                *(v26 + 32) = v27;
                if (v28)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v28);
                }

                if (!v25)
                {
                  break;
                }

                v29 = a1 + v25;
                v22 = *(a1 + v25 - 24);
                v25 -= 24;
                if (v21 >= v22)
                {
                  v30 = a1 + v25 + 24;
                  v31 = (v29 + 8);
                  goto LABEL_22;
                }
              }

              v31 = (a1 + 8);
              v30 = a1;
LABEL_22:
              *v30 = v21;
              *v31 = v23;
              v32 = *(v30 + 16);
              *(v30 + 16) = v24;
              if (v32)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v32);
              }
            }

            v17 = (v19 + 24);
            v18 += 24;
          }

          while ((v19 + 24) != a2);
        }
      }
    }

    else
    {
      v13 = a4;
      v14 = a3 >> 1;
      v15 = (a1 + 24 * (a3 >> 1));
      if (a3 <= a5)
      {
        v52[0] = a4;
        v52[1] = &v53;
        v53 = 0;
        std::__stable_sort_move<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>(a1, (a1 + 24 * (a3 >> 1)), a3 >> 1, a4);
        v53 = a3 >> 1;
        v33 = a3 - v14;
        v34 = v13 + 24 * v14;
        std::__stable_sort_move<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>((a1 + 24 * (a3 >> 1)), a2, v33, v34);
        v53 = a3;
        v35 = v13 + 24 * a3;
        v36 = a1 + 8;
        v37 = v34;
        while (v37 != v35)
        {
          if (*v37 >= *v13)
          {
            *(v36 - 8) = *v13;
            v40 = *(v13 + 8);
            *(v13 + 8) = 0;
            *(v13 + 16) = 0;
            v41 = *(v36 + 8);
            *v36 = v40;
            if (v41)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v41);
            }

            v13 += 24;
          }

          else
          {
            *(v36 - 8) = *v37;
            v38 = *(v37 + 8);
            *(v37 + 8) = 0;
            *(v37 + 16) = 0;
            v39 = *(v36 + 8);
            *v36 = v38;
            if (v39)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v39);
            }

            v37 += 24;
          }

          v36 += 24;
          if (v13 == v34)
          {
            if (v37 != v35)
            {
              v42 = 0;
              do
              {
                v43 = v37 + v42;
                v44 = (v36 + v42);
                *(v44 - 2) = *(v37 + v42);
                v45 = *(v37 + v42 + 8);
                *(v43 + 8) = 0;
                *(v43 + 16) = 0;
                v46 = *(v36 + v42 + 8);
                *v44 = v45;
                if (v46)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v46);
                }

                v42 += 24;
              }

              while (v43 + 24 != v35);
            }

            goto LABEL_47;
          }
        }

        if (v13 != v34)
        {
          v47 = 0;
          do
          {
            v48 = v13 + v47;
            v49 = (v36 + v47);
            *(v49 - 2) = *(v13 + v47);
            v50 = *(v13 + v47 + 8);
            *(v48 + 8) = 0;
            *(v48 + 16) = 0;
            v51 = *(v36 + v47 + 8);
            *v49 = v50;
            if (v51)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v51);
            }

            v47 += 24;
          }

          while (v48 + 24 != v34);
        }

LABEL_47:
        std::unique_ptr<std::pair<float,std::shared_ptr<md::mun::MuninViewData>>,std::__destruct_n &>::~unique_ptr[abi:nn200100](v52);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>(a1, (a1 + 24 * (a3 >> 1)), a3 >> 1, a4, a5);
        v16 = a3 - v14;
        std::__stable_sort<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>(v15, a2, v16, v13, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>(a1, v15, a2, v14, v16, v13, a5);
      }
    }
  }
}

void sub_1B30F0158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::pair<float,std::shared_ptr<md::mun::MuninViewData>>,std::__destruct_n &>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      geo::small_vector_base<std::shared_ptr<md::mun::MuninViewData>>::~small_vector_base(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2, uint64_t **a3)
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

void sub_1B30F0420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void geo::small_vector_base<std::shared_ptr<md::mun::MuninViewData>>::grow(std::__shared_weak_count ***a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
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

  v10 = malloc_type_malloc(16 * v9, 0x20040A4A59CD2uLL);
  v11 = v10;
  v12 = *a1;
  v13 = a1[1];
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      *v14 = *v12;
      v14 += 16;
      *v12 = 0;
      v12[1] = 0;
      v12 += 2;
    }

    while (v12 != v13);
    v15 = *a1;
    v16 = a1[1];
    while (v15 != v16)
    {
      v17 = v15[1];
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }

      v15 += 2;
    }
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  a1[1] = (v11 + v4 - v3);
  a1[3] = v9;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>(uint64_t *result, float *a2, unint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v7 = result;
    if (a3 == 2)
    {
      v36 = &v37;
      v8 = *(a2 - 6);
      if (v8 >= *result)
      {
        *a4 = *result;
        *(a4 + 8) = *(result + 1);
        result[1] = 0;
        result[2] = 0;
        v9 = a2 - 4;
        v10 = a2 - 2;
        v7 = a2 - 6;
      }

      else
      {
        *a4 = v8;
        *(a4 + 8) = *(a2 - 1);
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        v9 = (result + 1);
        v10 = (result + 2);
      }

      v25 = *v9;
      *(a4 + 24) = *v7;
      *(a4 + 32) = v25;
      *(a4 + 40) = *v10;
      *v9 = 0;
      *(v9 + 1) = 0;
      v26 = 1;
    }

    else
    {
      if (a3 == 1)
      {
        *a4 = *result;
        *(a4 + 8) = *(result + 1);
        result[1] = 0;
        result[2] = 0;
        return result;
      }

      if (a3 <= 8)
      {
        if (result == a2)
        {
          return result;
        }

        v36 = &v37;
        *a4 = *result;
        *(a4 + 8) = *(result + 1);
        result[1] = 0;
        result[2] = 0;
        v37 = 1;
        v11 = (result + 3);
        if (result + 3 != a2)
        {
          v12 = 0;
          v13 = a4;
          v14 = a4;
          do
          {
            v15 = v7;
            v7 = v11;
            v16 = *v14;
            v14 += 6;
            v17 = v16;
            if (*v11 >= v16)
            {
              *(v13 + 24) = *v11;
              *(v13 + 32) = *(v15 + 2);
              *(v15 + 4) = 0;
              *(v15 + 5) = 0;
              ++v37;
            }

            else
            {
              *(v13 + 24) = v17;
              *(v13 + 32) = *(v13 + 8);
              *(v13 + 8) = 0;
              *(v13 + 16) = 0;
              ++v37;
              v18 = v4;
              if (v13 != v4)
              {
                v19 = v12;
                while (1)
                {
                  v18 = v4 + v19;
                  v20 = *(v4 + v19 - 24);
                  if (*v7 >= v20)
                  {
                    break;
                  }

                  *v18 = v20;
                  v21 = *(v18 - 16);
                  *(v18 - 16) = 0;
                  *(v18 - 8) = 0;
                  v22 = *(v18 + 16);
                  *(v18 + 8) = v21;
                  if (v22)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
                  }

                  v19 -= 24;
                  if (!v19)
                  {
                    v18 = v4;
                    break;
                  }
                }
              }

              *v18 = *v7;
              v23 = *(v15 + 2);
              *(v15 + 4) = 0;
              *(v15 + 5) = 0;
              v24 = *(v18 + 16);
              *(v18 + 8) = v23;
              if (v24)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v24);
              }
            }

            v11 = v7 + 6;
            v12 += 24;
            v13 = v14;
          }

          while (v7 + 6 != a2);
        }

        goto LABEL_27;
      }

      v27 = &result[3 * (a3 >> 1)];
      std::__stable_sort<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>(result, v27, a3 >> 1, a4, a3 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>(&v7[6 * (a3 >> 1)], a2, a3 - (a3 >> 1), v4 + 24 * (a3 >> 1), a3 - (a3 >> 1));
      v26 = 0;
      v36 = &v37;
      v37 = 0;
      v28 = &v7[6 * (a3 >> 1)];
      while (v28 != a2)
      {
        if (*v28 >= *v7)
        {
          *v4 = *v7;
          *(v4 + 8) = *(v7 + 2);
          *(v7 + 1) = 0;
          *(v7 + 2) = 0;
          v7 += 6;
        }

        else
        {
          *v4 = *v28;
          *(v4 + 8) = *(v28 + 2);
          *(v28 + 1) = 0;
          *(v28 + 2) = 0;
          v28 += 6;
        }

        v37 = ++v26;
        v4 += 24;
        if (v7 == v27)
        {
          if (v28 == a2)
          {
            goto LABEL_27;
          }

          v29 = 0;
          do
          {
            v30 = &v28[v29];
            v31 = v4 + v29 * 4;
            *v31 = v28[v29];
            *(v31 + 8) = *&v28[v29 + 2];
            *(v30 + 1) = 0;
            *(v30 + 2) = 0;
            ++v26;
            v29 += 6;
          }

          while (v30 + 6 != a2);
          goto LABEL_26;
        }
      }

      if (v7 == v27)
      {
        goto LABEL_27;
      }

      v32 = 0;
      do
      {
        v33 = v4 + v32 * 4;
        v34 = &v7[v32];
        *v33 = v7[v32];
        *(v33 + 8) = *&v7[v32 + 2];
        *(v34 + 1) = 0;
        *(v34 + 2) = 0;
        ++v26;
        v32 += 6;
      }

      while (v34 + 6 != v27);
    }

LABEL_26:
    v37 = v26;
LABEL_27:
    v35 = 0;
    return std::unique_ptr<std::pair<float,std::shared_ptr<md::mun::MuninViewData>>,std::__destruct_n &>::~unique_ptr[abi:nn200100](&v35);
  }

  return result;
}

uint64_t *std::unique_ptr<std::pair<float,std::shared_ptr<md::mun::MuninViewData>>,std::__destruct_n &>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      v6 = (v2 + 16);
      do
      {
        if (*v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*v6);
          v4 = *v3;
        }

        ++v5;
        v6 += 3;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

uint64_t *std::__inplace_merge<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>(uint64_t *result, float *a2, float *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    v11 = result;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = *a2;
      while (1)
      {
        v13 = *v11;
        if (v12 < *v11)
        {
          break;
        }

        v11 += 3;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v8)
      {
        if (a4 == 1)
        {
          *v11 = v12;
          *a2 = v13;
          v72 = v11[1];
          v11[1] = *(a2 + 1);
          *(a2 + 1) = v72;
          v73 = v11[2];
          v11[2] = *(a2 + 2);
          *(a2 + 2) = v73;
          return result;
        }

        v14 = a6;
        v23 = a4 / 2;
        v17 = &v11[3 * (a4 / 2)];
        v16 = a2;
        if (a2 != a3)
        {
          v24 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
          v16 = a2;
          do
          {
            v25 = v24 >> 1;
            v26 = &v16[6 * (v24 >> 1)];
            v28 = *v26;
            v27 = v26 + 6;
            v24 += ~(v24 >> 1);
            if (v28 < *v17)
            {
              v16 = v27;
            }

            else
            {
              v24 = v25;
            }
          }

          while (v24);
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v16 - a2) >> 3);
      }

      else
      {
        v14 = a6;
        v15 = v8 / 2;
        v16 = &a2[6 * (v8 / 2)];
        v17 = a2;
        if (a2 != v11)
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 3);
          v17 = v11;
          do
          {
            v19 = v18 >> 1;
            v20 = &v17[6 * (v18 >> 1)];
            v22 = *v20;
            v21 = v20 + 6;
            v18 += ~(v18 >> 1);
            if (*v16 < v22)
            {
              v18 = v19;
            }

            else
            {
              v17 = v21;
            }
          }

          while (v18);
        }

        v23 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v11) >> 3);
      }

      v29 = v16;
      if (v17 != a2)
      {
        v29 = v17;
        if (a2 != v16)
        {
          v30 = *v17;
          *v17 = v12;
          *a2 = v30;
          v31 = *(v17 + 1);
          *(v17 + 1) = *(a2 + 1);
          *(a2 + 1) = v31;
          v32 = *(v17 + 2);
          *(v17 + 2) = *(a2 + 2);
          *(a2 + 2) = v32;
          v29 = v17 + 6;
          for (i = a2 + 6; i != v16; i += 6)
          {
            if (v29 == a2)
            {
              a2 = i;
            }

            v34 = *v29;
            *v29 = *i;
            *i = v34;
            v35 = *(v29 + 1);
            *(v29 + 1) = *(i + 1);
            *(i + 1) = v35;
            v36 = *(v29 + 2);
            *(v29 + 2) = *(i + 2);
            *(i + 2) = v36;
            v29 += 6;
          }

          if (v29 != a2)
          {
            v37 = v29;
            v38 = a2;
            do
            {
              while (1)
              {
                v39 = *v37;
                *v37 = *v38;
                *v38 = v39;
                v40 = *(v37 + 1);
                *(v37 + 1) = *(v38 + 1);
                *(v38 + 1) = v40;
                v41 = *(v37 + 2);
                *(v37 + 2) = *(v38 + 2);
                *(v38 + 2) = v41;
                v37 += 6;
                v38 += 6;
                if (v38 == v16)
                {
                  break;
                }

                if (v37 == a2)
                {
                  a2 = v38;
                }
              }

              v38 = a2;
            }

            while (v37 != a2);
          }
        }
      }

      a4 -= v23;
      v8 -= v15;
      if ((v23 + v15) >= a4 + v8)
      {
        v46 = v23;
        v47 = a4;
        v48 = v15;
        v49 = v14;
        v45 = a7;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>(v29, v16, a3, v47, v8, v14, a7);
        v16 = v17;
        a6 = v49;
        v8 = v48;
        a4 = v46;
        a3 = v29;
      }

      else
      {
        v42 = v11;
        v43 = v17;
        v44 = a3;
        a6 = v14;
        v45 = a7;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,md::MuninSceneLogic::_computeOrderedVisibleViews(md::LayoutContext const&,md::MuninSceneContext &)::$_0 &,std::__wrap_iter<std::pair<float,std::shared_ptr<md::mun::MuninViewData>> *>>(v42, v43, v29, v23, v15, v14, a7);
        a3 = v44;
        v11 = v29;
      }

      a2 = v16;
      a7 = v45;
      if (!v8)
      {
        return result;
      }
    }

    v79[0] = a6;
    v79[1] = &v80;
    v80 = 0;
    if (a4 > v8)
    {
      if (a2 == a3)
      {
        return std::unique_ptr<std::pair<float,std::shared_ptr<md::mun::MuninViewData>>,std::__destruct_n &>::~unique_ptr[abi:nn200100](v79);
      }

      v50 = 0;
      v51 = a6;
      v52 = a2;
      do
      {
        *v51 = *v52;
        *(v51 + 8) = *(v52 + 2);
        *(v52 + 1) = 0;
        *(v52 + 2) = 0;
        ++v50;
        v52 += 6;
        v51 += 24;
      }

      while (v52 != a3);
      v80 = v50;
      for (j = (a3 - 2); ; j -= 3)
      {
        if (a2 == v11)
        {
          while (v51 != a6)
          {
            v59 = *(v51 - 24);
            v51 -= 24;
            *(j - 4) = v59;
            v60 = *(v51 + 8);
            *(v51 + 8) = 0;
            *(v51 + 16) = 0;
            v61 = *j;
            *(j - 1) = v60;
            if (v61)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v61);
            }

            j -= 3;
          }

          return std::unique_ptr<std::pair<float,std::shared_ptr<md::mun::MuninViewData>>,std::__destruct_n &>::~unique_ptr[abi:nn200100](v79);
        }

        v54 = *(a2 - 6);
        v55 = *(v51 - 24);
        if (v55 < v54)
        {
          break;
        }

        *(j - 4) = v55;
        v58 = *(v51 - 16);
        *(v51 - 16) = 0;
        *(v51 - 8) = 0;
        v57 = *j;
        *(j - 1) = v58;
        v51 -= 24;
        if (v57)
        {
          goto LABEL_56;
        }

LABEL_57:
        if (v51 == a6)
        {
          return std::unique_ptr<std::pair<float,std::shared_ptr<md::mun::MuninViewData>>,std::__destruct_n &>::~unique_ptr[abi:nn200100](v79);
        }
      }

      *(j - 4) = v54;
      v56 = *(a2 - 1);
      *(a2 - 2) = 0;
      *(a2 - 1) = 0;
      v57 = *j;
      *(j - 1) = v56;
      a2 -= 6;
      if (!v57)
      {
        goto LABEL_57;
      }

LABEL_56:
      std::__shared_weak_count::__release_shared[abi:nn200100](v57);
      goto LABEL_57;
    }

    if (a2 == v11)
    {
      return std::unique_ptr<std::pair<float,std::shared_ptr<md::mun::MuninViewData>>,std::__destruct_n &>::~unique_ptr[abi:nn200100](v79);
    }

    v62 = 0;
    v63 = a6;
    v64 = v11;
    do
    {
      v65 = v63;
      *v63 = *v64;
      *(v63 + 8) = *(v64 + 1);
      v64[1] = 0;
      v64[2] = 0;
      ++v62;
      v64 += 3;
      v63 += 24;
    }

    while (v64 != a2);
    v80 = v62;
    while (a2 != a3)
    {
      if (*a2 >= *a6)
      {
        *v11 = *a6;
        v69 = *(a6 + 8);
        *(a6 + 8) = 0;
        *(a6 + 16) = 0;
        v70 = v11[2];
        *(v11 + 1) = v69;
        if (v70)
        {
          v71 = a3;
          std::__shared_weak_count::__release_shared[abi:nn200100](v70);
          a3 = v71;
        }

        a6 += 24;
      }

      else
      {
        *v11 = *a2;
        v66 = *(a2 + 2);
        *(a2 + 1) = 0;
        *(a2 + 2) = 0;
        v67 = v11[2];
        *(v11 + 1) = v66;
        if (v67)
        {
          v68 = a3;
          std::__shared_weak_count::__release_shared[abi:nn200100](v67);
          a3 = v68;
        }

        a2 += 6;
      }

      v11 += 3;
      if (a6 == v63)
      {
        return std::unique_ptr<std::pair<float,std::shared_ptr<md::mun::MuninViewData>>,std::__destruct_n &>::~unique_ptr[abi:nn200100](v79);
      }
    }

    if (a6 != v63)
    {
      v74 = 0;
      do
      {
        v75 = &v11[v74];
        v76 = a6 + v74 * 8;
        *v75 = *(a6 + v74 * 8);
        v77 = *(a6 + v74 * 8 + 8);
        *(v76 + 8) = 0;
        *(v76 + 16) = 0;
        v78 = v11[v74 + 2];
        *(v75 + 1) = v77;
        if (v78)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v78);
        }

        v74 += 3;
      }

      while (v76 != v65);
    }

    return std::unique_ptr<std::pair<float,std::shared_ptr<md::mun::MuninViewData>>,std::__destruct_n &>::~unique_ptr[abi:nn200100](v79);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2md15MuninSceneLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_17StyleLogicContextENS2_13CameraContextENS2_21LayerDataLogicContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_17MuninSceneContextEE3__0NS_9allocatorISL_EEFvNS2_17StyleManagerEventEEEclEOSO_(uint64_t a1, _BYTE *a2)
{
  if (!*a2)
  {
    md::SceneStateManager::reset(*(*(a1 + 8) + 968));
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2md15MuninSceneLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_17StyleLogicContextENS2_13CameraContextENS2_21LayerDataLogicContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_17MuninSceneContextEE3__0NS_9allocatorISL_EEFvNS2_17StyleManagerEventEEE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A30B68;
  a2[1] = v2;
  return result;
}

void md::MuninSceneLogic::allocateContext(md::MuninSceneLogic *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 121);
  v4 = *(this + 122);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(this + 67);
    v6 = this + 480;
    v7 = this + 616;
    v8 = *(this + 21);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a2 + 8) = v3;
    *(a2 + 16) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  else
  {
    v5 = *(this + 67);
    v6 = this + 480;
    v7 = this + 616;
    v8 = *(this + 21);
    *(a2 + 8) = v3;
    *(a2 + 16) = 0;
  }

  *a2 = &unk_1F2A307E0;
  *(a2 + 24) = v5;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  *(a2 + 184) = 1065353216;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = v6;
  *(a2 + 224) = v7;
  *(a2 + 232) = v8;
  *(a2 + 240) = 1;
  *(a2 + 136) = 0;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 116) = 0u;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

uint64_t md::Logic<md::MuninSceneLogic,md::MuninSceneContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xC83717EF586624DCLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0xE42D19AFCA302E68))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x1AF456233693CD46))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  result = gdc::Context::context<md::LayerDataLogicContext>(a2);
  *a1 = v6;
  a1[1] = v9;
  a1[2] = result;
  return result;
}

uint64_t md::Logic<md::MuninSceneLogic,md::MuninSceneContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xC83717EF586624DCLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 152))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::MuninSceneLogic,md::MuninSceneContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xC83717EF586624DCLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::MuninSceneLogic,md::MuninSceneContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xC83717EF586624DCLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 136))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::MuninSceneLogic,md::MuninSceneContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xC83717EF586624DCLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void sub_1B30F1920(_Unwind_Exception *a1, uint64_t a2, uint64_t *a3, uint64_t a4, std::__shared_weak_count **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, std::__shared_weak_count **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v20 = v17;
  std::__hash_table<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::mun::RigPointPass>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::mun::RigPointPass>>>::~__hash_table(v20);
  std::unique_ptr<md::MuninTapContext>::reset[abi:nn200100](a10, 0);
  *(v18 - 120) = a11;
  std::vector<md::MuninSceneEvent>::__destroy_vector::operator()[abi:nn200100]((v18 - 120));
  if (*a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*a12);
  }

  MEMORY[0x1B8C62190](v16, 0x10F1C40E4F88C75);
  md::MuninSceneContext::~MuninSceneContext(va);
  MEMORY[0x1B8C62190](a14, 0x10F1C40B0038B9CLL);
  _Unwind_Resume(a1);
}

uint64_t gdc::ObjectHolder<md::MuninSceneContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::MuninSceneContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A30E80;
  v1 = a1[4];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::MuninSceneContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A30E80;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void md::MuninSceneLogic::didBecomeActive(md::MuninSceneLogic *this)
{
  v1 = *MEMORY[0x1E69E9840];
  if (*(this + 832) == 1 && std::mutex::try_lock((this + 864)))
  {
    operator new();
  }
}

void sub_1B30F1D08(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void md::MuninSceneLogic::didBecomeActive(void)::$_0::operator()(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 960));
  if ((v1 & 1) == 0)
  {
    [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.VectorKit"];
    objc_claimAutoreleasedReturnValue();
    [MEMORY[0x1E696AEC0] stringWithUTF8String:"tap_sheet_sdf_4k"];
    objc_claimAutoreleasedReturnValue();
    [MEMORY[0x1E696AEC0] stringWithUTF8String:"png"];
    objc_claimAutoreleasedReturnValue();
    _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v2);
  }
}

void sub_1B30F1EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(a1);
}

id GEOGetVectorKitMuninSceneLogicLog(void)
{
  if (GEOGetVectorKitMuninSceneLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitMuninSceneLogicLog(void)::onceToken, &__block_literal_global_35);
  }

  v1 = GEOGetVectorKitMuninSceneLogicLog(void)::log;

  return v1;
}

void ___ZL33GEOGetVectorKitMuninSceneLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "MuninSceneLogic");
  v1 = GEOGetVectorKitMuninSceneLogicLog(void)::log;
  GEOGetVectorKitMuninSceneLogicLog(void)::log = v0;
}

void std::__function::__func<md::MuninSceneLogic::didBecomeActive(void)::$_0,std::allocator<md::MuninSceneLogic::didBecomeActive(void)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::MuninSceneLogic::didBecomeActive(void)::$_0,std::allocator<md::MuninSceneLogic::didBecomeActive(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::MuninSceneLogic::didBecomeActive(void)::$_0,std::allocator<md::MuninSceneLogic::didBecomeActive(void)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A30B20;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::MuninSceneLogic::didBecomeActive(void)::$_0,std::allocator<md::MuninSceneLogic::didBecomeActive(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A30B20;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::MuninSceneLogic::didBecomeActive(void)::$_0,std::allocator<md::MuninSceneLogic::didBecomeActive(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A30B20;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<std::lock_guard<std::mutex>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30AE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninSceneLogic::~MuninSceneLogic(md::MuninSceneLogic *this)
{
  md::MuninSceneLogic::~MuninSceneLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  v15[4] = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A30800;
  atomic_store(1u, this + 960);
  v2 = *(*(this + 15) + 72);
  v15[0] = &unk_1F2A30AA0;
  v15[3] = v15;
  geo::TaskQueue::barrierSync(v2, v15);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v15);
  v3 = *(this + 106);
  std::mutex::lock(v3);
  *(*(this + 106) + 64) = 0;
  std::mutex::unlock(v3);
  std::mutex::lock((this + 864));
  std::mutex::unlock((this + 864));
  v4 = *(this + 122);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 119);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 117);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::mutex::~mutex((this + 864));
  v7 = *(this + 107);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 101);
  if (v8)
  {
    *(this + 102) = v8;
    operator delete(v8);
  }

  v14 = (this + 560);
  std::vector<md::MuninSceneEvent>::__destroy_vector::operator()[abi:nn200100](&v14);
  std::unique_ptr<md::FadeEffectBlock>::reset[abi:nn200100](this + 69, 0);
  std::unique_ptr<md::FadeEffectBlock>::reset[abi:nn200100](this + 68, 0);
  std::unique_ptr<md::mun::MuninIntersector>::reset[abi:nn200100](this + 67, 0);
  v9 = *(this + 66);
  *(this + 66) = 0;
  if (v9)
  {
    MEMORY[0x1B8C62190](v9, 0x60C4044C4A2DFLL);
  }

  std::unique_ptr<md::mun::MuninDisplayAnalytic>::reset[abi:nn200100](this + 65, 0);
  v10 = *(this + 60);
  if (v10)
  {
    *(this + 61) = v10;
    operator delete(v10);
  }

  v14 = (this + 448);
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__destroy_vector::operator()[abi:nn200100](&v14);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 408);
  geo::read_write_lock::~read_write_lock((this + 208));
  v11 = *(this + 23);
  if (v11)
  {
    *(this + 24) = v11;
    operator delete(v11);
  }

  v12 = *(this + 22);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(this + 16);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B30F2444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v11 = *(v9 + 976);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(v9 + 952);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(v9 + 936);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  std::mutex::~mutex((v9 + 864));
  v14 = *(v9 + 856);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = *(v9 + 808);
  if (v15)
  {
    *(v9 + 816) = v15;
    operator delete(v15);
  }

  a9 = (v9 + 560);
  std::vector<md::MuninSceneEvent>::__destroy_vector::operator()[abi:nn200100](&a9);
  std::unique_ptr<md::FadeEffectBlock>::reset[abi:nn200100]((v9 + 552), 0);
  std::unique_ptr<md::FadeEffectBlock>::reset[abi:nn200100]((v9 + 544), 0);
  std::unique_ptr<md::mun::MuninIntersector>::reset[abi:nn200100]((v9 + 536), 0);
  v16 = *(v9 + 528);
  *(v9 + 528) = 0;
  if (v16)
  {
    MEMORY[0x1B8C62190](v16, 0x60C4044C4A2DFLL);
  }

  std::unique_ptr<md::mun::MuninDisplayAnalytic>::reset[abi:nn200100]((v9 + 520), 0);
  v17 = *(v9 + 480);
  if (v17)
  {
    *(v9 + 488) = v17;
    operator delete(v17);
  }

  a9 = (v9 + 448);
  std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__destroy_vector::operator()[abi:nn200100](&a9);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v9 + 408);
  geo::read_write_lock::~read_write_lock((v9 + 208));
  v18 = *(v9 + 184);
  if (v18)
  {
    *(v9 + 192) = v18;
    operator delete(v18);
  }

  v19 = *(v9 + 176);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  v20 = *(v9 + 128);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  *v9 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v9 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v9 + 80));
  _Unwind_Resume(a1);
}

std::mutex *std::__shared_ptr_pointer<md::MuninSceneLogic::ValidState *,std::shared_ptr<md::MuninSceneLogic::ValidState>::__shared_ptr_default_delete<md::MuninSceneLogic::ValidState,md::MuninSceneLogic::ValidState>,std::allocator<md::MuninSceneLogic::ValidState>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    std::mutex::~mutex(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::MuninSceneLogic::ValidState *,std::shared_ptr<md::MuninSceneLogic::ValidState>::__shared_ptr_default_delete<md::MuninSceneLogic::ValidState,md::MuninSceneLogic::ValidState>,std::allocator<md::MuninSceneLogic::ValidState>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

md::mun::MuninMetadataContainer *std::__shared_ptr_pointer<md::mun::MuninMetadataContainer *,std::shared_ptr<md::mun::MuninMetadataContainer>::__shared_ptr_default_delete<md::mun::MuninMetadataContainer,md::mun::MuninMetadataContainer>,std::allocator<md::mun::MuninMetadataContainer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::mun::MuninMetadataContainer::~MuninMetadataContainer(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::mun::MuninMetadataContainer *,std::shared_ptr<md::mun::MuninMetadataContainer>::__shared_ptr_default_delete<md::mun::MuninMetadataContainer,md::mun::MuninMetadataContainer>,std::allocator<md::mun::MuninMetadataContainer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

double md::Logic<md::MuninSceneLogic,md::MuninSceneContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::CameraContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2A307E0;
  result = 0.0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 184) = 1065353216;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 1;
  return result;
}

uint64_t md::MuninSceneLogic::getLodForCavasSize(md::MuninSceneLogic *this, CGSize a2)
{
  height = a2.height;
  width = a2.width;
  v5 = +[VKDebugSettings sharedSettings];
  if ([v5 overrideLod])
  {
    v6 = [v5 lodOverride];
  }

  else if (height == 0.0 && width == 0.0)
  {
    v6 = 4;
  }

  else
  {
    v29[0] = 0;
    v29[1] = 0;
    v28 = v29;
    v7 = *(this + 102);
    v8 = *(this + 101);
    if (v7 == v8)
    {
      v31[0] = 0;
      v31[1] = 0;
      v30 = v31;
      operator new();
    }

    v9 = 0;
    v10 = 7;
    do
    {
      v11 = *v8;
      LODWORD(v30) = v9 | (v11 << 16);
      BYTE4(v30) = v10;
      geo::range_map<unsigned short,unsigned char,std::less<unsigned short>,std::allocator<std::pair<gm::Range<unsigned short> const,unsigned char>>>::insert(&v28, &v30);
      if (v10 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v10;
      }

      v10 = v12 - 1;
      ++v8;
      v9 = v11;
    }

    while (v8 != v7);
    LODWORD(v30) = v11 | 0xFFFF0000;
    BYTE4(v30) = v10;
    geo::range_map<unsigned short,unsigned char,std::less<unsigned short>,std::allocator<std::pair<gm::Range<unsigned short> const,unsigned char>>>::insert(&v28, &v30);
    v13 = fmax(width, height);
    if (v29 == geo::range_map<unsigned short,unsigned char,std::less<unsigned short>,std::allocator<std::pair<gm::Range<unsigned short> const,unsigned char>>>::find(&v28, v13))
    {
      v6 = 2;
    }

    else
    {
      v14 = v28;
      if (v28 != v29)
      {
        v15 = 0;
        v16 = v28;
        do
        {
          v17 = v16[1];
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
              v18 = v16[2];
              v19 = *v18 == v16;
              v16 = v18;
            }

            while (!v19);
          }

          ++v15;
          v16 = v18;
        }

        while (v18 != v29);
        do
        {
          v20 = v15 >> 1;
          v21 = v14;
          if (v15 >= 2)
          {
            v22 = v15 >> 1;
            v23 = v14;
            do
            {
              v24 = v23[1];
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
                  v21 = v23[2];
                  v19 = *v21 == v23;
                  v23 = v21;
                }

                while (!v19);
              }

              v23 = v21;
              v26 = v22-- <= 1;
            }

            while (!v26);
          }

          if (*(v21 + 14) <= v13)
          {
            v25 = v21[1];
            if (v25)
            {
              do
              {
                v14 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v14 = v21[2];
                v19 = *v14 == v21;
                v21 = v14;
              }

              while (!v19);
            }

            v20 = v15 + ~v20;
          }

          v15 = v20;
        }

        while (v20);
      }

      if (v29 == v14 || (*(v14 + 13) <= v13 ? (v26 = *(v14 + 14) > v13) : (v26 = 0), !v26))
      {
        v14 = v29;
      }

      v6 = *(v14 + 30);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v29[0]);
  }

  return v6;
}

void sub_1B30F2B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a10);

  _Unwind_Resume(a1);
}

uint64_t **geo::range_map<unsigned short,unsigned char,std::less<unsigned short>,std::allocator<std::pair<gm::Range<unsigned short> const,unsigned char>>>::insert(uint64_t **result, unsigned __int16 *a2)
{
  if (!result[2])
  {
    return std::__tree<std::__value_type<gm::Range<unsigned short>,unsigned char>,std::__map_value_compare<gm::Range<unsigned short>,std::__value_type<gm::Range<unsigned short>,unsigned char>,geo::range_map<unsigned short,unsigned char,std::less<unsigned short>,std::allocator<std::pair<gm::Range<unsigned short> const,unsigned char>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned short>,unsigned char>>>::__emplace_unique_key_args<gm::Range<unsigned short>,std::pair<gm::Range<unsigned short> const,unsigned char>>(result, a2[1], a2);
  }

  v2 = (result + 1);
  if (*result == (result + 1))
  {
    v8 = *result;
  }

  else
  {
    v3 = 0;
    v4 = *result;
    do
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      ++v3;
      v4 = v6;
    }

    while (v6 != v2);
    v8 = *result;
    do
    {
      v9 = v3 >> 1;
      v10 = v8;
      if (v3 >= 2)
      {
        v11 = v3 >> 1;
        v12 = v8;
        do
        {
          v13 = v12[1];
          if (v13)
          {
            do
            {
              v10 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v10 = v12[2];
              v7 = *v10 == v12;
              v12 = v10;
            }

            while (!v7);
          }

          v12 = v10;
        }

        while (v11-- > 1);
      }

      if (*(v10 + 14) < a2[1])
      {
        v15 = v10[1];
        if (v15)
        {
          do
          {
            v8 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v8 = v10[2];
            v7 = *v8 == v10;
            v10 = v8;
          }

          while (!v7);
        }

        v9 = v3 + ~v9;
      }

      v3 = v9;
    }

    while (v9);
  }

  if (v2 == v8 || *(v8 + 13) >= a2[1])
  {
    if (*result == v8)
    {
      return std::__tree<std::__value_type<gm::Range<unsigned short>,unsigned char>,std::__map_value_compare<gm::Range<unsigned short>,std::__value_type<gm::Range<unsigned short>,unsigned char>,geo::range_map<unsigned short,unsigned char,std::less<unsigned short>,std::allocator<std::pair<gm::Range<unsigned short> const,unsigned char>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned short>,unsigned char>>>::__emplace_unique_key_args<gm::Range<unsigned short>,std::pair<gm::Range<unsigned short> const,unsigned char>>(result, a2[1], a2);
    }

    v16 = *v8;
    if (*v8)
    {
      do
      {
        v17 = v16;
        v16 = *(v16 + 8);
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v8[2];
        v7 = *v17 == v8;
        v8 = v17;
      }

      while (v7);
    }

    if (*a2 >= *(v17 + 28))
    {
      return std::__tree<std::__value_type<gm::Range<unsigned short>,unsigned char>,std::__map_value_compare<gm::Range<unsigned short>,std::__value_type<gm::Range<unsigned short>,unsigned char>,geo::range_map<unsigned short,unsigned char,std::less<unsigned short>,std::allocator<std::pair<gm::Range<unsigned short> const,unsigned char>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned short>,unsigned char>>>::__emplace_unique_key_args<gm::Range<unsigned short>,std::pair<gm::Range<unsigned short> const,unsigned char>>(result, a2[1], a2);
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<gm::Range<unsigned short>,unsigned char>,std::__map_value_compare<gm::Range<unsigned short>,std::__value_type<gm::Range<unsigned short>,unsigned char>,geo::range_map<unsigned short,unsigned char,std::less<unsigned short>,std::allocator<std::pair<gm::Range<unsigned short> const,unsigned char>>>::RangeCompare,true>,std::allocator<std::__value_type<gm::Range<unsigned short>,unsigned char>>>::__emplace_unique_key_args<gm::Range<unsigned short>,std::pair<gm::Range<unsigned short> const,unsigned char>>(uint64_t **a1, unsigned __int16 a2, uint64_t a3)
{
  v3 = a1[1];
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
      v5 = *(v3 + 14);
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
      return 0;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void md::MuninSceneLogic::addActiveViews(void *a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = (a1 + 26);
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v26, (v2 + 2));
      v5 = v2[17];
      v29 = v2[16];
      v30 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gdc::LayerDataRequestKey::keyData(v25, v26);
      v6 = v25[0];
      UInt64 = gdc::ResourceKey::getUInt64(v25[0], 1u);
      v8 = gdc::ResourceKey::getUInt64(v6, 2u);
      v9 = gdc::ResourceKey::getUInt64(v6, 3u);
      if (v6 != v25[2])
      {
        free(v6);
      }

      v25[0] = v4;
      v10 = pthread_rwlock_wrlock(v4);
      if (v10)
      {
        geo::read_write_lock::logFailure(v10, "write lock", v11);
      }

      v12 = a1[24];
      v13 = a1[25];
      if (v12 >= v13)
      {
        v15 = a1[23];
        v16 = (v12 - v15) >> 4;
        v17 = v16 + 1;
        if ((v16 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v18 = v13 - v15;
        if (v18 >> 3 > v17)
        {
          v17 = v18 >> 3;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF0)
        {
          v19 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::ViewId>>(v19);
        }

        v20 = 16 * v16;
        *v20 = UInt64;
        *(v20 + 8) = BYTE2(v8);
        *(v20 + 9) = v8;
        *(v20 + 10) = v9;
        v14 = 16 * v16 + 16;
        v21 = a1[23];
        v22 = a1[24] - v21;
        v23 = (16 * v16 - v22);
        memcpy(v23, v21, v22);
        v24 = a1[23];
        a1[23] = v23;
        a1[24] = v14;
        a1[25] = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v12 = UInt64;
        *(v12 + 8) = BYTE2(v8);
        *(v12 + 9) = v8;
        *(v12 + 10) = v9;
        v14 = v12 + 16;
      }

      a1[24] = v14;
      geo::write_lock_guard::~write_lock_guard(v25);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v30);
      }

      if (v27 != v28)
      {
        free(v27);
      }

      v2 = *v2;
    }

    while (v2);
  }
}

void sub_1B30F2FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  geo::write_lock_guard::~write_lock_guard(&a9);
  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a33);
  }

  if (a20 != a22)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void md::MuninSceneLogic::addPreloadViews(uint64_t a1, __int128 **a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 504) == 1)
  {
    *(a1 + 488) = *(a1 + 480);
    *(a1 + 504) = 0;
  }

  *v21 = 0u;
  *v22 = 0u;
  v23 = 1065353216;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1 + 408, vcvtps_u32_f32((*(a1 + 432) - 0x5555555555555555 * ((a2[1] - *a2) >> 3)) / *(a1 + 440)));
  v6 = *(a1 + 480);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) + ((*(a1 + 488) - v6) >> 5);
  if (v7 > (*(a1 + 496) - v6) >> 5)
  {
    if (!(v7 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::pair<md::mun::ViewId,unsigned int>,md::MuninDebugViewContext::ViewState>>>(v7);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    do
    {
      md::mun::MuninMetadataContainer::activePoint(v26, *(a1 + 168), *v8);
      v10 = *(a1 + 480);
      v11 = *(a1 + 488);
      if (v10 == v11)
      {
        v13 = 0;
      }

      else
      {
        v12 = 0;
        do
        {
          if (*v10 == *v8 && *(v10 + 8) == *(v8 + 8) && *(v10 + 9) == *(v8 + 9) && *(v10 + 10) == *(v8 + 10))
          {
            ++v12;
          }

          v10 += 32;
        }

        while (v10 != v11);
        v13 = v12 > 0;
      }

      if (v30 == 1)
      {
        md::mun::ViewId::toLayerDataKey(buf, v8, v29, v28, *(v8 + 4));
        std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey>(v21, buf, buf);
        if (v18 != v20)
        {
          free(v18);
        }

        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((a1 + 408), *v8, v8);
        if (!v13)
        {
          *buf = *v8;
          v18 = *(v8 + 2);
          v19 = 0;
          std::vector<std::pair<std::pair<md::mun::ViewId,unsigned int>,md::MuninDebugViewContext::ViewState>>::push_back[abi:nn200100](a1 + 480, buf);
        }
      }

      else
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v14 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_ERROR, "Missing metadata point for preload view", buf, 2u);
        }

        if (!v13)
        {
          *buf = *v8;
          v18 = *(v8 + 2);
          v19 = 3;
          std::vector<std::pair<std::pair<md::mun::ViewId,unsigned int>,md::MuninDebugViewContext::ViewState>>::push_back[abi:nn200100](a1 + 480, buf);
        }
      }

      if (v30 == 1)
      {
        geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v27);
      }

      v8 = (v8 + 24);
    }

    while (v8 != v9);
  }

  v15 = *(a1 + 848);
  v16 = *(a1 + 856);
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 2, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::__value_func[abi:nn200100](v24, a3);
  std::vector<std::pair<md::mun::ViewId,unsigned int>>::vector[abi:nn200100](__p, a2);
  __p[3] = v15;
  __p[4] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 2, 1uLL, memory_order_relaxed);
  }

  __p[5] = a1;
  operator new();
}

void sub_1B30F3474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43, uint64_t a44, char a45)
{
  std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100](&a45);
  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(a27);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 104);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(a2 + 104);
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = *(v10 + 1);
    if (v11 == v3)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (!gdc::LayerDataRequestKey::operator==(v10 + 16, a2))
  {
    goto LABEL_17;
  }
}

void std::vector<std::pair<std::pair<md::mun::ViewId,unsigned int>,md::MuninDebugViewContext::ViewState>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::pair<md::mun::ViewId,unsigned int>,md::MuninDebugViewContext::ViewState>>>(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

uint64_t std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<md::MuninSceneLogic::addPreloadViews(std::vector<std::pair<md::mun::ViewId,unsigned int>> const&,std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&>::operator()(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  operator new();
}

uint64_t std::__function::__value_func<void ()(md::MuninSceneLogic *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::MuninSceneLogic::addPreloadViews(std::vector<std::pair<md::mun::ViewId,unsigned int>> const&,std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)::{lambda(md::MuninSceneLogic*)#1},std::allocator<md::MuninSceneLogic*>,void ()($_1)>::operator()(void *result, uint64_t a2)
{
  v2 = result[3];
  v3 = *v2;
  v4 = v2[1];
  if (v3 != v4)
  {
    v5 = *(*a2 + 480);
    v6 = *(*a2 + 488);
    do
    {
      if (v5 != v6)
      {
        v7 = *v3;
        v8 = result[1];
        v9 = v5;
        do
        {
          if (*v9 == v7 && *(v9 + 8) == *(v3 + 8) && *(v9 + 9) == *(v3 + 9) && *(v9 + 10) == *(v3 + 10) && !*(v9 + 24))
          {
            v10 = *v8;
            if (v10 <= 2)
            {
              *(v9 + 24) = dword_1B34156BC[v10];
            }
          }

          v9 += 32;
        }

        while (v9 != v6);
      }

      v3 += 3;
    }

    while (v3 != v4);
  }

  if (*(result[4] + 24))
  {
    std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::operator()(*(result[4] + 24), *result[1]);
  }
}

void std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::operator()(uint64_t a1, char a2)
{
  v3 = a2;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v3);
  }

  else
  {
    v2 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<md::MuninSceneLogic::addPreloadViews(std::vector<std::pair<md::mun::ViewId,unsigned int>> const&,std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)::{lambda(md::MuninSceneLogic*)#1},std::allocator<md::MuninSceneLogic*>,void ()($_1)>::destroy_deallocate(v2);
  }
}

__n128 std::__function::__func<md::MuninSceneLogic::addPreloadViews(std::vector<std::pair<md::mun::ViewId,unsigned int>> const&,std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1::operator() const(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &)::{lambda(md::MuninSceneLogic*)#1},std::allocator<md::MuninSceneLogic*>,void ()($_1)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A30DF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::MuninSceneLogic::addPreloadViews(std::vector<std::pair<md::mun::ViewId,unsigned int>> const&,std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&>::destroy_deallocate(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100]((a1 + 1));

  operator delete(a1);
}

uint64_t std::__function::__func<md::MuninSceneLogic::addPreloadViews(std::vector<std::pair<md::mun::ViewId,unsigned int>> const&,std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&>::destroy(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100]((a1 + 1));
}

uint64_t *std::__function::__func<md::MuninSceneLogic::addPreloadViews(std::vector<std::pair<md::mun::ViewId,unsigned int>> const&,std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A30DA8;
  v4 = a2 + 5;
  std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  result = std::vector<std::pair<md::mun::ViewId,unsigned int>>::vector[abi:nn200100](v4, (a1 + 40));
  v6 = *(a1 + 72);
  a2[8] = *(a1 + 64);
  a2[9] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  a2[10] = *(a1 + 80);
  return result;
}

void sub_1B30F3E80(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::MuninSceneLogic::addPreloadViews(std::vector<std::pair<md::mun::ViewId,unsigned int>> const&,std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&>::~__func(void *a1)
{
  *a1 = &unk_1F2A30DA8;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::MuninSceneLogic::addPreloadViews(std::vector<std::pair<md::mun::ViewId,unsigned int>> const&,std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>)::$_1,std::allocator<std::function<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>>,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&>::~__func(void *a1)
{
  *a1 = &unk_1F2A30DA8;
  v2 = a1[9];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  std::__function::__value_func<void ()(gdc::RequestCompletionStatus,std::unordered_map<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>>> &&)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<std::pair<md::mun::ViewId,unsigned int>,md::MuninDebugViewContext::ViewState>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void md::MuninSceneLogic::cancelViewPreloads(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  if (a2 == a3)
  {
    v9 = 0;
  }

  else
  {
    v5 = a2;
    do
    {
      md::mun::MuninMetadataContainer::activePoint(v14, a1[21], *v5);
      if (v18 == 1)
      {
        md::mun::ViewId::toLayerDataKey(v11, v5, v17, v16, 2147483646);
        std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey>(&v19, v11, v11);
        if (v12 != v13)
        {
          free(v12);
        }
      }

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__erase_unique<unsigned long long>(a1 + 51, *v5);
      v6 = a1[60];
      v7 = a1[61];
      if (v6 != v7)
      {
        v8 = *v5;
        do
        {
          if (*v6 == v8 && *(v6 + 8) == *(v5 + 8) && *(v6 + 9) == *(v5 + 9) && *(v6 + 10) == *(v5 + 10) && !*(v6 + 24))
          {
            *(v6 + 24) = 2;
          }

          v6 += 32;
        }

        while (v6 != v7);
      }

      if (v18 == 1)
      {
        geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v15);
      }

      v5 += 16;
    }

    while (v5 != a3);
    v9 = v20;
  }

  gdc::LayerDataManager::cancelLayerDataRequests(*(a1[18] + 24), v9);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(v20);
  v10 = v19;
  *&v19 = 0;
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_1B30F414C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13)
{
  if (a11 != a13)
  {
    free(a11);
  }

  if (LOBYTE(STACK[0x7B8]) == 1)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v13 + 88);
  }

  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(v14 - 80));
  v16 = *(v14 - 96);
  *(v14 - 96) = 0;
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void md::MuninSceneLogic::cancelAllViewPreloads(md::MuninSceneLogic *this)
{
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 51);
  gdc::LayerDataManager::cancelAllStandaloneRequests(*(*(*(this + 18) + 24) + 64));
  v2 = *(this + 60);
  for (i = *(this + 61); v2 != i; v2 += 32)
  {
    if (!*(v2 + 24))
    {
      *(v2 + 24) = 2;
    }
  }
}

void md::MuninSceneLogic::addSceneEvent(uint64_t a1, unsigned __int8 *a2)
{
  v30[4] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (v4 > 3)
  {
    if (v4 == 6 || v4 == 4)
    {
      *(a1 + 504) = 1;
    }
  }

  else if (*a2)
  {
    if (v4 == 1 && a2[160] == 1 && a2[152] == 1)
    {
      v5 = *(*(a1 + 120) + 8);
      v30[0] = &unk_1F2A30E38;
      v30[1] = a1;
      v30[3] = v30;
      geo::TaskQueue::barrierAsync(&v25, v5, v30);
    }
  }

  else
  {
    *(a1 + 512) = std::chrono::steady_clock::now();
  }

  v7 = (a1 + 568);
  v8 = *(a1 + 568);
  v9 = *(a1 + 576);
  if (v8 >= v9)
  {
    v11 = *(a1 + 560);
    v12 = 0xF0F0F0F0F0F0F0F1 * ((v8 - v11) >> 4);
    if (v12 + 1 > 0xF0F0F0F0F0F0F0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = (a1 + 560);
    v14 = 0xF0F0F0F0F0F0F0F1 * ((v9 - v11) >> 4);
    v15 = 2 * v14;
    if (2 * v14 <= v12 + 1)
    {
      v15 = v12 + 1;
    }

    if (v14 >= 0x78787878787878)
    {
      v16 = 0xF0F0F0F0F0F0F0;
    }

    else
    {
      v16 = v15;
    }

    v29 = a1 + 560;
    if (v16)
    {
      if (v16 <= 0xF0F0F0F0F0F0F0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v26 = 0;
    v27 = 272 * v12;
    std::allocator_traits<std::allocator<md::MuninSceneEvent>>::construct[abi:nn200100]<md::MuninSceneEvent,md::MuninSceneEvent,void,0>(272 * v12, a2);
    v28 = 272 * v12 + 272;
    v17 = *v7;
    v18 = *v13;
    v19 = 272 * v12 + *v13 - *v7;
    if (*v13 != *v7)
    {
      v20 = *v13;
      v21 = v19;
      do
      {
        std::allocator_traits<std::allocator<md::MuninSceneEvent>>::construct[abi:nn200100]<md::MuninSceneEvent,md::MuninSceneEvent,void,0>(v21, v20);
        v20 += 272;
        v21 += 272;
      }

      while (v20 != v17);
      do
      {
        std::allocator_traits<std::allocator<md::MuninSceneEvent>>::destroy[abi:nn200100]<md::MuninSceneEvent,void,0>(v18);
        v18 += 272;
      }

      while (v18 != v17);
    }

    v22 = *(a1 + 560);
    *(a1 + 560) = v19;
    v23 = *(a1 + 576);
    v24 = v28;
    *v7 = v28;
    *&v28 = v22;
    *(&v28 + 1) = v23;
    v26 = v22;
    v27 = v22;
    std::__split_buffer<md::MuninSceneEvent>::~__split_buffer(&v26);
    v10 = v24;
  }

  else
  {
    std::allocator_traits<std::allocator<md::MuninSceneEvent>>::construct[abi:nn200100]<md::MuninSceneEvent,md::MuninSceneEvent,void,0>(*(a1 + 568), a2);
    v10 = v8 + 272;
    *v7 = v8 + 272;
  }

  *v7 = v10;
}

void sub_1B30F4478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<md::MuninSceneEvent>>::construct[abi:nn200100]<md::MuninSceneEvent,md::MuninSceneEvent,void,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    v2 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v2;
    v3 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v3;
    *(a1 + 64) = *(a2 + 64);
    result = *(a2 + 72);
    v5 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v5;
    *(a1 + 72) = result;
    *(a1 + 120) = 1;
  }

  *(a1 + 128) = 0;
  *(a1 + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    result = *(a2 + 128);
    *(a1 + 128) = result;
    *(a1 + 144) = *(a2 + 144);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 128) = 0;
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = 1;
  }

  *(a1 + 168) = 0;
  *(a1 + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    v6 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v6;
    v7 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 216) = v7;
    *(a1 + 240) = *(a2 + 240);
    result = *(a2 + 248);
    *(a1 + 248) = result;
    *(a1 + 264) = 1;
  }

  return result;
}

uint64_t std::__split_buffer<md::MuninSceneEvent>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    std::allocator_traits<std::allocator<md::MuninSceneEvent>>::destroy[abi:nn200100]<md::MuninSceneEvent,void,0>(i - 272);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<md::MuninSceneLogic::addSceneEvent(md::MuninSceneEvent &&)::$_0,std::allocator<md::MuninSceneEvent &&>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A30E38;
  a2[1] = v2;
  return result;
}

void ***std::unique_ptr<ggl::MeshVendor<ggl::PrefilteredLine::PrefilteredLineMesh>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::unique_ptr<ggl::PrefilteredLine::PrefilteredLineMesh>,geo::allocator_adapter<std::unique_ptr<ggl::PrefilteredLine::PrefilteredLineMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ***std::unique_ptr<ggl::MeshVendor<ggl::BuildingPointyRoof::BuildingMesh>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::unique_ptr<ggl::BuildingPointyRoof::BuildingMesh>,geo::allocator_adapter<std::unique_ptr<ggl::BuildingPointyRoof::BuildingMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ***std::unique_ptr<ggl::MeshVendor<ggl::BuildingFacade::BuildingMesh>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<std::unique_ptr<ggl::BuildingFacade::BuildingMesh>,geo::allocator_adapter<std::unique_ptr<ggl::BuildingFacade::BuildingMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::unique_ptr<ggl::BuildingFacade::BuildingMesh>,geo::allocator_adapter<std::unique_ptr<ggl::BuildingFacade::BuildingMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        v6 = *--v3;
        result = v6;
        *v3 = 0;
        if (v6)
        {
          result = ((*result)[1])(result);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::BuildingFacade::BuildingMesh>>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::BuildingFacade::BuildingMesh>>(uint64_t a1, void *a2)
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

void std::vector<std::unique_ptr<ggl::BuildingPointyRoof::BuildingMesh>,geo::allocator_adapter<std::unique_ptr<ggl::BuildingPointyRoof::BuildingMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        v6 = *--v3;
        result = v6;
        *v3 = 0;
        if (v6)
        {
          result = ((*result)[1])(result);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::BuildingPointyRoof::BuildingMesh>>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::BuildingPointyRoof::BuildingMesh>>(uint64_t a1, void *a2)
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

void std::vector<std::unique_ptr<ggl::PrefilteredLine::PrefilteredLineMesh>,geo::allocator_adapter<std::unique_ptr<ggl::PrefilteredLine::PrefilteredLineMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        v6 = *--v3;
        result = v6;
        *v3 = 0;
        if (v6)
        {
          result = ((*result)[1])(result);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::PrefilteredLine::PrefilteredLineMesh>>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::PrefilteredLine::PrefilteredLineMesh>>(uint64_t a1, void *a2)
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

void sub_1B30F52E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va);
  _Unwind_Resume(a1);
}

void sub_1B30F5AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  ggl::BufferMemory::~BufferMemory(va);
  ggl::BufferMemory::~BufferMemory((v60 - 256));
  _Unwind_Resume(a1);
}

void _computeScaleRotationTranslation(float32x2_t *a1, unint64_t a2, uint64_t a3, float *a4, float32x2_t *a5)
{
  v53 = *MEMORY[0x1E69E9840];
  bzero(v52, 0x40uLL);
  bzero(v51, 0x600uLL);
  if (a2)
  {
    v7 = 0;
    do
    {
      if (a2 - 1 == v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = v7 + 1;
      }

      v9 = vsub_f32(a1[v8], a1[v7]);
      v10 = v9.f32[1];
      if (v9.f32[1] >= 0.0)
      {
        v12 = v9.f32[0];
        if (v9.f32[1] == 0.0)
        {
          v12 = fabsf(v9.f32[0]);
          v9.f32[0] = v12;
        }

        v46 = v9;
      }

      else
      {
        v11 = vneg_f32(v9);
        v10 = v11.f32[1];
        v46 = v11;
        v12 = v11.f32[0];
      }

      v13 = atan2f(v10, v12);
      if (v13 < 0.0 || v13 >= 3.14159265)
      {
        NSLog(@"problem computing angle histogram for building roof, quitting");
      }

      v14 = (v13 * 10.186);
      ++v52[v14];
      v15 = &v51[3 * v14];
      v17 = v15[1];
      v16 = v15[2];
      if (v17 >= v16)
      {
        v19 = (v17 - *v15) >> 3;
        if ((v19 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v20 = v16 - *v15;
        v21 = v20 >> 2;
        if (v20 >> 2 <= (v19 + 1))
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        v50[1] = v15;
        if (v22)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v22);
        }

        __p = 0;
        v48 = (8 * v19);
        *v48 = v46;
        v49 = 8 * v19 + 8;
        v50[0] = 0;
        std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(v15, &__p);
        v18 = v15[1];
        if (__p)
        {
          operator delete(__p);
        }
      }

      else
      {
        *v17 = v46;
        v18 = v17 + 1;
      }

      ++v7;
      v15[1] = v18;
    }

    while (a2 != v7);
  }

  v23 = 0;
  for (i = 1; i != 64; ++i)
  {
    if (v52[i] > v52[v23])
    {
      v23 = i;
    }
  }

  v25 = v51[3 * v23];
  v26 = 0.0;
  v27 = 0;
  v28 = v51[3 * v23 + 1] - v25;
  if (v28)
  {
    v29 = v28 >> 3;
    if (v29 <= 1)
    {
      v29 = 1;
    }

    do
    {
      v30 = *v25++;
      *v27.i32 = fmaxf(*v27.i32, sqrtf(vaddv_f32(vmul_f32(v30, v30))));
      --v29;
    }

    while (v29);
  }

  *a3 = v27.i32[0];
  v31 = v23 * 0.098175;
  v32 = dbl_1B33B1F50[v31 < 1.57079633] + v31;
  v33 = v32 * 10.186;
  *a4 = v31;
  v34 = v51[3 * v33];
  v35 = v51[3 * v33 + 1] - v34;
  if (v35)
  {
    v36 = v35 >> 3;
    if (v36 <= 1)
    {
      v36 = 1;
    }

    v26 = 0.0;
    do
    {
      v37 = *v34++;
      v27 = vmul_f32(v37, v37);
      v26 = fmaxf(v26, sqrtf(vaddv_f32(v27)));
      --v36;
    }

    while (v36);
  }

  *(a3 + 4) = v26;
  v38 = 0;
  if (a2)
  {
    v39 = a2;
    do
    {
      v40 = *a1++;
      v27.i32[1] = v40.i32[1];
      v38 = vadd_f32(v40, v38);
      --v39;
    }

    while (v39);
  }

  *v27.i32 = a2;
  *a5 = vdiv_f32(v38, vdup_lane_s32(v27, 0));
  v41 = 192;
  do
  {
    v42 = v50[v41 - 1];
    if (v42)
    {
      v50[v41] = v42;
      operator delete(v42);
    }

    v41 -= 3;
  }

  while (v41 * 8);
}

void sub_1B30F5E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  v22 = 1536;
  while (1)
  {
    v23 = *(&a21 + v22 - 24);
    if (v23)
    {
      *(&a21 + v22 - 16) = v23;
      operator delete(v23);
    }

    v22 -= 24;
    if (!v22)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void _transformAndAddMesh(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, __int16 a8, float a9, uint64_t a10, float *a11, uint64_t *a12, uint64_t *a13)
{
  v16 = a2;
  v73 = *MEMORY[0x1E69E9840];
  v17 = *(a6 + 8);
  v18 = *(v17 - 8);
  v19 = **(v18 + 64);
  v20 = (*(v19 + 6) - *(v19 + 5)) / *(v19 + 1);
  v21 = v20 + a2;
  if ((v20 + a2) >= 0x10000)
  {
    ggl::MeshVendor<ggl::BuildingPointyRoof::BuildingMesh>::_allocateNewMesh(a6);
  }

  v48 = ((v17 - *a6) >> 3) - 1;
  ggl::BufferData::resize(v19, v21);
  v22 = **(v18 + 64);
  ggl::BufferMemory::BufferMemory(v69);
  ggl::ResourceAccessor::accessIndexData(v70, 0, v22, v20, v21, 1, 0);
  ggl::BufferMemory::operator=(v69, v70);
  ggl::BufferMemory::~BufferMemory(v70);
  v23 = *(v18 + 96);
  v24 = (*(v23 + 6) - *(v23 + 5)) / *(v23 + 1);
  ggl::BufferData::resize(v23, v24 + a4);
  v46 = v24 + a4;
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v70, v23, v24, v24 + a4, 1, 0, 0);
  v25 = 0;
  v67 = *a12;
  v68 = 0;
  v65 = *a13;
  v66 = *(a13 + 2);
  do
  {
    *(v72 + v25) = *(a13 + v25 + 12) - *(a13 + v25);
    v25 += 4;
  }

  while (v25 != 12);
  v26 = 0;
  v63 = vmaxnm_f32(*&v72[0], 0);
  v64 = fmaxf(*(v72 + 2), 0.0);
  do
  {
    *(v72 + v26 * 4) = 65535.0 / v63.f32[v26];
    ++v26;
  }

  while (v26 != 3);
  if (v16)
  {
    v27 = 0;
    v28 = *v72;
    v29 = *(v72 + 4);
    v30 = vdup_n_s32(0x477FFF00u);
    v50 = vdupq_n_s32(0x42FE0000u);
    do
    {
      v31 = v16;
      v32 = a1 + 28 * v27;
      *&v72[0] = *v32;
      DWORD2(v72[0]) = *(v32 + 8);
      *&v53 = *(v32 + 12);
      DWORD2(v53) = *(v32 + 20);
      _transformPositionAndNormal(v72, &v53, a11, &v67, a9);
      for (i = 0; i != 12; i += 4)
      {
        *(v72 + i) = *(v72 + i) - *(&v65 + i);
      }

      v34 = vmaxnm_f32(vmul_f32(*(v72 + 4), v29), 0);
      v35 = vcgt_f32(v34, v30);
      v36 = v34.f32[0];
      v37 = fminf(fmaxf(*v72 * v28, 0.0), 65535.0);
      if (v35.i8[0])
      {
        LOWORD(v36) = -1;
      }

      if (v35.i8[4])
      {
        v38 = -1;
      }

      else
      {
        v38 = v34.f32[1];
      }

      v39.i64[0] = v53;
      v40 = v69[5] + 16 * v27;
      *v40 = v37;
      *(v40 + 2) = v36;
      *(v40 + 4) = v38;
      *(v40 + 6) = a8;
      v39.i32[2] = DWORD2(v53);
      v39.i32[3] = *(v32 + 24);
      *v39.f32 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(v39, v50)));
      *(v40 + 8) = vuzp1_s8(*v39.f32, *v39.f32).u32[0];
      ++v27;
      v16 = v31;
    }

    while (v27 != v31);
  }

  if (a4)
  {
    v41 = v71;
    do
    {
      v42 = *a3++;
      *v41++ = v42 + v20;
      --a4;
    }

    while (a4);
  }

  v61 = *a5;
  v62 = *(a5 + 2);
  v59 = *a5;
  v60 = *(a5 + 2);
  v57 = *(a5 + 12);
  v58 = *(a5 + 5);
  v55 = *(a5 + 12);
  v56 = *(a5 + 5);
  LODWORD(v59) = v57;
  LODWORD(v55) = v61;
  _transformPositionAndNormal(&v61, 0, a11, &v67, a9);
  _transformPositionAndNormal(&v59, 0, a11, &v67, a9);
  _transformPositionAndNormal(&v57, 0, a11, &v67, a9);
  _transformPositionAndNormal(&v55, 0, a11, &v67, a9);
  *&v43 = v61;
  *(&v43 + 1) = v59;
  *&v44 = v57;
  *(&v44 + 1) = v55;
  v72[0] = v43;
  v72[1] = v44;
  v45 = ggl::CullingGrid::intersectedCellsForRibbon(4uLL, v72, 1);
  *&v53 = v24;
  *(&v53 + 1) = v46;
  v54 = a10;
  _addRangeToList(a7, v45, v48, &v53);
  ggl::BufferMemory::~BufferMemory(v70);
  ggl::BufferMemory::~BufferMemory(v69);
}

void sub_1B30F6374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  ggl::BufferMemory::~BufferMemory((v36 - 256));
  ggl::BufferMemory::~BufferMemory(va);
  _Unwind_Resume(a1);
}

uint64_t ggl::MeshVendor<ggl::PrefilteredLine::PrefilteredLineMesh>::meshWithVertexCount(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *(a1 + 8);
  v4 = **(*(v3 - 8) + 64);
  if (((v4[6] - v4[5]) / v4[1] + a2) >= 0x10000)
  {
    ggl::MeshVendor<ggl::PrefilteredLine::PrefilteredLineMesh>::_allocateNewMesh(a1);
  }

  if (a3)
  {
    *a3 = ((v3 - *a1) >> 3) - 1;
    v3 = *(a1 + 8);
  }

  return *(v3 - 8);
}

void _transformPositionAndNormal(float *a1, uint64_t a2, float *a3, uint64_t a4, float a5)
{
  v9 = __sincosf_stret(a5);
  v24[0] = v9.__cosval;
  v24[1] = v9.__sinval;
  v24[3] = -v9.__sinval;
  v24[4] = v9.__cosval;
  v25 = xmmword_1B33B0710;
  v10 = a1[1];
  v11 = *a3 * *a1;
  v24[2] = 0.0;
  *a1 = v11;
  a1[1] = a3[1] * v10;
  a1[2] = a3[2] * a1[2];
  v12 = gm::operator*<float,3,3,1>(v24, a1);
  v13 = 0;
  *a1 = v12;
  *(a1 + 1) = v14;
  *(a1 + 2) = v15;
  do
  {
    *(&v26 + v13 * 4) = *(a4 + v13 * 4) + a1[v13];
    ++v13;
  }

  while (v13 != 3);
  v16 = v27;
  *a1 = v26;
  *(a1 + 2) = v16;
  if (a2)
  {
    v17 = gm::operator*<float,3,3,1>(v24, a2);
    v18 = 0;
    *a2 = v17;
    *(a2 + 4) = v19;
    *(a2 + 8) = v20;
    v21 = 0.0;
    do
    {
      v21 = v21 + (*(a2 + v18) * *(a2 + v18));
      v18 += 4;
    }

    while (v18 != 12);
    v22 = 0;
    v23 = 1.0 / sqrtf(v21);
    do
    {
      *(a2 + v22) = *(a2 + v22) * v23;
      v22 += 4;
    }

    while (v22 != 12);
  }
}

float gm::operator*<float,3,3,1>(float *a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = 0;
    v4 = 0.0;
    v5 = a1;
    do
    {
      v6 = *v5;
      v5 += 3;
      v4 = v4 + (*(a2 + v3) * v6);
      v3 += 4;
    }

    while (v3 != 12);
    *(&v8 + i) = v4;
    ++a1;
  }

  return v8;
}

void sub_1B30F7B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  ggl::BufferMemory::~BufferMemory(&a30);
  ggl::BufferMemory::~BufferMemory(&a36);
  ggl::BufferMemory::~BufferMemory((v49 - 200));
  ggl::BufferMemory::~BufferMemory(&a43);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(&a49);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear((v49 - 248));
  v51 = *(v49 - 224);
  if (v51)
  {
    operator delete(v51);
  }

  _Unwind_Resume(a1);
}

BOOL _shouldMakePointyRoofForBuilding(uint64_t a1)
{
  {
    v18 = a1;
    a1 = v18;
    if (v17)
    {
      _shouldMakePointyRoofForBuilding(GeoCodecsBuildingFootprintFeature *)::kMaxCos = 1048871919;
      a1 = v18;
    }
  }

  if (*(a1 + 96) != 1)
  {
    return 0;
  }

  v19 = 0;
  v1 = geo::codec::multiSectionFeaturePoints(a1, 0, &v19);
  if (v19 != 4)
  {
    return 0;
  }

  v2 = 0;
  shared_weak_owners = v1->__shared_weak_owners_;
  v3 = v1[1].__vftable;
  do
  {
    v5 = v3;
    v6 = vsub_f32(v3, shared_weak_owners);
    v3 = *(&v1->__vftable + v2);
    v7 = vsub_f32(v3, v5);
    v8 = vzip1_s32(v6, v7);
    v9 = vzip2_s32(v6, v7);
    v10 = vmla_f32(vmul_f32(v8, v8), v9, v9);
    v11 = vaddv_f32(vmul_f32(v7, v6)) / sqrtf(vmul_lane_f32(v10, v10, 1).f32[0]);
    v12 = fabsf(v11);
    if (v11 > 1.0)
    {
      v12 = 1.0;
    }

    if (v11 < -1.0)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = v12;
    }

    v14 = v13 <= *&_shouldMakePointyRoofForBuilding(GeoCodecsBuildingFootprintFeature *)::kMaxCos;
    v15 = v13 > *&_shouldMakePointyRoofForBuilding(GeoCodecsBuildingFootprintFeature *)::kMaxCos || v2 == 24;
    v2 += 8;
    shared_weak_owners = v5;
  }

  while (!v15);
  return v14;
}

void md::Triangulator<float>::triangulate(float32x4_t *a1, float *a2, unint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  a1[4].i64[1] = 0;
  if ((geo::Triangulator<float,unsigned short>::_triangulatePolygon(a1, a2, a3, &a1[5].i64[1]) & 1) == 0)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      md::Triangulator<float>::_describePoints(__p, a2, a3);
      if (v8 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      *buf = 136315138;
      v10 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "Triangulator failed to fully triangulate polygon: %s", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>::writePoints(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0x10000)
  {
    v10 = *(a1 + 146);
    if (a2 > ~v10)
    {
      v12 = *(a1 + 144) + 1;
      *(a1 + 144) = v12;
      *(a1 + 146) = 0;
      *(a1 + 148) = 0;
      ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(buf, **(*(*(a1 + 24) + 16 * v12) + 64), 0, *(*a1 + 8 * v12), a4);
      ggl::BufferMemory::operator=(a1 + 48, buf);
      ggl::BufferMemory::~BufferMemory(buf);
      ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(buf, *(*(*(a1 + 24) + 16 * *(a1 + 144)) + 96), 0, *(*a1 + 8 * *(a1 + 144) + 4), 1, 1, a4);
      ggl::BufferMemory::operator=(a1 + 96, buf);
      ggl::BufferMemory::~BufferMemory(buf);
      v10 = *(a1 + 146);
    }

    *buf = v10;
    v18 = a2 + v10;
    v13 = *(a1 + 148) + a3;
    v16[0] = *(a1 + 148);
    v16[1] = v13;
    v14 = *(a5 + 24);
    if (v14)
    {
      (*(*v14 + 48))(v14, buf, v16, a1 + 48, a1 + 96);
      *(a1 + 146) += a2;
      *(a1 + 148) += a3;
    }

    else
    {
      v15 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__value_func<void ()(gm::Range<unsigned long> const&,gm::Range<unsigned long> const&,ggl::DataWrite<ggl::PolygonBase::CompressedVbo> &,ggl::DataWrite<unsigned short> &)>::~__value_func[abi:nn200100](v15);
    }
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "MeshSet: Cannot write points for polygons: polygon is too big", buf, 2u);
    }
  }
}

uint64_t std::__function::__value_func<void ()(gm::Range<unsigned long> const&,gm::Range<unsigned long> const&,ggl::DataWrite<ggl::PolygonBase::CompressedVbo> &,ggl::DataWrite<unsigned short> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__emplace_unique_key_args<std::pair<void const*,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<void const*,unsigned long>&&>,std::tuple<>>(void *a1, unint64_t a2, uint64_t a3, _OWORD **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v4 >> 47) ^ v4);
  v6 = (a3 + 0x77FA823ACE0B5A40 * (v5 ^ (v5 >> 47)) + ((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) >> 2) - 0x61C8864680B583EBLL) ^ (0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47)));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (a3 + 0x77FA823ACE0B5A40 * (v5 ^ (v5 >> 47)) + ((0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47))) >> 2) - 0x61C8864680B583EBLL) ^ (0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47)));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_22;
    }

LABEL_21:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  if (v11[2] != a2 || v11[3] != a3)
  {
    goto LABEL_21;
  }

  return v11;
}

uint64_t std::__function::__value_func<void ()(gm::Range<unsigned long> const&,gm::Range<unsigned long> const&,ggl::DataWrite<ggl::BuildingFlatStroke::DefaultVbo> &,ggl::DataWrite<unsigned short> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__shared_ptr_emplace<ggl::BuildingFlatStroke::BuildingFlatStrokeMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30FB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B30FA57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  md::PolygonSection::~PolygonSection(&a61);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(&STACK[0x238]);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear((v61 - 256));
  _Unwind_Resume(a1);
}

void md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>::prepareSpaceForPoints(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < 0x10000)
  {
    v7 = *(a1 + 8);
    v8 = *(v7 - 8);
    if (a2 <= ~v8)
    {
      *(v7 - 8) = v8 + a2;
      *(v7 - 4) += a3;
    }

    else
    {
      v9 = *(a1 + 16);
      if (v7 >= v9)
      {
        v11 = *a1;
        v12 = v7 - *a1;
        v13 = v12 >> 3;
        v14 = (v12 >> 3) + 1;
        if (v14 >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v15 = v9 - v11;
        if (v15 >> 2 > v14)
        {
          v14 = v15 >> 2;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,unsigned int>>>(v16);
        }

        v17 = 8 * v13;
        *v17 = a2;
        *(v17 + 4) = a3;
        v10 = 8 * v13 + 8;
        memcpy(0, v11, v12);
        v18 = *a1;
        *a1 = 0;
        *(a1 + 8) = v10;
        *(a1 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = a2;
        *(v7 + 4) = a3;
        v10 = v7 + 8;
      }

      *(a1 + 8) = v10;
    }

    v19 = *(a1 + 152);
    v21 = *(a1 + 168);
    v20 = *(a1 + 176);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v21 && *v21 == v19 && (*(v19 + 40) & 1) == 0)
    {
      v22 = *(v19 + 8) + a3;
      *v19 += 8 * a2;
      *(v19 + 8) = v22;
      v23 = v21[3] + a3;
      v21[2] += 8 * a2;
      v21[3] = v23;
    }

    if (v20)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    }
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v3 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v24[0] = 0;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_ERROR, "MeshSet: Cannot prepare space polygons points: polygon is too large", v24, 2u);
    }
  }
}

void std::vector<md::Edge>::reserve(void *a1, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void sub_1B30FA980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B30FAA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B30FAB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B30FABE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B30FACB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1B30FB2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a31);
  }

  std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](v33 + 20, 0);
  ggl::BufferMemory::~BufferMemory((v33 + 12));
  ggl::BufferMemory::~BufferMemory((v33 + 6));
  *(v34 - 128) = v32;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100]((v34 - 128));
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ggl::MeshVendor<ggl::PrefilteredLine::PrefilteredLineMesh>::MeshVendor(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  ggl::MeshVendor<ggl::PrefilteredLine::PrefilteredLineMesh>::_allocateNewMesh(a1);
}

void sub_1B30FB40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::unique_ptr<ggl::PrefilteredLine::PrefilteredLineMesh>,geo::allocator_adapter<std::unique_ptr<ggl::PrefilteredLine::PrefilteredLineMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::BuildingFlatStroke::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30EF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

float std::__function::__func<md::HeightMeshBuilder::createHeightFunction(md::ElevationRaster const*)::$_0,std::allocator<md::HeightMeshBuilder::createHeightFunction(md::ElevationRaster const*)::$_0>,float ()(geo::Mercator2<double> const&)>::operator()(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  v3 = 1 << *(v2 + 57);
  v4 = 1.0 / v3;
  v5 = (*a2 - v4 * HIDWORD(*(v2 + 60))) * v3;
  v6 = -(a2[1] - v4 * (v3 + ~*(v2 + 60))) * v3;
  v7 = md::ElevationRaster::bilinearSample(v2, (*(v2 + 32) - 1) * v5, (*(v2 + 40) - 1) + (v6 * (*(v2 + 40) - 1)));
  result = *&v7;
  if (!HIDWORD(v7))
  {
    return 0.0;
  }

  return result;
}

uint64_t std::__function::__func<md::HeightMeshBuilder::createHeightFunction(md::ElevationRaster const*)::$_0,std::allocator<md::HeightMeshBuilder::createHeightFunction(md::ElevationRaster const*)::$_0>,float ()(geo::Mercator2<double> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A310B0;
  a2[1] = v2;
  return result;
}

uint64_t md::HeightMeshBuilder::getHeightMesh(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5)
{
  v105 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 1);
  __powidf2();
  v12 = v11;
  v97 = 0;
  if (a3)
  {
    BYTE1(v92) = v10;
    v13 = *(a2 + 8);
    DWORD1(v92) = *(a2 + 4);
    DWORD2(v92) = v13;
    LOBYTE(v92) = *a2;
    v93 = *(a2 + 16);
    v94 = *(a2 + 24);
    v95[0] = &unk_1F2A310B0;
    v95[1] = a3;
    v95[3] = v95;
    v98[1] = v10;
    *&v98[4] = DWORD1(v92);
    *&v98[8] = v13;
    v98[0] = v92;
    *&v98[16] = v93;
    LOBYTE(v99) = v94;
    v102 = &v100;
    v100 = &unk_1F2A310B0;
    v101 = a3;
    operator new();
  }

  *v98 = &unk_1F2A31188;
  v99 = COERCE_DOUBLE(v98);
  std::__function::__value_func<float ()(gm::Matrix<float,2,1> const&)>::swap[abi:nn200100](v98, v96);
  std::__function::__value_func<float ()(gm::Matrix<float,2,1> const&)>::~__value_func[abi:nn200100](v98);
  v14 = *a5;
  v92 = 0uLL;
  v93 = 0;
  v78 = a4 * a4;
  if (v14)
  {
    v15 = (a4 + 4) * a4;
  }

  else
  {
    v15 = a4 * a4;
  }

  v103 = 0uLL;
  v104 = 0;
  v90 = 0uLL;
  v91 = 0;
  std::vector<gm::Matrix<float,3,1>>::resize(&v92, v15);
  v16 = a4 - 1;
  v17 = 6 * (a4 - 1);
  if (v14)
  {
    v17 += 24;
  }

  std::vector<unsigned short>::resize(&v90, v17 * v16);
  if (a5[2] == 1)
  {
    std::vector<gm::Matrix<float,2,1>>::resize(&v103, v15);
  }

  v81 = a2;
  v77 = a1;
  v18.f64[0] = v12 * 0.0000000249532021;
  v19 = v12 * 0.0000000249532021;
  v20 = a4;
  if (a4)
  {
    v21 = 0;
    v22 = 0;
    v23 = 1.0 / (a4 + -1.0);
    v82 = v92;
    v80 = v90;
    v24 = a4 - 1;
    do
    {
      v25 = 0;
      *v18.f64 = v23 * v21;
      v83 = v18;
      v26 = v21 * v20;
      v27 = v20;
      v79 = v21 + 1;
      v28 = (v21 + 1) * v20;
      do
      {
        v29.f64[1] = v83.f64[1];
        v87.f32[0] = v23 * v25;
        v87.i32[1] = LODWORD(v83.f64[0]);
        v30.f32[0] = v87.f32[0];
        v30.i32[1] = LODWORD(v83.f64[0]);
        *&v29.f64[0] = vmla_n_f32(*(a5 + 4), v30, *(a5 + 3));
        v84 = v29;
        if (a5[1] == 1)
        {
          if (!v97)
          {
            goto LABEL_53;
          }

          v31 = v22;
          v32 = (*(*v97 + 48))(v97, &v87);
          v33 = 1 << *(v81 + 1);
          v34.i64[0] = *(v81 + 8);
          v34.i64[1] = v33 + ~*(v81 + 4);
          *v98 = vmulq_n_f64(vaddq_f64(vcvtq_f64_f32(v87), vcvtq_f64_s64(v34)), 1.0 / v33);
          *&v98[16] = v32;
          v18.f64[0] = geo::Mercator3<double>::toGeocentric<double>(v98, v85.f64);
          if (!(v25 | v21))
          {
            v18 = v85;
            v88 = v85;
            v89 = v86;
          }

          v35 = 0;
          v22 = v31;
          do
          {
            v85.f64[v35] = v85.f64[v35] - v88.f64[v35];
            ++v35;
          }

          while (v35 != 3);
          v36 = v86;
          v37 = (v82 + 12 * (v25 + v26));
          *v37 = vcvt_f32_f64(v85);
          v37[1].f32[0] = v36;
          v16 = v24;
          if (a5[2] == 1)
          {
            v38 = v103 + 8 * (v25 + v26);
            *v38 = LODWORD(v84.f64[0]);
            *(v38 + 4) = 1.0 - *(v84.f64 + 1);
          }
        }

        else
        {
          if (!v97)
          {
LABEL_53:
            std::__throw_bad_function_call[abi:nn200100]();
          }

          v39 = v22;
          *v18.f64 = (*(*v97 + 48))(v97, &v87);
          v40 = v82 + 12 * (v25 + v26);
          *v40 = v23 * v25;
          *(v40 + 4) = LODWORD(v83.f64[0]);
          *(v40 + 8) = *v18.f64 * v19;
          v22 = v39;
          v16 = v24;
          if (a5[2] == 1)
          {
            v18 = v84;
            *(v103 + 8 * (v25 + v26)) = v84.f64[0];
          }
        }

        if (v21 >= v16 || v25 >= v16)
        {
          ++v25;
        }

        else
        {
          v41 = v25 + v26;
          v42 = (v80 + 2 * v22);
          *v42 = v25 + v26;
          v43 = v25++ + v28;
          v42[1] = v25 + v28;
          v42[2] = v43;
          v42[3] = v25 + v26;
          v42[4] = v25 + v28;
          v22 += 6;
          v42[5] = v41;
        }
      }

      while (v25 != v27);
      ++v21;
      v20 = v27;
    }

    while (v79 != v27);
  }

  else
  {
    v22 = 0;
  }

  v44 = *a5;
  v45 = 40075016.7 / (1 << *(v81 + 1));
  v46 = v45 * 0.015625;
  *v98 = v46;
  *&v98[8] = v88;
  if (v44 == 1)
  {
    v47 = 0.015625;
  }

  else
  {
    v47 = 0.0039062;
  }

  v99 = v89;
  v100 = a5;
  *&v101 = v19;
  if (v44)
  {
    v48 = v20;
    v49 = v22;
    v50 = v45 * v47;
    v51 = v92;
    v52 = v78;
    LODWORD(v85.f64[0]) = 0;
    *(v85.f64 + 1) = v47;
    v53 = -v50;
    v87.i32[0] = 0;
    v87.f32[1] = -v50;
    md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_2::operator()(v98, v92, v92 + 12 * (v78 & 0xFFFD), &v85, v103, (v103 + 8 * (v78 & 0xFFFD)), &v87);
    if (v48 >= 2)
    {
      v54 = 0;
      v55 = (v90 + 2 * v49 + 6);
      v56 = 2;
      v57 = v78;
      do
      {
        v52 = v57 + 1;
        LODWORD(v85.f64[0]) = 0;
        *(v85.f64 + 1) = v47;
        v87.i32[0] = 0;
        v87.f32[1] = -v50;
        md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_2::operator()(v98, (v51 + 12 * (v54 + 1)), v51 + 12 * (v57 + 1), &v85, (v103 + 8 * (v54 + 1)), (v103 + 8 * (v57 + 1)), &v87);
        *(v55 - 3) = v54;
        *(v55 - 2) = v57;
        *(v55 - 1) = v57 + 1;
        *v55 = v57 + 1;
        v49 += 6;
        v58 = v56++;
        v55[1] = v54 + 1;
        v55[2] = v54;
        v55 += 6;
        ++v54;
        ++v57;
      }

      while (v58 < v48);
    }

    v59 = v52 + 1;
    *v85.f64 = -v47;
    HIDWORD(v85.f64[0]) = 0;
    v87 = LODWORD(v50);
    md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_2::operator()(v98, (v51 + 12 * v16), v51 + 12 * (v52 + 1), &v85, (v103 + 8 * v16), (v103 + 8 * (v52 + 1)), &v87);
    if (v48 < 2)
    {
      v63 = v52 + 1;
      v60 = v49;
    }

    else
    {
      v60 = v49;
      v61 = (v90 + 2 * v49 + 6);
      v62 = 2;
      do
      {
        v63 = v59 + 1;
        *&v85.f64[0] = COERCE_UNSIGNED_INT(-v47);
        v87 = LODWORD(v50);
        md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_2::operator()(v98, (v51 + 12 * (v16 + v48)), v51 + 12 * (v59 + 1), &v85, (v103 + 8 * (v16 + v48)), (v103 + 8 * (v59 + 1)), &v87);
        *(v61 - 3) = v16;
        *(v61 - 2) = v59;
        *(v61 - 1) = v59 + 1;
        *v61 = v59 + 1;
        v60 += 6;
        v64 = v62++;
        v61[1] = v16 + v48;
        v61[2] = v16;
        v61 += 6;
        LODWORD(v16) = v16 + v48;
        ++v59;
      }

      while (v64 < v48);
    }

    v65 = v78 - 1;
    v66 = v63 + 1;
    LODWORD(v85.f64[0]) = 0;
    *(v85.f64 + 1) = -v47;
    v87.i32[0] = 0;
    v87.f32[1] = v50;
    md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_2::operator()(v98, (v51 + 12 * (v78 - 1)), v51 + 12 * (v63 + 1), &v85, (v103 + 8 * (v78 - 1)), (v103 + 8 * (v63 + 1)), &v87);
    if (v48 < 2)
    {
      v69 = v63 + 1;
    }

    else
    {
      v67 = (v90 + 2 * v60 + 6);
      v68 = 2;
      do
      {
        v69 = v66 + 1;
        LODWORD(v85.f64[0]) = 0;
        *(v85.f64 + 1) = -v47;
        v87.i32[0] = 0;
        v87.f32[1] = v50;
        md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_2::operator()(v98, (v51 + 12 * (v65 - 1)), v51 + 12 * (v66 + 1), &v85, (v103 + 8 * (v65 - 1)), (v103 + 8 * (v66 + 1)), &v87);
        *(v67 - 3) = v65;
        *(v67 - 2) = v66;
        *(v67 - 1) = v66 + 1;
        *v67 = v66 + 1;
        v60 += 6;
        v70 = v68++;
        v67[1] = v65 - 1;
        v67[2] = v65;
        v67 += 6;
        --v65;
        ++v66;
      }

      while (v70 < v48);
    }

    v71 = v78 - v48;
    v72 = v69 + 1;
    *&v85.f64[0] = LODWORD(v47);
    v87 = LODWORD(v53);
    md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_2::operator()(v98, (v51 + 12 * (v78 - v48)), v51 + 12 * (v69 + 1), &v85, (v103 + 8 * (v78 - v48)), (v103 + 8 * (v69 + 1)), &v87);
    if (v48 >= 2)
    {
      v73 = (v90 + 2 * v60 + 6);
      v74 = 2;
      do
      {
        *&v85.f64[0] = LODWORD(v47);
        v87 = LODWORD(v53);
        md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_2::operator()(v98, (v51 + 12 * (v71 - v48)), v51 + 12 * (v72 + 1), &v85, (v103 + 8 * (v71 - v48)), (v103 + 8 * (v72 + 1)), &v87);
        *(v73 - 3) = v71;
        *(v73 - 2) = v72;
        *(v73 - 1) = v72 + 1;
        *v73 = v72 + 1;
        v75 = v74++;
        v73[1] = v71 - v48;
        v73[2] = v71;
        v73 += 6;
        v71 -= v48;
        ++v72;
      }

      while (v75 < v48);
    }
  }

  *v77 = v92;
  *(v77 + 16) = v93;
  *(v77 + 24) = v90;
  *(v77 + 40) = v91;
  *(v77 + 48) = v103;
  *(v77 + 64) = v104;
  *(v77 + 72) = v88;
  *(v77 + 88) = v89;
  return std::__function::__value_func<float ()(gm::Matrix<float,2,1> const&)>::~__value_func[abi:nn200100](v96);
}

void sub_1B30FC1E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  std::__function::__value_func<float ()(geo::Mercator2<double> const&)>::~__value_func[abi:nn200100](v43);
  std::__function::__value_func<float ()(geo::Mercator2<double> const&)>::~__value_func[abi:nn200100](v42);
  std::__function::__value_func<float ()(gm::Matrix<float,2,1> const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<float ()(geo::Mercator2<double> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::__function::__value_func<float ()(gm::Matrix<float,2,1> const&)>::swap[abi:nn200100](void *result, void *a2)
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

uint64_t std::__function::__value_func<float ()(gm::Matrix<float,2,1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

float32x2_t md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_2::operator()(uint64_t a1, float32x2_t *a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6, float32x2_t *a7)
{
  for (i = 0; i != 3; ++i)
  {
    *(a3 + i * 4) = a2->i32[i];
  }

  v14 = *(a1 + 32);
  if (v14[1] == 1)
  {
    v15 = 0;
    v16 = a2[1].f32[0];
    v41 = vcvtq_f64_f32(*a2);
    v42 = v16;
    do
    {
      *(&v45 + v15 * 8) = v41.f64[v15] + *(a1 + v15 * 8 + 8);
      ++v15;
    }

    while (v15 != 3);
    v43 = v45;
    v44 = v46;
    v45 = 0uLL;
    v46 = 0.0;
    geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(&v43, &v45);
    v17 = *(&v45 + 1);
    v18 = v46;
    v19 = tan(*&v45 * 0.5 + 0.785398163);
    v20 = log(v19);
    v21 = v17 * 0.159154943 + 0.5;
    v22 = v20 * 0.159154943 + 0.5;
    v23 = *v14;
    if (v23 == 2)
    {
      v21 = v21 + a7->f32[0];
      v22 = v22 + a7->f32[1];
    }

    else if (v23 == 1)
    {
      v18 = v18 - *a1;
    }

    v25 = v21 * 6.28318531;
    v26 = exp(v22 * 6.28318531 + -3.14159265);
    v27 = atan(v26) * 2.0 + -1.57079633;
    v28 = fmod(v25, 6.28318531);
    v29 = fmod(v28 + 6.28318531, 6.28318531) + -3.14159265;
    v30 = __sincos_stret(v27);
    v31 = 6378137.0 / sqrt(v30.__sinval * v30.__sinval * -0.00669437999 + 1.0);
    v32 = (v31 + v18) * v30.__cosval;
    v33 = __sincos_stret(v29);
    v34 = 0;
    v41.f64[0] = v32 * v33.__cosval;
    v41.f64[1] = v32 * v33.__sinval;
    v42 = (v18 + v31 * 0.99330562) * v30.__sinval;
    do
    {
      *(&v45 + v34 * 8) = v41.f64[v34] - *(a1 + 8 + v34 * 8);
      ++v34;
    }

    while (v34 != 3);
    for (j = 0; j != 3; ++j)
    {
      v36 = *(&v45 + j);
      *(&v39 + j) = v36;
    }

    *a3 = v39;
    *(a3 + 8) = v40;
  }

  else
  {
    *&v45 = 0;
    DWORD2(v45) = 0;
    v24 = *v14;
    if (v24 == 2)
    {
      *&v45 = vmul_n_f32(*a7, *(a1 + 40));
    }

    else if (v24 == 1)
    {
      *(&v45 + 2) = -(*a1 * *(a1 + 40));
    }

    for (k = 0; k != 12; k += 4)
    {
      *(a3 + k) = *(a3 + k) + *(&v45 + k);
    }
  }

  result = vadd_f32(*a4, *a5);
  *a6 = result;
  return result;
}

void std::__function::__func<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0,std::allocator<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0>,float ()(gm::Matrix<float,2,1> const&)>::operator()(uint64_t a1, float32x2_t *a2)
{
  v2 = 1 << *(a1 + 9);
  v3.i64[0] = *(a1 + 16);
  v3.i64[1] = v2 + ~*(a1 + 12);
  v6 = vmulq_n_f64(vaddq_f64(vcvtq_f64_f32(*a2), vcvtq_f64_s64(v3)), 1.0 / v2);
  v4 = *(a1 + 64);
  if (v4)
  {
    (*(*v4 + 48))(v4, &v6);
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0,std::allocator<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0>,float ()(gm::Matrix<float,2,1> const&)>::destroy_deallocate(v5);
  }
}

void std::__function::__func<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0,std::allocator<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0>,float ()(gm::Matrix<float,2,1> const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<float ()(geo::Mercator2<double> const&)>::~__value_func[abi:nn200100](a1 + 40);

  operator delete(a1);
}

uint64_t std::__function::__func<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0,std::allocator<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0>,float ()(gm::Matrix<float,2,1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A31140;
  *(a2 + 32) = 0;
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  return std::__function::__value_func<float ()(geo::Mercator2<double> const&)>::__value_func[abi:nn200100](a2 + 40, a1 + 40);
}

uint64_t std::__function::__value_func<float ()(geo::Mercator2<double> const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0,std::allocator<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0>,float ()(gm::Matrix<float,2,1> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F2A31140;
  std::__function::__value_func<float ()(geo::Mercator2<double> const&)>::~__value_func[abi:nn200100]((a1 + 5));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0,std::allocator<md::HeightMeshBuilder::getHeightMesh(geo::QuadTile const&,md::ElevationRaster const*,unsigned long,md::HeightMeshConfig const&)::$_0>,float ()(gm::Matrix<float,2,1> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F2A31140;
  std::__function::__value_func<float ()(geo::Mercator2<double> const&)>::~__value_func[abi:nn200100]((a1 + 5));
  return a1;
}

void sub_1B30FCFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4UV>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A311D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 md::imageSampleBilinear<float>(uint64_t a1, int a2, unsigned int a3, unsigned int a4, float32_t a5, float32x2_t a6)
{
  v6 = vadd_s32(__PAIR64__(a3, a4), -1);
  a6.f32[1] = a5;
  v7 = vmul_f32(a6, vcvt_f32_s32(v6));
  v8 = vcvt_s32_f32(vrndm_f32(v7));
  v9 = vmin_s32(vmax_s32(v8, 0), v6);
  v10 = vmin_s32(vadd_s32(vmax_s32(v8, -1), 0x100000001), v6);
  v11 = 1;
  v12 = 0.0;
  result.n128_u32[0] = 0;
  v14 = 0.0;
  v15 = 0.0;
  switch(a2)
  {
    case 0:
    case 22:
    case 23:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
      v11 = 0;
      goto LABEL_8;
    case 3:
    case 4:
    case 6:
    case 19:
    case 24:
    case 27:
    case 42:
    case 43:
      v11 = 2;
      goto LABEL_8;
    case 5:
    case 7:
    case 8:
    case 12:
    case 13:
    case 14:
    case 15:
    case 20:
    case 26:
      v11 = 4;
      goto LABEL_8;
    case 9:
    case 16:
    case 17:
      v11 = 8;
      goto LABEL_8;
    case 10:
    case 11:
      v11 = 3;
      goto LABEL_8;
    case 18:
    case 21:
      v11 = 16;
      goto LABEL_8;
    case 58:
      goto LABEL_41;
    default:
LABEL_8:
      if (a2 == 12 || (result.n128_u32[0] = 0, a2 == 2))
      {
        result.n128_u8[0] = *(a1 + v11 * (v9.i32[1] + v9.i32[0] * a3));
        result.n128_f32[0] = result.n128_u32[0] * 0.0039216;
      }

      v16 = 1;
      v12 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      switch(a2)
      {
        case 0:
        case 22:
        case 23:
        case 28:
        case 29:
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
          v16 = 0;
          goto LABEL_18;
        case 3:
        case 4:
        case 6:
        case 19:
        case 24:
        case 27:
        case 42:
        case 43:
          v16 = 2;
          goto LABEL_18;
        case 5:
        case 7:
        case 8:
        case 12:
        case 13:
        case 14:
        case 15:
        case 20:
        case 26:
          v16 = 4;
          goto LABEL_18;
        case 9:
        case 16:
        case 17:
          v16 = 8;
          goto LABEL_18;
        case 10:
        case 11:
          v16 = 3;
          goto LABEL_18;
        case 18:
        case 21:
          v16 = 16;
          goto LABEL_18;
        case 58:
          break;
        default:
LABEL_18:
          if (a2 == 12 || (v14 = 0.0, a2 == 2))
          {
            LOBYTE(v14) = *(a1 + v16 * (v9.i32[1] + v10.i32[0] * a3));
            v14 = LODWORD(v14) * 0.0039216;
          }

          v17 = 1;
          v12 = 0.0;
          v15 = 0.0;
          switch(a2)
          {
            case 0:
            case 22:
            case 23:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
              v17 = 0;
              goto LABEL_28;
            case 3:
            case 4:
            case 6:
            case 19:
            case 24:
            case 27:
            case 42:
            case 43:
              v17 = 2;
              goto LABEL_28;
            case 5:
            case 7:
            case 8:
            case 12:
            case 13:
            case 14:
            case 15:
            case 20:
            case 26:
              v17 = 4;
              goto LABEL_28;
            case 9:
            case 16:
            case 17:
              v17 = 8;
              goto LABEL_28;
            case 10:
            case 11:
              v17 = 3;
              goto LABEL_28;
            case 18:
            case 21:
              v17 = 16;
              goto LABEL_28;
            case 58:
              goto LABEL_41;
            default:
LABEL_28:
              if (a2 == 12 || (v12 = 0.0, a2 == 2))
              {
                LOBYTE(v12) = *(a1 + v17 * (v10.i32[1] + v9.i32[0] * a3));
                v12 = LODWORD(v12) * 0.0039216;
              }

              v15 = 0.0;
              v18 = 1;
              switch(a2)
              {
                case 0:
                case 22:
                case 23:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                  v18 = 0;
                  goto LABEL_38;
                case 3:
                case 4:
                case 6:
                case 19:
                case 24:
                case 27:
                case 42:
                case 43:
                  v18 = 2;
                  goto LABEL_38;
                case 5:
                case 7:
                case 8:
                case 12:
                case 13:
                case 14:
                case 15:
                case 20:
                case 26:
                  v18 = 4;
                  goto LABEL_38;
                case 9:
                case 16:
                case 17:
                  v18 = 8;
                  goto LABEL_38;
                case 10:
                case 11:
                  v18 = 3;
                  goto LABEL_38;
                case 18:
                case 21:
                  v18 = 16;
                  goto LABEL_38;
                case 58:
                  goto LABEL_41;
                default:
LABEL_38:
                  if (a2 == 12 || a2 == 2)
                  {
                    LOBYTE(v15) = *(a1 + v18 * (v10.i32[1] + v10.i32[0] * a3));
                    v15 = LODWORD(v15) * 0.0039216;
                  }

                  break;
              }

              break;
          }

          break;
      }

LABEL_41:
      v19 = vceq_s32(v9, v10);
      if (v19.i32[1] & v19.i32[0])
      {
        return result;
      }

      if (v19.i8[4])
      {
        v20 = v7.f32[0] - v9.i32[0];
        v7.f32[0] = v10.i32[0] - v7.f32[0];
      }

      else
      {
        if (v19.i8[0])
        {
          result.n128_f32[0] = (v12 * (v7.f32[1] - v9.i32[1])) + (result.n128_f32[0] * (v10.i32[1] - v7.f32[1]));
          return result;
        }

        v21 = v7.f32[1] - v9.i32[1];
        v20 = v7.f32[0] - v9.i32[0];
        v7.f32[0] = v10.i32[0] - v7.f32[0];
        v22 = v10.i32[1] - v7.f32[1];
        v14 = (v14 * v22) + (v15 * v21);
        result.n128_f32[0] = (v12 * v21) + (result.n128_f32[0] * v22);
      }

      result.n128_f32[0] = (result.n128_f32[0] * v7.f32[0]) + (v14 * v20);
      return result;
  }
}

void *md::HeightMeshBuilder::getImageOfType(void *result, void *a2, unsigned int a3)
{
  v3 = a2[103];
  v4 = a2[102];
  v5 = v3 - v4;
  if (v3 == v4)
  {
    goto LABEL_15;
  }

  v6 = 0;
  v7 = v5 >> 4;
  v8 = a2[59];
  v9 = v7 <= 1 ? 1 : v7;
  while (1)
  {
    v10 = *v8;
    v8 += 104;
    if (v10 == a3)
    {
      break;
    }

    if (v9 == ++v6)
    {
      goto LABEL_15;
    }
  }

  if (v7 > v6 && a3 <= 5 && ((1 << a3) & 0x34) != 0 && (v11 = (v4 + 16 * v6), (v12 = *v11) != 0))
  {
    v13 = v11[1];
    *result = v12;
    result[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_15:
    *result = 0;
    result[1] = 0;
  }

  return result;
}

float32_t md::imageSampleBilinear<geo::Color<float,4,(geo::ColorSpace)0>>(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, float32_t a6, float32x2_t a7)
{
  v7 = a4;
  v8 = a3;
  v11 = vadd_s32(__PAIR64__(a4, a5), -1);
  a7.f32[1] = a6;
  v21 = vmul_f32(a7, vcvt_f32_s32(v11));
  v12 = vcvt_s32_f32(vrndm_f32(v21));
  v22 = vmin_s32(vmax_s32(v12, 0), v11);
  v23 = vmin_s32(vadd_s32(vmax_s32(v12, -1), 0x100000001), v11);
  md::imageReadPixel(a2, a3, a4, v22.i32[1], v22.i32[0], &v27, v23);
  md::imageReadPixel(a2, v8, v7, v22.i32[1], v23.i32[0], &v26, v23);
  v13 = md::imageReadPixel(a2, v8, v7, v23.i32[1], v22.i32[0], &v25, v23);
  md::imageReadPixel(a2, v8, v7, v23.i32[1], v23.i32[0], &v24, v13);
  v14 = vceq_s32(v22, v23);
  if (v14.i32[1] & v14.i32[0])
  {
    v15 = v27;
LABEL_5:
    *a1 = v15;
    return v15.f32[0];
  }

  if (v14.i8[4])
  {
    v15 = vmlaq_n_f32(vmulq_n_f32(v26, v21.f32[0] - v22.i32[0]), v27, v23.i32[0] - v21.f32[0]);
    goto LABEL_5;
  }

  if (v14.i8[0])
  {
    v15.f32[0] = v21.f32[1] - v22.i32[1];
    *a1 = vmlaq_n_f32(vmulq_n_f32(v27, v23.i32[1] - v21.f32[1]), v25, v15.f32[0]);
  }

  else
  {
    v16 = v21.f32[0] - v22.i32[0];
    v17 = v23.i32[0] - v21.f32[0];
    v18 = v23.i32[1] - v21.f32[1];
    v19 = v18 * v16;
    v15.f32[0] = v17 * v18;
    *a1 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v24, v16 * (v21.f32[1] - v22.i32[1])), v25, v17 * (v21.f32[1] - v22.i32[1])), v26, v19), v27, v15.f32[0]);
  }

  return v15.f32[0];
}

uint8x8_t md::imageReadPixel(uint64_t a1, int a2, int a3, int a4, int a5, _OWORD *a6, uint8x8_t result)
{
  v8 = 1;
  switch(a2)
  {
    case 0:
    case 22:
    case 23:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
      v8 = 0;
      goto LABEL_8;
    case 3:
    case 4:
    case 6:
    case 19:
    case 24:
    case 27:
    case 42:
    case 43:
      v8 = 2;
      goto LABEL_8;
    case 5:
    case 7:
    case 8:
    case 12:
    case 13:
    case 14:
    case 15:
    case 20:
    case 26:
      v8 = 4;
      goto LABEL_8;
    case 9:
    case 16:
    case 17:
      v8 = 8;
      goto LABEL_8;
    case 10:
    case 11:
      v8 = 3;
      goto LABEL_8;
    case 18:
    case 21:
      v8 = 16;
      goto LABEL_8;
    case 58:
      return result;
    default:
LABEL_8:
      v9 = v8 * (a4 + a5 * a3);
      if (a2 == 24)
      {
        v10 = *(a1 + v9);
        v11.f32[0] = (v10 >> 11) * 0.032258;
        v11.f32[1] = ((v10 >> 5) & 0x3F) * 0.015873;
        v11.f32[2] = (v10 & 0x1F) * 0.032258;
        v11.i32[3] = 1065353216;
      }

      else
      {
        if (a2 != 12)
        {
          return result;
        }

        result.i32[0] = *(a1 + v9);
        v11 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(result))), vdupq_n_s32(0x3B808081u));
      }

      geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&v12, &v11);
      result = v12;
      *a6 = v12;
      return result;
  }
}

void md::HeightMeshBuilder::computeBounds(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4)
{
  *a1 = xmmword_1B33AFF10;
  *(a1 + 16) = 0x80000000800000;
  ggl::DataAccess<ggl::DaVinci::InstanceTransform>::DataAccess(v18, a4, 0, (a4[6] - a4[5]) / a4[1], 0);
  v7 = *a2;
  v8 = a2[1];
  if (*a2 < v8)
  {
    v9 = *(a3 + 128);
    v10 = v18[5];
    do
    {
      v11 = 0;
      v12 = (v10 + 32 * *(v9 + 2 * v7));
      v13 = *(v12 + 2);
      v16 = *v12;
      v17 = v13;
      do
      {
        v14 = (a1 + v11);
        v15 = *(&v16 + v11);
        *v14 = fminf(v15, *(a1 + v11));
        v14[3] = fmaxf(*(a1 + v11 + 12), v15);
        v11 += 4;
      }

      while (v11 != 12);
      ++v7;
    }

    while (v7 != v8);
  }

  ggl::BufferMemory::~BufferMemory(v18);
}

uint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::DaVinciPipelineStateManager(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 52) = xmmword_1B33B0760;
  *(a1 + 68) = 0;
  *(a1 + 84) = 0;
  *(a1 + 76) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  *__p = 0u;
  *v4 = 0u;
  v5 = 1065353216;
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__move_assign(a1 + 96, __p);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v4[0]);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return a1;
}

uint64_t md::DaVinciPipelineStateManager<ggl::DaVinci::GroundPipelineState,std::shared_ptr<ggl::DaVinciGroundShader>,ggl::ColorBufferOperation>::DaVinciPipelineStateManager(uint64_t a1, uint64_t *a2, __int128 *a3, _OWORD *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = a4[1];
  *(a1 + 16) = *a4;
  *(a1 + 32) = v5;
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  *(a1 + 96) = 0u;
  v9 = a1 + 96;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 48) = v6;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1065353216;
  v10 = *a2;
  v11 = a2[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v12 = *(a1 + 8);
    *a1 = v10;
    *(a1 + 8) = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }
  }

  else
  {
    *a1 = v10;
    *(a1 + 8) = 0;
  }

  *__p = 0u;
  *v15 = 0u;
  v16 = 1065353216;
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__move_assign(v9, __p);
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v15[0]);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return a1;
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A32270;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DownscaleTextureComputeShaderState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A32238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle> *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Tile::Clipping> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::DecalPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void md::DaVinciPipelineStateManager<ggl::DaVinci::DecalPipelineState,std::shared_ptr<ggl::DaVinciDecalShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(uint64_t *a1, uint64_t *a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, __int128 a17, char a18, char a19, char a20, char a21, char a22, char a23)
{
  v53 = *MEMORY[0x1E69E9840];
  memset(v52, 0, sizeof(v52));
  v33[0] = a3;
  v45 = 0;
  v33[1] = a4;
  v33[2] = a5;
  v33[3] = a6;
  v33[4] = a7;
  v33[5] = a8;
  v33[6] = a9;
  v33[7] = a10;
  v33[8] = a11;
  v33[9] = a12;
  v33[10] = a13;
  v33[11] = a14;
  v33[12] = a15;
  v33[13] = a16;
  v33[14] = a17;
  v34 = BYTE1(a17);
  v35 = BYTE2(a17);
  v36 = BYTE3(a17);
  v37 = BYTE4(a17);
  v38 = *(&a17 + 5);
  v39 = a5 | a6;
  v40 = a17 ^ 1;
  v41 = a11 ^ 1;
  v42 = 0;
  v43 = 0;
  v44 = *(&a17 + 9);
  v46 = *(&a17 + 13);
  v47 = __PAIR16__(a18, HIBYTE(a17));
  v48 = a19;
  v49 = a12 & a17 | BYTE3(a17) | BYTE2(a17);
  v50 = a18 ^ 1;
  v51 = a20;
  v24 = ggl::packFunctionConstantKey(v33, BYTE5(a17));
  v25 = a2[13];
  if (!*&v25)
  {
    goto LABEL_17;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = v24;
    if (v24 >= *&v25)
    {
      v27 = v24 % *&v25;
    }
  }

  else
  {
    v27 = (*&v25 - 1) & v24;
  }

  v28 = *(a2[12] + 8 * v27);
  if (!v28 || (v29 = *v28) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v30 = v29[1];
    if (v30 == v24)
    {
      break;
    }

    if (v26.u32[0] > 1uLL)
    {
      if (v30 >= *&v25)
      {
        v30 %= *&v25;
      }
    }

    else
    {
      v30 &= *&v25 - 1;
    }

    if (v30 != v27)
    {
      goto LABEL_17;
    }

LABEL_16:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_17;
    }
  }

  if (v29[2] != v24)
  {
    goto LABEL_16;
  }

  v31 = v29[4];
  *a1 = v29[3];
  a1[1] = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B310053C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31)
{
  v34 = v32[4];
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  operator delete(v32);
  std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::DaVinci::DecalPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4B788;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::RibbonPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<ggl::DaVinci::RibbonPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4B750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::PackedLinearDepthPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void std::__function::__func<md::DaVinciGroundRenderResources::DaVinciGroundRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_10,std::allocator<md::DaVinciGroundRenderResources::DaVinciGroundRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_10>,ggl::DaVinci::PackedLinearDepthPipelineSetup * ()(void)>::operator()(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  v4 = 257;
  v5 = 0;
  v6 = 2;
  v7 = 0x100000000000000;
  v8 = 0;
  v1 = 1;
  operator new();
}

void md::DaVinciPipelineStateManager<ggl::DaVinci::PackedLinearDepthPipelineState,std::shared_ptr<ggl::PackedLinearDepthShader>,ggl::ColorBufferOperation>::pipelineStateForFunctionConstants(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint8x8_t a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 9);
  v9 = *(a3 + 11);
  v10 = *(a3 + 12);
  a4.i32[0] = *(a3 + 13);
  *v36[0].i8 = vmovl_u8(a4);
  v11 = *(a3 + 17);
  v12 = *(a3 + 18);
  v13 = *(a3 + 19);
  v14 = *(a3 + 20);
  v15 = *(a3 + 21);
  v16 = *(a3 + 22);
  v17 = *(a3 + 24);
  v18 = *(a3 + 25);
  v19 = *(a3 + 26);
  v20 = *(a3 + 27);
  v21 = *(a3 + 28);
  v22 = *(a3 + 29);
  v23 = *(a3 + 30);
  v24 = *(a3 + 31);
  v25 = *(a3 + 32);
  v26 = *(a3 + 10);
  v27 = *(a3 + 33);
  v60[0] = 0;
  memset(&v60[15], 0, 15);
  v37 = v6;
  v38 = v7;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v42 = a4.i32[0];
  v43 = 0;
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v50 = v17;
  v51 = BYTE2(v6) | BYTE3(v6);
  v52 = (v36[0].i8[4] & 1) == 0;
  v53 = v7 ^ 1;
  v54 = 0;
  v55 = 0;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60[1] = v22;
  v60[2] = v23;
  v60[3] = v24;
  v60[4] = v25;
  v60[5] = v26;
  v60[6] = v8 & v36[0].i8[4] | v12 | v11;
  *&v60[7] = v25 ^ 1u;
  v60[8] = v27;
  v28 = ggl::packFunctionConstantKey(&v37, v15);
  v29 = a2[13];
  if (!*&v29)
  {
    goto LABEL_17;
  }

  v30 = vcnt_s8(v29);
  v30.i16[0] = vaddlv_u8(v30);
  if (v30.u32[0] > 1uLL)
  {
    v31 = v28;
    if (v28 >= *&v29)
    {
      v31 = v28 % *&v29;
    }
  }

  else
  {
    v31 = (*&v29 - 1) & v28;
  }

  v32 = *(a2[12] + 8 * v31);
  if (!v32 || (v33 = *v32) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v34 = v33[1];
    if (v34 == v28)
    {
      break;
    }

    if (v30.u32[0] > 1uLL)
    {
      if (v34 >= *&v29)
      {
        v34 %= *&v29;
      }
    }

    else
    {
      v34 &= *&v29 - 1;
    }

    if (v34 != v31)
    {
      goto LABEL_17;
    }

LABEL_16:
    v33 = *v33;
    if (!v33)
    {
      goto LABEL_17;
    }
  }

  if (v33[2] != v28)
  {
    goto LABEL_16;
  }

  v35 = v33[4];
  *a1 = v33[3];
  a1[1] = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B310186C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25)
{
  v28 = v26[4];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  operator delete(v26);
  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::DaVinci::PackedLinearDepthPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4B7F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::LinearDepthPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void std::__function::__func<md::DaVinciGroundRenderResources::DaVinciGroundRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_8,std::allocator<md::DaVinciGroundRenderResources::DaVinciGroundRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&)::$_8>,ggl::DaVinci::LinearDepthPipelineSetup * ()(void)>::operator()(uint64_t a1)
{
  v3 = 0;
  v2 = 0;
  v4 = 257;
  v5 = 0;
  v6 = 2;
  v7 = 0x100000000000000;
  v8 = 0;
  v1 = 1;
  operator new();
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundDepthPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundNonCompressedPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A31350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A312F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A312A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A31248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DaVinci::LinearDepthPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4B7C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DaVinci::GroundDepthPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4B6E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DaVinci::GroundNonCompressedPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4B6A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DaVinci::GroundPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A4B670;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_pointer<ggl::SamplerState *,std::shared_ptr<ggl::SamplerState>::__shared_ptr_default_delete<ggl::SamplerState,ggl::SamplerState>,std::allocator<ggl::SamplerState>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::GroundPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::GroundPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::DaVinci::GroundPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::LinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::LinearDepthPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::LinearDepthPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::LinearDepthPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::DaVinci::LinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::LinearDepthPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::PackedLinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::PackedLinearDepthPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::PackedLinearDepthPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::PackedLinearDepthPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::DaVinci::PackedLinearDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::PackedLinearDepthPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::GroundShadowMapPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundShadowMapPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::GroundShadowMapPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundShadowMapPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::DaVinci::GroundShadowMapPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundShadowMapPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::DecalPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::DecalPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::DecalPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::DecalPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::DaVinci::DecalPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::DecalPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::GroundDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundDepthPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::GroundDepthPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundDepthPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::DaVinci::GroundDepthPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundDepthPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::DaVinci::GroundNonCompressedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundNonCompressedPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::DaVinci::GroundNonCompressedPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DaVinci::GroundNonCompressedPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::DaVinci::GroundNonCompressedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GroundNonCompressedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::Tile::Clipping> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Tile::Clipping> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Tile::Clipping> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t md::DaVinciGroundRenderResources::debugTextureForAttribute(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 2784);
  if (!v2)
  {
    goto LABEL_17;
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

  v5 = *(*(a1 + 2776) + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

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
      goto LABEL_17;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_16;
  }

  v8 = v6[3];
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = v10 - *v8;
  if (v10 != *v8)
  {
    v12 = 0;
    v13 = v11 >> 4;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      *&v16 = 0;
      *(&v16 + 1) = COERCE_UNSIGNED_INT(vcvts_n_f32_u64(v12, 3uLL)) | 0x3F80000000000000;
      if (*v9)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(&v16 + 1) == v9[1];
      }

      if (!v14)
      {
        *(v8 + 32) = 1;
        *v9 = v16;
      }

      ++v12;
      v9 += 2;
    }

    while (v13 != v12);
  }

  md::StyleTexture<md::LowZoomStyle>::_processStylePixelsIfNecessary(v8);
  return *(v8 + 24);
}

void sub_1B3104194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  v11 = v9[4];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  operator delete(v9);
  _Unwind_Resume(a1);
}

void md::ARWalkingContinueLabelFeature::populateStyleQueries(_BYTE *a1, uint64_t *a2, uint64_t *a3)
{
  v4[13] = *MEMORY[0x1E69E9840];
  v4[2] = 0;
  if ((*(*a1 + 496))(a1))
  {
    if ((*(*a1 + 488))(a1, 0))
    {
      operator new();
    }
  }

  memset(&v4[9], 0, 24);
  _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v4);
}

void sub_1B3104708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MEMORY[0x1B8C62190](v17, 0x1012C40B602C572, a3, a4, a5, a6, a7, a8);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t md::ARWalkingContinueLabelFeature::style(uint64_t a1, unsigned int a2)
{
  v4 = md::ARWalkingContinueLabelFeature::layoutTypeForLabelIdentifier(a1, a2);
  v5 = *(a1 + 360);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 360;
  do
  {
    v7 = *(v5 + 28);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != a1 + 360 && *(v6 + 28) <= a2)
  {
    v10 = *(v6 + 32);
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  if (v4 >= 0x100u && v4)
  {
    return *(a1 + 96) + 16 * v10 + 16 * v4 + 16;
  }

  else
  {
    return *(a1 + 96) + 16 * v10;
  }
}

uint64_t md::ARWalkingContinueLabelFeature::layoutTypeForLabelIdentifier(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    v3 = a1 + 272;
    do
    {
      v4 = *(v2 + 32);
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * v6);
    }

    while (v2);
    if (v3 == a1 + 272 || *(v3 + 32) > a2)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      v7 = *(v3 + 40);
      if (v7)
      {
        LODWORD(v7) = *(v7 + 164) == a2;
        LODWORD(v2) = 1;
        return v7 | (v2 << 8);
      }
    }

    LODWORD(v2) = 0;
  }

  else
  {
    LODWORD(v7) = 0;
  }

  return v7 | (v2 << 8);
}

unint64_t md::ARWalkingContinueLabelFeature::routeCoordinate(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 272);
  if (!v2)
  {
    return 0xBF80000000000000;
  }

  v3 = *a2;
  v4 = a1 + 272;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 != a1 + 272 && v3 >= *(v4 + 32) && (v8 = *(v4 + 40)) != 0)
  {
    return *(v8 + 128);
  }

  else
  {
    return 0xBF80000000000000;
  }
}

uint64_t md::ARWalkingContinueLabelFeature::dedupingGroup@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 392);
  *a2 = *(this + 384);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t md::ARWalkingContinueLabelFeature::skewOffsettingLimits@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 272);
  v4 = 0;
  if (v3)
  {
    v5 = *a2;
    v6 = result + 272;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != result + 272 && v5 >= *(v6 + 32))
    {
      v10 = *(v6 + 40);
      if (v10)
      {
        if (*(v10 + 164) != v5)
        {
          v4 = *(v10 + 120);
        }
      }
    }
  }

  *a3 = v4;
  return result;
}

unint64_t md::ARWalkingContinueLabelFeature::skewOffsettingVector(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    v3 = *a2;
    v4 = a1 + 272;
    do
    {
      v5 = *(v2 + 32);
      v6 = v5 >= v3;
      v7 = v5 < v3;
      if (v6)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * v7);
    }

    while (v2);
    if (v4 != a1 + 272 && v3 >= *(v4 + 32))
    {
      v8 = *(v4 + 40);
      if (!v8)
      {
        v9 = 0;
        return v8 | v9;
      }

      if (*(v8 + 164) != v3)
      {
        v9 = *(v8 + 108) & 0xFFFFFFFFFFFFFF00;
        v8 = *(v8 + 108);
        return v8 | v9;
      }
    }
  }

  v9 = 0;
  v8 = 0;
  return v8 | v9;
}