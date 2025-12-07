void *std::__hash_table<std::__hash_value_type<md::mun::CollectionPoint const*,md::mun::CollectionPoint const*>,std::__unordered_map_hasher<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,md::mun::CollectionPoint const*>,std::hash<md::mun::CollectionPoint const*>,std::equal_to<md::mun::CollectionPoint const*>,true>,std::__unordered_map_equal<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,md::mun::CollectionPoint const*>,std::equal_to<md::mun::CollectionPoint const*>,std::hash<md::mun::CollectionPoint const*>,true>,std::allocator<std::__hash_value_type<md::mun::CollectionPoint const*,md::mun::CollectionPoint const*>>>::__emplace_unique_key_args<md::mun::CollectionPoint const*,std::piecewise_construct_t const&,std::tuple<md::mun::CollectionPoint const* const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
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

void *std::__hash_table<std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::__unordered_map_hasher<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::hash<md::mun::CollectionPoint const*>,std::equal_to<md::mun::CollectionPoint const*>,true>,std::__unordered_map_equal<md::mun::CollectionPoint const*,std::__hash_value_type<md::mun::CollectionPoint const*,double>,std::equal_to<md::mun::CollectionPoint const*>,std::hash<md::mun::CollectionPoint const*>,true>,std::allocator<std::__hash_value_type<md::mun::CollectionPoint const*,double>>>::__emplace_unique_key_args<md::mun::CollectionPoint const*,std::piecewise_construct_t const&,std::tuple<md::mun::CollectionPoint const* const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
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

uint64_t *std::__tree<md::mun::CollectionPoint const*>::__emplace_unique_key_args<md::mun::CollectionPoint const*,md::mun::CollectionPoint const* const&>(uint64_t *result, unint64_t a2, uint64_t *a3)
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
      v5 = *(v3 + 32);
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

uint64_t md::mun::MuninNavigationGraph::neighbors(int8x8_t *this, unint64_t a2)
{
  v2 = this[4];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*&this[3] + 8 * v7);
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      while (1)
      {
        v10 = v9[1];
        if (v5 == v10)
        {
          if (v9[2] == a2)
          {
            return v9[3];
          }
        }

        else
        {
          if (v6.u32[0] > 1uLL)
          {
            if (v10 >= *&v2)
            {
              v10 %= *&v2;
            }
          }

          else
          {
            v10 &= *&v2 - 1;
          }

          if (v10 != v7)
          {
            return 0;
          }
        }

        result = 0;
        v9 = *v9;
        if (!v9)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return 0;
}

__n128 geo::RigidTransform<double,float>::inverse(uint64_t a1, uint64_t a2, double a3, __n128 a4)
{
  for (i = 0; i != 12; i += 4)
  {
    *(&v15 + i) = -*(a2 + i + 24);
  }

  v6 = 0;
  *&v7 = v15;
  DWORD2(v7) = v16;
  a4.n128_u32[0] = *(a2 + 36);
  HIDWORD(v7) = a4.n128_u32[0];
  v19 = v7;
  do
  {
    *(&v15 + v6) = *(&v19 + v6);
    ++v6;
  }

  while (v6 != 3);
  v14 = a4;
  v17 = a4.n128_f32[0];
  v8 = gm::Quaternion<double>::operator*(&v15, a2);
  v9 = 0;
  *v18 = v8;
  v18[1] = v10;
  v18[2] = v11;
  do
  {
    *(&v20 + v9 * 8) = -*&v18[v9];
    ++v9;
  }

  while (v9 != 3);
  v12 = v21;
  *a1 = v20;
  *(a1 + 16) = v12;
  *(a1 + 24) = v19;
  *(a1 + 32) = DWORD2(v19);
  result = v14;
  *(a1 + 36) = v14.n128_u32[0];
  return result;
}

long double gm::Matrix<double,3,1>::angle<int,void>(uint64_t a1, uint64_t a2)
{
  v12[0] = gm::Matrix<double,3,1>::normalized<int,void>(a1);
  v12[1] = v3;
  v12[2] = v4;
  v5 = gm::Matrix<double,3,1>::normalized<int,void>(a2);
  v6 = 0;
  *v11 = v5;
  v11[1] = v7;
  v11[2] = v8;
  v9 = 0.0;
  do
  {
    v9 = v9 + *&v11[v6] * *&v12[v6];
    ++v6;
  }

  while (v6 != 3);
  return acos(fmax(fmin(v9, 1.0), -1.0));
}

uint64_t std::__function::__value_func<void ()(ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::SpecularBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::SpecularBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);
    v3 = pthread_rwlock_rdlock((v2 + 32));
    if (v3)
    {
      geo::read_write_lock::logFailure(v3, "read lock", v4);
    }

    atomic_fetch_add((v2 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v2, v1);

    geo::read_write_lock::unlock((v2 + 32));
  }
}

void std::vector<ggl::FoggedSpecularBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularBuilding::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);
    v3 = pthread_rwlock_rdlock((v2 + 32));
    if (v3)
    {
      geo::read_write_lock::logFailure(v3, "read lock", v4);
    }

    atomic_fetch_add((v2 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v2, v1);

    geo::read_write_lock::unlock((v2 + 32));
  }
}

void std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<gm::MultiRange<unsigned long>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::Fog::Skyfog>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Fog::Skyfog>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A108B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::PrefilteredLine::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::PrefilteredLine::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E80F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::RenderState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A53EE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::BuildingFlatStroke::Building>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::BuildingFlatStroke::Building>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7FC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingShadow::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingShadow::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::BuildingShadow::Shadow>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::BuildingShadow::Shadow>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup *>(v5, v4);
  }

  return a1;
}

void sub_1B2CA281C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
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

void ggl::ConstantDataTyped<ggl::Building::Gradient>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Building::Gradient>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Building::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Building::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Building::Scale>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Building::Scale>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_11,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_11>,ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E7D78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::vector<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void sub_1B2CA31C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_10,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_10>,ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E7CE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::vector<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void sub_1B2CA3770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_9,std::allocator<md::BuildingRenderResources::BuildingRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_9>,ggl::DiffuseBuildingTop::CompressedMeshPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E7C58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2CA3B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2CA3F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularBuildingTop::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2CA4370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2CA476C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseBuilding::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuilding::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2CA4B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFacadeDepth::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFacadeDepth::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BuildingFlat::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFlat::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::BuildingFlat::Building>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::BuildingFlat::Building>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::PrefilteredLine::PrefilteredLinePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E76B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingShadow::MeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SpecularBuildingPointyRoof::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FoggedSpecularBuildingTop::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7610;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FoggedSpecularBuilding::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E75D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SpecularBuildingTop::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E75A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SpecularBuilding::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DiffuseBuildingPointyRoof::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FoggedDiffuseBuildingTop::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E74F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FoggedDiffuseBuilding::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E74C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DiffuseBuildingTop::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7488;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DiffuseBuilding::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingPointyRoofDepth::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingTopDepth::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E73E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingFacadeDepth::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E73A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingFlat::CompressedMeshPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::BuildingFlatStroke::BuildingFlatStrokePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E7338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,gdc::IntTypeHash<md::MapDataType,unsigned short>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,md::MapDataTypeState>,std::equal_to<md::MapDataType>,gdc::IntTypeHash<md::MapDataType,unsigned short>,true>,std::allocator<std::__hash_value_type<md::MapDataType,md::MapDataTypeState>>>::__erase_unique<md::MapDataType>(void *a1, unsigned __int16 a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a1, a2);
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

uint64_t std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::string::basic_string[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

unint64_t *std::vector<gdc::DebugTreeValue>::push_back[abi:nn200100](unint64_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v8 = (v3 - *result) >> 6;
    v9 = v8 + 1;
    if ((v8 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - *result;
    if (v10 >> 5 > v9)
    {
      v9 = v10 >> 5;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFC0)
    {
      v11 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v22 = v2;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::DebugTreeValue>>(v11);
    }

    v12 = v8 << 6;
    *(&v21 + 1) = 0;
    v13 = *a2;
    *(v12 + 9) = *(a2 + 9);
    *v12 = v13;
    v14 = a2[2];
    *(v12 + 48) = *(a2 + 6);
    *(v12 + 32) = v14;
    *(a2 + 40) = 0uLL;
    *(a2 + 4) = 0;
    *(v12 + 56) = *(a2 + 14);
    *&v21 = (v8 << 6) + 64;
    v15 = v2[1];
    v16 = (v8 << 6) + *v2 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::DebugTreeValue>,gdc::DebugTreeValue*>(*v2, v15, v16);
    v17 = *v2;
    *v2 = v16;
    v18 = v2[2];
    v19 = v21;
    *(v2 + 1) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v20[0] = v17;
    v20[1] = v17;
    result = std::__split_buffer<gdc::DebugTreeValue>::~__split_buffer(v20);
    v7 = v19;
  }

  else
  {
    v5 = *a2;
    *(v3 + 9) = *(a2 + 9);
    *v3 = v5;
    v6 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 32) = v6;
    *(a2 + 40) = 0uLL;
    *(a2 + 4) = 0;
    *(v3 + 56) = *(a2 + 14);
    v7 = v3 + 64;
  }

  v2[1] = v7;
  return result;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::DebugTreeValue>,gdc::DebugTreeValue*>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 9) = *(v5 + 9);
      *a3 = v6;
      v7 = v5[2];
      *(a3 + 48) = *(v5 + 6);
      *(a3 + 32) = v7;
      *(v5 + 5) = 0;
      *(v5 + 6) = 0;
      *(v5 + 4) = 0;
      *(a3 + 56) = *(v5 + 14);
      v5 += 4;
      a3 += 64;
    }

    while (v5 != a2);
    do
    {
      if (*(v4 + 55) < 0)
      {
        operator delete(*(v4 + 4));
      }

      v4 += 4;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<gdc::DebugTreeValue>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 64;
      *(a1 + 16) = v2 - 64;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(ecs2::ExecutionDebugTaskContext)>::~__value_func[abi:nn200100](uint64_t a1)
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

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::OnLayoutEndTask>,std::allocator<ecs2::ForwardToExecute<md::ita::OnLayoutEndTask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E8508;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::LegacyLayoutTask>,std::allocator<ecs2::ForwardToExecute<md::ita::LegacyLayoutTask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E8430;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::ReserveStencilRangeTask>,std::allocator<ecs2::ForwardToExecute<md::ita::ReserveStencilRangeTask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E8358;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::LegacyLayoutStartTask>,std::allocator<ecs2::ForwardToExecute<md::ita::LegacyLayoutStartTask>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = a1 + 8;
  v3 = ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::PassListProvider>((a1 + 8));
  v4 = (*(*v3 + 16))(v3);
  v5 = *ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::LayoutContextProvider>(v2);
  v6 = (*v5)();
  md::LayoutContext::frameState(v6);
  if ((*(v7 + 117) & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    (*(*v4 + 72))(v4, v6);
    objc_autoreleasePoolPop(v8);
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::LegacyLayoutStartTask>,std::allocator<ecs2::ForwardToExecute<md::ita::LegacyLayoutStartTask>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E8280;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t VKAnimationCurveLinear_block_invoke(double a1)
{
  v1 = LODWORD(a1);
  if (_ZZUb_E9onceToken != -1)
  {
    dispatch_once(&_ZZUb_E9onceToken, &__block_literal_global_10);
  }

  v2 = _ZZUb_E14timingFunction;
  LODWORD(a1) = v1;

  return [v2 _solveForInput:a1];
}

void VKAnimationCurveLinear_block_invoke_2()
{
  v0 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  v1 = _ZZUb_E14timingFunction;
  _ZZUb_E14timingFunction = v0;
}

uint64_t VKAnimationCurveEaseIn_block_invoke_3(double a1)
{
  v1 = LODWORD(a1);
  if (_ZZUb1_E9onceToken != -1)
  {
    dispatch_once(&_ZZUb1_E9onceToken, &__block_literal_global_14);
  }

  v2 = _ZZUb1_E14timingFunction;
  LODWORD(a1) = v1;

  return [v2 _solveForInput:a1];
}

void VKAnimationCurveEaseIn_block_invoke_4()
{
  v0 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
  v1 = _ZZUb1_E14timingFunction;
  _ZZUb1_E14timingFunction = v0;
}

uint64_t VKAnimationCurveEaseInOut_block_invoke_7(double a1)
{
  v1 = LODWORD(a1);
  if (_ZZUb5_E9onceToken != -1)
  {
    dispatch_once(&_ZZUb5_E9onceToken, &__block_literal_global_22);
  }

  v2 = _ZZUb5_E14timingFunction;
  LODWORD(a1) = v1;

  return [v2 _solveForInput:a1];
}

void VKAnimationCurveEaseInOut_block_invoke_8()
{
  v0 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  v1 = _ZZUb5_E14timingFunction;
  _ZZUb5_E14timingFunction = v0;
}

void VKAnimationCurveElasticEaseOut_block_invoke_10(float a1)
{
  if (a1 != 0.0 && a1 != 1.0)
  {
    exp2f(a1 * -10.0);
    sinf((a1 * 20.944) + -1.5708);
  }
}

float VKAnimationCurveExponentialEaseInOut_block_invoke_12(float a1)
{
  if ((a1 + a1) >= 1.0)
  {
    v1 = expf(18.421 - (a1 * 18.421));
    v2 = 1.0;
    v3 = -0.00005;
  }

  else
  {
    v1 = expf(a1 * 18.421);
    v2 = -0.00005;
    v3 = 0.00005;
  }

  return v2 + (v1 * v3);
}

uint64_t VKAnimationCurveDefaultSpring_block_invoke_14(__n128 a1)
{
  v1 = a1.n128_u32[0];
  if (_ZZUb12_E9onceToken != -1)
  {
    dispatch_once(&_ZZUb12_E9onceToken, &__block_literal_global_36);
  }

  v2 = *(_ZZUb12_E14timingFunction + 16);
  a1.n128_u32[0] = v1;

  return v2(a1);
}

void VKAnimationCurveDefaultSpring_block_invoke_15()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __VKAnimationCurveSpring_block_invoke;
  v2[3] = &__block_descriptor_52_e8_f12__0f8l;
  v3 = xmmword_1B33B0830;
  v4 = 1058262331;
  v0 = [v2 copy];
  v1 = _ZZUb12_E14timingFunction;
  _ZZUb12_E14timingFunction = v0;
}

float __VKAnimationCurveSpring_block_invoke(float *a1, float a2)
{
  v3 = a1[8] * a2;
  v4 = expf(-(a2 * a1[9]) * a1[10]);
  v5 = a1[11];
  v6 = __sincosf_stret(v3);
  return -((((v5 * v6.__cosval) + (a1[12] * v6.__sinval)) * v4) + -1.0);
}

uint64_t VKAnimationCurveDefaultCameraSpring_block_invoke_16(__n128 a1)
{
  v1 = a1.n128_u32[0];
  if (_ZZUb14_E9onceToken[0] != -1)
  {
    dispatch_once(_ZZUb14_E9onceToken, &__block_literal_global_40);
  }

  v2 = *(_ZZUb14_E14timingFunction + 16);
  a1.n128_u32[0] = v1;

  return v2(a1);
}

void VKAnimationCurveDefaultCameraSpring_block_invoke_17()
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __VKAnimationCurveSpring_block_invoke_2;
  v2[3] = &__block_descriptor_44_e8_f12__0f8l;
  v2[4] = 0x4143F58D3F800000;
  v3 = 1094972813;
  v0 = [v2 copy];
  v1 = _ZZUb14_E14timingFunction;
  _ZZUb14_E14timingFunction = v0;
}

id VKAnimationCurveForCAMediaTimingFunction(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __VKAnimationCurveForCAMediaTimingFunction_block_invoke;
  v5[3] = &unk_1E7B30690;
  v6 = v1;
  v2 = v1;
  v3 = [v5 copy];

  return v3;
}

uint64_t md::ARWalkingManeuverLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  v8 = a1 + 960;
  md::ARWalkingManeuverLabelPart::updateLocalState(a1, (a1 + 960), a2 + 432, (*(a1 + 16) + 408), *(a1 + 16) + 1040, (*(a1 + 16) + 944), *(*(a1 + 32) + 72), *(*(a1 + 32) + 68));
  v9 = *(*(a1 + 32) + 68);
  *(a1 + 416) = v9;
  *(a1 + 352) = a4->i32[0];
  *(a1 + 356) = a4->i32[1];
  *(a1 + 510) = fabsf(v9 + -1.0) > 0.000001;
  v10 = *(a2 + 896);
  *(a1 + 536) = v10;
  v11 = *(a2 + 900);
  *(a1 + 540) = v11;
  v12 = *(a1 + 528);
  v13 = v12 * v11;
  v14 = *(a1 + 532);
  v15 = -((v14 * v11) - (v12 * v10));
  *(a1 + 328) = v15;
  *(a1 + 332) = v13 + (v14 * v10);
  *(a1 + 508) = fabsf(v15 + -1.0) > 0.000001;
  *(a1 + 424) = v8;

  return md::StackLabelPart::layoutForDisplay(a1, a2, a3, a4, (a1 + 1216));
}

void md::ARWalkingManeuverLabelPart::updateLocalState(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4, uint64_t a5, double *a6, double a7, double a8)
{
  v41 = +[VKDebugSettings sharedSettings];
  [v41 arDebugStylingBaseScalingFactor];
  v17 = v16;
  v18 = *(a1 + 1225);
  if ([v41 arForceLabelsViewOriented])
  {
    v18 = 4;
  }

  v19 = *(a1 + 16);
  v20 = v17 * a7;
  md::LabelPart::generateModelMatrixForMeshPositioningMode(&v46, v19 + 152, a3, a4, 8, 0, v18, v20, a8);
  v21 = v51;
  a2[12] = v50;
  a2[13] = v21;
  v22 = v53;
  a2[14] = v52;
  a2[15] = v22;
  v23 = v47;
  a2[8] = v46;
  a2[9] = v23;
  v24 = v49;
  a2[10] = v48;
  a2[11] = v24;
  if (*(a1 + 1224))
  {
    md::LabelPart::generateModelMatrixForMeshPositioningMode(&v46, v19 + 152, a3, a4, 8, 1, v18, v20, a8);
    v25 = v51;
    a2[4] = v50;
    a2[5] = v25;
    v26 = v53;
    a2[6] = v52;
    a2[7] = v26;
    v27 = v47;
    *a2 = v46;
    a2[1] = v27;
    v28 = v48;
    v29 = v49;
  }

  else
  {
    v30 = a2[13];
    a2[4] = a2[12];
    a2[5] = v30;
    v31 = a2[15];
    a2[6] = a2[14];
    a2[7] = v31;
    v32 = a2[9];
    *a2 = a2[8];
    a2[1] = v32;
    v28 = a2[10];
    v29 = a2[11];
  }

  a2[2] = v28;
  a2[3] = v29;
  v44 = *a4;
  v45 = *(a4 + 2);
  v46 = 0uLL;
  *&v47 = 0x3FF0000000000000;
  if (fabs(*a6) >= 0.0001)
  {
LABEL_11:
    for (i = 0; i != 24; i += 8)
    {
      *(&v46 + i) = *(&v44 + i) - *(a5 + i);
    }

    v37 = 0;
    v42 = v46;
    v43 = v47;
    v38 = 0.0;
    do
    {
      v38 = v38 + *(&v42 + v37 * 8) * a6[v37];
      ++v37;
    }

    while (v37 != 3);
    for (j = 0; j != 3; ++j)
    {
      *(&v46 + j * 8) = a6[j] * v38;
    }

    for (k = 0; k != 24; k += 8)
    {
      *(&v44 + k) = *(&v44 + k) - *(&v46 + k);
    }
  }

  else
  {
    v33 = 1;
    while (v33 != 3)
    {
      v34 = v33;
      v35 = vabdd_f64(a6[v33], *(&v46 + v33));
      ++v33;
      if (v35 >= 0.0001)
      {
        if ((v34 - 1) > 1)
        {
          break;
        }

        goto LABEL_11;
      }
    }
  }
}

double md::ARWalkingManeuverLabelPart::prepareForDisplay(md::ARWalkingManeuverLabelPart *this, md::LabelManager *a2)
{
  v3 = *(this + 72);
  v4 = *(this + 73);
  while (v3 != v4)
  {
    v6 = *v3++;
    (*(*v6 + 104))(v6, a2);
  }

  result = *(this + 119);
  *(this + 152) = result;
  return result;
}

uint64_t md::ARWalkingManeuverLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, float32x2_t *a3)
{
  v6 = 8;
  if (!*(a1 + 1224))
  {
    v6 = 0;
  }

  v7 = *(*(a1 + 576) + v6);
  v25 = 0;
  result = (*(*v7 + 80))(v7, a2, a3, &v25);
  if (result == 37)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7[3];
    v12 = v11 + 72;
    v13 = v11 + 80;
    do
    {
      v14 = *(v13 + 4 * v10);
      v15 = *(v12 + 4 * v10);
      if (v9)
      {
        break;
      }

      v9 = 1;
      v10 = 1;
    }

    while (v14 >= v15);
    if (v14 >= v15)
    {
      v16 = *(*(a1 + 32) + 20);
      *(a1 + 176) = v16;
      *(a1 + 112) = a3->i32[0];
      *(a1 + 116) = a3->i32[1];
      *(a1 + 270) = fabsf(v16 + -1.0) > 0.000001;
      v17 = *(a2 + 424);
      v18 = *(v17 + 464);
      *(a1 + 296) = v18;
      v19 = *(v17 + 468);
      *(a1 + 300) = v19;
      v20 = *(a1 + 288);
      v21 = v20 * v19;
      v22 = *(a1 + 292);
      v23 = -((v22 * v19) - (v20 * v18));
      *(a1 + 88) = v23;
      *(a1 + 92) = v21 + (v22 * v18);
      *(a1 + 268) = fabsf(v23 + -1.0) > 0.000001;
      if ((*(a1 + 1224) & 1) == 0)
      {
        v24 = *(**(**(a1 + 576) + 576) + 24);
        *(a1 + 956) = (*(v24 + 84) - *(v24 + 76)) * 0.083333;
      }

      result = md::StackLabelPart::layoutForStaging(a1, a2, a3, (a1 + 952));
      if (result == 37)
      {
        if (*(a1 + 566) == 1)
        {
          md::ARWalkingManeuverLabelPart::updateLocalState(a1, (a1 + 696), *(a2 + 424), (*(a1 + 16) + 616), *(a1 + 16) + 640, (*(a1 + 16) + 544), *(*(a1 + 32) + 24), *(*(a1 + 32) + 20));
          *(a1 + 184) = a1 + 696;
        }

        return 37;
      }
    }

    else
    {
      return 14;
    }
  }

  return result;
}

void md::ARWalkingManeuverLabelPart::~ARWalkingManeuverLabelPart(md::ARWalkingManeuverLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void md::MuninMapEngineConfiguration::didBecomeActive(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 41928);
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0x2FED70A4459DFCA1uLL);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      md::StyleLogic::setMapMode(v5, 5, 0.0);
      v3 = *(a2 + 41928);
    }
  }

  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0x20A1ED17D78F322BuLL);
  if (v6)
  {
    v6 = v6[5];
  }

  md::LabelsLogic::setWorldType(v6, 1u);
}

void sub_1B2CA9DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void *a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::__function::__value_func<ggl::VSView::PipelineSetup * ()(void)>::~__value_func[abi:nn200100](v35);
  std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v33);
  std::vector<ggl::VSView::PipelineSetup *,geo::allocator_adapter<ggl::VSView::PipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v31);
  std::__function::__value_func<void ()(ggl::VSView::PipelineSetup *)>::~__value_func[abi:nn200100](&a27);
  std::__function::__value_func<ggl::VSView::PipelineSetup * ()(void)>::~__value_func[abi:nn200100](&a31);
  MEMORY[0x1B8C62190](v31, 0x10A0C405CD4001ALL);
  v41 = *(v39 - 152);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  v42 = *(v39 - 168);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  v43 = *(v37 + 336);
  *(v37 + 336) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = *(v37 + 328);
  *(v37 + 328) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(v37 + 320);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  v46 = *(v37 + 304);
  *(v37 + 304) = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  v47 = *(v37 + 296);
  *(v37 + 296) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = *(v37 + 288);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v48);
  }

  v49 = *(v37 + 272);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v49);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::VSView::PipelineSetup>>::reset[abi:nn200100](v32 + 3, 0);
  v50 = *(v37 + 248);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::VSView::StretchAlphaPipelineSetup>>::reset[abi:nn200100](v32, 0);
  v51 = *(v37 + 224);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  md::FrameAllocator<ggl::RenderItem>::reset((v37 + 192));
  free(*(v37 + 192));
  v52 = *(v37 + 184);
  *(v37 + 184) = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v53 = *(v37 + 176);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  a25 = (v37 + 144);
  std::vector<std::unique_ptr<ggl::RenderState>>::__destroy_vector::operator()[abi:nn200100](&a25);
  v54 = *(v37 + 136);
  *(v37 + 136) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *(v37 + 128);
  *(v37 + 128) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *(v37 + 120);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v56);
  }

  v57 = *(v37 + 104);
  *(v37 + 104) = 0;
  if (v57)
  {
    MEMORY[0x1B8C62190](v57, 0x1000C4049ECCB0CLL);
  }

  v58 = *(v37 + 96);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v58);
  }

  v59 = *(v37 + 80);
  *(v37 + 80) = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59);
  }

  v60 = *a13;
  *a13 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  MEMORY[0x1B8C62190](v37, 0x1060C40C0A63DC5);
  a25 = (a16 + 8);
  std::vector<std::unique_ptr<md::mun::PassData>>::__destroy_vector::operator()[abi:nn200100](&a25);
  std::unique_ptr<md::mun::MuninRenderResources>::reset[abi:nn200100](a16, 0);

  *v34 = a10;
  v61 = *(v34 + 8);
  if (v61)
  {
    *(v34 + 16) = v61;
    operator delete(v61);
  }

  MEMORY[0x1B8C62190](v34, 0x10A1C40F41B8293);
  a25 = a11;
  std::vector<std::unique_ptr<md::RenderLayer>>::__destroy_vector::operator()[abi:nn200100](&a25);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<md::RenderLayer>>::clear[abi:nn200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void md::MuninMapEngineConfiguration::~MuninMapEngineConfiguration(md::MuninMapEngineConfiguration *this)
{
  *this = &unk_1F2A58798;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A58798;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void md::createFeatureAttributeSet(gss::FeatureAttributeSet **this, const GEOStyleAttributes *a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  __src = 0;
  v27 = 0;
  v28 = 0;
  if (v2)
  {
    for (i = 0; i < [(GEOStyleAttributes *)v2 attributesCount]; ++i)
    {
      v4 = [(GEOStyleAttributes *)v2 attributeAtIndex:i];
      v5 = [v4 key];
      v6 = [v4 value];
      v7 = v6;
      v8 = v27;
      if (v27 >= v28)
      {
        v10 = __src;
        v11 = v27 - __src;
        v12 = (v27 - __src) >> 3;
        v13 = v12 + 1;
        if ((v12 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v14 = v28 - __src;
        if ((v28 - __src) >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        v25[4] = v29;
        if (v15)
        {
          v16 = gss::zone_mallocator::instance(v6);
          v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v16, v15);
          v10 = __src;
          v11 = v27 - __src;
        }

        else
        {
          v17 = 0;
        }

        v18 = (v27 - __src) >> 3;
        v19 = &v17[8 * v12];
        v20 = &v17[8 * v15];
        *v19 = v5;
        *(v19 + 2) = v7;
        v9 = v19 + 8;
        v21 = &v19[-8 * v18];
        memcpy(v21, v10, v11);
        v22 = __src;
        v23 = v28;
        __src = v21;
        v27 = v9;
        v28 = v20;
        v25[2] = v22;
        v25[3] = v23;
        v25[0] = v22;
        v25[1] = v22;
        std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(v25);
      }

      else
      {
        *v27 = v5;
        *(v8 + 2) = v6;
        v9 = v8 + 8;
      }

      v27 = v9;
    }
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](this, &__src);
  gss::FeatureAttributeSet::sort(*this, this[1]);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__src);
}

void sub_1B2CAA964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va);

  _Unwind_Resume(a1);
}

void *md::ARMeshRenderLayer::prune(uint64_t a1)
{
  result = ggl::FragmentedPool<ggl::RenderItem>::shrink(*(a1 + 432));
  v3 = *(a1 + 72);
  v5 = *v3;
  v4 = v3[1];
  if (*v3 != v4)
  {
    do
    {
      result = *v5;
      if (*v5)
      {
        result = (*(*result + 8))(result);
        v4 = v3[1];
      }

      ++v5;
    }

    while (v5 != v4);
    v5 = *v3;
  }

  v3[1] = v5;
  v6 = *(a1 + 80);
  v8 = *v6;
  v7 = v6[1];
  if (*v6 != v7)
  {
    do
    {
      result = *v8;
      if (*v8)
      {
        result = (*(*result + 8))(result);
        v7 = v6[1];
      }

      ++v8;
    }

    while (v8 != v7);
    v8 = *v6;
  }

  v6[1] = v8;
  v9 = *(a1 + 64);
  v11 = *v9;
  v10 = v9[1];
  if (*v9 != v10)
  {
    do
    {
      result = *v11;
      if (*v11)
      {
        result = (*(*result + 8))(result);
        v10 = v9[1];
      }

      ++v11;
    }

    while (v11 != v10);
    v11 = *v9;
  }

  v9[1] = v11;
  return result;
}

void *detachEnvironmentTexture(ggl::MetalDevice *a1, gdc::Registry *a2, gdc::Registry *a3, ggl::TextureCube *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = gdc::Registry::storage<arComponents::AREnvironmentProbeTexture>(a1);
  v7 = v6[7];
  v8 = v6[8];
  if (v7 != v8)
  {
    v9 = (v6[10] + 8);
    do
    {
      v10 = *v9;
      if (*v9 && *(v10 + 3))
      {
        ggl::RenderDataHolder::resetRenderResource(v10);
      }

      v7 += 8;
      v9 += 3;
    }

    while (v7 != v8);
  }

  v11 = gdc::Registry::storage<arComponents::AREnvironmentProbeTexture>(a1);
  v12 = v11;
  if (v11[29])
  {
    v13 = v11[28];
    if (v13)
    {
      v14 = v11[31];
      v15 = v11[7];
      v16 = (v11[8] - v15) >> 3;
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, v15, v16);
        v13 = *v13;
      }

      while (v13);
    }
  }

  v12[8] = v12[7];
  v17 = v12[10];
  for (i = v12[11]; i != v17; std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(i))
  {
    i -= 24;
  }

  v12[11] = v17;
  v19 = gdc::Registry::storage<arComponents::ContextEntity>(a2);
  v20 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(a2);
  result = gdc::Registry::storage<md::pipelineECS::SupportsEnvironmentTexture>(a2);
  v22 = result;
  v58 = v19;
  v23.i64[0] = v19;
  v23.i64[1] = v20;
  v24 = result + 4;
  v59 = vaddq_s64(v23, vdupq_n_s64(0x20uLL));
  v60 = result + 4;
  v25 = v59.i64[0];
  v26 = 1;
  v27 = &v59;
  do
  {
    if (*(v59.i64[v26] + 32) - *(v59.i64[v26] + 24) < *(v25 + 32) - *(v25 + 24))
    {
      v25 = v59.i64[v26];
      v27 = (&v59 + v26 * 8);
    }

    ++v26;
  }

  while (v26 != 3);
  v28 = (v19 + 32);
  v56 = v27->i64[0];
  if (v19 + 32 == v27->i64[0])
  {
    v45 = *(v19 + 56);
    v46 = *(v19 + 64);
    while (v45 != v46)
    {
      v47 = *(v45 + 4);
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v20 + 4, v47);
      v48 = v20[8];
      if (v48 != result)
      {
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v24, v47);
        v49 = v22[8];
        if (v49 != result)
        {
          v50 = *(v45 + 4);
          v51 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v20 + 4, v50);
          if (v48 == v51)
          {
            v52 = v20[11];
          }

          else
          {
            v52 = v20[10] + v51 - v20[7];
          }

          v53 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v24, v50);
          if (v49 == v53)
          {
            v54 = v22[11];
          }

          else
          {
            v54 = (v22[10] + v53 - v22[7]);
          }

          result = (***v54)(*v54, v52, a3);
        }
      }

      v45 += 8;
    }
  }

  v55 = v20 + 4;
  if (v20 + 4 == v56)
  {
    v30 = v20[7];
    v29 = v20[8];
    if (v30 != v29)
    {
      v31 = v20[10];
      do
      {
        v32 = *(v30 + 4);
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v28, v32);
        if (*(v58 + 64) != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v24, v32);
          v33 = v22[8];
          if (v33 != result)
          {
            v34 = *(v30 + 4);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v28, v34);
            v35 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v24, v34);
            if (v33 == v35)
            {
              v36 = v22[11];
            }

            else
            {
              v36 = (v22[10] + v35 - v22[7]);
            }

            result = (***v36)(*v36, v31, a3);
          }
        }

        v31 += 8;
        v30 += 8;
      }

      while (v30 != v29);
    }
  }

  if (v24 == v56)
  {
    v37 = v22[7];
    v38 = v22[8];
    if (v37 != v38)
    {
      v39 = v22[10];
      do
      {
        v40 = *(v37 + 4);
        result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v28, v40);
        if (*(v58 + 64) != result)
        {
          result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v55, v40);
          v41 = v20[8];
          if (v41 != result)
          {
            v42 = *(v37 + 4);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v28, v42);
            v43 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v55, v42);
            if (v41 == v43)
            {
              v44 = v20[11];
            }

            else
            {
              v44 = v20[10] + v43 - v20[7];
            }

            result = (***v39)(*v39, v44, a3);
          }
        }

        ++v39;
        v37 += 8;
      }

      while (v37 != v38);
    }
  }

  return result;
}

uint64_t gdc::Registry::storage<arComponents::AREnvironmentProbeTexture>(uint64_t a1)
{
  v3 = 0xB98AEFC198486853;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB98AEFC198486853);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::ContextEntity>(uint64_t a1)
{
  v3 = 0x1D46EE08B2FE26F2;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1D46EE08B2FE26F2uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::PipelineInstanceToUse>(uint64_t a1)
{
  v3 = 0x9E3ED38A72A73EF5;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x9E3ED38A72A73EF5);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::pipelineECS::SupportsEnvironmentTexture>(uint64_t a1)
{
  v3 = 0x3B6041BC66626A0FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x3B6041BC66626A0FuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::SupportsEnvironmentTexture>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::pipelineECS::SupportsEnvironmentTexture>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::SupportsEnvironmentTexture>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::ContextEntity>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::ContextEntity>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::ContextEntity>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::AREnvironmentProbeTexture>::remove(void *a1, uint64_t a2)
{
  v15 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    objc_storeStrong(v6, *(v7 - 24));
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(v6 + 16);
    *(v6 + 8) = v9;
    *(v6 + 16) = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11] - 24;
    std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v11);
    a1[11] = v11;
    v12 = a1[28];
    if (v12)
    {
      v13 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v12[6], v13, &v15, 1);
        v12 = *v12;
      }

      while (v12);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::AREnvironmentProbeTexture>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

uint64_t gdc::ComponentStorageWrapper<arComponents::AREnvironmentProbeTexture>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

void md::ARMeshRenderLayer::layout(ggl::zone_mallocator **this, const md::LayoutContext *a2)
{
  v673 = *MEMORY[0x1E69E9840];
  v3 = ggl::FragmentedPool<ggl::RenderItem>::pushAll(this[54]);
  v658 = this;
  v4 = this[9];
  v5 = *(v4 + 4);
  v6 = *(v4 + 5);
  if (v5 != v6)
  {
    v7 = *(v4 + 1);
    do
    {
      v8 = *v5;
      v9 = *(v4 + 2);
      if (v7 >= v9)
      {
        v10 = (v7 - *v4) >> 3;
        if ((v10 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v11 = v9 - *v4;
        v12 = v11 >> 2;
        if (v11 >> 2 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        v672 = v4 + 24;
        if (v13)
        {
          v14 = ggl::zone_mallocator::instance(v3);
          v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARMeshPipelineSetup *>(v14, v13);
        }

        else
        {
          v15 = 0;
        }

        v17 = &v15[8 * v13];
        v16 = &v15[8 * v10];
        *v16 = v8;
        v7 = v16 + 8;
        v18 = *(v4 + 1) - *v4;
        v19 = &v16[-v18];
        memcpy(&v16[-v18], *v4, v18);
        v20 = *v4;
        *v4 = v19;
        v670.i64[0] = v20;
        v670.i64[1] = v20;
        *(v4 + 1) = v7;
        v671.i64[0] = v20;
        v21 = *(v4 + 2);
        *(v4 + 2) = v17;
        v671.i64[1] = v21;
        v3 = std::__split_buffer<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v670);
      }

      else
      {
        *v7++ = v8;
      }

      *(v4 + 1) = v7;
      ++v5;
    }

    while (v5 != v6);
    v5 = *(v4 + 4);
    v6 = *(v4 + 5);
  }

  if (v5 != v6)
  {
    *(v4 + 5) = v5;
  }

  v22 = v658[10];
  v23 = *(v22 + 4);
  v24 = *(v22 + 5);
  if (v23 != v24)
  {
    v25 = *(v22 + 1);
    do
    {
      v26 = *v23;
      v27 = *(v22 + 2);
      if (v25 >= v27)
      {
        v28 = (v25 - *v22) >> 3;
        if ((v28 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v29 = v27 - *v22;
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

        v672 = v22 + 24;
        if (v31)
        {
          v32 = ggl::zone_mallocator::instance(v3);
          v33 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(v32, v31);
        }

        else
        {
          v33 = 0;
        }

        v35 = &v33[8 * v31];
        v34 = &v33[8 * v28];
        *v34 = v26;
        v25 = v34 + 8;
        v36 = *(v22 + 1) - *v22;
        v37 = &v34[-v36];
        memcpy(&v34[-v36], *v22, v36);
        v38 = *v22;
        *v22 = v37;
        v670.i64[0] = v38;
        v670.i64[1] = v38;
        *(v22 + 1) = v25;
        v671.i64[0] = v38;
        v39 = *(v22 + 2);
        *(v22 + 2) = v35;
        v671.i64[1] = v39;
        v3 = std::__split_buffer<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v670);
      }

      else
      {
        *v25++ = v26;
      }

      *(v22 + 1) = v25;
      ++v23;
    }

    while (v23 != v24);
    v23 = *(v22 + 4);
    v24 = *(v22 + 5);
  }

  if (v23 != v24)
  {
    *(v22 + 5) = v23;
  }

  v40 = v658[8];
  v41 = *(v40 + 4);
  v42 = *(v40 + 5);
  if (v41 != v42)
  {
    v43 = *(v40 + 1);
    do
    {
      v44 = *v41;
      v45 = *(v40 + 2);
      if (v43 >= v45)
      {
        v46 = (v43 - *v40) >> 3;
        if ((v46 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v47 = v45 - *v40;
        v48 = v47 >> 2;
        if (v47 >> 2 <= (v46 + 1))
        {
          v48 = v46 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF8)
        {
          v49 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        v672 = v40 + 24;
        if (v49)
        {
          v50 = ggl::zone_mallocator::instance(v3);
          v51 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARShadowPipelineSetup *>(v50, v49);
        }

        else
        {
          v51 = 0;
        }

        v53 = &v51[8 * v49];
        v52 = &v51[8 * v46];
        *v52 = v44;
        v43 = v52 + 8;
        v54 = *(v40 + 1) - *v40;
        v55 = &v52[-v54];
        memcpy(&v52[-v54], *v40, v54);
        v56 = *v40;
        *v40 = v55;
        v670.i64[0] = v56;
        v670.i64[1] = v56;
        *(v40 + 1) = v43;
        v671.i64[0] = v56;
        v57 = *(v40 + 2);
        *(v40 + 2) = v53;
        v671.i64[1] = v57;
        v3 = std::__split_buffer<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v670);
      }

      else
      {
        *v43++ = v44;
      }

      *(v40 + 1) = v43;
      ++v41;
    }

    while (v41 != v42);
    v41 = *(v40 + 4);
    v42 = *(v40 + 5);
  }

  if (v41 != v42)
  {
    *(v40 + 5) = v41;
  }

  md::FrameGraph::renderQueueForPass(*(*(v658[5] + 3) + 8), 0);
  v659 = v663;
  v660 = v663;
  v661 = v663;
  v662 = 4;
  v58 = gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(v658[55]);
  v59 = *(v58 + 56);
  for (i = *(v58 + 64); v59 != i; ++v59)
  {
    v670.i64[0] = *v59;
    geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v659, &v670);
  }

  v61 = v658[55];
  v62 = v659;
  v63 = v660;
  if (v659 != v660)
  {
    do
    {
      v64 = *v62++;
      gdc::Registry::destroy(v61, v64);
    }

    while (v62 != v63);
    v61 = v658[55];
  }

  v65 = gdc::Registry::storage<arComponents::WorldTransform>(v61);
  v66 = gdc::Registry::storage<arComponents::MeshComponent>(v61);
  v67 = gdc::Registry::storage<arComponents::Boundary>(v61);
  v628 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v61);
  v68 = gdc::Registry::storage<arComponents::StandardPipeline>(v61);
  v69.i64[0] = v65;
  v69.i64[1] = v66;
  v70.i64[0] = v67;
  v70.i64[1] = v628;
  v71 = vdupq_n_s64(0x20uLL);
  v613 = v68;
  v670 = vaddq_s64(v69, v71);
  v671 = vaddq_s64(v70, v71);
  v624 = (v68 + 32);
  v672 = (v68 + 32);
  v72 = v670.i64[0];
  v73 = 1;
  v74 = &v670;
  do
  {
    if (*(v670.i64[v73] + 32) - *(v670.i64[v73] + 24) < *(v72 + 32) - *(v72 + 24))
    {
      v72 = v670.i64[v73];
      v74 = (&v670 + v73 * 8);
    }

    ++v73;
  }

  while (v73 != 5);
  v75 = (v65 + 32);
  v610 = v74->i64[0];
  v638 = v65;
  if (v65 + 32 == v74->i64[0])
  {
    v373 = *(v65 + 56);
    v374 = *(v65 + 64);
    while (v373 != v374)
    {
      v375 = *(v373 + 4);
      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v66 + 4, v375);
      v377 = v66[8];
      if (v377 != Index)
      {
        v378 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v67 + 4, v375);
        v379 = v67[8];
        if (v379 != v378 && v628[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v628 + 4, v375) && *(v613 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v624, v375))
        {
          v380 = *v373;
          v381 = HIDWORD(*v373);
          v382 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v66 + 4, HIDWORD(*v373));
          if (v377 == v382)
          {
            v383 = v66[11];
          }

          else
          {
            v383 = (v66[10] + 2 * (v382 - v66[7]));
          }

          v384 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v67 + 4, v381);
          if (v379 == v384)
          {
            v385 = v67[11];
          }

          else
          {
            v385 = v67[10] + 24 * ((v384 - v67[7]) >> 3);
          }

          md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v380, v383, v385);
        }
      }

      v373 += 8;
    }
  }

  v648 = v66 + 4;
  if (v66 + 4 == v610)
  {
    v77 = v66[7];
    v76 = v66[8];
    if (v77 != v76)
    {
      v78 = v66[10];
      do
      {
        v79 = *(v77 + 4);
        if (*(v65 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v75, v79))
        {
          v80 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v67 + 4, v79);
          v617 = v67[8];
          if (v617 != v80 && v628[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v628 + 4, v79) && *(v613 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v624, v79))
          {
            v81 = *v77;
            v82 = HIDWORD(*v77);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v75, HIDWORD(*v77));
            v83 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v67 + 4, v82);
            if (v617 == v83)
            {
              v84 = v67[11];
            }

            else
            {
              v84 = v67[10] + 24 * ((v83 - v67[7]) >> 3);
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v81, v78, v84);
          }
        }

        v78 += 2;
        v77 += 8;
      }

      while (v77 != v76);
    }
  }

  v618 = v67 + 4;
  if (v67 + 4 == v610)
  {
    v85 = v67[7];
    v86 = v67[8];
    if (v85 != v86)
    {
      v87 = v67[10];
      do
      {
        v88 = *(v85 + 4);
        if (*(v638 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v75, v88))
        {
          v89 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v648, v88);
          v90 = v66[8];
          if (v90 != v89 && v628[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v628 + 4, v88) && *(v613 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v624, v88))
          {
            v91 = *v85;
            v92 = HIDWORD(*v85);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v75, HIDWORD(*v85));
            v93 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v648, v92);
            if (v90 == v93)
            {
              v94 = v66[11];
            }

            else
            {
              v94 = (v66[10] + 2 * (v93 - v66[7]));
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v91, v94, v87);
          }
        }

        v87 += 24;
        v85 += 8;
      }

      while (v85 != v86);
    }
  }

  if (v628 + 4 == v610)
  {
    v386 = v628[7];
    v387 = v628[8];
    while (v386 != v387)
    {
      v388 = *(v386 + 4);
      if (*(v638 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v75, v388))
      {
        v389 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v648, v388);
        v390 = v66[8];
        if (v390 != v389)
        {
          v391 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v618, v388);
          v392 = v67[8];
          if (v392 != v391 && *(v613 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v624, v388))
          {
            v393 = *v386;
            v394 = HIDWORD(*v386);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v75, HIDWORD(*v386));
            v395 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v648, v394);
            if (v390 == v395)
            {
              v396 = v66[11];
            }

            else
            {
              v396 = (v66[10] + 2 * (v395 - v66[7]));
            }

            v397 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v618, v394);
            if (v392 == v397)
            {
              v398 = v67[11];
            }

            else
            {
              v398 = v67[10] + 24 * ((v397 - v67[7]) >> 3);
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v393, v396, v398);
          }
        }
      }

      v386 += 8;
    }
  }

  if (v624 == v610)
  {
    v399 = *(v613 + 56);
    v400 = *(v613 + 64);
    while (v399 != v400)
    {
      v401 = *(v399 + 4);
      if (*(v638 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v75, v401))
      {
        v402 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v648, v401);
        v403 = v66[8];
        if (v403 != v402)
        {
          v404 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v618, v401);
          v405 = v67[8];
          if (v405 != v404 && v628[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v628 + 4, v401))
          {
            v406 = *v399;
            v407 = HIDWORD(*v399);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v75, HIDWORD(*v399));
            v408 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v648, v407);
            if (v403 == v408)
            {
              v409 = v66[11];
            }

            else
            {
              v409 = (v66[10] + 2 * (v408 - v66[7]));
            }

            v410 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v618, v407);
            if (v405 == v410)
            {
              v411 = v67[11];
            }

            else
            {
              v411 = v67[10] + 24 * ((v410 - v67[7]) >> 3);
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v406, v409, v411);
          }
        }
      }

      v399 += 8;
    }
  }

  v95 = v658[55];
  v649 = gdc::Registry::storage<arComponents::WorldTransform>(v95);
  v96 = gdc::Registry::storage<arComponents::MeshDataComponent>(v95);
  v97 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v95);
  v98 = gdc::Registry::storage<arComponents::StandardPipeline>(v95);
  v99.i64[0] = v649;
  v99.i64[1] = v96;
  v100.i64[0] = v97;
  v100.i64[1] = v98;
  v101 = vdupq_n_s64(0x20uLL);
  v670 = vaddq_s64(v99, v101);
  v671 = vaddq_s64(v100, v101);
  v102 = v670.i64[0];
  v103 = 1;
  v104 = &v670;
  do
  {
    if (*(v670.i64[v103] + 32) - *(v670.i64[v103] + 24) < *(v102 + 32) - *(v102 + 24))
    {
      v102 = v670.i64[v103];
      v104 = (&v670 + v103 * 8);
    }

    ++v103;
  }

  while (v103 != 4);
  v105 = v104->i64[0];
  v106 = (v649 + 32);
  if (v649 + 32 == v104->i64[0])
  {
    v412 = *(v649 + 56);
    v413 = *(v649 + 64);
    while (v412 != v413)
    {
      v414 = *(v412 + 4);
      v415 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v96 + 4, v414);
      v416 = v96[8];
      if (v416 != v415 && v97[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v97 + 4, v414) && v98[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v98 + 4, v414))
      {
        v417 = *v412;
        v418 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v96 + 4, HIDWORD(*v412));
        if (v416 == v418)
        {
          v419 = v96[11];
        }

        else
        {
          v419 = (v96[10] + v418 - v96[7]);
        }

        md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v417, *v419);
      }

      v412 += 8;
    }
  }

  v629 = v105;
  v639 = v96 + 4;
  if (v96 + 4 == v105)
  {
    v107 = v96[7];
    v108 = v96[8];
    if (v107 != v108)
    {
      v109 = v96[10];
      do
      {
        v110 = *(v107 + 4);
        if (*(v649 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v106, v110) && v97[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v97 + 4, v110) && v98[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v98 + 4, v110))
        {
          v111 = *v107;
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v106, HIDWORD(*v107));
          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v111, *v109);
        }

        ++v109;
        v107 += 8;
      }

      while (v107 != v108);
    }
  }

  if (v97 + 4 == v629)
  {
    v421 = v97[7];
    v420 = v97[8];
    while (v421 != v420)
    {
      v422 = *(v421 + 4);
      if (*(v649 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v106, v422))
      {
        v423 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v639, v422);
        v424 = v96[8];
        if (v424 != v423 && v98[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v98 + 4, v422))
        {
          v425 = *v421;
          v426 = HIDWORD(*v421);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v106, HIDWORD(*v421));
          v427 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v639, v426);
          if (v424 == v427)
          {
            v428 = v96[11];
          }

          else
          {
            v428 = (v96[10] + v427 - v96[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v425, *v428);
        }
      }

      v421 += 8;
    }
  }

  if (v98 + 4 == v629)
  {
    v429 = v98[7];
    v430 = v98[8];
    while (v429 != v430)
    {
      v431 = *(v429 + 4);
      if (*(v649 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v106, v431))
      {
        v432 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v639, v431);
        v433 = v96[8];
        if (v433 != v432 && v97[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v97 + 4, v431))
        {
          v434 = *v429;
          v435 = HIDWORD(*v429);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v106, HIDWORD(*v429));
          v436 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v639, v435);
          if (v433 == v436)
          {
            v437 = v96[11];
          }

          else
          {
            v437 = (v96[10] + v436 - v96[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v434, *v437);
        }
      }

      v429 += 8;
    }
  }

  v112 = v658[55];
  v113 = gdc::Registry::storage<arComponents::WorldTransform>(v112);
  v114 = gdc::Registry::storage<arComponents::MeshComponent>(v112);
  v115 = gdc::Registry::storage<arComponents::Boundary>(v112);
  v630 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v112);
  v116 = gdc::Registry::storage<arComponents::OcclusionPipeline>(v112);
  v117.i64[0] = v113;
  v117.i64[1] = v114;
  v118.i64[0] = v115;
  v118.i64[1] = v630;
  v119 = vdupq_n_s64(0x20uLL);
  v614 = v116;
  v670 = vaddq_s64(v117, v119);
  v671 = vaddq_s64(v118, v119);
  v625 = (v116 + 32);
  v672 = (v116 + 32);
  v120 = v670.i64[0];
  v121 = 1;
  v122 = &v670;
  do
  {
    if (*(v670.i64[v121] + 32) - *(v670.i64[v121] + 24) < *(v120 + 32) - *(v120 + 24))
    {
      v120 = v670.i64[v121];
      v122 = (&v670 + v121 * 8);
    }

    ++v121;
  }

  while (v121 != 5);
  v123 = (v113 + 32);
  v611 = v122->i64[0];
  v640 = v113;
  if (v113 + 32 == v122->i64[0])
  {
    v438 = *(v113 + 56);
    v439 = *(v113 + 64);
    while (v438 != v439)
    {
      v440 = *(v438 + 4);
      v441 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v114 + 4, v440);
      v442 = v114[8];
      if (v442 != v441)
      {
        v443 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v115 + 4, v440);
        v444 = v115[8];
        if (v444 != v443 && v630[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v630 + 4, v440) && *(v614 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v625, v440))
        {
          v445 = *v438;
          v446 = HIDWORD(*v438);
          v447 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v114 + 4, HIDWORD(*v438));
          if (v442 == v447)
          {
            v448 = v114[11];
          }

          else
          {
            v448 = (v114[10] + 2 * (v447 - v114[7]));
          }

          v449 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v115 + 4, v446);
          if (v444 == v449)
          {
            v450 = v115[11];
          }

          else
          {
            v450 = v115[10] + 24 * ((v449 - v115[7]) >> 3);
          }

          md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v445, v448, v450);
        }
      }

      v438 += 8;
    }
  }

  v650 = v114 + 4;
  if (v114 + 4 == v611)
  {
    v125 = v114[7];
    v124 = v114[8];
    if (v125 != v124)
    {
      v126 = v114[10];
      do
      {
        v127 = *(v125 + 4);
        if (*(v113 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v123, v127))
        {
          v128 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v115 + 4, v127);
          v619 = v115[8];
          if (v619 != v128 && v630[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v630 + 4, v127) && *(v614 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v625, v127))
          {
            v129 = *v125;
            v130 = HIDWORD(*v125);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v123, HIDWORD(*v125));
            v131 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v115 + 4, v130);
            if (v619 == v131)
            {
              v132 = v115[11];
            }

            else
            {
              v132 = v115[10] + 24 * ((v131 - v115[7]) >> 3);
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v129, v126, v132);
          }
        }

        v126 += 2;
        v125 += 8;
      }

      while (v125 != v124);
    }
  }

  v620 = v115 + 4;
  if (v115 + 4 == v611)
  {
    v133 = v115[7];
    v134 = v115[8];
    if (v133 != v134)
    {
      v135 = v115[10];
      do
      {
        v136 = *(v133 + 4);
        if (*(v640 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v123, v136))
        {
          v137 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v650, v136);
          v138 = v114[8];
          if (v138 != v137 && v630[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v630 + 4, v136) && *(v614 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v625, v136))
          {
            v139 = *v133;
            v140 = HIDWORD(*v133);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v123, HIDWORD(*v133));
            v141 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v650, v140);
            if (v138 == v141)
            {
              v142 = v114[11];
            }

            else
            {
              v142 = (v114[10] + 2 * (v141 - v114[7]));
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v139, v142, v135);
          }
        }

        v135 += 24;
        v133 += 8;
      }

      while (v133 != v134);
    }
  }

  if (v630 + 4 == v611)
  {
    v451 = v630[7];
    v452 = v630[8];
    while (v451 != v452)
    {
      v453 = *(v451 + 4);
      if (*(v640 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v123, v453))
      {
        v454 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v650, v453);
        v455 = v114[8];
        if (v455 != v454)
        {
          v456 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v620, v453);
          v457 = v115[8];
          if (v457 != v456 && *(v614 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v625, v453))
          {
            v458 = *v451;
            v459 = HIDWORD(*v451);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v123, HIDWORD(*v451));
            v460 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v650, v459);
            if (v455 == v460)
            {
              v461 = v114[11];
            }

            else
            {
              v461 = (v114[10] + 2 * (v460 - v114[7]));
            }

            v462 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v620, v459);
            if (v457 == v462)
            {
              v463 = v115[11];
            }

            else
            {
              v463 = v115[10] + 24 * ((v462 - v115[7]) >> 3);
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v458, v461, v463);
          }
        }
      }

      v451 += 8;
    }
  }

  if (v625 == v611)
  {
    v464 = *(v614 + 56);
    v465 = *(v614 + 64);
    while (v464 != v465)
    {
      v466 = *(v464 + 4);
      if (*(v640 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v123, v466))
      {
        v467 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v650, v466);
        v468 = v114[8];
        if (v468 != v467)
        {
          v469 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v620, v466);
          v470 = v115[8];
          if (v470 != v469 && v630[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v630 + 4, v466))
          {
            v471 = *v464;
            v472 = HIDWORD(*v464);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v123, HIDWORD(*v464));
            v473 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v650, v472);
            if (v468 == v473)
            {
              v474 = v114[11];
            }

            else
            {
              v474 = (v114[10] + 2 * (v473 - v114[7]));
            }

            v475 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v620, v472);
            if (v470 == v475)
            {
              v476 = v115[11];
            }

            else
            {
              v476 = v115[10] + 24 * ((v475 - v115[7]) >> 3);
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v471, v474, v476);
          }
        }
      }

      v464 += 8;
    }
  }

  v143 = v658[55];
  v651 = gdc::Registry::storage<arComponents::WorldTransform>(v143);
  v144 = gdc::Registry::storage<arComponents::MeshDataComponent>(v143);
  v145 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v143);
  v146 = gdc::Registry::storage<arComponents::OcclusionPipeline>(v143);
  v147.i64[0] = v651;
  v147.i64[1] = v144;
  v148.i64[0] = v145;
  v148.i64[1] = v146;
  v149 = vdupq_n_s64(0x20uLL);
  v670 = vaddq_s64(v147, v149);
  v671 = vaddq_s64(v148, v149);
  v150 = v670.i64[0];
  v151 = 1;
  v152 = &v670;
  do
  {
    if (*(v670.i64[v151] + 32) - *(v670.i64[v151] + 24) < *(v150 + 32) - *(v150 + 24))
    {
      v150 = v670.i64[v151];
      v152 = (&v670 + v151 * 8);
    }

    ++v151;
  }

  while (v151 != 4);
  v153 = v152->i64[0];
  v154 = (v651 + 32);
  if (v651 + 32 == v152->i64[0])
  {
    v477 = *(v651 + 56);
    v478 = *(v651 + 64);
    while (v477 != v478)
    {
      v479 = *(v477 + 4);
      v480 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v144 + 4, v479);
      v481 = v144[8];
      if (v481 != v480 && v145[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v145 + 4, v479) && v146[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v146 + 4, v479))
      {
        v482 = *v477;
        v483 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v144 + 4, HIDWORD(*v477));
        if (v481 == v483)
        {
          v484 = v144[11];
        }

        else
        {
          v484 = (v144[10] + v483 - v144[7]);
        }

        md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v482, *v484);
      }

      v477 += 8;
    }
  }

  v631 = v153;
  v641 = v144 + 4;
  if (v144 + 4 == v153)
  {
    v155 = v144[7];
    v156 = v144[8];
    if (v155 != v156)
    {
      v157 = v144[10];
      do
      {
        v158 = *(v155 + 4);
        if (*(v651 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v154, v158) && v145[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v145 + 4, v158) && v146[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v146 + 4, v158))
        {
          v159 = *v155;
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v154, HIDWORD(*v155));
          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v159, *v157);
        }

        ++v157;
        v155 += 8;
      }

      while (v155 != v156);
    }
  }

  if (v145 + 4 == v631)
  {
    v486 = v145[7];
    v485 = v145[8];
    while (v486 != v485)
    {
      v487 = *(v486 + 4);
      if (*(v651 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v154, v487))
      {
        v488 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v641, v487);
        v489 = v144[8];
        if (v489 != v488 && v146[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v146 + 4, v487))
        {
          v490 = *v486;
          v491 = HIDWORD(*v486);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v154, HIDWORD(*v486));
          v492 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v641, v491);
          if (v489 == v492)
          {
            v493 = v144[11];
          }

          else
          {
            v493 = (v144[10] + v492 - v144[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v490, *v493);
        }
      }

      v486 += 8;
    }
  }

  if (v146 + 4 == v631)
  {
    v494 = v146[7];
    v495 = v146[8];
    while (v494 != v495)
    {
      v496 = *(v494 + 4);
      if (*(v651 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v154, v496))
      {
        v497 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v641, v496);
        v498 = v144[8];
        if (v498 != v497 && v145[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v145 + 4, v496))
        {
          v499 = *v494;
          v500 = HIDWORD(*v494);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v154, HIDWORD(*v494));
          v501 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v641, v500);
          if (v498 == v501)
          {
            v502 = v144[11];
          }

          else
          {
            v502 = (v144[10] + v501 - v144[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v499, *v502);
        }
      }

      v494 += 8;
    }
  }

  v160 = v658[55];
  v161 = gdc::Registry::storage<arComponents::WorldTransform>(v160);
  v162 = gdc::Registry::storage<arComponents::MeshComponent>(v160);
  v163 = gdc::Registry::storage<arComponents::Boundary>(v160);
  v632 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v160);
  v164 = gdc::Registry::storage<arComponents::ShadowPipeline>(v160);
  v165.i64[0] = v161;
  v165.i64[1] = v162;
  v166.i64[0] = v163;
  v166.i64[1] = v632;
  v167 = vdupq_n_s64(0x20uLL);
  v615 = v164;
  v670 = vaddq_s64(v165, v167);
  v671 = vaddq_s64(v166, v167);
  v626 = (v164 + 32);
  v672 = (v164 + 32);
  v168 = v670.i64[0];
  v169 = 1;
  v170 = &v670;
  do
  {
    if (*(v670.i64[v169] + 32) - *(v670.i64[v169] + 24) < *(v168 + 32) - *(v168 + 24))
    {
      v168 = v670.i64[v169];
      v170 = (&v670 + v169 * 8);
    }

    ++v169;
  }

  while (v169 != 5);
  v171 = (v161 + 32);
  v612 = v170->i64[0];
  v642 = v161;
  if (v161 + 32 == v170->i64[0])
  {
    v503 = *(v161 + 56);
    v504 = *(v161 + 64);
    while (v503 != v504)
    {
      v505 = *(v503 + 4);
      v506 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v162 + 4, v505);
      v507 = v162[8];
      if (v507 != v506)
      {
        v508 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v163 + 4, v505);
        v509 = v163[8];
        if (v509 != v508 && v632[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v632 + 4, v505) && *(v615 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v626, v505))
        {
          v510 = *v503;
          v511 = HIDWORD(*v503);
          v512 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v162 + 4, HIDWORD(*v503));
          if (v507 == v512)
          {
            v513 = v162[11];
          }

          else
          {
            v513 = (v162[10] + 2 * (v512 - v162[7]));
          }

          v514 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v163 + 4, v511);
          if (v509 == v514)
          {
            v515 = v163[11];
          }

          else
          {
            v515 = v163[10] + 24 * ((v514 - v163[7]) >> 3);
          }

          md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v510, v513, v515);
        }
      }

      v503 += 8;
    }
  }

  v652 = v162 + 4;
  if (v162 + 4 == v612)
  {
    v173 = v162[7];
    v172 = v162[8];
    if (v173 != v172)
    {
      v174 = v162[10];
      do
      {
        v175 = *(v173 + 4);
        if (*(v161 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v171, v175))
        {
          v176 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v163 + 4, v175);
          v621 = v163[8];
          if (v621 != v176 && v632[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v632 + 4, v175) && *(v615 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v626, v175))
          {
            v177 = *v173;
            v178 = HIDWORD(*v173);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v171, HIDWORD(*v173));
            v179 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v163 + 4, v178);
            if (v621 == v179)
            {
              v180 = v163[11];
            }

            else
            {
              v180 = v163[10] + 24 * ((v179 - v163[7]) >> 3);
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v177, v174, v180);
          }
        }

        v174 += 2;
        v173 += 8;
      }

      while (v173 != v172);
    }
  }

  v622 = v163 + 4;
  if (v163 + 4 == v612)
  {
    v181 = v163[7];
    v182 = v163[8];
    if (v181 != v182)
    {
      v183 = v163[10];
      do
      {
        v184 = *(v181 + 4);
        if (*(v642 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v171, v184))
        {
          v185 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v652, v184);
          v186 = v162[8];
          if (v186 != v185 && v632[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v632 + 4, v184) && *(v615 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v626, v184))
          {
            v187 = *v181;
            v188 = HIDWORD(*v181);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v171, HIDWORD(*v181));
            v189 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v652, v188);
            if (v186 == v189)
            {
              v190 = v162[11];
            }

            else
            {
              v190 = (v162[10] + 2 * (v189 - v162[7]));
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v187, v190, v183);
          }
        }

        v183 += 24;
        v181 += 8;
      }

      while (v181 != v182);
    }
  }

  if (v632 + 4 == v612)
  {
    v516 = v632[7];
    v517 = v632[8];
    while (v516 != v517)
    {
      v518 = *(v516 + 4);
      if (*(v642 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v171, v518))
      {
        v519 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v652, v518);
        v520 = v162[8];
        if (v520 != v519)
        {
          v521 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v622, v518);
          v522 = v163[8];
          if (v522 != v521 && *(v615 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v626, v518))
          {
            v523 = *v516;
            v524 = HIDWORD(*v516);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v171, HIDWORD(*v516));
            v525 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v652, v524);
            if (v520 == v525)
            {
              v526 = v162[11];
            }

            else
            {
              v526 = (v162[10] + 2 * (v525 - v162[7]));
            }

            v527 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v622, v524);
            if (v522 == v527)
            {
              v528 = v163[11];
            }

            else
            {
              v528 = v163[10] + 24 * ((v527 - v163[7]) >> 3);
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v523, v526, v528);
          }
        }
      }

      v516 += 8;
    }
  }

  if (v626 == v612)
  {
    v529 = *(v615 + 56);
    v530 = *(v615 + 64);
    while (v529 != v530)
    {
      v531 = *(v529 + 4);
      if (*(v642 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v171, v531))
      {
        v532 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v652, v531);
        v533 = v162[8];
        if (v533 != v532)
        {
          v534 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v622, v531);
          v535 = v163[8];
          if (v535 != v534 && v632[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v632 + 4, v531))
          {
            v536 = *v529;
            v537 = HIDWORD(*v529);
            geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v171, HIDWORD(*v529));
            v538 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v652, v537);
            if (v533 == v538)
            {
              v539 = v162[11];
            }

            else
            {
              v539 = (v162[10] + 2 * (v538 - v162[7]));
            }

            v540 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v622, v537);
            if (v535 == v540)
            {
              v541 = v163[11];
            }

            else
            {
              v541 = v163[10] + 24 * ((v540 - v163[7]) >> 3);
            }

            md::ARMeshRenderLayer::processMeshesForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshComponent const&,arComponents::Boundary const&)#1}::operator()(v658, v536, v539, v541);
          }
        }
      }

      v529 += 8;
    }
  }

  v191 = v658[55];
  v653 = gdc::Registry::storage<arComponents::WorldTransform>(v191);
  v192 = gdc::Registry::storage<arComponents::MeshDataComponent>(v191);
  v193 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(v191);
  v194 = gdc::Registry::storage<arComponents::ShadowPipeline>(v191);
  v195.i64[0] = v653;
  v195.i64[1] = v192;
  v196.i64[0] = v193;
  v196.i64[1] = v194;
  v197 = vdupq_n_s64(0x20uLL);
  v670 = vaddq_s64(v195, v197);
  v671 = vaddq_s64(v196, v197);
  v198 = v670.i64[0];
  v199 = 1;
  v200 = &v670;
  do
  {
    if (*(v670.i64[v199] + 32) - *(v670.i64[v199] + 24) < *(v198 + 32) - *(v198 + 24))
    {
      v198 = v670.i64[v199];
      v200 = (&v670 + v199 * 8);
    }

    ++v199;
  }

  while (v199 != 4);
  v201 = v200->i64[0];
  v202 = (v653 + 32);
  if (v653 + 32 == v200->i64[0])
  {
    v542 = *(v653 + 56);
    v543 = *(v653 + 64);
    while (v542 != v543)
    {
      v544 = *(v542 + 4);
      v545 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v192 + 4, v544);
      v546 = v192[8];
      if (v546 != v545 && v193[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v193 + 4, v544) && v194[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v194 + 4, v544))
      {
        v547 = *v542;
        v548 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v192 + 4, HIDWORD(*v542));
        if (v546 == v548)
        {
          v549 = v192[11];
        }

        else
        {
          v549 = (v192[10] + v548 - v192[7]);
        }

        md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v547, *v549);
      }

      v542 += 8;
    }
  }

  v633 = v201;
  v643 = v192 + 4;
  if (v192 + 4 == v201)
  {
    v203 = v192[7];
    v204 = v192[8];
    if (v203 != v204)
    {
      v205 = v192[10];
      do
      {
        v206 = *(v203 + 4);
        if (*(v653 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v202, v206) && v193[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v193 + 4, v206) && v194[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v194 + 4, v206))
        {
          v207 = *v203;
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v202, HIDWORD(*v203));
          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v207, *v205);
        }

        ++v205;
        v203 += 8;
      }

      while (v203 != v204);
    }
  }

  if (v193 + 4 == v633)
  {
    v551 = v193[7];
    v550 = v193[8];
    while (v551 != v550)
    {
      v552 = *(v551 + 4);
      if (*(v653 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v202, v552))
      {
        v553 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v643, v552);
        v554 = v192[8];
        if (v554 != v553 && v194[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v194 + 4, v552))
        {
          v555 = *v551;
          v556 = HIDWORD(*v551);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v202, HIDWORD(*v551));
          v557 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v643, v556);
          if (v554 == v557)
          {
            v558 = v192[11];
          }

          else
          {
            v558 = (v192[10] + v557 - v192[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v555, *v558);
        }
      }

      v551 += 8;
    }
  }

  if (v194 + 4 == v633)
  {
    v559 = v194[7];
    v560 = v194[8];
    while (v559 != v560)
    {
      v561 = *(v559 + 4);
      if (*(v653 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v202, v561))
      {
        v562 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v643, v561);
        v563 = v192[8];
        if (v563 != v562 && v193[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v193 + 4, v561))
        {
          v564 = *v559;
          v565 = HIDWORD(*v559);
          geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v202, HIDWORD(*v559));
          v566 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v643, v565);
          if (v563 == v566)
          {
            v567 = v192[11];
          }

          else
          {
            v567 = (v192[10] + v566 - v192[7]);
          }

          md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(v658, v564, *v567);
        }
      }

      v559 += 8;
    }
  }

  v208 = gdc::Registry::storage<arComponents::PipelineIdentifier>(v658[55]);
  v209 = v208[7];
  v210 = v208[8];
  v211 = v658;
  if (v209 != v210)
  {
    v212 = v208[10];
    do
    {
      v670.i64[0] = *v209;
      v213 = v211[45];
      if (v213)
      {
        v214 = *v212;
        v215 = vcnt_s8(v213);
        v215.i16[0] = vaddlv_u8(v215);
        if (v215.u32[0] > 1uLL)
        {
          v216 = *v212;
          v217 = v658;
          if (v214 >= *&v213)
          {
            v216 = v214 % *&v213;
          }
        }

        else
        {
          v216 = (*&v213 - 1) & v214;
          v217 = v658;
        }

        v218 = v217[44];
        v219 = *(v218 + v216);
        if (v219)
        {
          v220 = *v219;
          if (*v219)
          {
            v221 = *&v213 - 1;
            do
            {
              v222 = v220[1];
              if (v222 == v214)
              {
                if (v220[2] == v214)
                {
                  if (v215.u32[0] > 1uLL)
                  {
                    v223 = *v212;
                    if (v214 >= *&v213)
                    {
                      v223 = v214 % *&v213;
                    }
                  }

                  else
                  {
                    v223 = v221 & v214;
                  }

                  v224 = *(v218 + v223);
                  if (!v224 || (v225 = *v224) == 0)
                  {
LABEL_233:
                    operator new();
                  }

                  while (1)
                  {
                    v226 = v225[1];
                    if (v226 == v214)
                    {
                      if (v225[2] == v214)
                      {
                        (**v225[5])(v225[5], v658[55], &v670);
                        goto LABEL_234;
                      }
                    }

                    else
                    {
                      if (v215.u32[0] > 1uLL)
                      {
                        if (v226 >= *&v213)
                        {
                          v226 %= *&v213;
                        }
                      }

                      else
                      {
                        v226 &= v221;
                      }

                      if (v226 != v223)
                      {
                        goto LABEL_233;
                      }
                    }

                    v225 = *v225;
                    if (!v225)
                    {
                      goto LABEL_233;
                    }
                  }
                }
              }

              else
              {
                if (v215.u32[0] > 1uLL)
                {
                  if (v222 >= *&v213)
                  {
                    v222 %= *&v213;
                  }
                }

                else
                {
                  v222 &= v221;
                }

                if (v222 != v216)
                {
                  break;
                }
              }

              v220 = *v220;
            }

            while (v220);
          }
        }
      }

LABEL_234:
      v212 += 3;
      ++v209;
      v211 = v658;
    }

    while (v209 != v210);
  }

  v227 = v211[55];
  v228 = gdc::Registry::storage<arComponents::ContextEntity>(v227);
  v229 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(v227);
  v230 = gdc::Registry::storage<md::pipelineECS::HasUVMapping>(v227);
  v231.i64[0] = v228;
  v231.i64[1] = v229;
  v232 = v230 + 4;
  v670 = vaddq_s64(v231, vdupq_n_s64(0x20uLL));
  v671.i64[0] = (v230 + 4);
  v233 = v670.i64[0];
  v234 = 1;
  v235 = &v670;
  while (1)
  {
    if (*(v670.i64[v234] + 32) - *(v670.i64[v234] + 24) < *(v233 + 32) - *(v233 + 24))
    {
      v233 = v670.i64[v234];
      v235 = (&v670 + v234 * 8);
    }

    if (++v234 == 3)
    {
      v654 = v228;
      v236 = (v228 + 32);
      v644 = v235->i64[0];
      if (v228 + 32 == v235->i64[0])
      {
        v568 = *(v228 + 56);
        v569 = *(v228 + 64);
        while (v568 != v569)
        {
          v570 = *(v568 + 4);
          v571 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v229 + 4, v570);
          v572 = v229[8];
          if (v572 != v571)
          {
            v573 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v232, v570);
            v574 = v230[8];
            if (v574 != v573)
            {
              v575 = *(v568 + 4);
              v576 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v229 + 4, v575);
              if (v572 == v576)
              {
                v577 = v229[11];
              }

              else
              {
                v577 = v229[10] + v576 - v229[7];
              }

              v578 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v232, v575);
              if (v574 == v578)
              {
                v579 = v230[11];
              }

              else
              {
                v579 = (v230[10] + v578 - v230[7]);
              }

              (*(**v579 + 8))(*v579, v577);
            }
          }

          v568 += 8;
        }
      }

      v634 = v229 + 4;
      if (v229 + 4 == v644)
      {
        v238 = v229[7];
        v237 = v229[8];
        if (v238 != v237)
        {
          v239 = v229[10];
          do
          {
            v240 = *(v238 + 4);
            if (*(v654 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v236, v240))
            {
              v241 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v232, v240);
              v242 = v230[8];
              if (v242 != v241)
              {
                v243 = *(v238 + 4);
                geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v236, v243);
                v244 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v232, v243);
                if (v242 == v244)
                {
                  v245 = v230[11];
                }

                else
                {
                  v245 = (v230[10] + v244 - v230[7]);
                }

                (*(**v245 + 8))(*v245, v239);
              }
            }

            v239 += 8;
            v238 += 8;
          }

          while (v238 != v237);
        }
      }

      if (v232 == v644)
      {
        v246 = v230[7];
        v247 = v230[8];
        if (v246 != v247)
        {
          v248 = v230[10];
          do
          {
            v249 = *(v246 + 4);
            if (*(v654 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v236, v249))
            {
              v250 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v634, v249);
              v251 = v229[8];
              if (v251 != v250)
              {
                v252 = *(v246 + 4);
                geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v236, v252);
                v253 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v634, v252);
                if (v251 == v253)
                {
                  v254 = v229[11];
                }

                else
                {
                  v254 = v229[10] + v253 - v229[7];
                }

                (*(**v248 + 8))(*v248, v254);
              }
            }

            ++v248;
            v246 += 8;
          }

          while (v246 != v247);
        }
      }

      v255 = v658[55];
      v256 = gdc::Registry::storage<arComponents::ContextEntity>(v255);
      v257 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(v255);
      v258 = gdc::Registry::storage<md::pipelineECS::HasUVScale>(v255);
      v259.i64[0] = v256;
      v259.i64[1] = v257;
      v260 = v258 + 4;
      v670 = vaddq_s64(v259, vdupq_n_s64(0x20uLL));
      v671.i64[0] = (v258 + 4);
      v261 = v670.i64[0];
      v262 = 1;
      v263 = &v670;
      while (1)
      {
        if (*(v670.i64[v262] + 32) - *(v670.i64[v262] + 24) < *(v261 + 32) - *(v261 + 24))
        {
          v261 = v670.i64[v262];
          v263 = (&v670 + v262 * 8);
        }

        if (++v262 == 3)
        {
          v655 = v256;
          v264 = (v256 + 32);
          v645 = v263->i64[0];
          if (v256 + 32 == v263->i64[0])
          {
            v580 = *(v256 + 56);
            v581 = *(v256 + 64);
            while (v580 != v581)
            {
              v582 = *(v580 + 4);
              v583 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v257 + 4, v582);
              v584 = v257[8];
              if (v584 != v583)
              {
                v585 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v260, v582);
                v586 = v258[8];
                if (v586 != v585)
                {
                  v587 = *(v580 + 4);
                  v588 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v257 + 4, v587);
                  if (v584 == v588)
                  {
                    v589 = v257[11];
                  }

                  else
                  {
                    v589 = v257[10] + v588 - v257[7];
                  }

                  v590 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v260, v587);
                  if (v586 == v590)
                  {
                    v591 = v258[11];
                  }

                  else
                  {
                    v591 = (v258[10] + v590 - v258[7]);
                  }

                  (*(**v591 + 8))(*v591, v589);
                }
              }

              v580 += 8;
            }
          }

          v635 = v257 + 4;
          if (v257 + 4 == v645)
          {
            v266 = v257[7];
            v265 = v257[8];
            if (v266 != v265)
            {
              v267 = v257[10];
              do
              {
                v268 = *(v266 + 4);
                if (*(v655 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v264, v268))
                {
                  v269 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v260, v268);
                  v270 = v258[8];
                  if (v270 != v269)
                  {
                    v271 = *(v266 + 4);
                    geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v264, v271);
                    v272 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v260, v271);
                    if (v270 == v272)
                    {
                      v273 = v258[11];
                    }

                    else
                    {
                      v273 = (v258[10] + v272 - v258[7]);
                    }

                    (*(**v273 + 8))(*v273, v267);
                  }
                }

                v267 += 8;
                v266 += 8;
              }

              while (v266 != v265);
            }
          }

          if (v260 == v645)
          {
            v274 = v258[7];
            v275 = v258[8];
            if (v274 != v275)
            {
              v276 = v258[10];
              do
              {
                v277 = *(v274 + 4);
                if (*(v655 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v264, v277))
                {
                  v278 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v635, v277);
                  v279 = v257[8];
                  if (v279 != v278)
                  {
                    v280 = *(v274 + 4);
                    geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v264, v280);
                    v281 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v635, v280);
                    if (v279 == v281)
                    {
                      v282 = v257[11];
                    }

                    else
                    {
                      v282 = v257[10] + v281 - v257[7];
                    }

                    (*(**v276 + 8))(*v276, v282);
                  }
                }

                ++v276;
                v274 += 8;
              }

              while (v274 != v275);
            }
          }

          v283 = v658[55];
          v656 = gdc::Registry::storage<arComponents::ContextEntity>(v283);
          v284 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(v283);
          HasARLighting = gdc::Registry::storage<md::pipelineECS::HasARLightingSetup>(v283);
          v286.i64[0] = v656;
          v286.i64[1] = v284;
          v287 = HasARLighting + 4;
          v670 = vaddq_s64(v286, vdupq_n_s64(0x20uLL));
          v671.i64[0] = (HasARLighting + 4);
          v288 = v670.i64[0];
          v289 = 1;
          v290 = &v670;
          while (1)
          {
            if (*(v670.i64[v289] + 32) - *(v670.i64[v289] + 24) < *(v288 + 32) - *(v288 + 24))
            {
              v288 = v670.i64[v289];
              v290 = (&v670 + v289 * 8);
            }

            if (++v289 == 3)
            {
              v291 = (v656 + 32);
              v636 = v290->i64[0];
              if (v656 + 32 == v290->i64[0])
              {
                v592 = *(v656 + 56);
                v593 = *(v656 + 64);
                while (v592 != v593)
                {
                  v594 = *(v592 + 4);
                  v595 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v284 + 4, v594);
                  v596 = v284[8];
                  if (v596 != v595)
                  {
                    v597 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v287, v594);
                    v598 = HasARLighting[8];
                    if (v598 != v597)
                    {
                      v599 = *(v592 + 4);
                      v600 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v284 + 4, v599);
                      if (v596 == v600)
                      {
                        v601 = v284[11];
                      }

                      else
                      {
                        v601 = v284[10] + v600 - v284[7];
                      }

                      v602 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v287, v599);
                      if (v598 == v602)
                      {
                        v603 = HasARLighting[11];
                      }

                      else
                      {
                        v603 = (HasARLighting[10] + v602 - HasARLighting[7]);
                      }

                      v604 = +[VKDebugSettings sharedSettings];
                      v605 = *v603;
                      [v604 arDebugStylingPOIEnvMapIntensity];
                      v607 = v606;
                      [v604 arDebugStylingPOILightIntensity];
                      (*(*v605 + 8))(v605, v601, v607, v608);
                    }
                  }

                  v592 += 8;
                }
              }

              v646 = v284 + 4;
              if (v284 + 4 == v636)
              {
                v293 = v284[7];
                v292 = v284[8];
                if (v293 != v292)
                {
                  v294 = v284[10];
                  do
                  {
                    v295 = *(v293 + 4);
                    if (*(v656 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v291, v295))
                    {
                      v296 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v287, v295);
                      v297 = HasARLighting[8];
                      if (v297 != v296)
                      {
                        v298 = *(v293 + 4);
                        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v291, v298);
                        v299 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v287, v298);
                        if (v297 == v299)
                        {
                          v300 = HasARLighting[11];
                        }

                        else
                        {
                          v300 = (HasARLighting[10] + v299 - HasARLighting[7]);
                        }

                        v301 = +[VKDebugSettings sharedSettings];
                        v302 = *v300;
                        [v301 arDebugStylingPOIEnvMapIntensity];
                        v304 = v303;
                        [v301 arDebugStylingPOILightIntensity];
                        (*(*v302 + 8))(v302, v294, v304, v305);
                      }
                    }

                    v294 += 8;
                    v293 += 8;
                  }

                  while (v293 != v292);
                }
              }

              if (v287 == v636)
              {
                v306 = HasARLighting[7];
                v307 = HasARLighting[8];
                if (v306 != v307)
                {
                  v308 = HasARLighting[10];
                  do
                  {
                    v309 = *(v306 + 4);
                    if (*(v656 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v291, v309))
                    {
                      v310 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v646, v309);
                      v311 = v284[8];
                      if (v311 != v310)
                      {
                        v312 = *(v306 + 4);
                        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v291, v312);
                        v313 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v646, v312);
                        if (v311 == v313)
                        {
                          v314 = v284[11];
                        }

                        else
                        {
                          v314 = v284[10] + v313 - v284[7];
                        }

                        v315 = +[VKDebugSettings sharedSettings];
                        v316 = *v308;
                        [v315 arDebugStylingPOIEnvMapIntensity];
                        v318 = v317;
                        [v315 arDebugStylingPOILightIntensity];
                        (*(*v316 + 8))(v316, v314, v318, v319);
                      }
                    }

                    ++v308;
                    v306 += 8;
                  }

                  while (v306 != v307);
                }
              }

              v320 = v658[55];
              v321 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
              v322 = *(v321 + 888);
              v664[4] = *(v321 + 872);
              v664[5] = v322;
              v323 = *(v321 + 920);
              v664[6] = *(v321 + 904);
              v664[7] = v323;
              v324 = *(v321 + 824);
              v664[0] = *(v321 + 808);
              v664[1] = v324;
              v325 = *(v321 + 856);
              v664[2] = *(v321 + 840);
              v664[3] = v325;
              v326 = gdc::Registry::storage<arComponents::WorldTransform>(v320);
              v327 = gdc::Registry::storage<arComponents::ViewConstantDataComponent>(v320);
              v328 = v326 + 4;
              v329 = v327 + 4;
              v331 = v327[7];
              v330 = v327[8];
              v616 = v326;
              v623 = v327;
              v332 = v326[8];
              v637 = v326[7];
              if (v330 - v331 >= (v332 - v637))
              {
                v333 = v326 + 4;
              }

              else
              {
                v333 = v327 + 4;
              }

              v627 = v333;
              if (v328 == v333 && v637 != v332)
              {
                v334 = v326[10];
                v335 = v326[7];
                v657 = v327[10];
                v647 = v327[11];
                do
                {
                  if (v330 != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v329, *(v335 + 4)))
                  {
                    v336 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v329, *(v335 + 4));
                    if (v330 == v336)
                    {
                      v337 = v647;
                    }

                    else
                    {
                      v337 = (v657 + 8 * (v336 - v331));
                    }

                    geo::Transform<double>::toMatrix(v665, v334);
                    v338 = 0;
                    v339 = v664;
                    do
                    {
                      v340 = 0;
                      v341 = v665;
                      do
                      {
                        v342 = 0;
                        v343 = 0.0;
                        v344 = v339;
                        do
                        {
                          v345 = *v344;
                          v344 += 4;
                          v343 = v343 + *&v341[v342++] * v345;
                        }

                        while (v342 != 4);
                        *&v670.i64[4 * v340++ + v338] = v343;
                        v341 += 4;
                      }

                      while (v340 != 4);
                      ++v338;
                      v339 = (v339 + 8);
                    }

                    while (v338 != 4);
                    v346 = 0;
                    v347 = &v670;
                    do
                    {
                      v349 = *v347;
                      v348 = v347[1];
                      v347 += 2;
                      *(&v666 + v346) = vcvt_hight_f32_f64(vcvt_f32_f64(v349), v348);
                      v346 += 16;
                    }

                    while (v346 != 64);
                    v350 = v667;
                    *v337 = v666;
                    v337[1] = v350;
                    v351 = v669;
                    v337[2] = v668;
                    v337[3] = v351;
                  }

                  v334 += 10;
                  v335 += 8;
                }

                while (v335 != v332);
              }

              if (v329 == v627)
              {
                v352 = v623[7];
                v353 = v623[8];
                if (v352 != v353)
                {
                  v354 = v623[10];
                  v355 = v326[10];
                  v356 = v616[11];
                  do
                  {
                    if (v332 != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v328, *(v352 + 4)))
                    {
                      v357 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v328, *(v352 + 4));
                      if (v332 == v357)
                      {
                        v358 = v356;
                      }

                      else
                      {
                        v358 = (v355 + 80 * ((v357 - v637) >> 3));
                      }

                      geo::Transform<double>::toMatrix(v665, v358);
                      v359 = 0;
                      v360 = v664;
                      do
                      {
                        v361 = 0;
                        v362 = v665;
                        do
                        {
                          v363 = 0;
                          v364 = 0.0;
                          v365 = v360;
                          do
                          {
                            v366 = *v365;
                            v365 += 4;
                            v364 = v364 + *&v362[v363++] * v366;
                          }

                          while (v363 != 4);
                          *&v670.i64[4 * v361++ + v359] = v364;
                          v362 += 4;
                        }

                        while (v361 != 4);
                        ++v359;
                        v360 = (v360 + 8);
                      }

                      while (v359 != 4);
                      v367 = 0;
                      v368 = &v670;
                      do
                      {
                        v370 = *v368;
                        v369 = v368[1];
                        v368 += 2;
                        *(&v666 + v367) = vcvt_hight_f32_f64(vcvt_f32_f64(v370), v369);
                        v367 += 16;
                      }

                      while (v367 != 64);
                      v371 = v667;
                      *v354 = v666;
                      v354[1] = v371;
                      v372 = v669;
                      v354[2] = v668;
                      v354[3] = v372;
                    }

                    v354 += 4;
                    v352 += 8;
                  }

                  while (v352 != v353);
                }
              }

              md::GeometryLogic::createUnitTransformConstantData(&v670);
            }
          }
        }
      }
    }
  }
}

void sub_1B2CB15C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27)
{
  operator delete(v27);
  if (a25 != a27)
  {
    free(a25);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::storage<arComponents::QueuedForDeletionAfterLayout>(uint64_t a1)
{
  v3 = 0x191A1E6102D25134;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x191A1E6102D25134uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

ggl::zone_mallocator *md::ARMeshRenderLayer::layoutRenderables(md::LayoutContext const&,ggl::CommandBuffer *,md::PassList &)::$_0::operator()(uint64_t **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v8 = HIDWORD(a2);
  v10 = a1[1];
  v11 = **a1;
  v12 = gdc::Registry::storage<arComponents::CommandBufferLocation>(v10[55]);
  v13 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v12 + 4, v8);
  if (v12[8] != v13)
  {
    v14 = v12[10];
    v15 = v12[11];
    v16 = (v14 + ((v13 - v12[7]) >> 2));
    if (v16 != v15 && v14 != 0)
    {
      v18 = md::FrameGraph::renderQueueForPass(a1[2][1], *v16);
      if (!v18 || (v11 = *(*(v18 + 16) + 8 * v16[1])) == 0)
      {
        v11 = **a1;
      }
    }
  }

  v19 = (*(*(**(a3 + 208) + 96) + 48) - *(*(**(a3 + 208) + 96) + 40)) >> 1;
  v20 = ggl::FragmentedPool<ggl::RenderItem>::pop(v10[54]);
  v20[6] = *a4;
  v21 = *a5;
  v22 = **(a3 + 208);
  v20[3] = v10 + 17;
  v20[4] = v21;
  v23 = *(*(a3 + 32) + 16);
  v20[8] = v22;
  v20[9] = 0;
  v20[10] = v19;
  v20[11] = 0;
  v20[12] = 1;
  v20[13] = v23;
  v25 = v20;
  return std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v11 + 72), &v25);
}

uint64_t gdc::Registry::storage<arComponents::CommandBufferLocation>(uint64_t a1)
{
  v3 = 0x4F42F084E69A322;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x4F42F084E69A322uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::CommandBufferLocation>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 2;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *(a1[11] - 2);
    a1[11] -= 2;
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

void gdc::ComponentStorageWrapper<arComponents::CommandBufferLocation>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CommandBufferLocation>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::MeshRenderableComponent>(uint64_t a1)
{
  v3 = 0x675E87F739E21A6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x675E87F739E21A6uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::RenderOrder>(uint64_t a1)
{
  v3 = 0x72E34259225F8C3ELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x72E34259225F8C3EuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::RenderOrder>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    *v6 = *(v7 - 8);
    a1[11] = v7 - 8;
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

void gdc::ComponentStorageWrapper<arComponents::RenderOrder>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::RenderOrder>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 216 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    md::MeshRenderable::operator=(v6, a1[11] - 216);
    md::MeshRenderable::~MeshRenderable((a1[11] - 216));
    a1[11] = v7;
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

uint64_t md::MeshRenderable::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 40);
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 48) = v8;
  for (i = 76; i != 88; i += 4)
  {
    *(a1 + i) = *(a2 + i);
  }

  do
  {
    *(a1 + i) = *(a2 + i);
    i += 4;
  }

  while (i != 100);
  v10 = (a1 + 100);
  v11 = (a2 + 100);
  v12 = *(a1 + 124);
  if (v12 == *(a2 + 124))
  {
    if (*(a1 + 124))
    {
      for (j = 0; j != 12; j += 4)
      {
        *(v10 + j) = *(v11 + j);
      }

      for (k = 0; k != 12; k += 4)
      {
        *(a1 + 112 + k) = *(a2 + 112 + k);
      }
    }
  }

  else
  {
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v16 = *v11;
      *(a1 + 116) = *(a2 + 116);
      *v10 = v16;
      v15 = 1;
    }

    *(a1 + 124) = v15;
  }

  v17 = (a1 + 128);
  v18 = (a2 + 128);
  v19 = *(a1 + 140);
  if (v19 == *(a2 + 140))
  {
    if (*(a1 + 140))
    {
      for (m = 0; m != 12; m += 4)
      {
        *(v17 + m) = *(v18 + m);
      }
    }
  }

  else
  {
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v22 = *v18;
      *(a1 + 136) = *(a2 + 136);
      *v17 = v22;
      v21 = 1;
    }

    *(a1 + 140) = v21;
  }

  v23 = *(a2 + 144);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 144) = v23;
  if (*(a1 + 176) == *(a2 + 176))
  {
    if (*(a1 + 176))
    {
      v25 = *(a2 + 152);
      v24 = *(a2 + 160);
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v26 = *(a1 + 160);
      *(a1 + 152) = v25;
      *(a1 + 160) = v24;
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v26);
      }

      *(a1 + 168) = *(a2 + 168);
    }
  }

  else if (*(a1 + 176))
  {
    v27 = *(a1 + 160);
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }

    *(a1 + 176) = 0;
  }

  else
  {
    v28 = *(a2 + 160);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = 1;
  }

  v29 = *(a2 + 184);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 184) = v29;
  if (*(a1 + 193) == *(a2 + 193))
  {
    if (*(a1 + 193))
    {
      *(a1 + 192) = *(a2 + 192);
    }
  }

  else if (*(a1 + 193))
  {
    *(a1 + 193) = 0;
  }

  else
  {
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 193) = 1;
  }

  v30 = *(a2 + 196);
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 196) = v30;
  return a1;
}

void gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<arComponents::MeshRenderableComponent>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<arComponents::MeshRenderableComponent>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        md::MeshRenderable::~MeshRenderable((v4 - 216));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<arComponents::MeshRenderableComponent>::__destroy_vector::operator()[abi:nn200100](&v4);
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

uint64_t gdc::Registry::storage<md::pipelineECS::HasUVScale>(uint64_t a1)
{
  v3 = 0xB41DC12BDB54AE20;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xB41DC12BDB54AE20);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::AlbedoTextureUVScale>(uint64_t a1)
{
  v3 = 0xC0EA819B6DB55095;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xC0EA819B6DB55095);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVScale>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 8);
    v7 -= 8;
    *v6 = v8;
    v6[1] = *(v7 + 4);
    a1[11] = v7;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVScale>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVScale>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasUVScale>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::pipelineECS::HasUVScale>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasUVScale>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<md::pipelineECS::HasUVMapping>(uint64_t a1)
{
  v3 = 0x643B34C49CDDA18CLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x643B34C49CDDA18CuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::AlbedoTextureUVMapping>(uint64_t a1)
{
  v3 = 0xDC92CCE45D2E7F01;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xDC92CCE45D2E7F01);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVMapping>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 4);
    v7 -= 4;
    *v6 = v8;
    v6[1] = v7[1];
    v6[2] = v7[2];
    v6[3] = v7[3];
    a1[11] = v7;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVMapping>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::AlbedoTextureUVMapping>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasUVMapping>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::pipelineECS::HasUVMapping>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasUVMapping>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<md::pipelineECS::HasAlbedo>(uint64_t a1)
{
  v3 = 0xC7C4F4CB9AB24850;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xC7C4F4CB9AB24850);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::AlbedoTextureComponent>(uint64_t a1)
{
  v3 = 0x6CFD195DCBD616C9;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6CFD195DCBD616C9uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::AlbedoTextureComponent>::remove(void *a1, uint64_t a2)
{
  v15 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 48 * ((v3 - a1[7]) >> 3));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 40);
    *v6 = *(v7 - 48);
    v9 = *(v7 - 32);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[2];
    v6[1] = v8;
    v6[2] = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=((v6 + 3), *(v7 - 16));
    v11 = a1[11] - 48;
    std::__destroy_at[abi:nn200100]<arComponents::AlbedoTextureComponent,0>(v11);
    a1[11] = v11;
    v12 = a1[28];
    if (v12)
    {
      v13 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v12[6], v13, &v15, 1);
        v12 = *v12;
      }

      while (v12);
    }
  }

  return v5 != v4;
}

void std::__destroy_at[abi:nn200100]<arComponents::AlbedoTextureComponent,0>(uint64_t a1)
{
  *(a1 + 24) = &unk_1F2A43EB8;

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A43EB8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKImage * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A43EB8;

  return a1;
}

void gdc::ComponentStorageWrapper<arComponents::AlbedoTextureComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<arComponents::AlbedoTextureComponent>::__destroy_vector::operator()[abi:nn200100](&v3);
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

void std::vector<arComponents::AlbedoTextureComponent>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:nn200100]<arComponents::AlbedoTextureComponent,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<arComponents::AlbedoTextureComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<arComponents::AlbedoTextureComponent>::__destroy_vector::operator()[abi:nn200100](&v4);
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

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasAlbedo>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::pipelineECS::HasAlbedo>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasAlbedo>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::ARMesh::CameraView>>>(uint64_t a1)
{
  v3 = 0xDAF4167A62E7598BLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xDAF4167A62E7598BLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void applyCameraViewConstant(gdc::Registry *,md::LayoutContext const&)::$_0::operator()(gdc::CameraView **a1, void *a2, uint64_t a3)
{
  geo::Transform<double>::toMatrix(v23, a2);
  gm::Matrix<double,4,4>::inverted<int,void>(v22, v23);
  v5 = gdc::CameraView::position(*a1);
  v6 = *(v5 + 16);
  v16 = *v5;
  v17 = v6;
  v18 = 0x3FF0000000000000;
  v7 = gm::operator*<double,4,4,1>(v22, &v16);
  v8 = 0;
  *v19 = v7;
  v19[1] = v9;
  v19[2] = v10;
  v19[3] = v11;
  do
  {
    v12 = *&v19[v8];
    *(&v20 + v8++) = v12;
  }

  while (v8 != 3);
  ggl::BufferMemory::BufferMemory(v14);
  ggl::ResourceAccessor::accessConstantData(v24, 0, a3, 1);
  ggl::BufferMemory::operator=(v14, v24);
  ggl::BufferMemory::~BufferMemory(v24);
  v13 = v15;
  *v15 = v20;
  *(v13 + 2) = v21;
  ggl::BufferMemory::~BufferMemory(v14);
}

BOOL gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::ARMesh::CameraView>>>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::ARMesh::CameraView>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::ARMesh::CameraView>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<md::pipelineECS::HasTransformConstantData>(uint64_t a1)
{
  v3 = 0xCEC9FB27CDC26A5FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xCEC9FB27CDC26A5FLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::TransformConstantDataComponent>(uint64_t a1)
{
  v3 = 0x763E4B3D3FAB91E9;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x763E4B3D3FAB91E9uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 16;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
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

uint64_t gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
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

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformConstantData>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformConstantData>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformConstantData>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<md::pipelineECS::HasTransformInstanceDeviceDataFeature>(uint64_t a1)
{
  v3 = 0xA87D3DFF83E23FACLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xA87D3DFF83E23FACLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformInstanceDeviceDataFeature>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformInstanceDeviceDataFeature>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasTransformInstanceDeviceDataFeature>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>(uint64_t a1)
{
  v3 = 0x8619CDD24E91309ELL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x8619CDD24E91309ELL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::ViewConstantDataComponent>(uint64_t a1)
{
  v3 = 0xCB308D90549F69A2;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xCB308D90549F69A2);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 8 * (v3 - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11] - 64;
    do
    {
      *(v6 + v7) = *(v8 + v7);
      v7 += 4;
    }

    while (v7 != 64);
    a1[11] = v8;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(uint64_t a1)
{
  v3 = 0x88C1B8F0562DF3D9;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x88C1B8F0562DF3D9);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::StyleColor>(uint64_t a1)
{
  v3 = 0x4213A85274C86D76;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x4213A85274C86D76uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<arComponents::VisibilityAlpha>(uint64_t a1)
{
  v3 = 0xBD9C607E106B8732;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBD9C607E106B8732);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::VisibilityAlpha>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 1;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 4);
    a1[11] = v8 - 4;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::VisibilityAlpha>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::VisibilityAlpha>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::StyleColor>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 2 * (v3 - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11] - 16;
    do
    {
      *(v6 + v7) = *(v8 + v7);
      v7 += 4;
    }

    while (v7 != 16);
    a1[11] = v8;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::StyleColor>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::StyleColor>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::NeedsTransformConstantDataUpdate>(uint64_t a1)
{
  v3 = 0xCA5457B5B9B18C94;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xCA5457B5B9B18C94);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::NeedsTransformConstantDataUpdate>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::NeedsTransformConstantDataUpdate>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::NeedsTransformConstantDataUpdate>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<md::pipelineECS::HasARLightingSetup>(uint64_t a1)
{
  v3 = 0x27BFFACF4E4CE977;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x27BFFACF4E4CE977uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::pipelineECS::HasARLightingSetup>::remove(void *a1, uint64_t a2)
{
  v10 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (v3 + a1[10] - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *v6 = *(a1[11] - 8);
    a1[11] -= 8;
    v7 = a1[28];
    if (v7)
    {
      v8 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v7[6], v8, &v10, 1);
        v7 = *v7;
      }

      while (v7);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::pipelineECS::HasARLightingSetup>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<md::pipelineECS::HasARLightingSetup>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::PipelineIdentifier>(uint64_t a1)
{
  v3 = 0x10DAC80543D1165FLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x10DAC80543D1165FuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 8);
    *v6 = *(v7 - 24);
    *(v6 + 16) = v8;
    a1[11] -= 24;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::~ComponentStorageWrapper(uint64_t a1)
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

void md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::ShadowPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  md::MeshRenderable::MeshRenderable(v20, 0, a3, (a1 + 48));
  v5 = *(a1 + 440);
  arComponents::MeshRenderableComponent::MeshRenderableComponent(v19, v20);
  *&v17 = 0xA3C8162527B8C964;
  *(&v17 + 1) = "arComponents::ShadowPipeline]";
  v18 = 28;
  v15 = a2;
  v16 = 10;
  v6 = gdc::Registry::storage<arComponents::PendingCommonComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v6, a2);
  v7 = gdc::Registry::storage<arComponents::MeshRenderableComponent>(v5);
  gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::emplace(v7, a2, v19);
  v8 = gdc::Registry::storage<arComponents::PipelineIdentifier>(v5);
  gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::emplace(v8, a2, &v17);
  v9 = gdc::Registry::storage<arComponents::RenderOrder>(v5);
  gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(v9, a2, &v16);
  v10 = gdc::Registry::storage<arComponents::PendingPipelineSpecificComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v10, a2);
  v11 = gdc::Registry::storage<arComponents::ContextEntity>(v5);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v11, a2, &v15);
  v12 = gdc::Registry::storage<arComponents::RebuildPipelineSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v12, a2);
  v13 = gdc::Registry::storage<arComponents::ShadowPipeline>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v13, a2);
  md::MeshRenderable::~MeshRenderable(v19);
  v14 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*(a1 + 440));
  gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(v14, a2);
  md::MeshRenderable::~MeshRenderable(v20);
}

__n128 arComponents::MeshRenderableComponent::MeshRenderableComponent(arComponents::MeshRenderableComponent *this, const md::MeshRenderable *a2)
{
  *this = &unk_1F2A3CEF8;
  v2 = *(a2 + 8);
  *(this + 3) = *(a2 + 3);
  *(this + 8) = v2;
  v3 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 3);
  v5 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v5;
  *(this + 3) = v4;
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v8 = *(a2 + 8);
  *(this + 143) = *(a2 + 143);
  *(this + 7) = v7;
  *(this + 8) = v8;
  *(this + 6) = v6;
  *(this + 152) = 0;
  *(this + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v9 = *(a2 + 20);
    *(this + 19) = *(a2 + 19);
    *(this + 20) = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 168) = *(a2 + 168);
    *(this + 176) = 1;
  }

  *(this + 23) = *(a2 + 23);
  *(this + 96) = 0;
  if (*(a2 + 193) == 1)
  {
    *(this + 192) = *(a2 + 192);
    *(this + 193) = 1;
  }

  result = *(a2 + 196);
  *(this + 53) = *(a2 + 53);
  *(this + 196) = result;
  return result;
}

uint64_t gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(uint64_t a1)
{
  v3 = 0x1BF1779BE1E06867;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x1BF1779BE1E06867uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::Registry::storage<arComponents::PendingCommonComponentsSetup>(uint64_t a1)
{
  v3 = 0x58A2A58D4856FF1DLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x58A2A58D4856FF1DuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::emplace(void *a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v56);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v22 = a1[10];
      v23 = 0x84BDA12F684BDA13 * ((v7 - v22) >> 3);
      v24 = v23 + 1;
      if (v23 + 1 > 0x12F684BDA12F684)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v25 = 0x84BDA12F684BDA13 * ((v8 - v22) >> 3);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x97B425ED097B42)
      {
        v26 = 0x12F684BDA12F684;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        if (v26 <= 0x12F684BDA12F684)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v27 = 216 * v23;
      *v27 = &unk_1F2A3CEF8;
      *(v27 + 8) = *(a3 + 8);
      v28 = *(a3 + 32);
      *(v27 + 24) = *(a3 + 24);
      *(v27 + 32) = v28;
      v29 = *(a3 + 40);
      *(v27 + 40) = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      v30 = *(a3 + 128);
      *(216 * v23 + 0x70) = *(a3 + 112);
      *(216 * v23 + 0x80) = v30;
      *(216 * v23 + 0x8F) = *(a3 + 143);
      v31 = *(a3 + 64);
      *(216 * v23 + 0x30) = *(a3 + 48);
      *(216 * v23 + 0x40) = v31;
      v32 = *(a3 + 96);
      *(216 * v23 + 0x50) = *(a3 + 80);
      *(216 * v23 + 0x60) = v32;
      *(216 * v23 + 0x98) = 0;
      *(216 * v23 + 0xB0) = 0;
      if (*(a3 + 176) == 1)
      {
        v33 = *(a3 + 160);
        *(216 * v23 + 0x98) = *(a3 + 152);
        *(216 * v23 + 0xA0) = v33;
        if (v33)
        {
          atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
        }

        *(216 * v23 + 0xA8) = *(a3 + 168);
        *(216 * v23 + 0xB0) = 1;
      }

      *(216 * v23 + 0xB8) = *(a3 + 184);
      *(216 * v23 + 0xC0) = 0;
      if (*(a3 + 193) == 1)
      {
        *(216 * v23 + 0xC0) = *(a3 + 192);
        *(216 * v23 + 0xC1) = 1;
      }

      v34 = a1[10];
      v35 = a1[11];
      v36 = v27 - (v35 - v34);
      *(216 * v23 + 0xC4) = *(a3 + 196);
      *(216 * v23 + 0xD4) = *(a3 + 212);
      v18 = v27 + 216;
      v55 = (v27 + 216);
      if (v35 != v34)
      {
        v37 = 0;
        v38 = -8 * ((v35 - v34) >> 3) + 216 * v23;
        do
        {
          v39 = v38 + v37;
          *v39 = &unk_1F2A3CEF8;
          v40 = v34 + v37;
          v41 = *(v34 + v37 + 8);
          *(v39 + 24) = *(v34 + v37 + 24);
          *(v39 + 8) = v41;
          v42 = *(v34 + v37 + 40);
          *(v39 + 32) = *(v34 + v37 + 32);
          *(v39 + 40) = v42;
          if (v42)
          {
            atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
          }

          v43 = *(v40 + 3);
          v44 = *(v40 + 5);
          *(v39 + 64) = *(v40 + 4);
          *(v39 + 80) = v44;
          *(v39 + 48) = v43;
          v45 = *(v40 + 6);
          v46 = *(v40 + 7);
          v47 = *(v40 + 8);
          *(v39 + 143) = *(v40 + 143);
          *(v39 + 112) = v46;
          *(v39 + 128) = v47;
          *(v39 + 96) = v45;
          *(v39 + 152) = 0;
          *(v39 + 176) = 0;
          if (v40[176] == 1)
          {
            v48 = *(v34 + v37 + 160);
            *(v39 + 152) = *(v34 + v37 + 152);
            *(v38 + v37 + 160) = v48;
            if (v48)
            {
              atomic_fetch_add_explicit((v48 + 8), 1uLL, memory_order_relaxed);
            }

            *(v38 + v37 + 168) = *(v34 + v37 + 168);
            *(v39 + 176) = 1;
          }

          v49 = v38 + v37;
          v50 = v34 + v37;
          *(v49 + 184) = *(v34 + v37 + 184);
          *(v49 + 192) = 0;
          if (*(v34 + v37 + 193) == 1)
          {
            *(v49 + 192) = v50[192];
            *(v49 + 193) = 1;
          }

          v51 = *(v50 + 196);
          *(v49 + 212) = *(v50 + 53);
          *(v49 + 196) = v51;
          v37 += 216;
        }

        while ((v34 + v37) != v35);
        do
        {
          md::MeshRenderable::~MeshRenderable(v34);
          v34 = (v52 + 216);
        }

        while (v34 != v35);
      }

      v53 = a1[10];
      a1[10] = v36;
      *(a1 + 11) = v55;
      if (v53)
      {
        operator delete(v53);
      }
    }

    else
    {
      *v7 = &unk_1F2A3CEF8;
      v9 = *(a3 + 8);
      *(v7 + 24) = *(a3 + 24);
      *(v7 + 8) = v9;
      v10 = *(a3 + 40);
      *(v7 + 32) = *(a3 + 32);
      *(v7 + 40) = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(a3 + 48);
      v12 = *(a3 + 80);
      *(v7 + 64) = *(a3 + 64);
      *(v7 + 80) = v12;
      *(v7 + 48) = v11;
      v13 = *(a3 + 96);
      v14 = *(a3 + 112);
      v15 = *(a3 + 128);
      *(v7 + 143) = *(a3 + 143);
      *(v7 + 112) = v14;
      *(v7 + 128) = v15;
      *(v7 + 96) = v13;
      *(v7 + 152) = 0;
      *(v7 + 176) = 0;
      if (*(a3 + 176) == 1)
      {
        v16 = *(a3 + 160);
        *(v7 + 152) = *(a3 + 152);
        *(v7 + 160) = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
        }

        *(v7 + 168) = *(a3 + 168);
        *(v7 + 176) = 1;
      }

      *(v7 + 184) = *(a3 + 184);
      *(v7 + 192) = 0;
      if (*(a3 + 193) == 1)
      {
        *(v7 + 192) = *(a3 + 192);
        *(v7 + 193) = 1;
      }

      v17 = *(a3 + 196);
      *(v7 + 212) = *(a3 + 212);
      *(v7 + 196) = v17;
      v18 = v7 + 216;
    }

    a1[11] = v18;
    v20 = a1[31];
    goto LABEL_48;
  }

  v19 = md::MeshRenderable::operator=(a1[10] + 216 * ((v5 - a1[7]) >> 3), a3);
  v20 = a1[31];
  if (v19 == a1[11])
  {
LABEL_48:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v20, &v56, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v20, &v56, 1);
  }
}

void gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::emplace(void *a1, uint64_t a2, __int128 *a3)
{
  v24 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v24);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v15 = a1[10];
      v16 = v8 - v15;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v15) >> 3);
      v18 = v17 + 1;
      if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v15) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        if (v20 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = 24 * v17;
      *v21 = *a3;
      *(v21 + 16) = *(a3 + 2);
      v10 = 24 * v17 + 24;
      v22 = v21 - v16;
      memcpy((v21 - v16), v15, v16);
      a1[10] = v22;
      a1[11] = v10;
      a1[12] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      v9 = *a3;
      *(v8 + 16) = *(a3 + 2);
      *v8 = v9;
      v10 = v8 + 24;
    }

    a1[11] = v10;
    v13 = a1[31];
    goto LABEL_20;
  }

  v11 = a1[10] + 24 * ((v5 - a1[7]) >> 3);
  v12 = *a3;
  *(v11 + 16) = *(a3 + 2);
  *v11 = v12;
  v13 = a1[31];
  if (v11 == a1[11])
  {
LABEL_20:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v13, &v24, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v13, &v24, 1);
  }
}

uint64_t gdc::Registry::storage<arComponents::PendingPipelineSpecificComponentsSetup>(uint64_t a1)
{
  v3 = 0xBADB2FF16CCDF7F4;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBADB2FF16CCDF7F4);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(void *a1, uint64_t a2, uint64_t *a3)
{
  v24 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v24);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v13 = a1[10];
      v14 = v8 - v13;
      v15 = (v8 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v15;
      v20 = (8 * v15);
      v21 = *a3;
      v22 = &v20[-v19];
      *v20 = v21;
      v9 = v20 + 1;
      memcpy(v22, v13, v14);
      a1[10] = v22;
      a1[11] = v9;
      a1[12] = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 8;
    }

    a1[11] = v9;
    v11 = a1[31];
    goto LABEL_20;
  }

  v10 = (v5 + a1[10] - a1[7]);
  *v10 = *a3;
  v11 = a1[31];
  if (v10 == a1[11])
  {
LABEL_20:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v11, &v24, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v11, &v24, 1);
  }
}

uint64_t gdc::Registry::storage<arComponents::RebuildPipelineSetup>(uint64_t a1)
{
  v3 = 0xAC35728C5B9C6C04;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xAC35728C5B9C6C04);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::RebuildPipelineSetup>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::RebuildPipelineSetup>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::RebuildPipelineSetup>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::PendingPipelineSpecificComponentsSetup>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::PendingPipelineSpecificComponentsSetup>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::PendingPipelineSpecificComponentsSetup>::~ComponentStorageWrapper(uint64_t a1)
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

BOOL gdc::ComponentStorageWrapper<arComponents::PendingCommonComponentsSetup>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::PendingCommonComponentsSetup>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::PendingCommonComponentsSetup>::~ComponentStorageWrapper(uint64_t a1)
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

void sub_1B2CB81FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  md::MeshRenderable::~MeshRenderable(va);
  _Unwind_Resume(a1);
}

void gdc::ComponentStorageWrapper<arComponents::MeshComponent>::emplace(void *a1, uint64_t a2, uint64_t *a3)
{
  v32 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v32);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v16 = a1[10];
      v17 = (v7 - v16) >> 4;
      if ((v17 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v8 - v16;
      v19 = v18 >> 3;
      if (v18 >> 3 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        if (!(v20 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v21 = (16 * v17);
      arComponents::MeshComponent::MeshComponent(v21, a3);
      v9 = v21 + 2;
      v31 = (v21 + 2);
      v23 = a1[10];
      v22 = a1[11];
      v24 = (v21 + v23 - v22);
      if (v22 != v23)
      {
        v25 = a1[10];
        v26 = v24;
        do
        {
          v27 = arComponents::MeshComponent::MeshComponent(v26, v25);
          v25 += 2;
          v26 = v27 + 2;
        }

        while (v25 != v22);
        do
        {
          v28 = *(v23 + 8);
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v28);
          }

          v23 += 16;
        }

        while (v23 != v22);
      }

      v29 = a1[10];
      a1[10] = v24;
      *(a1 + 11) = v31;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      v9 = arComponents::MeshComponent::MeshComponent(v7, a3) + 2;
    }

    a1[11] = v9;
    v14 = a1[31];
LABEL_30:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v14, &v32, 1);
    }

    return;
  }

  v10 = (a1[10] + 2 * (v5 - a1[7]));
  v12 = *a3;
  v11 = a3[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v10[1];
  *v10 = v12;
  v10[1] = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = a1[31];
  if (v10 == a1[11])
  {
    goto LABEL_30;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v14, &v32, 1);
  }
}

void *arComponents::MeshComponent::MeshComponent(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[1];
    *a1 = v3;
    a1[1] = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    *a1 = v3;
    a1[1] = 0;
  }

  return a1;
}

void md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::OcclusionPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  md::MeshRenderable::MeshRenderable(v20, 0, a3, (a1 + 48));
  v5 = *(a1 + 440);
  arComponents::MeshRenderableComponent::MeshRenderableComponent(v19, v20);
  *&v17 = 0x2E1ED5CD904AAD01;
  *(&v17 + 1) = "arComponents::OcclusionPipeline]";
  v18 = 31;
  v15 = a2;
  v16 = 10;
  v6 = gdc::Registry::storage<arComponents::PendingCommonComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v6, a2);
  v7 = gdc::Registry::storage<arComponents::MeshRenderableComponent>(v5);
  gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::emplace(v7, a2, v19);
  v8 = gdc::Registry::storage<arComponents::PipelineIdentifier>(v5);
  gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::emplace(v8, a2, &v17);
  v9 = gdc::Registry::storage<arComponents::RenderOrder>(v5);
  gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(v9, a2, &v16);
  v10 = gdc::Registry::storage<arComponents::PendingPipelineSpecificComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v10, a2);
  v11 = gdc::Registry::storage<arComponents::ContextEntity>(v5);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v11, a2, &v15);
  v12 = gdc::Registry::storage<arComponents::RebuildPipelineSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v12, a2);
  v13 = gdc::Registry::storage<arComponents::OcclusionPipeline>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v13, a2);
  md::MeshRenderable::~MeshRenderable(v19);
  v14 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*(a1 + 440));
  gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(v14, a2);
  md::MeshRenderable::~MeshRenderable(v20);
}

uint64_t gdc::Registry::storage<arComponents::OcclusionPipeline>(uint64_t a1)
{
  v3 = 0x2E1ED5CD904AAD01;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x2E1ED5CD904AAD01uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<arComponents::OcclusionPipeline>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::OcclusionPipeline>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::OcclusionPipeline>::~ComponentStorageWrapper(uint64_t a1)
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

void sub_1B2CB8B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  md::MeshRenderable::~MeshRenderable(va);
  _Unwind_Resume(a1);
}

void md::ARMeshRenderLayer::processMeshDataForPipeline<arComponents::StandardPipeline>(void)::{lambda(gdc::Entity,arComponents::WorldTransform const&,arComponents::MeshDataComponent const&)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  md::MeshRenderable::MeshRenderable(v20, 0, a3, (a1 + 48));
  v5 = *(a1 + 440);
  arComponents::MeshRenderableComponent::MeshRenderableComponent(v19, v20);
  *&v17 = 0x5BD3262791F15BBDLL;
  *(&v17 + 1) = "arComponents::StandardPipeline]";
  v18 = 30;
  v15 = a2;
  v16 = 10;
  v6 = gdc::Registry::storage<arComponents::PendingCommonComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v6, a2);
  v7 = gdc::Registry::storage<arComponents::MeshRenderableComponent>(v5);
  gdc::ComponentStorageWrapper<arComponents::MeshRenderableComponent>::emplace(v7, a2, v19);
  v8 = gdc::Registry::storage<arComponents::PipelineIdentifier>(v5);
  gdc::ComponentStorageWrapper<arComponents::PipelineIdentifier>::emplace(v8, a2, &v17);
  v9 = gdc::Registry::storage<arComponents::RenderOrder>(v5);
  gdc::ComponentStorageWrapper<md::components::PendingMaterial>::emplace(v9, a2, &v16);
  v10 = gdc::Registry::storage<arComponents::PendingPipelineSpecificComponentsSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v10, a2);
  v11 = gdc::Registry::storage<arComponents::ContextEntity>(v5);
  gdc::ComponentStorageWrapper<arComponents::ContextEntity>::emplace(v11, a2, &v15);
  v12 = gdc::Registry::storage<arComponents::RebuildPipelineSetup>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v12, a2);
  v13 = gdc::Registry::storage<arComponents::StandardPipeline>(v5);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v13, a2);
  md::MeshRenderable::~MeshRenderable(v19);
  v14 = gdc::Registry::storage<arComponents::TransitionToRenderRegistry>(*(a1 + 440));
  gdc::ComponentStorageWrapper<arComponents::TransitionToRenderRegistry>::remove(v14, a2);
  md::MeshRenderable::~MeshRenderable(v20);
}

void sub_1B2CB8EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  md::MeshRenderable::~MeshRenderable(va);
  _Unwind_Resume(a1);
}

BOOL gdc::ComponentStorageWrapper<arComponents::QueuedForDeletionAfterLayout>::remove(void *a1, uint64_t a2)
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

void gdc::ComponentStorageWrapper<arComponents::QueuedForDeletionAfterLayout>::~ComponentStorageWrapper(uint64_t a1)
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

uint64_t gdc::ComponentStorageWrapper<arComponents::QueuedForDeletionAfterLayout>::~ComponentStorageWrapper(uint64_t a1)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARShadowPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARShadowPipelineSetup *>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARShadowPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARMeshPipelineSetup *>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void md::ARMeshRenderLayer::~ARMeshRenderLayer(md::ARMeshRenderLayer *this)
{
  md::ARMeshRenderLayer::~ARMeshRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E8C10;
  v2 = *(this + 62);
  *(this + 62) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 61);
  *(this + 61) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 60);
  *(this + 60) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 59);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 57);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::unique_ptr<ggl::FragmentedPool<ggl::RenderItem>>::reset[abi:nn200100](this + 54, 0);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 392);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 352);
  md::ARMeshRenderResources::~ARMeshRenderResources((this + 64));
  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *this = &unk_1F2A16858;
  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

void md::ARMeshRenderResources::~ARMeshRenderResources(md::ARMeshRenderResources *this)
{
  ggl::RenderDataHolder::~RenderDataHolder((this + 72));
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    v6 = ggl::FragmentedPool<ggl::ARMesh::ARDepthMeshPipelineSetup>::~FragmentedPool(v5);
    MEMORY[0x1B8C62190](v6, 0x10A0C405CD4001ALL);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    v8 = ggl::FragmentedPool<ggl::ARMesh::ARMeshPipelineSetup>::~FragmentedPool(v7);
    MEMORY[0x1B8C62190](v8, 0x10A0C405CD4001ALL);
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    v10 = ggl::FragmentedPool<ggl::ARMesh::ARShadowPipelineSetup>::~FragmentedPool(v9);
    MEMORY[0x1B8C62190](v10, 0x10A0C405CD4001ALL);
  }
}

void *ggl::FragmentedPool<ggl::ARMesh::ARDepthMeshPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ARMesh::ARDepthMeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ARMesh::ARDepthMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void *ggl::FragmentedPool<ggl::ARMesh::ARMeshPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ARMesh::ARMeshPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ARMesh::ARMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

void *ggl::FragmentedPool<ggl::ARMesh::ARShadowPipelineSetup>::~FragmentedPool(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = (a1 + 4);
  while (v3 != v4)
  {
    if (*v3)
    {
      (*(**v3 + 8))(*v3);
    }

    ++v3;
  }

  v5 = *a1;
  v6 = a1[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
    }

    ++v5;
  }

  std::__function::__value_func<void ()(ggl::ARMesh::ARShadowPipelineSetup *)>::~__value_func[abi:nn200100]((a1 + 12));
  std::__function::__value_func<ggl::ARMesh::ARShadowPipelineSetup * ()(void)>::~__value_func[abi:nn200100]((a1 + 8));
  std::vector<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](a1);
  return a1;
}

uint64_t std::__function::__value_func<void ()(ggl::ARMesh::ARShadowPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::ARMesh::ARShadowPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::ARMesh::ARShadowPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARShadowPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARShadowPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(ggl::ARMesh::ARMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::ARMesh::ARMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::ARMesh::ARMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARMeshPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(ggl::ARMesh::ARDepthMeshPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::ARMesh::ARDepthMeshPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(v2, v1);
  }
}

void *std::__hash_table<std::__hash_value_type<gdc::TypeInfo,md::pipelineECS::ImplementsSetup *>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,md::pipelineECS::ImplementsSetup *>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,md::pipelineECS::ImplementsSetup *>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,md::pipelineECS::ImplementsSetup *>>>::__emplace_unique_key_args<gdc::TypeInfo,std::piecewise_construct_t const&,std::tuple<gdc::TypeInfo&&>,std::tuple<>>(void *a1, unint64_t a2, _OWORD **a3)
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

void ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>::~DeviceDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A48830;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::InstanceData>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void std::__shared_ptr_emplace<md::InstanceData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2E370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2CBA73C(_Unwind_Exception *a1)
{
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v3 - 96);

  _Unwind_Resume(a1);
}