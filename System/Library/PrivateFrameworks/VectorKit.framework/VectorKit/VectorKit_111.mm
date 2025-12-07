void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords> *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material> *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip> *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform> *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Flyover::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Flyover::FlyoverPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Flyover::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Flyover::FlyoverPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Flyover::FlyoverPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::FlyoverNight::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FlyoverNight::FlyoverPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::FlyoverNight::FlyoverPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FlyoverNight::FlyoverPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FlyoverNight::FlyoverPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Flyover::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPolarPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::Flyover::FlyoverPolarPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Flyover::FlyoverPolarPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::Flyover::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::Flyover::FlyoverPolarPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,ggl::zone_mallocator>>::emplace_back<ggl::FlyoverNight::FlyoverPolarPipelineSetup * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FlyoverNight::FlyoverPolarPipelineSetup *>(v11, v10);
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
    result = std::__split_buffer<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,geo::allocator_adapter<ggl::FlyoverNight::FlyoverPolarPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

ggl::zone_mallocator *std::vector<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,ggl::zone_mallocator>>::emplace_back<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> * const&>(ggl::zone_mallocator *result, void *a2)
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
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *>(v11, v10);
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
    result = std::__split_buffer<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform> *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FlyoverNight::FlyoverPolarPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FlyoverNight::FlyoverPolarPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Flyover::FlyoverPolarPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Flyover::FlyoverPolarPipelineSetup *>(uint64_t a1, void *a2)
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

void ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FlyoverNight::FlyoverPolarPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1FA08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FlyoverNight::FlyoverPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1F940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Flyover::FlyoverPolarPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1F878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Flyover::FlyoverPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A1F7B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_cache<md::ls::ColorCorrectionData,geo::handle<md::ls::ColorCorrectionData>,md::MaterialKey,md::ls::ColorCorrectionData,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A240E0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A24100;
  md::data_recycle_pool<md::ls::ColorCorrectionData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24120;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::ColorCorrectionData>,md::Counter,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::data_recycle_pool<md::ls::ColorCorrectionData>::~data_recycle_pool(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C40B1836B13);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 40);
  }

  *(a1 + 48) = v2;
  for (i = *(a1 + 16); i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C40B1836B13);
    }
  }

  std::__function::__value_func<md::ls::ColorCorrectionData * ()(void)>::~__value_func[abi:nn200100](a1 + 64);
  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void *ecs2::group_storage<geo::handle<md::ls::ColorCorrectionData>,md::Counter,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A24140;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ls::ColorCorrectionData>,64ul>::~sparse_set(a1);
}

uint64_t ecs2::pool<md::Counter,64ul>::~pool(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  while (v2 != v3)
  {
    if (*v2)
    {
      operator delete(*v2);
    }

    ++v2;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void *ecs2::sparse_set<geo::handle<md::ls::ColorCorrectionData>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A24160;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ls::ColorCorrectionData>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ls::ColorCorrectionData>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ls::ColorCorrectionData>,md::Counter,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ls::ColorCorrectionData>,md::Counter,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ls::ColorCorrectionData>,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24120;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::ColorCorrectionData>,md::Counter,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ls::ColorCorrectionData>,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24120;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::ColorCorrectionData>,md::Counter,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ls::ColorCorrectionData,geo::handle<md::ls::ColorCorrectionData>,md::ls::ColorCorrectionData>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A24100;
  md::data_recycle_pool<md::ls::ColorCorrectionData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24120;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::ColorCorrectionData>,md::Counter,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ls::ColorCorrectionData,geo::handle<md::ls::ColorCorrectionData>,md::ls::ColorCorrectionData>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A24100;
  md::data_recycle_pool<md::ls::ColorCorrectionData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24120;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::ColorCorrectionData>,md::Counter,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~group_storage(a1);
}

void *md::data_array_cache<md::ls::ColorCorrectionData,geo::handle<md::ls::ColorCorrectionData>,md::MaterialKey,md::ls::ColorCorrectionData,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A240E0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A24100;
  md::data_recycle_pool<md::ls::ColorCorrectionData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24120;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::ColorCorrectionData>,md::Counter,md::ls::ColorCorrectionData,md::ls::ColorCorrectionData*>::~group_storage(a1);
}

void md::data_array_cache<md::ls::SSAOIntensityData,geo::handle<md::ls::SSAOIntensityData>,md::MaterialKey,md::ls::SSAOIntensityData,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A24180;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A241A0;
  md::data_recycle_pool<md::ls::SSAOIntensityData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A241C0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::SSAOIntensityData>,md::Counter,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::data_recycle_pool<md::ls::SSAOIntensityData>::~data_recycle_pool(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C4052888210);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 40);
  }

  *(a1 + 48) = v2;
  for (i = *(a1 + 16); i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C4052888210);
    }
  }

  std::__function::__value_func<md::ls::SSAOIntensityData * ()(void)>::~__value_func[abi:nn200100](a1 + 64);
  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void *ecs2::group_storage<geo::handle<md::ls::SSAOIntensityData>,md::Counter,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A241E0;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ls::SSAOIntensityData>,64ul>::~sparse_set(a1);
}

void *ecs2::sparse_set<geo::handle<md::ls::SSAOIntensityData>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A24200;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ls::SSAOIntensityData>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ls::SSAOIntensityData>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ls::SSAOIntensityData>,md::Counter,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ls::SSAOIntensityData>,md::Counter,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ls::SSAOIntensityData>,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A241C0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::SSAOIntensityData>,md::Counter,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ls::SSAOIntensityData>,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A241C0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::SSAOIntensityData>,md::Counter,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ls::SSAOIntensityData,geo::handle<md::ls::SSAOIntensityData>,md::ls::SSAOIntensityData>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A241A0;
  md::data_recycle_pool<md::ls::SSAOIntensityData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A241C0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::SSAOIntensityData>,md::Counter,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ls::SSAOIntensityData,geo::handle<md::ls::SSAOIntensityData>,md::ls::SSAOIntensityData>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A241A0;
  md::data_recycle_pool<md::ls::SSAOIntensityData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A241C0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::SSAOIntensityData>,md::Counter,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~group_storage(a1);
}

void *md::data_array_cache<md::ls::SSAOIntensityData,geo::handle<md::ls::SSAOIntensityData>,md::MaterialKey,md::ls::SSAOIntensityData,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A24180;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A241A0;
  md::data_recycle_pool<md::ls::SSAOIntensityData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A241C0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::SSAOIntensityData>,md::Counter,md::ls::SSAOIntensityData,md::ls::SSAOIntensityData*>::~group_storage(a1);
}

void md::data_array_cache<md::ls::GradientMaskData,geo::handle<md::ls::GradientMaskData>,md::MaterialKey,md::ls::GradientMaskData,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A24220;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A24240;
  md::data_recycle_pool<md::ls::GradientMaskData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24260;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::GradientMaskData>,md::Counter,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::data_recycle_pool<md::ls::GradientMaskData>::~data_recycle_pool(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C40DC6688D3);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 40);
  }

  *(a1 + 48) = v2;
  for (i = *(a1 + 16); i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C40DC6688D3);
    }
  }

  std::__function::__value_func<md::ls::GradientMaskData * ()(void)>::~__value_func[abi:nn200100](a1 + 64);
  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void *ecs2::group_storage<geo::handle<md::ls::GradientMaskData>,md::Counter,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A24280;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ls::GradientMaskData>,64ul>::~sparse_set(a1);
}

void *ecs2::sparse_set<geo::handle<md::ls::GradientMaskData>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A242A0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ls::GradientMaskData>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ls::GradientMaskData>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ls::GradientMaskData>,md::Counter,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ls::GradientMaskData>,md::Counter,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ls::GradientMaskData>,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24260;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::GradientMaskData>,md::Counter,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ls::GradientMaskData>,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24260;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::GradientMaskData>,md::Counter,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ls::GradientMaskData,geo::handle<md::ls::GradientMaskData>,md::ls::GradientMaskData>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A24240;
  md::data_recycle_pool<md::ls::GradientMaskData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24260;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::GradientMaskData>,md::Counter,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ls::GradientMaskData,geo::handle<md::ls::GradientMaskData>,md::ls::GradientMaskData>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A24240;
  md::data_recycle_pool<md::ls::GradientMaskData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24260;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::GradientMaskData>,md::Counter,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~group_storage(a1);
}

void *md::data_array_cache<md::ls::GradientMaskData,geo::handle<md::ls::GradientMaskData>,md::MaterialKey,md::ls::GradientMaskData,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A24220;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A24240;
  md::data_recycle_pool<md::ls::GradientMaskData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24260;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::GradientMaskData>,md::Counter,md::ls::GradientMaskData,md::ls::GradientMaskData*>::~group_storage(a1);
}

void md::data_array_cache<md::ls::ColorData,geo::handle<md::ls::ColorData>,md::MaterialKey,md::ls::ColorData,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A242C0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A242E0;
  md::data_recycle_pool<md::ls::ColorData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24300;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::ColorData>,md::Counter,md::ls::ColorData,md::ls::ColorData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::data_recycle_pool<md::ls::ColorData>::~data_recycle_pool(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C40A86A77D5);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 40);
  }

  *(a1 + 48) = v2;
  for (i = *(a1 + 16); i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C40A86A77D5);
    }
  }

  std::__function::__value_func<md::ls::ColorData * ()(void)>::~__value_func[abi:nn200100](a1 + 64);
  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void *ecs2::group_storage<geo::handle<md::ls::ColorData>,md::Counter,md::ls::ColorData,md::ls::ColorData*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A24320;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ls::ColorData>,64ul>::~sparse_set(a1);
}

void *ecs2::sparse_set<geo::handle<md::ls::ColorData>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A24340;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ls::ColorData>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ls::ColorData>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ls::ColorData>,md::Counter,md::ls::ColorData,md::ls::ColorData*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ls::ColorData>,md::Counter,md::ls::ColorData,md::ls::ColorData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ls::ColorData>,md::ls::ColorData,md::ls::ColorData*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24300;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::ColorData>,md::Counter,md::ls::ColorData,md::ls::ColorData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ls::ColorData>,md::ls::ColorData,md::ls::ColorData*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24300;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::ColorData>,md::Counter,md::ls::ColorData,md::ls::ColorData*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ls::ColorData,geo::handle<md::ls::ColorData>,md::ls::ColorData>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A242E0;
  md::data_recycle_pool<md::ls::ColorData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24300;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::ColorData>,md::Counter,md::ls::ColorData,md::ls::ColorData*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ls::ColorData,geo::handle<md::ls::ColorData>,md::ls::ColorData>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A242E0;
  md::data_recycle_pool<md::ls::ColorData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24300;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::ColorData>,md::Counter,md::ls::ColorData,md::ls::ColorData*>::~group_storage(a1);
}

void *md::data_array_cache<md::ls::ColorData,geo::handle<md::ls::ColorData>,md::MaterialKey,md::ls::ColorData,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A242C0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A242E0;
  md::data_recycle_pool<md::ls::ColorData>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24300;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::ColorData>,md::Counter,md::ls::ColorData,md::ls::ColorData*>::~group_storage(a1);
}

void md::data_array_cache<md::ls::ZIndex,geo::handle<md::ls::ZIndex>,md::MaterialKey,md::ls::ZIndex,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A24360;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A24380;
  md::data_recycle_pool<md::ls::ZIndex>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A243A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::data_recycle_pool<md::ls::ZIndex>::~data_recycle_pool(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C4090D0E795);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 40);
  }

  *(a1 + 48) = v2;
  for (i = *(a1 + 16); i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C4090D0E795);
    }
  }

  std::__function::__value_func<md::ls::ZIndex * ()(void)>::~__value_func[abi:nn200100](a1 + 64);
  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void *ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A243C0;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ls::ZIndex>,64ul>::~sparse_set(a1);
}

void *ecs2::sparse_set<geo::handle<md::ls::ZIndex>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A243E0;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ls::ZIndex>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ls::ZIndex>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ls::ZIndex>,md::ls::ZIndex,md::ls::ZIndex*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A243A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ls::ZIndex>,md::ls::ZIndex,md::ls::ZIndex*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A243A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ls::ZIndex,geo::handle<md::ls::ZIndex>,md::ls::ZIndex>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A24380;
  md::data_recycle_pool<md::ls::ZIndex>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A243A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ls::ZIndex,geo::handle<md::ls::ZIndex>,md::ls::ZIndex>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A24380;
  md::data_recycle_pool<md::ls::ZIndex>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A243A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::~group_storage(a1);
}

void *md::data_array_cache<md::ls::ZIndex,geo::handle<md::ls::ZIndex>,md::MaterialKey,md::ls::ZIndex,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A24360;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A24380;
  md::data_recycle_pool<md::ls::ZIndex>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A243A0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::ZIndex>,md::Counter,md::ls::ZIndex,md::ls::ZIndex*>::~group_storage(a1);
}

void md::data_array_cache<md::ls::MaterialVisibilityOptions,geo::handle<md::ls::MaterialVisibilityOptions>,md::MaterialKey,md::ls::MaterialVisibilityOptions,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A24400;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A24420;
  md::data_recycle_pool<md::ls::MaterialVisibilityOptions>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24440;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::MaterialVisibilityOptions>,md::Counter,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::data_recycle_pool<md::ls::MaterialVisibilityOptions>::~data_recycle_pool(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x1B8C62190](*v2, 0x1000C4033FC2DF1);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 40);
  }

  *(a1 + 48) = v2;
  for (i = *(a1 + 16); i; i = *i)
  {
    v5 = i[2];
    if (v5)
    {
      MEMORY[0x1B8C62190](v5, 0x1000C4033FC2DF1);
    }
  }

  std::__function::__value_func<md::ls::MaterialVisibilityOptions * ()(void)>::~__value_func[abi:nn200100](a1 + 64);
  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void *ecs2::group_storage<geo::handle<md::ls::MaterialVisibilityOptions>,md::Counter,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A24460;
    ;
  }

  v3 = a1[19];
  v4 = a1[20];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[22];
  if (v5)
  {
    a1[23] = v5;
    operator delete(v5);
  }

  v6 = a1[19];
  if (v6)
  {
    a1[20] = v6;
    operator delete(v6);
  }

  v7 = a1[13];
  v8 = a1[14];
  while (v7 != v8)
  {
    if (*v7)
    {
      operator delete(*v7);
    }

    ++v7;
  }

  v9 = a1[16];
  if (v9)
  {
    a1[17] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  if (v10)
  {
    a1[14] = v10;
    operator delete(v10);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::ls::MaterialVisibilityOptions>,64ul>::~sparse_set(a1);
}

void *ecs2::sparse_set<geo::handle<md::ls::MaterialVisibilityOptions>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A24480;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::ls::MaterialVisibilityOptions>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::ls::MaterialVisibilityOptions>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::ls::MaterialVisibilityOptions>,md::Counter,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::ls::MaterialVisibilityOptions>,md::Counter,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::ls::MaterialVisibilityOptions>,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24440;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::MaterialVisibilityOptions>,md::Counter,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::ls::MaterialVisibilityOptions>,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A24440;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::MaterialVisibilityOptions>,md::Counter,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::ls::MaterialVisibilityOptions,geo::handle<md::ls::MaterialVisibilityOptions>,md::ls::MaterialVisibilityOptions>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A24420;
  md::data_recycle_pool<md::ls::MaterialVisibilityOptions>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24440;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::ls::MaterialVisibilityOptions>,md::Counter,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::ls::MaterialVisibilityOptions,geo::handle<md::ls::MaterialVisibilityOptions>,md::ls::MaterialVisibilityOptions>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A24420;
  md::data_recycle_pool<md::ls::MaterialVisibilityOptions>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24440;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::MaterialVisibilityOptions>,md::Counter,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~group_storage(a1);
}

void *md::data_array_cache<md::ls::MaterialVisibilityOptions,geo::handle<md::ls::MaterialVisibilityOptions>,md::MaterialKey,md::ls::MaterialVisibilityOptions,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A24400;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A24420;
  md::data_recycle_pool<md::ls::MaterialVisibilityOptions>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A24440;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::ls::MaterialVisibilityOptions>,md::Counter,md::ls::MaterialVisibilityOptions,md::ls::MaterialVisibilityOptions*>::~group_storage(a1);
}

void md::data_array_cache<md::MaterialIDStorage,geo::handle<md::MaterialIDStorage>,md::MaterialKey,std::shared_ptr<gms::Material<ggl::Texture2D>>,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A244A0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A244C0;
  md::data_recycle_pool<std::shared_ptr<gms::Material<ggl::Texture2D>>>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A244E0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::data_recycle_pool<std::shared_ptr<gms::Material<ggl::Texture2D>>>::~data_recycle_pool(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        MEMORY[0x1B8C62190](v4, 0x20C40A4A59CD2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(a1 + 40);
  }

  *(a1 + 48) = v2;
  for (i = *(a1 + 16); i; i = *i)
  {
    v7 = i[2];
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      MEMORY[0x1B8C62190](v7, 0x20C40A4A59CD2);
    }
  }

  std::__function::__value_func<std::shared_ptr<gms::Material<ggl::Texture2D>> * ()(void)>::~__value_func[abi:nn200100](a1 + 64);
  v9 = *(a1 + 40);
  if (v9)
  {
    *(a1 + 48) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    do
    {
      v11 = *v10;
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *a1;
  *a1 = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return a1;
}

void *ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~group_storage(void *a1)
{
  *a1 = &unk_1F2A24500;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a1[13] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 16);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        v2 = a1[4];
        v3 = a1[5];
      }

      ++v4;
    }

    while (v4 < v3 - v2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<geo::handle<md::AssociationItem>,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (*v6)
    {
      operator delete(*v6);
    }

    ++v6;
  }

  v8 = a1[22];
  if (v8)
  {
    a1[23] = v8;
    operator delete(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    a1[20] = v9;
    operator delete(v9);
  }

  v10 = a1[13];
  v11 = a1[14];
  while (v10 != v11)
  {
    if (*v10)
    {
      operator delete(*v10);
    }

    ++v10;
  }

  v12 = a1[16];
  if (v12)
  {
    a1[17] = v12;
    operator delete(v12);
  }

  v13 = a1[13];
  if (v13)
  {
    a1[14] = v13;
    operator delete(v13);
  }

  ecs2::pool<md::Counter,64ul>::~pool((a1 + 7));

  return ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::~sparse_set(a1);
}

void *ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A24520;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C40D7EB2065);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

void ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::~sparse_set(void *a1)
{
  ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~group_storage(void *a1)
{
  ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void md::data_array_basic<geo::handle<md::MaterialIDStorage>,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A244E0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_basic<geo::handle<md::MaterialIDStorage>,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~data_array_basic(void *a1)
{
  *a1 = &unk_1F2A244E0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~group_storage(a1);
}

void md::data_array_recycle_pool<md::MaterialIDStorage,geo::handle<md::MaterialIDStorage>,std::shared_ptr<gms::Material<ggl::Texture2D>>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A244C0;
  md::data_recycle_pool<std::shared_ptr<gms::Material<ggl::Texture2D>>>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A244E0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~group_storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::data_array_recycle_pool<md::MaterialIDStorage,geo::handle<md::MaterialIDStorage>,std::shared_ptr<gms::Material<ggl::Texture2D>>>::~data_array_recycle_pool(void *a1)
{
  *a1 = &unk_1F2A244C0;
  md::data_recycle_pool<std::shared_ptr<gms::Material<ggl::Texture2D>>>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A244E0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~group_storage(a1);
}

void *md::data_array_cache<md::MaterialIDStorage,geo::handle<md::MaterialIDStorage>,md::MaterialKey,std::shared_ptr<gms::Material<ggl::Texture2D>>,md::MaterialKeyHasher>::~data_array_cache(void *a1)
{
  *a1 = &unk_1F2A244A0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 49));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((a1 + 44));
  *a1 = &unk_1F2A244C0;
  md::data_recycle_pool<std::shared_ptr<gms::Material<ggl::Texture2D>>>::~data_recycle_pool((a1 + 32));
  *a1 = &unk_1F2A244E0;
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  return ecs2::group_storage<geo::handle<md::MaterialIDStorage>,md::Counter,md::MaterialIDStorage,std::shared_ptr<gms::Material<ggl::Texture2D>> *>::~group_storage(a1);
}

unint64_t md::MaterialResourceStore::createColorData(int8x8_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if ((*(a3 + 16) & 1) == 0)
  {
    add = atomic_fetch_add(&gdc::FamilyInfo<UniqueKey,unsigned long long>::Counter::nextId(void)::counter, 1uLL);
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 16) = 1;
    }

    *a3 = add - 0x61C8864680B583EBLL;
    *(a3 + 8) = 0;
  }

  v7 = a1 + 208;
  v8 = std::__hash_table<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::__unordered_map_hasher<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,md::MaterialKeyHasher,std::equal_to<md::MaterialKey>,true>,std::__unordered_map_equal<md::MaterialKey,std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>,std::equal_to<md::MaterialKey>,md::MaterialKeyHasher,true>,std::allocator<std::__hash_value_type<md::MaterialKey,geo::handle<md::MaterialIDStorage>>>>::find<md::MaterialKey>(&a1[208], a3);
  if (!v8 || (v9 = v8[4]) == 0)
  {
    v10 = a1[191];
    v11 = a1[193];
    if (*&a1[190] == *&v10)
    {
      v9 = ((*&a1[194] - *&v11) >> 3) | 0x100000000;
      v91 = v9;
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&a1[193], &v91);
    }

    else
    {
      v9 = *(*&v11 + 8 * *(*&v10 - 8));
      a1[191] = (*&v10 - 8);
    }

    v91 = v9;
    v12 = v9 >> 6;
    v13 = a1[166];
    v14 = a1[165];
    if (v12 >= &v13[-*&v14] >> 3)
    {
      v89 = v3;
      v15 = a2;
      v16 = v12 + 1;
      v17 = v12 + 1 - (&v13[-*&v14] >> 3);
      v18 = a1[167];
      if (v17 > (*&v18 - v13) >> 3)
      {
        v19 = *&v18 - *&v14;
        if (v19 >> 2 > v16)
        {
          v16 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v16;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v20);
      }

      bzero(v13, 8 * v17);
      a1[166] = &v13[8 * v17];
      v14 = a1[165];
      a2 = v15;
      v3 = v89;
    }

    v21 = *(*&v14 + 8 * v12);
    if (!v21)
    {
      operator new();
    }

    v22 = (v21 + 16 * (v9 & 0x3F));
    if (*v22 != -1 || v22[1] != 0)
    {
LABEL_83:
      v69 = *(v3 + 8);
      v70 = (*v3 + ((v69 - 0x61C8864680B583EBLL) << 6) - 0x3A3AA7D820E2E4E6) ^ (v69 - 0x61C8864680B583EBLL);
      v71 = *(v3 + 9);
      v72 = (v71 - 0x61C8864680B583EBLL + (v70 << 6) + (v70 >> 2)) ^ v70;
      v73 = a1[209];
      if (v73)
      {
        v74 = vcnt_s8(v73);
        v74.i16[0] = vaddlv_u8(v74);
        if (v74.u32[0] > 1uLL)
        {
          v75 = (v71 - 0x61C8864680B583EBLL + (v70 << 6) + (v70 >> 2)) ^ v70;
          if (v72 >= *&v73)
          {
            v75 = v72 % *&v73;
          }
        }

        else
        {
          v75 = v72 & (*&v73 - 1);
        }

        v76 = *(*v7 + 8 * v75);
        if (v76)
        {
          for (i = *v76; i; i = *i)
          {
            v78 = i[1];
            if (v78 == v72)
            {
              if (i[2] == *v3 && __PAIR64__(*(i + 25), *(i + 24)) == __PAIR64__(v71, v69))
              {
                i[4] = v9;
                v79 = a1[214];
                if (!*&v79)
                {
                  goto LABEL_119;
                }

                v80 = vcnt_s8(v79);
                v80.i16[0] = vaddlv_u8(v80);
                if (v80.u32[0] > 1uLL)
                {
                  v81 = v9;
                  if (v9 >= *&v79)
                  {
                    v81 = v9 % *&v79;
                  }
                }

                else
                {
                  v81 = (*&v79 - 1) & v9;
                }

                v82 = *(*&a1[213] + 8 * v81);
                if (!v82 || (v83 = *v82) == 0)
                {
LABEL_119:
                  operator new();
                }

                while (1)
                {
                  v84 = v83[1];
                  if (v84 == v9)
                  {
                    if (v83[2] == v9)
                    {
                      v85 = *v3;
                      *(v83 + 16) = *(v3 + 8);
                      v83[3] = v85;
                      return v9;
                    }
                  }

                  else
                  {
                    if (v80.u32[0] > 1uLL)
                    {
                      if (v84 >= *&v79)
                      {
                        v84 %= *&v79;
                      }
                    }

                    else
                    {
                      v84 &= *&v79 - 1;
                    }

                    if (v84 != v81)
                    {
                      goto LABEL_119;
                    }
                  }

                  v83 = *v83;
                  if (!v83)
                  {
                    goto LABEL_119;
                  }
                }
              }
            }

            else
            {
              if (v74.u32[0] > 1uLL)
              {
                if (v78 >= *&v73)
                {
                  v78 %= *&v73;
                }
              }

              else
              {
                v78 &= *&v73 - 1;
              }

              if (v78 != v75)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&a1[168], &v91);
    v24 = ((*&a1[169] - *&a1[168]) >> 3) - 1;
    *v22 = HIDWORD(v9);
    v22[1] = v24;
    v25 = v24 & 0x3F;
    v26 = (*(*&a1[171] + 8 * ecs2::pool<md::Counter,64ul>::page_at_index(&a1[171], v24)) + 24 * v25);
    *v26 = vdupq_n_s64(1uLL);
    v26[1].i16[0] = 1;
    v27 = v24 >> 6;
    v28 = a1[178];
    v29 = a1[177];
    v30 = *&v28 - *&v29;
    v88 = v25;
    v90 = v24 >> 6;
    if (v24 >> 6 >= (*&v28 - *&v29) >> 3)
    {
      v31 = v27 + 1;
      v32 = v27 + 1 - (v30 >> 3);
      v33 = a1[179];
      if (v32 > (*&v33 - *&v28) >> 3)
      {
        v34 = *&v33 - *&v29;
        v35 = (*&v33 - *&v29) >> 2;
        if (v35 <= v31)
        {
          v35 = v27 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v36);
      }

      v37 = 0;
      v38 = (v32 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v39 = vdupq_n_s64(v38);
      do
      {
        v40 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(vdupq_n_s64(v37), xmmword_1B33B0560)));
        if (v40.i8[0])
        {
          *(*&v28 + 8 * v37) = 0;
        }

        if (v40.i8[4])
        {
          *(*&v28 + 8 * v37 + 8) = 0;
        }

        v37 += 2;
      }

      while (v38 - ((v32 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v37);
      a1[178] = (*&v28 + 8 * v32);
      v41 = a1[181];
      v42 = a1[180];
      v43 = (*&v41 - *&v42) >> 4;
      if (v43 <= v27)
      {
        v44 = v31 - v43;
        v45 = a1[182];
        if (v44 > (*&v45 - *&v41) >> 4)
        {
          v46 = *&v45 - *&v42;
          v47 = v46 >> 3;
          if (v46 >> 3 <= v31)
          {
            v47 = v27 + 1;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFF0)
          {
            v48 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v48 = v47;
          }

          if (!(v48 >> 60))
          {
            operator new();
          }

          goto LABEL_121;
        }

        bzero(*&a1[181], 16 * v44);
        a1[181] = (*&v41 + 16 * v44);
        v25 = v88;
        v27 = v90;
      }

      else if (v31 < v43)
      {
        a1[181] = (*&v42 + 16 * v31);
      }

      v29 = a1[177];
      if (v30 < *&a1[178] - *&v29)
      {
        operator new();
      }
    }

    v49 = *(*&v29 + 8 * v27) + 20 * v25;
    *v49 = *a2;
    *(v49 + 16) = *(a2 + 16);
    v50 = a1[184];
    v51 = a1[183];
    if (v27 < (*&v50 - *&v51) >> 3)
    {
LABEL_82:
      *(*(*&v51 + 8 * v27) + 8 * v25) = 0;
      goto LABEL_83;
    }

    v87 = *&v50 - *&v51;
    v52 = v27 + 1;
    v53 = v27 + 1 - ((*&v50 - *&v51) >> 3);
    v54 = a1[185];
    if (v53 > (*&v54 - *&v50) >> 3)
    {
      v55 = *&v54 - *&v51;
      v56 = (*&v54 - *&v51) >> 2;
      if (v56 <= v52)
      {
        v56 = v27 + 1;
      }

      if (v55 >= 0x7FFFFFFFFFFFFFF8)
      {
        v57 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v57 = v56;
      }

      if (!(v57 >> 61))
      {
        operator new();
      }

      goto LABEL_121;
    }

    v58 = 0;
    v59 = (v53 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v60 = vdupq_n_s64(v59);
    do
    {
      v61 = vmovn_s64(vcgeq_u64(v60, vorrq_s8(vdupq_n_s64(v58), xmmword_1B33B0560)));
      if (v61.i8[0])
      {
        *(*&v50 + 8 * v58) = 0;
      }

      if (v61.i8[4])
      {
        *(*&v50 + 8 * v58 + 8) = 0;
      }

      v58 += 2;
    }

    while (v59 - ((v53 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v58);
    a1[184] = (*&v50 + 8 * v53);
    v62 = a1[187];
    v63 = a1[186];
    v64 = (*&v62 - *&v63) >> 4;
    if (v64 > v27)
    {
      if (v52 < v64)
      {
        a1[187] = (*&v63 + 16 * v52);
      }

      goto LABEL_80;
    }

    v65 = v52 - v64;
    v66 = a1[188];
    if (v65 <= (*&v66 - *&v62) >> 4)
    {
      bzero(*&a1[187], 16 * v65);
      a1[187] = (*&v62 + 16 * v65);
      v25 = v88;
      v27 = v90;
LABEL_80:
      v51 = a1[183];
      if (v87 < *&a1[184] - *&v51)
      {
        operator new();
      }

      goto LABEL_82;
    }

    v67 = *&v66 - *&v63;
    v68 = v67 >> 3;
    if (v67 >> 3 <= v52)
    {
      v68 = v27 + 1;
    }

    if (v67 >= 0x7FFFFFFFFFFFFFF0)
    {
      v68 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (!(v68 >> 60))
    {
      operator new();
    }

LABEL_121:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return v9;
}

uint64_t md::MaterialResourceStore::getSSAOIntensityData(void *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = a1[273];
  if (v2 < (a1[274] - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = (v4 + 16 * (a2 & 0x3F)), *v5 == HIDWORD(a2)))
  {
    v6 = a1[276];
    v7 = v6 + 8 * v5[1];
    v8 = a1[277];
  }

  else
  {
    v8 = a1[277];
    v6 = a1[276];
    v7 = v8;
  }

  if (v7 == v8)
  {
    return 0;
  }

  v10 = (v7 - v6) >> 3;
  v11 = (v10 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v12 = v10 & 0x3F;
  v9 = *(a1[285] + v11) + 4 * (v10 & 0x3F);
  ++*(*(a1[279] + v11) + 24 * v12);
  return v9;
}

uint64_t md::MaterialResourceStore::disconnect<geo::handle<md::ls::ColorData>>(void *a1, unint64_t a2)
{
  result = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(a1 + 164, a2);
  if (result != a1[169])
  {
    v4 = (*(a1[171] + ((((result - a1[168]) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (((result - a1[168]) >> 3) & 0x3F));
    v5 = v4[1];
    if (!v5 || (v6 = v5 - 1, (v4[1] = v6) == 0))
    {
      *v4 = 0;
    }
  }

  return result;
}

void md::MaterialResourceStore::resetMaterialPtrStorage(md::MaterialResourceStore *this)
{
  v1 = *(this + 6);
  v2 = *(this + 7);
  if (v1 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(*(this + 15) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F);
      v6 = *(v5 + 16);
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      v1 += 8;
      ++v4;
    }

    while (v1 != v2);
  }
}

uint64_t *std::unique_ptr<md::DebugConsoleManager>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    if (*v2 != v4)
    {
      do
      {
        v5 = *v3;
        v6 = v3[1];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          v7 = *(v2 + 24);
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          ggl::Renderer::removeDebugRenderer(v7, v5);
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        else
        {
          ggl::Renderer::removeDebugRenderer(*(v2 + 24), v5);
        }

        v3 += 2;
      }

      while (v3 != v4);
    }

    v8 = *(v2 + 40);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *v2;
    if (*v2)
    {
      v10 = *(v2 + 8);
      v11 = *v2;
      if (v10 != v9)
      {
        do
        {
          v12 = *(v10 - 1);
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v12);
          }

          v10 -= 2;
        }

        while (v10 != v9);
        v11 = *v2;
      }

      *(v2 + 8) = v9;
      operator delete(v11);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t *std::unique_ptr<md::YFlipPass>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *v2;
    *v2 = 0;
    if (v8)
    {
      ggl::RenderQueue::~RenderQueue(v8);
      MEMORY[0x1B8C62190]();
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B2FD1464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id location, ...)
{
  va_start(va, location);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t gdc::ServiceLocator::resolve<md::FrameService>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0x8C3843AC816FCBCLL)
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

void sub_1B2FD2140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  (*(*v18 + 8))(v18, a2, a3, a4, a5, a6, a7, a8);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_1B2FD2268(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2FD232C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ggl::RenderBuffer *,std::shared_ptr<ggl::RenderBuffer>::__shared_ptr_default_delete<ggl::RenderBuffer,ggl::RenderBuffer>,std::allocator<ggl::RenderBuffer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::RenderBuffer *,std::shared_ptr<ggl::RenderBuffer>::__shared_ptr_default_delete<ggl::RenderBuffer,ggl::RenderBuffer>,std::allocator<ggl::RenderBuffer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::Texture2D *,std::shared_ptr<ggl::Texture2DAbstract>::__shared_ptr_default_delete<ggl::Texture2DAbstract,ggl::Texture2D>,std::allocator<ggl::Texture2D>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::Texture2D *,std::shared_ptr<ggl::Texture2DAbstract>::__shared_ptr_default_delete<ggl::Texture2DAbstract,ggl::Texture2D>,std::allocator<ggl::Texture2D>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::Texture2D *,std::shared_ptr<ggl::Texture>::__shared_ptr_default_delete<ggl::Texture,ggl::Texture2D>,std::allocator<ggl::Texture2D>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::Texture2D *,std::shared_ptr<ggl::Texture>::__shared_ptr_default_delete<ggl::Texture,ggl::Texture2D>,std::allocator<ggl::Texture2D>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<ggl::RenderBuffer *,std::shared_ptr<ggl::Texture2DAbstract>::__shared_ptr_default_delete<ggl::Texture2DAbstract,ggl::RenderBuffer>,std::allocator<ggl::RenderBuffer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::RenderBuffer *,std::shared_ptr<ggl::Texture2DAbstract>::__shared_ptr_default_delete<ggl::Texture2DAbstract,ggl::RenderBuffer>,std::allocator<ggl::RenderBuffer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::RenderBuffer::~RenderBuffer(ggl::RenderBuffer *this)
{
  v1 = (this - 40);
  *(this - 5) = &unk_1F2A5DA30;
  *this = &unk_1F2A5DA50;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::Texture::~Texture(v1);

  JUMPOUT(0x1B8C62190);
}

{
  v1 = (this - 40);
  *(this - 5) = &unk_1F2A5DA30;
  *this = &unk_1F2A5DA50;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::Texture::~Texture(v1);
}

void sub_1B2FD27D0(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  MEMORY[0x1B8C62190](v2, 0x10F1C400DC7F665);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ggl::IOSurfaceBitmapData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20100;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2FD3870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void *std::vector<ggl::PixelFormat>::vector[abi:nn200100](void *a1, int *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<GGLImageCanvasRendererProvider *,std::shared_ptr<GGLImageCanvasRendererProvider>::__shared_ptr_default_delete<GGLImageCanvasRendererProvider,GGLImageCanvasRendererProvider>,std::allocator<GGLImageCanvasRendererProvider>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<GGLImageCanvasRendererProvider *,std::shared_ptr<GGLImageCanvasRendererProvider>::__shared_ptr_default_delete<GGLImageCanvasRendererProvider,GGLImageCanvasRendererProvider>,std::allocator<GGLImageCanvasRendererProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void GGLImageCanvasRendererProvider::~GGLImageCanvasRendererProvider(id *this)
{

  JUMPOUT(0x1B8C62190);
}

{
}

uint64_t std::__shared_ptr_pointer<GGLImageCanvasRenderTargetPreparer *,std::shared_ptr<GGLImageCanvasRenderTargetPreparer>::__shared_ptr_default_delete<GGLImageCanvasRenderTargetPreparer,GGLImageCanvasRenderTargetPreparer>,std::allocator<GGLImageCanvasRenderTargetPreparer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<GGLImageCanvasRenderTargetPreparer *,std::shared_ptr<GGLImageCanvasRenderTargetPreparer>::__shared_ptr_default_delete<GGLImageCanvasRenderTargetPreparer,GGLImageCanvasRenderTargetPreparer>,std::allocator<GGLImageCanvasRenderTargetPreparer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t GGLImageCanvasRenderTargetPreparer::prepareInteractiveTargets()
{
  v8 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v0 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    v2 = 136315650;
    v3 = "false";
    v4 = 2080;
    v5 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/GGLImageCanvas.mm";
    v6 = 1024;
    v7 = 57;
    _os_log_impl(&dword_1B2754000, v0, OS_LOG_TYPE_FAULT, "GGLImageCanvas should not participate in interactive frames: Assertion with expression - %s : Failed in file - %s line - %i", &v2, 0x1Cu);
  }

  return 0;
}

void GGLImageCanvasRenderTargetPreparer::~GGLImageCanvasRenderTargetPreparer(id *this)
{

  JUMPOUT(0x1B8C62190);
}

{
}

uint64_t std::__shared_ptr_pointer<GGLImageCanvasYFlipInjector *,std::shared_ptr<GGLImageCanvasYFlipInjector>::__shared_ptr_default_delete<GGLImageCanvasYFlipInjector,GGLImageCanvasYFlipInjector>,std::allocator<GGLImageCanvasYFlipInjector>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<GGLImageCanvasYFlipInjector *,std::shared_ptr<GGLImageCanvasYFlipInjector>::__shared_ptr_default_delete<GGLImageCanvasYFlipInjector,GGLImageCanvasYFlipInjector>,std::allocator<GGLImageCanvasYFlipInjector>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void GGLImageCanvasYFlipInjector::inject(id *this, ggl::RenderQueue *a2, ggl::RenderTarget *a3)
{
  v6 = [this[1] renderTarget];
  v7 = [this[1] flipPass];
  v8 = v7;
  v9 = *(v6 + 184);
  if (!v9)
  {
    v9 = *(v6 + 88);
  }

  **(*(v7 + 24) + 168) = v9;
  v10 = ggl::CommandBuffer::clearRenderItems(*(v7 + 8));
  if (**(*(v8 + 24) + 168))
  {
    v11 = *(v8 + 8);
    v12 = *(v8 + 32);
    v14 = v11[10];
    v13 = v11[11];
    if (v14 >= v13)
    {
      v16 = v11[9];
      v17 = (v14 - v16) >> 3;
      if ((v17 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 2;
      if (v18 >> 2 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      v31[4] = v11 + 12;
      if (v20)
      {
        v21 = ggl::zone_mallocator::instance(v10);
        v22 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v21, v20);
      }

      else
      {
        v22 = 0;
      }

      v24 = &v22[8 * v20];
      v23 = &v22[8 * v17];
      *v23 = v12;
      v15 = v23 + 8;
      v25 = v11[9];
      v26 = v11[10] - v25;
      v27 = &v23[-v26];
      memcpy(&v23[-v26], v25, v26);
      v28 = v11[9];
      v11[9] = v27;
      v11[10] = v15;
      v29 = v11[11];
      v11[11] = v24;
      v31[2] = v28;
      v31[3] = v29;
      v31[0] = v28;
      v31[1] = v28;
      std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v31);
    }

    else
    {
      *v14 = v12;
      v15 = v14 + 1;
    }

    v11[10] = v15;
  }

  v30 = *v8;

  ggl::RenderQueue::attachPass(a2, a3, v30);
}

void GGLImageCanvasYFlipInjector::~GGLImageCanvasYFlipInjector(id *this)
{

  JUMPOUT(0x1B8C62190);
}

{
}

void sub_1B2FD4818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);

  _Unwind_Resume(a1);
}

id GEOGetVectorKitVKMapSnapshotLog(void)
{
  if (GEOGetVectorKitVKMapSnapshotLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKMapSnapshotLog(void)::onceToken, &__block_literal_global_21209);
  }

  v1 = GEOGetVectorKitVKMapSnapshotLog(void)::log;

  return v1;
}

void ___ZL31GEOGetVectorKitVKMapSnapshotLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "VKMapSnapshot");
  v1 = GEOGetVectorKitVKMapSnapshotLog(void)::log;
  GEOGetVectorKitVKMapSnapshotLog(void)::log = v0;
}

void sub_1B2FD4D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a9);

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKMapSnapshotCreator * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A20368;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKMapSnapshotCreator * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A20368;

  return a1;
}

void sub_1B2FD5278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void sub_1B2FD803C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(a1);
}

void sub_1B2FD8D20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKMapSnapshotCreator;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B2FD9770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<NSMutableSet<objc_object  {objcproto29VKARWalkingFeatureSetObserver}*> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A20388;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSMutableSet<objc_object  {objcproto29VKARWalkingFeatureSetObserver}*> * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A20388;

  return a1;
}

void sub_1B2FDA2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::mutex::unlock((v10 + 72));

  _Unwind_Resume(a1);
}

void sub_1B2FDA370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::mutex::unlock((v10 + 72));

  _Unwind_Resume(a1);
}

void sub_1B2FDBD1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B2FDBE48(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKARWalkingFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A580C8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKARWalkingFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A580C8;

  return a1;
}

uint64_t md::LabelMarker::isLabelHitAtScreenPoint(md::LabelMarker *this, const CGPoint *a2, uint64_t a3)
{
  md::LabelMarker::acquireDisplayLock(&v10, this);
  if (v10)
  {
    v6 = *(v10 + 476);
    v7 = a2->x * v6;
    *&v6 = *(v10 + 1500) - a2->y * v6;
    *v14 = v7;
    v14[1] = LODWORD(v6);
    v8 = (*(**(v10 + 240) + 232))(*(v10 + 240), this, v14, a3);
  }

  else
  {
    v8 = 0;
  }

  if (v13 == 1)
  {
    std::recursive_mutex::unlock(v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  return v8;
}

void sub_1B2FDCCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::recursive_mutex *a12, char a13)
{
  if (a13 == 1)
  {
    std::recursive_mutex::unlock(a12);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

float md::LabelMarker::screenHeightInPixels(md::LabelMarker *this)
{
  md::LabelMarker::acquireDisplayLock(&v3, this);
  if (v3)
  {
    v1 = *(v3 + 1500);
  }

  else
  {
    v1 = 0.0;
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  return v1;
}

uint64_t md::LabelMarker::isAssociatedWithLabelManager(md::LabelMarker *this, md::LabelManager *a2)
{
  v3 = *(this + 30);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = *(this + 29);
  if (v6)
  {
    v7 = v6 == a2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  return v8;
}

void sub_1B2FDD024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 md::RenderItemPool::construct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(a2 + 56);
  v10 = *(a2 + 72);
  v11 = *(a2 + 88);
  v12 = *(a2 + 104);
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  v4 = md::FrameAllocator<ggl::RenderItem>::alloc(a1);
  *v4 = &off_1F2A5D8B8;
  result = v11;
  *(v4 + 7) = v9;
  *(v4 + 5) = v8;
  *(v4 + 1) = v6;
  *(v4 + 3) = v7;
  *(v4 + 13) = v12;
  *(v4 + 9) = v10;
  *(v4 + 11) = v11;
  v4[8] = a3;
  return result;
}

void md::Logic<md::PolygonLogic,md::PolygonContext,md::LogicDependencies<gdc::TypeList<md::SettingsContext,md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

uint64_t md::Logic<md::PolygonLogic,md::PolygonContext,md::LogicDependencies<gdc::TypeList<md::SettingsContext,md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x401D4CCE847AB1D1 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::SettingsContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::SettingsContext,md::SceneContext>(*(a2 + 8));
    v8[1] = v7;
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::PolygonContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void *gdc::ManagedObjectHolder<md::PolygonContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A205A0;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4004CED998);
  }

  return a1;
}

void md::PolygonLogic::~PolygonLogic(md::PolygonLogic *this)
{
  md::PolygonLogic::~PolygonLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A20430;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 216);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 136, v2);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t md::NavLabel::setLabelPart(md::NavLabel *this, md::NavLabelPart *a2)
{
  v4 = *(this + 38);
  *(this + 38) = a2;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(*a2 + 24);

  return v5(a2, this + 192);
}

void geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A43ED8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A43ED8;

  return a1;
}

id VKLabelNavArtworkCache::getRoadSignArtwork(VKLabelNavArtworkCache *this, NSString *a2, const RoadSignMetrics *a3, const RoadSignTextMetrics *a4, const RoadSignMetrics *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = a2;
  RoadSignKey = VKLabelNavArtworkCache::getRoadSignKey(v9, 0, &a3->_orientation, a5, a4, v10);
  v46 = &unk_1F2A43ED8;
  v47 = 0;
  v11 = geo::LRUPolicy<unsigned long,geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<unsigned long>>::get(*this + 48, (*this + 8), RoadSignKey);
  if (*this + 48 == v11)
  {
    v12 = *(this + 2);
    v13 = *&a3->_horizontalMargin;
    v33[6] = *&a3->_signHeight;
    v33[7] = v13;
    v14 = *&a3->_glyphSize.height;
    v33[8] = *&a3->_cornerRadius;
    v33[9] = v14;
    v15 = *&a3->_arrowJoinCornerRadius;
    v33[2] = *&a3->_arrowLength;
    v33[3] = v15;
    v16 = *&a3->_strokeWeight;
    v33[4] = *&a3->_shadowOffset.height;
    v33[5] = v16;
    v17 = *&a3->_contentScale;
    v33[0] = *&a3->_orientation;
    v33[1] = v17;
    v18 = *&a5->_contentScale;
    v36[0] = *&a5->_orientation;
    v36[1] = v18;
    v36[2] = *&a5->_arrowLength;
    arrowJoinCornerRadius = a5->_arrowJoinCornerRadius;
    strokeWeight_low = LOBYTE(a5->_strokeWeight);
    if (SHIBYTE(a5->_shadowRadius) < 0)
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&shadowOffset, *&a5->_shadowOffset.width, *&a5->_shadowOffset.height);
    }

    else
    {
      shadowOffset = a5->_shadowOffset;
      shadowRadius = a5->_shadowRadius;
    }

    horizontalMargin_low = LOBYTE(a5->_horizontalMargin);
    if (SHIBYTE(a5->_signMargin) < 0)
    {
      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&v41, *&a5->_innerStrokeWeight, *&a5->_signHeight);
    }

    else
    {
      v41 = *&a5->_innerStrokeWeight;
      signMargin = a5->_signMargin;
    }

    v44 = *&a5->_verticalMargin;
    width_low = LOWORD(a5->_glyphSize.width);
    v31 = 0;
    v32 = 0;
    v19 = *(this + 6);
    v29 = *(this + 5);
    v30 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = md::RoadSignArtworkGenerator::generateRoadSignArtwork(v12, v9, v33, v36, a4, &v31, &v29);
    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    v21 = v32;
    if (v32)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v32);
    }

    if (SHIBYTE(signMargin) < 0)
    {
      v22 = v41;
      v23 = mdm::zone_mallocator::instance(v21);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v23, v22);
    }

    if (SHIBYTE(shadowRadius) < 0)
    {
      width = shadowOffset.width;
      v25 = mdm::zone_mallocator::instance(v21);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v25, *&width);
    }

    geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v46, v20);
    v26 = *this;
    geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v35, &v46);
    geo::Cache<unsigned long,geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<unsigned long>,geo::LRUPolicy>::insert(v26, &RoadSignKey, &v35);
  }

  geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&v46, *(v11 + 32));
  v27 = v47;
  v46 = &unk_1F2A43ED8;

  return v27;
}

void sub_1B2FDDDD4(mdm::zone_mallocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a49 < 0)
  {
    v60 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v60, a44);
  }

  *(v58 - 96) = v57;

  _Unwind_Resume(a1);
}

unint64_t VKLabelNavArtworkCache::getRoadSignKey(VKLabelNavArtworkCache *this, NSString *a2, unsigned __int8 *a3, const RoadSignMetrics *a4, const RoadSignTextMetrics *a5, const md::RoadSignColoring *a6)
{
  v10 = this;
  v11 = v10;
  if (v10)
  {
    v12 = [(VKLabelNavArtworkCache *)v10 hash];
  }

  else
  {
    v12 = 0;
  }

  v13 = *a3;
  v14 = *(a3 + 2);
  v152 = *(a3 + 1);
  v140 = *(a3 + 3);
  v141 = *(a3 + 4);
  v142 = *(a3 + 56);
  v143 = *(a3 + 9);
  v144 = *(a3 + 10);
  v145 = *(a3 + 12);
  v146 = *(a3 + 13);
  v147 = *(a3 + 14);
  v148 = *(a3 + 15);
  v149 = *(a3 + 16);
  v150 = *(a3 + 136);
  v151 = *(a3 + 19);
  v15 = *&a4->_orientation;
  scale = a4->_scale;
  contentScale = a4->_contentScale;
  arrowWeight = a4->_arrowWeight;
  arrowLength = a4->_arrowLength;
  arrowTipCornerRadius = a4->_arrowTipCornerRadius;
  shadowRadius_high = SHIBYTE(a4->_shadowRadius);
  if (shadowRadius_high >= 0)
  {
    *&width = &a4->_shadowOffset;
  }

  else
  {
    width = a4->_shadowOffset.width;
  }

  if (shadowRadius_high >= 0)
  {
    v23 = HIBYTE(a4->_shadowRadius);
  }

  else
  {
    v23 = *&a4->_shadowOffset.height;
  }

  arrowJoinCornerRadius = a4->_arrowJoinCornerRadius;
  v25 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](*&width, v23);
  innerStrokeWeight = a4->_innerStrokeWeight;
  p_innerStrokeWeight = &a4->_innerStrokeWeight;
  v26 = innerStrokeWeight;
  v29 = *(p_innerStrokeWeight + 23);
  if (v29 >= 0)
  {
    v30 = p_innerStrokeWeight;
  }

  else
  {
    v30 = *&v26;
  }

  if (v29 >= 0)
  {
    v31 = *(p_innerStrokeWeight + 23);
  }

  else
  {
    v31 = *(p_innerStrokeWeight + 1);
  }

  v32 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v30, v31);
  if (LOBYTE(a5->_scale) == 1)
  {
    v33 = 0;
    v34 = 0;
    p_contentScale = &a5->_contentScale;
    do
    {
      v36 = *&p_contentScale[v33] - 0x61C8864680B583EBLL;
      if (p_contentScale[v33] == 0.0)
      {
        v36 = 0x9E3779B97F4A7C15;
      }

      v34 ^= (v34 >> 2) + (v34 << 6) + v36;
      ++v33;
    }

    while (v33 != 4);
  }

  else
  {
    v34 = 0;
  }

  if (BYTE3(a5->_scale) == 1)
  {
    v37 = 0;
    p_horizontalMargin = &a5[1]._horizontalMargin;
    do
    {
      v39 = *&p_horizontalMargin[v37] - 0x61C8864680B583EBLL;
      if (*&p_horizontalMargin[v37] == 0.0)
      {
        v39 = 0x9E3779B97F4A7C15;
      }

      v34 ^= (v34 >> 2) + (v34 << 6) + v39;
      v37 += 8;
    }

    while (v37 != 32);
  }

  if (BYTE4(a5->_scale) == 1)
  {
    v40 = 0;
    p_secondaryTextSize = &a5[1]._secondaryTextSize;
    do
    {
      v42 = *&p_secondaryTextSize[v40] - 0x61C8864680B583EBLL;
      if (*&p_secondaryTextSize[v40] == 0.0)
      {
        v42 = 0x9E3779B97F4A7C15;
      }

      v34 ^= (v34 >> 2) + (v34 << 6) + v42;
      v40 += 8;
    }

    while (v40 != 32);
  }

  if (BYTE1(a5->_scale) == 1)
  {
    v43 = 0;
    p_textSize = &a5->_textSize;
    do
    {
      v45 = *&p_textSize[v43] - 0x61C8864680B583EBLL;
      if (p_textSize[v43] == 0.0)
      {
        v45 = 0x9E3779B97F4A7C15;
      }

      v34 ^= (v34 >> 2) + (v34 << 6) + v45;
      ++v43;
    }

    while (v43 != 8);
  }

  if (BYTE5(a5->_scale) == 1)
  {
    v46 = 0;
    p_var0 = &a5[1].var0;
    while (v46 != 8)
    {
      v48 = *&p_var0[v46] - 0x61C8864680B583EBLL;
      if (*&p_var0[v46] == 0.0)
      {
        v48 = 0x9E3779B97F4A7C15;
      }

      v34 ^= (v34 >> 2) + (v34 << 6) + v48;
      v46 += 2;
    }
  }

  if (BYTE6(a5->_scale) == 1)
  {
    v49 = 0;
    p_verticalMargin = &a5[2]._verticalMargin;
    while (v49 != 32)
    {
      v51 = *&p_verticalMargin[v49] - 0x61C8864680B583EBLL;
      if (*&p_verticalMargin[v49] == 0.0)
      {
        v51 = 0x9E3779B97F4A7C15;
      }

      v34 ^= (v34 >> 2) + (v34 << 6) + v51;
      v49 += 8;
    }
  }

  v53 = p_innerStrokeWeight[4];
  v52 = p_innerStrokeWeight[5];
  if (HIBYTE(a5->_scale) == 1)
  {
    v54 = 0;
    p_fontFamily = &a5[2]._fontFamily;
    while (v54 != 32)
    {
      v56 = (*(&p_fontFamily->__rep_.__l.__data_ + v54) - 0x61C8864680B583EBLL);
      if (*(&p_fontFamily->__rep_.__l.__data_ + v54) == 0.0)
      {
        v56 = 0x9E3779B97F4A7C15;
      }

      v34 ^= (v34 >> 2) + (v34 << 6) + v56;
      v54 += 8;
    }
  }

  if (*(p_innerStrokeWeight + 49))
  {
    v57 = 0x9E3779B97F4A7C16;
  }

  else
  {
    v57 = 0x9E3779B97F4A7C15;
  }

  v58 = *&v15 - 0x61C8864680B583EBLL;
  if (v15 == 0.0)
  {
    v58 = 0x9E3779B97F4A7C15;
  }

  v59 = *&scale - 0x61C8864680B583EBLL;
  if (scale == 0.0)
  {
    v59 = 0x9E3779B97F4A7C15;
  }

  v60 = ((v58 >> 2) + (v58 << 6) + v59) ^ v58;
  v61 = round(v15 * contentScale * scale);
  v62 = *&v61 - 0x61C8864680B583EBLL;
  if (v61 == 0.0)
  {
    v62 = 0x9E3779B97F4A7C15;
  }

  v63 = (v62 + (v60 << 6) + (v60 >> 2)) ^ v60;
  v64 = round(v15 * arrowWeight * scale);
  v65 = *&v64 - 0x61C8864680B583EBLL;
  if (v64 == 0.0)
  {
    v65 = 0x9E3779B97F4A7C15;
  }

  v66 = (v65 + (v63 << 6) + (v63 >> 2)) ^ v63;
  v67 = round(v15 * arrowLength * scale);
  v68 = *&v67 - 0x61C8864680B583EBLL;
  if (v67 == 0.0)
  {
    v68 = 0x9E3779B97F4A7C15;
  }

  v69 = (v68 + (v66 << 6) + (v66 >> 2)) ^ v66;
  v70 = round(v15 * arrowTipCornerRadius * scale);
  v71 = *&v70 - 0x61C8864680B583EBLL;
  if (v70 == 0.0)
  {
    v71 = 0x9E3779B97F4A7C15;
  }

  v72 = (v71 + (v69 << 6) + (v69 >> 2)) ^ v69;
  v73 = round(v15 * arrowJoinCornerRadius * scale);
  v74 = *&v73 - 0x61C8864680B583EBLL;
  if (v73 == 0.0)
  {
    v74 = 0x9E3779B97F4A7C15;
  }

  v75 = (v74 + (v72 << 6) + (v72 >> 2)) ^ v72;
  v76 = (v25 - 0x61C8864680B583EBLL + (v75 << 6) + (v75 >> 2)) ^ v75;
  v77 = (v32 - 0x61C8864680B583EBLL + (v76 << 6) + (v76 >> 2)) ^ v76;
  v78 = *&v53 - 0x61C8864680B583EBLL;
  if (v53 == 0.0)
  {
    v78 = 0x9E3779B97F4A7C15;
  }

  v79 = (v78 + (v77 << 6) + (v77 >> 2)) ^ v77;
  v80 = *&v52 - 0x61C8864680B583EBLL;
  if (v52 == 0.0)
  {
    v80 = 0x9E3779B97F4A7C15;
  }

  v81 = (v80 + (v79 << 6) + (v79 >> 2)) ^ v79;
  v82 = (*(p_innerStrokeWeight + 48) - 0x61C8864680B583EBLL + (v81 << 6) + (v81 >> 2)) ^ v81;
  v83 = (v57 + (v82 << 6) + (v82 >> 2)) ^ v82;
  v84 = *&v152 - 0x61C8864680B583EBLL;
  if (v152 == 0.0)
  {
    v84 = 0x9E3779B97F4A7C15;
  }

  v86 = *&v14 - 0x61C8864680B583EBLL;
  if (v14 == 0.0)
  {
    v86 = 0x9E3779B97F4A7C15;
  }

  v85 = (((v13 - 0x61C8864680B583EBLL) >> 2) + ((v13 - 0x61C8864680B583EBLL) << 6) + v84) ^ (v13 - 0x61C8864680B583EBLL);
  v87 = (v86 + (v85 << 6) + (v85 >> 2)) ^ v85;
  v88 = round(v152 * v140 * v14);
  v89 = *&v88 - 0x61C8864680B583EBLL;
  if (v88 == 0.0)
  {
    v89 = 0x9E3779B97F4A7C15;
  }

  v90 = (v89 + (v87 << 6) + (v87 >> 2)) ^ v87;
  v91 = round(v152 * v141 * v14);
  v92 = *&v91 - 0x61C8864680B583EBLL;
  if (v91 == 0.0)
  {
    v92 = 0x9E3779B97F4A7C15;
  }

  v93 = (v92 + (v90 << 6) + (v90 >> 2)) ^ v90;
  v94 = vrndaq_f64(vmulq_n_f64(v142, v14 * v152));
  v95 = *&v94.f64[0] - 0x61C8864680B583EBLL;
  if (v94.f64[0] == 0.0)
  {
    v95 = 0x9E3779B97F4A7C15;
  }

  v96 = (v95 + (v93 << 6) + (v93 >> 2)) ^ v93;
  v97 = *&v94.f64[1] - 0x61C8864680B583EBLL;
  if (v94.f64[1] == 0.0)
  {
    v97 = 0x9E3779B97F4A7C15;
  }

  v98 = (v97 + (v96 << 6) + (v96 >> 2)) ^ v96;
  v99 = round(v152 * v143 * v14);
  v100 = *&v99 - 0x61C8864680B583EBLL;
  if (v99 == 0.0)
  {
    v100 = 0x9E3779B97F4A7C15;
  }

  v101 = (v100 + (v98 << 6) + (v98 >> 2)) ^ v98;
  v102 = round(v152 * v144 * v14);
  v103 = *&v102 - 0x61C8864680B583EBLL;
  if (v102 == 0.0)
  {
    v103 = 0x9E3779B97F4A7C15;
  }

  v104 = (v103 + (v101 << 6) + (v101 >> 2)) ^ v101;
  v105 = round(v152 * v145 * v14);
  v106 = *&v105 - 0x61C8864680B583EBLL;
  if (v105 == 0.0)
  {
    v106 = 0x9E3779B97F4A7C15;
  }

  v107 = (v106 + (v104 << 6) + (v104 >> 2)) ^ v104;
  v108 = round(v152 * v146 * v14);
  v109 = *&v108 - 0x61C8864680B583EBLL;
  if (v108 == 0.0)
  {
    v109 = 0x9E3779B97F4A7C15;
  }

  v110 = (v109 + (v107 << 6) + (v107 >> 2)) ^ v107;
  v111 = round(v152 * v147 * v14);
  v112 = *&v111 - 0x61C8864680B583EBLL;
  if (v111 == 0.0)
  {
    v112 = 0x9E3779B97F4A7C15;
  }

  v113 = (v112 + (v110 << 6) + (v110 >> 2)) ^ v110;
  v114 = round(v152 * v148 * v14);
  v115 = *&v114 - 0x61C8864680B583EBLL;
  if (v114 == 0.0)
  {
    v115 = 0x9E3779B97F4A7C15;
  }

  v116 = (v115 + (v113 << 6) + (v113 >> 2)) ^ v113;
  v117 = round(v152 * v149 * v14);
  v118 = *&v117 - 0x61C8864680B583EBLL;
  if (v117 == 0.0)
  {
    v118 = 0x9E3779B97F4A7C15;
  }

  *&v94.f64[0] = vdup_n_s32(v152 < 1.0);
  v119 = (v118 + (v116 << 6) + (v116 >> 2)) ^ v116;
  v120.i64[0] = v152 < 1.0;
  v120.i64[1] = HIDWORD(v94.f64[1]);
  v121 = vmulq_n_f64(v150, v152);
  v122 = vrndpq_f64(v121);
  v123 = vrndmq_f64(v121);
  *&v124 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v120, 0x3FuLL)), v122, v123).u64[0];
  v125 = ceil(v151 * v152);
  v126 = floor(v151 * v152);
  if (v152 < 1.0)
  {
    v126 = v125;
  }

  v127 = *&v124 - 0x61C8864680B583EBLL;
  if (v124 == 0.0)
  {
    v127 = 0x9E3779B97F4A7C15;
  }

  v128 = (v127 + (v119 << 6) + (v119 >> 2)) ^ v119;
  v129.i64[0] = LODWORD(v94.f64[0]);
  v129.i64[1] = HIDWORD(v94.f64[0]);
  *&v130 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v129, 0x3FuLL)), v122, v123).i64[1];
  v131 = *&v130 - 0x61C8864680B583EBLL;
  if (v130 == 0.0)
  {
    v131 = 0x9E3779B97F4A7C15;
  }

  v132 = (v131 + (v128 << 6) + (v128 >> 2)) ^ v128;
  v133 = *&v126 - 0x61C8864680B583EBLL;
  if (v126 == 0.0)
  {
    v133 = 0x9E3779B97F4A7C15;
  }

  v134 = ((v133 + (v132 << 6) + (v132 >> 2)) ^ v132) - 0x61C8864680B583EBLL;
  v135 = (&a2[8 * v12 - 0xC3910C8D016B07ELL].super.isa + (v12 >> 2) + 5) ^ v12;
  v136 = (v134 + (v135 << 6) + (v135 >> 2)) ^ v135;
  v137 = ((v136 << 6) - 0x61C8864680B583EBLL + (v136 >> 2) + v83) ^ v136;
  v138 = (v137 << 6) - 0x61C8864680B583EBLL + (v137 >> 2) + v34;

  return v138 ^ v137;
}

uint64_t geo::LRUPolicy<unsigned long,geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<unsigned long>>::get(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(a2, a3);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = v4[3];
    if (v5 == v6)
    {
      return *(a1 + 8);
    }

    v7 = v6[1];
    if (v7 == v5)
    {
      return *(a1 + 8);
    }

    else
    {
      v8 = *v6;
      *(v8 + 8) = v7;
      *v7 = v8;
      v9 = *v5;
      *(v9 + 8) = v6;
      *v6 = v9;
      *v5 = v6;
      v6[1] = v5;
      return *(a1 + 8);
    }
  }

  return a1;
}

void *geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A43ED8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void geo::Cache<unsigned long,geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<unsigned long>,geo::LRUPolicy>::insert(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v10[7] = *MEMORY[0x1E69E9840];
  geo::_retain_ptr<VKRoadSignArtwork * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v10, a3);
  v5 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 8), *a2);
  if (v5)
  {
    v6 = v5;
    v7 = v5[3];
    v9 = *v7;
    v8 = v7[1];
    *(v9 + 8) = v8;
    *v8 = v9;
    --*(a1 + 64);
    v7[3] = &unk_1F2A43ED8;

    operator delete(v7);
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((a1 + 8), v6);
  }

  operator new();
}

void sub_1B2FDED10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);

  _Unwind_Resume(a1);
}

uint64_t karo::media::SkyLoader::loadFromChunk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = a3 - 12;
  v8 = *(a4 + 8);
  do
  {
    v10 = *(a2 + v6);
    v9 = *(a2 + v6 + 4);
    v11 = *(a2 + v6 + 8);
    v12 = *(a4 + 16);
    if (v8 >= v12)
    {
      v13 = *a4;
      v14 = v8 - *a4;
      v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2) + 1;
      if (v15 > 0x1555555555555555)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v13) >> 2);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0xAAAAAAAAAAAAAAALL)
      {
        v17 = 0x1555555555555555;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (v17 <= 0x1555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = (4 * (v14 >> 2));
      *v18 = v10;
      v18[1] = v9;
      v18[2] = v11;
      v8 = v18 + 3;
      v19 = v18 - v14;
      memcpy(v18 - v14, v13, v14);
      *a4 = v19;
      *(a4 + 8) = v8;
      *(a4 + 16) = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v8 = v10;
      v8[1] = v9;
      v8[2] = v11;
      v8 += 3;
    }

    *(a4 + 8) = v8;
    v6 += 12;
  }

  while (v6 <= v7);
  return 1;
}

void md::mun::MuninOverlayRenderLayer::layout(md::mun::MuninOverlayRenderLayer *this, const md::LayoutContext *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v5 = gdc::Context::context<md::MuninSceneContext>(v4);
  v6 = md::LayoutContext::get<md::SharedResourcesContext>(v4);
  v7 = md::LayoutContext::get<md::CameraContext>(v4);
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    return;
  }

  v10 = v7;
  v11 = *v6;
  if (!*(this + 44))
  {
    operator new();
  }

  v12 = v5[8];
  v13 = *(this + 45);
  if (!v13)
  {
    goto LABEL_14;
  }

  if (!v12 || *(v12 + 72) != *(v13 + 96))
  {
    std::unique_ptr<md::mun::TapAnnotation>::reset[abi:nn200100](this + 45, 0);
    LOBYTE(v13) = *(this + 45) != 0;
LABEL_14:
    if ((v13 & 1) == 0 && v12)
    {
      v14 = gdc::CameraView::position(v10);
      gm::Matrix<double,3,1>::distanceToPoint<int,void>(v14, v12);
      operator new();
    }
  }

  v15 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), 0);
  if (v15)
  {
    v16 = *(*(v15 + 16) + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 45);
  if (v17)
  {
    if (!*(v17 + 104))
    {
      v18 = *md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 1));
      v52[0] = xmmword_1B33B0710;
      v52[1] = xmmword_1B33B0AD0;
      v53 = xmmword_1B33B1670;
      v54 = xmmword_1B33B1680;
      v55 = xmmword_1B33B0B40;
      v56 = xmmword_1B33B0AE0;
      v57 = xmmword_1B33AFEE0;
    }

    v19 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1)) + 808;
    geo::RigidTransform<double,double>::toMatrix(__p, v17 + 40);
    for (i = 0; i != 4; ++i)
    {
      v21 = 0;
      v22 = __p;
      do
      {
        v23 = 0;
        v24 = 0.0;
        v25 = v19;
        do
        {
          v26 = *v25;
          v25 += 4;
          v24 = v24 + *&v22[v23++] * v26;
        }

        while (v23 != 4);
        *(&v52[2 * v21++] + i) = v24;
        v22 += 4;
      }

      while (v21 != 4);
      v19 += 8;
    }

    v27 = 0;
    v28 = v52;
    do
    {
      v30 = *v28;
      v29 = v28[1];
      v28 += 2;
      *(&v48 + v27) = vcvt_hight_f32_f64(vcvt_f32_f64(v30), v29);
      v27 += 16;
    }

    while (v27 != 64);
    v31 = **(*(*(v17 + 24) + 8) + 136);
    ggl::BufferMemory::BufferMemory(__p);
    ggl::ResourceAccessor::accessConstantData(v52, 0, v31, 1);
    ggl::BufferMemory::operator=(__p, v52);
    ggl::BufferMemory::~BufferMemory(v52);
    v32 = v47;
    v33 = v49;
    *v47 = v48;
    v32[1] = v33;
    v34 = v51;
    v32[2] = v50;
    v32[3] = v34;
    v35 = *(v17 + 16);
    v36 = *(v35 + 88);
    v37 = *(v35 + 80) + vcvtad_u64_f64(fmin(fmax((*(v35 + 64) - *(v35 + 48)) / (*(v35 + 56) - *(v35 + 48)), 0.0), 1.0) * (v36 - *(v35 + 80)));
    if (v37 >= v36)
    {
      v37 = *(v35 + 88);
    }

    v38 = *(v35 + 24);
    v39.i64[0] = v37 % v38;
    v39.i64[1] = v37 / v38 % *(v35 + 28);
    v40 = *(v35 + 32);
    *(v32 + 8) = vcvt_f32_f64(v40);
    *(v32 + 9) = vcvt_f32_f64(vmulq_f64(v40, vcvtq_f64_u64(v39)));
    ggl::BufferMemory::~BufferMemory(__p);
    ggl::CommandBuffer::pushRenderItem(v16, **(v17 + 24));
    v41 = +[VKDebugSettings sharedSettings];
    if ([v41 muninDebugLayer])
    {
      v42 = *(v17 + 104);
      if (v42)
      {
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v52, **(*(v42 + 8) + 136));
        v43 = *(&v53 + 1);
        v44 = v49;
        **(&v53 + 1) = v48;
        v43[1] = v44;
        v45 = v51;
        v43[2] = v50;
        v43[3] = v45;
        ggl::CommandBuffer::pushRenderItem(v16, **(v17 + 104));
        ggl::BufferMemory::~BufferMemory(v52);
      }
    }
  }

  md::mun::MuninOverlayRenderLayer::debugLayout(this, a2);
}

void sub_1B2FDFF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  ggl::BufferMemory::~BufferMemory(va);

  _Unwind_Resume(a1);
}

void *std::unique_ptr<md::mun::TapRenderResources>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v2[4] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *std::unique_ptr<md::mun::TapAnnotation>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[14];
    v2[14] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[13];
    v2[13] = 0;
    if (v4)
    {
      std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v4);
    }

    v5 = v2[4];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::mun::MuninOverlayRenderLayer::debugLayout(md::mun::MuninOverlayRenderLayer *this, const md::LayoutContext *a2)
{
  v254 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v244 = gdc::Context::context<md::MuninSceneContext>(v4);
  v5 = md::LayoutContext::get<md::SharedResourcesContext>(v4);
  v6 = +[VKDebugSettings sharedSettings];
  v243 = v6;
  if (![v6 muninDebugLayer])
  {
    goto LABEL_138;
  }

  v242 = *v5;
  v7 = *a2;
  [v7 size];
  if (v8 == *(this + 8))
  {
    v9 = *a2;
    [v9 size];
    v11 = v10;
    v12 = *(this + 9);

    if (v11 == v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 1));
  if (v13)
  {
    v14 = *([*v13 device] + 24);
    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = [*a2 format];
    v221[0] = *v17;
    v221[1] = v17[1];
    v18 = *(v16 + 80);
    v19 = *(v18 + 400);
    __p[0] = *(v18 + 392);
    __p[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
    }

    v226 = 0uLL;
    LODWORD(v227) = 0;
    v225[0] = 1;
    *&v225[4] = xmmword_1B33B0770;
    *&v225[20] = 7;
    BYTE4(v227) = 15;
    operator new();
  }

  v20 = *a2;
  [v20 size];
  *(this + 8) = v21;
  *(this + 9) = v22;

LABEL_13:
  v23 = md::FrameGraph::renderQueueForPass(*(*(*(this + 6) + 24) + 8), 0);
  if (v23)
  {
    v24 = *(*(v23 + 16) + 8);
  }

  else
  {
    v24 = 0;
  }

  ggl::CommandBuffer::pushRenderItem(v24, **(this + 10));
  v25 = *(a2 + 1);
  v26 = md::LayoutContext::get<md::CameraContext>(v25);
  v245 = *(v26 + 496);
  v27 = *(v26 + 512);
  *&v246.__r_.__value_.__r.__words[1] = *(v26 + 520);
  v28 = *(v26 + 536);
  v246.__r_.__value_.__r.__words[0] = v27;
  v247 = v28;
  v29 = *(v26 + 544);
  v248 = v29;
  v30 = gm::Matrix<double,3,1>::normalized<int,void>(&v245);
  v32 = *&v31;
  v34 = v33;
  v35 = 0;
  __p[0] = *&v30;
  __p[1] = v31;
  v220 = v33;
  v36 = *&v246.__r_.__value_.__l.__size_;
  v37 = *&v246.__r_.__value_.__r.__words[2];
  v38 = v247;
  do
  {
    *&v225[v35 * 8] = *&__p[v35] * 100.0;
    ++v35;
  }

  while (v35 != 3);
  v39 = 0;
  v221[0] = *v225;
  *&v221[1] = *&v225[16];
  do
  {
    *&v225[v39] = *(v221 + v39) + *(&v245 + v39);
    v39 += 8;
  }

  while (v39 != 24);
  v40 = -(v29 * (v36 + v36) - (v37 + v37) * v38);
  v41 = v38 * (v36 + v36) + v29 * (v37 + v37);
  v42 = 1.0 - ((v37 + v37) * v37 + (v36 + v36) * v36);
  v212 = *v225;
  v43 = *&v225[16];
  *v225 = -(v40 * v34 - v42 * v32);
  *&v225[8] = -(v42 * v30 - v41 * v34);
  *&v225[16] = -(v41 * v32 - v40 * v30);
  *v225 = gm::Matrix<double,3,1>::normalized<int,void>(v225);
  *&v225[8] = v44;
  *&v225[16] = v45;
  *&v226 = -(v44 * v34 - v45 * v32);
  *(&v226 + 1) = -(v45 * v30 - *v225 * v34);
  v227 = -(*v225 * v32 - v44 * v30);
  *&v228 = v30;
  *(&v228 + 1) = v32;
  *&v229 = v34;
  gm::quaternionFromRotationMatrix<double>(v221, v225);
  *&v239.__r_.__value_.__l.__data_ = v212;
  v239.__r_.__value_.__r.__words[2] = v43;
  v240 = v221[0];
  v241 = v221[1];
  geo::RigidTransform<double,double>::inverse(&v236, &v239);
  v46 = *(md::LayoutContext::get<md::CameraContext>(v25) + 480);
  v47 = *a2;
  [v47 size];
  v49 = v48;
  [*a2 size];
  v51 = v50;

  v53 = *(a2 + 4);
  v52 = *(a2 + 5);
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v54 = *(v53 + 72);
  *v225 = (v51 + v51) / (v49 * 190.0);
  *&v225[8] = 0u;
  v226 = 0u;
  v227 = 0.0105263158;
  v55 = v46 + -1.0;
  if (!v54)
  {
    v55 = 1.0 - v46;
  }

  v228 = 0uLL;
  v229 = 0uLL;
  v230 = v55 * -0.001;
  v232 = 0;
  v231 = 0;
  v233 = 0x8000000000000000;
  v234 = v46;
  v235 = 0x3FF0000000000000;
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v52);
  }

  for (i = v244[5]; i != v244[6]; i += 272)
  {
    if (*i == 1)
    {
      if (*(i + 160) == 1)
      {
        *(this + 41) = *(this + 40);
        std::vector<gdc::Entity>::reserve(this + 40, 0x367D6E020E64C149 * ((*(i + 136) - *(i + 128)) >> 3));
        v58 = *(i + 128);
        v57 = *(i + 136);
        while (v58 != v57)
        {
          std::vector<unsigned long>::push_back[abi:nn200100](this + 320, v58);
          v58 += 249;
        }

        v59 = *(this + 12);
        *(this + 12) = 0;
        if (v59)
        {
          std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v59);
        }

        v60 = *(i + 136);
        v61 = *(i + 128);
        if (v61 != v60)
        {
          v62 = 0;
          memset(v221, 0, 24);
          v63 = v61;
          while (1)
          {
            v64 = 0x367D6E020E64C149 * ((*(i + 136) - *(i + 128)) >> 3);
            v65 = (3 * v62 % v64) / (v64 - 1);
            v66 = *(v63 + 80);
            v67 = *(v61 + 80);
            v68 = v67 - v66;
            v69 = v66 >= v67;
            v70 = v66 - v67;
            if (v70 == 0 || !v69)
            {
              v70 = v68;
            }

            v71 = v63 + 8;
            if (v70 < 0xEA61)
            {
              v77 = geo::RigidTransform<double,double>::operator*(&v236, v71);
              v78 = 0;
              __p[0] = *&v77;
              __p[1] = v79;
              v220 = v80;
              do
              {
                v81 = *&__p[v78];
                *(&v245 + v78++) = v81;
              }

              while (v78 != 3);
              HIDWORD(v245) = 0;
              *&v246.__r_.__value_.__l.__data_ = v65;
              *(v246.__r_.__value_.__r.__words + 4) = 0x3F0000003F800000;
            }

            else
            {
              v72 = geo::RigidTransform<double,double>::operator*(&v236, v71);
              v73 = 0;
              __p[0] = *&v72;
              __p[1] = v74;
              v220 = v75;
              do
              {
                v76 = *&__p[v73];
                *(&v245 + v73++) = v76;
              }

              while (v73 != 3);
              HIDWORD(v245) = 1065353216;
              *&v246.__r_.__value_.__l.__data_ = v65;
              *(v246.__r_.__value_.__r.__words + 4) = 0x3F00000000000000;
            }

            ++v62;
            v61 = v63;
            v63 += 1992;
            if (v63 == v60)
            {
            }
          }
        }
      }

      break;
    }
  }

  v83 = v244[5];
  v82 = v244[6];
  if (v83 != v82)
  {
    v84 = v244[5];
    do
    {
      if (*v84 == 3)
      {
        v85 = *a2;
        [v85 size];
        [*a2 size];

        v253 = v236;
        v251 = v237;
        v252 = v238;
        v246.__r_.__value_.__l.__size_ = 0;
        operator new();
      }

      v84 += 272;
    }

    while (v84 != v82);
  }

  while (v83 != v82)
  {
    if (!*v83)
    {
      if (v83[120] == 1)
      {
        v200 = v244[28];
        v201 = gm::Matrix<double,3,1>::distanceToPoint<int,void>((v83 + 96), (v83 + 72));
        v202 = 0;
        v203 = *(v200 + 16);
        do
        {
          *(&v245 + v202) = *&v83[v202 + 72] - *&v83[v202 + 96];
          v202 += 8;
        }

        while (v202 != 24);
        v204 = fmin(v201, v203);
        *&v218.__r_.__value_.__l.__data_ = v245;
        v218.__r_.__value_.__r.__words[2] = v246.__r_.__value_.__r.__words[0];
        v205 = gm::Matrix<double,3,1>::normalized<int,void>(&v218);
        v206 = 0;
        __p[0] = *&v205;
        __p[1] = v207;
        v220 = v208;
        do
        {
          *(&v245 + v206 * 8) = *&__p[v206] * v204;
          ++v206;
        }

        while (v206 != 3);
        v209 = 0;
        v221[0] = v245;
        *&v221[1] = v246.__r_.__value_.__r.__words[0];
        do
        {
          *(&v245 + v209) = *(v221 + v209) + *&v83[v209 + 96];
          v209 += 8;
        }

        while (v209 != 24);
        v210 = v246.__r_.__value_.__r.__words[0];
        v211 = v245;
        *(this + 33) = 0;
        *(this + 34) = 0;
        *(this + 35) = 0;
        *(this + 36) = 0x3FF0000000000000;
        *(this + 15) = v211;
        *(this + 32) = v210;
      }

      break;
    }

    v83 += 272;
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v249, **(*(*(this + 11) + 8) + 136));
  geo::RigidTransform<double,double>::toMatrix(__p, &v236);
  v86 = 0;
  v87 = v225;
  do
  {
    v88 = 0;
    v89 = __p;
    do
    {
      v90 = 0;
      v91 = 0.0;
      v92 = v87;
      do
      {
        v93 = *v92;
        v92 += 4;
        v91 = v91 + *&v89[v90++] * v93;
      }

      while (v90 != 4);
      *(&v221[2 * v88++] + v86) = v91;
      v89 += 4;
    }

    while (v88 != 4);
    ++v86;
    ++v87;
  }

  while (v86 != 4);
  v94 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
  v95 = gdc::CameraView::position(v94);
  v96 = *(v95 + 16);
  *&v213.__r_.__value_.__l.__data_ = *v95;
  v213.__r_.__value_.__r.__words[2] = v96;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  v217 = 0x3FF0000000000000;
  geo::RigidTransform<double,double>::toMatrix(&v218, &v213);
  v97 = 0;
  v98 = v221;
  do
  {
    v99 = 0;
    v100 = &v218;
    do
    {
      v101 = 0;
      v102 = 0.0;
      v103 = v98;
      do
      {
        v104 = *v103;
        v103 += 4;
        v102 = v102 + *(&v100->__r_.__value_.__l.__data_ + v101) * v104;
        v101 += 8;
      }

      while (v101 != 32);
      *(&v245 + 4 * v99++ + v97) = v102;
      v100 = (v100 + 32);
    }

    while (v99 != 4);
    ++v97;
    v98 = (v98 + 8);
  }

  while (v97 != 4);
  v105 = 0;
  v106 = &v245;
  do
  {
    v108 = *v106;
    v107 = v106[1];
    v106 += 2;
    v222[v105++] = vcvt_hight_f32_f64(vcvt_f32_f64(v108), v107);
  }

  while (v105 != 4);
  v109 = v250;
  *v250 = v222[0];
  v109[1] = v222[1];
  v109[2] = v223;
  v109[3] = v224;
  ggl::BufferMemory::~BufferMemory(v249);
  ggl::CommandBuffer::pushRenderItem(v24, **(this + 11));
  v110 = *(this + 20);
  if (v110)
  {
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v213, *(*(*(v110 + 8) + 136) + 16));
    geo::RigidTransform<double,double>::toMatrix(__p, &v236);
    v111 = 0;
    v112 = v225;
    do
    {
      v113 = 0;
      v114 = __p;
      do
      {
        v115 = 0;
        v116 = 0.0;
        v117 = v112;
        do
        {
          v118 = *v117;
          v117 += 4;
          v116 = v116 + *&v114[v115++] * v118;
        }

        while (v115 != 4);
        *(&v221[2 * v113++] + v111) = v116;
        v114 += 4;
      }

      while (v113 != 4);
      ++v111;
      ++v112;
    }

    while (v111 != 4);
    geo::RigidTransform<double,double>::toMatrix(&v218, this + 176);
    v119 = 0;
    v120 = v221;
    do
    {
      v121 = 0;
      v122 = &v218;
      do
      {
        v123 = 0;
        v124 = 0.0;
        v125 = v120;
        do
        {
          v126 = *v125;
          v125 += 4;
          v124 = v124 + *(&v122->__r_.__value_.__l.__data_ + v123) * v126;
          v123 += 8;
        }

        while (v123 != 32);
        *(&v245 + 4 * v121++ + v119) = v124;
        v122 = (v122 + 32);
      }

      while (v121 != 4);
      ++v119;
      v120 = (v120 + 8);
    }

    while (v119 != 4);
    v127 = 0;
    v128 = &v245;
    do
    {
      v130 = *v128;
      v129 = v128[1];
      v128 += 2;
      v222[v127++] = vcvt_hight_f32_f64(vcvt_f32_f64(v130), v129);
    }

    while (v127 != 4);
    v131 = v216;
    *v216 = v222[0];
    v131[1] = v222[1];
    v131[2] = v223;
    v131[3] = v224;
    ggl::CommandBuffer::pushRenderItem(v24, **(this + 20));
    ggl::BufferMemory::~BufferMemory(&v213);
  }

  v132 = *(this + 21);
  if (v132)
  {
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v213, *(*(*(v132 + 8) + 136) + 16));
    geo::RigidTransform<double,double>::toMatrix(__p, &v236);
    v133 = 0;
    v134 = v225;
    do
    {
      v135 = 0;
      v136 = __p;
      do
      {
        v137 = 0;
        v138 = 0.0;
        v139 = v134;
        do
        {
          v140 = *v139;
          v139 += 4;
          v138 = v138 + *&v136[v137++] * v140;
        }

        while (v137 != 4);
        *(&v221[2 * v135++] + v133) = v138;
        v136 += 4;
      }

      while (v135 != 4);
      ++v133;
      ++v134;
    }

    while (v133 != 4);
    geo::RigidTransform<double,double>::toMatrix(&v218, this + 176);
    v141 = 0;
    v142 = v221;
    do
    {
      v143 = 0;
      v144 = &v218;
      do
      {
        v145 = 0;
        v146 = 0.0;
        v147 = v142;
        do
        {
          v148 = *v147;
          v147 += 4;
          v146 = v146 + *(&v144->__r_.__value_.__l.__data_ + v145) * v148;
          v145 += 8;
        }

        while (v145 != 32);
        *(&v245 + 4 * v143++ + v141) = v146;
        v144 = (v144 + 32);
      }

      while (v143 != 4);
      ++v141;
      v142 = (v142 + 8);
    }

    while (v141 != 4);
    v149 = 0;
    v150 = &v245;
    do
    {
      v152 = *v150;
      v151 = v150[1];
      v150 += 2;
      v222[v149++] = vcvt_hight_f32_f64(vcvt_f32_f64(v152), v151);
    }

    while (v149 != 4);
    v153 = v216;
    *v216 = v222[0];
    v153[1] = v222[1];
    v153[2] = v223;
    v153[3] = v224;
    ggl::CommandBuffer::pushRenderItem(v24, **(this + 21));
    ggl::BufferMemory::~BufferMemory(&v213);
  }

  v154 = *(this + 12);
  if (v154)
  {
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v213, **(*(v154 + 8) + 136));
    geo::RigidTransform<double,double>::toMatrix(__p, &v236);
    v155 = 0;
    v156 = v225;
    do
    {
      v157 = 0;
      v158 = __p;
      do
      {
        v159 = 0;
        v160 = 0.0;
        v161 = v156;
        do
        {
          v162 = *v161;
          v161 += 4;
          v160 = v160 + *&v158[v159++] * v162;
        }

        while (v159 != 4);
        *(&v221[2 * v157++] + v155) = v160;
        v158 += 4;
      }

      while (v157 != 4);
      ++v155;
      ++v156;
    }

    while (v155 != 4);
    geo::RigidTransform<double,double>::toMatrix(&v218, this + 104);
    v163 = 0;
    v164 = v221;
    do
    {
      v165 = 0;
      v166 = &v218;
      do
      {
        v167 = 0;
        v168 = 0.0;
        v169 = v164;
        do
        {
          v170 = *v169;
          v169 += 4;
          v168 = v168 + *(&v166->__r_.__value_.__l.__data_ + v167) * v170;
          v167 += 8;
        }

        while (v167 != 32);
        *(&v245 + 4 * v165++ + v163) = v168;
        v166 = (v166 + 32);
      }

      while (v165 != 4);
      ++v163;
      v164 = (v164 + 8);
    }

    while (v163 != 4);
    v171 = 0;
    v172 = &v245;
    do
    {
      v174 = *v172;
      v173 = v172[1];
      v172 += 2;
      v222[v171++] = vcvt_hight_f32_f64(vcvt_f32_f64(v174), v173);
    }

    while (v171 != 4);
    v175 = v216;
    *v216 = v222[0];
    v175[1] = v222[1];
    v175[2] = v223;
    v175[3] = v224;
    ggl::CommandBuffer::pushRenderItem(v24, **(this + 12));
    ggl::BufferMemory::~BufferMemory(&v213);
  }

  v176 = 0;
  v177 = 0.0;
  do
  {
    v177 = v177 + *(this + v176 + 240) * *(this + v176 + 240);
    v176 += 8;
  }

  while (v176 != 24);
  if (v177 > 0.0)
  {
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v213, **(*(*(this + 29) + 8) + 136));
    geo::RigidTransform<double,double>::toMatrix(__p, &v236);
    v178 = 0;
    v179 = v225;
    do
    {
      v180 = 0;
      v181 = __p;
      do
      {
        v182 = 0;
        v183 = 0.0;
        v184 = v179;
        do
        {
          v185 = *v184;
          v184 += 4;
          v183 = v183 + *&v181[v182++] * v185;
        }

        while (v182 != 4);
        *(&v221[2 * v180++] + v178) = v183;
        v181 += 4;
      }

      while (v180 != 4);
      ++v178;
      ++v179;
    }

    while (v178 != 4);
    geo::RigidTransform<double,double>::toMatrix(&v218, this + 240);
    v186 = 0;
    v187 = v221;
    do
    {
      v188 = 0;
      v189 = &v218;
      do
      {
        v190 = 0;
        v191 = 0.0;
        v192 = v187;
        do
        {
          v193 = *v192;
          v192 += 4;
          v191 = v191 + *(&v189->__r_.__value_.__l.__data_ + v190) * v193;
          v190 += 8;
        }

        while (v190 != 32);
        *(&v245 + 4 * v188++ + v186) = v191;
        v189 = (v189 + 32);
      }

      while (v188 != 4);
      ++v186;
      v187 = (v187 + 8);
    }

    while (v186 != 4);
    v194 = 0;
    v195 = &v245;
    do
    {
      v197 = *v195;
      v196 = v195[1];
      v195 += 2;
      v222[v194++] = vcvt_hight_f32_f64(vcvt_f32_f64(v197), v196);
    }

    while (v194 != 4);
    v198 = v216;
    *v216 = v222[0];
    v198[1] = v222[1];
    v198[2] = v223;
    v198[3] = v224;
    ggl::CommandBuffer::pushRenderItem(v24, **(this + 29));
    ggl::BufferMemory::~BufferMemory(&v213);
  }

  v6 = v243;
LABEL_138:
  if ([v6 muninShowRigTransitionInfo])
  {
    v199 = md::LayoutContext::debugConsoleForId(a2, 17);
    if (v199)
    {
      ggl::DebugConsole::begin(v199);
    }
  }
}

uint64_t std::default_delete<ggl::Drawable>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = v1[1];
    v1[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void anonymous namespace::createPointsDrawable(id *a1, void *a2, uint64_t *a3, void *a4, float a5)
{
  v6 = *([a2 device] + 24);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  [*a1 format];
  v9 = *(*(v8 + 80) + 1936);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B2FE3808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  (*(*v26 + 8))(v26, a2, a3, a4, a5, a6, a7, a8);
  std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  (*(*a11 + 8))(a11);
  std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  _Unwind_Resume(a1);
}

double geo::RigidTransform<double,double>::operator*(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 24);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v3 = gm::Quaternion<double>::operator*(&v8, a2);
  v4 = 0;
  *v11 = v3;
  v11[1] = v5;
  v11[2] = v6;
  do
  {
    *(&v12 + v4 * 8) = *&v11[v4] + *(a1 + v4 * 8);
    ++v4;
  }

  while (v4 != 3);
  return v12;
}

void std::vector<anonymous namespace::PointDescriptor>::push_back[abi:nn200100](char **a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 2);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x924924924924924)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x492492492492492)
    {
      v10 = 0x924924924924924;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
    }

    v11 = 28 * v7;
    v12 = *a2;
    *(v11 + 8) = *(a2 + 2);
    *v11 = v12;
    *(v11 + 12) = *(a2 + 12);
    v6 = (28 * v7 + 28);
    v13 = *a1;
    v14 = a1[1];
    v15 = (28 * v7 + *a1 - v14);
    if (*a1 != v14)
    {
      v16 = (28 * v7 + *a1 - v14);
      do
      {
        v17 = *v13;
        *(v16 + 2) = *(v13 + 2);
        *v16 = v17;
        *(v16 + 12) = *(v13 + 12);
        v13 += 28;
        v16 += 28;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v6;
    a1[2] = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(v3 + 12) = *(a2 + 12);
    v6 = v3 + 28;
  }

  a1[1] = v6;
}

uint64_t std::__function::__value_func<BOOL ()(md::mun::CollectionPoint const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 223;
    v47 = a2 - 233;
    v9 = a2 - 456;
    v10 = v7;
LABEL_3:
    v11 = a3 - 1;
    while (1)
    {
      v7 = v10;
      a3 = v11;
      v12 = a2 - v10;
      v13 = 0x63FB9AEB1FDCD759 * (a2 - v10);
      if (v13 > 2)
      {
        switch(v13)
        {
          case 3uLL:
            v41 = v10[243];
            v42 = *v8;
            if (v41 >= v10[10])
            {
              if (v42 >= v41)
              {
                return result;
              }

              v44 = v10 + 233;
              v45 = a2 - 233;
              goto LABEL_95;
            }

            if (v42 >= v41)
            {
              result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(v10, v10 + 233);
              if (*v8 >= v10[243])
              {
                return result;
              }

              v43 = v10 + 233;
              goto LABEL_79;
            }

LABEL_78:
            v43 = v10;
LABEL_79:
            v46 = a2 - 233;
            goto LABEL_80;
          case 4uLL:

            return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,0>(v10, v10 + 233, v10 + 466, v47);
          case 5uLL:
            result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,0>(v10, v10 + 233, v10 + 466, v10 + 699);
            if (*v8 >= v10[709])
            {
              return result;
            }

            result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(v10 + 699, v47);
            if (v10[709] >= v10[476])
            {
              return result;
            }

            result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(v10 + 466, v10 + 699);
            if (v10[476] >= v10[243])
            {
              return result;
            }

            v44 = v10 + 233;
            v45 = v10 + 466;
LABEL_95:
            result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(v44, v45);
            if (v10[243] >= v10[10])
            {
              return result;
            }

            v46 = v10 + 233;
            v43 = v10;
LABEL_80:

            return std::swap[abi:nn200100]<md::mun::CollectionPoint>(v43, v46);
        }
      }

      else
      {
        if (v13 < 2)
        {
          return result;
        }

        if (v13 == 2)
        {
          if (*v8 >= v10[10])
          {
            return result;
          }

          goto LABEL_78;
        }
      }

      if (v12 <= 44735)
      {
        if (a4)
        {

          return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(v10, a2);
        }

        else
        {

          return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(v10, a2);
        }
      }

      if (a3 == -1)
      {

        return std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,md::mun::CollectionPoint *>(v10, a2, a2);
      }

      v14 = v13 >> 1;
      v15 = &v10[233 * (v13 >> 1)];
      v16 = *v8;
      if (v12 >= 0x3A401)
      {
        v17 = v15[10];
        if (v17 >= v10[10])
        {
          if (v16 >= v17 || (std::swap[abi:nn200100]<md::mun::CollectionPoint>(v15, v47), v15[10] >= v10[10]))
          {
LABEL_28:
            v23 = &v10[233 * v14 - 233];
            v24 = v7[233 * v14 - 223];
            v25 = *v9;
            if (v24 >= v7[243])
            {
              if (v25 >= v24 || (std::swap[abi:nn200100]<md::mun::CollectionPoint>(&v7[233 * v14 - 233], a2 - 466), v7[233 * v14 - 223] >= v7[243]))
              {
LABEL_40:
                v28 = &v7[233 * v14];
                v29 = v28 + 233;
                v30 = v28[243];
                v31 = *(a2 - 689);
                if (v30 >= v7[476])
                {
                  if (v31 >= v30 || (std::swap[abi:nn200100]<md::mun::CollectionPoint>(v29, a2 - 699), v29[10] >= v7[476]))
                  {
LABEL_49:
                    v34 = v15[10];
                    v35 = v29[10];
                    if (v34 >= v23[10])
                    {
                      if (v35 >= v34)
                      {
                        goto LABEL_58;
                      }

                      std::swap[abi:nn200100]<md::mun::CollectionPoint>(v15, v29);
                      if (v15[10] >= v23[10])
                      {
                        goto LABEL_58;
                      }

                      v36 = v23;
                      v37 = v15;
                    }

                    else
                    {
                      v36 = v23;
                      if (v35 >= v34)
                      {
                        std::swap[abi:nn200100]<md::mun::CollectionPoint>(v23, v15);
                        if (v29[10] >= v15[10])
                        {
LABEL_58:
                          v21 = v7;
                          v22 = v15;
                          goto LABEL_59;
                        }

                        v36 = v15;
                      }

                      v37 = v29;
                    }

                    std::swap[abi:nn200100]<md::mun::CollectionPoint>(v36, v37);
                    goto LABEL_58;
                  }

                  v32 = v7 + 466;
                  v33 = v29;
                }

                else
                {
                  v32 = v7 + 466;
                  if (v31 >= v30)
                  {
                    std::swap[abi:nn200100]<md::mun::CollectionPoint>(v32, v29);
                    if (*(a2 - 689) >= v29[10])
                    {
                      goto LABEL_49;
                    }

                    v33 = a2 - 699;
                    v32 = v29;
                  }

                  else
                  {
                    v33 = a2 - 699;
                  }
                }

                std::swap[abi:nn200100]<md::mun::CollectionPoint>(v32, v33);
                goto LABEL_49;
              }

              v26 = v7 + 233;
              v27 = &v7[233 * v14 - 233];
            }

            else
            {
              v26 = v7 + 233;
              if (v25 >= v24)
              {
                std::swap[abi:nn200100]<md::mun::CollectionPoint>(v26, &v7[233 * v14 - 233]);
                if (*v9 >= v7[233 * v14 - 223])
                {
                  goto LABEL_40;
                }

                v26 = &v7[233 * v14 - 233];
              }

              v27 = a2 - 466;
            }

            std::swap[abi:nn200100]<md::mun::CollectionPoint>(v26, v27);
            goto LABEL_40;
          }

          v18 = v10;
          v19 = v15;
        }

        else
        {
          v18 = v10;
          if (v16 >= v17)
          {
            std::swap[abi:nn200100]<md::mun::CollectionPoint>(v10, v15);
            if (*v8 >= v15[10])
            {
              goto LABEL_28;
            }

            v18 = v15;
          }

          v19 = a2 - 233;
        }

        std::swap[abi:nn200100]<md::mun::CollectionPoint>(v18, v19);
        goto LABEL_28;
      }

      v20 = v10[10];
      if (v20 >= v15[10])
      {
        if (v16 < v20)
        {
          std::swap[abi:nn200100]<md::mun::CollectionPoint>(v10, v47);
          if (v10[10] < v15[10])
          {
            v21 = v15;
            v22 = v10;
            goto LABEL_59;
          }
        }
      }

      else
      {
        v21 = v15;
        if (v16 < v20)
        {
          goto LABEL_23;
        }

        std::swap[abi:nn200100]<md::mun::CollectionPoint>(v15, v10);
        if (*v8 < v10[10])
        {
          v21 = v10;
LABEL_23:
          v22 = a2 - 233;
LABEL_59:
          std::swap[abi:nn200100]<md::mun::CollectionPoint>(v21, v22);
        }
      }

      if ((a4 & 1) == 0 && *(v7 - 223) >= v7[10])
      {
        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::CollectionPoint *,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &>(v7, a2);
        v10 = result;
        a4 = 0;
        goto LABEL_3;
      }

      v38 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::CollectionPoint *,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &>(v7, a2);
      if ((v39 & 1) == 0)
      {
        goto LABEL_65;
      }

      v40 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(v7, v38);
      v10 = v38 + 233;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(v38 + 233, a2);
      if (result)
      {
        break;
      }

      v11 = a3 - 1;
      if (!v40)
      {
LABEL_65:
        result = std::__introsort<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,false>(v7, v38, a3, a4 & 1);
        a4 = 0;
        v10 = v38 + 233;
        goto LABEL_3;
      }
    }

    a2 = v38;
    if (!v40)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__function::__value_func<void ()(md::mun::MuninNavigationGraph const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_2,std::allocator<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_2>,void ()(md::mun::MuninNavigationGraph const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v27 = *a2;
  v3 = *(a1 + 80);
  v4 = *(a1 + 24);
  v24[0] = *(a1 + 8);
  v24[1] = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v25 = &v27;
  v26 = v5;
  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    v9 = 0;
    v10 = vdupq_n_s32(0x3B808081u);
    v22 = v10;
    do
    {
      v11 = **(a1 + 56);
      if (!v11)
      {
        goto LABEL_7;
      }

      v12 = *(v7 + 80);
      v13 = *(v11 + 80);
      v14 = v13 - v12;
      _CF = v12 >= v13;
      v16 = v12 - v13;
      if (v16 == 0 || !_CF)
      {
        v16 = v14;
      }

      if (v16 >= 0xEA61)
      {
LABEL_7:
        ++**(a1 + 64);
      }

      v17 = v7;
      if (*v7 != *(**(a1 + 32) + 80))
      {
        v10.i32[0] = *(*(a1 + 72) + 4 * (**(a1 + 64) % 9uLL));
        v23 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v10.i8))), v22);
        md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_2::operator() const(md::mun::MuninNavigationGraph const*)::{lambda(md::mun::CollectionPoint const&,geo::Color<float,4,(geo::ColorSpace)0> const&,BOOL)#1}::operator()(v24, v7, &v23, 0);
        **(a1 + 56) = v7;
        v17 = v9;
      }

      v7 += 1864;
      v9 = v17;
    }

    while (v7 != v8);
    if (v17)
    {
      __asm { FMOV            V0.4S, #1.0 }

      v23 = _Q0;
      md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_2::operator() const(md::mun::MuninNavigationGraph const*)::{lambda(md::mun::CollectionPoint const&,geo::Color<float,4,(geo::ColorSpace)0> const&,BOOL)#1}::operator()(v24, v17, &v23, 1);
    }
  }
}

void *md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_2::operator() const(md::mun::MuninNavigationGraph const*)::{lambda(md::mun::CollectionPoint const&,geo::Color<float,4,(geo::ColorSpace)0> const&,BOOL)#1}::operator()(uint64_t a1, float *a2, __int128 *a3, int a4)
{
  v8 = *a1;
  v9 = geo::RigidTransform<double,double>::operator*(*a1, (a2 + 2));
  v10 = 0;
  v78 = v9;
  v79 = v11;
  v80 = v12;
  do
  {
    v13 = *(&v78 + v10);
    *&v83[4 * v10++] = v13;
  }

  while (v10 != 3);
  gm::Quaternion<float>::toMatrix(&v78, a2 + 8);
  v14 = 0;
  v15 = v8 + 24;
  do
  {
    v16 = *(v15 + 8 * v14);
    *(&v70 + v14++) = v16;
  }

  while (v14 != 3);
  v17 = *(v8 + 48);
  *(&v71 + 1) = v17;
  v73 = v81;
  v74 = v82;
  v18 = gm::Quaternion<float>::operator*(&v70, &v73);
  v19 = 0;
  v75 = v18;
  v76 = v20;
  v77 = v21;
  do
  {
    *&v83[v19 + 12] = -*(&v75 + v19);
    v19 += 4;
  }

  while (v19 != 12);
  for (i = 0; i != 3; ++i)
  {
    v23 = *(v15 + 8 * i);
    *(&v70 + i) = v23;
  }

  *(&v71 + 1) = v17;
  v73 = v78;
  v74 = v79;
  v24 = gm::Quaternion<float>::operator*(&v70, &v73);
  v25 = 0;
  v75 = v24;
  v76 = v26;
  v77 = v27;
  v28 = *(a1 + 8);
  do
  {
    *(&v70 + v25) = *&v83[v25] - *(&v75 + v25);
    v25 += 4;
  }

  while (v25 != 12);
  v72 = *a3;
  v29 = *(v28 + 8);
  if (v29 >= *(v28 + 16))
  {
    v30 = std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(v28, &v70);
  }

  else
  {
    *v29 = v70;
    *(v29 + 8) = v71;
    *(v29 + 16) = v72;
    v30 = v29 + 32;
  }

  v31 = 0;
  *(v28 + 8) = v30;
  v32 = *(a1 + 8);
  do
  {
    *(&v70 + v31) = *(&v75 + v31) + *&v83[v31];
    v31 += 4;
  }

  while (v31 != 12);
  v72 = *a3;
  v33 = *(v32 + 8);
  if (v33 >= *(v32 + 16))
  {
    v34 = std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(v32, &v70);
  }

  else
  {
    *v33 = v70;
    *(v33 + 8) = v71;
    *(v33 + 16) = v72;
    v34 = v33 + 32;
  }

  v35 = 0;
  *(v32 + 8) = v34;
  v36 = *(a1 + 8);
  do
  {
    *(&v70 + v35) = *&v83[v35 + 12] + *&v83[v35 + 12];
    v35 += 4;
  }

  while (v35 != 12);
  v37 = 0;
  v73 = v70;
  v74 = v71;
  do
  {
    *(&v70 + v37) = *(&v73 + v37) + *&v83[v37];
    v37 += 4;
  }

  while (v37 != 12);
  v72 = *a3;
  v38 = *(v36 + 8);
  if (v38 >= *(v36 + 16))
  {
    v39 = std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(v36, &v70);
  }

  else
  {
    *v38 = v70;
    *(v38 + 8) = v71;
    *(v38 + 16) = v72;
    v39 = v38 + 32;
  }

  *(v36 + 8) = v39;
  result = [**(a1 + 16) muninGraphConnections];
  if (result)
  {
    v41 = a4 == 0;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    v42 = *(**(a1 + 24) + 232);
    v43 = *a2;
    v44 = pthread_rwlock_rdlock((v42 + 96));
    if (v44)
    {
      geo::read_write_lock::logFailure(v44, "read lock", v45);
    }

    v46 = *(v42 + 48);
    if (v46 == (v42 + 56))
    {
LABEL_41:
      v52 = 0;
    }

    else
    {
      while (1)
      {
        v47 = v46[4];
        v48 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v47 + 192), v43);
        if (v48)
        {
          v49 = *(v47 + 168);
          if (v49)
          {
            break;
          }
        }

        v50 = v46[1];
        if (v50)
        {
          do
          {
            v51 = v50;
            v50 = *v50;
          }

          while (v50);
        }

        else
        {
          do
          {
            v51 = v46[2];
            v41 = *v51 == v46;
            v46 = v51;
          }

          while (!v41);
        }

        v46 = v51;
        if (v51 == (v42 + 56))
        {
          goto LABEL_41;
        }
      }

      v52 = v49 + 1864 * *(v48 + 12);
    }

    geo::read_write_lock::unlock((v42 + 96));
    result = md::mun::MuninNavigationGraph::neighbors(**(a1 + 32), v52);
    if (result != v53)
    {
      v54 = result;
      v55 = v53;
      do
      {
        v56 = geo::RigidTransform<double,double>::operator*(*a1, *v54 + 8);
        v57 = 0;
        v70 = v56;
        v71 = v58;
        *&v72 = v59;
        do
        {
          v60 = *(&v70 + v57);
          *(&v73 + v57++) = v60;
        }

        while (v57 != 3);
        for (j = 0; j != 12; j += 4)
        {
          *(&v70 + j) = *&v83[j + 12] + *&v83[j + 12];
        }

        v62 = 0;
        v68 = v70;
        v69 = v71;
        do
        {
          *(&v70 + v62) = *(&v68 + v62) + *&v83[v62];
          v62 += 4;
        }

        while (v62 != 12);
        v63 = *(a1 + 40);
        v72 = *a3;
        v64 = *(v63 + 8);
        if (v64 >= *(v63 + 16))
        {
          v65 = std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(v63, &v70);
        }

        else
        {
          *v64 = v70;
          *(v64 + 8) = v71;
          *(v64 + 16) = v72;
          v65 = v64 + 32;
        }

        *(v63 + 8) = v65;
        v66 = *(a1 + 40);
        v70 = v73;
        LODWORD(v71) = v74;
        v72 = *a3;
        v67 = *(v66 + 8);
        if (v67 >= *(v66 + 16))
        {
          result = std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(v66, &v70);
        }

        else
        {
          *v67 = v73;
          *(v67 + 8) = v74;
          *(v67 + 16) = v72;
          result = (v67 + 32);
        }

        *(v66 + 8) = result;
        ++v54;
      }

      while (v54 != v55);
    }
  }

  return result;
}

void anonymous namespace::createMeshDrawable(id *a1, void *a2, uint64_t *a3, void *a4)
{
  v5 = *([a2 device] + 24);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  [*a1 format];
  v8 = *(*(v7 + 80) + 424);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B2FE4F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  (*(*v21 + 8))(v21, a2, a3, a4, a5, a6, a7, a8);
  std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  (*(*v18 + 8))(v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(a1);
}

void ___ZN12_GLOBAL__N_118createMeshDrawableERKN2md13LayoutContextEP17VKSharedResourcesRKNSt3__110unique_ptrIN3ggl11RenderStateENS6_14default_deleteIS9_EEEERKNS6_6vectorINS8_5Debug11ExtendedVboENS6_9allocatorISH_EEEE_block_invoke(uint64_t a1)
{
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v10, *(a1 + 32), 0, (*(*(a1 + 32) + 48) - *(*(a1 + 32) + 40)) / *(*(a1 + 32) + 8));
  v2 = **(a1 + 48);
  v3 = *(*(a1 + 48) + 8);
  v4 = v3 - v2;
  if (v3 != v2)
  {
    v5 = 0;
    v6 = v4 >> 5;
    v7 = v10[5];
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      for (i = 0; i != 12; i += 4)
      {
        *(v7 + i) = *(v2 + i);
      }

      for (j = 16; j != 32; j += 4)
      {
        *(v7 + j) = *(v2 + j);
      }

      ++v5;
      v7 += 32;
      v2 += 32;
    }

    while (v5 != v6);
  }

  ggl::BufferMemory::~BufferMemory(v10);
}

void std::__shared_ptr_emplace<ggl::Debug::ExtendedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void __destroy_helper_block_ea8_32c75_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_5Debug11ExtendedVboEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c75_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_5Debug11ExtendedVboEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Debug::ExtendedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Debug::ExtendedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20AD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Debug::ExtendedPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A37070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::vector<ggl::Debug::ExtendedVbo>::__emplace_back_slow_path<ggl::Debug::ExtendedVbo>(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 5;
  v7 = v6 + 1;
  if ((v6 + 1) >> 59)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 4 > v7)
  {
    v7 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v9 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = 32 * v6;
  *v10 = *a2;
  *(v10 + 8) = *(a2 + 8);
  *(v10 + 16) = *(a2 + 16);
  if (v3 != v4)
  {
    v11 = 0;
    do
    {
      v12 = *v3;
      *(v11 + 8) = v3[2];
      *v11 = v12;
      *(v11 + 16) = *(v3 + 1);
      v3 += 8;
      v11 += 32;
    }

    while (v3 != v4);
    v3 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 32 * v6 + 32;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 32 * v6 + 32;
}

__n128 std::__function::__func<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_2,std::allocator<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_2>,void ()(md::mun::MuninNavigationGraph const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A20A60;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  result = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 88) = v6;
  *(a2 + 72) = v5;
  *(a2 + 56) = result;
  return result;
}

uint64_t std::swap[abi:nn200100]<md::mun::CollectionPoint>(uint64_t *a1, uint64_t *a2)
{
  v14 = *a1;
  v15 = *(a1 + 1);
  v4 = a1[4];
  v16 = a1[3];
  v17 = v4;
  v18 = *(a1 + 10);
  v19 = *(a1 + 44);
  v5 = *(a1 + 9);
  v20 = *(a1 + 7);
  v21 = v5;
  geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v22, a1 + 11, &v23);
  *(v24 + 5) = *(a1 + 1853);
  v24[0] = a1[231];
  *a1 = *a2;
  for (i = 32; i != 44; i += 4)
  {
    *(a1 + i) = *(a2 + i);
  }

  *(a1 + 11) = *(a2 + 11);
  for (j = 1; j != 4; ++j)
  {
    a1[j] = a2[j];
  }

  *(a1 + 12) = *(a2 + 12);
  for (k = 7; k != 10; ++k)
  {
    a1[k] = a2[k];
  }

  a1[10] = a2[10];
  if (a1 != a2)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::move((a1 + 11), (a2 + 11), (a1 + 15));
  }

  v9 = a2[231];
  *(a1 + 1853) = *(a2 + 1853);
  a1[231] = v9;
  *a2 = v14;
  v10 = v16;
  a2[4] = v17;
  *(a2 + 10) = v18;
  *(a2 + 11) = v19;
  *(a2 + 1) = v15;
  a2[3] = v10;
  *(a2 + 12) = HIDWORD(v19);
  v11 = v21;
  *(a2 + 7) = v20;
  v12 = *(&v21 + 1);
  a2[9] = v11;
  a2[10] = v12;
  if (&v14 != a2)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::move((a2 + 11), v22, (a2 + 15));
  }

  a2[231] = v24[0];
  *(a2 + 1853) = *(v24 + 5);
  return geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v22);
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = result;
  v8 = a2[10];
  v9 = a3[10];
  if (v8 >= result[10])
  {
    if (v9 < v8)
    {
      result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(a2, a3);
      if (a2[10] < v7[10])
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(result, v10);
      goto LABEL_10;
    }

    result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(result, a2);
    if (a3[10] < a2[10])
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (a4[10] < a3[10])
  {
    result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(a3, a4);
    if (a3[10] < a2[10])
    {
      result = std::swap[abi:nn200100]<md::mun::CollectionPoint>(a2, a3);
      if (a2[10] < v7[10])
      {

        return std::swap[abi:nn200100]<md::mun::CollectionPoint>(v7, a2);
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v30[12] = v2;
    v30[13] = v3;
    v5 = result;
    v6 = result + 233;
    if (result + 233 != a2)
    {
      v7 = result;
      do
      {
        v8 = v6;
        if (v7[243] < v7[10])
        {
          v20 = *v6;
          v21 = *(v7 + 117);
          v9 = v7[237];
          v22 = v7[236];
          v23 = v9;
          v24 = *(v7 + 476);
          v25 = *(v7 + 1908);
          v26 = *(v7 + 120);
          v27 = *(v7 + 121);
          geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v28, v7 + 244, &v29);
          v30[0] = v7[464];
          *(v30 + 5) = *(v7 + 3717);
          v10 = v8;
          while (1)
          {
            v11 = 0;
            v12 = v7;
            *v10 = *v7;
            do
            {
              *(v7 + v11 + 1896) = *(v7 + v11 + 32);
              v11 += 4;
            }

            while (v11 != 12);
            v13 = 0;
            *(v10 + 11) = *(v7 + 11);
            do
            {
              v7[v13 + 234] = v7[v13 + 1];
              ++v13;
            }

            while (v13 != 3);
            v14 = 0;
            *(v10 + 12) = *(v7 + 12);
            do
            {
              v7[v14 + 240] = v7[v14 + 7];
              ++v14;
            }

            while (v14 != 3);
            v10[10] = v7[10];
            geo::small_vector_base<md::mun::PhotoInfo>::move((v10 + 11), (v7 + 11), (v10 + 15));
            v10[231] = v7[231];
            *(v10 + 1853) = *(v7 + 1853);
            if (v7 == v5)
            {
              break;
            }

            v7 -= 233;
            v10 = v12;
            if (*(&v27 + 1) >= *(v12 - 223))
            {
              v15 = v12;
              goto LABEL_16;
            }
          }

          v15 = v5;
LABEL_16:
          *v15 = v20;
          for (i = 32; i != 44; i += 4)
          {
            *(v12 + i) = *(&v20 + i);
          }

          *(v15 + 11) = v25;
          for (j = 1; j != 4; ++j)
          {
            v12[j] = *(&v20 + j * 8);
          }

          *(v15 + 12) = HIDWORD(v25);
          for (k = 7; k != 10; ++k)
          {
            v12[k] = *(&v20 + k * 8);
          }

          v15[10] = *(&v27 + 1);
          if (v15 != &v20)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move((v15 + 11), v28, (v15 + 15));
          }

          v19 = v30[0];
          *(v12 + 1853) = *(v30 + 5);
          v12[231] = v19;
          result = geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v28);
        }

        v6 = v8 + 233;
        v7 = v8;
      }

      while (v8 + 233 != a2);
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v29[12] = v2;
    v29[13] = v3;
    v5 = result;
    v6 = result + 233;
    if (result + 233 != a2)
    {
      do
      {
        v7 = v6;
        if (v5[243] < v5[10])
        {
          v19 = *v6;
          v20 = *(v5 + 117);
          v8 = v5[237];
          v21 = v5[236];
          v22 = v8;
          v23 = *(v5 + 476);
          v24 = *(v5 + 1908);
          v25 = *(v5 + 120);
          v26 = *(v5 + 121);
          geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v27, v5 + 244, &v28);
          v29[0] = v5[464];
          *(v29 + 5) = *(v5 + 3717);
          v9 = v7;
          do
          {
            v10 = 0;
            v11 = v5;
            *v9 = *v5;
            do
            {
              *(v5 + v10 + 1896) = *(v5 + v10 + 32);
              v10 += 4;
            }

            while (v10 != 12);
            v12 = 0;
            *(v9 + 11) = *(v5 + 11);
            do
            {
              v5[v12 + 234] = v5[v12 + 1];
              ++v12;
            }

            while (v12 != 3);
            v13 = 0;
            *(v9 + 12) = *(v5 + 12);
            do
            {
              v5[v13 + 240] = v5[v13 + 7];
              ++v13;
            }

            while (v13 != 3);
            v9[10] = v5[10];
            geo::small_vector_base<md::mun::PhotoInfo>::move((v9 + 11), (v5 + 11), (v9 + 15));
            *(v9 + 1853) = *(v5 + 1853);
            v9[231] = v5[231];
            v5 -= 233;
            v14 = *(&v26 + 1);
            v9 = v11;
          }

          while (*(&v26 + 1) < *(v11 - 223));
          *v11 = v19;
          for (i = 1896; i != 1908; i += 4)
          {
            *(v5 + i) = *(&v19 + i - 1864);
          }

          *(v11 + 11) = v24;
          for (j = 234; j != 237; ++j)
          {
            v5[j] = *(&v19 + j * 8 - 1864);
          }

          *(v11 + 12) = HIDWORD(v24);
          for (k = 240; k != 243; ++k)
          {
            v5[k] = *(&v19 + k * 8 - 1864);
          }

          v11[10] = v14;
          if (v11 != &v19)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move((v11 + 11), v27, (v11 + 15));
          }

          v18 = v29[0];
          *(v11 + 1853) = *(v29 + 5);
          v11[231] = v18;
          result = geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v27);
        }

        v6 = v7 + 233;
        v5 = v7;
      }

      while (v7 + 233 != a2);
    }
  }

  return result;
}

uint64_t *std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,md::mun::CollectionPoint *>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v84[13] = v3;
    v84[14] = v4;
    v6 = result;
    v8 = a2 - result;
    v9 = 0x63FB9AEB1FDCD759 * (a2 - result);
    if (a2 - result >= 1865)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &result[233 * v10];
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(v6, v9, v12);
        v12 -= 233;
        --v11;
      }

      while (v11);
    }

    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (v13[10] < *(v6 + 80))
        {
          std::swap[abi:nn200100]<md::mun::CollectionPoint>(v13, v6);
          result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(v6, v9, v6);
        }

        v13 += 233;
      }

      while (v13 != a3);
    }

    if (v8 >= 1865)
    {
      v14 = a2;
      v15 = 0x63FB9AEB1FDCD759 * (v8 >> 3);
      v62 = v6;
      v60 = (v6 + 1848);
      do
      {
        v16 = v14;
        v63 = *v6;
        v64 = *(v6 + 8);
        v17 = *(v6 + 32);
        v65 = *(v6 + 24);
        v66 = v17;
        v67 = *(v6 + 40);
        v68 = *(v6 + 44);
        v69 = *(v6 + 56);
        v70 = *(v6 + 72);
        geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v71, (v6 + 88), &v72);
        v18 = 0;
        v73[0] = *v60;
        *(v73 + 5) = *(v60 + 5);
        do
        {
          v19 = v6 + 1864 * v18;
          v20 = v19 + 1864;
          if (2 * v18 + 2 >= v15)
          {
            v18 = (2 * v18) | 1;
          }

          else
          {
            v21 = *(v19 + 1944);
            v22 = *(v19 + 3808);
            v23 = v19 + 3728;
            if (v21 >= v22)
            {
              v18 = (2 * v18) | 1;
            }

            else
            {
              v20 = v23;
              v18 = 2 * v18 + 2;
            }
          }

          *v6 = *v20;
          for (i = 32; i != 44; i += 4)
          {
            *(v6 + i) = *(v20 + i);
          }

          *(v6 + 44) = *(v20 + 44);
          for (j = 8; j != 32; j += 8)
          {
            *(v6 + j) = *(v20 + j);
          }

          *(v6 + 48) = *(v20 + 48);
          for (k = 56; k != 80; k += 8)
          {
            *(v6 + k) = *(v20 + k);
          }

          *(v6 + 80) = *(v20 + 80);
          if (v6 != v20)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move(v6 + 88, v20 + 88, v6 + 120);
          }

          v27 = (v20 + 1848);
          v28 = *(v20 + 1848);
          *(v6 + 1853) = *(v20 + 1853);
          *(v6 + 1848) = v28;
          v6 = v20;
        }

        while (v18 <= ((v15 - 2) >> 1));
        v14 = v16 - 233;
        if (v20 == v16 - 233)
        {
          *v20 = v63;
          for (m = 32; m != 44; m += 4)
          {
            *(v20 + m) = *(&v63 + m);
          }

          *(v20 + 44) = v68;
          for (n = 8; n != 32; n += 8)
          {
            *(v20 + n) = *(&v63 + n);
          }

          *(v20 + 48) = HIDWORD(v68);
          for (ii = 56; ii != 80; ii += 8)
          {
            *(v20 + ii) = *(&v63 + ii);
          }

          *(v20 + 80) = *(&v70 + 1);
          if (v20 != &v63)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move(v20 + 88, v71, v20 + 120);
          }

          v58 = v73[0];
          *(v20 + 1853) = *(v73 + 5);
          *v27 = v58;
        }

        else
        {
          *v20 = *v14;
          v29 = -458;
          v30 = (v20 + 32);
          do
          {
            *v30++ = *(v16 + v29++);
          }

          while (v29 != -455);
          v61 = v16 - 233;
          *(v20 + 44) = *(v16 - 455);
          v31 = -232;
          v32 = (v20 + 8);
          do
          {
            *v32++ = v16[v31++];
          }

          while (v31 != -229);
          *(v20 + 48) = *(v16 - 454);
          v33 = -226;
          v34 = (v20 + 56);
          do
          {
            *v34++ = v16[v33++];
          }

          while (v33 != -223);
          *(v20 + 80) = *(v16 - 223);
          geo::small_vector_base<md::mun::PhotoInfo>::move(v20 + 88, (v16 - 222), v20 + 120);
          v35 = *(v16 - 2);
          *(v20 + 1853) = *(v16 - 11);
          *v27 = v35;
          *v61 = v63;
          v36 = v65;
          *(v16 - 229) = v66;
          *(v16 - 456) = v67;
          *(v16 - 455) = v68;
          *(v16 - 116) = v64;
          *(v16 - 230) = v36;
          *(v16 - 454) = HIDWORD(v68);
          v37 = v69;
          *(v16 - 224) = v70;
          *(v16 - 113) = v37;
          v14 = v16 - 233;
          *(v16 - 223) = *(&v70 + 1);
          if (v61 != &v63)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move((v16 - 222), v71, (v16 - 218));
          }

          *(v16 - 2) = v73[0];
          *(v16 - 11) = *(v73 + 5);
          v38 = v20 - v62 + 1864;
          if (v38 >= 1865)
          {
            v39 = (0x63FB9AEB1FDCD759 * (v38 >> 3) - 2) >> 1;
            v40 = v62 + 1864 * v39;
            if (*(v40 + 80) < *(v20 + 80))
            {
              v74 = *v20;
              v41 = *(v20 + 8);
              v76 = *(v20 + 24);
              v75 = v41;
              v42 = *(v20 + 40);
              v77 = *(v20 + 32);
              v78 = v42;
              v79 = *(v20 + 44);
              v43 = *(v20 + 56);
              v81 = *(v20 + 72);
              v80 = v43;
              geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v82, (v20 + 88), &v83);
              v44 = *v27;
              *(v84 + 5) = *(v20 + 1853);
              v84[0] = v44;
              do
              {
                v45 = v40;
                v46 = v40 + 32;
                *v20 = *v40;
                for (jj = 32; jj != 44; jj += 4)
                {
                  *(v20 + jj) = *(v40 + jj);
                }

                *(v20 + 44) = *(v40 + 44);
                for (kk = 8; kk != 32; kk += 8)
                {
                  *(v20 + kk) = *(v40 + kk);
                }

                *(v20 + 48) = *(v40 + 48);
                for (mm = 56; mm != 80; mm += 8)
                {
                  *(v20 + mm) = *(v40 + mm);
                }

                *(v20 + 80) = *(v40 + 80);
                if (v20 != v40)
                {
                  geo::small_vector_base<md::mun::PhotoInfo>::move(v20 + 88, v40 + 88, v20 + 120);
                }

                v50 = (v40 + 1848);
                v51 = *(v40 + 1848);
                *(v20 + 1853) = *(v40 + 1853);
                *(v20 + 1848) = v51;
                v52 = *(&v81 + 1);
                if (!v39)
                {
                  break;
                }

                v39 = (v39 - 1) >> 1;
                v40 = v62 + 1864 * v39;
                v20 = v45;
              }

              while (*(v40 + 80) < *(&v81 + 1));
              v53 = v76;
              *v46 = v77;
              *(v46 + 8) = v78;
              *v45 = v74;
              *(v45 + 44) = v79;
              *(v45 + 8) = v75;
              *(v45 + 24) = v53;
              *(v45 + 48) = HIDWORD(v79);
              v54 = v81;
              *(v45 + 56) = v80;
              *(v45 + 72) = v54;
              *(v45 + 80) = v52;
              if (v45 != &v74)
              {
                geo::small_vector_base<md::mun::PhotoInfo>::move(v45 + 88, v82, v45 + 120);
              }

              *v50 = v84[0];
              *(v45 + 1853) = *(v84 + 5);
              geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v82);
              v14 = v61;
            }
          }
        }

        result = geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v71);
        v59 = v15-- <= 2;
        v6 = v62;
      }

      while (!v59);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::CollectionPoint *,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &>(uint64_t a1, uint64_t *a2)
{
  v26 = *a1;
  v27 = *(a1 + 8);
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  v28 = *(a1 + 24);
  v29 = v4;
  v30 = *(a1 + 40);
  v31 = *(a1 + 44);
  v6 = *(a1 + 72);
  v32 = *(a1 + 56);
  v33 = v6;
  geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v34, (a1 + 88), &v35);
  *(v36 + 5) = *(a1 + 1853);
  v36[0] = *(a1 + 1848);
  if (*(&v33 + 1) >= *(a2 - 223))
  {
    v10 = a1 + 1864;
    do
    {
      v8 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = *(v10 + 80);
      v10 += 1864;
    }

    while (*(&v33 + 1) >= v11);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = (v7 + 1864);
      v9 = *(v7 + 1944);
      v7 += 1864;
    }

    while (*(&v33 + 1) >= v9);
  }

  if (v8 >= a2)
  {
    v12 = a2;
  }

  else
  {
    do
    {
      v12 = a2 - 233;
      v13 = *(a2 - 223);
      a2 -= 233;
    }

    while (*(&v33 + 1) < v13);
  }

  while (v8 < v12)
  {
    std::swap[abi:nn200100]<md::mun::CollectionPoint>(v8, v12);
    do
    {
      v14 = v8[243];
      v8 += 233;
    }

    while (*(&v33 + 1) >= v14);
    do
    {
      v15 = v12 - 223;
      v12 -= 233;
    }

    while (*(&v33 + 1) < *v15);
  }

  v16 = v8 - 233;
  if (v8 - 233 != a1)
  {
    v17 = 0;
    *a1 = *v16;
    do
    {
      *(v5 + v17) = *(v8 + v17 - 1832);
      v17 += 4;
    }

    while (v17 != 12);
    v18 = 0;
    *(a1 + 44) = *(v8 - 455);
    do
    {
      *(a1 + 8 + v18 * 8) = v8[v18 - 232];
      ++v18;
    }

    while (v18 != 3);
    v19 = 0;
    *(a1 + 48) = *(v8 - 454);
    do
    {
      *(a1 + 56 + v19 * 8) = v8[v19 - 226];
      ++v19;
    }

    while (v19 != 3);
    *(a1 + 80) = *(v8 - 223);
    geo::small_vector_base<md::mun::PhotoInfo>::move(a1 + 88, (v8 - 222), a1 + 120);
    v20 = *(v8 - 2);
    *(a1 + 1853) = *(v8 - 11);
    *(a1 + 1848) = v20;
  }

  *v16 = v26;
  for (i = 32; i != 44; i += 4)
  {
    *(v8 + i - 1864) = *(&v26 + i);
  }

  *(v8 - 455) = v31;
  for (j = 1; j != 4; ++j)
  {
    v8[j - 233] = *(&v26 + j * 8);
  }

  *(v8 - 454) = HIDWORD(v31);
  for (k = 7; k != 10; ++k)
  {
    v8[k - 233] = *(&v26 + k * 8);
  }

  *(v8 - 223) = *(&v33 + 1);
  if (v16 != &v26)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::move((v8 - 222), v34, (v8 - 218));
  }

  v24 = v36[0];
  *(v8 - 11) = *(v36 + 5);
  *(v8 - 2) = v24;
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v34);
  return v8;
}

uint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::CollectionPoint *,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &>(unint64_t a1, uint64_t *a2)
{
  v30 = *a1;
  v4 = a1 + 8;
  v31 = *(a1 + 8);
  v6 = a1 + 32;
  v5 = *(a1 + 32);
  v32 = *(a1 + 24);
  v33 = v5;
  v34 = *(a1 + 40);
  v35 = *(a1 + 44);
  v7 = a1 + 56;
  v36 = *(a1 + 56);
  v37 = *(a1 + 72);
  geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v38, (a1 + 88), &v39);
  *(v40 + 5) = *(a1 + 1853);
  v40[0] = *(a1 + 1848);
  v8 = a1;
  do
  {
    v9 = v8;
    v8 += 1864;
  }

  while (*(v9 + 1944) < *(&v37 + 1));
  if (v9 == a1)
  {
    while (v8 < a2)
    {
      v10 = a2 - 233;
      v12 = *(a2 - 223);
      a2 -= 233;
      if (v12 < *(&v37 + 1))
      {
        goto LABEL_9;
      }
    }

    v10 = a2;
  }

  else
  {
    do
    {
      v10 = a2 - 233;
      v11 = *(a2 - 223);
      a2 -= 233;
    }

    while (v11 >= *(&v37 + 1));
  }

LABEL_9:
  v13 = v8;
  if (v8 < v10)
  {
    v14 = v10;
    do
    {
      std::swap[abi:nn200100]<md::mun::CollectionPoint>(v13, v14);
      do
      {
        v15 = v13[243];
        v13 += 233;
      }

      while (v15 < *(&v37 + 1));
      do
      {
        v16 = v14 - 223;
        v14 -= 233;
      }

      while (*v16 >= *(&v37 + 1));
    }

    while (v13 < v14);
  }

  v17 = v13 - 233;
  if (v13 - 233 != a1)
  {
    v18 = 0;
    *a1 = *v17;
    do
    {
      *(v6 + v18) = *(v13 + v18 - 1832);
      v18 += 4;
    }

    while (v18 != 12);
    v19 = 0;
    *(a1 + 44) = *(v13 - 455);
    do
    {
      *(v4 + v19 * 8) = v13[v19 - 232];
      ++v19;
    }

    while (v19 != 3);
    v20 = 0;
    *(a1 + 48) = *(v13 - 454);
    do
    {
      *(v7 + v20 * 8) = v13[v20 - 226];
      ++v20;
    }

    while (v20 != 3);
    *(a1 + 80) = *(v13 - 223);
    geo::small_vector_base<md::mun::PhotoInfo>::move(a1 + 88, (v13 - 222), a1 + 120);
    v21 = *(v13 - 2);
    *(a1 + 1853) = *(v13 - 11);
    *(a1 + 1848) = v21;
  }

  *v17 = v30;
  v22 = v13 - 229;
  for (i = 8; i != 11; ++i)
  {
    *v22 = *(&v30 + i);
    v22 = (v22 + 4);
  }

  v24 = v13 - 232;
  *(v13 - 455) = v35;
  for (j = 1; j != 4; ++j)
  {
    *v24++ = *(&v30 + j);
  }

  *(v13 - 454) = HIDWORD(v35);
  v26 = v13 - 226;
  for (k = 7; k != 10; ++k)
  {
    *v26++ = *(&v30 + k);
  }

  *(v13 - 223) = *(&v37 + 1);
  if (v17 != &v30)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::move((v13 - 222), v38, (v13 - 218));
  }

  v28 = v40[0];
  *(v13 - 11) = *(v40 + 5);
  *(v13 - 2) = v28;
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v38);
  return v13 - 233;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0x63FB9AEB1FDCD759 * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(a2 - 223) < a1[10])
      {
        v5 = a2 - 233;
LABEL_24:
        a1 = v3;
LABEL_31:
        std::swap[abi:nn200100]<md::mun::CollectionPoint>(a1, v5);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v11 = a1 + 466;
    v12 = a1[243];
    v13 = a1[476];
    if (v12 >= a1[10])
    {
      if (v13 >= v12 || (std::swap[abi:nn200100]<md::mun::CollectionPoint>(a1 + 233, a1 + 466), v3[243] >= v3[10]))
      {
LABEL_36:
        v15 = v3 + 699;
        if (v3 + 699 != v2)
        {
          v16 = 0;
          v17 = v3 + 470;
          v18 = v3 + 467;
          v19 = v3 + 473;
          v41 = v2;
          while (1)
          {
            if (v15[10] < v11[10])
            {
              v45 = v16;
              v46 = *v15;
              v47 = *(v15 + 1);
              v20 = v15[4];
              v48 = v15[3];
              v49 = v20;
              v50 = *(v15 + 10);
              v51 = *(v15 + 44);
              v52 = *(v15 + 7);
              v53 = *(v15 + 9);
              geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v54, v15 + 11, &v55);
              v56[0] = v15[231];
              *(v56 + 5) = *(v15 + 1853);
              v42 = v19;
              v43 = v18;
              v21 = v19;
              v22 = v18;
              v44 = v17;
              v23 = v17;
              v24 = v15;
              while (1)
              {
                v25 = v11;
                v26 = v23;
                v27 = v22;
                v28 = v21;
                *v24 = *v11;
                v29 = 3;
                do
                {
                  *(v23 + 466) = *v23;
                  v23 = (v23 + 4);
                  --v29;
                }

                while (v29);
                *(v24 + 11) = *(v11 + 11);
                v30 = v22;
                v31 = 3;
                do
                {
                  v30[233] = *v30;
                  ++v30;
                  --v31;
                }

                while (v31);
                *(v24 + 12) = *(v11 + 12);
                v32 = v28;
                v33 = 3;
                do
                {
                  v32[233] = *v32;
                  ++v32;
                  --v33;
                }

                while (v33);
                v24[10] = v11[10];
                geo::small_vector_base<md::mun::PhotoInfo>::move((v24 + 11), (v11 + 11), (v24 + 15));
                v34 = v11 + 231;
                v24[231] = v11[231];
                *(v24 + 1853) = *(v11 + 1853);
                if (v11 == v3)
                {
                  break;
                }

                v11 -= 233;
                v23 = v26 - 233;
                v22 = v27 - 233;
                v21 = v28 - 233;
                v24 = v25;
                if (*(&v53 + 1) >= *(v25 - 223))
                {
                  goto LABEL_50;
                }
              }

              v25 = v3;
LABEL_50:
              v35 = 0;
              *v25 = v46;
              do
              {
                *(v26 + v35) = *(&v49 + v35);
                v35 += 4;
              }

              while (v35 != 12);
              v36 = 0;
              *(v25 + 11) = v51;
              do
              {
                v27[v36] = *(&v46 + v36 * 8 + 8);
                ++v36;
              }

              while (v36 != 3);
              v37 = 0;
              *(v25 + 12) = HIDWORD(v51);
              do
              {
                v28[v37] = *(&v52 + v37 * 8);
                ++v37;
              }

              while (v37 != 3);
              v25[10] = *(&v53 + 1);
              if (v25 != &v46)
              {
                geo::small_vector_base<md::mun::PhotoInfo>::move((v25 + 11), v54, (v25 + 15));
              }

              v38 = v56[0];
              *(v34 + 5) = *(v56 + 5);
              *v34 = v38;
              v16 = v45 + 1;
              if (v45 == 7)
              {
                v39 = v15 + 233 == v41;
                geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v54);
                return v39;
              }

              geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v54);
              v2 = v41;
              v19 = v42;
              v18 = v43;
              v17 = v44;
            }

            v11 = v15;
            v17 += 233;
            v18 += 233;
            v19 += 233;
            v15 += 233;
            if (v15 == v2)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v14 = v3 + 233;
      a1 = v3;
    }

    else
    {
      if (v13 >= v12)
      {
        std::swap[abi:nn200100]<md::mun::CollectionPoint>(a1, a1 + 233);
        if (v3[476] >= v3[243])
        {
          goto LABEL_36;
        }

        a1 = v3 + 233;
      }

      v14 = v3 + 466;
    }

    std::swap[abi:nn200100]<md::mun::CollectionPoint>(a1, v14);
    goto LABEL_36;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,0>(a1, a1 + 233, a1 + 466, a2 - 233);
      return 1;
    }

    if (v4 != 5)
    {
      goto LABEL_16;
    }

    std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *,0>(a1, a1 + 233, a1 + 466, a1 + 699);
    if (*(v2 - 223) >= v3[709])
    {
      return 1;
    }

    std::swap[abi:nn200100]<md::mun::CollectionPoint>(v3 + 699, v2 - 233);
    if (v3[709] >= v3[476])
    {
      return 1;
    }

    std::swap[abi:nn200100]<md::mun::CollectionPoint>(v3 + 466, v3 + 699);
    if (v3[476] >= v3[243])
    {
      return 1;
    }

    v6 = v3 + 233;
    v7 = v3 + 466;
    goto LABEL_22;
  }

  v8 = a1[243];
  v9 = a2 - 223;
  v10 = *(a2 - 223);
  if (v8 < a1[10])
  {
    if (v10 >= v8)
    {
      std::swap[abi:nn200100]<md::mun::CollectionPoint>(a1, a1 + 233);
      if (*v9 >= v3[243])
      {
        return 1;
      }

      a1 = v3 + 233;
    }

    v5 = v2 - 233;
    goto LABEL_31;
  }

  if (v10 < v8)
  {
    v6 = a1 + 233;
    v7 = a2 - 233;
LABEL_22:
    std::swap[abi:nn200100]<md::mun::CollectionPoint>(v6, v7);
    if (v3[243] < v3[10])
    {
      v5 = v3 + 233;
      goto LABEL_24;
    }
  }

  return 1;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_1 &,md::mun::CollectionPoint *>(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = a2 - 2;
  if (a2 >= 2)
  {
    v39[13] = v3;
    v39[14] = v4;
    v6 = a3;
    v7 = result;
    v8 = v5 >> 1;
    if ((v5 >> 1) >= 0x63FB9AEB1FDCD759 * ((a3 - result) >> 3))
    {
      v10 = (0xC7F735D63FB9AEB2 * ((a3 - result) >> 3)) | 1;
      v11 = result + 1864 * v10;
      if ((0xC7F735D63FB9AEB2 * ((a3 - result) >> 3) + 2) < a2)
      {
        v12 = *(v11 + 80) >= *(v11 + 1944);
        v13 = 1864;
        if (*(v11 + 80) >= *(v11 + 1944))
        {
          v13 = 0;
        }

        v11 += v13;
        if (!v12)
        {
          v10 = 0xC7F735D63FB9AEB2 * ((a3 - result) >> 3) + 2;
        }
      }

      if (*(v11 + 80) >= a3[10])
      {
        v29 = *a3;
        v30 = *(a3 + 1);
        v14 = a3[4];
        v31 = a3[3];
        v32 = v14;
        v33 = *(a3 + 10);
        v34 = *(a3 + 44);
        v35 = *(a3 + 7);
        v36 = *(a3 + 9);
        geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v37, a3 + 11, &v38);
        *(v39 + 5) = *(v6 + 1853);
        v39[0] = v6[231];
        do
        {
          v15 = v11;
          *v6 = *v11;
          for (i = 32; i != 44; i += 4)
          {
            *(v6 + i) = *(v11 + i);
          }

          *(v6 + 11) = *(v11 + 44);
          for (j = 1; j != 4; ++j)
          {
            v6[j] = *(v11 + j * 8);
          }

          *(v6 + 12) = *(v11 + 48);
          for (k = 7; k != 10; ++k)
          {
            v6[k] = *(v11 + k * 8);
          }

          v6[10] = *(v11 + 80);
          if (v6 != v11)
          {
            geo::small_vector_base<md::mun::PhotoInfo>::move((v6 + 11), v11 + 88, (v6 + 15));
          }

          v19 = *(v11 + 1848);
          *(v6 + 1853) = *(v11 + 1853);
          v6[231] = v19;
          if (v8 < v10)
          {
            break;
          }

          v20 = (2 * v10) | 1;
          v11 = v7 + 1864 * v20;
          if (2 * v10 + 2 < a2)
          {
            v21 = *(v11 + 80);
            v22 = *(v11 + 1944);
            v23 = v21 >= v22;
            if (v21 >= v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = 1864;
            }

            v11 += v24;
            if (!v23)
            {
              v20 = 2 * v10 + 2;
            }
          }

          v6 = v15;
          v10 = v20;
        }

        while (*(v11 + 80) >= *(&v36 + 1));
        *v15 = v29;
        for (m = 32; m != 44; m += 4)
        {
          *(v15 + m) = *(&v29 + m);
        }

        *(v15 + 44) = v34;
        for (n = 8; n != 32; n += 8)
        {
          *(v15 + n) = *(&v29 + n);
        }

        *(v15 + 48) = HIDWORD(v34);
        for (ii = 56; ii != 80; ii += 8)
        {
          *(v15 + ii) = *(&v29 + ii);
        }

        *(v15 + 80) = *(&v36 + 1);
        if (v15 != &v29)
        {
          geo::small_vector_base<md::mun::PhotoInfo>::move(v15 + 88, v37, v15 + 120);
        }

        v28 = v39[0];
        *(v15 + 1853) = *(v39 + 5);
        *(v15 + 1848) = v28;
        return geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v37);
      }
    }
  }

  return result;
}

BOOL std::__function::__func<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_0,std::allocator<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_0>,BOOL ()(md::mun::CollectionPoint const&)>::operator()(double *a1, uint64_t a2)
{
  v3 = geo::RigidTransform<double,double>::operator*((a1 + 7), a2 + 8);
  *v14 = v3;
  v14[1] = v4;
  v14[2] = v5;
  if (v3 < a1[1] || v3 >= a1[4])
  {
    return 0;
  }

  v8 = 0;
  v9 = a1 + 5;
  for (i = 1; i != 3; ++i)
  {
    v11 = i;
    v12 = *&v14[i];
    if (v12 < *(v9 - 3))
    {
      return v8 > 1;
    }

    v13 = *v9++;
    ++v8;
    if (v12 >= v13)
    {
      v8 = v11 - 1;
      return v8 > 1;
    }
  }

  v8 = 2;
  return v8 > 1;
}

double std::__function::__func<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_0,std::allocator<md::mun::MuninOverlayRenderLayer::debugLayout(md::LayoutContext const&)::$_0>,BOOL ()(md::mun::CollectionPoint const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A20A18;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  v5 = *(a1 + 80);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 80) = v5;
  result = *(a1 + 104);
  *(a2 + 104) = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<anonymous namespace::PointDescriptor>>(unint64_t a1)
{
  if (a1 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void ___ZN12_GLOBAL__N_120createPointsDrawableERKN2md13LayoutContextEP17VKSharedResourcesRKNSt3__110unique_ptrIN3ggl11RenderStateENS6_14default_deleteIS9_EEEEfRKNS6_6vectorINS_15PointDescriptorENS6_9allocatorISG_EEEE_block_invoke(uint64_t a1)
{
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v20, *(a1 + 32), 0, (*(*(a1 + 32) + 48) - *(*(a1 + 32) + 40)) / *(*(a1 + 32) + 8));
  v2 = *(a1 + 48);
  v3 = (v2[6] - v2[5]) / v2[1];
  ggl::BufferMemory::BufferMemory(v18);
  ggl::ResourceAccessor::accessIndexData(v22, 0, v2, 0, v3, 1, 0);
  ggl::BufferMemory::operator=(v18, v22);
  ggl::BufferMemory::~BufferMemory(v22);
  v4 = **(a1 + 64);
  v5 = *(*(a1 + 64) + 8);
  v6 = v5 - v4;
  if (v5 != v4)
  {
    v7 = 0;
    v8 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 2);
    v9 = v21;
    v10 = v19;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v11 = v19 + 16;
    v12 = v4 + 12;
    do
    {
      v13 = 0;
      v14 = (v4 + 28 * v7);
      v15 = *(v14 + 2);
      v16 = *v14;
      v17 = v9 + 16 * v7;
      *v17 = v16;
      *(v17 + 8) = v15;
      *(v17 + 12) = 1065353216;
      *(v10 + 32 * v7) = 1065353216;
      do
      {
        *(v11 + v13) = *(v12 + v13);
        v13 += 4;
      }

      while (v13 != 16);
      ++v7;
      v11 += 32;
      v12 += 28;
    }

    while (v7 != v8);
  }

  ggl::BufferMemory::~BufferMemory(v18);
  ggl::BufferMemory::~BufferMemory(v20);
}

void std::__shared_ptr_emplace<ggl::Point::ExtendedMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A209E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void __destroy_helper_block_ea8_32c80_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_10CommonMesh10BufferPos4EEEEE48c75_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_5Point11ExtendedVboEEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *__copy_helper_block_ea8_32c80_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_10CommonMesh10BufferPos4EEEEE48c75_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_5Point11ExtendedVboEEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Point::ExtendedVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Point::ExtendedPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ___ZN2md3mun23MuninOverlayRenderLayer20updateDebugDrawablesERKNS_13LayoutContextE_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v5, *(a1 + 32), 0, (*(*(a1 + 32) + 48) - *(*(a1 + 32) + 40)) / *(*(a1 + 32) + 8));
  v2 = 0;
  v6[0] = xmmword_1B33B0B00;
  v6[1] = xmmword_1B33B10E0;
  v7 = xmmword_1B33B0AC0;
  v8 = xmmword_1B33B10F0;
  v3 = v5[5];
  do
  {
    *(v3 + v2 * 16) = v6[v2];
    ++v2;
  }

  while (v2 != 4);
  ggl::BufferMemory::~BufferMemory(v5);
  ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v6, *(a1 + 48), 0, (*(*(a1 + 48) + 48) - *(*(a1 + 48) + 40)) / *(*(a1 + 48) + 8), 1, 0, 0);
  v4 = *(&v7 + 1);
  **(&v7 + 1) = 0x2000200010000;
  *(v4 + 8) = 3;
  ggl::BufferMemory::~BufferMemory(v6);
}

uint64_t *std::vector<anonymous namespace::PointDescriptor>::vector[abi:nn200100](uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0x924924924924925)
    {
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return a1;
}

void __destroy_helper_block_ea8_32c80_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_10CommonMesh10BufferPos4EEEEE48c51_ZTSNSt3__110shared_ptrIN3ggl14IndexDataTypedItEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void *__copy_helper_block_ea8_32c80_ZTSNSt3__110shared_ptrIN3ggl15VertexDataTypedINS1_10CommonMesh10BufferPos4EEEEE48c51_ZTSNSt3__110shared_ptrIN3ggl14IndexDataTypedItEEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::Drawable *,std::shared_ptr<ggl::Drawable>::__shared_ptr_default_delete<ggl::Drawable,ggl::Drawable>,std::allocator<ggl::Drawable>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::VSSprite::Sprite>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::VSSprite::Sprite>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A207A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VSSprite::PipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A206B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::mun::MuninOverlayRenderLayer::~MuninOverlayRenderLayer(md::mun::MuninOverlayRenderLayer *this)
{
  md::mun::MuninOverlayRenderLayer::~MuninOverlayRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A20618;
  std::unique_ptr<md::mun::TapAnnotation>::reset[abi:nn200100](this + 45, 0);
  std::unique_ptr<md::mun::TapRenderResources>::reset[abi:nn200100](this + 44, 0);
  v2 = *(this + 40);
  if (v2)
  {
    *(this + 41) = v2;
    operator delete(v2);
  }

  v3 = *(this + 39);
  *(this + 39) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 38);
  *(this + 38) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 37);
  *(this + 37) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 29);
  *(this + 29) = 0;
  if (v6)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v6);
  }

  v7 = *(this + 21);
  *(this + 21) = 0;
  if (v7)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v7);
  }

  v8 = *(this + 20);
  *(this + 20) = 0;
  if (v8)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v8);
  }

  v9 = *(this + 12);
  *(this + 12) = 0;
  if (v9)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v9);
  }

  v10 = *(this + 11);
  *(this + 11) = 0;
  if (v10)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v10);
  }

  v11 = *(this + 10);
  *(this + 10) = 0;
  if (v11)
  {
    std::default_delete<ggl::Drawable>::operator()[abi:nn200100](v11);
  }

  *this = &unk_1F2A16858;
  v12 = *(this + 1);
  if (v12)
  {
    *(this + 2) = v12;
    operator delete(v12);
  }
}

void md::TransitLineSegment::addRibbons(unint64_t a1, void *a2, int a3, uint64x2_t *a4, uint64_t a5, _DWORD *a6)
{
  *(a1 + 32) = a3;
  v7 = *(*(a2[80] - 8) + 56);
  v8 = 0;
  v9 = *(*(a2[80] - 8) + 64) - v7;
  if (v9)
  {
    v10 = v9 >> 3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    do
    {
      v11 = *v7++;
      v8 = *(v11 + 16) + v8 - *(v11 + 8);
      --v10;
    }

    while (v10);
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v12 = *(a1 + 8);
  v13 = *v12;
  if (*(*v12 + 20))
  {
    v14 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    do
    {
      v21 = 0;
      geo::codec::transitLinkPoints(v13, v14, &v21);
      if (v21)
      {
        if (!(v21 >> 62))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      ++v14;
      v20 = *(a1 + 8);
      v13 = *v20;
    }

    while (v14 < *(*v20 + 20));
    if (v22)
    {
      operator delete(v22);
    }
  }

  if (v25)
  {
    operator delete(v25);
  }
}

void sub_1B2FE8598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, uint64_t a28, uint64_t (***a29)(void), void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  std::unique_ptr<md::Ribbons::RibbonSection<md::Ribbons::TransitRibbonDescriptor>>::~unique_ptr[abi:nn200100](&a28);
  std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>::~unique_ptr[abi:nn200100](&a29);
  if (__p)
  {
    operator delete(__p);
  }

  if (v36)
  {
    operator delete(v36);
  }

  if (a38)
  {
    operator delete(a38);
  }

  v39 = *(v37 - 200);
  if (v39)
  {
    operator delete(v39);
  }

  _Unwind_Resume(a1);
}

void addEasingPointsInRegion(uint64_t a1, uint64_t a2, double a3)
{
  v5 = 0;
  v18[1] = *MEMORY[0x1E69E9840];
  *v18 = a3;
  do
  {
    v6 = *(v18 + v5);
    if (v6 > 0.001 && v6 < (*(a1 + 88) + -0.001))
    {
      v9 = *(a2 + 8);
      v8 = *(a2 + 16);
      if (v9 >= v8)
      {
        v11 = *a2;
        v12 = v9 - *a2;
        v13 = v12 >> 2;
        v14 = (v12 >> 2) + 1;
        if (v14 >> 62)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v15 = v8 - v11;
        if (v15 >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v16);
        }

        *(4 * v13) = v6;
        v10 = 4 * v13 + 4;
        memcpy(0, v11, v12);
        v17 = *a2;
        *a2 = 0;
        *(a2 + 8) = v10;
        *(a2 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v6;
        v10 = (v9 + 1);
      }

      *(a2 + 8) = v10;
    }

    v5 += 4;
  }

  while (v5 != 8);
}

void md::Ribbons::RibbonWriter<md::Ribbons::TransitRibbonDescriptor>::computeMeshSize(uint64_t a1, uint64_t *a2, std::vector<unsigned int> *a3)
{
  v50 = 1;
  md::Ribbons::RibbonWriter<md::Ribbons::DaVinciTrafficRibbonDescriptor>::eliminateDuplicates(a1, a2, a3, &v50);
  v5 = v50;
  if (v50 >= 2)
  {
    v6 = *a2;
    v7 = 1;
    v8 = 3;
    while (1)
    {
      v9 = &v6[3 * v7];
      v11 = *v9;
      v10 = v9[1];
      v12 = 1;
      v13 = *v6;
      do
      {
        v14 = vabds_f32(v11, v13);
        if ((v12 & 1) == 0)
        {
          break;
        }

        v12 = 0;
        v13 = v6[1];
        v11 = v10;
      }

      while (v14 < 1.0e-10);
      if (v14 >= 1.0e-10)
      {
        break;
      }

      ++v7;
      v8 += 3;
      if (v7 == v50)
      {
        v15 = 0.0;
        v16 = 1.0;
        goto LABEL_12;
      }
    }

    for (i = 0; i != 3; ++i)
    {
      *(&v51 + i * 4) = v6[v8++] - v6[i];
    }

    v18 = 1.0 / sqrtf((v51 * v51) + (v52 * v52));
    v16 = v18 * v51;
    v15 = v18 * v52;
LABEL_12:
    if (v5 - 1 >= 2)
    {
      v19 = v6 + 6;
      v20 = 1;
      v21 = 2;
      while (1)
      {
        v22 = v16;
        v23 = v15;
        v24 = &v6[3 * v20];
        v48 = *v24;
        v49 = *(v24 + 2);
        if (++v20 < v5)
        {
          v25 = v19;
          v26 = v20;
          while (1)
          {
            v27 = &v6[3 * v26];
            v29 = *v27;
            v28 = v27[1];
            v30 = 1;
            v31 = *&v48;
            do
            {
              v32 = vabds_f32(v29, v31);
              if ((v30 & 1) == 0)
              {
                break;
              }

              v30 = 0;
              v31 = *(&v48 + 1);
              v29 = v28;
            }

            while (v32 < 1.0e-10);
            if (v32 >= 1.0e-10)
            {
              break;
            }

            ++v26;
            v25 += 3;
            if (v26 == v5)
            {
              goto LABEL_25;
            }
          }

          for (j = 0; j != 12; j += 4)
          {
            v34 = *v25++;
            *(&v51 + j) = v34 - *(&v48 + j);
          }

          v35 = 1.0 / sqrtf((v51 * v51) + (v52 * v52));
          v16 = v35 * v51;
          v15 = v35 * v52;
        }

LABEL_25:
        v36 = atan2f(v15, v16);
        v37 = v36 - atan2f(v23, v22);
        v38 = v37;
        if (v37 > 3.14159265)
        {
          break;
        }

        if (v38 < -3.14159265)
        {
          v39 = 6.28318531;
          goto LABEL_29;
        }

LABEL_30:
        v40 = fmaxf(ceilf(fabsf(v37) * 0.64377), 1.0);
        if (v40 >= 2)
        {
          v41 = 2 * v40;
        }

        else
        {
          v41 = 2;
        }

        v21 += v41;
        v19 += 3;
        if (v20 == v5 - 1)
        {
          goto LABEL_36;
        }
      }

      v39 = -6.28318531;
LABEL_29:
      v37 = v38 + v39;
      goto LABEL_30;
    }

    v21 = 2;
LABEL_36:
    v42 = 2;
    if (*(a1 + 96))
    {
      v42 = 4;
    }

    v43 = v42 + v21;
    if (*(a1 + 97))
    {
      v43 += 2;
    }

    if (v43 < 0x10000)
    {
      v47 = ((v43 + 2 * (((*(a1 + 96) << 63) >> 63) - *(a1 + 97))) & 0xFFFFFFFFFFFFFFFELL) + *(a1 + 40);
      v44 = *(a1 + 8) + v43;
      v45 = 3 * v43 + *(a1 + 24) - 6;
      v46 = v47 - 2;
    }

    else
    {
      v44 = *(a1 + 8);
      v45 = *(a1 + 24);
      v46 = *(a1 + 40);
    }

    *(a1 + 16) = v44;
    *(a1 + 32) = v45;
    *(a1 + 48) = v46;
  }
}

uint64_t (****std::unique_ptr<md::TransitRibbon,mdm::TypeDeleter<md::TransitRibbon>>::~unique_ptr[abi:nn200100](uint64_t (****a1)(void)))(void)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = (**v2)(v2);
    v4 = mdm::zone_mallocator::instance(v3);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitRibbon>(v4, v2);
  }

  return a1;
}

void md::TransitRibbon::~TransitRibbon(md::TransitRibbon *this)
{
  md::Ribbons::StandardModeRibbonUsingPositionType<gm::Matrix<float,3,1>>::~StandardModeRibbonUsingPositionType(this);

  JUMPOUT(0x1B8C62190);
}

id md::TransitLineSegment::debugString(md::TransitLineSegment *this)
{
  v2 = [MEMORY[0x1E696AD60] string];
  [v2 appendFormat:@"Mergetype=%i, mergedIndex=%i\n", *(this + 52), *(this + 10)];
  [v2 appendFormat:@"Offsets: Start=%.1f Middle=%.1f End=%.1f\n", *(this + 5), *(this + 7), *(this + 6)];
  v3 = geo::codec::transitLinkGetFromNodeID(**(this + 1), *(this + 9));
  v4 = geo::codec::transitLinkGetToNodeID(**(this + 1), *(this + 9));
  LineDirection = geo::codec::transitLinkGetLineDirection(**(this + 1), *(this + 9));
  if (LineDirection == 1)
  {
    LODWORD(v6) = 80;
  }

  else
  {
    LODWORD(v6) = 66;
  }

  if (LineDirection == 2)
  {
    v6 = 78;
  }

  else
  {
    v6 = v6;
  }

  [v2 appendFormat:@"NodeID From=%llu To=%llu Dir=%c\n", v3, v4, v6];

  return v2;
}

void md::PolygonSection::initialize(uint64_t a1, std::__shared_weak_count *a2, unint64_t a3)
{
  v9 = 0;
  *(a1 + 8) = geo::codec::multiSectionFeaturePoints(a2, a3, &v9);
  v5 = v9;
  *(a1 + 88) = v9;
  std::vector<gm::Matrix<float,2,1>>::resize((a1 + 16), v5);
  std::vector<gm::Matrix<float,2,1>>::resize((a1 + 40), *(a1 + 88));
  std::vector<BOOL>::resize(a1 + 64, *(a1 + 88), 0);
  shared_weak_owners = a2[1].__shared_weak_owners_;
  *(a1 + 96) = v5;
  *(a1 + 104) = shared_weak_owners;
  v7 = *(a1 + 88);
  __x = 0;
  std::vector<unsigned int>::resize((a1 + 112), v7, &__x);
}

void md::PolygonSection::calculateTangentVectors(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5, __n128 a6, __n128 a7)
{
  if (a2)
  {
    v48 = 0;
    CharacteristicPointsForSection = geo::codec::polygonFeatureGetCharacteristicPointsForSection(a2, a4, &v48);
    if (CharacteristicPointsForSection)
    {
      a1[12] = 0;
      if (a1[11])
      {
        v9 = 0;
        for (i = 0; i < a1[11]; ++i)
        {
          v11 = i >> 6;
          if (v9 >= v48)
          {
LABEL_9:
            v14 = (a1[8] + 8 * v11);
            v15 = 1 << i;
            v13 = v9;
          }

          else
          {
            v12 = CharacteristicPointsForSection + 100 * v9;
            v13 = v9;
            while (i != *(v12 + 3))
            {
              ++v13;
              v12 += 100;
              if (v48 == v13)
              {
                goto LABEL_9;
              }
            }

            v14 = (a1[8] + 8 * v11);
            v15 = 1 << i;
            if (v12[28] == 1)
            {
              *v14 |= v15;
              goto LABEL_11;
            }
          }

          *v14 &= ~v15;
          ++a1[12];
LABEL_11:
          v9 = v13;
        }
      }
    }
  }

  v16 = a1[11];
  if (v16)
  {
    v17 = 0;
    v18 = a1[12];
    v19 = 4;
    v20 = a1[11];
    while (1)
    {
      v21 = (v20 + v17 - 1) % v20;
      v22 = (v17 + 1);
      if ((v17 + 1) == v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = (v17 + 1);
      }

      if (v18 == v16)
      {
        goto LABEL_21;
      }

      v30 = a1[8];
      v31 = *(v30 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
      v32 = *(v30 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v21);
      v33 = v31 & (1 << v17);
      if (v33 || !v32)
      {
        break;
      }

      GhostPoint = geo::codec::multiSectionFeatureGetGhostPoint(a3, a4, v17);
      if (!GhostPoint)
      {
        goto LABEL_21;
      }

      v34 = a1[1];
      v26 = *(v34 + 8 * v17);
      v27 = vsub_f32(*(v34 + 8 * v23), v26);
LABEL_23:
      v29 = GhostPoint->__vftable;
      a6.n128_u64[0] = vmul_f32(v27, v27);
      a6.n128_f32[0] = sqrtf(vaddv_f32(a6.n128_u64[0]));
      v45 = a6;
      if (a6.n128_f32[0] <= 0.00000011921)
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v35 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B2754000, v35, OS_LOG_TYPE_ERROR, "Zero Length edge on polygon boundary", buf, 2u);
        }
      }

      else
      {
        *(a1[2] + 8 * v17) = vdiv_f32(v27, vdup_lane_s32(a6.n128_u64[0], 0));
      }

      v36 = vsub_f32(v26, v29);
      a7.n128_f32[0] = sqrtf(vaddv_f32(vmul_f32(v36, v36)));
      if (a7.n128_f32[0] <= 0.00000011921)
      {
        v44 = a7;
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v38 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *v46 = 0;
          _os_log_impl(&dword_1B2754000, v38, OS_LOG_TYPE_ERROR, "Zero Length edge on polygon boundary", v46, 2u);
        }

        a7 = v44;
        v37 = 0x3F80000000000000;
        if (v45.n128_f32[0] > 0.00000011921)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v37 = vdiv_f32(v36, vdup_lane_s32(a7.n128_u64[0], 0));
        *(a1[5] + 8 * v17) = v37;
        a6.n128_u64[1] = v45.n128_u64[1];
        if (v45.n128_f32[0] > 0.00000011921)
        {
          goto LABEL_43;
        }
      }

      *(a1[2] + 8 * v17) = v37;
LABEL_43:
      if (a7.n128_f32[0] <= 0.00000011921)
      {
        v39 = (a1[2] + v19);
        v40 = (a1[5] + v19);
        *(v40 - 1) = *(v39 - 1);
        *v40 = *v39;
      }

      v20 = a1[11];
      v19 += 8;
      ++v17;
      if (v22 >= v20)
      {
        return;
      }
    }

    if (v33 && !v32 && (v41 = geo::codec::multiSectionFeatureGetGhostPoint(a3, a4, v17)) != 0)
    {
      v24 = a1[1];
      v25 = v41->__vftable;
    }

    else
    {
LABEL_21:
      v24 = a1[1];
      v25 = *(v24 + 8 * v23);
    }

    v26 = *(v24 + 8 * v17);
    v27 = vsub_f32(v25, v26);
    GhostPoint = (v24 + 8 * v21);
    goto LABEL_23;
  }
}

uint64_t md::PolygonSection::PolygonSection(uint64_t a1, std::__shared_weak_count *a2, unint64_t a3)
{
  *a1 = &unk_1F2A40538;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  md::PolygonSection::initialize(a1, a2, a3);
  md::PolygonSection::calculateTangentVectors(a1, 0, a2, a3, v6, v7, v8);
  return a1;
}

{
  *a1 = &unk_1F2A40538;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  md::PolygonSection::initialize(a1, a2, a3);
  md::PolygonSection::calculateTangentVectors(a1, a2, a2, a3, v6, v7, v8);
  v37 = 0;
  StrokeSpecifications = geo::codec::polygonFeatureGetStrokeSpecifications(a2, &v37);
  if (v37)
  {
    v10 = StrokeSpecifications;
    v35 = 0;
    v36 = 0;
    v34 = &v35;
    v33 = 0;
    v38 = &v33;
    *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v34, 0, &v38) + 8) = 0;
    v11 = v37;
    if (v37)
    {
      v12 = 0;
      do
      {
        v13 = (v10 + 16 * v12);
        shared_owners_high = HIDWORD(v13->__shared_owners_);
        v15 = &v13->__shared_owners_ + 1;
        v14 = shared_owners_high;
        v17 = v35;
        if (!v35)
        {
          goto LABEL_13;
        }

        v18 = &v35;
        do
        {
          v19 = v17;
          v20 = v18;
          v21 = *(v17 + 7);
          if (v21 >= v14)
          {
            v18 = v17;
          }

          v17 = v17[v21 < v14];
        }

        while (v17);
        if (v18 == &v35)
        {
          goto LABEL_13;
        }

        if (v21 < v14)
        {
          v19 = v20;
        }

        if (v14 < *(v19 + 7))
        {
LABEL_13:
          v22 = v36;
          v38 = v15;
          *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v34, v14, &v38) + 8) = v22;
          v11 = v37;
        }

        ++v12;
      }

      while (v12 < v11);
      v33 = 0;
      if (v11)
      {
        v23 = 0;
        v24 = 0;
        v25 = 1;
        while (2)
        {
          v26 = (v10 + 16 * v23);
          while (HIDWORD(v26->__vftable) == a3)
          {
            shared_owners = v26->__shared_owners_;
            if ((v25 & 1) == 0)
            {
              if (v24 >= shared_owners)
              {
                v25 = 1;
              }

              else
              {
                v28 = v24;
                do
                {
                  v38 = &v33;
                  *(*(a1 + 112) + 4 * v28++) = *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v34, v33, &v38) + 8);
                }

                while (v28 < LODWORD(v26->__shared_owners_));
                v25 = 1;
                v11 = v37;
              }

              break;
            }

            v25 = 0;
            v33 = HIDWORD(v26->__shared_owners_);
            ++v23;
            ++v26;
            v24 = shared_owners;
            if (v23 >= v11)
            {
              goto LABEL_29;
            }
          }

          if (++v23 < v11)
          {
            continue;
          }

          break;
        }

        shared_owners = v24;
        if ((v25 & 1) == 0)
        {
LABEL_29:
          if (*(a1 + 88) > shared_owners)
          {
            v29 = shared_owners;
            v30 = shared_owners + 1;
            do
            {
              v38 = &v33;
              *(*(a1 + 112) + 4 * v29) = *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v34, v33, &v38) + 8);
              v29 = v30;
            }

            while (*(a1 + 88) > v30++);
          }
        }
      }
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v35);
  }

  return a1;
}