void md::PolylineOverlayBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~PolylineOverlayBatch(void *a1)
{
  *a1 = &unk_1F2A11158;
  v2 = a1[189];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[187];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[185];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *a1 = &unk_1F2A11178;
  v5 = a1[181];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::PolylineOverlayBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~PolylineOverlayBatch(void *a1)
{
  *a1 = &unk_1F2A11158;
  v2 = a1[189];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[187];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a1[185];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *a1 = &unk_1F2A11178;
  v5 = a1[181];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>::~RibbonBatch(a1);
}

void ggl::ConstantDataTyped<ggl::GradientPolylineOverlayRibbon::GradientInfo>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::GradientPolylineOverlayRibbon::GradientInfo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaFillShader>>::pipelineStateForFunctionConstants(uint64_t *a1, const BOOL *a2, char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  v5 = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 13);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == (a2 + 104) || v5 < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B2EF4CF0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::AlphaPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayAlphaShader>>::pipelineStateForFunctionConstants(uint64_t *a1, const BOOL *a2, char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  v5 = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 13);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == (a2 + 104) || v5 < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B2EF5290(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void md::PolylinePipelineStateManager<md::Ribbons::GradientPolylineOverlayRibbonDescriptor,ggl::GradientPolylineOverlayRibbon::FillPipelineState,std::shared_ptr<ggl::GradientPolylineOverlayFillShader>>::pipelineStateForFunctionConstants(uint64_t *a1, const BOOL *a2, char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v13[0] = *a3;
  v13[1] = a3[1];
  v13[2] = a3[2];
  BYTE6(v14) = a3[3];
  v5 = ggl::packFunctionConstantKey(v13, a2);
  v6 = *(a2 + 13);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = (a2 + 104);
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= v5;
    v10 = v8 < v5;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == (a2 + 104) || v5 < v7[4])
  {
LABEL_9:
    operator new();
  }

  v12 = v7[5];
  v11 = v7[6];
  *a1 = v12;
  a1[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1B2EF5830(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::GradientPolylineOverlayRibbon::FillPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::GradientPolylineOverlayRibbon::AlphaPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11228;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A111F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

ggl::zone_mallocator *std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *>(uint64_t a1, void *a2)
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

void ggl::ConstantDataTyped<ggl::PolylineOverlayRibbon::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PolylineOverlayRibbon::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A10C20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::PolylineOverlayStyle::GradientColorStop>>(unint64_t a1)
{
  if (a1 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void md::PolylineOverlayStyle::setFillColor(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 49);
  for (i = 0; i != 4; ++i)
  {
    a1[i + 34] = *(a2 + i * 4);
  }

  os_unfair_lock_unlock(a1 + 49);
}

ggl::zone_mallocator *md::PolylineOverlaySharedResources::resetPools(ggl::zone_mallocator *this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = *(v2 + 4);
  v4 = *(v2 + 5);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3++;
      v26 = v5;
      this = std::vector<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v2, &v26);
    }

    while (v3 != v4);
    v3 = *(v2 + 4);
    v4 = *(v2 + 5);
  }

  if (v3 != v4)
  {
    *(v2 + 5) = v3;
  }

  v6 = *(v1 + 17);
  v7 = *(v6 + 4);
  v8 = *(v6 + 5);
  if (v7 != v8)
  {
    do
    {
      v9 = *v7++;
      v26 = v9;
      this = std::vector<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v6, &v26);
    }

    while (v7 != v8);
    v7 = *(v6 + 4);
    v8 = *(v6 + 5);
  }

  if (v7 != v8)
  {
    *(v6 + 5) = v7;
  }

  v10 = *(v1 + 18);
  v11 = *(v10 + 4);
  v12 = *(v10 + 5);
  if (v11 != v12)
  {
    do
    {
      v13 = *v11++;
      v26 = v13;
      this = std::vector<ggl::PolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::PolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v10, &v26);
    }

    while (v11 != v12);
    v11 = *(v10 + 4);
    v12 = *(v10 + 5);
  }

  if (v11 != v12)
  {
    *(v10 + 5) = v11;
  }

  v14 = *(v1 + 19);
  v15 = *(v14 + 4);
  v16 = *(v14 + 5);
  if (v15 != v16)
  {
    do
    {
      v17 = *v15++;
      v26 = v17;
      this = std::vector<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v14, &v26);
    }

    while (v15 != v16);
    v15 = *(v14 + 4);
    v16 = *(v14 + 5);
  }

  if (v15 != v16)
  {
    *(v14 + 5) = v15;
  }

  v18 = *(v1 + 20);
  v19 = *(v18 + 4);
  v20 = *(v18 + 5);
  if (v19 != v20)
  {
    do
    {
      v21 = *v19++;
      v26 = v21;
      this = std::vector<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v18, &v26);
    }

    while (v19 != v20);
    v19 = *(v18 + 4);
    v20 = *(v18 + 5);
  }

  if (v19 != v20)
  {
    *(v18 + 5) = v19;
  }

  v22 = *(v1 + 21);
  v23 = *(v22 + 4);
  v24 = *(v22 + 5);
  if (v23 != v24)
  {
    do
    {
      v25 = *v23++;
      v26 = v25;
      this = std::vector<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,geo::allocator_adapter<ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v22, &v26);
    }

    while (v23 != v24);
    v23 = *(v22 + 4);
    v24 = *(v22 + 5);
  }

  if (v23 != v24)
  {
    *(v22 + 5) = v23;
  }

  return this;
}

void md::RasterResourceDataRequester::resolveTile(md::RasterResourceDataRequester *this@<X0>, const geo::QuadTile *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 10);
  os_unfair_lock_lock((v5 + 784));
  v6 = *(a2 + 1);
  *(a3 + 1) = v6;
  *(a3 + 4) = *(a2 + 4);
  *a3 = *a2;
  *(a3 + 16) = *(a2 + 2);
  *(a3 + 24) = *(a2 + 24);
  if (v6)
  {
    do
    {
      if (v5 + 840 == geo::LRUPolicy<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>,geo::QuadTileHash>::get(v5 + 840, (v5 + 800), a3))
      {
        break;
      }

      if (!*(a3 + 1))
      {
        break;
      }

      v7 = *(a3 + 1) - 1;
      *(a3 + 1) = v7;
      *(a3 + 4) = vshr_n_s32(*(a3 + 4), 1uLL);
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
    }

    while (v7);
  }

  os_unfair_lock_unlock((v5 + 784));
}

void md::RasterResourceDataRequester::~RasterResourceDataRequester(md::RasterResourceDataRequester *this)
{
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A2DC50;
  std::__function::__value_func<BOOL ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](this + 48);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelManagerCommand>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::LabelManagerCommand>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A11358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::activeTileGroupDidChange(void)::$_0,std::allocator<md::LabelManager::activeTileGroupDidChange(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A11390;
  a2[1] = v2;
  return result;
}

uint64_t md::LabelManager::localeChanged(std::mutex *this)
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F2A11420;
  v2[1] = this;
  v2[3] = v2;
  md::LabelManager::queueCommand(this, 2, 1, v2);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
}

void sub_1B2EF7BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelManager::localeChanged(void)::$_0,std::allocator<md::LabelManager::localeChanged(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A11420;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::LabelManager::focusedVenueDidChange(BOOL)::$_0,std::allocator<md::LabelManager::focusedVenueDidChange(BOOL)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  *(v1 + 3376) = *(result + 16);
  *(v1 + 3047) = 1;
  v2 = *(v1 + 168);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    result = (*(*v5 + 24))(v5);
  }

  return result;
}

__n128 std::__function::__func<md::LabelManager::focusedVenueDidChange(BOOL)::$_0,std::allocator<md::LabelManager::focusedVenueDidChange(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11468;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<md::LabelManager::venueBuildingFloorDidChange(void)::$_0,std::allocator<md::LabelManager::venueBuildingFloorDidChange(void)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  *(v1 + 3034) = 1;
  *(v1 + 3047) = 1;
  v2 = *(v1 + 168);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    result = (*(*v5 + 24))(v5);
  }

  return result;
}

uint64_t std::__function::__func<md::LabelManager::venueBuildingFloorDidChange(void)::$_0,std::allocator<md::LabelManager::venueBuildingFloorDidChange(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A114B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::LabelManager::venueFloorSwitcherActiveDidChange(BOOL)::$_0,std::allocator<md::LabelManager::venueFloorSwitcherActiveDidChange(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != *(result + 3377))
  {
    *(result + 3377) = v3;
    return md::LabelManager::queueRestyle(result, 1);
  }

  return result;
}

__n128 std::__function::__func<md::LabelManager::venueFloorSwitcherActiveDidChange(BOOL)::$_0,std::allocator<md::LabelManager::venueFloorSwitcherActiveDidChange(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A114F8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

std::mutex *md::LabelManager::setContentScale(std::mutex *this, float a2)
{
  v2[4] = *MEMORY[0x1E69E9840];
  if (*&this[56].__m_.__sig != a2)
  {
    *&this[56].__m_.__sig = a2;
    v2[0] = &unk_1F2A11540;
    v2[1] = this;
    v2[2] = LODWORD(a2);
    v2[3] = v2;
    md::LabelManager::queueCommand(this, 3, 1, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return this;
}

void sub_1B2EF8010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelManager::setContentScale(float)::$_0,std::allocator<md::LabelManager::setContentScale(float)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (*(v1 + 176) != v2)
  {
    *(v1 + 176) = v2;
    *(v1 + 3042) = 1;
    *(v1 + 3332) = v2 * 4.0;
    v3 = *(v1 + 312);
    if (*(v3 + 120) != v2)
    {
      *(v3 + 120) = v2;
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::clear(v3 + 64);
      std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,std::equal_to<std::string>,std::hash<std::string>,true>,geo::allocator_adapter<std::__hash_value_type<std::string,std::unique_ptr<md::FontTrackingScaleInfo>>,mdm::zone_mallocator>>::clear(v3 + 8);
    }

    v4 = *(v1 + 280);
    v5[0] = &unk_1F2A0CAB0;
    v5[1] = v4;
    v5[3] = v5;
    md::LabelGlyphImageLoader::queueCommand(v4, v5);
  }

  if (md::LabelStyleCache::setContentScale(*(v1 + 336), v2))
  {

    md::LabelManager::clearScene(v1, 3);
  }
}

void sub_1B2EF815C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LabelManager::setContentScale(float)::$_0,std::allocator<md::LabelManager::setContentScale(float)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11540;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

md::LabelManager *md::LabelManager::setMapType(md::LabelManager *result, unsigned int a2)
{
  v2[4] = *MEMORY[0x1E69E9840];
  if (*(result + 897) != a2)
  {
    *(result + 897) = a2;
    v2[0] = &unk_1F2A11618;
    v2[1] = result;
    v2[2] = a2;
    v2[3] = v2;
    md::LabelManager::queueCommand(result, 6, 0, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return result;
}

void sub_1B2EF83C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelManager::setMapType(VKMapType)::$_0,std::allocator<md::LabelManager::setMapType(VKMapType)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (*(v1 + 196) != v2)
  {
    *(v1 + 196) = v2;
    *(*(*(v1 + 336) + 136) + 128) = (v2 - 1) < 4;
    v4 = *(v1 + 232);
    if ((*(v4 + 16) & 0xFE) == 4)
    {
      v5 = *(v4 + 31);
      v6 = v2 - 3;
      v7 = (v2 - 3) < 2;
      if (v5 != v7)
      {
        v8 = v6 > 1;
        *(v4 + 31) = v7;
        if (v6 < 2)
        {
          v9 = -4;
        }

        else
        {
          v9 = 4;
        }

        *(v4 + 35) = v9;
        *(v4 + 29) = v7;
        *(v4 + 30) = v7;
        *(v4 + 28) = v8;
        *(v4 + 19) = v8;
        v10 = *(*(v4 + 8) + 168);
        v11 = *v10;
        v12 = v10[1];
        if (*v10 != v12)
        {
          do
          {
            v13 = *v11++;
            (*(*v13 + 40))(v13);
          }

          while (v11 != v12);
          v7 = *(*(v1 + 232) + 31);
        }

        if (v5 != v7 && *(v1 + 3440))
        {
          v14 = *(v1 + 3448);
          v23 = *(v1 + 3440);
          v24 = v14;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::LabelManager::releaseAdoptedSelectedLabelMarker(v1, 0);
          md::LabelManager::adoptSelectedLabelMarker(v1, &v23);
          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v24);
          }
        }
      }
    }

    if (*(a1 + 16) == 8)
    {
      v15 = *(*(v1 + 232) + 19);
    }

    else
    {
      v15 = 0;
    }

    atomic_store(v15 & 1, (v1 + 3425));
    v16 = atomic_load((v1 + 3425));
    if (v16)
    {
      v17 = 1;
    }

    else if (*(v1 + 196) == 5)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2 * (*(v1 + 3016) == 1);
    }

    v18 = atomic_load((v1 + 3428));
    if (v18 != v17)
    {
      atomic_store(v17, (v1 + 3428));
    }

    *(v1 + 3033) = (*(a1 + 16) & 0xFFFFFFFD) == 1;
    v19 = *(v1 + 168);
    v20 = *v19;
    v21 = v19[1];
    while (v20 != v21)
    {
      v22 = *v20++;
      (*(*v22 + 32))(v22);
    }
  }
}

void sub_1B2EF85EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::LabelManager::setMapType(VKMapType)::$_0,std::allocator<md::LabelManager::setMapType(VKMapType)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11618;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t std::__function::__func<md::LabelManager::setMapsUsage(VKMapsUsage)::$_0,std::allocator<md::LabelManager::setMapsUsage(VKMapsUsage)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (*(v1 + 200) != v2)
  {
    *(v1 + 200) = v2;
  }

  return result;
}

uint64_t std::__function::__func<md::LabelManager::setLabelMode(md::LabelMode)::$_0,std::allocator<md::LabelManager::setLabelMode(md::LabelMode)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (*(v1 + 192) != v2)
  {
    *(v1 + 192) = v2;
    v3 = v2 == 2;
    v4 = 3;
    v6[0] = &unk_1F2A11780;
    v6[1] = v1;
    if (!v3)
    {
      v4 = 0;
    }

    LOBYTE(v7[0]) = v4;
    v7[1] = v6;
    memset(v7 + 1, 0, 7);
    md::LabelManager::queueCommand(v1, 9, 0, v6);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v6);
    (*(**(*(v1 + 168) + 32) + 176))(*(*(v1 + 168) + 32), *(v1 + 192));
  }

  return md::LabelManager::updateLabelCameraMode(v1);
}

void sub_1B2EF884C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t md::LabelManager::updateLabelCameraMode(uint64_t this)
{
  v1 = this;
  if (*(this + 192) == 2)
  {
    this = (***(*(this + 168) + 32))(*(*(this + 168) + 32));
    v2 = 2 * (this == 0);
    if (this == 1)
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 3019) = v2;
  return this;
}

void std::__function::__func<md::LabelManager::setMapMode(gss::MapMode)::$_0,std::allocator<md::LabelManager::setMapMode(gss::MapMode)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 336);
  v4 = *(a1 + 16);
  std::mutex::lock(v3);
  if (*(v3 + 160) == v4)
  {

    std::mutex::unlock(v3);
  }

  else
  {
    *(v3 + 160) = v4;
    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::clear(v3 + 240);
    std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v3 + 208));
    *(v3 + 308) = 0;
    *(v3 + 300) = 0;
    std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::clear(v3 + 352);
    std::__list_imp<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,mdm::zone_mallocator>>::clear((v3 + 320));
    *(v3 + 420) = 0;
    *(v3 + 412) = 0;
    std::mutex::unlock(v3);
    v5 = *(a1 + 16) == 3 && *(v2 + 3018) != 1;
    *(v2 + 3402) = v5;
    md::LabelManager::resolveLabelScaleFactor(v2);

    md::LabelManager::queueRestyle(v2, 0);
  }
}

__n128 std::__function::__func<md::LabelManager::setMapMode(gss::MapMode)::$_0,std::allocator<md::LabelManager::setMapMode(gss::MapMode)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11780;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

__n128 std::__function::__func<md::LabelManager::setLabelMode(md::LabelMode)::$_0,std::allocator<md::LabelManager::setLabelMode(md::LabelMode)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A116A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<md::LabelManager::setNavMode(md::LabelNavMode)::$_0,std::allocator<md::LabelManager::setNavMode(md::LabelNavMode)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((***(*(v1 + 168) + 32))(*(*(v1 + 168) + 32)) != *(a1 + 16))
  {
    (*(**(*(v1 + 168) + 32) + 184))(*(*(v1 + 168) + 32));
    if ((*(**(*(v1 + 168) + 32) + 8))(*(*(v1 + 168) + 32)))
    {
      md::LabelManager::queueRestyle(v1, 1);
    }
  }

  return md::LabelManager::updateLabelCameraMode(v1);
}

__n128 std::__function::__func<md::LabelManager::setNavMode(md::LabelNavMode)::$_0,std::allocator<md::LabelManager::setNavMode(md::LabelNavMode)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A116F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

md::LabelManager *md::LabelManager::setInOverviewMode(md::LabelManager *this, int a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  if (*(this + 3614) != a2)
  {
    *(this + 3614) = a2;
    v2[0] = &unk_1F2A11738;
    v2[1] = this;
    LOBYTE(v3[0]) = a2;
    v3[1] = v2;
    memset(v3 + 1, 0, 7);
    md::LabelManager::queueCommand(this, 72, 1, v2);
    return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v2);
  }

  return this;
}

void sub_1B2EF8D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::LabelManager::setInOverviewMode(BOOL)::$_0,std::allocator<md::LabelManager::setInOverviewMode(BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (*(**(*(v2 + 168) + 32) + 88))(*(*(v2 + 168) + 32));
  if (*(a1 + 16) != result)
  {
    v4 = *(**(*(v2 + 168) + 32) + 192);

    return v4();
  }

  return result;
}

__n128 std::__function::__func<md::LabelManager::setInOverviewMode(BOOL)::$_0,std::allocator<md::LabelManager::setInOverviewMode(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11738;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1 + 2;
  v1 = a1[2];
  v3 = a1[1];
  v4 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(v3 + 443) = v1;
  v5 = *(v3 + 444);
  *(v3 + 444) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  if (!*v2 || md::LabelMarker::isAssociatedWithLabelManager(*v2, v3))
  {

    md::LabelManager::setSelectedLabelMarker(v3, v2);
  }
}

void std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A11A50;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11A50;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::selectLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11A50;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  v3 = *(v2 - 8);
  if (!v1 || (result = md::LabelMarker::isAssociatedWithLabelManager(v1, *(v2 - 8)), result))
  {
    v5 = *(**(v3 + 240) + 216);

    return v5();
  }

  return result;
}

void std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A11AE0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11AE0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0,std::allocator<md::LabelManager::setPreviouslySelectedLabelMarker(std::shared_ptr<md::LabelMarker> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11AE0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void std::__function::__func<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0,std::allocator<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0,std::allocator<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A11C48;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0,std::allocator<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11C48;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0,std::allocator<md::LabelManager::setCategoryFilter(std::shared_ptr<md::LabelCategoryFilter> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11C48;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

__n128 std::__function::__func<md::LabelManager::setSupportedEVConnectorTypes(unsigned long long)::$_0,std::allocator<md::LabelManager::setSupportedEVConnectorTypes(unsigned long long)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11E88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

_BYTE *std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  result = *(v1 + 8);
  v4 = *(v1 + 488);
  if (result[143] != v4)
  {
    result[143] = v4;
    result = (*(*result + 552))(result, v2);
  }

  *(v2 + 3038) = 1;
  *(v2 + 3040) = 1;
  v5 = atomic_load((v2 + 3053));
  if (v5)
  {
    v6 = *(v2 + 136);
    if (v6)
    {
      result = *(v6 + 56);
      if (result)
      {

        return std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(result, v2, 9);
      }
    }
  }

  return result;
}

void std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A11F18;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11F18;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0,std::allocator<md::LabelManager::setLabelIsDragged(std::shared_ptr<md::Label> const&,BOOL)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A11F18;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void geo::_retain_ptr<NSArray<VKLabelExclusionRegion *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D0C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSArray<VKLabelExclusionRegion *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D0C8;

  return a1;
}

void *std::__function::__func<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0,std::allocator<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A11F60;
  a2[1] = v2;
  return geo::_retain_ptr<NSArray<VKLabelExclusionRegion *> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0,std::allocator<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A11F60;
  *(a1 + 16) = &unk_1F2A3D0C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0,std::allocator<md::LabelManager::setLabelExclusionRegions(NSArray<VKLabelExclusionRegion *> *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A11F60;
  *(a1 + 16) = &unk_1F2A3D0C8;

  return a1;
}

void std::__function::__func<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0,std::allocator<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0>,void ()(void)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

void std::__function::__func<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0,std::allocator<md::LabelManager::setScreenLabelFeatures(NSArray<VKScreenLabelFeature *> *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

id std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_1,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12038;
  v3 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v3;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_1,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_1>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

id std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_0,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A11FF0;
  v3 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v3;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<md::LabelManager::setRouteContext(VKRouteContext *)::$_0,std::allocator<md::LabelManager::setRouteContext(VKRouteContext *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A45FC0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A45FC0;
  *(a1 + 8) = 0;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;

  return a1;
}

uint64_t std::__function::__func<md::LabelManager::setRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelManager::setRouteLine(VKRouteLine *)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = atomic_load((v1 + 3425));
  if (v2)
  {
    return (***(*(v1 + 168) + 56))(*(*(v1 + 168) + 56), *(result + 24));
  }

  return result;
}

void std::__function::__func<md::LabelManager::setRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelManager::setRouteLine(VKRouteLine *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A45FC0;

  operator delete(a1);
}

void *std::__function::__func<md::LabelManager::setRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelManager::setRouteLine(VKRouteLine *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A12080;
  a2[1] = v2;
  return geo::_retain_ptr<VKRouteLine * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelManager::setRouteLine(VKRouteLine *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12080;
  *(a1 + 16) = &unk_1F2A45FC0;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setRouteLine(VKRouteLine *)::$_0,std::allocator<md::LabelManager::setRouteLine(VKRouteLine *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12080;
  *(a1 + 16) = &unk_1F2A45FC0;

  return a1;
}

__n128 std::__function::__func<md::LabelManager::setIsNavCameraDetached(BOOL)::$_0,std::allocator<md::LabelManager::setIsNavCameraDetached(BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12110;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void std::__function::__func<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0,std::allocator<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0,std::allocator<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A12158;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0,std::allocator<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A12158;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0,std::allocator<md::LabelManager::setSceneManager(std::shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A12158;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void *std::__function::__func<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0,std::allocator<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A121A0;
  a2[1] = v2;
  return geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0,std::allocator<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A121A0;
  *(a1 + 16) = &unk_1F2A3ED40;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0,std::allocator<md::LabelManager::setARWalkingFeatures(VKARWalkingFeatureSet *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A121A0;
  *(a1 + 16) = &unk_1F2A3ED40;

  return a1;
}

void std::__function::__func<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  *(a1 + 16) = &unk_1F2A436C8;

  operator delete(a1);
}

void *std::__function::__func<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A121E8;
  a2[1] = v2;
  return geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A121E8;
  *(a1 + 16) = &unk_1F2A436C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0,std::allocator<md::LabelManager::setHiddenTrafficIncidentFeatures(NSArray<VKTrafficIncidentFeature *> *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A121E8;
  *(a1 + 16) = &unk_1F2A436C8;

  return a1;
}

void *std::__function::__func<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0,std::allocator<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F2A12230;
  *(a2 + 8) = v4;
  result = geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((a2 + 16), a1 + 16);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

void std::__function::__func<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0,std::allocator<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12230;
  *(a1 + 16) = &unk_1F2A436C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0,std::allocator<md::LabelManager::setExternalTrafficFeatures(NSArray *,BOOL)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12230;
  *(a1 + 16) = &unk_1F2A436C8;

  return a1;
}

void *std::__function::__func<md::LabelManager::setCurrentLocationText(NSString *)::$_0,std::allocator<md::LabelManager::setCurrentLocationText(NSString *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A122C0;
  a2[1] = v2;
  return geo::_retain_ptr<NSString * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setCurrentLocationText(NSString *)::$_0,std::allocator<md::LabelManager::setCurrentLocationText(NSString *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A122C0;
  *(a1 + 16) = &unk_1F2A3D108;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setCurrentLocationText(NSString *)::$_0,std::allocator<md::LabelManager::setCurrentLocationText(NSString *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A122C0;
  *(a1 + 16) = &unk_1F2A3D108;

  return a1;
}

void *std::__function::__func<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0,std::allocator<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A12308;
  a2[1] = v2;
  return geo::_retain_ptr<VKPolylineOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0,std::allocator<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12308;
  *(a1 + 16) = &unk_1F2A4BA98;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0,std::allocator<md::LabelManager::setFocusedPolyline(VKPolylineOverlay *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12308;
  *(a1 + 16) = &unk_1F2A4BA98;

  return a1;
}

void geo::_retain_ptr<VKClientLocalizedStrings * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D128;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKClientLocalizedStrings * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3D128;

  return a1;
}

void *std::__function::__func<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0,std::allocator<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A12398;
  a2[1] = v2;
  return geo::_retain_ptr<VKClientLocalizedStrings * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(a2 + 2, a1 + 16);
}

void std::__function::__func<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0,std::allocator<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12398;
  *(a1 + 16) = &unk_1F2A3D128;

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0,std::allocator<md::LabelManager::setClientLocalizedStrings(VKClientLocalizedStrings *)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A12398;
  *(a1 + 16) = &unk_1F2A3D128;

  return a1;
}

void md::typeToIntMap(md *this)
{
  v1[130] = *MEMORY[0x1E69E9840];
  {
    {
      v1[0] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>();
      v1[1] = -4294967285;
      v1[2] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>();
      v1[3] = 0xFFFFFFFF00000004;
      v1[4] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::View>>();
      v1[5] = 0xFFFFFFFF00000001;
      v1[6] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>();
      v1[7] = 0x12FFFFFFFFLL;
      v1[8] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>();
      v1[9] = 0x13FFFFFFFFLL;
      v1[10] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Transform>>();
      v1[11] = 0xFFFFFFFF00000002;
      v1[12] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>();
      v1[13] = 0xFFFFFFFF00000003;
      v1[14] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>();
      v1[15] = 0x500000005;
      v1[16] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>();
      v1[17] = -4294967290;
      v1[18] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::Style>>();
      v1[19] = 0x700000007;
      v1[20] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>();
      v1[21] = 0xFFFFFFFF00000008;
      v1[22] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>();
      v1[23] = -4294967287;
      v1[24] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>();
      v1[25] = -4294967286;
      v1[26] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>();
      v1[27] = 0xC0000000CLL;
      v1[28] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>();
      v1[29] = 0xD0000000DLL;
      v1[30] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>();
      v1[31] = -4294967282;
      v1[32] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>();
      v1[33] = 0xFFFFFFFF0000000FLL;
      v1[34] = gdc::typeIndex<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>();
      v1[35] = 0xFFFFFFFF00000010;
      v1[36] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Tile::Clipping>>();
      v1[37] = -4294967279;
      v1[38] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RibbonStyle>>();
      v1[39] = -4294967278;
      v1[40] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinciTraffic::Style>>();
      v1[41] = -4294967277;
      v1[42] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ClippedStroke>>();
      v1[43] = -4294967276;
      v1[44] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>();
      v1[45] = 0xFFFFFFFFLL;
      v1[46] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>();
      v1[47] = 0x1AFFFFFFFFLL;
      v1[48] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>();
      v1[49] = 0x1FFFFFFFFLL;
      v1[50] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>();
      v1[51] = 0x2FFFFFFFFLL;
      v1[52] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>();
      v1[53] = 0x3FFFFFFFFLL;
      v1[54] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>();
      v1[55] = 0x4FFFFFFFFLL;
      v1[56] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>();
      v1[57] = 0x6FFFFFFFFLL;
      v1[58] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>();
      v1[59] = 0x8FFFFFFFFLL;
      v1[60] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>();
      v1[61] = 0x9FFFFFFFFLL;
      v1[62] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>();
      v1[63] = 0xBFFFFFFFFLL;
      v1[64] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>();
      v1[65] = 0xDFFFFFFFFLL;
      v1[66] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>();
      v1[67] = 0x10FFFFFFFFLL;
      v1[68] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>();
      v1[69] = 0x12FFFFFFFFLL;
      v1[70] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>();
      v1[71] = 0x13FFFFFFFFLL;
      v1[72] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>();
      v1[73] = 0x14FFFFFFFFLL;
      v1[74] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>();
      v1[75] = 0x15FFFFFFFFLL;
      v1[76] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>();
      v1[77] = 0x16FFFFFFFFLL;
      v1[78] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedFillStyle>>();
      v1[79] = 0x19FFFFFFFFLL;
      v1[80] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>();
      v1[81] = 0xEFFFFFFFFLL;
      v1[82] = gdc::typeIndex<DaVinci::AmbientTexture>();
      v1[83] = 0;
      v1[84] = gdc::typeIndex<DaVinci::ShadowTexture>();
      v1[85] = 0x1FFFFFFFFLL;
      v1[86] = gdc::typeIndex<DaVinci::TexTexture>();
      v1[87] = 0x2FFFFFFFFLL;
      v1[88] = gdc::typeIndex<DaVinci::OcclusionTexture>();
      v1[89] = 0x3FFFFFFFFLL;
      v1[90] = gdc::typeIndex<DaVinci::RouteMaskTexture>();
      v1[91] = 0x4FFFFFFFFLL;
      v1[92] = gdc::typeIndex<DaVinci::EmissiveTexture>();
      v1[93] = 0x5FFFFFFFFLL;
      v1[94] = gdc::typeIndex<DaVinci::OverlayTexture>();
      v1[95] = 0x6FFFFFFFFLL;
      v1[96] = gdc::typeIndex<DaVinci::StyleIndexTexture>();
      v1[97] = 0x7FFFFFFFFLL;
      v1[98] = gdc::typeIndex<DaVinci::StyleTexture>();
      v1[99] = 0x8FFFFFFFFLL;
      v1[100] = gdc::typeIndex<DaVinci::AridityTexture>();
      v1[101] = 0x9FFFFFFFFLL;
      v1[102] = gdc::typeIndex<DaVinci::TemperatureTexture>();
      v1[103] = 0xAFFFFFFFFLL;
      v1[104] = gdc::typeIndex<DaVinci::Gradient1Texture>();
      v1[105] = 0xBFFFFFFFFLL;
      v1[106] = gdc::typeIndex<DaVinci::Gradient2Texture>();
      v1[107] = 0xCFFFFFFFFLL;
      v1[108] = gdc::typeIndex<DaVinci::DiffuseTexture>();
      v1[109] = 0xDFFFFFFFFLL;
      v1[110] = gdc::typeIndex<DaVinci::AlphaTexture>();
      v1[111] = 0xEFFFFFFFFLL;
      v1[112] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>();
      v1[113] = 0xFFFFFFFF00000002;
      v1[114] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>();
      v1[115] = -4294967290;
      v1[116] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>();
      v1[117] = 0xFFFFFFFF00000003;
      v1[118] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>();
      v1[119] = -4294967291;
      v1[120] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>();
      v1[121] = 1;
      v1[122] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>();
      v1[123] = 0x100000004;
      v1[124] = gdc::typeIndex<Flyover::AtmosphereTexture>();
      v1[125] = 0xFFFFFFFF00000000;
      v1[126] = gdc::typeIndex<Flyover::DiffuseTexture>();
      v1[127] = 0x1FFFFFFFFLL;
      v1[128] = gdc::typeIndex<Flyover::NightTexture>();
      v1[129] = 0x2FFFFFFFFLL;
      std::unordered_map<unsigned long,std::pair<int,int>>::unordered_map(md::typeToIntMap(void)::typeToIntMap, v1, 65);
    }
  }
}

uint64_t *std::unordered_map<unsigned long,std::pair<int,int>>::unordered_map(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[2 * a3]; i += 2)
    {
      v4 = *i;
      v5 = a1[1];
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
        if (v4 >= *&v5)
        {
          v7 = v4 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & v4;
      }

      v8 = *(*a1 + 8 * v7);
      if (!v8 || (v9 = *v8) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v10 = v9[1];
        if (v10 == v4)
        {
          break;
        }

        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v5)
          {
            v10 %= *&v5;
          }
        }

        else
        {
          v10 &= *&v5 - 1;
        }

        if (v10 != v7)
        {
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (v9[2] != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return a1;
}

void *ggl::PipelineSetup::setResetFlag(void *result, unint64_t a2, char a3, int a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = result[4];
    }

    else
    {
      if (a3 != 2)
      {
        return result;
      }

      v4 = result[10];
    }
  }

  else
  {
    v4 = result[7];
  }

  v5 = a2 >> 6;
  v6 = 1 << a2;
  if (a4)
  {
    v7 = *(v4 + 8 * v5) | v6;
  }

  else
  {
    v7 = *(v4 + 8 * v5) & ~v6;
  }

  *(v4 + 8 * v5) = v7;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13PipelineSetupEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
    *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
    qword_1EB83D950 = "md::ls::PipelineSetup]";
    qword_1EB83D958 = 21;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
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
        v12 = v5[31];
        v11 = v5[32];
        if (v12 != v11)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v12 + 24), v2);
            v12 += 32;
          }

          while (v12 != v11);
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
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
    *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
    qword_1EB83D950 = "md::ls::PipelineSetup]";
    qword_1EB83D958 = 21;
  }

  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1AA30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1AA50;
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

void ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1AA30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PipelineSetup,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14DataIDSetToUseEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::DataIDSetToUse>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::DataIDSetToUse>();
    *algn_1EB83D888 = 0xB3837544666C5A60;
    qword_1EB83D890 = "md::ls::DataIDSetToUse]";
    qword_1EB83D898 = 22;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A17700;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A17720;
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

void ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A17700;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::DataIDSetToUse,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28NeedsFunctionConstantsUpdateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsFunctionConstantsUpdate,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A199A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NeedsFunctionConstantsUpdate,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A199A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon8MaterialEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A152E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A15308;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A152E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A152A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::localId;
    *algn_1EB829278 = 0x5E5AF20C38ADA136;
    qword_1EB829280 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>]";
    qword_1EB829288 = 88;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon6SharedEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon6SharedEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15258;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15218;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A15238;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15218;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A151D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon9TexcoordsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15148;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A15168;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15148;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A15100;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon4ClipEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15078;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A15098;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15078;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A15030;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon11S2TransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14FA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14FC8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14FA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14F60;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_13FlyoverCommon9TransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14ED8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14EF8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14ED8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A14E90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci17LandCoverSettingsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14E08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14E28;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14E08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LandCoverSettings>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile4ViewEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14D38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14D58;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14D38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile9TransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14C68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14C88;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14C68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Transform>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile17PositionScaleInfoEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14B98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14BB8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14B98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile11LinearDepthEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14AC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14AE8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14AC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile8ClippingEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A149F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14A18;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A149F8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Lighting23StylizedShadingSettingsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14928;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14948;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14928;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Lighting26LightSpecularConfigurationEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14858;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14878;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14858;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Lighting24LightConfigurationVertexEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14788;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A147A8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14788;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci20LightingDebugOptionsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A146B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A146D8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A146B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci21StyleTransitionToFlatEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A145E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14608;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A145E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci14StyleSunMatrixEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14518;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14538;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14518;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci9StyleSSAOEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14448;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14468;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14448;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSSAO>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci11StyleShadowEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14378;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14398;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14378;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci18StyleRouteLineMaskEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A142A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A142C8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A142A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci20StyleGroundOcclusionEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A141D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A141F8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A141D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci18StyleEmissiveColorEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14108;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14128;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14108;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci5StyleEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14038;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14058;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14038;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci10StyleColorEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13F68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13F88;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13F68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci19StyleCameraLightingEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13E98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13EB8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13E98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci10StyleBlendEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13DC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13DE8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13DC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci6ShadowEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13CF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13D18;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13CF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci16RenderTargetSizeEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13C28;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13C48;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13C28;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci13RasterOverlayEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13B58;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13B78;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13B58;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci16PlanarParametersEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13A88;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13AA8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13A88;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci13MaterialStyleEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A139B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A139D8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A139B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci16GroundAtmosphereEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A138E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13908;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A138E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci18GradientParametersEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13818;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13838;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13818;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci14ElevatedStrokeEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13748;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13768;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13748;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci21ColorCorrectionFactorEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13678;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13698;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13678;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Blending14SRGBBlendStyleEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A135A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A135C8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A135A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci3UVsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A134D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A134F8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A134D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci7NormalsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13408;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13428;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13408;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci10ElevationsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13338;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13358;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13338;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci17InstanceTransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13268;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13288;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13268;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>::~storage(a1);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover12NightTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13198;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A131B8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13198;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13150;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover14DiffuseTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A130C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A130E8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A130C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13080;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v58 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover17AtmosphereTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12FF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13018;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12FF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12FB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci10TexTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12F28;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12F48;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12F28;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci18TemperatureTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::metadata) = *(v3 + 4096);
}