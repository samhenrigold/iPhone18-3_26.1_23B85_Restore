unsigned __int16 *md::LabelLineSegment::createLists(unsigned __int16 *result, uint64_t a2)
{
  if (result[23] >= 2u)
  {
    v2 = result;
    md::LabelLineSegment::createPointList(result, a2);
    result = (*(*v2 + 64))(v2);
    v3 = v2[23];
    if (v2[23])
    {
      do
      {
        *result = 32512;
        result += 2;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void md::LabelTextStyleGroup::~LabelTextStyleGroup(void **this)
{
  *this = &unk_1F2A2D980;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2D980;
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }
}

uint64_t md::LabelIconStyleGroup::update(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, float a5, float a6)
{
  if (a5 >= 0x17)
  {
    v11 = 23;
  }

  else
  {
    v11 = a5;
  }

  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 84) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a1 + 101) == 1)
  {
    *(a1 + 101) = 0;
  }

  *(a1 + 88) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 170, v11, 1, 0);
  *(a1 + 64) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 186, v11, 1, 0);
  *(a1 + 68) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 190, v11, 1, 0);
  *(a1 + 93) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 192, v11, 1, 0);
  *(a1 + 92) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 189, v11, 1, 0);
  *(a1 + 89) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 212, v11, 1, 0);
  v13 = fminf(v11, 23.0);
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v37, *(*a2 + 24), 211, 1u, v13);
  v36 = vdupq_n_s32(0x3B7F00FFu);
  v14 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v37)), v36)));
  *(a1 + 72) = vuzp1_s8(v14, v14).u32[0];
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v37, *(*a2 + 24), 172, 1u, v13);
  v15 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v37)), v36)));
  *(a1 + 76) = vuzp1_s8(v15, v15).u32[0];
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v37, *(*a2 + 24), 93, 1u, v13);
  v16 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v37)), v36)));
  *(a1 + 80) = vuzp1_s8(v16, v16).u32[0];
  gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v37, *(*a2 + 24), 403, 1u, v13);
  v17 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v37)), v36)));
  *(a1 + 84) = vuzp1_s8(v17, v17).u32[0];
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 94, v11, 1u, 0);
  *(a1 + 44) = v18 * a6;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 97, v11, 1u, 0);
  *(a1 + 48) = v19 * a6;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 404, v11, 1u, 0);
  *(a1 + 52) = v20 * a6;
  *(a1 + 90) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 209, v11, 1, 0);
  *(a1 + 91) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 207, v11, 1, 0);
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 218, v11, 1u, 0);
  *(a1 + 16) = v21;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 187, v11, 1u, 0);
  *(a1 + 20) = v22;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 274, v11, 1u, 0);
  *(a1 + 28) = v23;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 166, v11, 1u, 0);
  *(a1 + 24) = v24;
  *(a1 + 96) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 386, v11, 1u, 0);
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 433, v11, 1u, 0);
  *(a1 + 32) = v25;
  v26 = *(*a2 + 24);
  *(a1 + 97) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned char>(v26, 474, v11, 0);
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v26, 479, v11, 1u, 0);
  *(a1 + 40) = v27;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 475, v11, 1u, 0);
  *(a1 + 36) = v28;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 273, v11, 1u, 0);
  v29 = a3 + 20 * a4;
  v31 = *(v29 + 12);
  v30 = (v29 + 12);
  *(a1 + 8) = v32 * (a6 * v31);
  v37.i8[0] = 1;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a2 + 24), 370, v11, 1u, &v37);
  if (v37.u8[0] == 1)
  {
    v34 = fminf((v33 * a6) * *v30, *v12);
  }

  else
  {
    v34 = *v12;
  }

  *(a1 + 12) = v34;
  *(a1 + 95) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a2 + 24), 371, v11, 1u, 0);
  *(a1 + 94) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 275, v11, 1, 0);
  *(a1 + 56) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 364, v11, 1, 0);
  *(a1 + 60) = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 372, v11, 1, 0);
  v37.i8[0] = 1;
  result = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(*a2 + 24), 354, v11, 1, &v37);
  if (v37.u8[0] == 1)
  {
    *(a1 + 100) = result;
    *(a1 + 101) = 1;
  }

  return result;
}

void md::LabelLineStyleGroup::~LabelLineStyleGroup(md::LabelLineStyleGroup *this)
{
  *this = &unk_1F2A2D9C0;
  if (*(this + 95) < 0)
  {
    v1 = *(this + 9);
    v2 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v2, v1);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2D9C0;
  if (*(this + 95) < 0)
  {
    v1 = *(this + 9);
    v2 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v2, v1);
  }
}

uint64_t md::LabelPointStyleGroup::clear(uint64_t this)
{
  *(this + 72) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  if (*(this + 103) < 0)
  {
    **(this + 80) = 0;
    *(this + 88) = 0;
  }

  else
  {
    *(this + 80) = 0;
    *(this + 103) = 0;
  }

  if (*(this + 135) < 0)
  {
    **(this + 112) = 0;
    *(this + 120) = 0;
  }

  else
  {
    *(this + 112) = 0;
    *(this + 135) = 0;
  }

  if (*(this + 167) < 0)
  {
    **(this + 144) = 0;
    *(this + 152) = 0;
  }

  else
  {
    *(this + 144) = 0;
    *(this + 167) = 0;
  }

  if (*(this + 199) < 0)
  {
    **(this + 176) = 0;
    *(this + 184) = 0;
  }

  else
  {
    *(this + 176) = 0;
    *(this + 199) = 0;
  }

  if (*(this + 231) < 0)
  {
    **(this + 208) = 0;
    *(this + 216) = 0;
  }

  else
  {
    *(this + 208) = 0;
    *(this + 231) = 0;
  }

  if (*(this + 263) < 0)
  {
    **(this + 240) = 0;
    *(this + 248) = 0;
  }

  else
  {
    *(this + 240) = 0;
    *(this + 263) = 0;
  }

  return this;
}

void md::LabelPointStyleGroup::~LabelPointStyleGroup(md::LabelPointStyleGroup *this)
{
  md::LabelPointStyleGroup::~LabelPointStyleGroup(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2D9E0;
  if (*(this + 263) < 0)
  {
    v2 = *(this + 30);
    v3 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  if (*(this + 231) < 0)
  {
    v4 = *(this + 26);
    v5 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  if (*(this + 199) < 0)
  {
    v6 = *(this + 22);
    v7 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }

  if (*(this + 167) < 0)
  {
    v8 = *(this + 18);
    v9 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v9, v8);
  }

  if (*(this + 135) < 0)
  {
    v10 = *(this + 14);
    v11 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v11, v10);
  }

  if (*(this + 103) < 0)
  {
    v12 = *(this + 10);
    v13 = mdm::zone_mallocator::instance(this);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
  }
}

void md::StandardCommandBufferSelector::~StandardCommandBufferSelector(md::StandardCommandBufferSelector *this)
{
  md::CommandBufferSelector::~CommandBufferSelector(this);

  JUMPOUT(0x1B8C62190);
}

void md::CommandBufferSelector::~CommandBufferSelector(md::CommandBufferSelector *this)
{
  *this = &unk_1F2A2DA70;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

{
  md::CommandBufferSelector::~CommandBufferSelector(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B30CF10C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30CFE80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKScreenCameraController;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void *gdc::SubtileClipMask::removeSubTile(void *this, unint64_t a2, unint64_t a3)
{
  if (this[4])
  {
    v3 = this[3];
    if (v3 > a2 && v3 > a3)
    {
      v5 = a2 + v3 * a3;
      v6 = v5 >> 6;
      v7 = 1 << v5;
      v8 = *(*this + 8 * v6);
      if ((v8 & v7) != 0)
      {
        *(*this + 8 * v6) = v8 & ~v7;
        --this[4];
      }
    }
  }

  return this;
}

void *gdc::SubtileClipMask::setSubTileVisible(void *this, unint64_t a2, unint64_t a3, int a4)
{
  if (a4)
  {
    return gdc::SubtileClipMask::addSubTile(this, a2, a3);
  }

  else
  {
    return gdc::SubtileClipMask::removeSubTile(this, a2, a3);
  }
}

void anonymous namespace::_evaluateOverlappingDataOfType(void *a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v5 = a1;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = *a3;
  v7 = a3[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(v6 + 169);
  v9 = *(v6 + 172);
  v10 = *(v6 + 176);
  v42 = *(v6 + 168);
  v11 = *(a3 + 16);
  v12 = *a2;
  {
    qword_1ED65AC10 = 0;
    qword_1ED65AC08 = 0;
    md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
  }

  v13 = *(v12 + 48);
  v14 = *(v12 + 56);
  v15 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
  if (v13 == v14)
  {
    v17 = v42;
  }

  else
  {
    v16 = *(v12 + 48);
    v17 = v42;
    while (*v16 != a4)
    {
      v16 += 16;
      if (v16 == v14)
      {
        goto LABEL_16;
      }
    }

    if (v16 == v14)
    {
      v15 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
    }

    else
    {
      while (*v13 != a4)
      {
        v13 += 16;
        if (v13 == v14)
        {
          v13 = v14;
          break;
        }
      }

      v15 = (v13 + 4);
    }
  }

LABEL_16:
  v20 = *v15;
  v19 = v15 + 1;
  v18 = v20;
  if (v20 != v19)
  {
    v40 = v5;
    v41 = v7;
    v38 = v10;
    v39 = v9;
    while (*(v18 + 48) != v11)
    {
LABEL_57:
      v35 = v18[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v18[2];
          v37 = *v36 == v18;
          v18 = v36;
        }

        while (!v37);
      }

      v18 = v36;
      if (v36 == v19)
      {
        goto LABEL_63;
      }
    }

    v21 = *(v18 + 2);
    v22 = v18[5];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v17 != *(v21 + 168))
    {
      goto LABEL_55;
    }

    v23 = *(v21 + 169);
    v24 = v8 - v23;
    if (v8 >= v23)
    {
      if (v8 == v23 && v9 == *(v21 + 172))
      {
        v25 = *(v21 + 176);
LABEL_28:
        if (v10 == v25)
        {
          goto LABEL_36;
        }
      }
    }

    else if (v9 == *(v21 + 172) >> (v23 - v8))
    {
      v25 = *(v21 + 176) >> (v23 - v8);
      goto LABEL_28;
    }

    if (v23 < v8)
    {
      if (*(v21 + 172) != v9 >> v24 || *(v21 + 176) != v10 >> v24)
      {
        goto LABEL_55;
      }

LABEL_36:
      v26 = v5[1];
      v27 = v5[2];
      if (v26 >= v27)
      {
        v29 = *v5;
        v30 = v26 - *v5;
        v31 = (v30 >> 4) + 1;
        if (v31 >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v32 = v27 - v29;
        if (v32 >> 3 > v31)
        {
          v31 = v32 >> 3;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFF0)
        {
          v33 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          if (!(v33 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v34 = (16 * (v30 >> 4));
        *v34 = v21;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = v34 + 1;
        memcpy(0, v29, v30);
        *v40 = 0;
        v40[1] = v28;
        v5 = v40;
        v40[2] = 0;
        if (v29)
        {
          operator delete(v29);
        }

        v7 = v41;
        v10 = v38;
        v9 = v39;
      }

      else
      {
        *v26 = v21;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = v26 + 1;
      }

      v5[1] = v28;
      v17 = v42;
      goto LABEL_55;
    }

    if (v23 == v8 && *(v21 + 172) == v9 && *(v21 + 176) == v10)
    {
      goto LABEL_36;
    }

LABEL_55:
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    goto LABEL_57;
  }

LABEL_63:
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void sub_1B30D038C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, std::__shared_weak_count *a14, uint64_t a15, void **a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  a16 = a13;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a16);
  _Unwind_Resume(a1);
}

void md::PairedTiledRenderLayer<md::ElevatedPolygonRenderable>::_determineEnteringRenderables(md::LayoutContext const&)::{lambda(std::shared_ptr<md::ElevatedStrokeTileData> const&,unsigned char,std::shared_ptr<md::DaVinciGroundTileData> const&)#1}::operator()(uint64_t *a1, uint64_t *a2, char a3, void *a4)
{
  v5 = *a4;
  v11 = *(*a4 + 172);
  *v10 = *(v5 + 168);
  v12 = *(v5 + 184);
  v13 = *(v5 + 192);
  v6 = *(v5 + 608);
  v7 = *(v5 + 616);
  v8 = md::LayoutContext::cameraType(a1[2]);
  gdc::ToCoordinateSystem(v8);
  md::GeometryContext::transformConstantData(&v9, a1[3], v10, v8, -1, v6, v7);
}

void sub_1B30D05A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ggl::MaskingOverlay::FillPipelineSetup::~FillPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MaskingOverlay::MaskingPipelineSetup::~MaskingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::FlyoverDsmDataRequester::requestDataKeys(md::FlyoverDsmDataRequester *this, const gdc::SelectionContext *a2, char a3)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v10 = a2;
  if (*(a2 + 82) != 1)
  {
    v11[0] = &unk_1F2A2DCB8;
    v11[1] = &v10;
    v11[2] = this;
    v11[3] = v11;
    v6 = this + 48;
    v13 = v12;
    v7 = std::__function::__func<md::FlyoverDsmDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::$_0,std::allocator<md::FlyoverDsmDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::$_0>,BOOL ()(geo::QuadTile const&)>::__clone(v11, v12);
    if (v6 != v12)
    {
      v8 = v13;
      v9 = *(this + 9);
      if (v13 == v12)
      {
        if (v9 == v6)
        {
          (*(*v13 + 24))(v7);
          (*(*v13 + 32))(v13);
          v13 = 0;
          (*(**(this + 9) + 24))(*(this + 9), v12);
          (*(**(this + 9) + 32))(*(this + 9));
          *(this + 9) = 0;
          v13 = v12;
          (*(v14[0] + 24))(v14, v6);
          (*(v14[0] + 32))(v14);
        }

        else
        {
          (*(*v13 + 24))(v7);
          (*(*v13 + 32))(v13);
          v13 = *(this + 9);
        }

        *(this + 9) = v6;
      }

      else if (v9 == v6)
      {
        (*(*v9 + 24))(*(this + 9), v12, v7);
        (*(**(this + 9) + 32))(*(this + 9));
        *(this + 9) = v13;
        v13 = v12;
      }

      else
      {
        v13 = *(this + 9);
        *(this + 9) = v8;
      }
    }

    std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](v12);
    std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](v11);
    md::SingleGEOResourceDataRequester::requestDataKeys(this, a2, a3);
  }
}

__n128 std::__function::__func<md::FlyoverDsmDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::$_0,std::allocator<md::FlyoverDsmDataRequester::requestDataKeys(gdc::SelectionContext const*,BOOL)::$_0>,BOOL ()(geo::QuadTile const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2DCB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t md::FlyoverDsmManifestInformer::downloadZoomRange(md::FlyoverDsmManifestInformer *this)
{
  v2 = (*(**(this + 1) + 24))(*(this + 1), 20);
  v4 = v3;
  v5 = (*(**(this + 1) + 24))(*(this + 1), 50);
  v6 = HIDWORD(v5);
  if (v4)
  {
    if (v5 >= v2)
    {
      LODWORD(v5) = v2;
    }

    if (HIDWORD(v2) > v6)
    {
      v6 = HIDWORD(v2);
    }

    v7 = v5 & 0xFFFFFF00;
  }

  else
  {
    v6 = 0;
    LOBYTE(v5) = 0;
    v7 = 0;
  }

  return v7 | v5 | (v6 << 32);
}

uint64_t md::FlyoverDsmManifestInformer::resourceTileForTile(md::FlyoverDsmManifestInformer *this, unsigned __int16 a2, const geo::QuadTile *a3)
{
  v3 = *(this + 1);
  if (*(a3 + 1) <= 0xDu)
  {
    v4 = 50;
  }

  else
  {
    v4 = 20;
  }

  return (*(*v3 + 16))(v3, v4);
}

void md::FlyoverDsmDataRequester::~FlyoverDsmDataRequester(md::FlyoverDsmDataRequester *this)
{
  *this = &unk_1F2A2DBB0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2DBB0;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);
}

void md::RoadTileDataRenderable::~RoadTileDataRenderable(md::RoadTileDataRenderable *this)
{
  *this = &unk_1F2A2DD00;
  std::unique_ptr<md::TrailJunctionsResource>::reset[abi:nn200100]((this + 408), 0);
  md::MapTileDataRenderable<md::RoadTileData>::~MapTileDataRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2DD00;
  std::unique_ptr<md::TrailJunctionsResource>::reset[abi:nn200100]((this + 408), 0);

  md::MapTileDataRenderable<md::RoadTileData>::~MapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::RoadTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *this)
{
  *this = &unk_1F2A2DD20;
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::BaseMapTileDataRenderable::~BaseMapTileDataRenderable(this);
}

void md::MapTileDataRenderable<md::RoadTileData>::~MapTileDataRenderable(md::BaseMapTileDataRenderable *a1)
{
  md::MapTileDataRenderable<md::RoadTileData>::~MapTileDataRenderable(a1);

  JUMPOUT(0x1B8C62190);
}

std::string *std::optional<std::string>::operator=[abi:nn200100]<char const*&,void>(std::string *a1, std::string::value_type *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    return std::string::__assign_external(a1, a2);
  }

  result = std::string::basic_string[abi:nn200100]<0>(a1, a2);
  result[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

md::VenueLevel *md::VenueLevel::VenueLevel(md::VenueLevel *this, uint64_t a2, __int16 a3, char *__s, char *a5, std::string::value_type *a6, std::string::value_type *a7, char a8, double a9)
{
  *this = a2;
  *(this + 4) = a3;
  *(this + 16) = 0;
  v13 = this + 16;
  *(this + 40) = 0;
  *(this + 72) = 0;
  *(this + 48) = 0;
  v14 = this + 48;
  *(this + 80) = 0;
  v15 = (this + 80);
  *(this + 104) = 0;
  *(this + 112) = 0;
  v16 = (this + 112);
  *(this + 136) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 168) = a8;
  *(this + 22) = a9;
  if (__s)
  {
    std::string::basic_string[abi:nn200100]<0>(&v18, __s);
    if (*(this + 40) != 1)
    {
      *v13 = v18;
      *(v13 + 2) = v19;
      *(this + 40) = 1;
      if (!a5)
      {
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    if (*(this + 39) < 0)
    {
      operator delete(*v13);
    }

    *v13 = v18;
    *(v13 + 2) = v19;
  }

  if (!a5)
  {
    goto LABEL_13;
  }

LABEL_9:
  std::string::basic_string[abi:nn200100]<0>(&v18, a5);
  if (*(this + 72) == 1)
  {
    if (*(this + 71) < 0)
    {
      operator delete(*v14);
    }

    *v14 = v18;
    *(v14 + 2) = v19;
LABEL_13:
    if (!a6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  *v14 = v18;
  *(v14 + 2) = v19;
  *(this + 72) = 1;
  if (a6)
  {
LABEL_14:
    std::optional<std::string>::operator=[abi:nn200100]<char const*&,void>(v15, a6);
  }

LABEL_15:
  if (a7)
  {
    std::optional<std::string>::operator=[abi:nn200100]<char const*&,void>(v16, a7);
  }

  return this;
}

uint64_t std::__function::__func<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_1,std::allocator<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_1>,void ()(md::ls::UniqueMaterialData const&)>::operator()(ecs2::ExecutionTaskContext *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = &unk_1F2A2DE08;
  v4 = ecs2::ExecutionTaskContext::currentEntity(a1) << 32;
  v5 = &v3;
  v6[3] = v6;
  v6[0] = &unk_1F2A2DE08;
  v6[1] = v4;
  v7 = 0;
  ecs2::Runtime::queueCommand();
  if (v7 != -1)
  {
    (off_1F2A2DE40[v7])(&v2, v6);
  }

  v7 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v3);
}

void ecs2::BasicRegistry<void>::add<md::ls::MaterialPendingProcessing>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(a1);
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
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v17 = v6[4];
      v18 = (v14 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v13 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v22 = (4 * v18);
      v15 = a2;
      *v22 = a2;
      v16 = v22 + 1;
      v23 = v6[4];
      v24 = v6[5] - v23;
      v25 = v22 - v24;
      memcpy(v22 - v24, v23, v24);
      v26 = v6[4];
      v6[4] = v25;
      v6[5] = v16;
      v6[6] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      v15 = a2;
      *v14 = a2;
      v16 = v14 + 1;
    }

    v6[5] = v16;
    v27 = ((v16 - *(v6 + 8)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v27;
    v28 = v6[13];
    for (i = v6[14]; v28 != i; v28 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v15);
    }
  }

  v30 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v30 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::MaterialPendingProcessing>(ecs2::Entity,md::ls::MaterialPendingProcessing &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A2DE08;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_1,std::allocator<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_1>,void ()(md::ls::UniqueMaterialData const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2DDC0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0,std::allocator<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2DD78;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_1,std::allocator<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_1>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2DEC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_0,std::allocator<md::ita::ProcessMaterialsForUpdatedStyle::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &>,ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2DE78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void non-virtual thunk toggl::MeshTyped<ggl::Draping::FoundationVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Draping::FoundationVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::LoadingStatusLogic,md::LoadingStatusContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void ___ZN2md18LoadingStatusLogic15runBeforeLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_12SceneContextEEEENS6_IJNS_25IdentifiedResourceContextEEEEEE20ResolvedDependenciesERNS_20LoadingStatusContextE_block_invoke(uint64_t a1)
{
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  v3 = v2;
  v4 = *(*(a1 + 32) + 80);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v3, OS_SIGNPOST_INTERVAL_END, v4, "LoadAllLayers", &unk_1B3514CAA, v5, 2u);
  }
}

void *md::Logic<md::LoadingStatusLogic,md::LoadingStatusContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 8) == 0x90B6813830DCB581 && (v5 = *(a3 + 32)) != 0)
  {
    v9[0] = md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<md::IdentifiedResourceContext>>::resolveDependencies(*(a2 + 8));
    v9[1] = v8;
    return (*(*a1 + 160))(a1, a2, v9, v5);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t gdc::ObjectHolder<md::LoadingStatusContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::LoadingStatusContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A2E158;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::LoadingStatusContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A2E158;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::LoadingStatusLogic::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v12, "LoadingStatusLogic");
  gdc::DebugTreeNode::DebugTreeNode(a2, &v12);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  std::string::basic_string[abi:nn200100]<0>(&v12, "skipFullyLoadedReport");
  gdc::DebugTreeValue::DebugTreeValue(v9, *(a1 + 128));
  gdc::DebugTreeNode::addProperty(a2, &v12, v9);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if ((*(a1 + 128) & 1) == 0)
  {
    std::string::basic_string[abi:nn200100]<0>(&v12, "sceneStatus");
    v4 = *(a1 + 120);
    if (*(v4 + 89) == 1)
    {
      v5 = *(v4 + 88);
    }

    else
    {
      v5 = 0;
    }

    gdc::DebugTreeValue::DebugTreeValue(v6, v5);
    gdc::DebugTreeNode::addProperty(a2, &v12, v6);
    if (v8 < 0)
    {
      operator delete(v7);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }
  }
}

void sub_1B30D1C54(_Unwind_Exception *a1)
{
  *(v2 - 40) = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 40));
  *(v2 - 40) = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 40));
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

void md::LoadingStatusLogic::~LoadingStatusLogic(md::LoadingStatusLogic *this)
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

void ggl::FlyoverLibrary::~FlyoverLibrary(ggl::FlyoverLibrary *this)
{
  ggl::ShaderLibrary::~ShaderLibrary(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::FlyoverLibraryBundleMTLData::~FlyoverLibraryBundleMTLData(ggl::FlyoverLibraryBundleMTLData *this)
{
  ggl::MTLBundleShaderLibraryData::~MTLBundleShaderLibraryData(this);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciElevationRaster::~DaVinciElevationRaster(md::DaVinciElevationRaster *this)
{
  *this = &unk_1F2A2E1C0;
  *(this + 80) = &unk_1F2A2E228;
  v2 = *(this + 95);
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

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2E1C0;
  *(this + 80) = &unk_1F2A2E228;
  v2 = *(this + 95);
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

void std::__shared_ptr_emplace<md::BoundingVolume>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void std::__shared_ptr_emplace<md::BoundingVolume>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2E240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::CartographicGlobeMapEngineConfiguration::~CartographicGlobeMapEngineConfiguration(md::CartographicGlobeMapEngineConfiguration *this)
{
  *this = &unk_1F2A2E2E8;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A58798;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2E2E8;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A58798;
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

uint64_t md::RenderBatch::remove(int8x8_t *a1, unint64_t a2)
{
  v2 = a1[31];
  if (!*&v2)
  {
    return 0;
  }

  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v2 <= a2)
    {
      v5 = a2 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & a2;
  }

  v7 = a1[30];
  v8 = *(*&v7 + 8 * v5);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (!*v8)
  {
    return result;
  }

  v9 = *&v2 - 1;
  while (1)
  {
    v10 = *(result + 8);
    if (v10 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }
    }

    else
    {
      v10 &= v9;
    }

    if (v10 != v5)
    {
      return 0;
    }

LABEL_19:
    result = *result;
    if (!result)
    {
      return result;
    }
  }

  if (__PAIR64__(*(result + 18), *(result + 16)) != __PAIR64__(WORD1(a2), a2) || *(result + 20) != HIDWORD(a2))
  {
    goto LABEL_19;
  }

  v11 = *(result + 8);
  if (v4.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= v9;
  }

  v12 = *(*&v7 + 8 * v11);
  do
  {
    v13 = v12;
    v12 = *v12;
  }

  while (v12 != result);
  if (v13 == &a1[32])
  {
    goto LABEL_40;
  }

  v14 = v13[1];
  if (v4.u32[0] > 1uLL)
  {
    if (*&v14 >= *&v2)
    {
      *&v14 %= *&v2;
    }
  }

  else
  {
    *&v14 &= v9;
  }

  if (*&v14 != v11)
  {
LABEL_40:
    if (!*result)
    {
      goto LABEL_41;
    }

    v15 = *(*result + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v15 >= *&v2)
      {
        v15 %= *&v2;
      }
    }

    else
    {
      v15 &= v9;
    }

    if (v15 != v11)
    {
LABEL_41:
      *(*&v7 + 8 * v11) = 0;
    }
  }

  v16 = *result;
  if (*result)
  {
    v17 = *(*&v16 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v17 >= *&v2)
      {
        v17 %= *&v2;
      }
    }

    else
    {
      v17 &= v9;
    }

    if (v17 != v11)
    {
      *(*&a1[30] + 8 * v17) = v13;
      v16 = *result;
    }
  }

  *v13 = v16;
  *result = 0;
  --*&a1[33];
  operator delete(result);
  result = 1;
  if ((a1[44].i8[0] & 1) == 0)
  {
    a1[44].i8[0] = 1;
    if (a1[46].i8[0] == 1)
    {
      a1[46].i8[0] = 0;
    }

    ++*&a1[47];
  }

  return result;
}

uint64_t std::construct_at[abi:nn200100]<md::MeshRenderable,std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::components::MeshInstance *&,md::MeshRenderable*>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, char *a4, uint64_t **a5)
{
  v8[0] = a2;
  v8[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::MeshRenderable::MeshRenderable(a1, v8, *a4, *a5);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  return a1;
}

uint64_t std::vector<md::MeshRenderable>::__emplace_back_slow_path<std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::components::MeshInstance *&>(unint64_t *a1, uint64_t a2, char *a3, uint64_t **a4)
{
  v4 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x12F684BDA12F684)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v7 = 0x12F684BDA12F684;
  }

  else
  {
    v7 = v5;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::MeshRenderable>>(v7);
  }

  v14 = 0;
  v15 = 216 * v4;
  v16 = 216 * v4;
  std::construct_at[abi:nn200100]<md::MeshRenderable,std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::components::MeshInstance *&,md::MeshRenderable*>(216 * v4, *a2, *(a2 + 8), a3, a4);
  *&v16 = 216 * v4 + 216;
  v8 = a1[1];
  v9 = 216 * v4 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::MeshRenderable>,md::MeshRenderable*>(*a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<md::MeshRenderable>::~__split_buffer(&v14);
  return v13;
}

void sub_1B30D2514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<md::MeshRenderable>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:nn200100]<md::MeshRenderable,std::shared_ptr<md::InstanceData> const&,md::MeshRenderableType,md::Mesh *,gm::Box<float,3> &,md::MeshRenderable*>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t *a4, uint64_t a5)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  *a1 = &unk_1F2A3CEF8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 76) = xmmword_1B33AFF10;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 92) = 0x80000000800000;
  *(a1 + 100) = 0;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 1;
  *(a1 + 146) = 1;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0;
  *(a1 + 147) = 0;
  *(a1 + 204) = atomic_fetch_add(&md::MeshRenderable::generateId(void)::sId, 1u);
  *(a1 + 208) = 0;
  if (v6)
  {
    v7 = 0;
    *(a1 + 208) = v6;
    *(a1 + 16) = *(v6 + 16);
    do
    {
      *(a1 + 76 + v7) = *(a5 + v7);
      v7 += 4;
    }

    while (v7 != 12);
    for (i = 0; i != 12; i += 4)
    {
      *(a1 + 88 + i) = *(a5 + 12 + i);
    }
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::MeshRenderable>>(unint64_t a1)
{
  if (a1 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void (***std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::MeshRenderable>,md::MeshRenderable*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = 0;
    do
    {
      v5 = a3 + v4 * 8;
      *v5 = &unk_1F2A3CEF8;
      v6 = &result[v4];
      v7 = *&result[v4 + 1];
      *(v5 + 24) = result[v4 + 3];
      *(v5 + 8) = v7;
      v8 = result[v4 + 5];
      *(v5 + 32) = result[v4 + 4];
      *(v5 + 40) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 3);
      v10 = *(v6 + 5);
      *(v5 + 64) = *(v6 + 4);
      *(v5 + 80) = v10;
      *(v5 + 48) = v9;
      v11 = *(v6 + 6);
      v12 = *(v6 + 7);
      v13 = *(v6 + 8);
      *(v5 + 143) = *(v6 + 143);
      *(v5 + 112) = v12;
      *(v5 + 128) = v13;
      *(v5 + 96) = v11;
      *(v5 + 152) = 0;
      *(v5 + 176) = 0;
      if (*(v6 + 176) == 1)
      {
        v14 = result[v4 + 20];
        *(v5 + 152) = result[v4 + 19];
        *(a3 + v4 * 8 + 160) = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
        }

        *(a3 + v4 * 8 + 168) = result[v4 + 21];
        *(v5 + 176) = 1;
      }

      v15 = a3 + v4 * 8;
      v16 = &result[v4];
      *(v15 + 184) = result[v4 + 23];
      *(v15 + 192) = 0;
      if (BYTE1(result[v4 + 24]) == 1)
      {
        *(v15 + 192) = *(v16 + 192);
        *(v15 + 193) = 1;
      }

      v17 = *(v16 + 196);
      *(v15 + 212) = *(v16 + 53);
      *(v15 + 196) = v17;
      v4 += 27;
    }

    while (&result[v4] != a2);
    v18 = result;
    v19 = result;
    do
    {
      v20 = *v19;
      v19 += 27;
      (*v20)();
      v18 += 27;
      result = v19;
    }

    while (v19 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<md::MeshRenderable>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 216);
    *(a1 + 16) = i - 216;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::RenderBatch::destroyRenderables(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 320);
  v4 = *(a1 + 328);
  if (v3 == v4)
  {
LABEL_5:
    *(a1 + 328) = v3;
  }

  else
  {
    while (1)
    {
      v9 = *v3;
      v6 = *(a2 + 24);
      if (!v6)
      {
        break;
      }

      (*(*v6 + 48))(v6, &v9);
      if (++v3 == v4)
      {
        v3 = *(a1 + 320);
        goto LABEL_5;
      }
    }

    v7 = std::__throw_bad_function_call[abi:nn200100]();
    [(GRLResourceGroupObserver *)v7 .cxx_destruct];
  }
}

void sub_1B30D2BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GEOGetVectorKitVKGeoResourceProviderLog(void)
{
  if (GEOGetVectorKitVKGeoResourceProviderLog(void)::onceToken[0] != -1)
  {
    dispatch_once(GEOGetVectorKitVKGeoResourceProviderLog(void)::onceToken, &__block_literal_global_85);
  }

  v1 = GEOGetVectorKitVKGeoResourceProviderLog(void)::log;

  return v1;
}

void std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void ___ZL39GEOGetVectorKitVKGeoResourceProviderLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "VKGeoResourceProvider");
  v1 = GEOGetVectorKitVKGeoResourceProviderLog(void)::log;
  GEOGetVectorKitVKGeoResourceProviderLog(void)::log = v0;
}

void md::GeoResourceProvider::onTileGroupChange(md::GeoResourceProvider *this)
{
  v6 = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 112));
  v2 = GEOGetVectorKitVKGeoResourceProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 41) - *(this + 40)) >> 3);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "Received tileGroupChange - clearing cached resource names (count:%lu)", &v4, 0xCu);
  }

  std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::clear[abi:nn200100](this + 40);
  grl::ResourceProvider::clearResourceNamesCache(this);
  std::mutex::unlock((this + 112));
}

void non-virtual thunk tomd::GeoResourceProvider::~GeoResourceProvider(md::GeoResourceProvider *this)
{
  md::GeoResourceProvider::~GeoResourceProvider((this - 264));

  JUMPOUT(0x1B8C62190);
}

{
  md::GeoResourceProvider::~GeoResourceProvider((this - 264));
}

void md::GeoResourceProvider::~GeoResourceProvider(md::GeoResourceProvider *this)
{
  *this = &unk_1F2A2E3A8;
  *(this + 33) = &unk_1F2A2E400;
  grl::ResourceProvider::removeObserver(this, this + 264);
  [*(this + 38) clearProvider];
  [*(this + 35) clearProvider];
  v2 = [MEMORY[0x1E69A2478] modernManager];
  [v2 removeTileGroupObserver:*(this + 35)];

  v3 = (this + 320);
  std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  *(this + 37) = &unk_1F2A2E4A8;

  *(this + 34) = &unk_1F2A2E488;

  grl::ResourceProvider::~ResourceProvider(this);
}

{
  md::GeoResourceProvider::~GeoResourceProvider(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B30D308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;

  a10 = v10 + 320;
  std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::__destroy_vector::operator()[abi:nn200100](&a10);
  *(v10 + 296) = &unk_1F2A2E4A8;

  *(v10 + 272) = &unk_1F2A2E488;
  grl::ResourceProvider::~ResourceProvider(v10);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void grl::ResourceProvider::~ResourceProvider(grl::ResourceProvider *this)
{
  *this = &unk_1F2A5FA10;
  std::__tree<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::__map_value_compare<geo::c3mm::C3mmFileIndex,std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>,std::less<geo::c3mm::C3mmFileIndex>,true>,std::allocator<std::__value_type<geo::c3mm::C3mmFileIndex,std::shared_ptr<geo::c3mm::C3mmFile>>>>::destroy(*(this + 31));
  std::mutex::~mutex((this + 176));
  std::mutex::~mutex((this + 112));
  std::mutex::~mutex((this + 48));
  v2 = *(this + 3);
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

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    operator delete(v4);
  }
}

void geo::_retain_ptr<GRLResourceGroupObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2E488;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GRLResourceGroupObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2E488;

  return a1;
}

void geo::_retain_ptr<RegionalResourceObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2E4A8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<RegionalResourceObserver * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2E4A8;

  return a1;
}

void md::GeoResourceProvider::streamForResourceName(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = [MEMORY[0x1E69A2468] sharedManager];
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  v7 = [v4 pathForResourceWithName:v6 fallbackBundle:0 fallbackNameHandler:&__block_literal_global_82];

  if (v7 && [v7 UTF8String])
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1B30D35D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::istream::~istream();
  MEMORY[0x1B8C620C0](v11);
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::ifstream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2E4C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::GeoResourceProvider::dataForResourceName(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v11 = [MEMORY[0x1E69A2468] sharedManager];
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v6 = [v11 dataForResourceWithName:v5 fallbackBundle:0 fallbackNameHandler:&__block_literal_global_29478];

  if (v6 && [v6 length])
  {
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  v7 = [v12 bytes];
  v8 = [v12 bytes];
  v9 = [v12 length];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v10 = v8 + v9 - v7;
  if (v10)
  {
    std::vector<unsigned char>::__vallocate[abi:nn200100](a2, v10);
  }
}

void *std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>::__emplace_back_slow_path<char const*&>(grl::zone_mallocator *a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 2) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 2) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1 + 24;
  if (v6)
  {
    v7 = grl::zone_mallocator::instance(a1);
    v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(v7, v6);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[24 * v2];
  v17 = v16;
  v18 = &v8[24 * v6];
  std::allocator_traits<std::allocator<std::string>>::construct[abi:nn200100]<std::string,char const*&,void,0>(v16, *a2);
  v9 = v16 + 24;
  v10 = *(a1 + 1) - *a1;
  v11 = &v16[-v10];
  memcpy(&v16[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 1) = v9;
  v13 = *(a1 + 2);
  *(a1 + 2) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(&v15);
  return v9;
}

void sub_1B30D3974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5F7D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::string>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x1012040EC159624uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<std::shared_ptr<md::TextDataString>,float>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::weak_interface_ptr<md::LabelTextDataLoader>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2E500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::pair<std::shared_ptr<md::TextDataString>,float>*,std::pair<std::shared_ptr<md::TextDataString>,float>*>(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = result;
    v8 = mdm::zone_mallocator::instance(result);
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<std::shared_ptr<md::TextDataString>,float>>(v8, a4);
    *v7 = result;
    v7[1] = result;
    for (v7[2] = &result[3 * a4]; a2 != a3; result += 3)
    {
      v9 = *(a2 + 8);
      *result = *a2;
      result[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      *(result + 4) = *(a2 + 16);
      a2 += 24;
    }

    v7[1] = result;
  }

  return result;
}

void **md::LabelTextDataLoader::finishBatch(void)::$_0::~$_0(void **a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = a1;
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::operator()(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  for (i = a1[2]; v2 != i; v2 += 24)
  {
    v5 = *v2;
    v4 = *(v2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    md::TextDataString::generateGlyphInfos(v5, [*(a1[5] + 96) grlFontManager], *(v2 + 16));
    atomic_store(0, v5 + 129);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  v6 = a1[6];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a1[8];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B30D3F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  std::recursive_mutex::lock((v2 + 24));
  v3 = *(a1 + 24);
  std::mutex::lock(v3);
  sig = v3[1].__m_.__sig;
  if (sig)
  {
    atomic_fetch_add((sig + 56), 0xFFFFFFFF);
    v5 = *(a1 + 8);
    *(v5 + 3038) = 1;
    *(v5 + 3040) = 1;
    v6 = atomic_load((v5 + 3053));
    if (v6)
    {
      v7 = *(v5 + 136);
      if (v7)
      {
        v8 = *(v7 + 56);
        if (v8)
        {
          std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v8, v5, 9);
        }
      }
    }
  }

  std::mutex::unlock(v3);

  std::recursive_mutex::unlock((v2 + 24));
}

void sub_1B30D404C(_Unwind_Exception *a1)
{
  std::mutex::unlock(v1);
  std::recursive_mutex::unlock((v2 + 24));
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(a1 + 8);

  operator delete(a1);
}

void *std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F2A2E580;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2E580;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0::operator() const(void)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2E580;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::destroy_deallocate(void **a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1 + 1;
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);

  operator delete(a1);
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::destroy(uint64_t *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = (a1 + 1);
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
}

void *std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2E538;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 32) = *(a1 + 32);
  result = std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::pair<std::shared_ptr<md::TextDataString>,float>*,std::pair<std::shared_ptr<md::TextDataString>,float>*>((a2 + 8), *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  v5 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 64);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2E538;
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = (a1 + 1);
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelTextDataLoader::finishBatch(void)::$_0,std::allocator<md::LabelTextDataLoader::finishBatch(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2E538;
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v5 = (a1 + 1);
  std::vector<std::pair<std::shared_ptr<md::TextDataString>,float>,geo::allocator_adapter<std::pair<std::shared_ptr<md::TextDataString>,float>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<std::shared_ptr<md::TextDataString>,float>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 24 * a2, 0x1020040EDCEB4C7uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void md::CartographicTiledVectorRenderLayer<md::RoadTileDataRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D47BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::DaVinciRoadTileDataRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D499C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D4B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::VenueTileData>>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D4D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::BuildingTileDataRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D4F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::TrafficTileData>>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D511C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D52FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::DaVinciGroundRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D54DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::DaVinciTrafficTileData>>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D56BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<HillshadeRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D589C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void md::CartographicTiledVectorRenderLayer<md::FlyoverRenderable>::featureMarkerAt(uint64_t a1@<X0>, float64x2_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(a1 + 32);
  *a3 = 0;
  a3[1] = 0;
  if (v3 == 1)
  {
    v5 = *(a1 + 272);
    v6 = *(a1 + 280);
    if (v5 != v6)
    {
      v20 = a3;
      v8 = 0;
      v9 = xmmword_1B33B09C0;
      while (1)
      {
        v10 = *(*v5 + 392);
        v11 = 1 << *(v10 + 169);
        v12 = ~*(v10 + 172);
        v13 = a2[1].f64[0];
        v25 = v13;
        v14.i64[0] = *(v10 + 176);
        v14.i64[1] = v11 + v12;
        v15 = vmulq_n_f64(vmlsq_lane_f64(*a2, vcvtq_f64_s64(v14), 1.0 / v11, 0), v11);
        v24 = vcvt_f32_f64(v15);
        v16 = vcvt_hight_f32_f64(v24, v15);
        LODWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v16, v9)).u32[0];
        HIDWORD(v15.f64[0]) = vmovn_s32(vcgtq_f32(v9, v16)).i32[1];
        if ((vmaxv_u16(vcltz_s16(vshl_n_s16(*&v15.f64[0], 0xFuLL))) & 1) == 0)
        {
          for (i = 0; i != 3; ++i)
          {
            v21[i] = *&v24.i32[i];
          }

          (*(*a1 + 216))(&v22, a1);
          v19 = v22;
          v18 = v23;
          v22 = 0;
          v23 = 0;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          if (v19)
          {
            *v20 = v19;
            v20[1] = v18;
            return;
          }

          v8 = v18;
          v9 = xmmword_1B33B09C0;
        }

        v5 += 8;
        if (v5 == v6)
        {
          a3 = v20;
          v20[1] = v8;
          break;
        }
      }
    }

    *a3 = 0;
  }
}

void sub_1B30D5A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = v10;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30D5B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<ggl::PolygonSolidFill::S2MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2F050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::function<BOOL ()(md::RoadTileDataRenderable const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::CartographicTiledVectorRenderLayer<md::RoadTileDataRenderable>::layoutStencilTiles(unsigned __int8 *a1, md::LayoutContext *a2, ggl::zone_mallocator *a3, int a4, uint64_t a5)
{
  v116 = *MEMORY[0x1E69E9840];
  v114[0] = &unk_1F2A2F170;
  v115 = v114;
  v6 = *(a2 + 1);
  v7 = gdc::Context::get<md::GeometryContext>(v6);
  v83 = md::LayoutContext::get<md::SceneContext>(v6);
  v87 = v7;
  if (v7)
  {
    v95 = a1;
    if (md::SceneStateManager::isFinishedLoadingRequiredLayers(*v83))
    {
      v8 = a1;
      v9 = a1[48];
      v10 = a1[49];
      a1[360] = v9 != v10;
      if (v9 == v10)
      {
        return std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable const*)>::~__value_func[abi:nn200100](v114);
      }
    }

    else
    {
      v8 = a1;
      a1[360] = 1;
    }

    v11 = *(v8 + 44);
    v13 = v11[14];
    v12 = v11[15];
    v14 = *(v8 + 34);
    v15 = *(v8 + 35);
    if (v14 != v15)
    {
      do
      {
        v16 = *v14;
        if (!v115 || std::function<BOOL ()(md::RoadTileDataRenderable const*)>::operator()(v115, *v14))
        {
          v17 = *(v16 + 392);
          FillRect = grl::IconMetricsRenderResult::getFillRect(v17);
          v19 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v83 + 1, FillRect);
          if (v19)
          {
            v20 = (*(v19 + 17) - *(v19 + 16)) >> 5;
            if (v17[168] == 255)
            {
              v13 += v20;
            }

            else
            {
              v12 += v20;
            }
          }
        }

        ++v14;
      }

      while (v14 != v15);
      v11 = *(v95 + 44);
    }

    v93 = v11;
    v21 = gdc::ToCoordinateSystem(v87[320]);
    v22 = 128;
    if (v21)
    {
      v22 = 144;
    }

    v23 = *&v87[v22 + 8];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v81 = v23;
    if (v13 > (v93[8] - v93[7]) >> 3)
    {
      __asm { FMOV            V0.4S, #1.0 }

      operator new();
    }

    if (v12 > (v93[11] - v93[10]) >> 3)
    {
      operator new();
    }

    v29 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v30 = md::LayoutContext::cameraType(a2);
    if (*(a5 + 128))
    {
      v31 = a5;
    }

    else
    {
      v31 = (v29 + 808);
    }

    v32 = v31[5];
    v113[4] = v31[4];
    v113[5] = v32;
    v33 = v31[7];
    v113[6] = v31[6];
    v113[7] = v33;
    v34 = v31[1];
    v113[0] = *v31;
    v113[1] = v34;
    v35 = v31[3];
    v113[2] = v31[2];
    v113[3] = v35;
    v36 = *(v95 + 34);
    v82 = *(v95 + 35);
    v37 = v93;
    if (v36 != v82)
    {
      v38 = v30;
      v89 = v30;
      do
      {
        v84 = v36;
        v39 = *v36;
        if (!v115 || (std::function<BOOL ()(md::RoadTileDataRenderable const*)>::operator()(v115, *v36) & 1) != 0)
        {
          v94 = *(v39 + 392);
          v40 = grl::IconMetricsRenderResult::getFillRect(v94);
          v41 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v83 + 1, v40);
          if (v41)
          {
            v42 = *(v41 + 16);
            v92 = *(v41 + 17);
            if (v92 != v42)
            {
              v86 = v39;
              do
              {
                v43 = *(v95 + 44);
                if (*(*(v39 + 392) + 168) != 255)
                {
                  v44 = v43[15];
                  v45 = v37[10];
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v96, *(*(**(v45 + 8 * v44) + 136) + 32));
                  v46 = (*(**(v39 + 392) + 32))(*(v39 + 392));
                  v47 = 0;
                  v48 = v97 + 32;
                  do
                  {
                    *(v48 + v47) = *(v46 + v47);
                    v47 += 4;
                  }

                  while (v47 != 12);
                  v49 = (*(**(v39 + 392) + 32))(*(v39 + 392));
                  v50 = 0;
                  v51 = v97 + 48;
                  do
                  {
                    *(v51 + v50) = *(v49 + 12 + v50);
                    v50 += 4;
                  }

                  while (v50 != 12);
                  *(*(v45 + 8 * v44) + 32) = **(v95 + 44);
                  *(*(v45 + 8 * v44) + 40) = **(v45 + 8 * v44);
                  v52 = *(v45 + 8 * v44);
                  *(v52 + 56) = 0;
                  *(v52 + 48) = *(v94 + 169) + a4;
                  v106 = 0u;
                  v105 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v111 = 0u;
                  *v112 = 0u;
                  v104 = 1.0;
                  v107 = 1.0;
                  v110 = 1.0;
                  *&v112[16] = 0x3FF0000000000000;
                  md::GeometryContext::transformConstantData(v98, v87, (v94 + 168), v38, -1, 0.0, 0.0);
                }

                v53 = v43[14];
                v54 = v37[7];
                *(*(v54 + 8 * v53) + 32) = *v43;
                *(*(v54 + 8 * v53) + 40) = **(v54 + 8 * v53);
                v55 = v38;
                v56 = *(v54 + 8 * v53);
                *(v56 + 56) = 0;
                v57 = *(v94 + 169);
                *(v56 + 48) = v57 + a4;
                if (gdc::ToCoordinateSystem(v55))
                {
                  v58 = *(v94 + 176);
                  v59 = 1.0 / (1 << v57);
                  v60 = (1 << v57) + ~*(v94 + 172);
                  *&v100 = v59 * v58;
                  *(&v100 + 1) = v59 * v60;
                  *&v101 = v59 + v58 * v59;
                  *(&v101 + 1) = v59 + v60 * v59;
                  gdc::GlobeTileUtils::boundsFromMercatorRect(v98, &v100, 0.0, 0.0);
                  geo::OrientedBox<double,3u,double,double>::toMatrix(&v104, v98);
                  md::GeometryContext::transformConstantData(&v100, v87, (v94 + 168), v55, -1, 0.0, 0.0);
                }

                v61 = 1 << *(v42 + 1);
                v62 = 1.0 / v61;
                v63 = v62 * *(v42 + 8);
                v64 = v62 * (v61 + ~*(v42 + 4));
                v105 = 0u;
                v106 = 0u;
                v108 = 0u;
                v109 = 0u;
                v104 = v62;
                v107 = v62;
                v110 = v62;
                *&v111 = 0;
                *(&v111 + 1) = v63;
                *v112 = v64;
                *&v112[8] = xmmword_1B33B0740;
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*v56 + 136), *(*v56 + 232), v43[1], v43[2]);
                v37 = v93;
                v39 = v86;
                v65 = 0;
                v66 = v113;
                v38 = v89;
                do
                {
                  v67 = 0;
                  v68 = &v104;
                  do
                  {
                    v69 = 0;
                    v70 = 0.0;
                    v71 = v66;
                    do
                    {
                      v72 = *v71;
                      v71 += 4;
                      v70 = v70 + v68[v69++] * v72;
                    }

                    while (v69 != 4);
                    *(&v98[2 * v67++] + v65) = v70;
                    v68 += 4;
                  }

                  while (v67 != 4);
                  ++v65;
                  v66 = (v66 + 8);
                }

                while (v65 != 4);
                v73 = 0;
                v74 = v98;
                do
                {
                  v76 = *v74;
                  v75 = v74[1];
                  v74 += 2;
                  *(&v100 + v73) = vcvt_hight_f32_f64(vcvt_f32_f64(v76), v75);
                  v73 += 16;
                }

                while (v73 != 64);
                ggl::DataAccess<ggl::Tile::View>::DataAccess(v98, **(**(v54 + 8 * v53) + 136), 1);
                v77 = v99;
                v78 = v101;
                *v99 = v100;
                v77[1] = v78;
                v79 = v103;
                v77[2] = v102;
                v77[3] = v79;
                ggl::BufferMemory::~BufferMemory(v98);
                ggl::CommandBuffer::pushRenderItem(a3, (*(v54 + 8 * v53) + 8));
                ++*(*(v95 + 44) + 112);
                v42 += 32;
              }

              while (v42 != v92);
            }
          }
        }

        v36 = v84 + 1;
      }

      while (v84 + 1 != v82);
    }

    if (v81)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v81);
    }
  }

  return std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable const*)>::~__value_func[abi:nn200100](v114);
}

void sub_1B30D6888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  std::__function::__value_func<BOOL ()(md::RoadTileDataRenderable const*)>::~__value_func[abi:nn200100](v10 - 144);
  _Unwind_Resume(a1);
}

void md::CartographicTiledVectorRenderLayer<md::DaVinciRoadTileDataRenderable>::updateZScaleAndOffset(uint64_t ***a1, void *a2)
{
  v4 = md::LayoutContext::get<md::ElevationContext>(a2);
  v5 = md::LayoutContext::get<md::SettingsContext>(a2);
  if (v5)
  {
    v6 = v5[6];
  }

  else
  {
    v6 = 0;
  }

  v7 = md::LayoutContext::get<md::CameraContext>(a2);
  v8 = v7;
  if (v6 && v7)
  {
    v9 = md::DaVinciGroundSettings::valueForZoomLevel<float>(v6, 6, fmaxf(*(v7 + 3080) + *(v7 + 3076), 1.0));
  }

  else
  {
    v9 = 0.0;
    v10 = 0.0;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v10 = fmin(*(v8 + 3776), 0.0);
LABEL_9:
  if (v4)
  {
    v11 = v4[4];
    v12 = v4[5];
  }

  else
  {
    v11 = 1.0;
    v12 = 1.0;
  }

  v13 = *a1;
  v14 = a1[1];
  if (*a1 != v14)
  {
    v15 = v12 * v9;
    do
    {
      v16 = *v13++;
      v17 = v16[49];
      md::BaseMapTileDataRenderable::adjustZScale(v16, v11, v12);
      gdc::Tiled::unitsPerMeter((v17 + 168));
      v19 = v15 * v18;
      ggl::ConstantDataTyped<ggl::Grid::Style>::write(v22, v16[30]);
      *(v23 + 336) = v19;
      ggl::BufferMemory::~BufferMemory(v22);
      gdc::Tiled::unitsPerMeter((v17 + 168));
      v21 = v20;
      ggl::ConstantDataTyped<ggl::Grid::Style>::write(v22, v16[30]);
      *(v23 + 352) = v21 * v10;
      ggl::BufferMemory::~BufferMemory(v22);
    }

    while (v13 != v14);
  }
}

uint64_t std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::layoutStencilTiles(unsigned __int8 *a1, md::LayoutContext *a2, ggl::zone_mallocator *a3, int a4, char a5, uint64_t a6)
{
  v118 = *MEMORY[0x1E69E9840];
  v116[0] = &unk_1F2A2F1B8;
  v117 = v116;
  v8 = *(a2 + 1);
  v9 = gdc::Context::get<md::GeometryContext>(v8);
  v85 = md::LayoutContext::get<md::SceneContext>(v8);
  v89 = v9;
  if (v9)
  {
    v97 = a1;
    if ((a5 & 1) != 0 || !md::SceneStateManager::isFinishedLoadingRequiredLayers(*v85))
    {
      v10 = a1;
      a1[360] = 1;
    }

    else
    {
      v10 = a1;
      v11 = a1[48];
      v12 = a1[49];
      a1[360] = v11 != v12;
      if (v11 == v12)
      {
        return std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v116);
      }
    }

    v13 = *(v10 + 44);
    v15 = v13[14];
    v14 = v13[15];
    v16 = *(v10 + 34);
    v17 = *(v10 + 35);
    if (v16 != v17)
    {
      do
      {
        v18 = *v16;
        if (!v117 || std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::operator()(v117, *v16))
        {
          v19 = *(v18 + 392);
          FillRect = grl::IconMetricsRenderResult::getFillRect(v19);
          v21 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v85 + 1, FillRect);
          if (v21)
          {
            v22 = (*(v21 + 17) - *(v21 + 16)) >> 5;
            if (v19[168] == 255)
            {
              v15 += v22;
            }

            else
            {
              v14 += v22;
            }
          }
        }

        ++v16;
      }

      while (v16 != v17);
      v13 = *(v97 + 44);
    }

    v95 = v13;
    v23 = gdc::ToCoordinateSystem(v89[320]);
    v24 = 128;
    if (v23)
    {
      v24 = 144;
    }

    v25 = *&v89[v24 + 8];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v83 = v25;
    if (v15 > (v95[8] - v95[7]) >> 3)
    {
      __asm { FMOV            V0.4S, #1.0 }

      operator new();
    }

    if (v14 > (v95[11] - v95[10]) >> 3)
    {
      operator new();
    }

    v31 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v32 = md::LayoutContext::cameraType(a2);
    if (*(a6 + 128))
    {
      v33 = a6;
    }

    else
    {
      v33 = (v31 + 808);
    }

    v34 = v33[5];
    v115[4] = v33[4];
    v115[5] = v34;
    v35 = v33[7];
    v115[6] = v33[6];
    v115[7] = v35;
    v36 = v33[1];
    v115[0] = *v33;
    v115[1] = v36;
    v37 = v33[3];
    v115[2] = v33[2];
    v115[3] = v37;
    v38 = *(v97 + 34);
    v84 = *(v97 + 35);
    v39 = v95;
    if (v38 != v84)
    {
      v40 = v32;
      v91 = v32;
      do
      {
        v86 = v38;
        v41 = *v38;
        if (!v117 || (std::function<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::operator()(v117, *v38) & 1) != 0)
        {
          v96 = *(v41 + 392);
          v42 = grl::IconMetricsRenderResult::getFillRect(v96);
          v43 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v85 + 1, v42);
          if (v43)
          {
            v44 = *(v43 + 16);
            v94 = *(v43 + 17);
            if (v94 != v44)
            {
              v88 = v41;
              do
              {
                v45 = *(v97 + 44);
                if (*(*(v41 + 392) + 168) != 255)
                {
                  v46 = v45[15];
                  v47 = v39[10];
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v98, *(*(**(v47 + 8 * v46) + 136) + 32));
                  v48 = (*(**(v41 + 392) + 32))(*(v41 + 392));
                  v49 = 0;
                  v50 = v99 + 32;
                  do
                  {
                    *(v50 + v49) = *(v48 + v49);
                    v49 += 4;
                  }

                  while (v49 != 12);
                  v51 = (*(**(v41 + 392) + 32))(*(v41 + 392));
                  v52 = 0;
                  v53 = v99 + 48;
                  do
                  {
                    *(v53 + v52) = *(v51 + 12 + v52);
                    v52 += 4;
                  }

                  while (v52 != 12);
                  *(*(v47 + 8 * v46) + 32) = **(v97 + 44);
                  *(*(v47 + 8 * v46) + 40) = **(v47 + 8 * v46);
                  v54 = *(v47 + 8 * v46);
                  *(v54 + 56) = 0;
                  *(v54 + 48) = *(v96 + 169) + a4;
                  v108 = 0u;
                  v107 = 0u;
                  v110 = 0u;
                  v111 = 0u;
                  v113 = 0u;
                  *v114 = 0u;
                  v106 = 1.0;
                  v109 = 1.0;
                  v112 = 1.0;
                  *&v114[16] = 0x3FF0000000000000;
                  md::GeometryContext::transformConstantData(v100, v89, (v96 + 168), v40, -1, 0.0, 0.0);
                }

                v55 = v45[14];
                v56 = v39[7];
                *(*(v56 + 8 * v55) + 32) = *v45;
                *(*(v56 + 8 * v55) + 40) = **(v56 + 8 * v55);
                v57 = v40;
                v58 = *(v56 + 8 * v55);
                *(v58 + 56) = 0;
                v59 = *(v96 + 169);
                *(v58 + 48) = v59 + a4;
                if (gdc::ToCoordinateSystem(v57))
                {
                  v60 = *(v96 + 176);
                  v61 = 1.0 / (1 << v59);
                  v62 = (1 << v59) + ~*(v96 + 172);
                  *&v102 = v61 * v60;
                  *(&v102 + 1) = v61 * v62;
                  *&v103 = v61 + v60 * v61;
                  *(&v103 + 1) = v61 + v62 * v61;
                  gdc::GlobeTileUtils::boundsFromMercatorRect(v100, &v102, 0.0, 0.0);
                  geo::OrientedBox<double,3u,double,double>::toMatrix(&v106, v100);
                  md::GeometryContext::transformConstantData(&v102, v89, (v96 + 168), v57, -1, 0.0, 0.0);
                }

                v63 = 1 << *(v44 + 1);
                v64 = 1.0 / v63;
                v65 = v64 * *(v44 + 8);
                v66 = v64 * (v63 + ~*(v44 + 4));
                v107 = 0u;
                v108 = 0u;
                v110 = 0u;
                v111 = 0u;
                v106 = v64;
                v109 = v64;
                v112 = v64;
                *&v113 = 0;
                *(&v113 + 1) = v65;
                *v114 = v66;
                *&v114[8] = xmmword_1B33B0740;
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*v58 + 136), *(*v58 + 232), v45[1], v45[2]);
                v39 = v95;
                v41 = v88;
                v67 = 0;
                v68 = v115;
                v40 = v91;
                do
                {
                  v69 = 0;
                  v70 = &v106;
                  do
                  {
                    v71 = 0;
                    v72 = 0.0;
                    v73 = v68;
                    do
                    {
                      v74 = *v73;
                      v73 += 4;
                      v72 = v72 + v70[v71++] * v74;
                    }

                    while (v71 != 4);
                    *(&v100[2 * v69++] + v67) = v72;
                    v70 += 4;
                  }

                  while (v69 != 4);
                  ++v67;
                  v68 = (v68 + 8);
                }

                while (v67 != 4);
                v75 = 0;
                v76 = v100;
                do
                {
                  v78 = *v76;
                  v77 = v76[1];
                  v76 += 2;
                  *(&v102 + v75) = vcvt_hight_f32_f64(vcvt_f32_f64(v78), v77);
                  v75 += 16;
                }

                while (v75 != 64);
                ggl::DataAccess<ggl::Tile::View>::DataAccess(v100, **(**(v56 + 8 * v55) + 136), 1);
                v79 = v101;
                v80 = v103;
                *v101 = v102;
                v79[1] = v80;
                v81 = v105;
                v79[2] = v104;
                v79[3] = v81;
                ggl::BufferMemory::~BufferMemory(v100);
                ggl::CommandBuffer::pushRenderItem(a3, (*(v56 + 8 * v55) + 8));
                ++*(*(v97 + 44) + 112);
                v44 += 32;
              }

              while (v44 != v94);
            }
          }
        }

        v38 = v86 + 1;
      }

      while (v86 + 1 != v84);
    }

    if (v83)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v83);
    }
  }

  return std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v116);
}

void sub_1B30D76F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::PolygonTileData> const*)>::~__value_func[abi:nn200100](v10 - 144);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::VenueTileData> const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::function<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::TrafficTileData> const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::function<BOOL ()(md::TransitTileDataRenderable const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::CartographicTiledVectorRenderLayer<md::TransitTileDataRenderable>::layoutStencilTiles(unsigned __int8 *a1, md::LayoutContext *a2, ggl::zone_mallocator *a3, int a4, uint64_t a5)
{
  v116 = *MEMORY[0x1E69E9840];
  v114[0] = &unk_1F2A2F248;
  v115 = v114;
  v6 = *(a2 + 1);
  v7 = gdc::Context::get<md::GeometryContext>(v6);
  v83 = md::LayoutContext::get<md::SceneContext>(v6);
  v87 = v7;
  if (v7)
  {
    v95 = a1;
    if (md::SceneStateManager::isFinishedLoadingRequiredLayers(*v83))
    {
      v8 = a1;
      v9 = a1[48];
      v10 = a1[49];
      a1[360] = v9 != v10;
      if (v9 == v10)
      {
        return std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable const*)>::~__value_func[abi:nn200100](v114);
      }
    }

    else
    {
      v8 = a1;
      a1[360] = 1;
    }

    v11 = *(v8 + 44);
    v13 = v11[14];
    v12 = v11[15];
    v14 = *(v8 + 34);
    v15 = *(v8 + 35);
    if (v14 != v15)
    {
      do
      {
        v16 = *v14;
        if (!v115 || std::function<BOOL ()(md::TransitTileDataRenderable const*)>::operator()(v115, *v14))
        {
          v17 = *(v16 + 392);
          FillRect = grl::IconMetricsRenderResult::getFillRect(v17);
          v19 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v83 + 1, FillRect);
          if (v19)
          {
            v20 = (*(v19 + 17) - *(v19 + 16)) >> 5;
            if (v17[168] == 255)
            {
              v13 += v20;
            }

            else
            {
              v12 += v20;
            }
          }
        }

        ++v14;
      }

      while (v14 != v15);
      v11 = *(v95 + 44);
    }

    v93 = v11;
    v21 = gdc::ToCoordinateSystem(v87[320]);
    v22 = 128;
    if (v21)
    {
      v22 = 144;
    }

    v23 = *&v87[v22 + 8];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v81 = v23;
    if (v13 > (v93[8] - v93[7]) >> 3)
    {
      __asm { FMOV            V0.4S, #1.0 }

      operator new();
    }

    if (v12 > (v93[11] - v93[10]) >> 3)
    {
      operator new();
    }

    v29 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v30 = md::LayoutContext::cameraType(a2);
    if (*(a5 + 128))
    {
      v31 = a5;
    }

    else
    {
      v31 = (v29 + 808);
    }

    v32 = v31[5];
    v113[4] = v31[4];
    v113[5] = v32;
    v33 = v31[7];
    v113[6] = v31[6];
    v113[7] = v33;
    v34 = v31[1];
    v113[0] = *v31;
    v113[1] = v34;
    v35 = v31[3];
    v113[2] = v31[2];
    v113[3] = v35;
    v36 = *(v95 + 34);
    v82 = *(v95 + 35);
    v37 = v93;
    if (v36 != v82)
    {
      v38 = v30;
      v89 = v30;
      do
      {
        v84 = v36;
        v39 = *v36;
        if (!v115 || (std::function<BOOL ()(md::TransitTileDataRenderable const*)>::operator()(v115, *v36) & 1) != 0)
        {
          v94 = *(v39 + 392);
          v40 = grl::IconMetricsRenderResult::getFillRect(v94);
          v41 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v83 + 1, v40);
          if (v41)
          {
            v42 = *(v41 + 16);
            v92 = *(v41 + 17);
            if (v92 != v42)
            {
              v86 = v39;
              do
              {
                v43 = *(v95 + 44);
                if (*(*(v39 + 392) + 168) != 255)
                {
                  v44 = v43[15];
                  v45 = v37[10];
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v96, *(*(**(v45 + 8 * v44) + 136) + 32));
                  v46 = (*(**(v39 + 392) + 32))(*(v39 + 392));
                  v47 = 0;
                  v48 = v97 + 32;
                  do
                  {
                    *(v48 + v47) = *(v46 + v47);
                    v47 += 4;
                  }

                  while (v47 != 12);
                  v49 = (*(**(v39 + 392) + 32))(*(v39 + 392));
                  v50 = 0;
                  v51 = v97 + 48;
                  do
                  {
                    *(v51 + v50) = *(v49 + 12 + v50);
                    v50 += 4;
                  }

                  while (v50 != 12);
                  *(*(v45 + 8 * v44) + 32) = **(v95 + 44);
                  *(*(v45 + 8 * v44) + 40) = **(v45 + 8 * v44);
                  v52 = *(v45 + 8 * v44);
                  *(v52 + 56) = 0;
                  *(v52 + 48) = *(v94 + 169) + a4;
                  v106 = 0u;
                  v105 = 0u;
                  v108 = 0u;
                  v109 = 0u;
                  v111 = 0u;
                  *v112 = 0u;
                  v104 = 1.0;
                  v107 = 1.0;
                  v110 = 1.0;
                  *&v112[16] = 0x3FF0000000000000;
                  md::GeometryContext::transformConstantData(v98, v87, (v94 + 168), v38, -1, 0.0, 0.0);
                }

                v53 = v43[14];
                v54 = v37[7];
                *(*(v54 + 8 * v53) + 32) = *v43;
                *(*(v54 + 8 * v53) + 40) = **(v54 + 8 * v53);
                v55 = v38;
                v56 = *(v54 + 8 * v53);
                *(v56 + 56) = 0;
                v57 = *(v94 + 169);
                *(v56 + 48) = v57 + a4;
                if (gdc::ToCoordinateSystem(v55))
                {
                  v58 = *(v94 + 176);
                  v59 = 1.0 / (1 << v57);
                  v60 = (1 << v57) + ~*(v94 + 172);
                  *&v100 = v59 * v58;
                  *(&v100 + 1) = v59 * v60;
                  *&v101 = v59 + v58 * v59;
                  *(&v101 + 1) = v59 + v60 * v59;
                  gdc::GlobeTileUtils::boundsFromMercatorRect(v98, &v100, 0.0, 0.0);
                  geo::OrientedBox<double,3u,double,double>::toMatrix(&v104, v98);
                  md::GeometryContext::transformConstantData(&v100, v87, (v94 + 168), v55, -1, 0.0, 0.0);
                }

                v61 = 1 << *(v42 + 1);
                v62 = 1.0 / v61;
                v63 = v62 * *(v42 + 8);
                v64 = v62 * (v61 + ~*(v42 + 4));
                v105 = 0u;
                v106 = 0u;
                v108 = 0u;
                v109 = 0u;
                v104 = v62;
                v107 = v62;
                v110 = v62;
                *&v111 = 0;
                *(&v111 + 1) = v63;
                *v112 = v64;
                *&v112[8] = xmmword_1B33B0740;
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*v56 + 136), *(*v56 + 232), v43[1], v43[2]);
                v37 = v93;
                v39 = v86;
                v65 = 0;
                v66 = v113;
                v38 = v89;
                do
                {
                  v67 = 0;
                  v68 = &v104;
                  do
                  {
                    v69 = 0;
                    v70 = 0.0;
                    v71 = v66;
                    do
                    {
                      v72 = *v71;
                      v71 += 4;
                      v70 = v70 + v68[v69++] * v72;
                    }

                    while (v69 != 4);
                    *(&v98[2 * v67++] + v65) = v70;
                    v68 += 4;
                  }

                  while (v67 != 4);
                  ++v65;
                  v66 = (v66 + 8);
                }

                while (v65 != 4);
                v73 = 0;
                v74 = v98;
                do
                {
                  v76 = *v74;
                  v75 = v74[1];
                  v74 += 2;
                  *(&v100 + v73) = vcvt_hight_f32_f64(vcvt_f32_f64(v76), v75);
                  v73 += 16;
                }

                while (v73 != 64);
                ggl::DataAccess<ggl::Tile::View>::DataAccess(v98, **(**(v54 + 8 * v53) + 136), 1);
                v77 = v99;
                v78 = v101;
                *v99 = v100;
                v77[1] = v78;
                v79 = v103;
                v77[2] = v102;
                v77[3] = v79;
                ggl::BufferMemory::~BufferMemory(v98);
                ggl::CommandBuffer::pushRenderItem(a3, (*(v54 + 8 * v53) + 8));
                ++*(*(v95 + 44) + 112);
                v42 += 32;
              }

              while (v42 != v92);
            }
          }
        }

        v36 = v84 + 1;
      }

      while (v84 + 1 != v82);
    }

    if (v81)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v81);
    }
  }

  return std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable const*)>::~__value_func[abi:nn200100](v114);
}

void sub_1B30D8624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable const*)>::~__value_func[abi:nn200100](v10 - 144);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(HillshadeRenderable const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<BOOL ()(HillshadeRenderable const*)>::~__value_func[abi:nn200100](v3);
}

uint64_t std::__function::__value_func<BOOL ()(HillshadeRenderable const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 336);
  std::mutex::lock(v2);
  v3 = *(a1 + 16);
  v4 = *(v2 + 184);
  if (v3 == v4)
  {
    if (v3)
    {
      gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v6, *(v4 + 16));
      v5 = v6;
      if (v6)
      {
        v5 = *(v6 + 256);
      }
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
    }

    *(v2 + 157) = v5 & 1;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    md::LabelStyleCache::updateNavRoadSignScale(v2);
  }

  std::mutex::unlock(v2);
}

void std::__function::__func<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A2F2D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F2D8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0,std::allocator<md::LabelManager::stylesheetDidFinishDecodingGlobalProperties(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F2D8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<md::LabelManager::updateStyleManager(void)::$_0,std::allocator<md::LabelManager::updateStyleManager(void)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelManager::updateStyleManager(void)::$_0,std::allocator<md::LabelManager::updateStyleManager(void)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F398;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::updateStyleManager(void)::$_0,std::allocator<md::LabelManager::updateStyleManager(void)::$_0>,void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F398;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

__n128 std::__function::__func<md::LabelManager::stylesheetWillTransition(gss::DisplayStyle,BOOL)::$_0,std::allocator<md::LabelManager::stylesheetWillTransition(gss::DisplayStyle,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2F3E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 25) = 0;
  *(a2 + 28) = 0;
  return result;
}

void md::LabelManager::resolveLabelScaleFactor(md::LabelManager *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(this + 3400);
  v2 = 0x505040302uLL >> (8 * ((v1 - 1) & 0x1Fu));
  if ((v1 - 1) > 4)
  {
    LOBYTE(v2) = 1;
  }

  if (*(this + 3402) == 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = *(this + 3400);
  }

  *(this + 3401) = v3;
  v4 = *(this + 42);
  std::mutex::lock(v4);
  if (*(v4 + 159) != v1)
  {
    *(v4 + 159) = v1;
    md::LabelStyleCache::updateNavRoadSignScale(v4);
  }

  if (*(v4 + 158) != v3)
  {
    *(v4 + 158) = v3;
    v10 = &unk_1F2A3A188;
    v11 = v3;
    v12 = &v10;
    md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*(v4 + 264), &v10);
    std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](&v10);
    v7 = &unk_1F2A3A188;
    v8 = v3;
    v9 = &v7;
    md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::forEach(*(v4 + 376), &v7);
    std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](&v7);
    v5 = *(v4 + 432);
    v6 = *(v4 + 158);
    if (*(v5 + 93) != v6)
    {
      *(v5 + 93) = v6;
      md::LabelStyle::invalidateCachedProperties(v5);
    }
  }

  std::mutex::unlock(v4);
}

void sub_1B30D8E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::shared_ptr<md::LabelStyle> const&)>::~__value_func[abi:nn200100](va);
  std::mutex::unlock(v3);
  _Unwind_Resume(a1);
}

void md::LabelManager::styleForFeatureAttributes(uint64_t *a1, void *a2, uint64_t *a3, void *a4)
{
  v6 = a2[16];
  if (v6)
  {
    v7 = atomic_load((v6 + 3699));
    if (v7)
    {
      v8 = a2[55];
      *a1 = a2[54];
      a1[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      return;
    }
  }

  md::LabelStyleCache::styleQueryForFeatureAttributes(&v24, a2 + 23, a3, a4);
  *a1 = 0;
  a1[1] = 0;
  v9 = v24;
  v10 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v19, v9, v10);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = v23;
  if (v23 == 1)
  {
    (*(*v19 + 56))(v19);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  if (v11)
  {
    md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::find(&v19, (a2 + 26), &v24);
    if (v21 != 1)
    {
      operator new();
    }

    v13 = v19;
    v12 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a1 = v13;
    a1[1] = v12;
    v14 = v20;
    if (!v20)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v15 = a2[16];
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = atomic_load((v15 + 3698));
    if ((v16 & 1) == 0)
    {
      goto LABEL_28;
    }

    v18 = a2[54];
    v17 = a2[55];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = a1[1];
    *a1 = v18;
    a1[1] = v17;
    if (!v14)
    {
      goto LABEL_28;
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
LABEL_28:
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }
}

void sub_1B30D90B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void **std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::unique_ptr<md::MaterialRaster>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      v1[3] = 0;
      if (v3)
      {
        v4 = v3[12];
        if (v4)
        {
          v3[13] = v4;
          operator delete(v4);
        }

        v5 = v3[9];
        if (v5)
        {
          v3[10] = v5;
          operator delete(v5);
        }

        v6 = v3[6];
        if (v6)
        {
          v3[7] = v6;
          operator delete(v6);
        }

        v7 = v3[5];
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v8 = v3[3];
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        v9 = v3[1];
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        }

        MEMORY[0x1B8C62190](v3, 0x1030C4040757CC0);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t md::StyleAttributeRasterSet::textureForAttribute(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (v2)
  {
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
    if (v5)
    {
      for (i = *v5; i; i = *i)
      {
        v7 = i[1];
        if (v7 == a2)
        {
          if (*(i + 4) == a2)
          {
            return i[3];
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
    }
  }

  return 0;
}

uint64_t *md::StyleAttributeRasterSet::materialRasterForID(md::StyleAttributeRasterSet *this, unsigned int a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % *(this + 6);
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(*(this + 5) + 8 * v4);
    if (v5)
    {
      for (i = *v5; i; i = *i)
      {
        v7 = i[1];
        if (v7 == a2)
        {
          if (*(i + 16) == a2)
          {
            return i[3];
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
    }
  }

  return 0;
}

void md::MapTileData::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  gdc::LayerData::createDebugNode(a1, a2);
  if (*(a1 + 688))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "Debug Model Tile");
    gdc::DebugTreeNode::DebugTreeNode(&v49, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Key");
    FillRect = grl::IconMetricsRenderResult::getFillRect(a1);
    gdc::DebugTreeValue::DebugTreeValue(v46, *(FillRect + 104));
    gdc::DebugTreeNode::addProperty(&v49, &__p, v46);
    if (v48 < 0)
    {
      operator delete(v47);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(v44, "Tile Key");
    std::to_string(&v56, *(a1 + 176));
    v5 = std::string::insert(&v56, 0, "x: ", 3uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v57.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v57.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v57, ", y: ", 5uLL);
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v55, *(a1 + 172));
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v55;
    }

    else
    {
      v9 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v55.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v58, v9, size);
    v12 = v11->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v59, ", z: ", 5uLL);
    v14 = v13->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = *&v13->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v54, *(a1 + 169));
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v54;
    }

    else
    {
      v15 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v16 = v54.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&__p, v15, v16);
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    gdc::DebugTreeValue::DebugTreeValue(v41, &v40);
    gdc::DebugTreeNode::addProperty(&v49, v44, v41);
    if (v43 < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Style");
    gdc::DebugTreeValue::DebugTreeValue(v37, *(*(a1 + 688) + 48));
    gdc::DebugTreeNode::addProperty(&v49, &__p, v37);
    if (v39 < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Byte Count");
    gdc::DebugTreeValue::DebugTreeValue(v34, *(*(a1 + 688) + 40));
    gdc::DebugTreeNode::addProperty(&v49, &__p, v34);
    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    for (i = *(*(a1 + 688) + 16); i; i = *i)
    {
      v20 = *(i + 3);
      v21 = i[4];
      v22 = geo::codec::chapterDetailTypeAsString(*(i + 2));
      std::string::basic_string[abi:nn200100]<0>(&v59, v22);
      gdc::DebugTreeNode::DebugTreeNode(&__p, &v59);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&v59, "Byte Count");
      gdc::DebugTreeValue::DebugTreeValue(v26, v20);
      gdc::DebugTreeNode::addProperty(&__p, &v59, v26);
      if (v28 < 0)
      {
        operator delete(v27);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&v59, "Decode Time");
      gdc::DebugTreeValue::DebugTreeValue(v23, v21);
      gdc::DebugTreeNode::addProperty(&__p, &v59, v23);
      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      gdc::DebugTreeNode::addChildNode(&v49, &__p);
      v59.__r_.__value_.__r.__words[0] = &v33;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v59);
      v59.__r_.__value_.__r.__words[0] = &v32;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v59);
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    gdc::DebugTreeNode::addChildNode(a2, &v49);
    __p.__r_.__value_.__r.__words[0] = &v53;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__p);
    __p.__r_.__value_.__r.__words[0] = &v52;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__p);
    if (v51 < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B30D988C(_Unwind_Exception *a1)
{
  *(v2 - 224) = &STACK[0x260];
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 224));
  *(v2 - 224) = &STACK[0x248];
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 224));
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  STACK[0x218] = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x218]);
  STACK[0x218] = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x218]);
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

uint64_t md::DaVinciAssetLayerDataSource::descriptionForKey@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  UInt64 = gdc::ResourceKey::getUInt64(*(a1 + 16), 0);
  std::ostringstream::basic_ostringstream[abi:nn200100](&v13);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, "gdc::LayerDataRequestKey<Type:", 30);
  v5 = *(a1 + 8);
  if (v5 > 0x51)
  {
    v6 = "<Invalid>";
  }

  else
  {
    v6 = off_1E7B30210[v5];
  }

  v7 = strlen(v6);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, v6, v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, ", Asset ID: ", 12);
  v8 = MEMORY[0x1B8C61CF0](&v13, UInt64);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, ">", 1);
  if ((v20 & 0x10) != 0)
  {
    v10 = v19;
    if (v19 < v16)
    {
      v19 = v16;
      v10 = v16;
    }

    locale = v15[4].__locale_;
  }

  else
  {
    if ((v20 & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_17;
    }

    locale = v15[1].__locale_;
    v10 = v15[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, locale, v9);
  }

LABEL_17:
  a2[v9] = 0;
  v13 = *MEMORY[0x1E69E54E8];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v14 = MEMORY[0x1E69E5548] + 16;
  if (v18 < 0)
  {
    operator delete(__p);
  }

  v14 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v21);
}

void sub_1B30D9CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
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

uint64_t md::DaVinciAssetLayerDataSource::updateRequest(uint64_t a1, unsigned __int8 **a2, uint64_t a3, unsigned __int16 **a4)
{
  v48[1] = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap(&v40, 28, *a4, a4[1]);
  v8 = v40;
  v7 = v41[0];
  if (v41[0])
  {
    atomic_fetch_add_explicit(v41[0] + 1, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (!v8 || (v9 = *(v8 + 152)) == 0 || *(a1 + 648) != 1 || (v11 = *(v9 + 56), v10 = *(v9 + 64), v12 = v10 - v11, v10 == v11))
  {
    v16 = 0;
    goto LABEL_14;
  }

  if (v10 - v11 < 0)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v13 = malloc_type_malloc(v10 - v11, 0x100004000313F17uLL);
  memmove(v13, v11, v12);
  if (!v12)
  {
    v16 = 0;
    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

  v14 = *a4;
  v15 = a4[1];
  while (1)
  {
    if (v14 == v15)
    {
      v18 = **a2;
LABEL_18:
      v19 = v13;
      while (1)
      {
        v20 = *v19;
        v21 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((*(a1 + 616) + 16), *v19);
        if (v21)
        {
          v22 = v21[3];
          v23 = v21[4];
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v22 && (v18 || *(std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((*(a1 + 616) + 56), v20) + 24) != 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          v23 = 0;
        }

        v24 = *(*a2 + 14);
        v48[0] = v20;
        gdc::ResourceKey::ResourceKey(&v40, v18, 36, v48, 1, v24);
        gdc::LayerDataRequest::request(*a2, &v40, 0);
        if (v41[0] != v42)
        {
          free(v41[0]);
        }

LABEL_29:
        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v23);
        }

        ++v19;
        v12 -= 8;
        if (!v12)
        {
          v16 = 1;
          if (!v13)
          {
            goto LABEL_14;
          }

LABEL_35:
          free(v13);
          goto LABEL_14;
        }
      }
    }

    if (*v14 == 36)
    {
      break;
    }

    v14 += 24;
  }

  v18 = **a2;
  if (v14 == v15 || !*(v14 + 4))
  {
    goto LABEL_18;
  }

  v38 = v13;
  v25 = *(v14 + 3);
  if (v25)
  {
    while (1)
    {
      v40 = v25[2];
      v41[0] = v44;
      v41[1] = v44;
      v42 = v44;
      v43 = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(v41, v25[3], v25[4]);
      v26 = v25[11];
      v45 = *(v25 + 6);
      v28 = v25[14];
      v27 = v25[15];
      v44[4] = v26;
      v46 = v28;
      v47 = v27;
      if (v27)
      {
        v29 = 1;
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = v46;
        v30 = v47;
        if (v47)
        {
          v29 = 0;
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v30 = 0;
        v29 = 1;
      }

      UInt64 = gdc::ResourceKey::getUInt64(v41[0], 0);
      v32 = *(a1 + 616);
      v33 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((v32 + 16), UInt64);
      if (!v33)
      {
        break;
      }

      v34 = v33[3];
      v35 = v33[4];
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v34)
      {
        v32 = *(a1 + 616);
        goto LABEL_52;
      }

      if (!v18)
      {
        v32 = *(a1 + 616);
        if (*(std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v32 + 56), UInt64) + 24) == 1)
        {
          goto LABEL_52;
        }
      }

LABEL_56:
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v35);
      }

      if ((v29 & 1) == 0)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v30);
      }

      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v47);
      }

      if (v41[0] != v42)
      {
        free(v41[0]);
      }

      v25 = *v25;
      if (!v25)
      {
        goto LABEL_65;
      }
    }

    v35 = 0;
LABEL_52:
    LOBYTE(v48[0]) = *v28 == 1;
    v36 = *(v28 + 144);
    v37 = *(v28 + 152);
    v39[0] = v36;
    v39[1] = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gms::MaterialManager<ggl::Texture2D>::replaceMaterialSheet(v32, UInt64, v39, v48);
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v37);
    }

    goto LABEL_56;
  }

LABEL_65:
  v16 = 0;
  v13 = v38;
  if (v38)
  {
    goto LABEL_35;
  }

LABEL_14:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v16;
}

void sub_1B30DA18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciAssetLayerDataSource::createLayerData(uint64_t a1, uint64_t a2, unsigned __int16 **a3)
{
  v11 = *MEMORY[0x1E69E9840];
  gdc::LayerDataSource::getResourceFromMap(&v9, 28, *a3, a3[1]);
  v5 = v10;
  v7 = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(a1 + 600);
  operator new();
}

void sub_1B30DA458(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::AssetData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2F5B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciAssetLayerDataSource::~DaVinciAssetLayerDataSource(md::DaVinciAssetLayerDataSource *this)
{
  *this = &unk_1F2A2F510;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 632);
  v2 = *(this + 78);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 74) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2F510;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 632);
  v2 = *(this + 78);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *(this + 74) = &unk_1F2A59028;

  gdc::LayerDataSource::~LayerDataSource(this);
}

void ggl::SinglePassRouteLine::BasePipelineState::~BasePipelineState(ggl::SinglePassRouteLine::BasePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::SinglePassRouteLine::BasePipelineSetup::typedReflection(ggl::SinglePassRouteLine::BasePipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection();
    ggl::SinglePassRouteLine::BasePipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::RouteLine::DefaultVbo>::typedReflection(void)::r;
    unk_1EB835AA0 = &ggl::SinglePassRouteLine::pipelineDataBasePipelineDeviceStructs(void)::ref;
    qword_1EB835AA8 = 0;
    {
      ggl::SinglePassRouteLine::pipelineDataBasePipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1EB835A78 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB835A80 = ggl::SinglePassRouteLine::Style::reflection(void)::reflection;
      unk_1EB835A88 = ggl::SinglePassRouteLine::ClipParams::reflection(void)::reflection;
      qword_1EB835A90 = ggl::SinglePassRouteLine::DrawAnimationDescription::reflection(void)::reflection;
    }

    qword_1EB835AB0 = &ggl::SinglePassRouteLine::pipelineDataBasePipelineConstantStructs(void)::ref;
    unk_1EB835AB8 = xmmword_1B33B1000;
  }
}

void ggl::SinglePassRouteLine::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::ScreenVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::ScreenVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::ScreenVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::DaVinci::ScreenVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2F6C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::ScreenMesh::~ScreenMesh(ggl::DaVinci::ScreenMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::ScreenVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::ScreenVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RouteLineSection::~RouteLineSection(md::RouteLineSection *this)
{
  md::RouteLineSection::~RouteLineSection(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2F738;
  *(this + 16) = -1082130432;
  v2 = *(this + 13);
  if (v2)
  {
    free(v2);
    *(this + 13) = 0;
  }

  *(this + 14) = 0;
  *(this + 15) = 0xBFF0000000000000;
  v3 = *(this + 9);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 46);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 44);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 42);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 40);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 38);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 36);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 34);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 32);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  objc_destroyWeak(this + 25);
  *(this + 4) = &unk_1F2A2F880;

  v12 = *(this + 1);
  if (v12)
  {
    *(this + 2) = v12;
    operator delete(v12);
  }
}

void geo::_retain_ptr<GEOStyleAttributes * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2F880;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOStyleAttributes * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2F880;

  return a1;
}

__n128 md::RouteLineSection::SingleLayerVertexSource::operator[]@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = **(a1 + 8) + 48 * a2;
  v4 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v4;
  result = *(v3 + 32);
  *(a3 + 32) = result;
  return result;
}

__n128 md::RouteLineSection::DoubleLayerVertexSource::operator[]@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = **(a1 + 8) + 48 * *(*(a1 + 16) + 8 * a2);
  v4 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v4;
  result = *(v3 + 32);
  *(a3 + 32) = result;
  return result;
}

BOOL ___ZN2md16RouteLineSection19simplifyWithEpsilonERKd_block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v4 = *a2 + 48 * a3;
  if (*(v4 + 44) != *(v4 + 45))
  {
    v5 = *(v4 + 40);
    if (v5 == 0.0 || v5 == 1.0)
    {
      return 1;
    }
  }

  v8 = *(v4 + 36);
  v9 = *(v4 - 12);
  result = v8 != v9;
  if (v8 == v9 && (a4 & 1) == 0)
  {
    return v8 != *(v4 + 84);
  }

  return result;
}

BOOL ___ZN2md16RouteLineSection19simplifyWithEpsilonERKd_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v4 = *a2 + 48 * a3;
  v5 = *(v4 - 4);
  v6 = *(v4 + 44);
  result = v5 != v6;
  if (v5 == v6 && (a4 & 1) == 0)
  {
    return v5 != *(v4 + 92);
  }

  return result;
}

unint64_t md::RouteLineSection::simplifiedCoordinate(md::RouteLineSection *this, VKPolylineOverlay *a2, PolylineCoordinate a3)
{
  v5 = a2;
  v6 = v5;
  v7 = fabsf(*(this + 15));
  if (v7 <= (v7 * 0.000011921) || v7 < 1.1755e-38)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = [(VKPolylineOverlay *)v5 composedRoute];
    [v11 distanceFromPoint:*(*(this + 1) + 12) toPoint:a3];
    v13 = v12;

    v14 = v13 * *(this + 14);
    if (v14 <= 0.0)
    {
      if (v14 < 0.0)
      {
        (*(**(this + 10) + 24))(*(this + 10));
      }

      v10 = 0;
      v16 = 0;
    }

    else if ((*(**(this + 10) + 24))(*(this + 10)) == 1)
    {
      v15 = (*(**(this + 10) + 24))(*(this + 10));
      v10 = 0;
      v16 = v15 - 1;
    }

    else
    {
      (*(**(this + 10) + 16))(&v31);
      (*(**(this + 10) + 16))(&v29);
      v17 = vsub_f32(v31, v29);
      v18 = v14 - sqrtf(vaddv_f32(vmul_f32(v17, v17)));
      v16 = 0;
      if (v18 <= 0.0)
      {
LABEL_16:
        (*(**(this + 10) + 16))(&v24);
        v31 = v24;
        v33 = v26;
        v34 = v27;
        v32 = v25;
        v35 = v28;
        (*(**(this + 10) + 16))(&v24);
        v29 = v24;
        v30 = v25;
        v20 = vsub_f32(v31, v24);
        v21 = (v18 / sqrtf(vaddv_f32(vmul_f32(v20, v20)))) + 1.0;
        if (v21 >= 1.0)
        {
          v16 += vcvtms_u32_f32(v21);
          v21 = v21 - floorf(v21);
        }
      }

      else
      {
        while ((*(**(this + 10) + 24))(*(this + 10)) - 1 > (v16 + 1))
        {
          (*(**(this + 10) + 16))(&v24);
          (*(**(this + 10) + 16))(v23);
          v19 = vsub_f32(v24, v23[0]);
          v18 = v18 - sqrtf(vaddv_f32(vmul_f32(v19, v19)));
          ++v16;
          if (v18 <= 0.0)
          {
            goto LABEL_16;
          }
        }

        v16 = (*(**(this + 10) + 24))(*(this + 10)) - 1;
        v21 = 0.0;
      }

      v10 = LODWORD(v21) << 32;
    }

    v9 = v16;
  }

  return v10 | v9;
}

void md::RouteLineSection::split(md::RouteLineSection *this, const PolylineCoordinate *a2)
{
  index = a2->index;
  if (index == *md::RouteLineSection::kSplitLocationAfterSection && vabds_f32(a2->offset, *(md::RouteLineSection::kSplitLocationAfterSection + 4)) < 0.00000011921 || (*(**(this + 9) + 24))(*(this + 9)) - 1 <= index)
  {
    v5 = 3.4028e38;
  }

  else if (a2->index != *md::RouteLineSection::kSplitLocationBeforeSection || (v5 = -1.0, vabds_f32(a2->offset, *(md::RouteLineSection::kSplitLocationBeforeSection + 4)) >= 0.00000011921))
  {
    v6 = *((*(**(this + 9) + 32))(*(this + 9), index) + 32);
    v5 = v6 + ((*((*(**(this + 9) + 32))(*(this + 9), index + 1) + 32) - v6) * a2->offset);
  }

  *(this + 16) = v5;
  v7 = *(this + 94);
  if ((v7 & 0x80000000) == 0)
  {
    WeakRetained = objc_loadWeakRetained(this + 25);
    v9 = [WeakRetained composedRouteSegmentIndex];

    if (v7 != v9)
    {
      *(this + 16) = -1082130432;
    }
  }
}

__n128 __Block_byref_object_copy__30246(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3] = 0uLL;
  v3 = a2[4].n128_u64[0];
  a1[4].n128_u32[2] = a2[4].n128_u32[2];
  a1[4].n128_u64[0] = v3;
  return result;
}

void __Block_byref_object_dispose__30247(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

mdm::zone_mallocator *___ZNK2md16RouteLineSection17addTrafficRibbonsERNSt3__113unordered_mapINS_15TrafficBatchKeyENS1_6vectorINS1_10unique_ptrINS_13TrafficRibbonEN3mdm11TypeDeleterIS6_EEEEN3geo17allocator_adapterISA_NS7_15zone_mallocatorEEEEENS1_4hashIS3_EENS1_8equal_toIS3_EENS1_9allocatorINS1_4pairIKS3_SF_EEEEEERNS2_IS3_NS4_INS5_INS_18SolidTrafficRibbonENS8_ISR_EEEENSC_IST_SD_EEEESH_SJ_NSK_INSL_ISM_SV_EEEEEERKNS1_10shared_ptrIN3gss15StylesheetQueryINS11_10PropertyIDEEEEERKNS_16TrafficMeshStyleE_block_invoke(mdm::zone_mallocator *result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 3)
  {
    v6 = result;
    v7 = *(result + 5);
    *(*(*(result + 4) + 8) + 68) = a2;
    v8 = *(*(result + 6) + 4 * *(*(*(result + 4) + 8) + 68));
    if ((v8 - 1) >= 2)
    {
      if (!v8)
      {
        v20 = mdm::zone_mallocator::instance(result);
        v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TrafficRibbon>(v20);
        v22 = md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v21, a4);
        *v22 = &unk_1F2A2F8A0;
        v61 = v22;
        if (a4)
        {
          v23 = 0;
          do
          {
            *(v21[9] + v23) = *(*(*v7[9] + 4))(v7[9], a3);
            v23 += 8;
            ++a3;
            --a4;
          }

          while (a4);
        }

        v24 = *(v6 + 7);
        v62 = (*(*(v6 + 4) + 8) + 48);
        v25 = std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(v24, v62, &v62);
        v26 = v25;
        v28 = *(v25 + 7);
        v27 = *(v25 + 8);
        if (v28 >= v27)
        {
          v40 = *(v25 + 6);
          v41 = v28 - v40;
          v42 = (v28 - v40) >> 3;
          v43 = v42 + 1;
          if ((v42 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v44 = v27 - v40;
          if (v44 >> 2 > v43)
          {
            v43 = v44 >> 2;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFF8)
          {
            v45 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v43;
          }

          v66 = v25 + 18;
          if (v45)
          {
            v46 = mdm::zone_mallocator::instance(v25);
            v47 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>>(v46, v45);
            v40 = *(v26 + 6);
            v41 = *(v26 + 7) - v40;
            v48 = v41 >> 3;
          }

          else
          {
            v47 = 0;
            v48 = v42;
          }

          v55 = &v47[8 * v42];
          v56 = &v47[8 * v45];
          v57 = v61;
          v61 = 0;
          v58 = &v55[-8 * v48];
          *v55 = v57;
          v30 = v55 + 8;
          memcpy(v58, v40, v41);
          v59 = *(v26 + 6);
          *(v26 + 6) = v58;
          *(v26 + 7) = v30;
          v60 = *(v26 + 8);
          *(v26 + 8) = v56;
          v64 = v59;
          v65 = v60;
          v62 = v59;
          v63 = v59;
          std::__split_buffer<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v62);
        }

        else
        {
          v29 = v61;
          v61 = 0;
          *v28 = v29;
          v30 = v28 + 8;
        }

        *(v26 + 7) = v30;
        return std::unique_ptr<md::TrafficRibbon,mdm::TypeDeleter<md::TrafficRibbon>>::~unique_ptr[abi:nn200100](&v61);
      }
    }

    else
    {
      v9 = mdm::zone_mallocator::instance(result);
      v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::SolidTrafficRibbon>(v9);
      v11 = md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,2,1>>::StandardModeRibbonUsingPositionType(v10, a4);
      *v11 = &unk_1F2A2F8C0;
      v61 = v11;
      if (a4)
      {
        v12 = 0;
        do
        {
          *(v10[9] + v12) = *(*(*v7[9] + 4))(v7[9], a3);
          v12 += 8;
          ++a3;
          --a4;
        }

        while (a4);
      }

      v13 = *(v6 + 8);
      v62 = (*(*(v6 + 4) + 8) + 48);
      v14 = std::__hash_table<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::TrafficBatchKey>,std::equal_to<md::TrafficBatchKey>,true>,std::__unordered_map_equal<md::TrafficBatchKey,std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::TrafficBatchKey>,std::hash<md::TrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::TrafficBatchKey,std::vector<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator>>>>>::__emplace_unique_key_args<md::TrafficBatchKey,std::piecewise_construct_t const&,std::tuple<md::TrafficBatchKey const&>,std::tuple<>>(v13, v62, &v62);
      v15 = v14;
      v17 = *(v14 + 7);
      v16 = *(v14 + 8);
      if (v17 >= v16)
      {
        v31 = *(v14 + 6);
        v32 = v17 - v31;
        v33 = (v17 - v31) >> 3;
        v34 = v33 + 1;
        if ((v33 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v35 = v16 - v31;
        if (v35 >> 2 > v34)
        {
          v34 = v35 >> 2;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        v66 = v14 + 18;
        if (v36)
        {
          v37 = mdm::zone_mallocator::instance(v14);
          v38 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>>(v37, v36);
          v31 = *(v15 + 6);
          v32 = *(v15 + 7) - v31;
          v39 = v32 >> 3;
        }

        else
        {
          v38 = 0;
          v39 = v33;
        }

        v49 = &v38[8 * v33];
        v50 = &v38[8 * v36];
        v51 = v61;
        v61 = 0;
        v52 = &v49[-8 * v39];
        *v49 = v51;
        v19 = v49 + 8;
        memcpy(v52, v31, v32);
        v53 = *(v15 + 6);
        *(v15 + 6) = v52;
        *(v15 + 7) = v19;
        v54 = *(v15 + 8);
        *(v15 + 8) = v50;
        v64 = v53;
        v65 = v54;
        v62 = v53;
        v63 = v53;
        std::__split_buffer<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>,mdm::zone_mallocator> &>::~__split_buffer(&v62);
      }

      else
      {
        v18 = v61;
        v61 = 0;
        *v17 = v18;
        v19 = v17 + 8;
      }

      *(v15 + 7) = v19;
      return std::unique_ptr<md::SolidTrafficRibbon,mdm::TypeDeleter<md::SolidTrafficRibbon>>::~unique_ptr[abi:nn200100](&v61);
    }
  }

  return result;
}

uint64_t (****std::unique_ptr<md::DottedRouteLineRibbon,mdm::TypeDeleter<md::DottedRouteLineRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::DottedRouteLineRibbon>(v4, v2);
  }

  return a1;
}

void md::DottedRouteLineRibbon::~DottedRouteLineRibbon(md::DottedRouteLineRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

void md::RouteStyledOverlayRibbon::~RouteStyledOverlayRibbon(md::RouteStyledOverlayRibbon *this)
{
  *this = &unk_1F2A2F920;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2F920;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);
}

void md::RouteLineSection::dumpStyleAttributes(md::RouteLineSection *this)
{
  v25[19] = *MEMORY[0x1E69E9840];
  v2 = *(this + 45);
  v3 = *(v2 + 520);
  v4 = *(v2 + 528);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributesStr(v18, v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v5 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = *(this + 31);
    v6 = *(this + 32);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::ostringstream::basic_ostringstream[abi:nn200100](&v22);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, "{\n", 2);
    v8 = *(v7 + 240);
    for (i = *(v7 + 248); v8 != i; v8 += 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, "  ", 2);
      v10 = MEMORY[0x1B8C61C90](&v22, *v8);
      v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, " = ", 3);
      v12 = MEMORY[0x1B8C61CD0](v11, *(v8 + 2));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, ";\n", 2);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, "}", 1);
    std::stringbuf::str[abi:nn200100](v16, &v22 + 8);
    *&v22 = *MEMORY[0x1E69E54E8];
    *(&v23[-2].__locale_ + *(v22 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    *(&v22 + 1) = MEMORY[0x1E69E5548] + 16;
    if (v24 < 0)
    {
      operator delete(v23[7].__locale_);
    }

    *(&v22 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v23);
    std::ostream::~ostream();
    MEMORY[0x1B8C620C0](v25);
    v13 = v16;
    if (v17 < 0)
    {
      v13 = v16[0];
    }

    *buf = 136315138;
    v21 = v13;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "Feature Attributes\n %s", buf, 0xCu);
    if (v17 < 0)
    {
      operator delete(v16[0]);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v14 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = v18;
    if (v19 < 0)
    {
      v15 = v18[0];
    }

    LODWORD(v22) = 136315138;
    *(&v22 + 4) = v15;
    _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_INFO, "Client Attributes\n %s", &v22, 0xCu);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_1B30DBDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B30DEF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B30DFC68(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30DFD74(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30DFE80(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30DFF88(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30E0090(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30E019C(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30E02A4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30E03AC(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30E04B4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30E05C0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30E06C8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30E07D4(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30E08DC(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30E09E8(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v20 - 33, v19 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v20 - 33, &a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B30E0B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  if (a19 != -1)
  {
    (off_1F2A2F978[a19])(v21 - 65, v20 + 8, a3, a4, a5, a6, a7, a8);
  }

  a19 = -1;
  if (a13 != -1)
  {
    (off_1F2A2F978[a13])(v21 - 65, &a9);
  }

  _Unwind_Resume(a1);
}

void ecs2::BasicRegistry<void>::add<md::RaycastDebug>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v48 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>(void)::metadata;
  v47 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::RaycastDebug>(a1);
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
    v41 = *(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 48 * (v14 & 0x3F);
    v42 = *v41;
    if (*v41)
    {
      *(v41 + 8) = v42;
      operator delete(v42);
      *v41 = 0;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
    }

    *v41 = *a3;
    *(v41 + 16) = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v43 = *(v41 + 24);
    if (v43)
    {
      *(v41 + 32) = v43;
      operator delete(v43);
      *(v41 + 24) = 0;
      *(v41 + 32) = 0;
      *(v41 + 40) = 0;
    }

    *(v41 + 24) = *(a3 + 24);
    *(v41 + 40) = *(a3 + 40);
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
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
    v45 = v6;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    v44 = v16;
    v46 = v18 - v19;
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

      goto LABEL_47;
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

LABEL_47:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v16);
      *(v8 + 88) = v31 + 16 * v16;
      LOBYTE(v16) = v44;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    v6 = v45;
    if (v46 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  v37 = (*(v19 + 8 * v17) + 48 * (v16 & 0x3F));
  *v37 = 0;
  v37[1] = 0;
  v37[2] = 0;
  *v37 = *a3;
  v37[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v37[3] = 0;
  v37[4] = 0;
  v37[5] = 0;
  *(v37 + 3) = *(a3 + 24);
  v37[5] = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(v47 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>();
  *(v47 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>(void)::metadata) = *(v47 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::RaycastDebug>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::RaycastDebug>(void)::localId;
    unk_1EB845ED0 = 0xBD92EF3F93463E82;
    qword_1EB845ED8 = "md::RaycastDebug]";
    qword_1EB845EE0 = 16;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::RaycastDebug>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md12RaycastDebugEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EEclEOSI_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::RaycastDebug>(v3);
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
        v22 = *v17;
        v18 = *(v17 + 16);
        *v17 = 0;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        v24 = *(v17 + 24);
        v23 = *(v17 + 40);
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        *(v17 + 40) = 0;
        *v17 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v16 = 0;
        *(v16 + 8) = 0;
        *(v16 + 16) = 0;
        v19 = *(v17 + 24);
        if (v19)
        {
          *(v17 + 32) = v19;
          operator delete(v19);
          *(v17 + 24) = 0;
          *(v17 + 32) = 0;
          *(v17 + 40) = 0;
        }

        *(v17 + 24) = *(v16 + 24);
        *(v17 + 40) = *(v16 + 40);
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        *(v16 + 40) = 0;
        v20 = *v16;
        if (*v16)
        {
          *(v16 + 8) = v20;
          operator delete(v20);
          v21 = *(v16 + 24);
          *v16 = v22;
          *(v16 + 16) = v18;
          if (v21)
          {
            *(v16 + 32) = v21;
            operator delete(v21);
          }
        }

        else
        {
          *v16 = v22;
          *(v16 + 16) = v18;
        }

        *(v16 + 24) = v24;
        *(v16 + 40) = v23;
        std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(v16);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::RaycastDebug>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md12RaycastDebugEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESB_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISJ_EEFvSI_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A44808;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::RaycastDebug,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A447C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::RaycastDebug,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::RaycastDebug,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A447E8;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__destroy_at[abi:nn200100]<md::MuninRoadEdgePolyline,0>(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 48 * (v4 & 0x3F));
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

void ecs2::storage<ecs2::Entity,md::RaycastDebug,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::RaycastDebug,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::RaycastDebug,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A447C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::RaycastDebug,64ul>::~storage(a1);
}

uint64_t std::__function::__value_func<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<md::RaycastDebug::RayHit>::push_back[abi:nn200100](uint64_t *a1, _OWORD *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x333333333333333)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x199999999999999)
    {
      v12 = 0x333333333333333;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::RaycastDebug::RayHit>>(v12);
    }

    v13 = 80 * v9;
    *v13 = *a2;
    v14 = a2[1];
    v15 = a2[2];
    v16 = a2[4];
    *(v13 + 48) = a2[3];
    *(v13 + 64) = v16;
    *(v13 + 16) = v14;
    *(v13 + 32) = v15;
    v8 = 80 * v9 + 80;
    v17 = *a1;
    v18 = a1[1];
    v19 = 80 * v9 + *a1 - v18;
    if (*a1 != v18)
    {
      v20 = (80 * v9 + *a1 - v18);
      do
      {
        *v20 = *v17;
        v21 = v17[1];
        v22 = v17[2];
        v23 = v17[4];
        v20[3] = v17[3];
        v20[4] = v23;
        v20[1] = v21;
        v20[2] = v22;
        v17 += 5;
        v20 += 5;
      }

      while (v17 != v18);
      v17 = *a1;
    }

    *a1 = v19;
    a1[1] = v8;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v3 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[4];
    v3[3] = a2[3];
    v3[4] = v7;
    v3[1] = v5;
    v3[2] = v6;
    v8 = (v3 + 5);
  }

  a1[1] = v8;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::RaycastDebug::RayHit>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void gdc::CollisionMeshNode<double,float>::_forEachTriangle(uint64_t result, uint64_t a2)
{
  if (*(result + 64))
  {
    v4 = 0;
    while (1)
    {
      v5 = 0;
      v6 = (*(result + 72) + 2 * (3 * v4));
      v7 = **(result + 96);
      v8 = v7 + 12 * *v6;
      do
      {
        v20[v5] = *(v8 + 4 * v5);
        ++v5;
      }

      while (v5 != 3);
      v9 = 0;
      v10 = v7 + 12 * v6[1];
      do
      {
        v19[v9] = *(v10 + 4 * v9);
        ++v9;
      }

      while (v9 != 3);
      v11 = 0;
      v12 = v7 + 12 * v6[2];
      do
      {
        v18[v11] = *(v12 + 4 * v11);
        ++v11;
      }

      while (v11 != 3);
      v13 = *(a2 + 24);
      if (!v13)
      {
        break;
      }

      (*(*v13 + 48))(v13, v20, v19, v18);
      if (++v4 >= *(result + 64))
      {
        return;
      }
    }

    v14 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<gdc::CollisionMeshNode<double,float>::intersectsRay(gm::Ray<double,3> const&,double &,double &,std::optional<std::function<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1},std::allocator<gdc::CollisionMeshNode<double,float>::intersectsRay(gm::Ray<double,3> const&,double &,double &,std::optional<std::function<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1}>,void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::operator()(v14, v15, v16, v17);
  }
}

void std::__function::__func<gdc::CollisionMeshNode<double,float>::intersectsRay(gm::Ray<double,3> const&,double &,double &,std::optional<std::function<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1},std::allocator<gdc::CollisionMeshNode<double,float>::intersectsRay(gm::Ray<double,3> const&,double &,double &,std::optional<std::function<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1}>,void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  if (*(v8 + 32) == 1)
  {
    v9 = *(v8 + 24);
    if (!v9)
    {
      v42 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__func<gdc::CollisionMeshNode<double,float>::intersectsRay(gm::Ray<double,3> const&,double &,double &,std::optional<std::function<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1},std::allocator<gdc::CollisionMeshNode<double,float>::intersectsRay(gm::Ray<double,3> const&,double &,double &,std::optional<std::function<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1}>,void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::destroy_deallocate(v42);
      return;
    }

    (*(*v9 + 48))(v9, a2, a3, a4);
  }

  v10 = 0;
  v11 = *(a1 + 16);
  do
  {
    *&v56[v10] = *(a3 + v10) - *(a2 + v10);
    v10 += 8;
  }

  while (v10 != 24);
  v12 = 0;
  v13 = *v56;
  v14 = *&v56[16];
  v54 = *v56;
  v55 = *&v56[16];
  do
  {
    *&v56[v12] = *(a4 + v12) - *(a2 + v12);
    v12 += 8;
  }

  while (v12 != 24);
  v15 = 0;
  v52 = *v56;
  v53 = *&v56[8];
  v16 = &v11[1].f64[1];
  v17 = v11[1].f64[1];
  v18 = v11[2];
  *&v19.f64[0] = vdupq_laneq_s64(*&v56[8], 1).u64[0];
  v19.f64[1] = *v56;
  *&v20.f64[0] = vdupq_laneq_s64(v18, 1).u64[0];
  v20.f64[1] = v17;
  v50 = vmlaq_f64(vnegq_f64(vmulq_f64(v20, *&v56[8])), v19, v18);
  v51 = -(*v56 * v18.f64[0] - v17 * *&v56[8]);
  v21 = 0.0;
  do
  {
    v21 = v21 + v50.f64[v15] * *(&v54 + v15 * 8);
    ++v15;
  }

  while (v15 != 3);
  if (fabs(v21) < 2.22044605e-16)
  {
    goto LABEL_39;
  }

  for (i = 0; i != 3; ++i)
  {
    *&v56[i * 8] = v11->f64[i] - *(a2 + i * 8);
  }

  v23 = 0;
  v48 = *v56;
  v49 = *&v56[16];
  v24 = 0.0;
  do
  {
    v24 = v24 + v50.f64[v23] * *(&v48 + v23 * 8);
    ++v23;
  }

  while (v23 != 3);
  v25 = 1.0 / v21;
  v26 = v24 * v25;
  if (v26 < 0.0 || v26 > 1.0)
  {
    goto LABEL_39;
  }

  v28 = 0;
  v47[0] = -(*&v56[16] * *(&v13 + 1) - *&v56[8] * v14);
  v47[1] = -(*v56 * v14 - *&v56[16] * *&v13);
  v47[2] = -(*&v56[8] * *&v13 - *v56 * *(&v13 + 1));
  v29 = 0.0;
  do
  {
    v29 = v29 + v47[v28] * *&v16[v28 * 8];
    ++v28;
  }

  while (v28 != 3);
  v30 = v29 * v25;
  if (v30 < 0.0 || v30 + v26 > 1.0)
  {
    goto LABEL_39;
  }

  v32 = 0;
  v33 = 0.0;
  do
  {
    v33 = v33 + v47[v32] * *(&v52 + v32 * 8);
    ++v32;
  }

  while (v32 != 3);
  v34 = v33 * v25;
  if (v34 >= 2.22044605e-16)
  {
    for (j = 0; j != 24; j += 8)
    {
      *&v56[j] = *&v16[j] * v34;
    }

    v36 = 0;
    v45 = *v56;
    v46 = *&v56[16];
    do
    {
      *&v56[v36 * 8] = *(&v45 + v36 * 8) + v11->f64[v36];
      ++v36;
    }

    while (v36 != 3);
    v37 = 0;
    v43 = *v56;
    v44 = *&v56[16];
    do
    {
      *&v56[v37 * 8] = *(&v43 + v37 * 8) - v11->f64[v37];
      ++v37;
    }

    while (v37 != 3);
    v38 = 0;
    v39 = 0.0;
    do
    {
      v39 = v39 + *&v56[v38] * *&v56[v38];
      v38 += 8;
    }

    while (v38 != 24);
    v40 = sqrt(v39);
    **(a1 + 24) = fmin(v40, **(a1 + 24));
    **(a1 + 32) = fmax(**(a1 + 32), v40);
    v41 = 1;
  }

  else
  {
LABEL_39:
    v41 = 0;
  }

  **(a1 + 8) |= v41;
}

__n128 std::__function::__func<gdc::CollisionMeshNode<double,float>::intersectsRay(gm::Ray<double,3> const&,double &,double &,std::optional<std::function<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1},std::allocator<gdc::CollisionMeshNode<double,float>::intersectsRay(gm::Ray<double,3> const&,double &,double &,std::optional<std::function<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>> const&)::{lambda(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)#1}>,void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A44228;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geo::Triangle<double,3,geo::NoTriangleCache<double,3>>>>(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B30E5218(_Unwind_Exception *a1)
{
  v6 = v2;

  _Unwind_Resume(a1);
}

void sub_1B30E534C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

uint64_t md::IdentifiedGEOResourceFetcher::createResource(uint64_t a1, void *a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6, char a7, uint64_t a8)
{
  Resource = gdc::ResourceFetcher::createResource(a1, a2, a3, a4, a5, a6, a7, a8);
  if ((Resource & 1) == 0)
  {
    if ((*(a8 + 112) & 1) == 0)
    {
      v12 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v12);
    }

    v10 = [MEMORY[0x1E69A2610] modernLoader];
    [v10 reportCorruptTile:&v13];
  }

  return Resource;
}

void md::IdentifiedGEOResourceFetcher::createDebugNode(uint64_t a1@<X0>, void *a2@<X8>, __int128 *a3@<X1>)
{
  gdc::ResourceFetcher::createDebugNode(a1, a2, a3);
  std::string::basic_string[abi:nn200100]<0>(&v31, "Preload Only");
  if (*(a1 + 16))
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  gdc::DebugTreeValue::DebugTreeValue(v28, v5);
  gdc::DebugTreeNode::addProperty(a2, &v31, v28);
  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  std::string::basic_string[abi:nn200100]<0>(&v31, "Require Wifi");
  if ((*(a1 + 16) & 2) != 0)
  {
    v6 = "true";
  }

  else
  {
    v6 = "false";
  }

  gdc::DebugTreeValue::DebugTreeValue(v25, v6);
  gdc::DebugTreeNode::addProperty(a2, &v31, v25);
  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  std::string::basic_string[abi:nn200100]<0>(&v31, "Prefer Stale");
  if ((*(a1 + 16) & 4) != 0)
  {
    v7 = "true";
  }

  else
  {
    v7 = "false";
  }

  gdc::DebugTreeValue::DebugTreeValue(v22, v7);
  gdc::DebugTreeNode::addProperty(a2, &v31, v22);
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  std::string::basic_string[abi:nn200100]<0>(&v31, "Tile Loader Client Identifier");
  v8 = *(a1 + 608);
  if (v8)
  {
    v9 = [v8 UTF8String];
  }

  else
  {
    v9 = "null";
  }

  gdc::DebugTreeValue::DebugTreeValue(v19, v9);
  gdc::DebugTreeNode::addProperty(a2, &v31, v19);
  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v8)
  {
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  std::string::basic_string[abi:nn200100]<0>(&v31, "Tile Style");
  v10 = @"RASTER_STANDARD";
  switch(*(a1 + 688))
  {
    case 0:
      break;
    case 1:
      v10 = @"VECTOR_STANDARD";
      break;
    case 2:
      v10 = @"VECTOR_TRAFFIC_SEGMENTS_FOR_RASTER";
      break;
    case 3:
      v10 = @"VECTOR_TRAFFIC_INCIDENTS_FOR_RASTER";
      break;
    case 4:
      v10 = @"VECTOR_TRAFFIC_SEGMENTS_AND_INCIDENTS_FOR_RASTER";
      break;
    case 5:
      v10 = @"RASTER_STANDARD_BACKGROUND";
      break;
    case 6:
      v10 = @"RASTER_HYBRID";
      break;
    case 7:
      v10 = @"RASTER_SATELLITE";
      break;
    case 8:
      v10 = @"RASTER_TERRAIN";
      break;
    case 0xB:
      v10 = @"VECTOR_BUILDINGS";
      break;
    case 0xC:
      v10 = @"VECTOR_TRAFFIC";
      break;
    case 0xD:
      v10 = @"VECTOR_POI";
      break;
    case 0xE:
      v10 = @"SPUTNIK_METADATA";
      break;
    case 0xF:
      v10 = @"SPUTNIK_C3M";
      break;
    case 0x10:
      v10 = @"SPUTNIK_DSM";
      break;
    case 0x11:
      v10 = @"SPUTNIK_DSM_GLOBAL";
      break;
    case 0x12:
      v10 = @"VECTOR_REALISTIC";
      break;
    case 0x13:
      v10 = @"VECTOR_LEGACY_REALISTIC";
      break;
    case 0x14:
      v10 = @"VECTOR_ROADS";
      break;
    case 0x15:
      v10 = @"RASTER_VEGETATION";
      break;
    case 0x16:
      v10 = @"VECTOR_TRAFFIC_SKELETON";
      break;
    case 0x17:
      v10 = @"RASTER_COASTLINE_MASK";
      break;
    case 0x18:
      v10 = @"RASTER_HILLSHADE";
      break;
    case 0x19:
      v10 = @"VECTOR_TRAFFIC_WITH_GREEN";
      break;
    case 0x1A:
      v10 = @"VECTOR_TRAFFIC_STATIC";
      break;
    case 0x1B:
      v10 = @"RASTER_COASTLINE_DROP_MASK";
      break;
    case 0x1C:
      v10 = @"VECTOR_TRAFFIC_SKELETON_WITH_HISTORICAL";
      break;
    case 0x1D:
      v10 = @"VECTOR_SPEED_PROFILES";
      break;
    case 0x1E:
      v10 = @"VECTOR_VENUES";
      break;
    case 0x1F:
      v10 = @"RASTER_DOWN_SAMPLED";
      break;
    case 0x20:
      v10 = @"RASTER_COLOR_BALANCED";
      break;
    case 0x21:
      v10 = @"RASTER_SATELLITE_NIGHT";
      break;
    case 0x22:
      v10 = @"SPUTNIK_VECTOR_BORDER";
      break;
    case 0x23:
      v10 = @"RASTER_SATELLITE_DIGITIZE";
      break;
    case 0x24:
      v10 = @"RASTER_HILLSHADE_PARKS";
      break;
    case 0x25:
      v10 = @"VECTOR_TRANSIT";
      break;
    case 0x26:
      v10 = @"RASTER_STANDARD_BASE";
      break;
    case 0x27:
      v10 = @"RASTER_STANDARD_LABELS";
      break;
    case 0x28:
      v10 = @"RASTER_HYBRID_ROADS";
      break;
    case 0x29:
      v10 = @"RASTER_HYBRID_LABELS";
      break;
    case 0x2A:
      v10 = @"FLYOVER_C3M_MESH";
      break;
    case 0x2B:
      v10 = @"FLYOVER_C3M_JPEG_TEXTURE";
      break;
    case 0x2C:
      v10 = @"FLYOVER_C3M_ASTC_TEXTURE";
      break;
    case 0x2D:
      v10 = @"RASTER_SATELLITE_ASTC";
      break;
    case 0x2E:
      v10 = @"RASTER_HYBRID_ROADS_AND_LABELS";
      break;
    case 0x2F:
      v10 = @"VECTOR_TRANSIT_SELECTION";
      break;
    case 0x30:
      v10 = @"VECTOR_COVERAGE";
      break;
    case 0x34:
      v10 = @"FLYOVER_METADATA";
      break;
    case 0x35:
      v10 = @"VECTOR_ROAD_NETWORK";
      break;
    case 0x36:
      v10 = @"VECTOR_LAND_COVER";
      break;
    case 0x37:
      v10 = @"VECTOR_DEBUG";
      break;
    case 0x38:
      v10 = @"VECTOR_STREET_POI";
      break;
    case 0x39:
      v10 = @"MUNIN_METADATA";
      break;
    case 0x3A:
      v10 = @"VECTOR_SPR_MERCATOR";
      break;
    case 0x3B:
      v10 = @"VECTOR_SPR_MODELS";
      break;
    case 0x3C:
      v10 = @"VECTOR_SPR_MATERIALS";
      break;
    case 0x3D:
      v10 = @"VECTOR_SPR_METADATA";
      break;
    case 0x3E:
      v10 = @"VECTOR_TRACKS";
      break;
    case 0x3F:
      v10 = @"VECTOR_RESERVED_2";
      break;
    case 0x40:
      v10 = @"VECTOR_STREET_LANDMARKS";
      break;
    case 0x41:
      v10 = @"COARSE_LOCATION_POLYGONS";
      break;
    case 0x42:
      v10 = @"VECTOR_SPR_ROADS";
      break;
    case 0x43:
      v10 = @"VECTOR_SPR_STANDARD";
      break;
    case 0x44:
      v10 = @"VECTOR_POI_V2";
      break;
    case 0x45:
      v10 = @"VECTOR_POLYGON_SELECTION";
      break;
    case 0x46:
      v10 = @"VL_METADATA";
      break;
    case 0x47:
      v10 = @"VL_DATA";
      break;
    case 0x48:
      v10 = @"PROACTIVE_APP_CLIP";
      break;
    case 0x49:
      v10 = @"VECTOR_BUILDINGS_V2";
      break;
    case 0x4A:
      v10 = @"POI_BUSYNESS";
      break;
    case 0x4B:
      v10 = @"POI_DP_BUSYNESS";
      break;
    case 0x4C:
      v10 = @"SMART_INTERFACE_SELECTION";
      break;
    case 0x4D:
      v10 = @"VECTOR_ASSETS";
      break;
    case 0x4E:
      v10 = @"SPR_ASSET_METADATA";
      break;
    case 0x4F:
      v10 = @"VECTOR_SPR_POLAR";
      break;
    case 0x50:
      v10 = @"SMART_DATA_MODE";
      break;
    case 0x51:
      v10 = @"CELLULAR_PERFORMANCE_SCORE";
      break;
    case 0x52:
      v10 = @"VECTOR_SPR_MODELS_OCCLUSION";
      break;
    case 0x53:
      v10 = @"VECTOR_TOPOGRAPHIC";
      break;
    case 0x54:
      v10 = @"VECTOR_POI_V2_UPDATE";
      break;
    case 0x55:
      v10 = @"VECTOR_LIVE_DATA_UPDATES";
      break;
    case 0x56:
      v10 = @"VECTOR_TRAFFIC_V2";
      break;
    case 0x57:
      v10 = @"VECTOR_ROAD_SELECTION";
      break;
    case 0x58:
      v10 = @"VECTOR_REGION_METADATA";
      break;
    case 0x59:
      v10 = @"RAY_TRACING";
      break;
    case 0x5A:
      v10 = @"VECTOR_CONTOURS";
      break;
    case 0x5B:
      v10 = @"RASTER_SATELLITE_POLAR";
      break;
    case 0x5C:
      v10 = @"VMAP4_ELEVATION";
      break;
    case 0x5D:
      v10 = @"VMAP4_ELEVATION_POLAR";
      break;
    case 0x5E:
      v10 = @"CELLULAR_COVERAGE_PLMN";
      break;
    case 0x5F:
      v10 = @"RASTER_SATELLITE_POLAR_NIGHT";
      break;
    case 0x60:
      v10 = @"BLUEPOI_MODEL";
      break;
    case 0x61:
      v10 = @"BLUEPOI_AOI";
      break;
    case 0x62:
      v10 = @"UNUSED_98";
      break;
    case 0x63:
      v10 = @"UNUSED_99";
      break;
    case 0x64:
      v10 = @"UNUSED_100";
      break;
    case 0x65:
      v10 = @"UNUSED_101";
      break;
    case 0x66:
      v10 = @"UNUSED_102";
      break;
    case 0x67:
      v10 = @"UNUSED_103";
      break;
    case 0x68:
      v10 = @"UNUSED_104";
      break;
    case 0x69:
      v10 = @"UNUSED_105";
      break;
    case 0x6A:
      v10 = @"UNUSED_106";
      break;
    case 0x6B:
      v10 = @"UNUSED_107";
      break;
    case 0x6C:
      v10 = @"UNUSED_108";
      break;
    case 0x6D:
      v10 = @"UNUSED_109";
      break;
    case 0x6E:
      v10 = @"UNUSED_110";
      break;
    case 0x6F:
      v10 = @"UNUSED_111";
      break;
    case 0x70:
      v10 = @"UNUSED_112";
      break;
    case 0x71:
      v10 = @"UNUSED_113";
      break;
    case 0x72:
      v10 = @"UNUSED_114";
      break;
    case 0x73:
      v10 = @"UNUSED_115";
      break;
    case 0x74:
      v10 = @"UNUSED_116";
      break;
    case 0x75:
      v10 = @"UNUSED_117";
      break;
    case 0x76:
      v10 = @"UNUSED_118";
      break;
    case 0x77:
      v10 = @"UNUSED_119";
      break;
    default:
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *(a1 + 688)];
      break;
  }

  gdc::DebugTreeValue::DebugTreeValue(v16, [(__CFString *)v10 UTF8String]);
  gdc::DebugTreeNode::addProperty(a2, &v31, v16);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  std::string::basic_string[abi:nn200100]<0>(&v31, "Tile Set");
  v11 = *(a1 + 704);
  if (v11)
  {
    v10 = [v11 description];
    v12 = [(__CFString *)v10 UTF8String];
  }

  else
  {
    v12 = "null";
  }

  gdc::DebugTreeValue::DebugTreeValue(v13, v12);
  gdc::DebugTreeNode::addProperty(a2, &v31, v13);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v11)
  {
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }
}

void sub_1B30E60B4(_Unwind_Exception *a1)
{
  if (*(v2 - 49) < 0)
  {
    operator delete(*(v2 - 72));
  }

  *(v2 - 72) = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
  *(v2 - 72) = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
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

unint64_t md::IdentifiedGEOResourceFetcher::tileSetInfo(void **this)
{
  v6 = 0;
  v2 = geo::_retain_ptr<GEOActiveTileSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(this[88], &v6);
  result = 0;
  if ((v2 & 1) == 0)
  {
    v4 = objc_msgSend_style(this[88], 0);
    v5 = [this[88] version];
    return v5 & 0xFFFFFF00 | (v4 << 32) | v5;
  }

  return result;
}

void md::IdentifiedGEOResourceFetcher::expireResource(md::IdentifiedGEOResourceFetcher *this, const gdc::ResourceKey *a2)
{
  v2 = (*(*this + 144))(this, *(this + 88), a2);
  v4 = v3;
  v5 = [MEMORY[0x1E69A2610] modernLoader];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2md28IdentifiedGEOResourceFetcher14expireResourceERKN3gdc11ResourceKeyE_block_invoke;
  v6[3] = &__block_descriptor_48_e733_B24__0r___GEOTileKey_b7b1_____GEOStandardTileKey_b40b6b26b26b14b4b4___GEOGloriaQuadIDTileKey_b6b64b14b4______b10b10b12____b10b22_I____GEORegionalResourceKey_b32b8b6b8b8b1b57___GEOSputnikMetadataKey_b32b24b14b8b42___GEOFlyoverKey_b6b26b26b8b24b14b8b8___GEOTransitLineSelectionKey_b6b25b25b64___GEOPolygonSelectionKey_b6b25b25b64___GEORoadSelectionKey_b6b25b25b64___GEOContourLinesKey_b6b26b26b4b8b50___GEOTileOverlayKey_b6b26b26b8b32b16b6___GEOIdentifiedResourceKey_QCCb1b39___GEOMuninMeshKey_b64b32b16b5b3___GEOVisualLocalizationTrackKey_SCb16b6b26b26b22___GEOVisualLocalizationMetadataKey_b6b9b25b6b26b26b22___GEOVisualLocalizationDataKey_QCb5b21b21b1___GEOS2TileKey_b6b26b26b3b14b4b4b37___GEOLiveTileKey_b6b26b26b14b4b4b4b36___8d16l;
  v6[4] = v2;
  v6[5] = v4;
  [v5 expireTilesWithPredicate:v6];
}

void md::IdentifiedGEOResourceFetcher::cancelAllResources(md::IdentifiedGEOResourceFetcher *this)
{
  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v2 = GEOGetVectorKitResourceLoadingLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_DEBUG, "IdentifiedGEOResourceFetcher canceling all resources", v4, 2u);
  }

  v3 = [MEMORY[0x1E69A2610] modernLoader];
  [v3 cancelAllForClientSynchronous:*(this + 76)];
  [v3 cancelAllForClientSynchronous:*(this + 79)];
}

void md::IdentifiedGEOResourceFetcher::cancelResource(md::IdentifiedGEOResourceFetcher *this, const gdc::ResourceKey *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v4 = GEOGetVectorKitResourceLoadingLog_log;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    gdc::ResourceKey::keysInt32Str(&__p, a2);
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_DEBUG, "IdentifiedGEOResourceFetcher canceling resource: %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v6 = [MEMORY[0x1E69A2610] modernLoader];
  __p.__r_.__value_.__r.__words[0] = (*(*this + 144))(this, *(this + 88), a2);
  __p.__r_.__value_.__l.__size_ = v7;
  if (*a2)
  {
    v8 = *(this + 79);
  }

  else
  {
    v8 = *(this + 76);
  }

  v9 = v8;
  [v6 cancelKey:&__p forClient:v9];
}

void md::IdentifiedGEOResourceFetcher::cancelResources(id *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69A2610] modernLoader];
  for (i = *(a2 + 16); i; i = *i)
  {
    v13 = 0;
    v14 = 0;
    v6 = a1[88];
    v13 = (*(*a1 + 18))(a1, v6, i + 2);
    v14 = v7;

    if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
    }

    v8 = GEOGetVectorKitResourceLoadingLog_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      gdc::ResourceKey::keysInt32Str(&__p, i + 16);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v16 = p_p;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_DEBUG, "IdentifiedGEOResourceFetcher canceling resource: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (i[16])
    {
      v10 = 79;
    }

    else
    {
      v10 = 76;
    }

    v11 = a1[v10];
    [v4 cancelKey:&v13 forClient:v11];
  }
}

uint64_t md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 32))
  {
    free(v2);
  }

  return a1;
}

void ___ZN2md28IdentifiedGEOResourceFetcher14fetchResourcesERKNSt3__113unordered_mapIN3gdc11ResourceKeyEyNS3_15ResourceKeyHashENS1_8equal_toIS4_EENS1_9allocatorINS1_4pairIKS4_yEEEEEEPN3geo9TaskQueueEPU32objcproto21OS_dispatch_semaphore8NSObject_block_invoke(uint64_t a1, const _GEOTileKey *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = *(a1 + 48);
  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v14 = GEOGetVectorKitResourceLoadingLog_log;
  v15 = v14;
  v16 = *(a1 + 136);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v15, OS_SIGNPOST_INTERVAL_END, v16, "ResourceFetch", &unk_1B3514CAA, buf, 2u);
  }

  md::GEOResourceFetcher::didLoadGEOKey(v13, a2, *(a1 + 32));
  v22 = 0;
  if (v10)
  {
    v17 = [v10 decodedRepresentation];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v21 = v11;
      v19 = [v10 readDataWithError:&v21];
      v21;
    }

    v22 = v19;
  }

  std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>(v23, &v22);
}

void sub_1B30E6FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, void *a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a41 == 1 && a30 != a32)
  {
    free(a30);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0,std::allocator<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (GEOGetVectorKitResourceLoadingLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitResourceLoadingLog_onceToken, &__block_literal_global_29);
  }

  v3 = GEOGetVectorKitResourceLoadingLog_log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 136) UTF8String];
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "Loading DevResource resource from: %s", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:*(a1 + 136)];
  if (v9)
  {
    std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>(v8, &v9);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "Failed to load resource from dev resouces");
  gdc::Error::Error(buf, 42, "IdentifiedGEOResourceFetcher", __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v2 + 120))(v2, *(a1 + 112), a1 + 16, buf);
  gdc::ResourceFetcher::didFinishLoading(v2, 0);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(*&buf[8]);
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    dispatch_semaphore_signal(v5);
  }
}

void sub_1B30E742C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, void *a31, void *a32, void *a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 1 && a31 != a33)
  {
    free(a31);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a29);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0,std::allocator<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != *(a1 + 40))
  {
    free(v2);
  }

  operator delete(a1);
}

void std::__function::__func<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0,std::allocator<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != *(a1 + 40))
  {

    free(v2);
  }
}

id std::__function::__func<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0,std::allocator<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_1F2A2FBC8;
  a2[1] = v3;
  v4 = *(a1 + 16);
  a2[3] = a2 + 7;
  v5 = a2 + 3;
  a2[2] = v4;
  a2[4] = a2 + 7;
  a2[5] = a2 + 7;
  a2[6] = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>(a2 + 3, *(a1 + 24), *(a1 + 32));
  v5[8] = *(a1 + 88);
  *(v5 + 9) = *(a1 + 96);
  v6 = *(a1 + 112);
  v5[13] = *(a1 + 128);
  *(v5 + 11) = v6;
  v5[14] = *(a1 + 136);
  result = *(a1 + 144);
  v5[15] = result;
  return result;
}

void std::__function::__func<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0,std::allocator<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A2FBC8;

  v2 = *(a1 + 24);
  if (v2 != *(a1 + 40))
  {
    free(v2);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0,std::allocator<md::IdentifiedGEOResourceFetcher::fetchResources(std::unordered_map<gdc::ResourceKey,unsigned long long,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,unsigned long long>>> const&,geo::TaskQueue *,NSObject  {objcproto21OS_dispatch_semaphore}*)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A2FBC8;

  v2 = *(a1 + 24);
  if (v2 != *(a1 + 40))
  {
    free(v2);
  }

  return a1;
}

void geo::_retain_ptr<GEOActiveTileSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2FBA8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOActiveTileSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A2FBA8;

  return a1;
}

void md::IdentifiedGEOResourceFetcher::~IdentifiedGEOResourceFetcher(md::IdentifiedGEOResourceFetcher *this)
{
  *this = &unk_1F2A2FA00;
  v2 = [MEMORY[0x1E69A2610] modernLoader];
  [v2 cancelAllForClient:*(this + 76)];
  [v2 cancelAllForClient:*(this + 79)];
  [v2 closeForClient:*(this + 76)];
  [v2 closeForClient:*(this + 79)];

  *(this + 87) = &unk_1F2A2FBA8;
  v3 = *(this + 85);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  *(this + 81) = &unk_1F2A2FB88;

  *(this + 78) = &unk_1F2A3D108;
  *(this + 75) = &unk_1F2A3D108;

  *this = off_1F2A2FAE8;
  std::__hash_table<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>,std::__unordered_map_equal<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::equal_to<std::pair<_GEOTileKey,void *>>,md::UniqueKeyHasher,true>,std::allocator<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>>>::~__hash_table(this + 560);
  std::mutex::~mutex((this + 496));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](this + 456);

  gdc::ResourceFetcher::~ResourceFetcher(this);
}

void sub_1B30E7A1C(_Unwind_Exception *a1)
{
  *(v1 + 696) = &unk_1F2A2FBA8;

  v4 = *(v1 + 680);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(v1 + 648) = &unk_1F2A2FB88;

  *(v1 + 624) = &unk_1F2A3D108;
  *(v1 + 600) = &unk_1F2A3D108;

  *v1 = off_1F2A2FAE8;
  std::__hash_table<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>,std::__unordered_map_equal<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,std::equal_to<std::pair<_GEOTileKey,void *>>,md::UniqueKeyHasher,true>,std::allocator<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>>>::~__hash_table(v1 + 560);
  std::mutex::~mutex((v1 + 496));
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v1 + 456);
  gdc::ResourceFetcher::~ResourceFetcher(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<md::StylesheetKey,std::shared_ptr<gss::StyleSheet<gss::PropertyID>>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void md::TextureManager::purge(md::TextureManager *this)
{
  v10 = &CONTAINING_RECORD(this, pthread_rwlock_t, __opaque)->__opaque[64];
  v2 = pthread_rwlock_wrlock((this + 64));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "write lock", v3);
  }

  if (*(this + 61))
  {
    std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::__deallocate_node(*(this + 60));
    *(this + 60) = 0;
    v4 = *(this + 59);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*(this + 58) + 8 * i) = 0;
      }
    }

    *(this + 61) = 0;
  }

  geo::write_lock_guard::~write_lock_guard(&v10);
  v10 = (this + 264);
  v6 = pthread_rwlock_wrlock((this + 264));
  if (v6)
  {
    geo::read_write_lock::logFailure(v6, "write lock", v7);
  }

  if (*(this + 66))
  {
    std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::__deallocate_node(*(this + 65));
    *(this + 65) = 0;
    v8 = *(this + 64);
    if (v8)
    {
      for (j = 0; j != v8; ++j)
      {
        *(*(this + 63) + 8 * j) = 0;
      }
    }

    *(this + 66) = 0;
  }

  geo::write_lock_guard::~write_lock_guard(&v10);
}

void md::TextureManager::texture(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, float a6)
{
  v26 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = vcvtps_s32_f32(a6);
  if (v6 < 2)
  {
LABEL_7:
    md::TextureManager::_texture(v23, a2, a3, a4, a5, 0);
    v14 = v23[0];
    if (v23[0])
    {
      md::SharedResource::addFrameRef(v23[0], 0);
      if (*(v14 + 4))
      {
LABEL_26:
        v22 = v23[1];
        *a1 = v14;
        *(a1 + 8) = v22;
        return;
      }
    }

    v15 = *(a3 + 23);
    if (v15 < 0)
    {
      if (a3[1] != 5)
      {
LABEL_18:
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v20 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          if (*(a3 + 23) >= 0)
          {
            v21 = a3;
          }

          else
          {
            v21 = *a3;
          }

          *buf = 136315138;
          v25 = v21;
          _os_log_impl(&dword_1B2754000, v20, OS_LOG_TYPE_ERROR, "Missing texture: '%s'", buf, 0xCu);
        }

        goto LABEL_26;
      }

      v16 = *a3;
    }

    else
    {
      v16 = a3;
      if (v15 != 5)
      {
        goto LABEL_18;
      }
    }

    v17 = *v16;
    v18 = *(v16 + 4);
    if (v17 == 1953065079 && v18 == 101)
    {
      operator new();
    }

    goto LABEL_18;
  }

  while (1)
  {
    md::TextureManager::_texture(a1, a2, a3, a4, a5, v6 + 0x100000000);
    v12 = *a1;
    if (*a1)
    {
      md::SharedResource::addFrameRef(*a1, 0);
      if (*(v12 + 4))
      {
        break;
      }
    }

    v13 = *(a1 + 8);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    if ((--v6 & 0xFFFFFFFE) == 0)
    {
      goto LABEL_7;
    }
  }
}

void sub_1B30E7EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::TextureManager::_texture(char **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v30[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a3, *(a3 + 8));
  }

  else
  {
    v27 = *a3;
  }

  v28 = a6;
  v29 = BYTE4(a6);
  v12 = pthread_rwlock_rdlock((a2 + 64));
  if (v12)
  {
    geo::read_write_lock::logFailure(v12, "read lock", v13);
  }

  v14 = std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::find<md::TextureManager::TextureKey>((a2 + 464), &v27);
  if (v14)
  {
    v15 = v14[7];
    *a1 = v14[6];
    a1[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    geo::read_write_lock::unlock((a2 + 64));
  }

  else
  {
    geo::read_write_lock::unlock((a2 + 64));
    v16 = md::TextureManager::_loadData(a2, a3, a6, 0);
    v17 = *a4;
    v18 = a4[1];
    v24[0] = v17;
    v24[1] = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    textureWithData(&v25, v16, v24, v7);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    v23 = (a2 + 64);
    v19 = pthread_rwlock_wrlock((a2 + 64));
    if (v19)
    {
      geo::read_write_lock::logFailure(v19, "write lock", v20);
    }

    v21 = std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::find<md::TextureManager::TextureKey>((a2 + 464), &v27);
    if (!v21)
    {
      std::allocate_shared[abi:nn200100]<md::SharedTexture2D,std::allocator<md::SharedTexture2D>,std::shared_ptr<ggl::Texture2D> &,md::SharedResourcesManager *&,0>(v30, &v25, (a2 + 576));
    }

    v22 = v21[7];
    *a1 = v21[6];
    a1[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    geo::write_lock_guard::~write_lock_guard(&v23);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v26);
    }
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_1B30E8614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, pthread_rwlock_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char *a26)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTextureCube>>,void *>>>>::~unique_ptr[abi:nn200100](&a26);
  geo::write_lock_guard::~write_lock_guard(&a14);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::__unordered_map_hasher<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,md::TextureManager::TextureKeyHash,std::equal_to<md::TextureManager::TextureKey>,true>,std::__unordered_map_equal<md::TextureManager::TextureKey,std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>,std::equal_to<md::TextureManager::TextureKey>,md::TextureManager::TextureKeyHash,true>,std::allocator<std::__hash_value_type<md::TextureManager::TextureKey,std::shared_ptr<md::SharedTexture2D>>>>::find<md::TextureManager::TextureKey>(void *a1, md::TextureManager::TextureKey *this)
{
  v4 = md::TextureManager::TextureKey::hash(this);
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
        if (std::equal_to<md::TextureManager::TextureKey>::operator()[abi:nn200100](v11 + 2, this))
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

uint64_t std::__function::__func<md::TextureManager::_texture(std::string const&,std::shared_ptr<ggl::SamplerState> &,BOOL,std::optional<unsigned int>)::$_0,std::allocator<md::TextureManager::_texture(std::string const&,std::shared_ptr<ggl::SamplerState> &,BOOL,std::optional<unsigned int>)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2FD20;
  a2[1] = v2;
  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture2DLoadItem>(uint64_t a1, void *a2)
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

uint64_t std::__function::__func<md::TextureManager::_cubeTexture(std::string const&,std::shared_ptr<ggl::SamplerState>,BOOL,std::optional<unsigned int>)::$_0,std::allocator<md::TextureManager::_cubeTexture(std::string const&,std::shared_ptr<ggl::SamplerState>,BOOL,std::optional<unsigned int>)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A2FCD8;
  a2[1] = v2;
  return result;
}

void std::__shared_ptr_emplace<md::SharedTextureCube>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_emplace<md::SharedTextureCube>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2FCA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::CameraCollisionResolutionRequest,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A44510;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::CameraCollisionResolutionRequest,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::CameraCollisionResolutionRequest,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A44530;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 104 * (v4 & 0x3F);
      *(v5 + 80) = &unk_1F2A44148;

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

  v6 = a1[7];
  v7 = a1[8];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[10];
  if (v8)
  {
    a1[11] = v8;
    operator delete(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    a1[8] = v9;
    operator delete(v9);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::CameraCollisionResolutionRequest,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::CameraCollisionResolutionRequest,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::CameraCollisionResolutionRequest,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A44510;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::CameraCollisionResolutionRequest,64ul>::~storage(a1);
}

void *std::__function::__func<ecs2::AddComponent::AddComponent<md::CameraCollisionResolutionRequest>(ecs2::Entity,md::CameraCollisionResolutionRequest &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2FFD0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v6;
  *(a2 + 40) = v5;
  *(a2 + 24) = v4;
  result = geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((a2 + 88), a1 + 88);
  *(a2 + 112) = *(a1 + 112);
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::CameraCollisionResolutionRequest>(ecs2::Entity,md::CameraCollisionResolutionRequest &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A2FFD0;
  *(a1 + 88) = &unk_1F2A44148;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::CameraCollisionResolutionRequest>(ecs2::Entity,md::CameraCollisionResolutionRequest &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A2FFD0;
  *(a1 + 88) = &unk_1F2A44148;

  return a1;
}

__n128 std::__function::__func<md::ProcessCameraControllerResponse::operator()(ecs2::Query<md::cc::CameraCommands const&>)::$_0,std::allocator<md::ProcessCameraControllerResponse::operator()(ecs2::Query<md::cc::CameraCommands const&>)::$_0>,void ()(md::cc::CameraCommands const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2FF88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ProcessCameraControllerResponse>,std::allocator<ecs2::ForwardToExecute<md::ProcessCameraControllerResponse>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A2FDE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::FrameGraphPhysicalResourceOwner<ggl::DeviceData>::~FrameGraphPhysicalResourceOwner(void *a1)
{
  *a1 = &unk_1F2A30078;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *md::FrameGraphPhysicalResourceOwner<ggl::DeviceData>::~FrameGraphPhysicalResourceOwner(void *a1)
{
  *a1 = &unk_1F2A30078;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<ggl::Buffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::FrameGraphPhysicalResourceOwner<ggl::Texture>::~FrameGraphPhysicalResourceOwner(void *a1)
{
  *a1 = &unk_1F2A30098;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void ggl::ARMesh::ARMeshPipelineState::~ARMeshPipelineState(ggl::ARMesh::ARMeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::ARMesh::ARMeshPipelineSetup::~ARMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::ARMesh::ARMeshPipelineSetup::setStyleColorConstantData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 96) = a3;
  *(a1 + 104) = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 104);
  *(a2 + 96) = a3;
  *(a2 + 104) = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void ggl::ARMesh::ARDepthMeshPipelineState::~ARDepthMeshPipelineState(ggl::ARMesh::ARDepthMeshPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::ARMesh::ARDepthMeshPipelineSetup::~ARDepthMeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::ARMesh::ARShadowPipelineState::~ARShadowPipelineState(ggl::ARMesh::ARShadowPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::ARMesh::ARShadowPipelineSetup::~ARShadowPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::MuninPassList::buildFrameGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  v49 = gdc::Context::context<md::MuninSceneContext>(v8);
  *(a1 + 32) = (v49[25] - v49[24]) >> 3;
  v9 = gdc::Context::context<md::MuninSceneContext>(v8);
  v10 = (v9[25] - v9[24]) >> 3;
  *(a1 + 32) = v10;
  v11 = *(a1 + 40);
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 48) = v11;
  std::vector<md::FrameGraphLogicalResource *>::resize((a1 + 40), v10);
  *(a1 + 72) = *(a1 + 64);
  std::vector<md::FrameGraphLogicalResource *>::resize((a1 + 64), *(a1 + 32));
  *(a1 + 96) = *(a1 + 88);
  std::vector<md::FrameGraphLogicalResource *>::resize((a1 + 88), 3 * *(a1 + 32));
  v12 = v9[4];
  if (v12)
  {
    *(a1 + 168) = *(a1 + 160) != v12;
    *v52 = 1;
    *&v52[4] = 0x3F80000000000000;
    v53 = 0x3F80000000000000;
    LOBYTE(v54) = 0;
    BYTE4(v54) = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0x100000000;
    v58 = 1;
    v59 = 0;
    md::FrameGraphBuilder::createResource(a5, v52, "CrossFade ColorBuffer", 0xCF8B314100000015, 0);
  }

  *(a1 + 168) = 0;
  v13 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(a1 + 160) = v9[4];
  if (*(a1 + 32) >= 2uLL)
  {
    v15 = +[VKDebugSettings sharedSettings];
    [*a2 sizeInPixels];
    v17 = v16;
    [*a2 sizeInPixels];
    v19 = v18;
    [*a2 contentScale];
    v21 = v20;
    [v15 muninTransitionMinResolution];
    v23 = v22;
    [v15 muninTransitionMaxResolution];
    v25 = v9[24];
    v26 = v9[25];
    if (v25 == v26)
    {
      v34 = 16;
      v33 = 16;
    }

    else
    {
      v27 = v17;
      v28 = fmin(v21, 2.0);
      v29 = vcvtps_u32_f32((v23 * v27) / v28);
      v30 = vcvtps_u32_f32((v24 * v27) / v28);
      v31 = v19;
      v32 = 1.0 / v27;
      v33 = 16;
      v34 = 16;
      do
      {
        v35 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v9 + 19, *v25);
        v36 = *(v35 + 3);
        v37 = *(v35 + 4);
        if (v36 == v37)
        {
          v43 = 0;
        }

        else
        {
          v38 = 0;
          do
          {
            v40 = *(*v36 + 176);
            v41 = 0.0;
            if (*(*v36 + 184) != v40)
            {
              v42 = *(*v36 + 468);
              if (v42 < 3.14159265)
              {
                v41 = (*(*(v40 + 16) + 80) / v42);
              }
            }

            v39 = v35[17];
            if (v38 <= (v39 * v41))
            {
              v38 = (v39 * v41);
            }

            v36 += 16;
          }

          while (v36 != v37);
          v43 = (v38 * 1.25);
        }

        if (v43 <= v29)
        {
          v43 = v29;
        }

        if (v43 >= v30)
        {
          v43 = v30;
        }

        v44 = vcvtas_u32_f32((v31 * v43) * v32);
        v45 = (v43 + 3) & 0xFFFFFFFC;
        v46 = (v44 + 3) & 0xFFFFFFFC;
        if (v33 <= v45)
        {
          v33 = v45;
        }

        if (v34 <= v46)
        {
          v34 = v46;
        }

        ++v25;
      }

      while (v25 != v26);
    }

    v47 = *(a1 + 176);
    if (v47)
    {
      v48 = v47 | 0x100000000;
    }

    else
    {
      v48 = 0;
    }

    *v52 = 0;
    *&v52[4] = v33;
    *&v52[8] = 0;
    v53 = v34;
    v54 = v48;
    v55 = 0;
    v56 = 0;
    v57 = 0x100000000;
    v58 = 1;
    v59 = 0;
    md::FrameGraphBuilder::createResource(a5, v52, "Munin Composite Color", 0xE9FE168700000015, 0);
  }

  if (v49[25] - v49[24] >= 9uLL)
  {
    *v52 = 0;
    if (*(a1 + 32))
    {
      v51[0] = &unk_1F2A301F0;
      v51[1] = v52;
      v51[2] = a1;
      v51[3] = v51;
      md::FrameGraphBuilder::addRenderPass<md::MuninDynamicCommandBufferIdInfo>(a5, 1, v51);
    }

    v50[0] = &unk_1F2A30280;
    v50[1] = a1;
    v50[3] = v50;
    md::FrameGraphBuilder::addRenderPass<md::MuninDynamicCommandBufferIdInfo>(a5, 3, v50);
  }

  operator new();
}

void md::FrameGraphBuilder::addRenderPass<md::MuninDynamicCommandBufferIdInfo>(uint64_t a1, int a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 152);
  v4 = *(a1 + 160);
  v6 = md::CommandBufferPool::pop(*(a1 + 184), 0, "Main");
  v7 = v6;
  v9 = *(a1 + 160);
  v8 = *(a1 + 168);
  if (v9 >= v8)
  {
    v11 = *(a1 + 152);
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v15);
    }

    v16 = (8 * v12);
    *v16 = v7;
    v10 = 8 * v12 + 8;
    v17 = *(a1 + 152);
    v18 = *(a1 + 160) - v17;
    v19 = v16 - v18;
    memcpy(v16 - v18, v17, v18);
    v20 = *(a1 + 152);
    *(a1 + 152) = v19;
    *(a1 + 160) = v10;
    *(a1 + 168) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v9 = v6;
    v10 = (v9 + 1);
  }

  *(a1 + 160) = v10;
  md::FrameGraphResourcePools::constructRenderQueue(*(a1 + 184), *(a1 + 152) + v4 - v5, 1uLL);
}

__n128 std::__function::__func<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4,std::allocator<md::MuninPassList::buildFrameGraph(md::LayoutContext const&,md::Renderer &,md::FrameGraphRenderTarget const&,md::FrameGraphBuilder *)::$_4>,void ()(md::FrameGraphRenderPassBuilder &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  std::string::basic_string[abi:nn200100]<0>(&__str, "crossfade");
  std::string::operator=((a2 + 32), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v4 + 128));
  md::FrameGraphPassBuilder::addAttachmentInput(a2, *(v4 + 136));
  __str.__r_.__value_.__r.__words[0] = **(a1 + 16);
  std::__tree<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>>::__emplace_unique_key_args<md::FrameGraphPass *,md::FrameGraphPass * const&>((a2 + 56), __str.__r_.__value_.__l.__data_, &__str);
  v5 = *(a1 + 24);
  v6 = *v5;
  *(a2 + 120) = v5[1];
  *(a2 + 104) = v6;
  result = v5[2];
  v8 = v5[3];
  v9 = v5[4];
  *(a2 + 184) = v5[5];
  *(a2 + 168) = v9;
  *(a2 + 152) = v8;
  *(a2 + 136) = result;
  return result;
}