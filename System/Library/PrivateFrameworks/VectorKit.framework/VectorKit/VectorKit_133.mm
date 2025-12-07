void md::RoadLayer::~RoadLayer(md::RoadLayer *this)
{
  *this = &unk_1F2A3CB00;
  v2 = *(this + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3CB00;
  v2 = *(this + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::~RibbonLayer(this);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3CB20;
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

  v6 = a1[15];
  a1[15] = 0;
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

void md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3CB00;
  v2 = a1[24];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[22];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3CB00;
  v2 = a1[24];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[22];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::~RibbonLayer(a1);
}

void std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>::reset[abi:nn200100](uint64_t (****result)(void))
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RoadRibbon>(v3, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::batch(std::unordered_map<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::RoadBatchKey,std::vector<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RoadRibbon,mdm::TypeDeleter<md::RoadRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = ggl::CullingGrid::sortOrderForCells(*(v5 + 96));
      v7 = *a1;
      if (v6 < ggl::CullingGrid::sortOrderForCells(*(*a1 + 96)))
      {
        *a1 = v5;
        *(a2 - 1) = v7;
      }

      return 1;
    }
  }

  v8 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v9;
      v13 = ggl::CullingGrid::sortOrderForCells(*(*v9 + 96));
      if (v13 < ggl::CullingGrid::sortOrderForCells(*(*v8 + 96)))
      {
        *v9 = 0;
        v21 = v12;
        v14 = *v8;
        v15 = v10;
        while (1)
        {
          *(a1 + v15 + 16) = 0;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
          v16 = v21;
          if (v15 == -16)
          {
            break;
          }

          v17 = ggl::CullingGrid::sortOrderForCells(*(v21 + 96));
          v14 = *(a1 + v15 + 8);
          v15 -= 8;
          if (v17 >= ggl::CullingGrid::sortOrderForCells(*(v14 + 96)))
          {
            v18 = (a1 + v15 + 24);
            goto LABEL_19;
          }
        }

        v18 = a1;
LABEL_19:
        v21 = 0;
        std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::RibbonSection<md::Ribbons::RoadRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

void *md::RoadLayer::RoadLayer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, int a7)
{
  v8[0] = 0;
  v12 = 0;
  if (*(a6 + 32) == 1)
  {
    v9 = *(a6 + 4);
    *v8 = *a6;
    v10 = *(a6 + 16);
    v11 = *(a6 + 24);
    v12 = 1;
  }

  result = md::RibbonLayer<md::Ribbons::RoadRibbonDescriptor>::RibbonLayer(a1, a2, *(a3 + 16), a4, a5, v8, a7);
  *result = &unk_1F2A3C828;
  result[26] = 0;
  *(result + 54) = 0;
  return result;
}

void md::RoadLayer::setSharedResources(void *a1, uint64_t a2)
{
  a1[26] = a2;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; v2 += 8)
  {
    v4 = *v2;
    v5 = *(*(*v2 + 8) + 208);
    **(*(*v2 + 1112) + 168) = *(v5[15] + 16);
    **(v4[138] + 168) = *(v5[15] + 16);
    **(v4[136] + 168) = *(v5[15] + 16);
    v6 = v4[137];
    v7 = v5[4];
    v14 = v5[3];
    v15 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      ggl::PipelineSetup::setState(v6, &v14);
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    else
    {
      ggl::PipelineSetup::setState(v6, &v14);
    }

    **(v4[137] + 168) = *(v5[16] + 16);
    v8 = v4[140];
    v9 = v5[8];
    v14 = v5[7];
    v15 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      ggl::PipelineSetup::setState(v8, &v14);
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    else
    {
      ggl::PipelineSetup::setState(v8, &v14);
    }

    **(v4[140] + 168) = *(v5[15] + 16);
    v10 = v4[141];
    v11 = v5[6];
    v14 = v5[5];
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      ggl::PipelineSetup::setState(v10, &v14);
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    else
    {
      ggl::PipelineSetup::setState(v10, &v14);
    }

    *(*(v4[141] + 168) + 8) = *(v5[16] + 16);
    *(*(v4[141] + 168) + 16) = *(v5[15] + 16);
    v12 = v4[142];
    v13 = v5[2];
    v14 = v5[1];
    v15 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      ggl::PipelineSetup::setState(v12, &v14);
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    else
    {
      ggl::PipelineSetup::setState(v12, &v14);
    }
  }
}

void md::CollisionObject::worldDrawDebugHighlightWithContext(float32x4_t *a1, uint64_t a2, float32x2_t *a3, double a4, double a5, float32x4_t a6)
{
  v9 = a1[7].i64[0];
  if (v9)
  {
    v10 = v9[5];
    v61[4] = v9[4];
    v61[5] = v10;
    v11 = v9[7];
    v61[6] = v9[6];
    v61[7] = v11;
    v12 = v9[1];
    v61[0] = *v9;
    v61[1] = v12;
    v13 = v9[2];
    v14 = v9[3];
    v61[2] = v13;
    v61[3] = v14;
  }

  else
  {
    v15 = a1[7].i64[1];
    if (!v15)
    {
      return;
    }

    geo::Transform<double>::toMatrix(v61, v15);
  }

  if ((a1[9].i8[8] & 1) == 0)
  {
    v16 = 0;
    v17 = 0;
    v18 = 24;
    if (a1[12].i8[7])
    {
      v18 = 25;
    }

    v13.i32[0] = a1->i32[v18];
    do
    {
      v14.i32[0] = a1->i32[v17 + 2];
      a6.i32[0] = a1->i32[v17];
      if (v16)
      {
        break;
      }

      v16 = 1;
      v17 = 1;
    }

    while (v14.f32[0] >= a6.f32[0]);
    v19 = 0;
    v20 = 0;
    v13.f32[0] = -v13.f32[0];
    v21 = vdupq_lane_s32(*v13.f32, 0);
    v22.i64[0] = vaddq_f32(*a1, v21).u64[0];
    v22.i64[1] = vsubq_f32(*a1, v21).i64[1];
    v23 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a6, v14), 0), *a1, v22);
    v56 = v23.i64[0];
    v57 = v23.i32[2];
    do
    {
      if (v20 >= 2)
      {
        v24 = *&v23.i32[1];
      }

      else
      {
        v24 = *&v23.i32[3];
      }

      v25 = &v59[v19 + 80];
      *v25 = *(&v56 + (~v19 & 8));
      v25[1] = v24;
      ++v20;
      v19 += 8;
    }

    while (v20 != 4);
    v26 = 0;
    v60 = vextq_s8(v60, v60, 8uLL);
    v27 = v59;
    do
    {
      v62 = vcvtq_f64_f32(*&v59[v26 + 80]);
      v63 = 0;
      *(v27 - 2) = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v61, &v62);
      *(v27 - 1) = v28;
      *v27 = v29;
      v27 += 3;
      v26 += 8;
    }

    while (v26 != 32);
    v30 = 0;
    v31 = (a2 + 864);
    __asm { FMOV            V4.2D, #1.0 }

    v37 = v58;
    v55 = _Q4;
    do
    {
      v38 = 0;
      v39 = v31;
      do
      {
        v40 = 0;
        v41 = 0.0;
        v42 = v39;
        do
        {
          v43 = *v42;
          v42 += 4;
          v41 = v41 + *&v37[v40++] * v43;
        }

        while (v40 != 3);
        v62.f64[v38] = v31[v38 + 12] + v41;
        ++v38;
        ++v39;
      }

      while (v38 != 4);
      v44 = 0;
      v45 = v30 + 1;
      v46 = vmulq_f64(v62, vdivq_f64(_Q4, vdupq_lane_s64(v64, 0)));
      if (v30 == 3)
      {
        v47 = 0;
      }

      else
      {
        v47 = v30 + 1;
      }

      v48 = &v58[3 * v47];
      v49 = v31;
      do
      {
        v50 = 0;
        v51 = 0.0;
        v52 = v49;
        do
        {
          v53 = *v52;
          v52 += 4;
          v51 = v51 + *&v48[v50++] * v53;
        }

        while (v50 != 3);
        v62.f64[v44] = v31[v44 + 12] + v51;
        ++v44;
        ++v49;
      }

      while (v44 != 4);
      v54 = vcvt_f32_f64(v46);
      *&v62.f64[0] = vcvt_f32_f64(vmulq_f64(v62, vdivq_f64(_Q4, vdupq_lane_s64(v64, 0))));
      a3[1] = v54;
      ggl::DebugConsole::drawLine(a3, &v62, v54.f32[0]);
      _Q4 = v55;
      v37 += 3;
      v30 = v45;
    }

    while (v45 != 4);
  }
}

uint64_t md::Ribbons::RibbonWriter<md::Ribbons::TransitRibbonDescriptor>::writeVertex(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = v3[29];
  v5 = v3[30];
  v6 = v3[28];
  if (v6 == v5 && v4 == v3[31])
  {
    v7 = 0.0;
    if (v6 != v4)
    {
      v7 = (fminf(v4, fmaxf(v6, *(a3 + 60))) - v6) / (v4 - v6);
    }

    v8 = -1.0 - v7;
  }

  else
  {
    v9 = *(a3 + 60);
    if (v9 >= v4)
    {
      v8 = 1.0;
      if (v9 >= v5)
      {
        v10 = v3[31];
        if (v5 != v10)
        {
          v8 = ((fminf(v10, fmaxf(v5, v9)) - v5) / (v10 - v5)) + 1.0;
        }
      }
    }

    else
    {
      v8 = 0.0;
      if (v6 != v4)
      {
        v8 = (fminf(v4, fmaxf(v6, v9)) - v6) / (v4 - v6);
      }
    }
  }

  v11 = 0;
  v12 = *a2;
  v13 = 1;
  do
  {
    v14 = (fminf(fmaxf(COERCE_FLOAT(HIDWORD(*(a3 + 8))), 0.0), 1.0) * 65535.0);
    v15 = v13;
    *v12 = (fminf(fmaxf(COERCE_FLOAT(*(a3 + 8)), 0.0), 1.0) * 65535.0);
    v16.i64[0] = *(a3 + 20 + 8 * v11);
    v17 = *(a3 + 44 + 8 * v11);
    *(v12 + 2) = v14;
    v16.i64[1] = v17;
    v18.i64[0] = 0xBF000000BF000000;
    v18.i64[1] = 0xBF000000BF000000;
    *(v12 + 4) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v18, xmmword_1B33B0C70, v16)));
    v19 = *(result + 8);
    *(v12 + 16) = *(v19 + 100);
    *(v12 + 20) = *(v19 + 104);
    *(v12 + 24) = v8;
    *(v12 + 28) = *(v19 + 128) + *(a3 + 60);
    *(v12 + 32) = *(a3 + 16);
    v12 += 40;
    *a2 = v12;
    v11 = 1;
    v13 = 0;
  }

  while ((v15 & 1) != 0);
  return result;
}

void md::Logic<md::FlyoverCompleteTileDataLogic,md::FlyoverCompleteTileDataContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::FlyoverTileDataResolverContext,md::PendingSceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::FlyoverCompleteTileDataLogic::runBeforeLayoutAtVariableRate(uint64_t a1, md::LayoutContext *this, unsigned __int16 ***a3, void *a4)
{
  v328 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 168);
  if (v4)
  {
    _ZF = *(v4 + 352) == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    v7 = *a3;
    v8 = a3[2];
    v9 = v8[1];
    v289 = *v8;
    v290 = *(v4 + 352);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v287 = v7;
    v291 = v9;
    md::LayoutContext::frameState(this);
    v11 = *(v10 + 88);
    v294 = (a1 + 808);
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a1 + 808));
    v12 = *(a1 + 272);
    if (v12 != *(a1 + 328))
    {
      v13 = 0;
      v14 = 0;
      v15 = *(a1 + 312);
      do
      {
        if (v13 == v15)
        {
          break;
        }

        v16 = v12[17];
        v17 = std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>>>::find<std::pair<md::FlyoverOctile,md::FlyoverOctile>>((a1 + 288), (v12 + 2));
        if (v17)
        {
          v18 = *(a1 + 296);
          v19 = *(v17 + 1);
          v20 = vcnt_s8(v18);
          v20.i16[0] = vaddlv_u8(v20);
          if (v20.u32[0] > 1uLL)
          {
            if (v19 >= *&v18)
            {
              v19 %= *&v18;
            }
          }

          else
          {
            v19 &= *&v18 - 1;
          }

          v21 = *(a1 + 288);
          v22 = *(v21 + 8 * v19);
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22 != v17);
          if (v23 == (a1 + 304))
          {
            goto LABEL_28;
          }

          v24 = *(v23 + 1);
          if (v20.u32[0] > 1uLL)
          {
            if (v24 >= *&v18)
            {
              v24 %= *&v18;
            }
          }

          else
          {
            v24 &= *&v18 - 1;
          }

          if (v24 != v19)
          {
LABEL_28:
            if (!*v17)
            {
              goto LABEL_29;
            }

            v25 = *(*v17 + 8);
            if (v20.u32[0] > 1uLL)
            {
              if (v25 >= *&v18)
              {
                v25 %= *&v18;
              }
            }

            else
            {
              v25 &= *&v18 - 1;
            }

            if (v25 != v19)
            {
LABEL_29:
              *(v21 + 8 * v19) = 0;
            }
          }

          v26 = *v17;
          if (*v17)
          {
            v27 = *(v26 + 8);
            if (v20.u32[0] > 1uLL)
            {
              if (v27 >= *&v18)
              {
                v27 %= *&v18;
              }
            }

            else
            {
              v27 &= *&v18 - 1;
            }

            if (v27 != v19)
            {
              *(*(a1 + 288) + 8 * v27) = v23;
              v26 = *v17;
            }
          }

          *v23 = v26;
          *v17 = 0;
          --*(a1 + 312);
          operator delete(v17);
        }

        v14 += v16;
        v12 = v12[1];
        ++v13;
      }

      while (v12 != *(a1 + 328));
      v28 = *(a1 + 272);
      if (v28 != v12)
      {
        v29 = *(*v12 + 8);
        v30 = *v28;
        *(v30 + 8) = v29;
        *v29 = v30;
        do
        {
          v31 = v28[1];
          --*(a1 + 280);
          std::__list_imp<md::FlyoverDynamicGeometry>::clear(v28 + 14);
          operator delete(v28);
          v28 = v31;
        }

        while (v31 != v12);
      }

      v32 = *(a1 + 336);
      _CF = v32 >= v14;
      v34 = v32 - v14;
      if (!_CF)
      {
        v34 = 0;
      }

      *(a1 + 336) = v34;
    }

    v35 = (a1 + 736);
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a1 + 736));
    md::FlyoverCompleteTileDataLogic::collectDrapings(a1);
    v36 = v8[2];
    v296 = md::SceneContext::layerDataInView(v8, *(a1 + 424));
    *v309 = 0u;
    v310 = 0u;
    v311 = 1065353216;
    *(&v307 + 1) = 0;
    v308 = 0;
    *&v307 = &v307 + 8;
    v37 = *v36;
    v292 = *(v36 + 1);
    if (*v36 != v292)
    {
      v38 = a1 + 720;
      v300 = v296 + 1;
      v295 = (a1 + 784);
      __asm { FMOV            V14.2S, #1.0 }

      do
      {
        v42 = v37 + 8;
        v293 = v37;
        v43 = *(v37 + 16);
        v297 = v42;
        while (v43 != v42)
        {
          v298 = v43;
          v44 = *(v43 + 16);
          FillRect = grl::IconMetricsRenderResult::getFillRect(v44);
          if (std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(FillRect, *(a1 + 424)))
          {
            v46 = v44 == 0;
          }

          else
          {
            v46 = 1;
          }

          if (!v46)
          {
            v47 = *(v44 + 1);
            if (v47)
            {
              v48 = 0x9DDFEA08EB382D69 * ((8 * (v47 & 0x1FFFFFFF) + 8) ^ (v47 >> 32));
              v49 = 0x9DDFEA08EB382D69 * ((v47 >> 32) ^ (v48 >> 47) ^ v48);
              v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
              if (v309[1])
              {
                v51 = vcnt_s8(v309[1]);
                v51.i16[0] = vaddlv_u8(v51);
                if (v51.u32[0] > 1uLL)
                {
                  v52 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
                  if (v50 >= v309[1])
                  {
                    v52 = v50 % v309[1];
                  }
                }

                else
                {
                  v52 = v50 & (v309[1] - 1);
                }

                v53 = *(v309[0] + v52);
                if (v53)
                {
                  for (i = *v53; i; i = *i)
                  {
                    v55 = i[1];
                    if (v50 == v55)
                    {
                      if (i[2] == v47)
                      {
                        goto LABEL_359;
                      }
                    }

                    else
                    {
                      if (v51.u32[0] > 1uLL)
                      {
                        if (v55 >= v309[1])
                        {
                          v55 %= v309[1];
                        }
                      }

                      else
                      {
                        v55 &= v309[1] - 1;
                      }

                      if (v55 != v52)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              v299 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
              v304 = 0u;
              v305 = 0u;
              v306 = 1065353216;
              md::FlyoverCompleteTileDataLogic::addFallbackData(a1, v47, &v304);
              gdc::LayerDataCollector::virtualTilesBegin(&v320, *v47, v47[1]);
              v301 = v47;
              while (1)
              {
                gdc::LayerDataCollector::virtualTilesEnd(__p, v47[1]);
                v56 = v320;
                if (!geo::codec::VectorTile::daVinciBuildingColorsArePresent(v320, __p[0]))
                {
                  break;
                }

                gdc::VirtualTileIterator::tileKey(&v312, v56);
                grl::LayerMetrics::anchor(v56);
                v58 = v57;
                v317 = v57;
                v59 = SLODWORD(v313[0]);
                while (1)
                {
                  grl::LayerMetrics::anchor(v321[0]);
                  if (!gdc::DataKeyIterator::operator!=(v58, v60))
                  {
                    break;
                  }

                  if (*(v58 + 8) == *(a1 + 424))
                  {
                    md::FlyoverCommon::decodeFlyoverKey(v314, v58);
                    if (v316)
                    {
                      *(__p + 4) = *(v314 + 4);
                      LOWORD(__p[0]) = v314[0];
                      *v326 = v315;
                      v326[8] = BYTE8(v315);
                      *&v326[16] = v316;
                      v327 = vcvtmd_s64_f64(v59 / (1 << SBYTE1(v312)));
                      v61 = md::FlyoverOctileHash::operator()(__p);
                      v62 = (v61 << 6) - 0x61C8864680B583EBLL + (v61 >> 2) + v327;
                      v63 = v62 ^ v61;
                      v64 = *(a1 + 744);
                      if (v64)
                      {
                        v65 = vcnt_s8(v64);
                        v65.i16[0] = vaddlv_u8(v65);
                        v66 = v65.u32[0];
                        if (v65.u32[0] > 1uLL)
                        {
                          v67 = v62 ^ v61;
                          if (v63 >= *&v64)
                          {
                            v67 = v63 % *&v64;
                          }
                        }

                        else
                        {
                          v67 = v63 & (*&v64 - 1);
                        }

                        v68 = *(*v35 + 8 * v67);
                        if (v68)
                        {
                          for (j = *v68; j; j = *j)
                          {
                            v70 = *(j + 1);
                            if (v70 == v63)
                            {
                              if (md::FlyoverOctile::operator==(j + 16, __p) && j[64] == v327)
                              {
                                goto LABEL_95;
                              }
                            }

                            else
                            {
                              if (v66 > 1)
                              {
                                if (v70 >= *&v64)
                                {
                                  v70 %= *&v64;
                                }
                              }

                              else
                              {
                                v70 &= *&v64 - 1;
                              }

                              if (v70 != v67)
                              {
                                break;
                              }
                            }
                          }
                        }
                      }

                      operator new();
                    }
                  }

LABEL_95:
                  gdc::DataKeyIterator::operator++(&v317);
                  v58 = v317;
                }

                gdc::VirtualTileIterator::operator++(&v320);
                v47 = v301;
                v38 = a1 + 720;
              }

              v71 = *v296;
              if (*v296 != v300)
              {
                do
                {
                  v72 = v71[4];
                  if (v72)
                  {
                    *(__p + 4) = *(v72 + 828);
                    LOWORD(__p[0]) = *(v72 + 824);
                    *v326 = *(v72 + 840);
                    v326[8] = *(v72 + 848);
                    *&v326[16] = *(v72 + 856);
                    v327 = *(v71 + 48);
                    v73 = md::FlyoverOctileHash::operator()(__p);
                    v74 = *(a1 + 744);
                    if (v74)
                    {
                      v75 = ((v73 << 6) - 0x61C8864680B583EBLL + (v73 >> 2) + v327) ^ v73;
                      v76 = vcnt_s8(v74);
                      v76.i16[0] = vaddlv_u8(v76);
                      v77 = v76.u32[0];
                      if (v76.u32[0] > 1uLL)
                      {
                        v78 = ((v73 << 6) - 0x61C8864680B583EBLL + (v73 >> 2) + v327) ^ v73;
                        if (v75 >= *&v74)
                        {
                          v78 = v75 % *&v74;
                        }
                      }

                      else
                      {
                        v78 = v75 & (*&v74 - 1);
                      }

                      v79 = *(*v35 + 8 * v78);
                      if (v79)
                      {
                        for (k = *v79; k; k = *k)
                        {
                          v81 = *(k + 1);
                          if (v81 == v75)
                          {
                            if (md::FlyoverOctile::operator==(k + 16, __p) && k[64] == v327)
                            {
                              break;
                            }
                          }

                          else
                          {
                            if (v77 > 1)
                            {
                              if (v81 >= *&v74)
                              {
                                v81 %= *&v74;
                              }
                            }

                            else
                            {
                              v81 &= *&v74 - 1;
                            }

                            if (v81 != v78)
                            {
                              break;
                            }
                          }
                        }
                      }
                    }

                    LOBYTE(v312) = 0;
                    *&v326[8] = 0;
                    operator new();
                  }

                  v82 = v71[1];
                  if (v82)
                  {
                    do
                    {
                      v83 = v82;
                      v82 = *v82;
                    }

                    while (v82);
                  }

                  else
                  {
                    do
                    {
                      v83 = v71[2];
                      _ZF = *v83 == v71;
                      v71 = v83;
                    }

                    while (!_ZF);
                  }

                  v71 = v83;
                }

                while (v83 != v300);
              }

              for (m = v305; m; m = *m)
              {
                BYTE1(v314[0]) = *(m + 65);
                *(v314 + 4) = *(m + 68);
                LOBYTE(v314[0]) = *(m + 64);
                *&v315 = m[10];
                BYTE8(v315) = *(m + 88);
                v316 = *(m + 6);
                v85 = *(m + 225);
                if (BYTE1(v314[0]) < v85 && v316 == 2)
                {
                  v86 = *(m + 228);
                  v87 = m[30];
                  v88 = *(m + 248);
                  LOBYTE(v314[0]) = *(m + 224);
                  BYTE1(v314[0]) = v85;
                  *(v314 + 4) = v86;
                  *&v315 = v87;
                  BYTE8(v315) = v88;
                  LOBYTE(v316) = 2;
                  *(&v316 + 4) = 0;
                  HIDWORD(v316) = 0;
                }

                md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo::FlyoverOctileTileInfo(__p, (m + 2), v314, (m + 28));
                std::__tree<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>::__emplace_unique_key_args<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo const&>(&v307, __p, __p);
              }

              if (*(a1 + 848) == 1)
              {
                v321[0] = 0;
                v321[1] = 0;
                v320 = v321;
                v89 = *(a1 + 712);
                v312 = v307;
                v317 = &v307 + 8;
                v323 = v38;
                v324 = v89;
                v314[0] = &v320;
                v314[1] = v321;
                std::__set_difference[abi:nn200100]<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::insert_iterator<std::set<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>> &>(__p, &v312, &v317, &v324, &v323, v314);
                v318 = 0;
                v319 = 0;
                v317 = &v318;
                v312 = *(a1 + 712);
                v323 = v307;
                v324 = v38;
                v322 = &v307 + 8;
                v314[0] = &v317;
                v314[1] = &v318;
                std::__set_difference[abi:nn200100]<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::insert_iterator<std::set<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>> &>(__p, &v312, &v324, &v323, &v322, v314);
                v95 = v320;
                if (v320 != v321)
                {
                  while (2)
                  {
                    if (*(v95 + 64) == 2 || *(v95 + 112) == 2)
                    {
                      goto LABEL_268;
                    }

                    __p[1] = 0;
                    *v326 = 0uLL;
                    __p[0] = &__p[1];
                    *&v326[16] = v11;
                    if (v319)
                    {
                      v97 = v318;
                      v98 = &v318;
                      v99 = &v318;
                      v100 = v318;
                      if (v318)
                      {
                        do
                        {
                          v101 = md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()((v100 + 32), v95 + 32);
                          v102 = 8;
                          if (!v101)
                          {
                            v102 = 0;
                            v99 = v100;
                          }

                          v100 = *&v100[v102];
                        }

                        while (v100);
                        if (v99 != &v318)
                        {
                          v38 = a1 + 720;
                          if (v99 != v317)
                          {
                            v103 = *v99;
                            v98 = v99;
                            if (*v99)
                            {
                              do
                              {
                                v98 = v103;
                                v103 = *(v103 + 1);
                              }

                              while (v103);
                            }

                            else
                            {
                              do
                              {
                                v105 = v98;
                                v98 = *(v98 + 2);
                              }

                              while (*v98 == v105);
                            }

                            goto LABEL_151;
                          }

LABEL_171:
                          v111 = &v318;
                          goto LABEL_173;
                        }

                        v38 = a1 + 720;
                        do
                        {
                          v98 = v97;
                          v97 = *(v97 + 1);
                        }

                        while (v97);
                      }

                      else
                      {
                        do
                        {
                          v104 = v98;
                          v98 = *(v98 + 2);
                        }

                        while (*v98 == v104);
                        v99 = &v318;
                        v38 = a1 + 720;
                      }

LABEL_151:
                      if (v98 == &v318)
                      {
                        goto LABEL_171;
                      }

                      v106 = *(v95 + 80);
                      if (v98[80] != v106)
                      {
                        goto LABEL_171;
                      }

                      v107 = *(v95 + 81);
                      v108 = *(v95 + 21);
                      v109 = *(v95 + 22);
                      v110 = *(v95 + 31);
                      v111 = &v318;
                      do
                      {
                        v112 = v98;
                        v113 = v98[81];
                        if (v113 >= v107)
                        {
                          if (v113 != v107 || *(v112 + 21) != v108 || *(v112 + 22) != v109 || *(v112 + 31) != v110)
                          {
                            goto LABEL_173;
                          }
                        }

                        else
                        {
                          v114 = v107 - v113;
                          if (*(v112 + 21) != v108 >> v114 || *(v112 + 22) != v109 >> v114 || *(v112 + 31) != v110 >> v114)
                          {
                            goto LABEL_173;
                          }
                        }

                        if (v112 == v317)
                        {
                          v111 = v317;
                          goto LABEL_173;
                        }

                        v115 = *v112;
                        v116 = v112;
                        if (*v112)
                        {
                          do
                          {
                            v98 = v115;
                            v115 = *(v115 + 8);
                          }

                          while (v115);
                        }

                        else
                        {
                          do
                          {
                            v98 = *(v116 + 2);
                            _ZF = *v98 == v116;
                            v116 = v98;
                          }

                          while (_ZF);
                        }

                        if (v98 == &v318)
                        {
                          break;
                        }

                        v111 = v112;
                      }

                      while (v98[80] == v106);
                      v111 = v112;
LABEL_173:
                      if (v111 != &v318 || v99 == &v318)
                      {
LABEL_191:
                        if (v111 != &v318)
                        {
                          if (v99 == &v318)
                          {
                            v99 = &v318;
                          }

                          else
                          {
                            v123 = *(v95 + 81);
                            v124 = *(v95 + 21);
                            v125 = *(v95 + 22);
                            do
                            {
                              if (*(v95 + 80) != v99[80])
                              {
                                goto LABEL_212;
                              }

                              v126 = v99[81];
                              if (v123 >= v126)
                              {
                                if (v123 != v126 || v124 != *(v99 + 21) || v125 != *(v99 + 22))
                                {
                                  goto LABEL_212;
                                }

                                v128 = *(v99 + 31);
                              }

                              else
                              {
                                v127 = v126 - v123;
                                if (v124 != *(v99 + 21) >> v127 || v125 != *(v99 + 22) >> v127)
                                {
                                  goto LABEL_212;
                                }

                                v128 = *(v99 + 31) >> v127;
                              }

                              if (*(v95 + 31) != v128)
                              {
                                goto LABEL_212;
                              }

                              v129 = *(v99 + 1);
                              if (v129)
                              {
                                do
                                {
                                  v130 = v129;
                                  v129 = *v129;
                                }

                                while (v129);
                              }

                              else
                              {
                                do
                                {
                                  v130 = *(v99 + 2);
                                  _ZF = *v130 == v99;
                                  v99 = v130;
                                }

                                while (!_ZF);
                              }

                              v99 = v130;
                            }

                            while (v130 != &v318);
                            v99 = &v318;
                          }

LABEL_212:
                          if (v111 != v99)
                          {
                            do
                            {
                              if (v111[64] != 2 && v111[112] != 2)
                              {
                                std::__tree<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>::__emplace_unique_key_args<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo const&>(__p, (v111 + 32), (v111 + 32));
                              }

                              v132 = *(v111 + 1);
                              if (v132)
                              {
                                do
                                {
                                  v133 = v132;
                                  v132 = *v132;
                                }

                                while (v132);
                              }

                              else
                              {
                                do
                                {
                                  v133 = *(v111 + 2);
                                  _ZF = *v133 == v111;
                                  v111 = v133;
                                }

                                while (!_ZF);
                              }

                              v111 = v133;
                            }

                            while (v133 != v99);
                            if (*v326)
                            {
                              v134 = *v295;
                              if (!*v295)
                              {
LABEL_231:
                                operator new();
                              }

                              while (1)
                              {
                                while (1)
                                {
                                  v135 = v134;
                                  if (!md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()(v95 + 32, (v134 + 4)))
                                  {
                                    break;
                                  }

                                  v134 = *v135;
                                  if (!*v135)
                                  {
                                    goto LABEL_231;
                                  }
                                }

                                if (!md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()((v135 + 4), v95 + 32))
                                {
                                  break;
                                }

                                v134 = v135[1];
                                if (!v134)
                                {
                                  goto LABEL_231;
                                }
                              }

                              v136 = v135;
                              n = (v135 + 38);
                              if (v135 + 38 != __p)
                              {
                                v138 = __p[0];
                                if (v136[40])
                                {
                                  v139 = (v136 + 39);
                                  v140 = v136[38];
                                  v141 = v136[39];
                                  v136[38] = (v136 + 39);
                                  *(v141 + 16) = 0;
                                  v136[39] = 0;
                                  v136[40] = 0;
                                  if (*(v140 + 8))
                                  {
                                    v142 = *(v140 + 8);
                                  }

                                  else
                                  {
                                    v142 = v140;
                                  }

                                  if (v142)
                                  {
                                    v143 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v142);
                                    if (v138 == &__p[1])
                                    {
                                      v145 = v142;
                                    }

                                    else
                                    {
                                      v144 = v138;
                                      do
                                      {
                                        v145 = v143;
                                        memcpy(v142 + 4, v144 + 4, 0x110uLL);
                                        v146 = *v139;
                                        v147 = (v136 + 39);
                                        v148 = (v136 + 39);
                                        if (*v139)
                                        {
                                          do
                                          {
                                            while (1)
                                            {
                                              v147 = v146;
                                              if (!md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()((v142 + 4), (v146 + 4)))
                                              {
                                                break;
                                              }

                                              v146 = *v147;
                                              v148 = v147;
                                              if (!*v147)
                                              {
                                                goto LABEL_246;
                                              }
                                            }

                                            v146 = v147[1];
                                          }

                                          while (v146);
                                          v148 = v147 + 1;
                                        }

LABEL_246:
                                        std::__tree<unsigned short>::__insert_node_at(v136 + 38, v147, v148, v142);
                                        if (v145)
                                        {
                                          v143 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v145);
                                        }

                                        else
                                        {
                                          v143 = 0;
                                        }

                                        v149 = v144[1];
                                        if (v149)
                                        {
                                          do
                                          {
                                            v138 = v149;
                                            v149 = *v149;
                                          }

                                          while (v149);
                                        }

                                        else
                                        {
                                          do
                                          {
                                            v138 = v144[2];
                                            _ZF = *v138 == v144;
                                            v144 = v138;
                                          }

                                          while (!_ZF);
                                        }

                                        if (!v145)
                                        {
                                          break;
                                        }

                                        v142 = v145;
                                        v144 = v138;
                                      }

                                      while (v138 != &__p[1]);
                                    }

                                    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v145);
                                    if (v143)
                                    {
                                      v150 = v143[2];
                                      v38 = a1 + 720;
                                      for (n = (v136 + 38); v150; v150 = v150[2])
                                      {
                                        v143 = v150;
                                      }

                                      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v143);
                                    }

                                    else
                                    {
                                      v38 = a1 + 720;
                                      n = (v136 + 38);
                                    }
                                  }

                                  else
                                  {
                                    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(0);
                                    v38 = a1 + 720;
                                  }
                                }

                                if (v138 != &__p[1])
                                {
                                  std::__tree<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>::__construct_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo const&>(v314, n, (v138 + 4));
                                }
                              }

                              *(v136 + 41) = *&v326[8];
                            }
                          }
                        }
                      }

                      else if (*(v95 + 80) == v99[80])
                      {
                        v117 = *(v95 + 81);
                        v118 = v99[81];
                        _CF = v118 >= v117;
                        v119 = v118 - v117;
                        if (v119 != 0 && _CF)
                        {
                          if (*(v95 + 21) == *(v99 + 21) >> v119 && *(v95 + 22) == *(v99 + 22) >> v119 && *(v95 + 31) == *(v99 + 31) >> v119)
                          {
                            goto LABEL_186;
                          }
                        }

                        else if (!v119 && *(v95 + 21) == *(v99 + 21) && *(v95 + 22) == *(v99 + 22) && *(v95 + 31) == *(v99 + 31))
                        {
LABEL_186:
                          v120 = *(v99 + 1);
                          v121 = v99;
                          if (v120)
                          {
                            do
                            {
                              v121 = v120;
                              v120 = *v120;
                            }

                            while (v120);
                          }

                          else
                          {
                            do
                            {
                              v122 = v121;
                              v121 = *(v121 + 2);
                            }

                            while (*v121 != v122);
                          }

                          v111 = v99;
                          v99 = v121;
                          goto LABEL_191;
                        }
                      }
                    }

                    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(__p[1]);
LABEL_268:
                    v151 = *(v95 + 1);
                    if (v151)
                    {
                      do
                      {
                        v152 = v151;
                        v151 = *v151;
                      }

                      while (v151);
                    }

                    else
                    {
                      do
                      {
                        v152 = *(v95 + 2);
                        _ZF = *v152 == v95;
                        v95 = v152;
                      }

                      while (!_ZF);
                    }

                    v95 = v152;
                    if (v152 == v321)
                    {
                      break;
                    }

                    continue;
                  }
                }

                if (*(a1 + 848) == 1)
                {
                  *__p = 0u;
                  *v326 = 0u;
                  *&v326[16] = 1065353216;
                  v153 = *(a1 + 168);
                  v154 = *(v153 + 80);
                  v155 = *(v153 + 88);
                  if (v154 == v155)
                  {
                    v157 = 0;
                    v156 = (a1 + 784);
                  }

                  else
                  {
                    v156 = (a1 + 784);
                    while (*v154 != 75)
                    {
                      v154 += 16;
                      if (v154 == v155)
                      {
                        goto LABEL_283;
                      }
                    }

                    if (v154 == v155)
                    {
LABEL_283:
                      v157 = 0;
                    }

                    else
                    {
                      v157 = *(v154 + 8);
                    }
                  }

                  v313[0] = 0;
                  v313[1] = 0;
                  v312 = v313;
                  v158 = *(a1 + 776);
                  if (v158 != v156)
                  {
                    while (2)
                    {
                      LOBYTE(v324) = 0;
                      v159 = fmax((v11 - *(v158 + 42)) * 10.0, 0.0);
                      if (v159 >= 1.0)
                      {
                        LOBYTE(v324) = 1;
                      }

                      else
                      {
                        v160.f32[0] = v159 + v159;
                        v160.f32[1] = 2.0 - v160.f32[0];
                        v158[41] = vminnm_f32(vmaxnm_f32(v160, 0), _D14);
                        v314[0] = &v324;
                        v314[1] = __p;
                        *&v315 = v157;
                        *(&v315 + 1) = v301;
                        md::FlyoverCompleteTileDataLogic::updateTransitions(gdc::LayerDataCollector *,std::map<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<std::pair<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo const,md::FlyoverCompleteTileDataLogic::TransitionInfo>>> &,double)::$_0::operator()(v314, v158 + 32);
                        v161 = v158[38];
                        if (v161 != (v158 + 39))
                        {
                          do
                          {
                            md::FlyoverCompleteTileDataLogic::updateTransitions(gdc::LayerDataCollector *,std::map<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<std::pair<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo const,md::FlyoverCompleteTileDataLogic::TransitionInfo>>> &,double)::$_0::operator()(v314, v161 + 32);
                            v162 = *(v161 + 1);
                            if (v162)
                            {
                              do
                              {
                                v163 = v162;
                                v162 = *v162;
                              }

                              while (v162);
                            }

                            else
                            {
                              do
                              {
                                v163 = *(v161 + 2);
                                _ZF = *v163 == v161;
                                v161 = v163;
                              }

                              while (!_ZF);
                            }

                            v161 = v163;
                          }

                          while (v163 != (v158 + 39));
                        }

                        if ((v324 & 1) == 0)
                        {
                          v164 = v158[1];
                          if (v164)
                          {
                            do
                            {
                              v165 = v164;
                              v164 = *v164;
                            }

                            while (v164);
                          }

                          else
                          {
                            do
                            {
                              v165 = v158[2];
                              _ZF = *v165 == v158;
                              v158 = v165;
                            }

                            while (!_ZF);
                          }

                          goto LABEL_309;
                        }
                      }

                      v166 = v158[1];
                      v167 = v158;
                      if (v166)
                      {
                        do
                        {
                          v165 = v166;
                          v166 = *v166;
                        }

                        while (v166);
                      }

                      else
                      {
                        do
                        {
                          v165 = v167[2];
                          _ZF = *v165 == v167;
                          v167 = v165;
                        }

                        while (!_ZF);
                      }

                      if (*(a1 + 776) == v158)
                      {
                        *(a1 + 776) = v165;
                      }

                      --*(a1 + 792);
                      std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(*(a1 + 784), v158);
                      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v158[39]);
                      operator delete(v158);
LABEL_309:
                      v158 = v165;
                      if (v165 == v156)
                      {
                        break;
                      }

                      continue;
                    }
                  }

                  v168 = gdc::LayerDataCollector::dataHolders(v301, *(a1 + 424), v90, v91, v92, v93, v94);
                  if (v168 != v169)
                  {
                    v176 = v168;
                    v177 = v169;
                    do
                    {
                      v178 = __p[1];
                      if (__p[1])
                      {
                        v179 = *(v176 + 104);
                        v180 = vcnt_s8(__p[1]);
                        v180.i16[0] = vaddlv_u8(v180);
                        v181 = v180.u32[0];
                        if (v180.u32[0] > 1uLL)
                        {
                          v182 = *(v176 + 104);
                          if (v179 >= __p[1])
                          {
                            v182 = v179 % __p[1];
                          }
                        }

                        else
                        {
                          v182 = (__p[1] - 1) & v179;
                        }

                        v183 = *(__p[0] + v182);
                        if (v183)
                        {
                          for (ii = *v183; ii; ii = *ii)
                          {
                            v185 = *(ii + 1);
                            if (v185 == v179)
                            {
                              if (gdc::LayerDataRequestKey::operator==(ii + 16, v176))
                              {
                                v186 = *(ii + 16);
                                if (v186 && !*(v176 + 112) && *(v176 + 128) != 3)
                                {
                                  v187 = *(ii + 17);
                                  if (v187)
                                  {
                                    atomic_fetch_add_explicit((v187 + 8), 1uLL, memory_order_relaxed);
                                  }

                                  v188 = *(v176 + 120);
                                  *(v176 + 112) = v186;
                                  *(v176 + 120) = v187;
                                  if (v188)
                                  {
                                    std::__shared_weak_count::__release_shared[abi:nn200100](v188);
                                  }

                                  *(v176 + 128) = 3;
                                }

                                break;
                              }
                            }

                            else
                            {
                              if (v181 > 1)
                              {
                                if (v185 >= v178)
                                {
                                  v185 %= v178;
                                }
                              }

                              else
                              {
                                v185 &= v178 - 1;
                              }

                              if (v185 != v182)
                              {
                                break;
                              }
                            }
                          }
                        }
                      }

                      v176 += 144;
                    }

                    while (v176 != v177);
                  }

                  std::__tree<std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::__map_value_compare<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::less<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::allocator<std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>>>::destroy(v313[0]);
                  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(*v326);
                  v170 = __p[0];
                  __p[0] = 0;
                  if (v170)
                  {
                    operator delete(v170);
                  }

                  v38 = a1 + 720;
                }

                std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v318);
                std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v321[0]);
              }

              if (!v309[1])
              {
                goto LABEL_331;
              }

              v171 = vcnt_s8(v309[1]);
              v171.i16[0] = vaddlv_u8(v171);
              if (v171.u32[0] > 1uLL)
              {
                v172 = v299;
                if (v299 >= v309[1])
                {
                  v172 = v299 % v309[1];
                }
              }

              else
              {
                v172 = v299 & (v309[1] - 1);
              }

              v173 = *(v309[0] + v172);
              if (!v173 || (v174 = *v173) == 0)
              {
LABEL_331:
                operator new();
              }

              while (1)
              {
                v175 = v174[1];
                if (v175 == v299)
                {
                  if (v174[2] == v301)
                  {
                    std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>>>::~__hash_table(&v304);
                    break;
                  }
                }

                else
                {
                  if (v171.u32[0] > 1uLL)
                  {
                    if (v175 >= v309[1])
                    {
                      v175 %= v309[1];
                    }
                  }

                  else
                  {
                    v175 &= v309[1] - 1;
                  }

                  if (v175 != v172)
                  {
                    goto LABEL_331;
                  }
                }

                v174 = *v174;
                if (!v174)
                {
                  goto LABEL_331;
                }
              }
            }
          }

LABEL_359:
          v42 = v297;
          v43 = *(v298 + 8);
        }

        v37 = v293 + 32;
      }

      while (v293 + 32 != v292);
    }

    if (v289)
    {
      v189 = *(v290 + 13);
      if (v189)
      {
        do
        {
          v190 = *v287;
          v191 = v287[1];
          while (v190 != v191)
          {
            md::SceneStateManager::setHasTileSelectionDependency(v289, *v190, 0x4Bu, (v189 + 2));
            md::SceneStateManager::setHasTileSelectionDependency(v289, *v190++, 0x4Du, (v189 + 2));
          }

          v192 = v287[3];
          v193 = v287[4];
          while (v192 != v193)
          {
            md::SceneStateManager::setHasTileSelectionDependency(v289, *v192, 0x4Bu, (v189 + 2));
            md::SceneStateManager::setHasTileSelectionDependency(v289, *v192++, 0x4Du, (v189 + 2));
          }

          v189 = *v189;
        }

        while (v189);
        v194 = *(v290 + 13);
        if (v194)
        {
          while (1)
          {
            v195 = md::FlyoverMetaData::tileType(v290, (v194 + 2), 0);
            v196 = *v194;
            if (v195 >= 0x100u)
            {
              break;
            }

LABEL_399:
            v194 = v196;
            if (!v196)
            {
              goto LABEL_400;
            }
          }

          v197 = *(v290 + 96);
          v198 = v194[1];
          v199 = vcnt_s8(v197);
          v199.i16[0] = vaddlv_u8(v199);
          if (v199.u32[0] > 1uLL)
          {
            if (v198 >= *&v197)
            {
              v198 %= *&v197;
            }
          }

          else
          {
            v198 &= *&v197 - 1;
          }

          v200 = *(v290 + 11);
          v201 = *(v200 + 8 * v198);
          do
          {
            v202 = v201;
            v201 = *v201;
          }

          while (v201 != v194);
          if (v202 == (v290 + 104))
          {
            goto LABEL_552;
          }

          v203 = v202[1];
          if (v199.u32[0] > 1uLL)
          {
            if (v203 >= *&v197)
            {
              v203 %= *&v197;
            }
          }

          else
          {
            v203 &= *&v197 - 1;
          }

          v204 = *v194;
          if (v203 != v198)
          {
LABEL_552:
            if (v196)
            {
              v205 = v196[1];
              if (v199.u32[0] > 1uLL)
              {
                if (v205 >= *&v197)
                {
                  v205 %= *&v197;
                }
              }

              else
              {
                v205 &= *&v197 - 1;
              }

              v204 = *v194;
              if (v205 == v198)
              {
                goto LABEL_392;
              }
            }

            *(v200 + 8 * v198) = 0;
            v204 = *v194;
          }

          if (!v204)
          {
LABEL_398:
            *v202 = v204;
            *v194 = 0;
            --*(v290 + 14);
            operator delete(v194);
            goto LABEL_399;
          }

LABEL_392:
          v206 = v204[1];
          if (v199.u32[0] > 1uLL)
          {
            if (v206 >= *&v197)
            {
              v206 %= *&v197;
            }
          }

          else
          {
            v206 &= *&v197 - 1;
          }

          if (v206 != v198)
          {
            *(*(v290 + 11) + 8 * v206) = v202;
            v204 = *v194;
          }

          goto LABEL_398;
        }
      }
    }

LABEL_400:
    v207 = (a1 + 720);
    v208 = *(a1 + 720);
    v209 = v307;
    *&v307 = *(a1 + 712);
    *(&v307 + 1) = v208;
    *(a1 + 712) = v209;
    v210 = v308;
    v308 = *(a1 + 728);
    v211 = v308;
    *(a1 + 728) = v210;
    v212 = (v208 + 16);
    if (!v211)
    {
      v212 = &v307;
    }

    *v212 = &v307 + 8;
    if (v210)
    {
      v213 = (*(a1 + 720) + 16);
    }

    else
    {
      v213 = (a1 + 712);
    }

    *v213 = v207;
    std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>>>::clear(a1 + 344);
    std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>>>::clear(a1 + 384);
    std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::clear(a1 + 184);
    *v326 = 0;
    __p[1] = 0;
    __p[0] = &__p[1];
    v314[0] = a1;
    v314[1] = __p;
    if (*(a1 + 848) == 1)
    {
      v214 = *(a1 + 776);
      if (v214 != (a1 + 784))
      {
        do
        {
          md::FlyoverCompleteTileDataLogic::buildOctileInstances(void)::$_0::operator()(v314, (v214 + 8), 1, v214[82]);
          v215 = *(v214 + 38);
          if (v215 != v214 + 78)
          {
            do
            {
              md::FlyoverCompleteTileDataLogic::buildOctileInstances(void)::$_0::operator()(v314, (v215 + 8), 1, v214[83]);
              v216 = *(v215 + 1);
              if (v216)
              {
                do
                {
                  v217 = v216;
                  v216 = *v216;
                }

                while (v216);
              }

              else
              {
                do
                {
                  v217 = *(v215 + 2);
                  _ZF = *v217 == v215;
                  v215 = v217;
                }

                while (!_ZF);
              }

              v215 = v217;
            }

            while (v217 != v214 + 78);
          }

          v218 = *(v214 + 1);
          if (v218)
          {
            do
            {
              v219 = v218;
              v218 = *v218;
            }

            while (v218);
          }

          else
          {
            do
            {
              v219 = *(v214 + 2);
              _ZF = *v219 == v214;
              v214 = v219;
            }

            while (!_ZF);
          }

          v214 = v219;
        }

        while (v219 != (a1 + 784));
      }
    }

    v220 = *(a1 + 712);
    if (v220 != v207)
    {
      do
      {
        md::FlyoverCompleteTileDataLogic::buildOctileInstances(void)::$_0::operator()(v314, (v220 + 4), 0, 1.0);
        v221 = v220[1];
        if (v221)
        {
          do
          {
            v222 = v221;
            v221 = *v221;
          }

          while (v221);
        }

        else
        {
          do
          {
            v222 = v220[2];
            _ZF = *v222 == v220;
            v220 = v222;
          }

          while (!_ZF);
        }

        v220 = v222;
      }

      while (v222 != v207);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(__p[1]);
    *v314 = 0u;
    v315 = 0u;
    LODWORD(v316) = 1065353216;
    v223 = *(a1 + 200);
    if (v223)
    {
LABEL_428:
      v224 = *(v223 + 9);
      v225 = *(v223 + 10);
      if (v225 != v224)
      {
        v226 = 0x2E8BA2E8BA2E8BA3 * ((v225 - v224) >> 4);
        if (!(v226 >> 61))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v226);
        }

LABEL_549:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v227 = 0uLL;
      while (v224 != v225)
      {
        v302 = v227;
        v228 = md::FlyoverOctileHash::operator()(v224);
        v230 = *(v224 + 164);
        v231 = LODWORD(v230) - 0x61C8864680B583EBLL;
        if (v230 == 0.0)
        {
          v231 = 0x9E3779B97F4A7C15;
        }

        v229 = ((v228 << 6) - 0x61C8864680B583EBLL + (v228 >> 2) + *(v224 + 160)) ^ v228;
        v232 = ((v229 >> 2) + (v229 << 6) + v231) ^ v229;
        v233 = (*(v224 + 168) - 0x61C8864680B583EBLL + (v232 << 6) + (v232 >> 2)) ^ v232;
        v234 = (*(&v302 + 1) - v302) >> 3;
        v235 = v234 + 1;
        if ((v234 + 1) >> 61)
        {
          goto LABEL_549;
        }

        if (-v302 >> 2 > v235)
        {
          v235 = -v302 >> 2;
        }

        if (-v302 >= 0x7FFFFFFFFFFFFFF8)
        {
          v236 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v236 = v235;
        }

        if (v236)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v236);
        }

        v237 = (8 * v234);
        *v237 = v233;
        v238 = v237 + 1;
        memcpy(0, v302, *(&v302 + 1) - v302);
        if (v302)
        {
          operator delete(v302);
        }

        *&v227 = 0;
        *(&v227 + 1) = v238;
        v224 += 176;
      }

      v303 = v227;
      v239 = v227;
      std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
      v240 = md::FlyoverOctileHash::operator()((v223 + 16));
      v241 = *(a1 + 232);
      if (!*&v241)
      {
        goto LABEL_463;
      }

      v242 = ((v240 << 6) - 0x61C8864680B583EBLL + (v240 >> 2) + v223[64]) ^ v240;
      v243 = vcnt_s8(v241);
      v243.i16[0] = vaddlv_u8(v243);
      v244 = v243.u32[0];
      if (v243.u32[0] > 1uLL)
      {
        v245 = ((v240 << 6) - 0x61C8864680B583EBLL + (v240 >> 2) + v223[64]) ^ v240;
        if (v242 >= *&v241)
        {
          v245 = v242 % *&v241;
        }
      }

      else
      {
        v245 = v242 & (*&v241 - 1);
      }

      v246 = *(*(a1 + 224) + 8 * v245);
      if (!v246 || (v247 = *v246) == 0)
      {
LABEL_463:
        std::__hash_table<md::FlyoverOctileWorld,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,std::allocator<md::FlyoverOctileWorld>>::__emplace_unique_key_args<md::FlyoverOctileWorld,md::FlyoverOctileWorld const&>(v294, (v223 + 16), (v223 + 16));
        goto LABEL_464;
      }

      while (1)
      {
        v248 = *(v247 + 1);
        if (v248 == v242)
        {
          if (md::FlyoverOctile::operator==(v247 + 16, v223 + 16) && v247[64] == v223[64])
          {
            v260 = *(v247 + 9);
            v259 = *(v247 + 10);
            if (v259 - v260 != *(&v303 + 1) - v239)
            {
              goto LABEL_497;
            }

            v261 = v239 == *(&v303 + 1);
            if (v260 == v259 || v239 == *(&v303 + 1))
            {
LABEL_496:
              if (!v261)
              {
                goto LABEL_497;
              }
            }

            else
            {
              v262 = v260 + 8;
              while (1)
              {
                v263 = *(v262 - 8);
                if (*v239 < v263)
                {
                  break;
                }

                v239 += v263 >= *v239;
                v261 = v239 == *(&v303 + 1);
                v264 = v239 == *(&v303 + 1) || v262 == v259;
                v262 += 8;
                if (v264)
                {
                  goto LABEL_496;
                }
              }

LABEL_497:
              std::__hash_table<md::FlyoverOctileWorld,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,std::allocator<md::FlyoverOctileWorld>>::__emplace_unique_key_args<md::FlyoverOctileWorld,md::FlyoverOctileWorld const&>(v294, (v223 + 16), (v223 + 16));
            }

            v265 = *(a1 + 232);
            v266 = *(v247 + 1);
            v267 = vcnt_s8(v265);
            v267.i16[0] = vaddlv_u8(v267);
            if (v267.u32[0] > 1uLL)
            {
              if (v266 >= *&v265)
              {
                v266 %= *&v265;
              }
            }

            else
            {
              v266 &= *&v265 - 1;
            }

            v268 = *(a1 + 224);
            v269 = *(v268 + 8 * v266);
            do
            {
              v270 = v269;
              v269 = *v269;
            }

            while (v269 != v247);
            if (v270 == (a1 + 240))
            {
              goto LABEL_515;
            }

            v271 = *(v270 + 1);
            if (v267.u32[0] > 1uLL)
            {
              if (v271 >= *&v265)
              {
                v271 %= *&v265;
              }
            }

            else
            {
              v271 &= *&v265 - 1;
            }

            if (v271 != v266)
            {
LABEL_515:
              if (!*v247)
              {
                goto LABEL_516;
              }

              v272 = *(*v247 + 8);
              if (v267.u32[0] > 1uLL)
              {
                if (v272 >= *&v265)
                {
                  v272 %= *&v265;
                }
              }

              else
              {
                v272 &= *&v265 - 1;
              }

              if (v272 != v266)
              {
LABEL_516:
                *(v268 + 8 * v266) = 0;
              }
            }

            v273 = *v247;
            if (*v247)
            {
              v274 = *(v273 + 8);
              if (v267.u32[0] > 1uLL)
              {
                if (v274 >= *&v265)
                {
                  v274 %= *&v265;
                }
              }

              else
              {
                v274 &= *&v265 - 1;
              }

              if (v274 != v266)
              {
                *(*(a1 + 224) + 8 * v274) = v270;
                v273 = *v247;
              }
            }

            *v270 = v273;
            *v247 = 0;
            --*(a1 + 248);
            std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<unsigned long>>,void *>>>::operator()[abi:nn200100](1, v247);
LABEL_464:
            v249 = md::FlyoverOctileHash::operator()((v223 + 16));
            v250 = (v249 << 6) - 0x61C8864680B583EBLL + (v249 >> 2) + v223[64];
            v251 = v250 ^ v249;
            v252 = v314[1];
            if (!v314[1])
            {
              goto LABEL_481;
            }

            v253 = vcnt_s8(v314[1]);
            v253.i16[0] = vaddlv_u8(v253);
            v254 = v253.u32[0];
            if (v253.u32[0] > 1uLL)
            {
              v255 = v250 ^ v249;
              if (v251 >= v314[1])
              {
                v255 = v251 % v314[1];
              }
            }

            else
            {
              v255 = v251 & (v314[1] - 1);
            }

            v256 = *(v314[0] + v255);
            if (!v256 || (v257 = *v256) == 0)
            {
LABEL_481:
              operator new();
            }

            while (2)
            {
              v258 = *(v257 + 1);
              if (v258 != v251)
              {
                if (v254 > 1)
                {
                  if (v258 >= v252)
                  {
                    v258 %= v252;
                  }
                }

                else
                {
                  v258 &= v252 - 1;
                }

                if (v258 != v255)
                {
                  goto LABEL_481;
                }

LABEL_480:
                v257 = *v257;
                if (!v257)
                {
                  goto LABEL_481;
                }

                continue;
              }

              break;
            }

            if (!md::FlyoverOctile::operator==(v257 + 16, v223 + 16) || v257[64] != v223[64])
            {
              goto LABEL_480;
            }

            if (v303)
            {
              operator delete(v303);
            }

            v223 = *v223;
            if (!v223)
            {
              break;
            }

            goto LABEL_428;
          }
        }

        else
        {
          if (v244 > 1)
          {
            if (v248 >= *&v241)
            {
              v248 %= *&v241;
            }
          }

          else
          {
            v248 &= *&v241 - 1;
          }

          if (v248 != v245)
          {
            goto LABEL_463;
          }
        }

        v247 = *v247;
        if (!v247)
        {
          goto LABEL_463;
        }
      }
    }

    for (jj = *(a1 + 240); jj; jj = *jj)
    {
      *(__p + 4) = *(jj + 20);
      LOWORD(__p[0]) = *(jj + 8);
      *v326 = jj[4];
      v326[8] = *(jj + 40);
      *&v326[16] = *(jj + 3);
      v327 = *(jj + 64);
      std::__hash_table<md::FlyoverOctileWorld,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,std::allocator<md::FlyoverOctileWorld>>::__emplace_unique_key_args<md::FlyoverOctileWorld,md::FlyoverOctileWorld const&>(v294, __p, __p);
    }

    if (*(a1 + 248))
    {
      std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::__deallocate_node(*(a1 + 240));
      *(a1 + 240) = 0;
      v276 = *(a1 + 232);
      if (v276)
      {
        for (kk = 0; kk != v276; ++kk)
        {
          *(*(a1 + 224) + 8 * kk) = 0;
        }
      }

      *(a1 + 248) = 0;
    }

    v278 = v314[0];
    v314[0] = 0;
    v279 = *(a1 + 224);
    *(a1 + 224) = v278;
    if (v279)
    {
      operator delete(v279);
    }

    v280 = a1 + 264;
    v282 = v314[1];
    v281 = v315;
    v314[1] = 0;
    v283 = *(&v315 + 1);
    *(a1 + 240) = v315;
    *(a1 + 248) = v283;
    *(a1 + 256) = v316;
    *(a1 + 232) = v282;
    if (v283)
    {
      v284 = v281[1];
      if ((v282 & (v282 - 1)) != 0)
      {
        if (v284 >= v282)
        {
          v284 %= v282;
        }
      }

      else
      {
        v284 &= v282 - 1;
      }

      v281 = 0;
      *(*(a1 + 224) + 8 * v284) = a1 + 240;
      v315 = 0uLL;
    }

    std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::__deallocate_node(v281);
    v285 = v314[0];
    v314[0] = 0;
    if (v285)
    {
      operator delete(v285);
    }

    *(a1 + 328) = v280;
    std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::clear(a1 + 632);
    *a4 = a1 + 184;
    a4[1] = v280;
    a4[2] = a1 + 344;
    a4[3] = a1 + 384;
    a4[4] = v294;
    if (*(a1 + 792) || *(a1 + 800) == 1)
    {
      *(a1 + 800) = 0;
      v286 = **(a1 + 512);
      if (v286)
      {
        LOBYTE(__p[0]) = 8;
        md::MapEngine::setNeedsTick(v286, __p);
      }
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(&v307 + 1));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v309);
    if (v291)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v291);
    }
  }
}

void sub_1B31B91C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t md::FlyoverCompleteTileDataLogic::addFallbackData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v172 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 168);
    ;
  }

  __p = 0u;
  v137 = 0u;
  v138 = 1065353216;
  gdc::LayerDataCollector::missingData(&v132, a2, *(a1 + 424));
  v170 = v132;
  v171 = v133;
  v141 = v134;
  v142 = v135;
  v114 = a1;
  while (1)
  {
    *v139 = v141;
    *&v139[2] = v142;
    if (!gdc::MissingDataIterator::operator!=(&v170, v139))
    {
      break;
    }

    v6 = *(&v170 + 1);
    md::FlyoverCommon::decodeFlyoverKey(v139, *(&v170 + 1));
    if (*v6 == 1)
    {
      gdc::Camera::cameraFrame(v6);
      v7 = md::FlyoverOctileHash::operator()(v139);
      v8 = v7;
      v9 = *(&__p + 1);
      if (*(&__p + 1))
      {
        v10 = vcnt_s8(*(&__p + 8));
        v10.i16[0] = vaddlv_u8(v10);
        v11 = v10.u32[0];
        if (v10.u32[0] > 1uLL)
        {
          v12 = v7;
          if (v7 >= *(&__p + 1))
          {
            v12 = v7 % *(&__p + 1);
          }
        }

        else
        {
          v12 = (*(&__p + 1) - 1) & v7;
        }

        v13 = *(__p + 8 * v12);
        if (v13)
        {
          for (j = *v13; j; j = *j)
          {
            v15 = *(j + 1);
            if (v15 == v8)
            {
              if (md::FlyoverOctile::operator==(j + 16, v139))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v11 > 1)
              {
                if (v15 >= v9)
                {
                  v15 %= v9;
                }
              }

              else
              {
                v15 &= v9 - 1;
              }

              if (v15 != v12)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

LABEL_25:
    gdc::MissingDataIterator::operator++(&v170);
  }

  *v122 = v132;
  *v123 = v133;
  v159 = v134;
  v129 = 0;
  v130 = 0;
  v160 = v135;
  v109 = (a3 + 16);
  v131 = 0;
  while (1)
  {
    *v139 = v159;
    *&v139[2] = v160;
    if (!gdc::MissingDataIterator::operator!=(v122, v139))
    {
      break;
    }

    v16 = v122[1];
    md::FlyoverCommon::decodeFlyoverKey(&v144, v122[1]);
    v17 = md::FlyoverOctileHash::operator()(&v144);
    v18 = *(&__p + 1);
    if (*(&__p + 1))
    {
      v19 = v17;
      v20 = vcnt_s8(*(&__p + 8));
      v20.i16[0] = vaddlv_u8(v20);
      v21 = v20.u32[0];
      if (v20.u32[0] > 1uLL)
      {
        v22 = v17;
        if (v17 >= *(&__p + 1))
        {
          v22 = v17 % *(&__p + 1);
        }
      }

      else
      {
        v22 = (*(&__p + 1) - 1) & v17;
      }

      v24 = *(__p + 8 * v22);
      if (v24)
      {
        for (k = *v24; k; k = *k)
        {
          v25 = k[1];
          if (v25 == v19)
          {
            if (md::FlyoverOctile::operator==(k + 16, &v144))
            {
              break;
            }
          }

          else
          {
            if (v21 > 1)
            {
              if (v25 >= v18)
              {
                v25 %= v18;
              }
            }

            else
            {
              v25 &= v18 - 1;
            }

            if (v25 != v22)
            {
              goto LABEL_46;
            }
          }
        }
      }

      else
      {
LABEL_46:
        k = 0;
      }
    }

    else
    {
      k = 0;
    }

    if (!*(&v137 + 1) || k && (v26 = gdc::Camera::cameraFrame(v16), gdc::LayerDataKey::operator==(k + 32, v26)) && !*v16)
    {
      v168 = *&v148[4];
      v169 = v149;
      operator new();
    }

    gdc::MissingDataIterator::operator++(v122);
  }

  v126 = 0u;
  v127 = 0u;
  v128 = 1065353216;
  v27 = *v109;
  if (*v109)
  {
    v116 = (v114 + 264);
    do
    {
      v28 = *(v27 + 248);
      if (v28 == 1)
      {
        geo::QuadTile::computeHash(v27 + 224);
        LOBYTE(v28) = 0;
        *(v27 + 248) = 0;
      }

      v29 = v27[30];
      v30 = *(&v126 + 1);
      if (!*(&v126 + 1))
      {
        goto LABEL_84;
      }

      v31 = vcnt_s8(*(&v126 + 8));
      v31.i16[0] = vaddlv_u8(v31);
      v32 = v31.u32[0];
      if (v31.u32[0] > 1uLL)
      {
        v33 = v27[30];
        if (v29 >= *(&v126 + 1))
        {
          v33 = v29 % *(&v126 + 1);
        }
      }

      else
      {
        v33 = (*(&v126 + 1) - 1) & v29;
      }

      v34 = *(v126 + 8 * v33);
      if (!v34 || (v35 = *v34) == 0)
      {
LABEL_84:
        memset(v139, 0, sizeof(v139));
        v140 = 1065353216;
        goto LABEL_85;
      }

      v36 = v27[30];
      do
      {
        v37 = v35[1];
        if (*&v37 == v29)
        {
          if (v35[5].i8[0] == 1)
          {
            geo::QuadTile::computeHash(&v35[2]);
            v35[5].i8[0] = 0;
            v38 = v35[4];
            LOBYTE(v28) = 0;
            if (v27[31])
            {
              v39 = (*(v27 + 225) - 0x61C8864680B583EBLL + ((*(v27 + 224) - 0x61C8864680B583EBLL) << 6) + ((*(v27 + 224) - 0x61C8864680B583EBLL) >> 2)) ^ (*(v27 + 224) - 0x61C8864680B583EBLL);
              v40 = (*(v27 + 57) - 0x61C8864680B583EBLL + (v39 << 6) + (v39 >> 2)) ^ v39;
              v36 = (*(v27 + 58) - 0x61C8864680B583EBLL + (v40 << 6) + (v40 >> 2)) ^ v40;
              v27[30] = v36;
              *(v27 + 248) = 0;
            }

            else
            {
              v36 = v27[30];
            }
          }

          else
          {
            v38 = v35[4];
          }

          if (*&v38 == v36 && v35[2].u8[0] == *(v27 + 224) && v35[2].u8[1] == *(v27 + 225) && v35[2].i32[1] == *(v27 + 57) && v35[3].i32[0] == *(v27 + 58))
          {
            goto LABEL_117;
          }

          goto LABEL_79;
        }

        if (v32 > 1)
        {
          if (*&v37 >= v30)
          {
            *&v37 %= v30;
          }
        }

        else
        {
          *&v37 &= v30 - 1;
        }

        if (*&v37 != v33)
        {
          break;
        }

LABEL_79:
        v35 = *v35;
      }

      while (v35);
      memset(v139, 0, sizeof(v139));
      v29 = v36;
      v140 = 1065353216;
      if (v28)
      {
        geo::QuadTile::computeHash(v27 + 224);
        *(v27 + 248) = 0;
        v29 = v27[30];
      }

LABEL_85:
      v41 = *(&v126 + 1);
      if (!*(&v126 + 1))
      {
        goto LABEL_112;
      }

      v42 = vcnt_s8(*(&v126 + 8));
      v42.i16[0] = vaddlv_u8(v42);
      v43 = v42.u32[0];
      if (v42.u32[0] > 1uLL)
      {
        v44 = v29;
        if (v29 >= *(&v126 + 1))
        {
          v44 = v29 % *(&v126 + 1);
        }
      }

      else
      {
        v44 = (*(&v126 + 1) - 1) & v29;
      }

      v45 = *(v126 + 8 * v44);
      if (!v45 || (v35 = *v45) == 0)
      {
LABEL_112:
        operator new();
      }

      v46 = v29;
      while (2)
      {
        v47 = v35[1];
        if (*&v47 != v29)
        {
          if (v43 > 1)
          {
            if (*&v47 >= v41)
            {
              *&v47 %= v41;
            }
          }

          else
          {
            *&v47 &= v41 - 1;
          }

          if (*&v47 != v44)
          {
            goto LABEL_112;
          }

LABEL_107:
          v35 = *v35;
          if (!v35)
          {
            goto LABEL_112;
          }

          continue;
        }

        break;
      }

      if (v35[5].i8[0] == 1)
      {
        geo::QuadTile::computeHash(&v35[2]);
        v35[5].i8[0] = 0;
        v48 = v35[4];
        if (v27[31])
        {
          v49 = (*(v27 + 225) - 0x61C8864680B583EBLL + ((*(v27 + 224) - 0x61C8864680B583EBLL) << 6) + ((*(v27 + 224) - 0x61C8864680B583EBLL) >> 2)) ^ (*(v27 + 224) - 0x61C8864680B583EBLL);
          v50 = (*(v27 + 57) - 0x61C8864680B583EBLL + (v49 << 6) + (v49 >> 2)) ^ v49;
          v46 = (*(v27 + 58) - 0x61C8864680B583EBLL + (v50 << 6) + (v50 >> 2)) ^ v50;
          v27[30] = v46;
          *(v27 + 248) = 0;
        }

        else
        {
          v46 = v27[30];
        }
      }

      else
      {
        v48 = v35[4];
      }

      if (*&v48 != v46 || v35[2].u8[0] != *(v27 + 224) || v35[2].u8[1] != *(v27 + 225) || v35[2].i32[1] != *(v27 + 57) || v35[3].i32[0] != *(v27 + 58))
      {
        goto LABEL_107;
      }

      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(0);
      if (v139[0])
      {
        operator delete(v139[0]);
      }

LABEL_117:
      v51 = *grl::IconMetricsRenderResult::getFillRect(v27[32]);
      v52 = gdc::Camera::cameraFrame((v27 + 14));
      gdc::LayerDataKey::LayerDataKey(v119, v52);
      gdc::LayerDataRequestKey::LayerDataRequestKey(v122, v51, v119);
      if (v120 != v121)
      {
        free(v120);
      }

      v53 = v35[7];
      if (v53)
      {
        v54 = v125;
        v55 = vcnt_s8(v53);
        v55.i16[0] = vaddlv_u8(v55);
        v56 = v55.u32[0];
        if (v55.u32[0] > 1uLL)
        {
          v57 = v125;
          if (v125 >= *&v53)
          {
            v57 = v125 % *&v53;
          }
        }

        else
        {
          v57 = (*&v53 - 1) & v125;
        }

        v58 = *(*&v35[6] + 8 * v57);
        if (v58)
        {
          for (m = *v58; m; m = *m)
          {
            v60 = *(m + 1);
            if (v54 == v60)
            {
              if (gdc::LayerDataRequestKey::operator==(m + 16, v122))
              {
                goto LABEL_136;
              }
            }

            else
            {
              if (v56 > 1)
              {
                if (v60 >= *&v53)
                {
                  v60 %= *&v53;
                }
              }

              else
              {
                v60 &= *&v53 - 1;
              }

              if (v60 != v57)
              {
                break;
              }
            }
          }
        }
      }

      gdc::LayerDataCollector::addFallbackData(a2, v122, v27 + 112, v27 + 32);
      std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>(&v35[6], v122, v122);
LABEL_136:
      v62 = v27[32];
      v61 = v27[33];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v63 = *(v27 + 17);
      BYTE1(v159) = *(v27 + 17);
      *(&v159 + 4) = *(v27 + 20);
      v64 = *(v27 + 16);
      LOBYTE(v159) = *(v27 + 16);
      *&v160 = v27[4];
      BYTE8(v160) = *(v27 + 40);
      v161 = *(v27 + 3);
      v65 = *(v27 + 65);
      v163 = *(v27 + 65);
      v164 = *(v27 + 68);
      v66 = *(v27 + 64);
      v162 = *(v27 + 64);
      v165 = v27[10];
      v67 = *(v27 + 96);
      v166 = *(v27 + 88);
      v167 = *(v27 + 6);
      if (*(v27 + 48) == 2 && v64 == 255 && v67 && v66 == 255 && v63 < v65)
      {
        v118 = v61;
        (*(**(v114 + 504) + 16))(v157);
        if ((v158 & 1) == 0)
        {
          goto LABEL_154;
        }

        v68 = v157[1];
        (*(**(v114 + 504) + 16))(v139);
        if (v158 == v140)
        {
          if (!v158)
          {
            goto LABEL_154;
          }

          *v157 = *v139;
          *&v157[9] = *(&v139[1] + 1);
          v69 = BYTE1(v139[0]);
          v70 = *&v157[4];
          v71 = LOBYTE(v139[0]);
        }

        else
        {
          if (v158)
          {
            goto LABEL_154;
          }

          v69 = BYTE1(v139[0]);
          v70 = *(v139 + 4);
          *&v157[4] = *(v139 + 4);
          v71 = LOBYTE(v139[0]);
          *v157 = v139[0];
          *&v157[16] = v139[2];
          v157[24] = v139[3];
          v158 = 1;
        }

        v72 = geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::find(v116, &v159);
        if (v116 == v72)
        {
          LODWORD(v73) = 0;
        }

        else
        {
          v73 = v72[16];
          if (v73)
          {
            LODWORD(v73) = *(v72[14] + 64);
          }
        }

        v115 = v73;
        if (v73 != v69)
        {
          v74 = *(v114 + 168);
          v75 = *(v74 + 80);
          v76 = *(v74 + 88);
          while (1)
          {
            if (v75 == v76)
            {
              goto LABEL_154;
            }

            if (*v75 == 77)
            {
              break;
            }

            v75 += 16;
          }

          if (v75 != v76)
          {
            v77 = *(v75 + 8);
            if (v77)
            {
              v78 = v77[1];
              if (v78 != v77)
              {
                v112 = v71;
                v107 = 0;
                v110 = 0;
                v111 = 0;
                v79 = 0;
                v113 = v69;
                while (1)
                {
                  v81 = v78[16];
                  v80 = v78[17];
                  if (v80)
                  {
                    atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v82 = md::FlyoverDsmTileData::rasterLevel(v81);
                  v83 = v82 <= v79 || v82 > v69;
                  if (v83 || !(*(*v81 + 72))(v81))
                  {
                    goto LABEL_190;
                  }

                  v84 = v79;
                  v85 = (*(*v81 + 72))(v81);
                  v86 = v85;
                  if (v85 && *(v85 + 56) == v112)
                  {
                    v87 = *(v85 + 57);
                    v88 = *(v85 + 60);
                    if (v113 <= v87)
                    {
                      if (v113 == v87)
                      {
                        v90 = vceq_s32(v88, v70);
                        if (v90.i8[0] & 1) != 0 && (v90.i8[4])
                        {
LABEL_184:
                          v108 = md::FlyoverDsmTileData::rasterLevel(v81);
                          if (v80)
                          {
                            atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
                          }

                          v69 = v113;
                          if (v111)
                          {
                            std::__shared_weak_count::__release_shared[abi:nn200100](v111);
                          }

                          v110 = v86;
                          v111 = v80;
                          v107 = v81;
                          v79 = v108;
                          goto LABEL_190;
                        }
                      }
                    }

                    else
                    {
                      v89 = vceq_s32(v88, vshl_s32(v70, vneg_s32(vdup_n_s32((v113 - v87)))));
                      if (v89.i32[0] & v89.i32[1])
                      {
                        goto LABEL_184;
                      }
                    }
                  }

                  v79 = v84;
                  v69 = v113;
LABEL_190:
                  if (v80)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v80);
                  }

                  v78 = v78[1];
                  if (v78 == v77)
                  {
                    if (v111)
                    {
                      atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
                      std::__shared_weak_count::__release_shared[abi:nn200100](v111);
                    }

                    if (v110 && v115 < v79 && v68 <= v79)
                    {
                      v91 = (*(*v62 + 48))(v62);
                      gdc::Registry::storage<md::components::TexturedMeshInstance>(v91);
                      v144 = v107;
                      v145 = v111;
                      if (v111)
                      {
                        atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      v146 = v110;
                      *v148 = *(v27 + 68);
                      v147 = *(v27 + 32);
                      v149 = v27[10];
                      v150 = *(v27 + 88);
                      v151 = *(v27 + 6);
                      v153 = *(v27 + 20);
                      v152 = *(v27 + 8);
                      v154 = v27[4];
                      v155 = *(v27 + 40);
                      v156 = *(v27 + 3);
                      v92 = std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::find<md::FlyoverCompleteTileDataLogic::DrapingTask>((v114 + 632), &v144);
                      if (v92)
                      {
                        v93 = v92[18];
                        if (v93)
                        {
                          atomic_fetch_add_explicit((v93 + 8), 1uLL, memory_order_relaxed);
                        }

                        v94 = v92[20];
                        if (v94)
                        {
                          atomic_fetch_add_explicit((v94 + 8), 1uLL, memory_order_relaxed);
                        }

                        v139[1] = 0;
                        v139[0] = 0;
                        md::MeshRenderableBuilder::MeshRenderableBuilder(&v143, 0, 0, v139);
                      }

                      v95 = md::FlyoverCompleteTileDataLogic::DrapingTaskHash::operator()(&v144);
                      v96 = *(v114 + 600);
                      if (v96)
                      {
                        v97 = v95;
                        v98 = vcnt_s8(v96);
                        v98.i16[0] = vaddlv_u8(v98);
                        v99 = v98.u32[0];
                        if (v98.u32[0] > 1uLL)
                        {
                          v100 = v95;
                          if (v95 >= *&v96)
                          {
                            v100 = v95 % *&v96;
                          }
                        }

                        else
                        {
                          v100 = (*&v96 - 1) & v95;
                        }

                        v101 = *(*(v114 + 592) + 8 * v100);
                        if (v101)
                        {
                          v102 = *v101;
                          if (*v101)
                          {
                            do
                            {
                              v103 = v102[1];
                              if (v103 == v97)
                              {
                                if (md::FlyoverCompleteTileDataLogic::DrapingTask::operator==((v102 + 2), &v144))
                                {
                                  std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::find<md::FlyoverCompleteTileDataLogic::DrapingTask>((v114 + 632), &v144);
                                  goto LABEL_230;
                                }
                              }

                              else
                              {
                                if (v99 > 1)
                                {
                                  if (v103 >= *&v96)
                                  {
                                    v103 %= *&v96;
                                  }
                                }

                                else
                                {
                                  v103 &= *&v96 - 1;
                                }

                                if (v103 != v100)
                                {
                                  break;
                                }
                              }

                              v102 = *v102;
                            }

                            while (v102);
                          }
                        }
                      }

                      if (!std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::find<md::FlyoverCompleteTileDataLogic::DrapingTask>((v114 + 632), &v144))
                      {
                        v104 = v145;
                        if (v145)
                        {
                          atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        if (*(*(v114 + 176) + 128))
                        {
                          if (v104)
                          {
                            atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
                          }

                          *(&v171 + 1) = 0;
                          operator new();
                        }

                        if (v104)
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](v104);
                        }
                      }

LABEL_230:
                      if (v145)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v145);
                      }
                    }

                    if (v111)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v111);
                    }

                    break;
                  }
                }
              }
            }
          }
        }

LABEL_154:
        v61 = v118;
      }

      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
      }

      if (v123[0] != v124)
      {
        free(v123[0]);
      }

      v27 = *v27;
    }

    while (v27);
  }

  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>>::~__hash_table(&v126);
  if (v129)
  {
    operator delete(v129);
  }

  return std::__hash_table<std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>,std::__unordered_map_hasher<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,true>,std::__unordered_map_equal<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>,std::equal_to<md::FlyoverOctile>,md::FlyoverOctileHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>>>::~__hash_table(&__p);
}

void sub_1B31BC37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,void *>>>>::~unique_ptr[abi:nn200100](&STACK[0x570]);
  if (STACK[0x358])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x358]);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v65);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a24);
  }

  if (STACK[0x680])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x680]);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a29);
  }

  if (a43 != a45)
  {
    free(a43);
  }

  std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>>::~__hash_table(&a55);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>,std::__unordered_map_hasher<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,true>,std::__unordered_map_equal<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>,std::equal_to<md::FlyoverOctile>,md::FlyoverOctileHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>>>::~__hash_table(&a65);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<std::pair<md::FlyoverOctile,md::FlyoverOctile> const,md::FlyoverCompleteTileDataLogic::FallbackInfo>,0>(v2 + 2);
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

void std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[20];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      v4 = v1[18];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v5 = v1[3];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<md::FlyoverOctileWorld,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,std::allocator<md::FlyoverOctileWorld>>::__emplace_unique_key_args<md::FlyoverOctileWorld,md::FlyoverOctileWorld const&>(void *a1, geo::QuadTile *this, uint64_t a3)
{
  v5 = md::FlyoverOctileHash::operator()(this);
  v6 = (v5 << 6) + (v5 >> 2) + *(this + 48) - 0x61C8864680B583EBLL;
  v7 = v6 ^ v5;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_19;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6 ^ v5;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = v7 & (*&v8 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v14 = *(v13 + 1);
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_19;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_19;
    }
  }

  if (!md::FlyoverOctile::operator==(v13 + 16, this) || v13[64] != *(this + 48))
  {
    goto LABEL_18;
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<unsigned long>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[9];
    if (v3)
    {
      __p[10] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *md::FlyoverCompleteTileDataLogic::buildOctileInstances(void)::$_0::operator()(uint64_t *a1, geo::QuadTile *this, int a3, float a4)
{
  v7 = a1;
  v133 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  for (i = *(a1[1] + 8); i; i = *i)
  {
    if (!md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()(this, (i + 4)))
    {
      result = md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()((i + 4), this);
      if (!result)
      {
        return result;
      }

      ++i;
    }
  }

  v11 = *this;
  v76 = (this + 32);
  if (*(this + 32) && v11 == 255 && *(this + 80) && *(this + 48) == 255)
  {
    if (*(this + 1) >= *(this + 49))
    {
      LOBYTE(v92) = 0;
      v100 = 0;
      LOBYTE(v11) = -1;
    }

    else
    {
      v12 = *(v8[21] + 352);
      md::FlyoverCompleteTileDataLogic::getTileBounds(&v106, v8, v12, (this + 48), *(this + 80));
      md::FlyoverCompleteTileDataLogic::getTileBounds(&v102, v8, v12, this, *(this + 80));
      geo::RigidTransform<double,double>::inverse(__p, &v102);
      v13 = &v110;
      geo::RigidTransform<double,double>::toMatrix(&v110, __p);
      geo::RigidTransform<double,double>::toMatrix(&v124, &v106);
      for (j = 0; j != 4; ++j)
      {
        v15 = 0;
        v16 = &v124;
        do
        {
          v17 = 0;
          v18 = 0.0;
          v19 = v13;
          do
          {
            v20 = *v19;
            v19 += 4;
            v18 = v18 + *(v16 + v17) * v20;
            v17 += 8;
          }

          while (v17 != 32);
          *(&v78 + 4 * v15++ + j) = v18;
          v16 += 2;
        }

        while (v15 != 4);
        v13 = (v13 + 8);
      }

      v110 = v107;
      v111 = v108;
      v112 = v109;
      v97 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v98 = xmmword_1B33B0520;
      v99 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      *&v124 = &unk_1F2A61070;
      *(&v124 + 1) = &v97;
      v125 = &v78;
      v126 = &v124;
      gm::Box<double,3>::forEachCorner(&v110, &v124);
      std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](&v124);
      v92 = v102;
      v94 = *v104;
      v93 = v103;
      v95 = *&v104[16];
      v96 = v105;
      v100 = 1;
      LOBYTE(v11) = *this;
    }
  }

  else
  {
    LOBYTE(v92) = 0;
    v100 = 0;
  }

  BYTE1(v124) = *(this + 1);
  *(&v124 + 4) = *(this + 4);
  LOBYTE(v124) = v11;
  v125 = *(this + 2);
  LOBYTE(v126) = *(this + 24);
  v127 = *v76;
  v129 = *(this + 52);
  v128 = *(this + 24);
  v130 = *(this + 8);
  v131 = *(this + 72);
  v132 = *(this + 5);
  v21 = geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::find(v8 + 33, &v124);
  if (v8 + 33 == v21)
  {
    v22 = 0;
  }

  else if (v21[16])
  {
    v22 = v21 + 14;
  }

  else
  {
    v22 = 0;
  }

  LOBYTE(v81) = 0;
  v89 = 0;
  v23 = *(this + 4);
  v78 = *(this + 3);
  v79 = v23;
  v80 = *(this + 5);
  if (v100)
  {
    v82 = v93;
    v81 = v92;
    v83 = v94;
    v84 = v95;
    v85 = v96;
    v86 = v97;
    v87 = v98;
    v88 = v99;
    v89 = 1;
  }

  LOBYTE(v90) = v22 != 0;
  *(&v90 + 1) = a4;
  if (a3)
  {
    if (a4 >= 1.0)
    {
      v24 = 2;
    }

    else
    {
      v24 = 3;
    }
  }

  else
  {
    v24 = *(this + 80) == 2;
  }

  v91 = v24;
  *(&v102 + 4) = *(this + 4);
  LOWORD(v102) = *this;
  v103 = *(this + 2);
  v104[0] = *(this + 24);
  *&v104[8] = *v76;
  LOBYTE(v105) = vcvtmd_s64_f64(*(this + 26) / (1 << *(this + 97)));
  v25 = std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::find<md::FlyoverOctileWorld>(v8 + 23, &v102);
  if (!v25)
  {
    *(&v110 + 4) = *(&v78 + 4);
    LOWORD(v110) = v78;
    *&v111 = v79;
    BYTE8(v111) = BYTE8(v79);
    v112 = v80;
    LOBYTE(v113) = 0;
    v120 = 0;
    if (v89 == 1)
    {
      v113 = v81;
      v114 = v82;
      *v115 = v83;
      *&v115[16] = v84;
      v116 = v85;
      v117 = v86;
      v118 = v87;
      v119 = v88;
      v120 = 1;
    }

    v121 = v90;
    v122 = v91;
    memset(__p, 0, 24);
    std::vector<md::FlyoverOctileInstance>::__init_with_size[abi:nn200100]<md::FlyoverOctileInstance const*,md::FlyoverOctileInstance const*>(__p, &v110, &v123);
  }

  v26 = v25;
  v27 = *(v25 + 10);
  v28 = *(v25 + 11);
  if (v27 >= v28)
  {
    v30 = *(v25 + 9);
    v31 = 0x2E8BA2E8BA2E8BA3 * ((v27 - v30) >> 4);
    v32 = v31 + 1;
    if ((v31 + 1) > 0x1745D1745D1745DLL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v33 = 0x2E8BA2E8BA2E8BA3 * ((v28 - v30) >> 4);
    if (2 * v33 > v32)
    {
      v32 = 2 * v33;
    }

    if (v33 >= 0xBA2E8BA2E8BA2ELL)
    {
      v34 = 0x1745D1745D1745DLL;
    }

    else
    {
      v34 = v32;
    }

    if (v34)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::FlyoverOctileInstance>>(v34);
    }

    v35 = 176 * v31;
    *(v35 + 4) = *(&v78 + 4);
    *v35 = v78;
    *(v35 + 16) = v79;
    *(v35 + 24) = BYTE8(v79);
    *(v35 + 32) = v80;
    *(176 * v31 + 0x30) = 0;
    *(v35 + 152) = 0;
    if (v89 == 1)
    {
      *(176 * v31 + 0x30) = v81;
      *(176 * v31 + 0x40) = v82;
      *(176 * v31 + 0x48) = v83;
      *(176 * v31 + 0x58) = v84;
      *(176 * v31 + 0x60) = v85;
      *(176 * v31 + 0x68) = v86;
      *(176 * v31 + 0x78) = v87;
      *(176 * v31 + 0x88) = v88;
      *(176 * v31 + 0x98) = 1;
    }

    *(176 * v31 + 0xA0) = v90;
    *(176 * v31 + 0xA8) = v91;
    v36 = *(v26 + 9);
    v37 = *(v26 + 10);
    v38 = v35 - (v37 - v36);
    v29 = v35 + 176;
    if (v37 != v36)
    {
      v39 = 0;
      v40 = -16 * ((v37 - v36) >> 4) + 176 * v31;
      do
      {
        v41 = v40 + v39;
        v42 = &v36[v39];
        *(v41 + 24) = 0;
        *(v41 + 4) = *&v36[v39 + 4];
        *v41 = *&v36[v39];
        *(v41 + 16) = *&v36[v39 + 16];
        *(v41 + 24) = v36[v39 + 24];
        *(v41 + 32) = *&v36[v39 + 32];
        *(v40 + v39 + 48) = 0;
        *(v41 + 152) = 0;
        if (v36[v39 + 152] == 1)
        {
          v43 = *(v42 + 3);
          *(v40 + v39 + 64) = *(v42 + 8);
          *(v40 + v39 + 48) = v43;
          v44 = *(v42 + 72);
          *(v41 + 88) = *(v42 + 11);
          *(v41 + 72) = v44;
          *(v41 + 96) = *(v42 + 12);
          v45 = *(v42 + 104);
          v46 = *(v42 + 120);
          *(v41 + 136) = *(v42 + 136);
          *(v41 + 120) = v46;
          *(v41 + 104) = v45;
          *(v41 + 152) = 1;
        }

        v47 = *(v42 + 20);
        *(v41 + 168) = v42[168];
        *(v41 + 160) = v47;
        v39 += 176;
      }

      while (&v36[v39] != v37);
      v36 = *(v26 + 9);
    }

    *(v26 + 9) = v38;
    *(v26 + 10) = v29;
    *(v26 + 11) = 0;
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *(v27 + 4) = *(&v78 + 4);
    *v27 = v78;
    *(v27 + 16) = v79;
    *(v27 + 24) = BYTE8(v79);
    *(v27 + 32) = v80;
    *(v27 + 48) = 0;
    *(v27 + 152) = 0;
    if (v89 == 1)
    {
      *(v27 + 48) = v81;
      *(v27 + 64) = v82;
      *(v27 + 72) = v83;
      *(v27 + 88) = v84;
      *(v27 + 96) = v85;
      *(v27 + 104) = v86;
      *(v27 + 120) = v87;
      *(v27 + 136) = v88;
      *(v27 + 152) = 1;
    }

    *(v27 + 160) = v90;
    *(v27 + 168) = v91;
    v29 = v27 + 176;
    *(v25 + 10) = v27 + 176;
  }

  *(v26 + 10) = v29;
  if (v22)
  {
    v48 = *(this + 97);
    v49 = *(this + 26);
    *(&v110 + 4) = *(this + 4);
    LOWORD(v110) = *this;
    *&v111 = *(this + 2);
    BYTE8(v111) = *(this + 24);
    v112 = *v76;
    *(&v113 + 4) = *(this + 52);
    LOWORD(v113) = *(this + 24);
    v114 = *(this + 8);
    v115[0] = *(this + 72);
    *&v115[8] = *(this + 5);
    v50 = std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>>>::find<std::pair<md::FlyoverOctile,md::FlyoverOctile>>(v8 + 43, &v110);
    if (!v50)
    {
      v73 = v48;
      v74 = v7;
      v51 = md::FlyoverOctileHash::operator()(&v110);
      v52 = (v51 << 6) + (v51 >> 2) + md::FlyoverOctileHash::operator()(&v113) - 0x61C8864680B583EBLL;
      v53 = v52 ^ v51;
      v54 = v8[44];
      if (!*&v54)
      {
        goto LABEL_78;
      }

      v55 = vcnt_s8(v54);
      v55.i16[0] = vaddlv_u8(v55);
      v56 = v55.u32[0];
      if (v55.u32[0] > 1uLL)
      {
        v57 = v52 ^ v51;
        if (v53 >= *&v54)
        {
          v57 = v53 % *&v54;
        }
      }

      else
      {
        v57 = (*&v54 - 1) & v53;
      }

      v58 = *(v8[43] + 8 * v57);
      if (!v58 || (v50 = *v58) == 0)
      {
LABEL_78:
        operator new();
      }

      while (1)
      {
        v59 = *(v50 + 1);
        if (v59 == v53)
        {
          if (md::FlyoverOctile::operator==(v50 + 16, &v110) && md::FlyoverOctile::operator==(v50 + 64, &v113))
          {
            v48 = v73;
            v7 = v74;
            break;
          }
        }

        else
        {
          if (v56 > 1)
          {
            if (v59 >= *&v54)
            {
              v59 %= *&v54;
            }
          }

          else
          {
            v59 &= *&v54 - 1;
          }

          if (v59 != v57)
          {
            goto LABEL_78;
          }
        }

        v50 = *v50;
        if (!v50)
        {
          goto LABEL_78;
        }
      }
    }

    for (k = v22[1]; k != v22; k = k[1])
    {
      v106 = k[2];
      std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>((v50 + 112), &v106);
    }

    *(&v110 + 4) = *(this + 4);
    LOWORD(v110) = *this;
    *&v111 = *(this + 2);
    BYTE8(v111) = *(this + 24);
    v112 = *v76;
    LOBYTE(v113) = vcvtmd_s64_f64(v49 / (1 << v48));
    v61 = std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::find<md::FlyoverOctileWorld>(v8 + 48, &v110);
    if (!v61)
    {
      v62 = md::FlyoverOctileHash::operator()(&v110);
      v63 = (v62 << 6) + (v62 >> 2) + v113 - 0x61C8864680B583EBLL;
      v64 = v63 ^ v62;
      v65 = v8[49];
      v75 = v7;
      if (!*&v65)
      {
        goto LABEL_101;
      }

      v66 = vcnt_s8(v65);
      v66.i16[0] = vaddlv_u8(v66);
      v67 = v66.u32[0];
      if (v66.u32[0] > 1uLL)
      {
        v68 = v63 ^ v62;
        if (v64 >= *&v65)
        {
          v68 = v64 % *&v65;
        }
      }

      else
      {
        v68 = v64 & (*&v65 - 1);
      }

      v69 = *(v8[48] + 8 * v68);
      if (!v69 || (v77 = v68, v70 = v64, (v61 = *v69) == 0))
      {
LABEL_101:
        operator new();
      }

      while (1)
      {
        v71 = *(v61 + 1);
        if (v71 == v70)
        {
          if (md::FlyoverOctile::operator==(v61 + 16, &v110) && v61[64] == v113)
          {
            v7 = v75;
            break;
          }
        }

        else
        {
          if (v67 > 1)
          {
            if (v71 >= *&v65)
            {
              v71 %= *&v65;
            }
          }

          else
          {
            v71 &= *&v65 - 1;
          }

          if (v71 != v77)
          {
            goto LABEL_101;
          }
        }

        v61 = *v61;
        if (!v61)
        {
          goto LABEL_101;
        }
      }
    }

    for (m = v22[1]; m != v22; m = m[1])
    {
      v106 = m[2];
      std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>((v61 + 72), &v106);
      std::vector<md::FlyoverOctile>::push_back[abi:nn200100]((v61 + 96), this + 48);
    }

    std::__hash_table<md::FlyoverOctileWorld,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,std::allocator<md::FlyoverOctileWorld>>::__emplace_unique_key_args<md::FlyoverOctileWorld,md::FlyoverOctileWorld const&>(v8 + 101, &v102, &v102);
  }

  return std::__tree<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>::__emplace_unique_key_args<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo const&>(v7[1], this, this);
}

uint64_t *geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::find(uint64_t *a1, geo::QuadTile *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>>>::find<std::pair<md::FlyoverOctile,md::FlyoverOctile>>(a1 + 3, a2);
  if (v3)
  {
    std::__list_imp<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,std::allocator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry const&>(*(v3 + 14) + 16);
  }

  return a1;
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::find<md::FlyoverOctileWorld>(void *a1, geo::QuadTile *this)
{
  v4 = md::FlyoverOctileHash::operator()(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = ((v4 << 6) + (v4 >> 2) + *(this + 48) - 0x61C8864680B583EBLL) ^ v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = ((v4 << 6) + (v4 >> 2) + *(this + 48) - 0x61C8864680B583EBLL) ^ v4;
    if (v6 >= *&v5)
    {
      v9 = v6 % *&v5;
    }
  }

  else
  {
    v9 = v6 & (*&v5 - 1);
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
      if (md::FlyoverOctile::operator==(i + 16, this) && i[64] == *(this + 48))
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

void std::vector<md::FlyoverOctileInstance>::__init_with_size[abi:nn200100]<md::FlyoverOctileInstance*,md::FlyoverOctileInstance*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1745D1745D1745ELL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::FlyoverOctileInstance>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

uint64_t *std::__tree<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>::__emplace_unique_key_args<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo const&>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  result = std::__tree<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>::__find_equal<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>(a1, &v7, a2);
  if (!*result)
  {
    std::__tree<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>::__construct_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo const&>(v6, a1, a3);
  }

  return result;
}

void *std::__tree<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>::__find_equal<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

BOOL md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 192);
  v3 = *(a2 + 192);
  if (v2 != v3)
  {
    v9 = *(a2 + 248);
    v10 = *(a1 + 248);
    return md::FlyoverOctileMortonIndex::operator<(v2, v10, v3, v9);
  }

  v2 = *(a1 + 128);
  v3 = *(a2 + 128);
  if (v2 != v3)
  {
    v9 = *(a2 + 184);
    v10 = *(a1 + 184);
    return md::FlyoverOctileMortonIndex::operator<(v2, v10, v3, v9);
  }

  v4 = *(a1 + 264);
  v5 = *(a2 + 264);
  v6 = v4 - v5;
  if (v4 < v5)
  {
    v7 = *(a1 + 265);
    if (v7 == BYTE1(*(a2 + 264)))
    {
      return *(a1 + 256) <= *(a2 + 256) >> (2 * (v5 - v4));
    }

    return v7 < BYTE1(*(a2 + 264));
  }

  if (v4 > v5)
  {
    v11 = *(a2 + 265);
    if (v11 != BYTE1(*(a1 + 264)))
    {
      return v11 > BYTE1(*(a1 + 264));
    }

    v12 = *(a1 + 256) >> (2 * v6);
    return v12 < *(a2 + 256);
  }

  v14 = *(a1 + 265);
  v15 = *(a2 + 265);
  if (v14 == v15)
  {
    v12 = *(a1 + 256);
    return v12 < *(a2 + 256);
  }

  return v14 < v15;
}

BOOL md::FlyoverOctileMortonIndex::operator<(unint64_t a1, unsigned __int8 a2, unint64_t a3, unsigned __int8 a4)
{
  v4 = a1 < a3;
  v5 = a1 >> (3 * (a2 - a4));
  v7 = v5 != a1 && v5 < a3;
  if (a2 > a4)
  {
    v4 = v7;
  }

  if (a2 < a4)
  {
    return a3 >> (3 * (a4 - a2)) >= a1;
  }

  else
  {
    return v4;
  }
}

uint64_t std::vector<md::FlyoverOctile>::push_back[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<md::FlyoverOctile>::__emplace_back_slow_path<md::FlyoverOctile const&>(a1, a2);
  }

  else
  {
    *(v3 + 24) = 0;
    *(v3 + 4) = *(a2 + 4);
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 32) = *(a2 + 32);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<md::FlyoverOctile>::__emplace_back_slow_path<md::FlyoverOctile const&>(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = v4 - v3;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 4);
  v8 = v7 + 1;
  if (v7 + 1 > 0x555555555555555)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v3) >> 4) > v8)
  {
    v8 = 0x5555555555555556 * ((*(a1 + 16) - v3) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v3) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v9 = 0x555555555555555;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    if (v9 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = 16 * ((v4 - v3) >> 4);
  *(v10 + 4) = *(a2 + 4);
  *v10 = *a2;
  *(v10 + 16) = *(a2 + 16);
  *(v10 + 24) = *(a2 + 24);
  *(v10 + 32) = *(a2 + 32);
  if (v3 != v4)
  {
    v11 = 0;
    do
    {
      *v11 = *&v3[v11];
      *(v11 + 4) = *&v3[v11 + 4];
      *(v11 + 16) = *&v3[v11 + 16];
      *(v11 + 24) = v3[v11 + 24];
      *(v11 + 32) = *&v3[v11 + 32];
      v11 += 48;
    }

    while (&v3[v11] != v4);
    v3 = *a1;
  }

  *a1 = 48 * v7 - v6;
  *(a1 + 8) = 48 * v7 + 48;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 48 * v7 + 48;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,void *>>>>::~unique_ptr[abi:nn200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::FlyoverOctileWorld const,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<md::FlyoverOctileWorld const,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,0>(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;

    operator delete(v3);
  }
}

__n128 std::pair<md::FlyoverOctile,md::FlyoverOctile>::pair[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 4) = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 72) = 0;
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::FlyoverOctileInstance>>(unint64_t a1)
{
  if (a1 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::allocator_traits<std::allocator<md::FlyoverOctileInstance>>::construct[abi:nn200100]<md::FlyoverOctileInstance,md::FlyoverOctileInstance const&,void,0>(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0;
  *(result + 4) = *(a2 + 4);
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  v2 = *(a2 + 32);
  *(result + 48) = 0;
  *(result + 32) = v2;
  *(result + 152) = 0;
  if (*(a2 + 152) == 1)
  {
    v3 = *(a2 + 48);
    *(result + 64) = *(a2 + 64);
    *(result + 48) = v3;
    v4 = *(a2 + 72);
    *(result + 88) = *(a2 + 88);
    *(result + 72) = v4;
    *(result + 96) = *(a2 + 96);
    v5 = *(a2 + 104);
    v6 = *(a2 + 120);
    *(result + 136) = *(a2 + 136);
    *(result + 120) = v6;
    *(result + 104) = v5;
    *(result + 152) = 1;
  }

  v7 = *(a2 + 160);
  *(result + 168) = *(a2 + 168);
  *(result + 160) = v7;
  return result;
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__list_iterator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,void *>>>>::find<std::pair<md::FlyoverOctile,md::FlyoverOctile>>(void *a1, geo::QuadTile *this)
{
  v4 = md::FlyoverOctileHash::operator()(this);
  v5 = md::FlyoverOctileHash::operator()((this + 48));
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = ((v4 << 6) + (v4 >> 2) + v5 - 0x61C8864680B583EBLL) ^ v4;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v6)
    {
      v10 = v7 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = *(i + 1);
    if (v13 == v7)
    {
      if (md::FlyoverOctile::operator==(i + 16, this) && md::FlyoverOctile::operator==(i + 64, this + 48))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v6)
        {
          v13 %= *&v6;
        }
      }

      else
      {
        v13 &= *&v6 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

void std::__list_imp<md::FlyoverDynamicGeometry>::clear(uint64_t *a1)
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
        v6 = v2[7];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v7 = v2[5];
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v8 = v2[3];
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<md::FlyoverDynamicGeometry>::list(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    std::list<md::FlyoverDynamicGeometry>::push_back(a1, v2 + 16);
  }

  return a1;
}

double md::FlyoverCompleteTileDataLogic::getTileBounds(uint64_t a1, void *a2, const geo::QuadTile ***a3, geo::QuadTile *this, int a5)
{
  if (a5 == 2)
  {
    v7 = -22000.0;
    v8 = 22000.0;
  }

  else
  {
    v11 = (a2 + 60);
    v12 = std::__hash_table<std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,std::__unordered_map_hasher<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,true>,std::__unordered_map_equal<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,std::equal_to<md::FlyoverOctile>,md::FlyoverOctileHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>>>::find<md::FlyoverOctile>(a2 + 55, this);
    if (!v12)
    {
      goto LABEL_9;
    }

    v13 = a2[61];
    v14 = *(v12 + 8);
    if (v13 != v14)
    {
      v15 = v14[1];
      if (v15 != v13)
      {
        v16 = *v14;
        *(v16 + 8) = v15;
        *v15 = v16;
        v17 = *v13;
        *(*&v17 + 8) = v14;
        *v14 = v17;
        *v13 = v14;
        v14[1] = v13;
        v13 = a2[61];
      }
    }

    if (v11 == v13)
    {
LABEL_9:
      md::FlyoverMetaData::elevationBoundsForHeightTile(v29, **a3, this, *(this + 11));
      if (LOBYTE(v29[1]) != 1)
      {
        md::World::getDsmTileData(&v26, *(a2[21] + 80), *(a2[21] + 88), this);
        if (v26.i64[0])
        {
          if (*(v26.i64[0] + 728))
          {
            v18 = (v26.i64[0] + 728);
          }

          else
          {
            v18 = (v26.i64[0] + 744);
          }

          md::FlyoverDsmTileData::heightBounds(v26.i64[0], this, v18);
        }

        if (v26.i64[1])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v26.i64[1]);
        }
      }

      v19 = std::__hash_table<std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,std::__unordered_map_hasher<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,true>,std::__unordered_map_equal<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>,std::equal_to<md::FlyoverOctile>,md::FlyoverOctileHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctile,std::__list_iterator<std::pair<md::FlyoverOctile,geo::OrientedBox<double,3u,double,double>>,void *>>>>::find<md::FlyoverOctile>(a2 + 55, this);
      if (v19)
      {
        v20 = v19;
        v21 = *(v19 + 8);
        v23 = *v21;
        v22 = v21[1];
        *(v23 + 8) = v22;
        *v22 = v23;
        --a2[62];
        operator delete(v21);
        std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(a2 + 55, v20);
      }

      operator new();
    }

    v7 = v13[8];
    v8 = v13[9];
  }

  v26 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v27 = xmmword_1B33B0520;
  v28 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  memset(v29, 0, sizeof(v29));
  *&v30 = 0x3FF0000000000000;
  md::FlyoverCommon::computeGeocentricBoundsFromOctile(this, v29, &v26, v7, v8);
  *a1 = v29[0];
  *(a1 + 24) = *(&v29[1] + 8);
  *(a1 + 48) = v30;
  v24 = v27;
  *(a1 + 56) = v26;
  *(a1 + 16) = *&v29[1];
  *(a1 + 40) = *(&v29[2] + 1);
  *(a1 + 72) = v24;
  result = *v28.i64;
  *(a1 + 88) = v28;
  return result;
}

void std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[9];
      if (v3)
      {
        v1[10] = v3;
        operator delete(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<md::FlyoverOctileWorld const,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,0>(v1 + 2);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[14];
      if (v3)
      {
        v1[15] = v3;
        operator delete(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::pair<md::FlyoverOctile,md::FlyoverOctile> const,md::FlyoverCompleteTileDataLogic::FallbackInfo>,0>(void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[14];
  if (v3 != a1[16])
  {

    free(v3);
  }
}

__n128 std::__set_difference[abi:nn200100]<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::__tree_const_iterator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__tree_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,void *> *,long> &,std::insert_iterator<std::set<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>> &>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, __n128 *a6)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v29 = *a6;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    if (md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()((v8 + 4), (i + 4)))
    {
      std::insert_iterator<std::set<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>>::operator=[abi:nn200100](a6, (v8 + 4));
      v15 = *a2;
      v16 = *(*a2 + 8);
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
          v17 = v15[2];
          v18 = *v17 == v15;
          v15 = v17;
        }

        while (!v18);
      }

      *a2 = v17;
    }

    else if (md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()((i + 4), (v8 + 4)))
    {
      v19 = i[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = i[2];
          v18 = *v20 == i;
          i = v20;
        }

        while (!v18);
      }

      *a4 = v20;
    }

    else
    {
      v21 = v8[1];
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
          v22 = v8[2];
          v18 = *v22 == v8;
          v8 = v22;
        }

        while (!v18);
      }

      *a2 = v22;
      v23 = *a4;
      v24 = *(*a4 + 8);
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v23[2];
          v18 = *v25 == v23;
          v23 = v25;
        }

        while (!v18);
      }

      *a4 = v25;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v29 = *a6;
  if (v8 != v9)
  {
    do
    {
      std::insert_iterator<std::set<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>>::operator=[abi:nn200100](&v29, (v8 + 4));
      v26 = v8[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v8[2];
          v18 = *v27 == v8;
          v8 = v27;
        }

        while (!v18);
      }

      v8 = v27;
    }

    while (v27 != v9);
    v8 = v9;
  }

LABEL_39:
  result = v29;
  *a1 = v8;
  *(a1 + 8) = result;
  return result;
}

void md::FlyoverCompleteTileDataLogic::updateTransitions(gdc::LayerDataCollector *,std::map<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<std::pair<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo const,md::FlyoverCompleteTileDataLogic::TransitionInfo>>> &,double)::$_0::operator()(uint64_t a1, unsigned __int8 *a2)
{
  md::FlyoverCommon::encodeFlyoverKey(v16, a2, 0, 0);
  gdc::LayerDataStore::get(&v14, *(a1 + 16), v16);
  if (v14)
  {
    v4 = *(a1 + 24);
    if (!gdc::LayerDataCollector::dataKeyAdded(v4, v16))
    {
      gdc::LayerDataCollector::addDataKey(v4, v16, (a2 + 96));
    }

    v5 = *(a1 + 8);
    v6 = v19;
    v7 = v5[1];
    if (v7)
    {
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      v9 = v8.u32[0];
      if (v8.u32[0] > 1uLL)
      {
        v10 = v19;
        if (v19 >= *&v7)
        {
          v10 = v19 % *&v7;
        }
      }

      else
      {
        v10 = (*&v7 - 1) & v19;
      }

      v11 = *(*v5 + 8 * v10);
      if (v11)
      {
        for (i = *v11; i; i = *i)
        {
          v13 = *(i + 1);
          if (v13 == v6)
          {
            if (gdc::LayerDataRequestKey::operator==(i + 16, v16))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v9 > 1)
            {
              if (v13 >= *&v7)
              {
                v13 %= *&v7;
              }
            }

            else
            {
              v13 &= *&v7 - 1;
            }

            if (v13 != v10)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  **a1 = 1;
LABEL_23:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v17 != v18)
  {
    free(v17);
  }
}

void sub_1B31BFEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>>>>::~unique_ptr[abi:nn200100](v17 - 88);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (a14 != a16)
  {
    free(a14);
  }

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::__map_value_compare<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::less<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::allocator<std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::__map_value_compare<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::less<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::allocator<std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::__map_value_compare<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::less<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::allocator<std::__value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::TransitionInfo>>>::destroy(a1[1]);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a1[17]);

    operator delete(a1);
  }
}

uint64_t std::insert_iterator<std::set<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1 + 8;
  if (v6 == v5 || md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()(a2, (v5 + 4)))
  {
    v7 = *v5;
    v8 = v5;
    if (*v4 == v5)
    {
      goto LABEL_16;
    }

    if (v7)
    {
      v9 = *v5;
      do
      {
        v8 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = v5;
      do
      {
        v8 = v13[2];
        v14 = *v8 == v13;
        v13 = v8;
      }

      while (v14);
    }

    if (md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()((v8 + 4), a2))
    {
LABEL_16:
      if (!v7)
      {
        v20 = v5;
        goto LABEL_30;
      }

      v20 = v8;
      v12 = v8 + 1;
LABEL_29:
      v5 = *v12;
      if (!*v12)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()((v5 + 4), a2))
  {
    v10 = v5[1];
    if (v10)
    {
      v11 = v5[1];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = v5;
      do
      {
        v12 = v15[2];
        v14 = *v12 == v15;
        v15 = v12;
      }

      while (!v14);
    }

    if (v12 == v6 || md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare::operator()(a2, (v12 + 4)))
    {
      if (v10)
      {
        v20 = v12;
      }

      else
      {
        v20 = v5;
        v12 = v5 + 1;
      }

      goto LABEL_29;
    }

LABEL_28:
    v12 = std::__tree<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>::__find_equal<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>(v4, &v20, a2);
    goto LABEL_29;
  }

  v19[3] = v5;
  v20 = v5;
  if (!v5)
  {
LABEL_30:
    std::__tree<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>::__construct_node<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo const&>(v19, v4, a2);
  }

LABEL_31:
  *(a1 + 8) = v5;
  v16 = v5[1];
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
      v17 = v5[2];
      v14 = *v17 == v5;
      v5 = v17;
    }

    while (!v14);
  }

  *(a1 + 8) = v17;
  return a1;
}

uint64_t std::__function::__value_func<void ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo::FlyoverOctileTileInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0;
  *(a1 + 4) = *(a2 + 4);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 72) = 0;
  *(a1 + 52) = *(a3 + 4);
  *(a1 + 48) = *a3;
  *(a1 + 64) = *(a3 + 16);
  *(a1 + 72) = *(a3 + 24);
  *(a1 + 80) = *(a3 + 32);
  *(a1 + 120) = 0;
  *(a1 + 100) = *(a4 + 4);
  *(a1 + 96) = *a4;
  *(a1 + 112) = *(a4 + 16);
  *(a1 + 120) = *(a4 + 24);
  md::FlyoverOctileMortonIndex::FlyoverOctileMortonIndex(a1 + 128, a1);
  md::FlyoverOctileMortonIndex::FlyoverOctileMortonIndex(a1 + 192, a3);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v7 = *(a4 + 1);
  if (v7 <= 0x1E)
  {
    v8 = 1 << v7;
    v9 = *(a4 + 8);
    v10 = vcvtmd_s64_f64(v9 / (1 << v7));
    if (v10 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = -v10;
    }

    if (v11 <= 0x7F)
    {
      *(a1 + 264) = v7;
      *(a1 + 265) = v10;
      v12 = ((*(a4 + 4) % v8 + v8) % v8);
      v13 = (((v9 % v8 + v8) % v8) | (((v9 % v8 + v8) % v8) << 16)) & 0xFFFF0000FFFFLL;
      v14 = (v13 | (v13 << 8)) & 0xF000F000F000FLL | (16 * ((v13 | (v13 << 8)) & 0xFF00FF00FF00FFLL)) & 0xF0F0F0F0F0F0F0FLL;
      v15 = (v12 | (v12 << 16)) & 0xFF000000FFLL | (((v12 | (v12 << 16)) & 0xFFFF0000FFFFLL) << 8) & 0xFF00FF00FF00FFLL;
      v16 = (v15 | (16 * v15)) & 0x303030303030303 | (4 * ((v15 | (16 * v15)) & 0xF0F0F0F0F0F0F0FLL)) & 0x3333333333333333;
      *(a1 + 256) = (v14 | (4 * v14)) & 0x1111111111111111 | (2 * ((v14 | (4 * v14)) & 0x3333333333333333)) & 0x5555555555555555 | ((4 * v16) | (2 * v16)) & 0xAAAAAAAAAAAAAAAALL;
    }
  }

  return a1;
}

__n128 md::FlyoverOctileMortonIndex::FlyoverOctileMortonIndex(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  v2 = *(a2 + 1);
  *(a1 + 9) = v2;
  *(a1 + 12) = *(a2 + 4);
  *(a1 + 8) = *a2;
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 24);
  result = *(a2 + 32);
  *(a1 + 40) = result;
  *(a1 + 56) = v2;
  v4 = ((*(a2 + 8) << 32) | (*(a2 + 8) << 16) | *(a2 + 8)) & 0x1F0000FF0000FFLL;
  v5 = (v4 | (v4 << 8)) & 0x1003003003003003 | (16 * ((v4 | (v4 << 8)) & 0x100F00F00F00F00FLL)) & 0x10C30C30C30C30C3;
  v6 = ((*(a2 + 4) << 32) | (*(a2 + 4) << 16) | *(a2 + 4)) & 0x1F0000FF0000FFLL;
  v7 = (v6 | (v6 << 8)) & 0x1003003003003003 | (16 * ((v6 | (v6 << 8)) & 0x100F00F00F00F00FLL)) & 0x10C30C30C30C30C3;
  v8 = ((8 * v7) | (2 * v7)) & 0x2492492492492492 | (v5 | (4 * v5)) & 0x1249249249249249;
  v9 = (*(a2 + 44) << 32) | (*(a2 + 44) << 16) | *(a2 + 44);
  v10 = v9 & 0xF00000F00000FLL | ((v9 & 0x1F0000FF0000FFLL) << 8) & 0x100F00F00F00F00FLL;
  *a1 = v8 | ((16 * ((v10 | (16 * v10)) & 0x10C30C30C30C30C3)) | (4 * ((v10 | (16 * v10)) & 0x10C30C30C30C30C3))) & 0x4924924924924924;
  return result;
}

void std::__function::__func<md::FlyoverCompleteTileDataLogic::collectFlyoverTilesInView(std::set<gdc::LayerDataWithWorld> const&,std::unordered_map<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,std::allocator<std::pair<std::pair<md::FlyoverOctile,md::FlyoverOctile> const,md::FlyoverCompleteTileDataLogic::FallbackInfo>>> const&,std::set<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>> &,md::FlyoverTileDataResolverContext const&)::$_0,std::allocator<md::FlyoverCompleteTileDataLogic::collectFlyoverTilesInView(std::set<gdc::LayerDataWithWorld> const&,std::unordered_map<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,std::allocator<std::pair<std::pair<md::FlyoverOctile,md::FlyoverOctile> const,md::FlyoverCompleteTileDataLogic::FallbackInfo>>> const&,std::set<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>> &,md::FlyoverTileDataResolverContext const&)::$_0>,void ()(geo::QuadTile const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (*(v3 + 1) < *(a2 + 1))
  {
    v5 = *(a1 + 8);
    v24[1] = *(a2 + 1);
    v25 = *(a2 + 4);
    v24[0] = *a2;
    v26 = *(a2 + 16);
    v27 = *(a2 + 24);
    v28 = 2;
    v29 = 0;
    v30 = 0;
    md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo::FlyoverOctileTileInfo(v23, v3, v24, *(a1 + 40));
    std::__tree<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>>::__emplace_unique_key_args<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo const&>(*(a1 + 32), v23, v23);
    v6 = *(a1 + 16);
    **(a1 + 24) = 1;
    v18 = *(v6 + 4);
    *v17 = *v6;
    v19 = *(v6 + 16);
    v20 = *(v6 + 24);
    v21 = *(v6 + 32);
    v22 = vcvtmd_s64_f64(*(*(a1 + 40) + 8) / (1 << *(*(a1 + 40) + 1)));
    v7 = md::FlyoverOctileHash::operator()(v17);
    v8 = (v7 << 6) + (v7 >> 2) + v22 - 0x61C8864680B583EBLL;
    v9 = v8 ^ v7;
    v10 = v5[102];
    if (v10)
    {
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
        v13 = v9 & (*&v10 - 1);
      }

      v14 = *(*&v5[101] + 8 * v13);
      if (v14)
      {
        for (i = *v14; i; i = *i)
        {
          v16 = *(i + 1);
          if (v16 == v9)
          {
            if (md::FlyoverOctile::operator==(i + 16, v17) && i[64] == v22)
            {
              return;
            }
          }

          else
          {
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
              break;
            }
          }
        }
      }
    }

    operator new();
  }
}

__n128 std::__function::__func<md::FlyoverCompleteTileDataLogic::collectFlyoverTilesInView(std::set<gdc::LayerDataWithWorld> const&,std::unordered_map<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,std::allocator<std::pair<std::pair<md::FlyoverOctile,md::FlyoverOctile> const,md::FlyoverCompleteTileDataLogic::FallbackInfo>>> const&,std::set<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>> &,md::FlyoverTileDataResolverContext const&)::$_0,std::allocator<md::FlyoverCompleteTileDataLogic::collectFlyoverTilesInView(std::set<gdc::LayerDataWithWorld> const&,std::unordered_map<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,std::allocator<std::pair<std::pair<md::FlyoverOctile,md::FlyoverOctile> const,md::FlyoverCompleteTileDataLogic::FallbackInfo>>> const&,std::set<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,std::allocator<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo>> &,md::FlyoverTileDataResolverContext const&)::$_0>,void ()(geo::QuadTile const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3CF28;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::pair<std::pair<md::FlyoverOctile,md::FlyoverOctile> const,md::FlyoverCompleteTileDataLogic::FallbackInfo>::pair[abi:nn200100]<true,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::pair<md::FlyoverOctile,md::FlyoverOctile>::pair[abi:nn200100](a1, a2);
  gdc::LayerDataRequestKey::LayerDataRequestKey(v5 + 96, a3);
  *(a1 + 232) = 0;
  *(a1 + 212) = *(a3 + 116);
  *(a1 + 208) = *(a3 + 112);
  *(a1 + 224) = *(a3 + 128);
  *(a1 + 232) = *(a3 + 136);
  v6 = *(a3 + 152);
  *(a1 + 240) = *(a3 + 144);
  *(a1 + 248) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

BOOL std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>>>::__emplace_unique_key_args<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::pair<std::pair<md::FlyoverOctile,md::FlyoverOctile> const,md::FlyoverCompleteTileDataLogic::FallbackInfo>>(void *a1, geo::QuadTile *this, uint64_t a3)
{
  v5 = md::FlyoverOctileHash::operator()(this);
  v6 = ((v5 << 6) + (v5 >> 2) + md::FlyoverOctileHash::operator()((this + 48)) - 0x61C8864680B583EBLL) ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v6;
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
LABEL_19:
    operator new();
  }

  while (1)
  {
    v13 = *(v12 + 1);
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (!md::FlyoverOctile::operator==(v12 + 16, this))
  {
    goto LABEL_18;
  }

  result = md::FlyoverOctile::operator==(v12 + 64, this + 48);
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

void sub_1B31C0C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(v2 + 6);
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

uint64_t std::__hash_table<std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>,std::__unordered_map_hasher<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>,md::FlyoverOctileHash,std::equal_to<md::FlyoverOctile>,true>,std::__unordered_map_equal<md::FlyoverOctile,std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>,std::equal_to<md::FlyoverOctile>,md::FlyoverOctileHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctile,gdc::LayerDataKey>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[9];
      if (v4 != v2[11])
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

void *std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::find<md::FlyoverCompleteTileDataLogic::DrapingTask>(void *a1, void *a2)
{
  v4 = md::FlyoverCompleteTileDataLogic::DrapingTaskHash::operator()(a2);
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
        if (md::FlyoverCompleteTileDataLogic::DrapingTask::operator==((v11 + 2), a2))
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

unint64_t md::FlyoverCompleteTileDataLogic::DrapingTaskHash::operator()(void *a1)
{
  v2 = md::FlyoverOctileHash::operator()((a1 + 9));
  v3 = ((v2 << 6) + (v2 >> 2) + md::FlyoverOctileHash::operator()((a1 + 3)) - 0x61C8864680B583EBLL) ^ v2;
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a1[2] & 0x1FFFFFFFLL) + 8) ^ HIDWORD(a1[2]));
  return ((v3 << 6) + (v3 >> 2) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (HIDWORD(a1[2]) ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(a1[2]) ^ (v4 >> 47) ^ v4)) >> 47)) - 0x61C8864680B583EBLL) ^ v3;
}

BOOL md::FlyoverCompleteTileDataLogic::DrapingTask::operator==(uint64_t a1, uint64_t a2)
{
  result = md::FlyoverOctile::operator==((a1 + 72), (a2 + 72));
  if (result)
  {
    result = md::FlyoverOctile::operator==((a1 + 24), (a2 + 24));
    if (result)
    {
      return *(a1 + 16) == *(a2 + 16);
    }
  }

  return result;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,void *>>>>::~unique_ptr[abi:nn200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<md::FlyoverCompleteTileDataLogic::DrapingTask const,std::shared_ptr<geo::Task>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<md::FlyoverCompleteTileDataLogic::DrapingTask const,std::shared_ptr<geo::Task>>,0>(uint64_t a1)
{
  v2 = *(a1 + 128);
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

void std::__function::__func<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0,std::allocator<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0>,void ()(void)>::operator()(unint64_t a1)
{
  v1 = *(a1 + 41) - *(a1 + 89);
  v2 = (1 << v1);
  v3 = (*(a1 + 48) - (*(a1 + 96) << v1)) / v2;
  v4 = (((*(a1 + 92) + 1) << v1) + ~*(a1 + 44)) / v2;
  v5 = *(a1 + 32);
  v6 = 257;
  v7 = 1;
  v8 = v3;
  v9 = v4;
  v10 = 1.0 / v2;
  md::HeightMeshBuilder::generateHeightMesh(&v11, a1 + 40, v5, &v6);
}

void sub_1B31C1724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30)
{
  v36 = v32[20];
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  v37 = v32[18];
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  v38 = v32[3];
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  operator delete(v32);
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a28);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  std::mutex::unlock((v33 + 528));
  std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  v39 = *(v34 - 184);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3CDF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0,std::allocator<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0,std::allocator<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

__n128 std::__function::__func<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0,std::allocator<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3CD70;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(a1 + 32);
  *(a2 + 64) = 0;
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 112) = 0;
  *(a2 + 92) = *(a1 + 92);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = *(a1 + 112);
  result = *(a1 + 120);
  *(a2 + 120) = result;
  return result;
}

void std::__function::__func<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0,std::allocator<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A3CD70;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0,std::allocator<md::FlyoverCompleteTileDataLogic::submitDrapings(md::FlyoverCompleteTileDataLogic::DrapingTask const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A3CD70;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<md::TexturedRenderable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3CE90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<geo::QuadTile,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,md::FlyoverCompleteTileDataLogic::FallbackInfo>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::pair<md::FlyoverOctile,md::FlyoverOctile> const,md::FlyoverCompleteTileDataLogic::FallbackInfo>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

double md::Logic<md::FlyoverCompleteTileDataLogic,md::FlyoverCompleteTileDataContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::FlyoverTileDataResolverContext,md::PendingSceneContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t md::Logic<md::FlyoverCompleteTileDataLogic,md::FlyoverCompleteTileDataContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::FlyoverTileDataResolverContext,md::PendingSceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD3D7935EF848FCE7 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    v8[0] = gdc::Context::context<md::TileSelectionContext>(v7);
    v8[1] = gdc::Context::get<md::FlyoverTileDataResolverContext>(v7);
    v8[2] = gdc::Context::get<md::PendingSceneContext>(v7);
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::Logic<md::FlyoverCompleteTileDataLogic,md::FlyoverCompleteTileDataContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::FlyoverTileDataResolverContext,md::PendingSceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD3D7935EF848FCE7)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7[0] = gdc::Context::context<md::TileSelectionContext>(v6);
      v7[1] = gdc::Context::get<md::FlyoverTileDataResolverContext>(v6);
      v7[2] = gdc::Context::get<md::PendingSceneContext>(v6);
      return (*(*v5 + 152))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::FlyoverCompleteTileDataLogic,md::FlyoverCompleteTileDataContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::FlyoverTileDataResolverContext,md::PendingSceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD3D7935EF848FCE7)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7[0] = gdc::Context::context<md::TileSelectionContext>(v6);
      v7[1] = gdc::Context::get<md::FlyoverTileDataResolverContext>(v6);
      v7[2] = gdc::Context::get<md::PendingSceneContext>(v6);
      return (*(*v5 + 144))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::FlyoverCompleteTileDataLogic,md::FlyoverCompleteTileDataContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::FlyoverTileDataResolverContext,md::PendingSceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD3D7935EF848FCE7)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7[0] = gdc::Context::context<md::TileSelectionContext>(v6);
      v7[1] = gdc::Context::get<md::FlyoverTileDataResolverContext>(v6);
      v7[2] = gdc::Context::get<md::PendingSceneContext>(v6);
      return (*(*v5 + 136))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::FlyoverCompleteTileDataLogic,md::FlyoverCompleteTileDataContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::FlyoverTileDataResolverContext,md::PendingSceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xD3D7935EF848FCE7)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7[0] = gdc::Context::context<md::TileSelectionContext>(v6);
      v7[1] = gdc::Context::get<md::FlyoverTileDataResolverContext>(v6);
      v7[2] = gdc::Context::get<md::PendingSceneContext>(v6);
      return (*(*v5 + 128))(v5, a2, v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::FlyoverCompleteTileDataContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::FlyoverCompleteTileDataContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3CF70;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C40769AC3DALL);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::FlyoverCompleteTileDataContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A3CF70;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C40769AC3DALL);
  }

  return a1;
}

double md::FlyoverCompleteTileDataLogic::createDebugNode@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<md::FlyoverCompleteTileDataLogic::DrapingTask const,std::shared_ptr<geo::Task>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void md::FlyoverCompleteTileDataLogic::~FlyoverCompleteTileDataLogic(md::FlyoverCompleteTileDataLogic *this)
{
  md::FlyoverCompleteTileDataLogic::~FlyoverCompleteTileDataLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3CBB8;
  md::FlyoverCompleteTileDataLogic::reset(this);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 808);
  std::__tree<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::__map_value_compare<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,true>,std::allocator<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>>>::destroy(*(this + 98));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 736);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 90));
  std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::~__hash_table(this + 672);
  std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::~__hash_table(this + 632);
  std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>>>::~__hash_table(this + 592);
  std::mutex::~mutex((this + 528));
  v2 = *(this + 65);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 63);
  *(this + 63) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 60);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 440);
  std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>>>::~__hash_table(this + 384);
  std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>>>::~__hash_table(this + 344);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 288);
  std::__list_imp<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,std::allocator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry>>::clear(this + 33);
  std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::~__hash_table(this + 224);
  std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::~__hash_table(this + 184);
  std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::~deque[abi:nn200100](this + 120);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B31C2500(_Unwind_Exception *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 808);
  std::__tree<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::__map_value_compare<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,true>,std::allocator<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>>>::destroy(*(v1 + 784));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 736);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 720));
  std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::~__hash_table(v1 + 672);
  std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::~__hash_table(v1 + 632);
  std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>>>::~__hash_table(v1 + 592);
  std::mutex::~mutex((v1 + 528));
  v3 = *(v1 + 520);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 504);
  *(v1 + 504) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear((v1 + 480));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 440);
  std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>>>::~__hash_table(v1 + 384);
  std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>>>::~__hash_table(v1 + 344);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 288);
  std::__list_imp<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,std::allocator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry>>::clear((v1 + 264));
  std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::~__hash_table(v1 + 224);
  std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::~__hash_table(v1 + 184);
  std::deque<std::pair<geo::Coordinate3D<geo::Radians,double>,geo::Coordinate3D<geo::Radians,double>>>::~deque[abi:nn200100](v1 + 120);
  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void md::FlyoverCompleteTileDataContext::getOctileInstances(uint64_t *a1, unsigned __int8 **a2, char *a3, char a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3[32] == 4)
  {
    v5 = *a3;
    v6 = a3[1];
    v7 = *(a3 + 2);
    v8 = a3[24];
    *(&v20 + 1) = *(a3 + 33);
    BYTE3(v20) = a3[35];
    v9 = a3[36];
    *(&v20 + 5) = *(a3 + 37);
    BYTE7(v20) = a3[39];
    v10 = a3[40];
    *(&v20 + 9) = *(a3 + 41);
    BYTE11(v20) = a3[43];
    v11 = *(a3 + 11);
    HIBYTE(v16[0]) = v6;
    v17 = *(a3 + 4);
    LOBYTE(v16[0]) = v5;
    v18 = v7;
    v19 = v8;
    LOBYTE(v20) = 4;
    BYTE4(v20) = v9;
    BYTE8(v20) = v10;
    HIDWORD(v20) = v11;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1065353216;
    v25 = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    std::vector<md::FlyoverOctileInstance>::__init_with_size[abi:nn200100]<md::FlyoverOctileInstance const*,md::FlyoverOctileInstance const*>(a1, v16, &v26);
  }

  v12 = *a2;
  if (*a2 && (v17 = *(a3 + 4), v16[0] = *a3, v18 = *(a3 + 2), v19 = a3[24], v20 = *(a3 + 2), v21 = a4, (v13 = std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::find<md::FlyoverOctileWorld>(v12, v16)) != 0))
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v14 = *(v13 + 9);
    v15 = *(v13 + 10);

    std::vector<md::FlyoverOctileInstance>::__init_with_size[abi:nn200100]<md::FlyoverOctileInstance*,md::FlyoverOctileInstance*>(a1, v14, v15, 0x2E8BA2E8BA2E8BA3 * ((v15 - v14) >> 4));
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

unsigned __int8 *md::FlyoverCompleteTileDataContext::getDynamicRenderables(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    return &md::FlyoverCompleteTileDataContext::getDynamicRenderables(md::FlyoverOctile const&,signed char)const::kEmpty;
  }

  v13 = *(a2 + 4);
  v12[0] = *a2;
  v14 = *(a2 + 16);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  LOBYTE(v17) = a3;
  v6 = std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::find<md::FlyoverOctileWorld>(v4, v12);
  if (!v6)
  {
    return &md::FlyoverCompleteTileDataContext::getDynamicRenderables(md::FlyoverOctile const&,signed char)const::kEmpty;
  }

  v7 = v6;
  v8 = *(v6 + 12);
  for (i = *(v6 + 13); v8 != i; v8 += 24)
  {
    v10 = *(a1 + 8);
    v13 = *(a2 + 4);
    v12[0] = *a2;
    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = *(a2 + 32);
    v18 = *(v8 + 2);
    v17 = *v8;
    v19 = *(v8 + 2);
    v20 = *(v8 + 24);
    v21 = *(v8 + 2);
    geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::find(v10, v12);
  }

  return v7 + 72;
}

uint64_t md::FlyoverCompleteTileDataContext::needsUpdate(uint64_t result, uint64_t a2, signed __int8 a3)
{
  if (result)
  {
    v3 = result;
    v14 = *(a2 + 4);
    *v13 = *a2;
    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    v17 = *(a2 + 32);
    v18 = a3;
    v4 = md::FlyoverOctileHash::operator()(v13);
    v5 = v3[1];
    if (v5)
    {
      v6 = ((v4 << 6) + (v4 >> 2) + v18 - 0x61C8864680B583EBLL) ^ v4;
      v7 = vcnt_s8(v5);
      v7.i16[0] = vaddlv_u8(v7);
      v8 = v7.u32[0];
      if (v7.u32[0] > 1uLL)
      {
        v9 = ((v4 << 6) + (v4 >> 2) + v18 - 0x61C8864680B583EBLL) ^ v4;
        if (v6 >= *&v5)
        {
          v9 = v6 % *&v5;
        }
      }

      else
      {
        v9 = v6 & (*&v5 - 1);
      }

      v10 = *(*v3 + 8 * v9);
      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = *(i + 1);
          if (v6 == v12)
          {
            if (md::FlyoverOctile::operator==(i + 16, v13) && i[64] == v18)
            {
              return 1;
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
      }
    }

    return 0;
  }

  return result;
}

void ___ZL27GEOGetVectorKitVKMapViewLogv_block_invoke_37937()
{
  v0 = os_log_create("com.apple.VectorKit", "VKMapView");
  v1 = GEOGetVectorKitVKMapViewLog(void)::log;
  GEOGetVectorKitVKMapViewLog(void)::log = v0;
}

void sub_1B31C3574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::ita::PushLegacyRibbons::operator()(ecs2::Query<md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> const&>)::$_0,std::allocator<md::ita::PushLegacyRibbons::operator()(ecs2::Query<md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> const&>)::$_0>,void ()(md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A3D040;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void geo::_retain_ptr<NSMutableSet<objc_object  {objcproto25VKCustomFeatureDataSource}*> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D0E8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSMutableSet<objc_object  {objcproto25VKCustomFeatureDataSource}*> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D0E8;

  return a1;
}

void geo::_retain_ptr<NSArray<VKTrafficFeature *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D088;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSArray<VKTrafficFeature *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D088;

  return a1;
}

void md::LabelSettings::removeCustomFeatureDataSource(uint64_t a1, void *a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(*(a1 + 40) + 168) removeObject:v3];
  v4 = *(a1 + 24);
  v6 = v3;
  v5 = (*(**(*(v4 + 168) + 64) + 32))(*(*(v4 + 168) + 64));
  if (v5)
  {
    v7[0] = &unk_1F2A2C2A0;
    v7[1] = v5;
    v7[2] = v6;
    v7[3] = v7;
    md::LabelCustomFeatureSupport::queueCommand(v5, 1, v7);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);
  }
}

void sub_1B31C3ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::BuildingPointyRoof::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::BuildingPointyRoof::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::BuildingPointyRoof::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::BuildingPointyRoof::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::BuildingPointyRoof::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::BuildingPointyRoof::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D1E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::BuildingPointyRoof::BuildingMesh::~BuildingMesh(ggl::BuildingPointyRoof::BuildingMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::BuildingPointyRoof::BuildingMesh::~BuildingMesh(ggl::BuildingPointyRoof::BuildingMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::BuildingPointyRoof::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::BuildingPointyRoof::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TexturedAnimatedRibbon::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D4F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::RouteLineTraffic::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D4B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::RouteLineAlphaReset::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::RouteLine::RouteLineMaskPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::RouteLine::PatternedBasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DottedRouteLine::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D3D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::RouteLine::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D3A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A3D340;
  v6 = (a1 + 2936);
  std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  md::FrameAllocator<ggl::RenderItem>::reset((a1 + 2912));
  free(*(a1 + 2912));
  v2 = *(a1 + 2888);
  if (v2)
  {
    *(a1 + 2896) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 2856);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v3 = *(a1 + 2832);
  if (v3)
  {
    *(a1 + 2840) = v3;
    operator delete(v3);
  }

  for (i = 2704; i != -112; i -= 128)
  {
    ggl::RenderItem::~RenderItem((a1 + i));
  }

  return a1;
}

void std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<md::RibbonSection<md::Ribbons::RouteLineRibbonDescriptor>>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 56);
    std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::RouteLineAlphaReset::FadeParams>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::RouteLineAlphaReset::FadeParams>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Ribbon::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Ribbon::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::RouteLineTraffic::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::RouteLineTraffic::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D5D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RouteLineBatch::~RouteLineBatch(md::RouteLineBatch *this)
{
  md::RouteLineBatch::~RouteLineBatch(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3D2E0;
  v2 = *(this + 391);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 388);
  *(this + 388) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 387);
  *(this + 387) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 386);
  *(this + 386) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 385);
  *(this + 385) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 384);
  *(this + 384) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 383);
  *(this + 383) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 382);
  *(this + 382) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 381);
  *(this + 381) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 380);
  *(this + 380) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 379);
  *(this + 379) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 378);
  *(this + 378) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 377);
  *(this + 377) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 376);
  *(this + 376) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 375);
  *(this + 375) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 374);
  *(this + 374) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(this + 373);
  *(this + 373) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 372);
  *(this + 372) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonBatch(this);
}

void md::RouteLineBatch::setupAlphaResetRenderItem(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v10 = *(*(a3 + 136) + 32);
  ggl::BufferMemory::BufferMemory(v14);
  ggl::ResourceAccessor::accessConstantData(v15, 0, v10, 1);
  ggl::BufferMemory::operator=(v14, v15);
  ggl::BufferMemory::~BufferMemory(v15);
  v11 = a5 + (a4 * 0.5);
  *(v14[5] + 16) = *(a1 + 128) * (v11 + 2.0);
  v12 = *(*(a3 + 136) + 48);
  ggl::BufferMemory::BufferMemory(v13);
  ggl::ResourceAccessor::accessConstantData(v15, 0, v12, 1);
  ggl::BufferMemory::operator=(v13, v15);
  ggl::BufferMemory::~BufferMemory(v15);
  *v13[5] = v11 / (v11 + 2.0);
  *(a2 + 120) = 1;
  ggl::BufferMemory::~BufferMemory(v13);
  ggl::BufferMemory::~BufferMemory(v14);
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A3D380;
  v5 = (a1 + 248);
  std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::RouteStyledOverlayRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v5);
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

void md::Ribbons::RibbonBatch<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonBatch<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A3D360;
  v2 = a1[39];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[37];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A3D360;
  v2 = a1[39];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[37];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonBatch(a1);
}

void ggl::ConstantDataTyped<ggl::TexturedAnimatedRibbon::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TexturedAnimatedRibbon::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D7E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RouteStyledOverlayBatch::~RouteStyledOverlayBatch(md::RouteStyledOverlayBatch *this)
{
  *this = &unk_1F2A3D300;
  v2 = *(this + 43);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 41);
  *(this + 41) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_1F2A3D360;
  v4 = *(this + 39);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 37);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonBatch(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3D300;
  v2 = *(this + 43);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 41);
  *(this + 41) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_1F2A3D360;
  v4 = *(this + 39);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 37);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::~RibbonBatch(this);
}

unint64_t gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<gm::Matrix<float,2,1>>(unint64_t a1, __n128 a2, uint64_t a3)
{
  v3 = a2.n128_f32[0];
  v6 = *a1;
  if (*a1 && (v7 = *v6, LODWORD(v6) = *v6 == 1.0, *(a1 + 10) == 1) && (v7 != 0.0 ? (v8 = v7 == 1.0) : (v8 = 1), !v8) || (v9 = *(a1 + v6 + 11), v9 == 2))
  {
    v12 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<gm::Matrix<float,2,1>>(a1, a3, 0, &v12, a2.n128_f32[0]);
    return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<gm::Matrix<float,2,1>>(a1, a3, 1u, &v11, v3);
  }

  else
  {

    return gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<gm::Matrix<float,2,1>>(a1, a3, v9, 0, a2.n128_f32[0]);
  }
}

unint64_t gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<gm::Matrix<float,2,1>>(unint64_t result, uint64_t a2, unsigned int a3, _BYTE *a4, float a5)
{
  v5 = a4;
  v6 = a5;
  if (a5 >= 0x17)
  {
    v7 = 23;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0x16)
  {
    v8 = 22;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(result + 16 * a3 + 16);
  if (!v9)
  {
    if (a4)
    {
      *a4 = 0;
    }

    return result;
  }

  v10 = a2;
  v25 = v7;
  v11 = v8 + 1;
  v12 = result + 16 * a3;
  if (!*(v12 + 56))
  {
    v27 = 1;
    v26 = 1;
LABEL_33:
    v22 = *(v9 + 72);
    gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<gm::Matrix<float,2,1>>(v22, v10, v25, &v27);
LABEL_34:
    result = gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<gm::Matrix<float,2,1>>(v22, v10, v11, &v26);
    if (v5)
    {
LABEL_35:
      *v5 = (v27 | v26) & 1;
    }

    return result;
  }

  v23 = *(result + 16 * a3 + 16);
  v13 = 0;
  v14 = *(v12 + 48);
  v15 = &v14[*(v12 + 56)];
  while (2)
  {
    LOBYTE(v16) = 0;
    while (1)
    {
      v17 = *v14;
      if (v16)
      {
        break;
      }

      v18 = *(v17 + 72);
      if (v18)
      {
        v19 = *v18 + 120 * *(v18 + v25 + 16);
        result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v19, v10);
        if (result != *(v19 + 12))
        {
          result = gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<gm::Matrix<float,2,1>>(v18, v10, v25);
          break;
        }
      }

      v16 = 0;
      if (v13)
      {
        goto LABEL_22;
      }

LABEL_18:
      v20 = *(v17 + 72);
      if (v20)
      {
        v21 = *v20 + 120 * *(v20 + v11 + 16);
        result = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v21, v10);
        if (result != *(v21 + 12))
        {
          result = gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<gm::Matrix<float,2,1>>(v20, v10, v11);
          if ((v16 & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_37:
          v27 = 1;
          v26 = 1;
          v5 = a4;
          if (a4)
          {
            goto LABEL_35;
          }

          return result;
        }
      }

      v13 = 0;
      if (++v14 == v15)
      {
        v27 = 1;
        v26 = 1;
        v9 = v23;
        v5 = a4;
        if (!v16)
        {
          goto LABEL_33;
        }

        v22 = *(v23 + 72);
        goto LABEL_34;
      }
    }

    v16 = 1;
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    if (v16)
    {
      goto LABEL_37;
    }

LABEL_25:
    ++v14;
    v13 = 1;
    if (v14 != v15)
    {
      continue;
    }

    break;
  }

  v27 = 1;
  v26 = 1;
  result = gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<gm::Matrix<float,2,1>>(*(v23 + 72), v10, v25, &v27);
  v5 = a4;
  if (a4)
  {
    goto LABEL_35;
  }

  return result;
}

void *gss::CartoStyle<gss::PropertyID>::valueForExistingKeyAtZ<gm::Matrix<float,2,1>>(void *a1, unsigned __int16 a2, unsigned int a3)
{
  if (a3 >= 0x17)
  {
    v3 = 23;
  }

  else
  {
    v3 = a3;
  }

  v4 = *a1 + 120 * *(a1 + v3 + 16);
  v5 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v4 + 72), a2);
  if (v5 == *(v4 + 84))
  {
    return &gss::PropertySetValueHelper<gss::PropertyID,gm::Matrix<float,2,1>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
  }

  else
  {
    return (*(v4 + 72) + *(v4 + 80) + 8 * v5);
  }
}

void *gss::CartoStyle<gss::PropertyID>::valueForKeyAtZ<gm::Matrix<float,2,1>>(void *a1, unsigned __int16 a2, unsigned int a3, _BYTE *a4)
{
  if (a1 && (a3 >= 0x17 ? (v6 = 23) : (v6 = a3), v7 = *a1 + 120 * *(a1 + v6 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v7, a2) != *(v7 + 12)))
  {
    v9 = geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex((v7 + 72), a2);
    if (v9 == *(v7 + 84))
    {
      return &gss::PropertySetValueHelper<gss::PropertyID,gm::Matrix<float,2,1>>::value(gss::PropertyID,gss::StylePropertySet<gss::PropertyID> const&)::_defaultValue;
    }

    else
    {
      return (*(v7 + 72) + *(v7 + 80) + 8 * v9);
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    return &gss::defaultValueForKey<gss::PropertyID,gm::Matrix<float,2,1>>(gss::PropertyID)::_defaultValue;
  }
}

uint64_t md::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::RibbonLayer(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, char *a6)
{
  v428 = *MEMORY[0x1E69E9840];
  memset(v411, 0, 24);
  if (a3)
  {
    v421 = 0;
    v422 = 0;
    *&v424[4] = 0;
    *&v423[1] = 0;
    *&v423[8] = 0;
    *&v424[12] = 1065353216;
    v13 = a3[3];
    v12 = a3[4];
    for (i = v12; ; v12 = i)
    {
      if (v13 == v12)
      {
        operator new();
      }

      v14 = ggl::CullingGrid::intersectedCellsForRibbon(*(*v13 + 88), *(*v13 + 72));
      v15 = v14;
      v16 = v14;
      v17 = v422;
      if (v422)
      {
        v18 = vcnt_s8(v422);
        v18.i16[0] = vaddlv_u8(v18);
        if (v18.u32[0] > 1uLL)
        {
          v9 = v14;
          if (v422 <= v14)
          {
            v9 = v14 % v422;
          }
        }

        else
        {
          v9 = (v422 - 1) & v14;
        }

        v19 = *(*&v421 + 8 * v9);
        if (v19)
        {
          v20 = *v19;
          if (*v19)
          {
            do
            {
              v21 = v20[1];
              if (v21 == v14)
              {
                if (*(v20 + 4) == v14)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                if (v18.u32[0] > 1uLL)
                {
                  if (v21 >= v422)
                  {
                    v21 %= v422;
                  }
                }

                else
                {
                  v21 &= v422 - 1;
                }

                if (v21 != v9)
                {
                  break;
                }
              }

              v20 = *v20;
            }

            while (v20);
          }
        }
      }

      v22 = mdm::zone_mallocator::instance(v14);
      v23 = pthread_rwlock_rdlock((v22 + 32));
      if (v23)
      {
        geo::read_write_lock::logFailure(v23, "read lock", v24);
      }

      v20 = malloc_type_zone_malloc(*v22, 0x38uLL, 0x10200408A1E2E81uLL);
      atomic_fetch_add((v22 + 24), 1u);
      geo::read_write_lock::unlock((v22 + 32));
      *v20 = 0;
      v20[1] = v16;
      *(v20 + 4) = v15;
      v20[3] = 0;
      v20[4] = 0;
      v20[5] = 0;
      v26 = (*&v424[4] + 1);
      if (!v17 || (*&v424[12] * v17) < v26)
      {
        break;
      }

LABEL_69:
      v47 = v421;
      v48 = *(*&v421 + 8 * v9);
      if (v48)
      {
        *v20 = *v48;
LABEL_77:
        *v48 = v20;
        goto LABEL_78;
      }

      *v20 = *&v423[8];
      *&v423[8] = v20;
      *(*&v47 + 8 * v9) = &v423[8];
      if (*v20)
      {
        v49 = *(*v20 + 8);
        if ((v17 & (v17 - 1)) != 0)
        {
          if (v49 >= v17)
          {
            v49 %= v17;
          }
        }

        else
        {
          v49 &= v17 - 1;
        }

        v48 = (*&v421 + 8 * v49);
        goto LABEL_77;
      }

LABEL_78:
      ++*&v424[4];
LABEL_79:
      std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>::push_back[abi:nn200100]((v20 + 3), v13++);
    }

    v27 = (v17 & (v17 - 1)) != 0;
    if (v17 < 3)
    {
      v27 = 1;
    }

    v28 = v27 | (2 * v17);
    v29 = vcvtps_u32_f32(v26 / *&v424[12]);
    if (v28 <= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    if (v30 == 1)
    {
      v30 = 2;
    }

    else if ((v30 & (v30 - 1)) != 0)
    {
      prime = std::__next_prime(v30);
      v30 = prime;
    }

    v17 = v422;
    if (v30 > v422)
    {
      goto LABEL_34;
    }

    if (v30 < v422)
    {
      prime = vcvtps_u32_f32(*&v424[4] / *&v424[12]);
      if (v422 < 3 || (v42 = vcnt_s8(v422), v42.i16[0] = vaddlv_u8(v42), v42.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v43 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v43;
        }
      }

      if (v30 <= prime)
      {
        v30 = prime;
      }

      if (v30 >= v422)
      {
        v17 = v422;
      }

      else
      {
        if (v30)
        {
LABEL_34:
          v31 = mdm::zone_mallocator::instance(prime);
          v32 = pthread_rwlock_rdlock((v31 + 32));
          if (v32)
          {
            geo::read_write_lock::logFailure(v32, "read lock", v33);
          }

          v34 = malloc_type_zone_malloc(*v31, 8 * v30, 0x2004093837F09uLL);
          atomic_fetch_add((v31 + 24), 1u);
          geo::read_write_lock::unlock((v31 + 32));
          v36 = v421;
          v421 = v34;
          if (v36)
          {
            v37 = mdm::zone_mallocator::instance(v35);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v37, v36);
          }

          v38 = 0;
          v422 = v30;
          do
          {
            *(*&v421 + 8 * v38++) = 0;
          }

          while (v30 != v38);
          v39 = *&v423[8];
          if (*&v423[8])
          {
            v40 = *(*&v423[8] + 8);
            v41 = vcnt_s8(v30);
            v41.i16[0] = vaddlv_u8(v41);
            if (v41.u32[0] > 1uLL)
            {
              if (v40 >= v30)
              {
                v40 %= v30;
              }
            }

            else
            {
              v40 &= v30 - 1;
            }

            *(*&v421 + 8 * v40) = &v423[8];
            for (j = *v39; j; v40 = v45)
            {
              v45 = j[1];
              if (v41.u32[0] > 1uLL)
              {
                if (v45 >= v30)
                {
                  v45 %= v30;
                }
              }

              else
              {
                v45 &= v30 - 1;
              }

              if (v45 != v40)
              {
                v46 = v421;
                if (!*(*&v421 + 8 * v45))
                {
                  *(*&v421 + 8 * v45) = v39;
                  goto LABEL_60;
                }

                *v39 = *j;
                *j = **(*&v46 + 8 * v45);
                **(*&v46 + 8 * v45) = j;
                j = v39;
              }

              v45 = v40;
LABEL_60:
              v39 = j;
              j = *j;
            }
          }

          v17 = v30;
          goto LABEL_64;
        }

        v50 = v421;
        v421 = 0;
        if (v50)
        {
          v51 = mdm::zone_mallocator::instance(prime);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(v51, v50);
        }

        v17 = 0;
        v422 = 0;
      }
    }

LABEL_64:
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v17 <= v16)
      {
        v9 = v16 % v17;
      }

      else
      {
        v9 = v16;
      }
    }

    else
    {
      v9 = (v17 - 1) & v16;
    }

    goto LABEL_69;
  }

  v52 = a6[32];
  if (v52 == 1)
  {
    v8 = a6[1];
    v10 = *(a6 + 4);
    v53 = *a6;
    v7 = *(a6 + 2);
    v6 = a6[24];
  }

  else
  {
    v53 = 0;
  }

  *a1 = &unk_1F2A3D860;
  std::vector<md::MuninJunction *>::vector[abi:nn200100]((a1 + 8), v411);
  *(a1 + 32) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 280) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 217) = 0u;
  if (v52)
  {
    *(a1 + 249) = v8;
    *(a1 + 252) = v10;
    *(a1 + 248) = v53;
    *(a1 + 264) = v7;
    *(a1 + 272) = v6;
    *(a1 + 280) = 1;
  }

  v379 = *(a1 + 16);
  if (*(a1 + 8) == v379)
  {
    v55 = 0;
  }

  else
  {
    v54 = *(a1 + 8);
    v388 = 0;
    v55 = 0;
    do
    {
      v56 = *v54;
      v56[1] = a1;
      v57 = v56[367];
      v58 = v56[368];
      v381 = v54;
      v383 = v58;
      while (v57 != v58)
      {
        v59 = *v57;
        v59[1] = **v57;
        v59[3] = v59[2];
        v59[5] = v59[4];
        v421 = 0;
        v422 = 0;
        *v423 = 0;
        memset(&__p, 0, sizeof(__p));
        v60 = v59[7];
        v61 = v59[8];
        if (v60 != v61)
        {
          v384 = v57;
          v399 = v59;
          v395 = v59[8];
          do
          {
            v62 = *v60;
            v407.__begin_ = 1;
            md::Ribbons::RibbonWriter<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::eliminateDuplicates(v62, &v421, &__p, &v407);
            begin = v407.__begin_;
            if (v407.__begin_ >= 2)
            {
              v64 = v421;
              v65 = 12;
              v66 = 1;
              while (1)
              {
                v67 = (*&v421 + 12 * v66);
                v69 = *v67;
                v68 = v67[1];
                v70 = 1;
                v71 = **v421.f32;
                do
                {
                  v72 = vabds_f32(v69, v71);
                  if ((v70 & 1) == 0)
                  {
                    break;
                  }

                  v70 = 0;
                  v71 = *(*&v421 + 4);
                  v69 = v68;
                }

                while (v72 < 1.0e-10);
                if (v72 >= 1.0e-10)
                {
                  break;
                }

                ++v66;
                v65 += 12;
                if (v66 == v407.__begin_)
                {
                  v73 = 0.0;
                  v74 = 1.0;
                  goto LABEL_112;
                }
              }

              for (k = 0; k != 12; k += 4)
              {
                *&v413[k] = *(*&v64 + v65) - *(*&v64 + k);
                v65 += 4;
              }

              v76 = 1.0 / sqrtf((*v413 * *v413) + (*&v413[4] * *&v413[4]));
              v74 = v76 * *v413;
              v73 = v76 * *&v413[4];
LABEL_112:
              if (begin - 1 >= 2)
              {
                v77 = (*&v64 + 24);
                v78 = 2;
                v79 = 1;
                v80 = v74;
                v81 = v73;
                while (1)
                {
                  v82 = *&v64 + 12 * v79;
                  v408 = *v82;
                  LODWORD(v409) = *(v82 + 8);
                  if (++v79 < begin)
                  {
                    v83 = v77;
                    v84 = v79;
                    while (1)
                    {
                      v85 = (*&v64 + 12 * v84);
                      v87 = *v85;
                      v86 = v85[1];
                      v88 = 1;
                      v89 = *&v408;
                      do
                      {
                        v90 = vabds_f32(v87, v89);
                        if ((v88 & 1) == 0)
                        {
                          break;
                        }

                        v88 = 0;
                        v89 = *(&v408 + 1);
                        v87 = v86;
                      }

                      while (v90 < 1.0e-10);
                      if (v90 >= 1.0e-10)
                      {
                        break;
                      }

                      ++v84;
                      v83 += 3;
                      if (v84 == begin)
                      {
                        v80 = v74;
                        v81 = v73;
                        goto LABEL_125;
                      }
                    }

                    for (m = 0; m != 12; m += 4)
                    {
                      v92 = *v83++;
                      *&v413[m] = v92 - *(&v408 + m);
                    }

                    v93 = 1.0 / sqrtf((*v413 * *v413) + (*&v413[4] * *&v413[4]));
                    v80 = v93 * *v413;
                    v81 = v93 * *&v413[4];
                  }

LABEL_125:
                  v94 = atan2f(v81, v80);
                  v95 = v94 - atan2f(v73, v74);
                  v96 = v95;
                  if (v95 > 3.14159265)
                  {
                    break;
                  }

                  if (v96 < -3.14159265)
                  {
                    v97 = 6.28318531;
                    goto LABEL_129;
                  }

LABEL_130:
                  v98 = fabsf(v95);
                  v99 = fmaxf(ceilf(v98 * 5.7296), 1.0);
                  if (v99 < 2)
                  {
                    v78 += 2;
                  }

                  else
                  {
                    v78 += 4 * (v98 < 1.5708) + 2 * v99;
                  }

                  v77 += 3;
                  v73 = v81;
                  v74 = v80;
                  if (v79 == (begin - 1))
                  {
                    goto LABEL_136;
                  }
                }

                v97 = -6.28318531;
LABEL_129:
                v95 = v96 + v97;
                goto LABEL_130;
              }

              v78 = 2;
LABEL_136:
              v100 = 2;
              if (*(v62 + 96))
              {
                v100 = 4;
              }

              v101 = v100 + v78;
              if (*(v62 + 97))
              {
                v101 += 2;
              }

              if (v101 < 0x10000)
              {
                v104 = 3 * v101 + *(v62 + 24);
                v102 = *(v62 + 8) + v101;
                v103 = v104 - 6;
              }

              else
              {
                v102 = *(v62 + 8);
                v103 = *(v62 + 24);
              }

              v59 = v399;
              v61 = v395;
              *(v62 + 16) = v102;
              *(v62 + 32) = v103;
              *(v62 + 48) = *(v62 + 40);
            }

            v105 = *v60++;
            v59[1] = v105[2] + v59[1] - v105[1];
            v59[3] = v105[4] + v59[3] - v105[3];
            v59[5] = v105[6] + v59[5] - v105[5];
          }

          while (v60 != v61);
          v57 = v384;
          if (__p.__begin_)
          {
            operator delete(__p.__begin_);
          }
        }

        if (v421)
        {
          operator delete(*&v421);
        }

        if (((v388 >> 3) + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (v388 >> 3 != -1)
        {
          if (!(((v388 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v106 = (8 * (v388 >> 3));
        *v106 = *v57;
        memcpy(0, 0, v388);
        v55 = (v106 + 1);
        ++v57;
        v388 = (v106 + 1);
        v58 = v383;
      }

      v54 = v381 + 1;
    }

    while (v381 + 1 != v379);
    if (*(a1 + 232))
    {
      operator new();
    }
  }

  v107 = 0;
  v108 = 0;
  v109 = 0;
  *v413 = 0;
  v110 = v55 >> 3;
  do
  {
    if (v109 == v110 || (*(*(8 * v109) + 8) + v108 - **(8 * v109)) >= 0x10000)
    {
      v408 = "BatchType/IData";
      operator new();
    }

    if (v109 < v55 >> 3)
    {
      v111 = *(8 * v109);
      v108 += v111->i64[1] - v111->i64[0];
      v112 = vaddq_s64(v111[1], v111[2]);
      v107 += vsubq_s64(vdupq_laneq_s64(v112, 1), v112).u64[0];
      *v413 = v107;
    }

    v110 = v55 >> 3;
    ++v109;
  }

  while (v109 <= v55 >> 3);
  if (v411[0])
  {
    operator delete(v411[0]);
  }

  *a1 = &unk_1F2A3D840;
  *(a1 + 288) = *a4;
  v113 = a4[1];
  *(a1 + 296) = v113;
  if (v113)
  {
    atomic_fetch_add_explicit((v113 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 304) = *a5;
  v114 = a5[1];
  *(a1 + 312) = v114;
  if (v114)
  {
    atomic_fetch_add_explicit((v114 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 320) = 0;
  v115 = *(a1 + 8);
  v366 = *(a1 + 16);
  if (v115 != v366)
  {
    v116 = 1.0;
    v117 = -1.0;
    v396 = xmmword_1B33B0590;
    do
    {
      v367 = v115;
      v118 = *v115;
      v119 = *(*v115 + 2936);
      v120 = *(v118 + 2944);
      v369 = v120;
      while (v119 != v120)
      {
        v370 = v119;
        v121 = *v119;
        ggl::DataAccess<ggl::RouteLine::DefaultVbo>::DataAccess(&__p, **((*v119)[11] + 64), **v119, (*v119)[1], 1, a2);
        v122 = v121[2];
        v124 = v121[4];
        v123 = v121[5];
        if (v123 == v124)
        {
          v125 = v121[3];
        }

        else
        {
          if (v124 < v122)
          {
            v122 = v121[4];
          }

          if (v121[3] <= v123)
          {
            v125 = v121[5];
          }

          else
          {
            v125 = v121[3];
          }
        }

        v376 = v420;
        v126 = ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v411, *(v121[11] + 96), v122, v125, 1, 1, a2);
        v127 = v121[2];
        v128 = v121[4];
        v408 = 0;
        v409 = 0;
        v410 = 0;
        memset(&v407, 0, sizeof(v407));
        v372 = v121;
        v129 = v121[7];
        v373 = (v121 + 7);
        v130 = v121[8];
        if (v129 != v130)
        {
          v131 = v412 + 2 * v128 - 2 * v122;
          v132 = v412 + 2 * v127 - 2 * v122;
          v133 = v396;
          v134 = v376;
          v375 = v130;
          do
          {
            v135 = *v129;
            *v413 = xmmword_1B33B05A0;
            *&v413[16] = xmmword_1B33B05B0;
            v136 = *(v135 + 16);
            if (v136 == *(v135 + 8))
            {
              v137 = *(v135 + 16);
            }

            else
            {
              v380 = v132;
              v378 = v131;
              v397 = v133;
              v416 = 1;
              md::Ribbons::RibbonWriter<md::Ribbons::RouteStyledOverlayRibbonDescriptor>::eliminateDuplicates(v135, &v408, &v407, &v416);
              v140 = v416 - 2;
              if (v416 >= 2)
              {
                v389 = v416;
                v141 = 0;
                v142 = v408;
                __src = v408;
                v387 = v407.__begin_;
                v143 = 0.0;
                v144 = v408;
                v145 = xmmword_1B33B0C70;
                v133 = v397;
                do
                {
                  for (n = 0; n != 3; ++n)
                  {
                    v421.f32[n] = *&v144[n * 4 + 12] - *&v144[n * 4];
                  }

                  v143 = sqrtf(vaddv_f32(vmul_f32(v421, v421))) + v143;
                  v144 += 12;
                }

                while (v141++ != v140);
                v148 = 0;
                *&v138 = v143;
                do
                {
                  *(&v417 + v148 * 4) = *&__src[v148 * 4 + 12] - *&__src[v148 * 4];
                  ++v148;
                }

                while (v148 != 3);
                v149 = v116 / v143;
                v150 = *&v138 <= 1.0e-10;
                DWORD1(v138) = 0;
                if (v150)
                {
                  v151 = 0.0;
                }

                else
                {
                  v151 = v149;
                }

                v152 = sqrtf((v417 * v417) + (v418 * v418));
                v153 = 1;
                while (1)
                {
                  v154 = &__src[12 * v153];
                  v156 = *v154;
                  v155 = v154[1];
                  v157 = 1;
                  v158 = *v142;
                  do
                  {
                    v159 = vabds_f32(v156, v158);
                    if ((v157 & 1) == 0)
                    {
                      break;
                    }

                    v157 = 0;
                    v158 = v142[1];
                    v156 = v155;
                  }

                  while (v159 < 1.0e-10);
                  if (v159 >= 1.0e-10)
                  {
                    break;
                  }

                  ++v153;
                  v148 += 3;
                  if (v153 == v389)
                  {
                    v160 = 0.0;
                    LODWORD(v138) = 1.0;
                    goto LABEL_208;
                  }
                }

                for (ii = 0; ii != 3; ++ii)
                {
                  *(&v417 + ii * 4) = v142[v148++] - v142[ii];
                }

                v162 = v116 / sqrtf((v417 * v417) + (v418 * v418));
                *&v138 = v162 * v417;
                v160 = v162 * v418;
LABEL_208:
                v163 = *v387;
                v421 = *v387;
                for (jj = 2; jj != 5; ++jj)
                {
                  v165 = *v142++;
                  v421.i32[jj] = v165;
                }

                v425 = 0;
                *v424 = -v160;
                *&v424[4] = v138;
                v427 = 0;
                v166 = *(v135 + 96);
                v377 = v134;
                if (v166 == 1)
                {
                  v167 = 0;
                  v426 = 1;
                  *&v423[4] = -v160 - *&v138;
                  *&v423[8] = *&v138 - v160;
                  *&v423[12] = v160 - *&v138;
                  *&v423[16] = -(v160 + *&v138);
                  *&v424[8] = xmmword_1B33B0570;
                  v168 = *(v135 + 104) + 12 * v163;
                  v169 = *(v168 + 8);
                  v170 = *(v168 + 9);
                  v171 = *v168;
                  do
                  {
                    v172 = 0;
                    v173 = v166;
                    do
                    {
                      *(v134 + v172) = *&v423[v172 - 8];
                      v172 += 4;
                    }

                    while (v172 != 12);
                    LOBYTE(v166) = 0;
                    v174.i64[0] = *&v423[8 * v167 + 4];
                    v174.i64[1] = *&v424[8 * v167 + 8];
                    v175.i64[0] = 0xBF000000BF000000;
                    v175.i64[1] = 0xBF000000BF000000;
                    v139 = vcvtq_s32_f32(vmlaq_f32(v175, xmmword_1B33B0C70, v174));
                    *(v134 + 16) = vmovn_s32(v139);
                    *(v134 + 24) = *(v135 + 100) + *&v425;
                    *(v134 + 36) = v169;
                    *(v134 + 37) = v170;
                    *(v134 + 28) = v171;
                    v134 += 48;
                    v167 = 1;
                  }

                  while ((v173 & 1) != 0);
                }

                v176 = 0;
                v177 = v138;
                *(&v177 + 1) = v160;
                v426 = 0;
                *&v423[4] = -v160;
                *&v423[8] = v138;
                *&v423[12] = v160;
                *&v423[16] = -*&v138;
                *&v424[8] = xmmword_1B33B0590;
                v178 = *(v135 + 104) + 12 * v163;
                v179 = *(v178 + 8);
                v180 = *(v178 + 9);
                v181 = *v178;
                v182 = 1;
                do
                {
                  v183 = 0;
                  v184 = v182;
                  do
                  {
                    *(v134 + v183) = *(&v421 + v183 + 8);
                    v183 += 4;
                  }

                  while (v183 != 12);
                  v182 = 0;
                  v185.i64[0] = *&v423[8 * v176 + 4];
                  v185.i64[1] = *&v424[8 * v176 + 8];
                  v186.i64[0] = 0xBF000000BF000000;
                  v186.i64[1] = 0xBF000000BF000000;
                  *(v134 + 16) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v186, xmmword_1B33B0C70, v185)));
                  *(v134 + 24) = *(v135 + 100) + *&v425;
                  *(v134 + 36) = v179;
                  *(v134 + 37) = v180;
                  *(v134 + 28) = v181;
                  v134 += 48;
                  v176 = 1;
                }

                while ((v184 & 1) != 0);
                v374 = v129;
                v187 = v389;
                v385 = v389 - 1;
                if (v389 - 1 < 2)
                {
                  v311 = v177;
                  v188 = __src;
                }

                else
                {
                  v188 = __src;
                  v189 = (__src + 24);
                  v190 = __src + 12;
                  v191 = 1;
                  v382 = v151;
                  do
                  {
                    v192 = 0;
                    v406 = v387[v191];
                    v421 = v406;
                    v193 = &v188[12 * v191];
                    v414 = *v193;
                    v415 = *(v193 + 2);
                    do
                    {
                      *(&v417 + v192 * 4) = v189[v192] - *(&v414 + v192 * 4);
                      ++v192;
                    }

                    while (v192 != 3);
                    v194 = v417;
                    v195 = v418;
                    v400 = v191 + 1;
                    if (v191 + 1 >= v187)
                    {
LABEL_230:
                      v139 = v177;
                      v204 = *(&v177 + 1);
                      v205 = *(&v177 + 1);
                      v206 = *&v177;
                    }

                    else
                    {
                      v196 = v189;
                      v197 = v191 + 1;
                      while (1)
                      {
                        v198 = &v188[12 * v197];
                        v200 = *v198;
                        v199 = v198[1];
                        v201 = 1;
                        v202 = *&v414;
                        do
                        {
                          v203 = vabds_f32(v200, v202);
                          if ((v201 & 1) == 0)
                          {
                            break;
                          }

                          v201 = 0;
                          v202 = *(&v414 + 1);
                          v200 = v199;
                        }

                        while (v203 < 1.0e-10);
                        if (v203 >= 1.0e-10)
                        {
                          break;
                        }

                        ++v197;
                        v196 += 3;
                        if (v197 == v187)
                        {
                          goto LABEL_230;
                        }
                      }

                      for (kk = 0; kk != 12; kk += 4)
                      {
                        v208 = *v196++;
                        *(&v417 + kk) = v208 - *(&v414 + kk);
                      }

                      v209 = v116 / sqrtf((v417 * v417) + (v418 * v418));
                      v206 = v209 * v417;
                      v205 = v209 * v418;
                      v204 = *(&v177 + 1);
                      *v139.i32 = v209 * v417;
                    }

                    v210 = v206 + *&v177;
                    v211 = v205 + v204;
                    v212 = (v210 * v210) + (v211 * v211);
                    if (v212 <= 0.0)
                    {
                      v215 = *(&v177 + 1);
                      LODWORD(v214) = v177;
                      v404 = v177;
                      v204 = *(&v177 + 1);
                    }

                    else
                    {
                      v213 = v116 / sqrtf(v212);
                      v214 = -(v211 * v213);
                      v215 = v213 * v210;
                      v404 = __PAIR64__(LODWORD(v215), LODWORD(v214));
                    }

                    v401 = *&v177;
                    v216 = 0;
                    v394 = sqrtf((v194 * v194) + (v195 * v195));
                    *&v139.i32[1] = v205;
                    v398 = v139;
                    v217 = sqrtf(fmaxf(-(v117 + (((v206 * v214) + (v205 * v215)) * ((v206 * v214) + (v205 * v215)))), 0.1));
                    v403 = v214 / v217;
                    do
                    {
                      *(&v421 + v216 + 8) = *&v190[v216];
                      v216 += 4;
                    }

                    while (v216 != 12);
                    *&v425 = v152;
                    *(&v425 + 1) = v152 * v151;
                    *&v424[8] = xmmword_1B33B0590;
                    *v424 = v214;
                    *&v424[4] = v215;
                    v391 = v215;
                    v427 = 1;
                    v218 = atan2f(v205, v206);
                    v220 = v218 - atan2f(v204, v401);
                    v221 = v220;
                    if (v220 <= 3.14159265)
                    {
                      v222 = &xmmword_1B33B2000;
                      v145 = xmmword_1B33B0C70;
                      if (v221 < -3.14159265)
                      {
                        v220 = v221 + 6.28318531;
                      }
                    }

                    else
                    {
                      v220 = v221 + -6.28318531;
                      v222 = &xmmword_1B33B2000;
                      v145 = xmmword_1B33B0C70;
                    }

                    *&v219 = v391 / v217;
                    v223 = fabsf(v220);
                    v224 = fmaxf(ceilf(v223 * *(v222 + 437)), v116);
                    if (v224 < 2)
                    {
                      v232 = 0;
                      *&v423[4] = v403;
                      *&v423[8] = v219;
                      *&v423[12] = -v403;
                      *&v423[16] = -*&v219;
                      v233 = *(v135 + 104) + 12 * v406.u32[0];
                      v234 = *(v233 + 8);
                      v235 = *(v233 + 9);
                      v236 = *v233;
                      v237 = 1;
                      v133 = v398;
                      do
                      {
                        v238 = 0;
                        v239 = v237;
                        do
                        {
                          *(v134 + v238) = *&v423[v238 - 8];
                          v238 += 4;
                        }

                        while (v238 != 12);
                        v237 = 0;
                        v240.i64[0] = *&v423[8 * v232 + 4];
                        v240.i64[1] = *&v424[8 * v232 + 8];
                        v241.i64[0] = 0xBF000000BF000000;
                        v241.i64[1] = 0xBF000000BF000000;
                        *(v134 + 16) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v241, v145, v240)));
                        *(v134 + 24) = *(v135 + 100) + *&v425;
                        *(v134 + 36) = v234;
                        *(v134 + 37) = v235;
                        *(v134 + 28) = v236;
                        v134 += 48;
                        v232 = 1;
                      }

                      while ((v239 & 1) != 0);
                    }

                    else
                    {
                      v225 = __PAIR64__(v219, LODWORD(v403));
                      v402 = v219;
                      v392 = __PAIR64__(v219, LODWORD(v403));
                      if (v223 < 1.5708)
                      {
                        if (v220 >= 0.0)
                        {
                          *&v423[4] = v403;
                          *&v423[8] = v219;
                          v242 = 3.14159265 - v220;
                          v243 = __sincosf_stret(v242);
                          v230 = -((*&v402 * v243.__sinval) - (v403 * v243.__cosval));
                          v231 = (v403 * v243.__sinval) + (*&v402 * v243.__cosval);
                          v225 = v392;
                        }

                        else
                        {
                          v226 = -3.14159265 - v220;
                          v228 = __sincosf_stret(v226);
                          v227.f32[0] = v228.__cosval;
                          v229.f32[0] = -v228.__sinval;
                          v229.i32[1] = LODWORD(v228.__sinval);
                          v225 = v392;
                          *&v423[4] = vmls_lane_f32(vrev64_s32(vmul_f32(v392, v229)), v392, v227, 0);
                          v230 = -v403;
                          v231 = -*&v402;
                        }

                        v244 = 0;
                        *&v423[12] = v230;
                        *&v423[16] = v231;
                        v245 = *(v135 + 104) + 12 * v406.u32[0];
                        v246 = *(v245 + 8);
                        v247 = *(v245 + 9);
                        v248 = *v245;
                        v249 = 1;
                        do
                        {
                          v250 = 0;
                          v251 = v249;
                          do
                          {
                            *(v134 + v250) = *(&v421 + v250 + 8);
                            v250 += 4;
                          }

                          while (v250 != 12);
                          v249 = 0;
                          v252.i64[0] = *&v423[8 * v244 + 4];
                          v252.i64[1] = *&v424[8 * v244 + 8];
                          v253.i64[0] = 0xBF000000BF000000;
                          v253.i64[1] = 0xBF000000BF000000;
                          *(v134 + 16) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v253, xmmword_1B33B0C70, v252)));
                          *(v134 + 24) = *(v135 + 100) + *&v425;
                          *(v134 + 36) = v246;
                          *(v134 + 37) = v247;
                          *(v134 + 28) = v248;
                          v134 += 48;
                          v244 = 1;
                        }

                        while ((v251 & 1) != 0);
                        v427 = 0;
                        v406 = v421;
                      }

                      v254 = 0;
                      v255 = v224 + v117;
                      v256 = vneg_f32(v225);
                      v257 = 1.0 / v255;
                      do
                      {
                        v258 = __sincosf_stret(((v254 * v257) + -0.5) * v220);
                        v259 = vrev64_s32(vmul_n_f32(v404, v258.__sinval));
                        v260 = vmul_n_f32(v404, v258.__cosval);
                        v261.i32[0] = vsub_f32(v260, v259).u32[0];
                        v261.i32[1] = vadd_f32(v260, v259).i32[1];
                        *v424 = v261;
                        if (v223 >= 1.5708)
                        {
                          v272 = 0;
                          *&v423[4] = v261;
                          *&v423[12] = vneg_f32(v261);
                          v273 = *(v135 + 104) + 12 * *&v406;
                          v274 = *(v273 + 8);
                          v275 = *(v273 + 9);
                          v276 = *v273;
                          v277 = 1;
                          v145 = xmmword_1B33B0C70;
                          do
                          {
                            v278 = 0;
                            v279 = v277;
                            do
                            {
                              *(v134 + v278) = *&v423[v278 - 8];
                              v278 += 4;
                            }

                            while (v278 != 12);
                            v277 = 0;
                            v280.i64[0] = *&v423[8 * v272 + 4];
                            v280.i64[1] = *&v424[8 * v272 + 8];
                            v281.i64[0] = 0xBF000000BF000000;
                            v281.i64[1] = 0xBF000000BF000000;
                            *(v134 + 16) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v281, xmmword_1B33B0C70, v280)));
                            *(v134 + 24) = *(v135 + 100) + *&v425;
                            *(v134 + 36) = v274;
                            *(v134 + 37) = v275;
                            *(v134 + 28) = v276;
                            v134 += 48;
                            v272 = 1;
                          }

                          while ((v279 & 1) != 0);
                          v427 = 0;
                        }

                        else
                        {
                          v145 = xmmword_1B33B0C70;
                          if (v220 >= 0.0)
                          {
                            v282 = 0;
                            *&v423[4] = v403;
                            *&v423[8] = v402;
                            *&v423[12] = vneg_f32(v261);
                            v283 = *(v135 + 104) + 12 * *&v406;
                            v284 = *(v283 + 8);
                            v285 = *(v283 + 9);
                            v286 = *v283;
                            v287 = 1;
                            do
                            {
                              v288 = 0;
                              v289 = v287;
                              do
                              {
                                *(v134 + v288) = *&v423[v288 - 8];
                                v288 += 4;
                              }

                              while (v288 != 12);
                              v287 = 0;
                              v290.i64[0] = *&v423[8 * v282 + 4];
                              v290.i64[1] = *&v424[8 * v282 + 8];
                              v291.i64[0] = 0xBF000000BF000000;
                              v291.i64[1] = 0xBF000000BF000000;
                              *(v134 + 16) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v291, xmmword_1B33B0C70, v290)));
                              *(v134 + 24) = *(v135 + 100) + *&v425;
                              *(v134 + 36) = v284;
                              *(v134 + 37) = v285;
                              *(v134 + 28) = v286;
                              v134 += 48;
                              v282 = 1;
                            }

                            while ((v289 & 1) != 0);
                          }

                          else
                          {
                            v262 = 0;
                            *&v423[4] = v261;
                            *&v423[12] = v256;
                            v263 = *(v135 + 104) + 12 * *&v406;
                            v264 = *(v263 + 8);
                            v265 = *(v263 + 9);
                            v266 = *v263;
                            v267 = 1;
                            do
                            {
                              v268 = 0;
                              v269 = v267;
                              do
                              {
                                *(v134 + v268) = *&v423[v268 - 8];
                                v268 += 4;
                              }

                              while (v268 != 12);
                              v267 = 0;
                              v270.i64[0] = *&v423[8 * v262 + 4];
                              v270.i64[1] = *&v424[8 * v262 + 8];
                              v271.i64[0] = 0xBF000000BF000000;
                              v271.i64[1] = 0xBF000000BF000000;
                              *(v134 + 16) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v271, xmmword_1B33B0C70, v270)));
                              *(v134 + 24) = *(v135 + 100) + *&v425;
                              *(v134 + 36) = v264;
                              *(v134 + 37) = v265;
                              *(v134 + 28) = v266;
                              v134 += 48;
                              v262 = 1;
                            }

                            while ((v269 & 1) != 0);
                          }
                        }

                        ++v254;
                      }

                      while (v254 != v224);
                      v151 = v382;
                      if (v223 >= 1.5708)
                      {
                        v116 = 1.0;
                        v117 = -1.0;
                        v133 = v398;
                      }

                      else
                      {
                        v292 = v220;
                        v116 = 1.0;
                        v117 = -1.0;
                        if (v220 >= 0.0)
                        {
                          *&v423[4] = v403;
                          *&v423[8] = v402;
                          v299 = v292 + -3.14159265;
                          v300 = __sincosf_stret(v299);
                          v139.i64[1] = *(&v402 + 1);
                          v297 = -((*&v402 * v300.__sinval) - (v403 * v300.__cosval));
                          v298 = (v403 * v300.__sinval) + (*&v402 * v300.__cosval);
                        }

                        else
                        {
                          v293 = v292 + 3.14159265;
                          v295 = __sincosf_stret(v293);
                          v294.f32[0] = v295.__cosval;
                          v296.f32[0] = -v295.__sinval;
                          v296.i32[1] = LODWORD(v295.__sinval);
                          *&v423[4] = vmls_lane_f32(vrev64_s32(vmul_f32(v392, v296)), v392, v294, 0);
                          v297 = -v403;
                          v298 = -*&v402;
                        }

                        v301 = 0;
                        *&v423[12] = v297;
                        *&v423[16] = v298;
                        v302 = *(v135 + 104) + 12 * *&v421;
                        v303 = *(v302 + 8);
                        v304 = *(v302 + 9);
                        v305 = *v302;
                        v306 = 1;
                        v145 = xmmword_1B33B0C70;
                        v133 = v398;
                        do
                        {
                          v307 = 0;
                          v308 = v306;
                          do
                          {
                            *(v134 + v307) = *&v423[v307 - 8];
                            v307 += 4;
                          }

                          while (v307 != 12);
                          v306 = 0;
                          v309.i64[0] = *&v423[8 * v301 + 4];
                          v309.i64[1] = *&v424[8 * v301 + 8];
                          v310.i64[0] = 0xBF000000BF000000;
                          v310.i64[1] = 0xBF000000BF000000;
                          *(v134 + 16) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v310, xmmword_1B33B0C70, v309)));
                          *(v134 + 24) = *(v135 + 100) + *&v425;
                          *(v134 + 36) = v303;
                          *(v134 + 37) = v304;
                          *(v134 + 28) = v305;
                          v134 += 48;
                          v301 = 1;
                        }

                        while ((v308 & 1) != 0);
                      }
                    }

                    v189 += 3;
                    v152 = v394 + v152;
                    v190 += 12;
                    v311 = v133;
                    *&v177 = v133;
                    v188 = __src;
                    v191 = v400;
                    v187 = v389;
                  }

                  while (v400 != v385);
                }

                v312 = &v188[12 * v385];
                v313 = &v188[12 * v187];
                v314 = *v312;
                v315 = *(v313 - 6);
                v316 = 1;
                do
                {
                  v317 = vabds_f32(v314, v315);
                  if ((v316 & 1) == 0)
                  {
                    break;
                  }

                  v316 = 0;
                  v315 = *(v313 - 5);
                  v314 = v312[1];
                }

                while (v317 < 1.0e-10);
                v129 = v374;
                if (v317 >= 1.0e-10)
                {
                  for (mm = 0; mm != 12; mm += 4)
                  {
                    *(&v417 + mm) = *&v313[mm - 12] - *&v313[mm - 24];
                  }

                  v320 = v116 / sqrtf((v417 * v417) + (v418 * v418));
                  *&v311 = v320 * v417;
                  *&v318 = v320 * v418;
                  *(&v311 + 1) = v320 * v418;
                }

                else
                {
                  LODWORD(v318) = HIDWORD(v311);
                }

                *&v423[4] = -*&v318;
                *&v423[8] = v311;
                *&v423[12] = v318;
                *&v423[16] = -*&v311;
                v427 = 0;
                v321 = v387[v187 - 1];
                v421 = v321;
                for (nn = 2; nn != 5; ++nn)
                {
                  v323 = *v312++;
                  v421.i32[nn] = v323;
                }

                v324 = 0;
                *v424 = -*&v318;
                *&v424[4] = v311;
                *&v425 = v152;
                *(&v425 + 1) = v152 * v151;
                v325 = *(v135 + 104) + 12 * v321;
                v326 = *(v325 + 8);
                v327 = *(v325 + 9);
                v328 = *v325;
                v329 = 1;
                do
                {
                  v330 = 0;
                  v331 = v329;
                  do
                  {
                    *(v134 + v330) = *(&v421 + v330 + 8);
                    v330 += 4;
                  }

                  while (v330 != 12);
                  v329 = 0;
                  v332.i64[0] = *&v423[8 * v324 + 4];
                  v332.i64[1] = *&v424[8 * v324 + 8];
                  v333.i64[0] = 0xBF000000BF000000;
                  v333.i64[1] = 0xBF000000BF000000;
                  *(v134 + 16) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v333, v145, v332)));
                  *(v134 + 24) = *(v135 + 100) + *&v425;
                  *(v134 + 36) = v326;
                  *(v134 + 37) = v327;
                  *(v134 + 28) = v328;
                  v134 += 48;
                  v324 = 1;
                }

                while ((v331 & 1) != 0);
                v334 = *(v135 + 97);
                if (v334 == 1)
                {
                  v335 = 0;
                  v336.i64[0] = v311;
                  v336.i64[1] = v311;
                  HIDWORD(v318) = v311;
                  v337 = vdupq_lane_s64(v318, 0);
                  v338 = vsubq_f32(v336, v337);
                  v339 = vaddq_f32(v336, v337);
                  v339.i32[0] = v338.i32[0];
                  v426 = 1;
                  v339.i32[3] = v338.i32[3];
                  *&v423[4] = v339;
                  *&v424[8] = *&v413[8];
                  v340 = *(v135 + 104) + 12 * *&v421;
                  v341 = *(v340 + 8);
                  v342 = *v340;
                  v343 = *(v340 + 9);
                  do
                  {
                    v344 = 0;
                    v345 = v334;
                    do
                    {
                      *(v134 + v344) = *&v423[v344 - 8];
                      v344 += 4;
                    }

                    while (v344 != 12);
                    LOBYTE(v334) = 0;
                    v346.i64[0] = *&v423[8 * v335 + 4];
                    v346.i64[1] = *&v424[8 * v335 + 8];
                    v347.i64[0] = 0xBF000000BF000000;
                    v347.i64[1] = 0xBF000000BF000000;
                    *(v134 + 16) = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v347, v145, v346)));
                    *(v134 + 24) = *(v135 + 100) + *&v425;
                    *(v134 + 36) = v341;
                    *(v134 + 37) = v343;
                    *(v134 + 28) = v342;
                    v134 += 48;
                    v335 = 1;
                  }

                  while ((v345 & 1) != 0);
                }

                v348 = *(v135 + 8);
                v349 = *(v135 + 16) - v348;
                v350 = v349 >> 1;
                if (v349 >= 4)
                {
                  v351 = 2;
                  if (v350 > 2)
                  {
                    v351 = v350;
                  }

                  v352 = v351 - 1;
                  v353 = *(v135 + 8);
                  v354 = v380;
                  do
                  {
                    *v354 = v353;
                    v355 = v353 + 1;
                    v354[1] = v353 + 1;
                    v356 = v353 + 3;
                    LODWORD(v353) = v353 + 2;
                    v354[2] = v353;
                    v354[3] = v355;
                    v354[4] = v356;
                    v354[5] = v353;
                    v354 += 6;
                    --v352;
                  }

                  while (v352);
                }

                v134 = v377;
                v131 = v378;
                if (*(v135 + 48) != *(v135 + 40))
                {
                  v357 = v350 - *(v135 + 97);
                  v358 = 1;
                  if (*(v135 + 96))
                  {
                    v358 = 2;
                  }

                  if (v357 > v358)
                  {
                    v359 = v348 + 2 * v358;
                    v360 = v378;
                    do
                    {
                      *v360 = v359 - 2;
                      *(v360 + 1) = v359;
                      v360 = (v360 + 4);
                      ++v358;
                      v359 += 2;
                    }

                    while (v357 > v358);
                  }
                }
              }

              else
              {
                v133 = v397;
                v131 = v378;
              }

              v135 = *v129;
              v136 = *(*v129 + 8);
              v137 = *(*v129 + 16);
              v130 = v375;
              v132 = v380;
            }

            v134 += 48 * (v137 - v136);
            v132 += 2 * (*(v135 + 32) - *(v135 + 24));
            v131 += 2 * (*(v135 + 48) - *(v135 + 40));
            ++v129;
          }

          while (v129 != v130);
          v396 = v133;
          v129 = *v373;
        }

        v361 = v372;
        if (v129)
        {
          v362 = v372[8];
          v363 = v129;
          if (v362 != v129)
          {
            do
            {
              std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>::reset[abi:nn200100](--v362);
            }

            while (v362 != v129);
            v363 = *v373;
            v361 = v372;
          }

          v361[8] = v129;
          v364 = mdm::zone_mallocator::instance(v126);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>>(v364, v363);
          *v373 = 0;
          v373[1] = 0;
          v373[2] = 0;
        }

        *v373 = 0;
        v373[1] = 0;
        v373[2] = 0;
        v422 = 0;
        *v423 = 0;
        v421 = 0;
        *v413 = &v421;
        std::vector<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,geo::allocator_adapter<std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v413);
        if (v407.__begin_)
        {
          operator delete(v407.__begin_);
        }

        if (v408)
        {
          operator delete(v408);
        }

        ggl::BufferMemory::~BufferMemory(v411);
        ggl::BufferMemory::~BufferMemory(&__p);
        v120 = v369;
        v119 = v370 + 1;
      }

      v115 = v367 + 1;
    }

    while (v367 + 1 != v366);
  }

  return a1;
}

void md::RouteLineLayer::~RouteLineLayer(md::RouteLineLayer *this)
{
  *this = &unk_1F2A3D320;
  v2 = *(this + 42);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A3D840;
  v3 = *(this + 39);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 37);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3D320;
  v2 = *(this + 42);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A3D840;
  v3 = *(this + 39);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 37);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(this);
}

void *md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3D860;
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

  v6 = a1[30];
  a1[30] = 0;
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

void md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3D840;
  v2 = a1[39];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[37];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F2A3D840;
  v2 = a1[39];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[37];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::RouteLineRibbonDescriptor>::~RibbonLayer(a1);
}

void std::unique_ptr<md::RouteLineRibbon,mdm::TypeDeleter<md::RouteLineRibbon>>::reset[abi:nn200100](uint64_t (****result)(void))
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::RouteLineRibbon>(v3, v1);
  }
}

void non-virtual thunk toggl::VertexDataTyped<ggl::RouteLine::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::RouteLine::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::RouteLine::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A3D880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}