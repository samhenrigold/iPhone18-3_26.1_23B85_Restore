void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *>(v3, v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *> *> *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::__hash_value_type<VKTrafficFeature * {__strong},md::RouteAnnotationLabelFeature *>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x20uLL, 0x10E0040537CA8AEuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeature *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::RouteAnnotationLabelFeature>>(uint64_t a1, void *a2)
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

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(id *a1, void **a2, void **a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *a2;
  v7 = *a1;
  v8 = [v6 routeOffset];
  v9 = [v7 routeOffset];
  if (v8 >= v9)
  {

    v10 = v8 == v9 && *(&v8 + 1) < *(&v9 + 1);
    if (!v10)
    {
      v11 = *a3;
      v12 = *v4;
      v13 = [v11 routeOffset];
      v14 = [v12 routeOffset];
      if (v13 >= v14)
      {

        if (v13 != v14 || *(&v13 + 1) >= *(&v14 + 1))
        {
          return;
        }
      }

      else
      {
      }

      v30 = *v4;
      *v4 = 0;
      v31 = *a3;
      *a3 = 0;
      v32 = *v4;
      *v4 = v31;

      v33 = *a3;
      *a3 = v30;

      v34 = *v4;
      v16 = *v5;
      v35 = [v34 routeOffset];
      v36 = [v16 routeOffset];
      if (v35 >= v36)
      {

        if (v35 != v36 || *(&v35 + 1) >= *(&v36 + 1))
        {
          return;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v15 = *a3;
  v16 = *v4;
  v17 = [v15 routeOffset];
  v18 = [v16 routeOffset];
  if (v17 >= v18)
  {

    if (v17 == v18 && *(&v17 + 1) < *(&v18 + 1))
    {
      v4 = a3;
      goto LABEL_15;
    }

    v23 = *v5;
    *v5 = 0;
    v24 = *v4;
    *v4 = 0;
    v25 = *v5;
    *v5 = v24;

    v26 = *v4;
    *v4 = v23;

    v27 = *a3;
    v16 = *v4;
    v28 = [v27 routeOffset];
    v29 = [v16 routeOffset];
    if (v28 >= v29)
    {

      if (v28 != v29)
      {
        return;
      }

      v10 = *(&v28 + 1) < *(&v29 + 1);
      v5 = v4;
      v4 = a3;
      if (!v10)
      {
        return;
      }

      goto LABEL_15;
    }

    v5 = v4;
  }

  v4 = a3;
LABEL_11:

LABEL_15:
  v19 = *v5;
  *v5 = 0;
  v20 = *v4;
  *v4 = 0;
  v21 = *v5;
  *v5 = v20;

  v22 = *v4;
  *v4 = v19;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(id *a1, void **a2, void **a3, void **a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a2, a3);
  v8 = *a4;
  v9 = *a3;
  v10 = [v8 routeOffset];
  v11 = [v9 routeOffset];
  if (v10 >= v11)
  {

    if (v10 != v11 || *(&v10 + 1) >= *(&v11 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v13 = *a3;
  *a3 = 0;
  v14 = *a4;
  *a4 = 0;
  v15 = *a3;
  *a3 = v14;

  v16 = *a4;
  *a4 = v13;

  v17 = *a3;
  v18 = *a2;
  v19 = [v17 routeOffset];
  v20 = [v18 routeOffset];
  if (v19 >= v20)
  {

    if (v19 != v20 || *(&v19 + 1) >= *(&v20 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v21 = *a2;
  *a2 = 0;
  v22 = *a3;
  *a3 = 0;
  v23 = *a2;
  *a2 = v22;

  v24 = *a3;
  *a3 = v21;

  v25 = *a2;
  v26 = *a1;
  v27 = [v25 routeOffset];
  v28 = [v26 routeOffset];
  if (v27 >= v28)
  {

    if (v27 != v28 || *(&v27 + 1) >= *(&v28 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v29 = *a1;
  *a1 = 0;
  v30 = *a2;
  *a2 = 0;
  v31 = *a1;
  *a1 = v30;

  v32 = *a2;
  *a2 = v29;
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(id *a1, void **a2, void **a3, void **a4, void **a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = [v10 routeOffset];
  v13 = [v11 routeOffset];
  if (v12 >= v13)
  {

    if (v12 != v13 || *(&v12 + 1) >= *(&v13 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v15 = *a4;
  *a4 = 0;
  v16 = *a5;
  *a5 = 0;
  v17 = *a4;
  *a4 = v16;

  v18 = *a5;
  *a5 = v15;

  v19 = *a4;
  v20 = *a3;
  v21 = [v19 routeOffset];
  v22 = [v20 routeOffset];
  if (v21 >= v22)
  {

    if (v21 != v22 || *(&v21 + 1) >= *(&v22 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v23 = *a3;
  *a3 = 0;
  v24 = *a4;
  *a4 = 0;
  v25 = *a3;
  *a3 = v24;

  v26 = *a4;
  *a4 = v23;

  v27 = *a3;
  v28 = *a2;
  v29 = [v27 routeOffset];
  v30 = [v28 routeOffset];
  if (v29 >= v30)
  {

    if (v29 != v30 || *(&v29 + 1) >= *(&v30 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v31 = *a2;
  *a2 = 0;
  v32 = *a3;
  *a3 = 0;
  v33 = *a2;
  *a2 = v32;

  v34 = *a3;
  *a3 = v31;

  v35 = *a2;
  v36 = *a1;
  v37 = [v35 routeOffset];
  v38 = [v36 routeOffset];
  if (v37 >= v38)
  {

    if (v37 != v38 || *(&v37 + 1) >= *(&v38 + 1))
    {
      return;
    }
  }

  else
  {
  }

  v39 = *a1;
  *a1 = 0;
  v40 = *a2;
  *a2 = 0;
  v41 = *a1;
  *a1 = v40;

  v42 = *a2;
  *a2 = v39;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*>(id *a1, void **a2)
{
  v2 = a2;
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }

    goto LABEL_11;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_11:
    v9 = a1 + 2;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationSupport::setTrafficFeatures(NSArray *)::$_0 &,VKTrafficFeature * {__strong}*,0>(a1, a1 + 1, a1 + 2);
    v10 = a1 + 3;
    if (a1 + 3 != v2)
    {
      v11 = 0;
      v12 = 0;
      v35 = v2;
      do
      {
        v13 = *v10;
        v14 = *v9;
        v15 = [v13 routeOffset];
        v16 = [v14 routeOffset];
        if (v15 >= v16)
        {

          if (v15 != v16 || *(&v15 + 1) >= *(&v16 + 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
        }

        v18 = *v10;
        v19 = *v9;
        *v9 = 0;
        *v10 = v19;
        v20 = v11;
        do
        {
          v21 = a1 + v20;
          v22 = *(a1 + v20 + 8);
          v23 = [v18 routeOffset];
          v24 = [v22 routeOffset];
          if (v23 >= v24)
          {

            if (v23 != v24 || *(&v23 + 1) >= *(&v24 + 1))
            {
              v28 = (a1 + v20 + 16);
              goto LABEL_30;
            }
          }

          else
          {
          }

          v26 = *(v21 + 1);
          v27 = *(v21 + 2);
          *(v21 + 1) = 0;
          *(v21 + 2) = v26;

          v20 -= 8;
        }

        while (v20 != -16);
        v28 = a1;
LABEL_30:
        v2 = v35;
        v29 = *v28;
        *v28 = v18;

        if (++v12 == 8)
        {
          return v10 + 1 == v35;
        }

LABEL_31:
        v9 = v10;
        v11 += 8;
        ++v10;
      }

      while (v10 != v2);
    }

    return 1;
  }

  v5 = *(a2 - 1);
  v6 = *a1;
  v7 = [v5 routeOffset];
  v8 = [v6 routeOffset];
  if (v7 < v8)
  {

LABEL_36:
    v31 = *a1;
    *a1 = 0;
    v32 = *(v2 - 1);
    *(v2 - 1) = 0;
    v33 = *a1;
    *a1 = v32;

    v34 = *(v2 - 1);
    *(v2 - 1) = v31;

    return 1;
  }

  result = 1;
  if (v7 == v8 && *(&v7 + 1) < *(&v8 + 1))
  {
    goto LABEL_36;
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<VKTrafficFeature * {__strong}>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x80040B8603338uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<VKTrafficFeature * {__strong},geo::allocator_adapter<VKTrafficFeature * {__strong},mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKTrafficFeature * {__strong}>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<VKTrafficFeature * {__strong}>(uint64_t a1, void *a2)
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

uint64_t **std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::__emplace_unique_key_args<VKTrafficFeatureType,std::piecewise_construct_t const&,std::tuple<VKTrafficFeatureType&&>,std::tuple<>>(uint64_t **a1, uint64_t a2, uint64_t **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if (v8 >= a2)
      {
        return v7;
      }

      v5 = v7[1];
    }

    while (v5);
    v6 = v7 + 1;
  }

  else
  {
    v7 = a1 + 1;
  }

LABEL_10:
  v9 = mdm::zone_mallocator::instance(a1);
  v10 = pthread_rwlock_rdlock((v9 + 32));
  if (v10)
  {
    geo::read_write_lock::logFailure(v10, "read lock", v11);
  }

  v14 = malloc_type_zone_malloc(*v9, 0x30uLL, 0x1020040B4C458C3uLL);
  atomic_fetch_add((v9 + 24), 1u);
  geo::read_write_lock::unlock((v9 + 32));
  v14[4] = **a3;
  v14[5] = 0;
  *v14 = 0;
  v14[1] = 0;
  v14[2] = v7;
  *v6 = v14;
  v12 = **a1;
  v13 = v14;
  if (v12)
  {
    *a1 = v12;
    v13 = *v6;
  }

  std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], v13);
  a1[3] = (a1[3] + 1);
  return v14;
}

void std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::destroy(void *result)
{
  if (result)
  {
    std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::destroy(*result);
    v2 = std::__tree<std::__value_type<VKTrafficFeatureType,unsigned long>,std::__map_value_compare<VKTrafficFeatureType,std::__value_type<VKTrafficFeatureType,unsigned long>,std::less<VKTrafficFeatureType>,true>,geo::allocator_adapter<std::__value_type<VKTrafficFeatureType,unsigned long>,mdm::zone_mallocator>>::destroy(result[1]);
    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, result);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(uint64_t a1, void *a2)
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

void ggl::PipelineState::~PipelineState(ggl::PipelineState *this)
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

void ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::~DefaultPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewCommonConstantData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 64) = a3;
  *(a1 + 72) = 0;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 72);
  *(a2 + 64) = a3;
  *(a2 + 72) = a4;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

void md::Logic<md::RouteOverlayLogic,md::RouteOverlayContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

id GEOGetVectorKitRouteOverlayLogicLog(void)
{
  if (GEOGetVectorKitRouteOverlayLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteOverlayLogicLog(void)::onceToken, &__block_literal_global_134);
  }

  v1 = GEOGetVectorKitRouteOverlayLogicLog(void)::log;

  return v1;
}

void **std::vector<geo::PolylineCoordinate>::__assign_with_size[abi:nn200100]<geo::PolylineCoordinate*,geo::PolylineCoordinate*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v10);
      }
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void ___ZL35GEOGetVectorKitRouteOverlayLogicLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "RouteOverlayLogic");
  v1 = GEOGetVectorKitRouteOverlayLogicLog(void)::log;
  GEOGetVectorKitRouteOverlayLogicLog(void)::log = v0;
}

void geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A1F258;

  JUMPOUT(0x1B8C62190);
}

uint64_t md::Logic<md::RouteOverlayLogic,md::RouteOverlayContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x13043386C0978CC2 && *(a3 + 32))
  {
    *&v6[2] = v4;
    v7 = v5;
    return (*(*result + 160))(result, a2, v6);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::RouteOverlayContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::RouteOverlayContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::RouteOverlayContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::RouteOverlayContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F29E2F90;
  v2 = a1[4];
  if (v2)
  {
    md::RouteOverlayContext::~RouteOverlayContext(v2);
    MEMORY[0x1B8C62190]();
  }

  return a1;
}

void md::RouteOverlayLogic::~RouteOverlayLogic(md::RouteOverlayLogic *this)
{
  md::RouteOverlayLogic::~RouteOverlayLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E2EB8;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  *(this + 19) = &unk_1F2A580E8;
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A580E8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A580E8;

  return a1;
}

void md::MuninJunctionIntersection::createLabels(uint64_t a1, void *a2)
{
  md::LabelSettingsStyleCache::muninRoadStyle(*(*(*a2 + 336) + 200));
  v4 = *(a1 + 8);
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  v8 = v5 * 6.28318531;
  v9 = exp(v6 * 6.28318531 + -3.14159265);
  v10 = atan(v9) * 2.0 + -1.57079633;
  v11 = fmod(v8, 6.28318531);
  v12 = fmod(v11 + 6.28318531, 6.28318531) + -3.14159265;
  v13 = __sincos_stret(v10);
  v14 = 6378137.0 / sqrt(v13.__sinval * v13.__sinval * -0.00669437999 + 1.0);
  v15 = (v14 + v7) * v13.__cosval;
  v16 = __sincos_stret(v12);
  v37[0] = v15 * v16.__cosval;
  v37[1] = v15 * v16.__sinval;
  v37[2] = (v7 + v14 * 0.99330562) * v13.__sinval;
  v17 = a2[6];
  v18 = gm::Matrix<double,3,1>::normalized<int,void>(v37);
  v20 = v19;
  v22 = v21;
  for (i = 0; i != 3; ++i)
  {
    *(v30 + i * 8) = *(v17 + 136 + i * 8) - v37[i];
  }

  v24 = gm::Matrix<double,3,1>::normalized<int,void>(v30);
  v27 = -(v25 * v22 - v26 * v20);
  v28 = -(v26 * v18 - v24 * v22);
  v29 = -(v24 * v20 - v25 * v18);
  v34 = -(v29 * v20 - v28 * v22);
  v35 = -(v27 * v22 - v29 * v18);
  v36 = -(v28 * v18 - v27 * v20);
  v32 = 0;
  v33 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 2;
  atomic_load((*a2 + 3426));
  operator new();
}

void sub_1B2C13974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::MuninRoadFeature>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    v2 = *(a1 + 80);
    v3 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v3, v2);
  }

  if (*(a1 + 71) < 0)
  {
    v4 = *(a1 + 48);
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  v6 = *(a1 + 40);
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::MuninRoadFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2A040;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninJunctionIntersection::~MuninJunctionIntersection(md::MuninJunctionIntersection *this)
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

uint64_t md::LabelPart::partIntersectsDisplayFrustum(void *a1, double *a2)
{
  result = md::CollisionObject::intersectsWorldFrustum(a1[3] + 312, a2);
  if (result)
  {
    v5 = *(*a1 + 496);

    return v5(a1, a2);
  }

  return result;
}

uint64_t md::CollisionObject::intersectsWorldFrustum(uint64_t a1, double *a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 112);
  if (*(a1 + 112) != 0)
  {
    v4 = 0;
    v5 = &v72;
    v6 = a2;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v9 = *v8;
        v8 += 4;
        v5->f64[v7++] = v9;
      }

      while (v7 != 4);
      ++v4;
      v5 += 2;
      ++v6;
    }

    while (v4 != 4);
    v10 = 0;
    v88 = vaddq_f64(v72, v78);
    v89 = vaddq_f64(v73, v79);
    v90 = vsubq_f64(v78, v72);
    v91 = vsubq_f64(v79, v73);
    v84 = vaddq_f64(v74, v78);
    v85 = vaddq_f64(v75, v79);
    v86 = vsubq_f64(v78, v74);
    v87 = vsubq_f64(v79, v75);
    v80 = v76;
    v81 = v77;
    v82 = vsubq_f64(v78, v76);
    v83 = vsubq_f64(v79, v77);
    do
    {
      v11 = 0;
      v12 = &v80.f64[4 * v10];
      v13 = *(v12 + 2);
      v92 = *v12;
      v93.i64[0] = v13;
      v14 = 0.0;
      do
      {
        v14 = v14 + *(&v92 + v11) * *(&v92 + v11);
        v11 += 8;
      }

      while (v11 != 24);
      v15 = 0;
      v16 = 1.0 / sqrt(v14);
      do
      {
        v67.f64[v15] = *(&v92 + v15 * 8) * v16;
        ++v15;
      }

      while (v15 != 3);
      v17 = &v71[32 * v10];
      v18 = v68;
      v19 = *(v12 + 3) * v16;
      *v17 = v67;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
      ++v10;
    }

    while (v10 != 6);
    geo::Frustum<double>::calculateCorners(v71, 0.0, a2);
    if (v3)
    {
      v20 = *v3;
      v21 = *(v3 + 1);
      v22 = *(v3 + 3);
      v82 = *(v3 + 2);
      v83 = v22;
      v80 = v20;
      v81 = v21;
      v23 = *(v3 + 4);
      v24 = *(v3 + 5);
      v25 = *(v3 + 6);
      v26 = *(v3 + 7);
      v86 = v25;
      v87 = v26;
      v84 = v23;
      v85 = v24;
    }

    else
    {
      geo::Transform<double>::toMatrix(&v80, *(a1 + 120));
    }

    if (*(a1 + 152) == 1)
    {
      for (i = 0; i != 3; ++i)
      {
        v67.f64[i] = *(a1 + 128 + 4 * i);
      }

      v28 = (a1 + 140);
      for (j = 3; j != 6; ++j)
      {
        v30 = *v28++;
        v67.f64[j] = v30;
      }

      v72 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v73 = xmmword_1B33B0520;
      v74 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      *&v92 = &unk_1F2A61070;
      *(&v92 + 1) = &v72;
      v93.i64[0] = &v80;
      v93.i64[1] = &v92;
      gm::Box<double,3>::forEachCorner(&v67, &v92);
      std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](&v92);
      v31 = 0;
      for (k = v71; ; k += 32)
      {
        v33 = 0;
        v34 = *&v71[v31 + 16];
        v92 = *&v71[v31];
        v93.i64[0] = v34;
        do
        {
          v35 = &v72.f64[v33];
          if (*(&v92 + v33 * 8) >= 0.0)
          {
            v35 = &v73.f64[v33 + 1];
          }

          v67.f64[v33++] = *v35;
        }

        while (v33 != 3);
        v36 = 0;
        v37 = 0.0;
        do
        {
          v37 = v37 + *&k[v36 * 8] * v67.f64[v36];
          ++v36;
        }

        while (v36 != 3);
        if (*&v71[v31 + 24] + v37 < 0.0)
        {
          break;
        }

        v31 += 32;
        if (v31 == 192)
        {
          return 1;
        }
      }
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 96;
      if (*(a1 + 199))
      {
        v40 = 100;
      }

      LODWORD(v23.f64[0]) = *(a1 + v40);
      do
      {
        v24.i32[0] = *(a1 + 8 + 4 * v39);
        v25.i32[0] = *(a1 + 4 * v39);
        if (v38)
        {
          break;
        }

        v38 = 1;
        v39 = 1;
      }

      while (v24.f32[0] >= v25.f32[0]);
      v41 = 0;
      v42 = 0;
      *v23.f64 = -*v23.f64;
      v43 = vdupq_lane_s32(*&v23.f64[0], 0);
      v44.i64[0] = vaddq_f32(*a1, v43).u64[0];
      v44.i64[1] = vsubq_f32(*a1, v43).i64[1];
      v45 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v25, v24), 0), *a1, v44);
      v65 = v45.i64[0];
      v66 = v45.i32[2];
      do
      {
        if (v42 >= 2)
        {
          v46 = *&v45.i32[1];
        }

        else
        {
          v46 = *&v45.i32[3];
        }

        v47 = (&v92 + v41);
        *v47 = *(&v65 + (~v41 & 8));
        v47[1] = v46;
        ++v42;
        v41 += 8;
      }

      while (v42 != 4);
      v93 = vextq_s8(v93, v93, 8uLL);
      v67 = vcvtq_f64_f32(*&v92);
      v68 = 0;
      v48 = 0;
      v72.f64[0] = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v80.f64, &v67);
      v72.f64[1] = v49;
      v73.f64[0] = v50;
      v63 = 0;
      v64 = 0;
      v51 = &v72;
      while (v48 != 4)
      {
        v52 = v48 + 1;
        if (v48 == 3)
        {
          v53 = 0;
        }

        else
        {
          v53 = v48 + 1;
        }

        if (v48 != 3)
        {
          v67 = vcvtq_f64_f32(*(&v92 + 8 * v52));
          v68 = 0;
          v54 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v80.f64, &v67);
          v55 = &v72 + 24 * v52;
          *v55 = v54;
          *(v55 + 1) = v56;
          *(v55 + 2) = v57;
        }

        v58 = 0;
        v59 = &v72 + 24 * v48;
        do
        {
          v67.f64[v58] = v72.f64[3 * v53 + v58] - v51->f64[v58];
          ++v58;
        }

        while (v58 != 3);
        v60 = v68;
        v61 = v67;
        v67 = *v59;
        v68 = *(v59 + 2);
        v69 = v61;
        v70 = v60;
        v51 = (v51 + 24);
        ++v48;
        if (geo::Intersect::internal::intersection<double,std::array<gm::Plane3<double>,6ul>>(v71, &v67, 2, &v64, &v63))
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

__n128 std::__function::__func<gm::Box<double,3>::transformedAndEnclosed(gm::Matrix<double,4,4> const&)::{lambda(gm::Matrix<double,3,1> &)#1},std::allocator<gm::Box<double,3>::transformedAndEnclosed(gm::Matrix<double,4,4> const&)::{lambda(gm::Matrix<double,3,1> &)#1}>,void ()(gm::Matrix<double,3,1> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A61070;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::LabelPart::partIntersectsStagingFrustum(void *a1, double *a2)
{
  result = md::CollisionObject::intersectsWorldFrustum(a1[3] + 72, a2);
  if (result)
  {
    v5 = *(*a1 + 488);

    return v5(a1, a2);
  }

  return result;
}

uint64_t md::LabelPart::partCollidesWithDisplayObject(md::LabelPart *this, const md::CollisionObject *a2)
{
  v2 = 0;
  v3 = *(this + 3);
  v4 = v3 + 392;
  v5 = v3 + 400;
  v6 = 1;
  while (*(v5 + 4 * v2) > *(a2 + v2 + 20) && *(v4 + 4 * v2) < *(a2 + v2 + 22))
  {
    v7 = v6;
    v6 = 0;
    v2 = 1;
    if ((v7 & 1) == 0)
    {
      return (*(*this + 480))();
    }
  }

  return 0;
}

uint64_t md::LabelPart::setPartRotation(uint64_t result, float *a2)
{
  v2 = *a2;
  *(result + 288) = *a2;
  v3 = a2[1];
  *(result + 292) = v3;
  v4 = *(result + 296);
  v5 = *(result + 300);
  v6 = v4 * v3;
  v7 = -((v5 * v3) - (v4 * v2));
  *(result + 88) = v7;
  *(result + 92) = v6 + (v5 * v2);
  *(result + 268) = fabsf(v7 + -1.0) > 0.000001;
  v8 = *a2;
  *(result + 528) = *a2;
  v9 = a2[1];
  *(result + 532) = v9;
  v10 = *(result + 536);
  v11 = *(result + 540);
  v12 = v10 * v9;
  v13 = -((v11 * v9) - (v10 * v8));
  *(result + 328) = v13;
  *(result + 332) = v12 + (v11 * v8);
  *(result + 508) = fabsf(v13 + -1.0) > 0.000001;
  return result;
}

float md::LabelPart::animationSize(md::LabelPart *this)
{
  v1 = 0;
  v2 = 0;
  v3 = *(this + 3);
  do
  {
    v4 = *(v3 + 80 + 4 * v2);
    v5 = *(v3 + 72 + 4 * v2);
    if (v1)
    {
      break;
    }

    v1 = 1;
    v2 = 1;
  }

  while (v4 >= v5);
  result = 0.0;
  if (v4 >= v5)
  {
    return *(v3 + 84) - *(v3 + 76);
  }

  return result;
}

void md::ExternalMeshLabelPart::pushToRenderModel(float *result, void *a2, float a3)
{
  v3 = *(result + 72);
  if (v3)
  {
    *(v3 + 112) = a3;
    result[138] = fmaxf(fminf(a3, 1.0), 0.0);
    v6 = a2[6];
    v5 = a2[7];
    if (v6 >= v5)
    {
      v8 = a2[5];
      v9 = (v6 - v8) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
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

      if (v12)
      {
        v13 = mdm::zone_mallocator::instance(result);
        v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelExternalMesh *>(v13, v12);
      }

      else
      {
        v14 = 0;
      }

      v16 = &v14[8 * v12];
      v15 = &v14[8 * v9];
      *v15 = v3;
      v7 = v15 + 8;
      v17 = a2[5];
      v18 = a2[6] - v17;
      v19 = &v15[-v18];
      v20 = memcpy(&v15[-v18], v17, v18);
      v21 = a2[5];
      a2[5] = v19;
      a2[6] = v7;
      a2[7] = v16;
      if (v21)
      {
        v22 = mdm::zone_mallocator::instance(v20);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalMesh *>(v22, v21);
      }
    }

    else
    {
      *v6 = v3;
      v7 = v6 + 1;
    }

    a2[6] = v7;
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelExternalMesh *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelExternalMesh *>(uint64_t a1, void *a2)
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

uint64_t md::ExternalMeshLabelPart::layoutForDisplay(uint64_t a1)
{
  if (*(a1 + 576))
  {
    return 37;
  }

  else
  {
    return 26;
  }
}

uint64_t md::ExternalMeshLabelPart::layoutForStaging(void *a1)
{
  v1 = a1[74];
  v2 = a1[72];
  if (!v1)
  {
    if (v2)
    {
      return 37;
    }

    return 26;
  }

  if (v2)
  {
    return 37;
  }

  std::mutex::lock((v1 + 96));
  v4 = *(v1 + 176);
  std::mutex::unlock((v1 + 96));
  if (v4 < 2)
  {
    return 25;
  }

  if (v4 - 3 < 2)
  {
    return 26;
  }

  if (v4 != 2)
  {
    return 37;
  }

  v5 = a1[74];
  std::mutex::lock((v5 + 96));
  v6 = *(v5 + 160);
  v10 = v6;
  if (*(&v6 + 1))
  {
    atomic_fetch_add_explicit((*(&v6 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((v5 + 96));
  v7 = a1[73];
  *(a1 + 36) = v10;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    v8 = a1[72];
  }

  else
  {
    v8 = v10;
  }

  if (v8)
  {
    return 37;
  }

  else
  {
    return 26;
  }
}

uint64_t md::LabelPart::setInWorldSpace(uint64_t this, char a2, char a3)
{
  *(this + 565) = a2;
  *(this + 566) = a3;
  return this;
}

void md::ExternalMeshLabelPart::~ExternalMeshLabelPart(md::ExternalMeshLabelPart *this)
{
  md::ExternalMeshLabelPart::~ExternalMeshLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

{
  *this = &unk_1F29E2FE8;
  v2 = *(this + 72);
  if (v2)
  {
    atomic_store(1u, (v2 + 116));
  }

  else
  {
    v3 = *(this + 74);
    std::mutex::lock((v3 + 96));
    *(v3 + 176) = 4;
    v4 = *(v3 + 160);
    if (v4)
    {
      atomic_store(1u, (v4 + 116));
    }

    std::mutex::unlock((v3 + 96));
  }

  v5 = *(this + 75);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 73);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

void sub_1B2C14A14(_Unwind_Exception *a1)
{
  v3 = *(v1 + 600);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 584);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *v1 = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject((v1 + 312));
  md::CollisionObject::~CollisionObject((v1 + 72));
  _Unwind_Resume(a1);
}

float std::__function::__func<md::ExternalMeshLabelPart::screenBoundsForWorldBounds(md::LabelLayoutContext const&,gm::Box<double,3> const&)::$_0,std::allocator<md::ExternalMeshLabelPart::screenBoundsForWorldBounds(md::LabelLayoutContext const&,gm::Box<double,3> const&)::$_0>,void ()(gm::Matrix<double,3,1> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = &v11;
  md::LabelLayoutContext::projectPointToPixel(*(a1 + 8), a2, &v11);
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = v5 + 8;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = v3->f32[0];
    *(v5 + 4 * v4) = fminf(v3->f32[0], *(v5 + 4 * v4));
    result = fmaxf(*(v6 + 4 * v4), v9);
    *(v6 + 4 * v4) = result;
    v3 = (&v11 + 4);
    v4 = 1;
    v7 = 0;
  }

  while ((v8 & 1) != 0);
  return result;
}

__n128 std::__function::__func<md::ExternalMeshLabelPart::screenBoundsForWorldBounds(md::LabelLayoutContext const&,gm::Box<double,3> const&)::$_0,std::allocator<md::ExternalMeshLabelPart::screenBoundsForWorldBounds(md::LabelLayoutContext const&,gm::Box<double,3> const&)::$_0>,void ()(gm::Matrix<double,3,1> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3380;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<ggl::ManeuverPoint::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E33C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ManeuverPoint::Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3490;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::ManeuverPoint::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::ManeuverPoint::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Tile::View>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Tile::View>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5A688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::IndexDataTyped<unsigned short>::~IndexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::IndexDataTyped<unsigned short>::~IndexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::IndexDataTyped<unsigned short>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5C730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::ManeuverPoint::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::ManeuverPoint::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::ManeuverPoint::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::RenderItem *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylesheetQuery<gss::PropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::PropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(uint64_t a1, size_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, a2, 0x100004077774924uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__function::__func<geo::intern_map_allocator<gss::PropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::PropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void std::__function::__func<geo::intern_map_allocator<gss::PropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::PropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void std::__function::__func<geo::intern_map_allocator<gss::PropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::PropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void geo::intern_vector<gss::StylePropertySet<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::runDestructors(_BYTE *result, _BYTE *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v3 + 96));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v3 + 72));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v3 + 48));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v3 + 24));
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v3);
      v3 += 120;
    }

    while (v3 != a2);
  }
}

void geo::intern_vector<gss::StylePropertySet<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::deallocateStorage(_BYTE *result)
{
  if ((result[12] & 1) == 0)
  {
    v2 = *result;
    if (*result)
    {
      geo::intern_vector<gss::StylePropertySet<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::runDestructors(v2, &v2[120 * *(result + 4)]);
      v3 = *result;
      v5 = gss::zone_mallocator::instance(v4);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v3)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v3);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(result + 5) = 0;
  *result = 0;
}

BOOL gss::DashPattern::operator==(float *a1, uint64_t a2)
{
  if (a1[8] != *(a2 + 32))
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = v3 - *a1;
  if (v4 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = v4 >> 2;
  v7 = 1;
  do
  {
    v8 = vabds_f32(*(v2 + 4 * v5), *(*a2 + 4 * v5));
    result = v8 <= 0.00000011921;
    v5 = v7++;
  }

  while (v8 <= 0.00000011921 && v6 > v5);
  return result;
}

unint64_t std::hash<gss::DashPattern>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == 0.0)
  {
    result = 0x9E3779B97F4A8048;
  }

  else
  {
    result = (LODWORD(v2) - 0x61C8864680B57FA7) ^ 0x11;
  }

  v5 = *a1;
  v4 = *(a1 + 8);
  while (v5 != v4)
  {
    v6 = *v5++;
    v7 = LODWORD(v6) - 0x61C8864680B583EBLL;
    if (v6 == 0.0)
    {
      v7 = 0x9E3779B97F4A7C15;
    }

    result ^= (result >> 2) + (result << 6) + v7;
  }

  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::PropertyID>::ResolvedStyle,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5B6E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void gss::Queryable<gss::PropertyID>::~Queryable(uint64_t a1)
{
  gss::Queryable<gss::PropertyID>::~Queryable(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x1000040789AEA99uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::PropertyID>>>,void *> *> *>(uint64_t a1, void *a2)
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

void gss::StylesheetQuery<gss::PropertyID>::~StylesheetQuery(void *a1)
{
  *a1 = &unk_1F2A5B638;
  v2 = a1[40];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[38];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 34));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 30));
  gss::Queryable<gss::PropertyID>::~Queryable(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gss::StylesheetQuery<gss::PropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::PropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5B600;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SamplerState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5D628;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MeshRenderableBuilder::buildRenderable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, char a7, char a8, char a9, char a10, char a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, uint64_t *a17, uint64_t a18, char a19, char a20)
{
  v84 = a5;
  *a1 = &unk_1F2A3CEF8;
  *(a1 + 8) = *(a3 + 8);
  v27 = *(a3 + 32);
  *(a1 + 24) = *(a3 + 24);
  *(a1 + 32) = v27;
  v28 = *(a3 + 40);
  *(a1 + 40) = v28;
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v29 = *(a3 + 128);
  *(a1 + 112) = *(a3 + 112);
  *(a1 + 128) = v29;
  *(a1 + 143) = *(a3 + 143);
  v30 = *(a3 + 64);
  *(a1 + 48) = *(a3 + 48);
  *(a1 + 64) = v30;
  v31 = *(a3 + 96);
  *(a1 + 80) = *(a3 + 80);
  *(a1 + 96) = v31;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  if (*(a3 + 176) == 1)
  {
    v32 = *(a3 + 160);
    *(a1 + 152) = *(a3 + 152);
    *(a1 + 160) = v32;
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 168) = *(a3 + 168);
    *(a1 + 176) = 1;
  }

  *(a1 + 184) = *(a3 + 184);
  *(a1 + 192) = 0;
  if (*(a3 + 193) == 1)
  {
    *(a1 + 192) = *(a3 + 192);
    *(a1 + 193) = 1;
  }

  *(a1 + 212) = *(a3 + 212);
  *(a1 + 196) = *(a3 + 196);
  *a1 = &unk_1F2A0B978;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 1;
  *(a1 + 360) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 368) = 3;
  *(a1 + 372) = 0;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0;
  v33 = *a4;
  v34 = **(*a4 + 48);
  v35 = *(*a4 + 16);
  if (!v35 || !gms::_Material<ggl::Texture2D>::zoomable(v35, 3u) || v34 >= 1.0)
  {
    v36 = *(v33 + 32);
    if (!v36 || !gms::_Material<ggl::Texture2D>::zoomable(v36, 3u) || v34 <= 0.0)
    {
      v37 = *(a2 + 16);
      v82 = 3;
      v38 = *(a2 + 40);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::MaterialTextureManager::textureFromMaterial(&v83, v37, a4, &v84, &v82, 0);
      v39 = *(a1 + 280);
      *(a1 + 272) = v83;
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v39);
      }

      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v38);
      }
    }
  }

  v40 = *a4;
  v41 = **(*a4 + 48);
  v42 = *(*a4 + 16);
  if (!v42 || !gms::_Material<ggl::Texture2D>::zoomable(v42, 4u) || v41 >= 1.0)
  {
    v43 = *(v40 + 32);
    if (!v43 || !gms::_Material<ggl::Texture2D>::zoomable(v43, 4u) || v41 <= 0.0)
    {
      v44 = *(a2 + 16);
      v82 = 4;
      v45 = *(a2 + 40);
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::MaterialTextureManager::textureFromMaterial(&v83, v44, a4, &v84, &v82, 0);
      v46 = *(a1 + 296);
      *(a1 + 288) = v83;
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v46);
      }

      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v45);
      }
    }
  }

  if (*a6)
  {
    std::allocate_shared[abi:nn200100]<md::SharedTexture2D,std::allocator<md::SharedTexture2D>,std::shared_ptr<ggl::Texture2D> &,decltype(nullptr),0>(&v83, a6);
  }

  v47 = *a4;
  v48 = **(*a4 + 48);
  v49 = *(*a4 + 16);
  if (!v49 || !gms::_Material<ggl::Texture2D>::zoomable(v49, 1u) || v48 >= 1.0)
  {
    v50 = *(v47 + 32);
    if (!v50 || !gms::_Material<ggl::Texture2D>::zoomable(v50, 1u) || v48 <= 0.0)
    {
      v51 = *(a2 + 16);
      v82 = 1;
      v52 = *(a2 + 40);
      if (v52)
      {
        atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::MaterialTextureManager::textureFromMaterial(&v83, v51, a4, &v84, &v82, 0);
      v53 = *(a1 + 256);
      *(a1 + 248) = v83;
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v52);
      }
    }
  }

  v54 = *a4;
  v55 = **(*a4 + 48);
  v56 = *(*a4 + 16);
  if (!v56 || !gms::_Material<ggl::Texture2D>::zoomable(v56, 0xBu) || v55 >= 1.0)
  {
    v57 = *(v54 + 32);
    if (!v57 || !gms::_Material<ggl::Texture2D>::zoomable(v57, 0xBu) || v55 <= 0.0)
    {
      v58 = (*(**a4 + 352))(*a4, 0.0);
      *(a1 + 240) = ((v58 & 0x100) == 0) | v58 & 1;
    }
  }

  v59 = *a4;
  v60 = **(*a4 + 48);
  v61 = *(*a4 + 16);
  if (!v61 || !gms::_Material<ggl::Texture2D>::zoomable(v61, 0x10u) || v60 >= 1.0)
  {
    v62 = *(v59 + 32);
    if (!v62 || !gms::_Material<ggl::Texture2D>::zoomable(v62, 0x10u) || v60 <= 0.0)
    {
      v63 = (*(**a4 + 552))(*a4, 0.0);
      *(a1 + 146) = ((v63 & 0x100) == 0) | v63 & 1;
    }
  }

  if (*(a1 + 360) == *(a17 + 56))
  {
    if (*(a1 + 360))
    {
      v65 = *a17;
      v64 = a17[1];
      if (v64)
      {
        atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
      }

      v66 = *(a1 + 312);
      *(a1 + 304) = v65;
      *(a1 + 312) = v64;
      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v66);
      }

      *(a1 + 320) = *(a17 + 16);
      v68 = a17[3];
      v67 = a17[4];
      if (v67)
      {
        atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
      }

      v69 = *(a1 + 336);
      *(a1 + 328) = v68;
      *(a1 + 336) = v67;
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v69);
      }

      v71 = a17[5];
      v70 = a17[6];
      if (v70)
      {
        atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
      }

      v72 = *(a1 + 352);
      *(a1 + 344) = v71;
      *(a1 + 352) = v70;
      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v72);
      }
    }
  }

  else if (*(a1 + 360))
  {
    v73 = *(a1 + 352);
    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v73);
    }

    v74 = *(a1 + 336);
    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v74);
    }

    v75 = *(a1 + 312);
    if (v75)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v75);
    }

    *(a1 + 360) = 0;
  }

  else
  {
    std::construct_at[abi:nn200100]<md::RasterOverlayRenderPatch,md::RasterOverlayRenderPatch const&,md::RasterOverlayRenderPatch*>(a1 + 304, a17);
    *(a1 + 360) = 1;
  }

  *(a1 + 232) = a5;
  v77 = *a4;
  v76 = a4[1];
  if (v76)
  {
    atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
  }

  v78 = *(a1 + 224);
  *(a1 + 216) = v77;
  *(a1 + 224) = v76;
  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v78);
  }

  v79 = (a1 + 372);
  *(a1 + 144) = a7 & *(a1 + 240);
  *(a1 + 48) = *a18;
  *(a1 + 64) = *(a18 + 16);
  *(a1 + 145) = a8;
  *(a1 + 368) = a9;
  *(a1 + 147) = a10 ^ 1;
  v80 = *(a1 + 388);
  if (v80 == *(a12 + 16))
  {
    if (*(a1 + 388))
    {
      *v79 = *a12;
    }
  }

  else
  {
    if (v80)
    {
      v81 = 0;
    }

    else
    {
      *v79 = *a12;
      v81 = 1;
    }

    *(a1 + 388) = v81;
  }

  *(a1 + 196) = a13;
  *(a1 + 200) = a14;
  *(a1 + 149) = a16;
  *(a1 + 369) = a11;
  *(a1 + 392) = a19;
  *(a1 + 150) = a20;
  if (*(a1 + 360) == 1)
  {
    *(a1 + 146) = 0;
  }
}

void sub_1B2C16330(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MaterialRenderable::~MaterialRenderable(v1);
  _Unwind_Resume(a1);
}

void md::MaterialRenderable::~MaterialRenderable(md::MaterialRenderable *this)
{
  *this = &unk_1F2A0B978;
  if (*(this + 360) == 1)
  {
    v2 = *(this + 44);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = *(this + 42);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(this + 39);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  v5 = *(this + 37);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 35);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 32);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 28);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  md::MeshRenderable::~MeshRenderable(this);
}

{
  md::MaterialRenderable::~MaterialRenderable(this);

  JUMPOUT(0x1B8C62190);
}

unint64_t md::MeshRenderable::hash(md::MeshRenderable *this)
{
  v1 = (*(this + 2) + (*(this + 8) << 6) + (*(this + 8) >> 2) - 0x61C8864680B583EBLL) ^ *(this + 8);
  v2 = (*(this + 3) + (v1 << 6) + (v1 >> 2) - 0x61C8864680B583EBLL) ^ v1;
  v3 = *(this + 4);
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(v3) ^ ((0x9DDFEA08EB382D69 * ((8 * (v3 & 0x1FFFFFFF) + 8) ^ HIDWORD(v3))) >> 47) ^ (0x9DDFEA08EB382D69 * ((8 * (v3 & 0x1FFFFFFF) + 8) ^ HIDWORD(v3))));
  v5 = ((v2 << 6) + (v2 >> 2) - 0x622015F714C7D297 * (v4 ^ (v4 >> 47)) - 0x61C8864680B583EBLL) ^ v2;
  v6 = *(this + 64);
  v7 = ((v6 | (v5 << 6)) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
  if (v6 == 1)
  {
    v8 = (*(this + 6) - 0x61C8864680B583EBLL + (*(this + 6) >> 34) + (HIDWORD(*(this + 6)) << 6)) ^ HIDWORD(*(this + 6));
    v7 ^= (v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + ((*(this + 56) - 0x61C8864680B583EBLL + (v8 << 6) + (v8 >> 2)) ^ v8);
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(this + v9 + 76);
    v12 = LODWORD(v11) - 0x61C8864680B583EBLL;
    if (v11 == 0.0)
    {
      v12 = 0x9E3779B97F4A7C15;
    }

    v10 ^= (v10 >> 2) + (v10 << 6) + v12;
    v9 += 4;
  }

  while (v9 != 12);
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = *(this + v13 + 88);
    v16 = LODWORD(v15) - 0x61C8864680B583EBLL;
    if (v15 == 0.0)
    {
      v16 = 0x9E3779B97F4A7C15;
    }

    v14 ^= (v14 >> 2) + (v14 << 6) + v16;
    v13 += 4;
  }

  while (v13 != 12);
  v17 = (((((v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + *(this + 72)) ^ v7) << 6) - 0x61C8864680B583EBLL + ((((v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + *(this + 72)) ^ v7) >> 2) + v10) ^ ((v7 << 6) - 0x61C8864680B583EBLL + (v7 >> 2) + *(this + 72)) ^ v7;
  v18 = ((v17 << 6) - 0x61C8864680B583EBLL + (v17 >> 2) + v14) ^ v17;
  v19 = ((v18 << 6) - 0x61C8864680B583EBLL + (v18 >> 2) + *(this + 144)) ^ v18;
  v20 = (*(this + 145) - 0x61C8864680B583EBLL + (v19 << 6) + (v19 >> 2)) ^ v19;
  v21 = (*(this + 146) - 0x61C8864680B583EBLL + (v20 << 6) + (v20 >> 2)) ^ v20;
  v22 = (*(this + 147) - 0x61C8864680B583EBLL + (v21 << 6) + (v21 >> 2)) ^ v21;
  v23 = 0x9DDFEA08EB382D69 * ((8 * (*(this + 26) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(this + 26)));
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(*(this + 26)) ^ (v23 >> 47) ^ v23)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(*(this + 26)) ^ (v23 >> 47) ^ v23)) >> 47)) - 0x61C8864680B583EBLL + (v22 << 6) + (v22 >> 2)) ^ v22;
}

uint64_t std::construct_at[abi:nn200100]<md::RasterOverlayRenderPatch,md::RasterOverlayRenderPatch const&,md::RasterOverlayRenderPatch*>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = *a2;
  *(result + 8) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::shared_ptr<md::SharedTexture2D>::__enable_weak_this[abi:nn200100]<md::SharedResource,md::SharedTexture2D,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }
    }
  }
}

void std::__shared_ptr_emplace<md::SharedTexture2D>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2FC68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 md::MeshRenderableBuilder::buildRenderable(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t **a4, uint64_t a5)
{
  *a1 = &unk_1F2A3CEF8;
  *(a1 + 8) = *(a2 + 8);
  v8 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  *(a1 + 40) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v10;
  *(a1 + 143) = *(a2 + 143);
  v11 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v11;
  v12 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v12;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v13 = *(a2 + 160);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = 1;
  }

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = 0;
  if (*(a2 + 193) == 1)
  {
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 193) = 1;
  }

  *(a1 + 196) = *(a2 + 196);
  *(a1 + 212) = *(a2 + 212);
  *a1 = &unk_1F2A3CEC8;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  v15 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    v16 = *(a1 + 224);
    *(a1 + 216) = v15;
    *(a1 + 224) = v14;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }
  }

  else
  {
    *(a1 + 216) = v15;
    *(a1 + 224) = 0;
  }

  if ((a1 + 232) != a4)
  {
    std::vector<std::shared_ptr<ggl::Texture2D>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::Texture2D>*,std::shared_ptr<ggl::Texture2D>*>((a1 + 232), *a4, a4[1], (a4[1] - *a4) >> 4);
  }

  v17 = *(a5 + 16);
  *(a1 + 256) = *a5;
  *(a1 + 272) = v17;
  result = *(a5 + 32);
  *(a1 + 288) = result;
  *(a1 + 144) = 1;
  *(a1 + 147) = 1;
  return result;
}

void sub_1B2C169C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = v4;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](va);
  v6 = *(v3 + 28);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  md::MeshRenderable::~MeshRenderable(v3);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<ggl::Texture2D>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::Texture2D>*,std::shared_ptr<ggl::Texture2D>*>(uint64_t **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v8 = a1[2] - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::shared_ptr<ggl::Texture2D>>::__vallocate[abi:nn200100](a1, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = a1[1] - v7;
  if (a4 <= v11 >> 4)
  {
    v15 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a2, a3, v7);
    for (i = a1[1]; i != v15; i -= 16)
    {
      v17 = *(i - 8);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    a1[1] = v15;
  }

  else
  {
    v12 = (a2 + v11);
    std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a2, (a2 + v11), v7);
    for (j = a1[1]; v12 != a3; j += 2)
    {
      v14 = v12[1];
      *j = *v12;
      j[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v12 += 2;
    }

    a1[1] = j;
  }
}

void md::TexturedRenderable::~TexturedRenderable(md::TexturedRenderable *this)
{
  *this = &unk_1F2A3CEC8;
  v3 = (this + 232);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 28);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MeshRenderable::~MeshRenderable(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A3CEC8;
  v3 = (this + 232);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 28);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MeshRenderable::~MeshRenderable(this);
}

void std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t md::DaVinciMaterialResourceFetcher::resourceKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  UInt64 = gdc::ResourceKey::getUInt64(*(a3 + 8), 0);
  objc_msgSend_style(v4);
  v6 = +[VKSharedResourcesManager sharedResources];
  [v6 gglDevice];
  LOBYTE(v8) = GEOTileKeyMakeEmpty();
  *(&v8 + 1) = UInt64;

  return v8;
}

void md::DaVinciMaterialResourceFetcher::~DaVinciMaterialResourceFetcher(md::DaVinciMaterialResourceFetcher *this)
{
  md::IdentifiedGEOResourceFetcher::~IdentifiedGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::DaVinciMaterialResourceDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::Glyph3d::DefaultPipelineSetup::~DefaultPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Glyph3d::LowPrecisionPipelineSetup::~LowPrecisionPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Glyph3d::LowPrecisionHaloPipelineSetup::~LowPrecisionHaloPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Glyph3d::RaymarchPipelineSetup::~RaymarchPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

md::TileUndulationProvider *md::TileUndulationProvider::TileUndulationProvider(md::TileUndulationProvider *this, const geo::QuadTile *a2, const md::GeoidModel *a3)
{
  v4 = 1 << *(a2 + 1);
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  *this = a3;
  v7 = (v4 + ~v5);
  v8 = 6.28318531 / v4;
  v9 = exp(v8 * v7 + -3.14159265);
  v19 = atan(v9);
  v10 = fmod(v8 * v6, 6.28318531);
  v18 = fmod(v10 + 6.28318531, 6.28318531);
  v11 = exp(v8 * (v7 + 1.0) + -3.14159265);
  v17 = atan(v11);
  v12 = fmod(v8 + v6 * v8, 6.28318531);
  v13 = fmod(v12 + 6.28318531, 6.28318531);
  v15.f64[0] = v18;
  v14.f64[0] = v19;
  v14.f64[1] = v17;
  v15.f64[1] = v13;
  *(this + 8) = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vdupq_n_s64(0xC066800000000000), vdupq_n_s64(0x404CA5DC1A63C1F8uLL), v15)), vmlaq_f64(vdupq_n_s64(0xC056800000000000), vdupq_n_s64(0x405CA5DC1A63C1F8uLL), v14));
  return this;
}

void std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<md::DaVinciTrafficTileData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3850;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>::reset[abi:nn200100](uint64_t (****result)(void))
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (**v1)(v1);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::DaVinciTrafficRibbon>(v3, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::DaVinciTrafficRibbon>(uint64_t a1, void *a2)
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

uint64_t std::__function::__func<void({block_pointer} {__strong})(ggl::ResourceAccessor *),std::allocator<void({block_pointer} {__strong})(ggl::ResourceAccessor *)>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A59B50;
  result = MEMORY[0x1B8C62DA0](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<void({block_pointer} {__strong})(ggl::ResourceAccessor *),std::allocator<void({block_pointer} {__strong})(ggl::ResourceAccessor *)>,void ()(ggl::ResourceAccessor *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1B8C62190);
}

void std::default_delete<gdc::GlobeTileGrid>::operator()[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 2592);
  if (v1)
  {
    MEMORY[0x1B8C62170](v1, 0x1000C8000313F17);
  }

  JUMPOUT(0x1B8C62190);
}

void md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29E9DE8;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(void *a1)
{
  *a1 = &unk_1F29E9DE8;
  v2 = a1[18];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[16];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonLayer(a1);
}

gdc::GlobeTileGrid *gdc::GlobeTileGrid::GlobeTileGrid(gdc::GlobeTileGrid *this, const geo::QuadTile *a2)
{
  v3 = 0;
  *this = 255;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 24) = 1;
  v4 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v5 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  do
  {
    v6 = this + v3;
    *(v6 + 2) = 0uLL;
    *(v6 + 3) = 0uLL;
    *(v6 + 4) = 0uLL;
    *(v6 + 5) = xmmword_1B33B05D0;
    *(v6 + 6) = v4;
    *(v6 + 7) = v5;
    v3 += 104;
    *(v6 + 16) = 0xFFEFFFFFFFFFFFFFLL;
  }

  while (v3 != 1664);
  for (i = 0; i != 896; i += 56)
  {
    v8 = this + i;
    *(v8 + 108) = 0uLL;
    *(v8 + 107) = 0uLL;
    *(v8 + 106) = 0uLL;
    *(v8 + 218) = 0x3FF0000000000000;
  }

  *(this + 324) = 0;
  *(this + 650) = 0;
  v9 = *(a2 + 9);
  *this = *a2;
  *(this + 9) = v9;
  __powidf2();
  *&v10 = v10 * 0.0000000748596064;
  *(this + 650) = LODWORD(v10);
  return this;
}

uint64_t gdc::GlobeTileGrid::endBuildingHeightRange(gdc::GlobeTileGrid *this)
{
  v2 = 0;
  v3 = 0;
  v20 = 4 * *(this + 2);
  v4 = 1 << (*(this + 1) + 2);
  v5 = 1.0 / v4;
  v19 = v4 - 4 * *(this + 1) - 4;
  v6 = 32;
  v7 = 4;
  do
  {
    v21 = v6;
    v22 = v3;
    v8 = v19;
    v9 = (v20 + v3);
    v10 = v5 * v9;
    v11 = v7;
    v12 = v5 + v9 * v5;
    v23 = v2;
    v13 = 4;
    do
    {
      v14 = this + v2;
      v15 = (*(this + 324) + v11);
      v16 = *(v15 - 1);
      v17 = *v15;
      v29[0] = v10;
      v29[1] = v5 * v8;
      v29[2] = v12;
      v29[3] = v5 + v8 * v5;
      gdc::GlobeTileUtils::boundsFromMercatorRect(&v24, v29, v16, v17);
      geo::OrientedBox<double,3u,double,double>::operator=(this + v6, &v24);
      geo::RigidTransform<double,double>::inverse(&v24, this + v6);
      *(this + v2 + 1720) = v26;
      *(v14 + 217) = v27;
      *(v14 + 218) = v28;
      *(v14 + 106) = v24;
      ++v8;
      *(v14 + 214) = v25;
      v2 += 224;
      v6 += 416;
      v11 += 32;
      --v13;
    }

    while (v13);
    v3 = v22 + 1;
    v2 = v23 + 56;
    v6 = v21 + 104;
    v7 += 8;
  }

  while (v22 != 3);
  result = *(this + 324);
  if (result)
  {
    result = MEMORY[0x1B8C62170](result, 0x1000C8000313F17);
  }

  *(this + 324) = 0;
  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinciTraffic::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinciTraffic::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinciTraffic::DefaultVbo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E9E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned int,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,void *>>(uint64_t a1, void *a2)
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

uint64_t ggl::CullingGrid::sortOrderForCells(unint64_t this)
{
  v1 = 3;
  if ((this & 0xF000) == 0)
  {
    v1 = 0;
  }

  if ((this & 0xF00) != 0)
  {
    v1 = 2;
  }

  if ((this & 0xF0) != 0)
  {
    v1 = 1;
  }

  if ((this & 0xF) != 0)
  {
    v1 = 0;
  }

  return (ggl::CullingGrid::sortOrderForCells::sortOrderForQuad[this >> 12] << 12) | (ggl::CullingGrid::sortOrderForCells::sortOrderForQuad[v1] << 16) | (ggl::CullingGrid::sortOrderForCells::sortOrderForQuad[(this >> 8) & 0xF] << 8) | (16 * ggl::CullingGrid::sortOrderForCells::sortOrderForQuad[this >> 4]) | ggl::CullingGrid::sortOrderForCells::sortOrderForQuad[this & 0xF];
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
  v8 = *a1;
  v9 = ggl::CullingGrid::sortOrderForCells(*(*a1 + 96));
  v10 = *a3;
  result = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
  if (v7 >= v9)
  {
    if (result < v7)
    {
      *a2 = v10;
      *a3 = v6;
      v12 = *a2;
      v13 = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
      v14 = *a1;
      result = ggl::CullingGrid::sortOrderForCells(*(*a1 + 96));
      if (v13 < result)
      {
        *a1 = v12;
        *a2 = v14;
      }
    }
  }

  else
  {
    if (result >= v7)
    {
      *a1 = v6;
      *a2 = v8;
      v15 = *a3;
      result = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
      if (result >= v9)
      {
        return result;
      }

      *a2 = v15;
    }

    else
    {
      *a1 = v10;
    }

    *a3 = v8;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a2, a3);
  v8 = *a4;
  v9 = ggl::CullingGrid::sortOrderForCells(*(*a4 + 96));
  v10 = *a3;
  result = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
  if (v9 < result)
  {
    *a3 = v8;
    *a4 = v10;
    v12 = *a3;
    v13 = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
    v14 = *a2;
    result = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
    if (v13 < result)
    {
      *a2 = v12;
      *a3 = v14;
      v15 = *a2;
      v16 = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
      v17 = *a1;
      result = ggl::CullingGrid::sortOrderForCells(*(*a1 + 96));
      if (v16 < result)
      {
        *a1 = v15;
        *a2 = v17;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = ggl::CullingGrid::sortOrderForCells(*(*a5 + 96));
  v12 = *a4;
  result = ggl::CullingGrid::sortOrderForCells(*(*a4 + 96));
  if (v11 < result)
  {
    *a4 = v10;
    *a5 = v12;
    v14 = *a4;
    v15 = ggl::CullingGrid::sortOrderForCells(*(*a4 + 96));
    v16 = *a3;
    result = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
    if (v15 < result)
    {
      *a3 = v14;
      *a4 = v16;
      v17 = *a3;
      v18 = ggl::CullingGrid::sortOrderForCells(*(*a3 + 96));
      v19 = *a2;
      result = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
      if (v18 < result)
      {
        *a2 = v17;
        *a3 = v19;
        v20 = *a2;
        v21 = ggl::CullingGrid::sortOrderForCells(*(*a2 + 96));
        v22 = *a1;
        result = ggl::CullingGrid::sortOrderForCells(*(*a1 + 96));
        if (v21 < result)
        {
          *a1 = v20;
          *a2 = v22;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RibbonLayer<md::Ribbons::DaVinciTrafficRibbonDescriptor>::batch(std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&,std::shared_ptr<ggl::ConstantDataTyped<std::shared_ptr::Tile::View>> const&,std::unordered_map<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>> &&<ggl<ggl::ConstantDataTyped::Transform>> const&,BOOL)::{lambda(std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const&,std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>> const)#1} &,std::default_delete<md::RibbonSection>*>(uint64_t *a1, uint64_t *a2)
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
          std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100]((a1 + v15 + 24), v14);
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
        std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](v18, v16);
        if (++v11 == 8)
        {
          v19 = v9 + 1 == a2;
          std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
          return v19;
        }

        std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>::reset[abi:nn200100](&v21, 0);
      }

      v8 = v9;
      v10 += 8;
      ++v9;
    }

    while (v9 != a2);
  }

  return 1;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>>(uint64_t a1, uint64_t a2)
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

void ggl::ConstantDataTyped<ggl::Tile::Transform>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Tile::Transform>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A5A6E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciTrafficLayerDataSource::~DaVinciTrafficLayerDataSource(md::DaVinciTrafficLayerDataSource *this)
{
  md::DaVinciTrafficLayerDataSource::~DaVinciTrafficLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E3730;
  v2 = *(this + 100);
  *(this + 100) = 0;
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

  md::TrafficLayerDataSource::~TrafficLayerDataSource(this);
}

void md::TrafficLayerDataSource::~TrafficLayerDataSource(md::TrafficLayerDataSource *this)
{
  *this = &unk_1F2A568C0;
  v2 = *(this + 97);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::SingleGEOResourceLayerDataSource::~SingleGEOResourceLayerDataSource(this);
}

void ggl::Flyover::FlyoverPipelineSetup::~FlyoverPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Flyover::FlyoverPolarPipelineSetup::~FlyoverPolarPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void gss::ClientStyleState<gss::ScenePropertyID>::removeClientStyleAttribute(uint64_t a1, unsigned int a2)
{
  v10 = (a1 + 16);
  v4 = pthread_rwlock_wrlock((a1 + 16));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "write lock", v5);
  }

  v6 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase((a1 + 216), a2);
  if (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase((a1 + 240), a2) | v6)
  {
    v7 = COERCE_FLOAT(atomic_load((a1 + 272)));
    v8 = v7 <= 0.0;
    v9 = 1;
    if (v8)
    {
      v9 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((a1 + 240), a1 + 216) ^ 1;
    }

    atomic_store(v9, (a1 + 270));
    atomic_fetch_add((a1 + 264), 1u);
  }

  geo::write_lock_guard::~write_lock_guard(&v10);
}

void sub_1B2C19A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ___ZN3gss10StyleSheetINS_10PropertyIDEE9loadQueueEb_block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.mapdisplay.stylesheetLoadQueue", v0);
  v2 = gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::stylesheetLoadQueue;
  gss::StyleSheet<gss::PropertyID>::loadQueue(BOOL)::stylesheetLoadQueue = v1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::function<void ()(BOOL)>>(uint64_t a1, void *a2)
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

uint64_t std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F2A2F350;
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

void std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F350;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1},std::allocator<gss::StylesheetManager<gss::PropertyID>::addFinishedDecodingGlobalPropertiesCallback(std::function<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>)::{lambda(BOOL)#1}>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F2A2F350;
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  std::__function::__value_func<void ()(std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>,BOOL)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t __Block_byref_object_copy__322(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZZ40__VKSceneConfiguration_setStyleManager__ENK3__2clENSt3__110shared_ptrIN3gss17StylesheetManagerINS2_10PropertyIDEEEEEb_block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v7[4] = v1;
    v7[5] = v2;
    v4 = *(a1 + 40);
    if (v4)
    {
      gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(v7, *(v4 + 16));
      v6 = v7[0];
      v5 = v7[1];
      *(*(*(*(a1 + 32) + 8) + 40) + 152) = *(v7[0] + 260);
      *(*(*(*(a1 + 32) + 8) + 40) + 160) = v6[66];
      *(*(*(*(a1 + 32) + 8) + 40) + 168) = v6[67];
      *(*(*(*(a1 + 32) + 8) + 40) + 176) = v6[68];
      *(*(*(*(a1 + 32) + 8) + 40) + 184) = v6[69];
      *(*(*(*(a1 + 32) + 8) + 40) + 192) = v6[70];
      *(*(*(*(a1 + 32) + 8) + 40) + 200) = v6[71];
      *(*(*(*(a1 + 32) + 8) + 40) + 208) = v6[80];
      *(*(*(*(a1 + 32) + 8) + 40) + 216) = v6[81];
      *(*(*(*(a1 + 32) + 8) + 40) + 224) = v6[82];
      *(*(*(*(a1 + 32) + 8) + 40) + 232) = v6[83];
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }
    }
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned long long>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<md::StandardLabelMarker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E39F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::StandardLabeler::labelMarkerForCustomFeatureAnnotation(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v18 = 0uLL;
  md::LabelCustomFeatureSupport::featureForAnnotation(&v16, a1[4], v8, v7);
  v9 = v16;
  if (v16)
  {
    if (*(*(*v16 + 568))(v16, 0, 0, 0, 0) || !*(v9 + 128))
    {
      v10 = a1[6];
      v11 = a1[3];
      LODWORD(v15) = 1;
      md::LabelPool::labelForCustomFeature(v19, v10, v11, &v16, &v15, 0);
      v12 = v19[0];
      *(&v19[0] + 1) = 0;
      v18 = v12;
      v9 = *(&v12 + 1);
      if (v12)
      {
        *&v19[0] = 0;
        BYTE8(v19[0]) = 0;
        v21 = 0;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        v26 = 0;
        v27 = 0;
        v25 = 0;
        memset(&v19[1], 0, 32);
        v20 = 0;
        md::Label::populateFeatureInfo(v12, v19, 0);
        std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v14, *(a1[3] + 8), *(a1[3] + 16));
        v13 = *(a1[3] + 176);
        std::allocate_shared[abi:nn200100]<md::StandardLabelMarker,std::allocator<md::StandardLabelMarker>,std::shared_ptr<md::LabelManager>,std::shared_ptr<md::Label> &,float,md::LabelFeatureInfo &,0>(&v15, &v14, &v18, &v13, v19);
      }
    }

    else
    {
      v9 = 0;
    }
  }

  *a4 = 0;
  a4[1] = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void sub_1B2C1A504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  v45 = a12;
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a40 < 0)
  {
    v46 = *(v43 + 104);
    v47 = mdm::zone_mallocator::instance(v45);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v47, v46);
  }

  if (a33 < 0)
  {
    v48 = *(v43 + 72);
    v49 = mdm::zone_mallocator::instance(v45);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v49, v48);
  }

  std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a23);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  _Unwind_Resume(a1);
}

void md::StandardLabeler::labelMarkerForLabel(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (*a2)
  {
    v6 = 0;
    v7 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    md::Label::populateFeatureInfo(v4, &v6, 0);
    std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v5, *(*(a1 + 24) + 8), *(*(a1 + 24) + 16));
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1B2C1A73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::__shared_weak_count::~__shared_weak_count(v34);
  operator delete(v36);
  v37 = a10;
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  if (a34 < 0)
  {
    v38 = a29;
    v39 = mdm::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v39, v38);
  }

  if (a27 < 0)
  {
    v40 = a22;
    v41 = mdm::zone_mallocator::instance(v37);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v41, v40);
  }

  std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a17);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void md::StandardLabeler::setSelectedLabelMarker(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 208))(a1);
  v4 = *a2;
  if (*a2)
  {
    if (!*(v4 + 224))
    {
      v5 = a2[1];
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v6 = *(a1 + 248);
      *(a1 + 240) = v4;
      *(a1 + 248) = v5;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        v4 = *(a1 + 240);
      }

      md::Label::setSelected(*(v4 + 288), *(a1 + 24), 1);
      md::StandardLabeler::monitorSelectedLabelState(a1, 1);
      if ((*(**(*(v4 + 288) + 8) + 216))(*(*(v4 + 288) + 8)))
      {
        v7 = (*(**(*(v4 + 288) + 8) + 232))(*(*(v4 + 288) + 8));
        if (v7)
        {
          v8 = *(a1 + 32);
          v35 = v7;
          v9 = v7;
          v10 = [v9 feature];
          v11 = [v10 dataSource];

          if (v11)
          {
            v14 = *(v8 + 80);
            v13 = v8 + 80;
            v12 = v14;
            if (v14)
            {
              v15 = v13;
              do
              {
                v16 = *(v12 + 32);
                v17 = v16 >= v11;
                v18 = v16 < v11;
                if (v17)
                {
                  v15 = v12;
                }

                v12 = *(v12 + 8 * v18);
              }

              while (v12);
              if (v15 != v13 && v11 >= *(v15 + 32))
              {
                v19 = v9;
                v20 = [v19 feature];
                v21 = [v20 isGlobalFeature];

                if (v21)
                {
                  md::LabelCustomFeatureSupport::globalFeaturesDidChange(*(v15 + 40));
                }

                else
                {
                  objc_msgSend_coordinate(v19);
                  v30 = v29;
                  objc_msgSend_coordinate(v19);
                  v32 = v31;
                  v33 = tan(v30 * 0.00872664626 + 0.785398163);
                  v34 = log(v33);
                  md::LabelCustomFeatureProvider::featuresDidChangeForRect(v15 + 40, *MEMORY[0x1E69A1690] * (v32 * 0.00277777778 + 0.5), *(MEMORY[0x1E69A1690] + 8) * (v34 * -0.159154943 + 0.5), 0.0, 0.0);
                }
              }
            }
          }

          v7 = v35;
        }
      }
    }
  }

  else
  {
    v22 = *(a1 + 240);
    if (v22)
    {
      v23 = *(v22[36] + 8);
      if ((v23[144] & 1) == 0 && !(*(*v23 + 328))(*(v22[36] + 8)) || v23[145] == 1)
      {
        v25 = *(a1 + 240);
        v24 = *(a1 + 248);
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
        }

        v26 = *(a1 + 264);
        *(a1 + 256) = v25;
        *(a1 + 264) = v24;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v26);
        }

        md::LabelPool::setLocalLabel(*(a1 + 48), (*(a1 + 48) + 720), v22 + 36);
        md::Label::setPreviouslySelected(v22[36], *(a1 + 24), 1);
      }

      (*(*v22 + 512))(v22, 0);
      md::Label::setSelected(v22[36], *(a1 + 24), 0);
      v27 = *(a1 + 248);
      *(a1 + 240) = 0;
      *(a1 + 248) = 0;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v27);
      }

      v28 = *(a1 + 48);
      v36[0] = 0;
      v36[1] = 0;
      md::LabelPool::setLocalLabel(v28, (v28 + 704), v36);
    }
  }
}

void md::StandardLabeler::monitorSelectedLabelState(md::StandardLabeler *this, int a2)
{
  v2 = a2;
  if (a2)
  {
    *(this + 180) = 0;
    *(this + 328) = 0u;
    *(this + 344) = 0u;
  }

  else
  {
    v4 = *(this + 360);
    if (v4 == (*(**(this + 30) + 464))(*(this + 30)))
    {
      v5 = 0;
      goto LABEL_7;
    }
  }

  *(this + 360) = (*(**(this + 30) + 464))(*(this + 30));
  if (v2)
  {
    goto LABEL_11;
  }

  v5 = 1;
LABEL_7:
  v6 = *(this + 361);
  if (v6 == (*(**(this + 30) + 648))(*(this + 30)))
  {
    if ((*(this + 360) & 1) == 0)
    {
      if (!v5)
      {
        return;
      }

      goto LABEL_33;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(this + 361) = (*(**(this + 30) + 648))(*(this + 30));
  if (*(this + 360) != 1)
  {
    goto LABEL_33;
  }

  LOBYTE(v5) = 1;
LABEL_13:
  v7 = *(*(this + 3) + 176);
  v8 = (*(**(this + 30) + 560))(*(this + 30), 0);
  v12 = 0;
  v36 = v8;
  v37 = v9;
  v13 = &v36;
  v38[0] = v10;
  v38[1] = v11;
  v14 = 1;
  do
  {
    v15 = vabds_f32(*v13, *(this + v12 + 82));
    if ((v14 & 1) == 0)
    {
      break;
    }

    v14 = 0;
    v13 = &v37;
    v12 = 1;
  }

  while (v15 < v7);
  if (v15 >= v7)
  {
    goto LABEL_21;
  }

  v16 = 0;
  v17 = 1;
  do
  {
    v18 = vabds_f32(*&v38[v16], *(this + v16 + 84));
    if ((v17 & 1) == 0)
    {
      break;
    }

    v17 = 0;
    v16 = 1;
  }

  while (v18 < v7);
  if (v18 >= v7)
  {
LABEL_21:
    *(this + 82) = v8;
    *(this + 83) = v9;
    *(this + 84) = v10;
    LOBYTE(v5) = 1;
    *(this + 85) = v11;
  }

  v19 = (*(**(this + 30) + 576))(*(this + 30));
  v23 = 0;
  v33 = v19;
  v34 = v20;
  v24 = &v33;
  v35[0] = v21;
  v35[1] = v22;
  v25 = 1;
  do
  {
    v26 = vabds_f32(*v24, *(this + v23 + 86));
    if ((v25 & 1) == 0)
    {
      break;
    }

    v25 = 0;
    v24 = &v34;
    v23 = 1;
  }

  while (v26 < v7);
  if (v26 >= v7)
  {
    goto LABEL_32;
  }

  v27 = 0;
  v28 = 1;
  do
  {
    v29 = vabds_f32(*&v35[v27], *(this + v27 + 88));
    if ((v28 & 1) == 0)
    {
      break;
    }

    v28 = 0;
    v27 = 1;
  }

  while (v29 < v7);
  if (v29 >= v7)
  {
LABEL_32:
    *(this + 86) = v19;
    *(this + 87) = v20;
    *(this + 88) = v21;
    *(this + 89) = v22;
  }

  else if ((v5 & 1) == 0)
  {
    return;
  }

LABEL_33:
  v30 = *(this + 3);
  if (*(this + 30) == *(v30 + 3544))
  {
    v31 = *(v30 + 136);
    if (v31)
    {
      v32 = *(v31 + 184);
      if (v32)
      {

        std::function<void ()(md::LabelManager *,std::shared_ptr<md::LabelMarker> const&)>::operator()(v32, v30);
      }
    }
  }
}

uint64_t *md::StandardLabeler::setPreviouslySelectedLabelMarker(uint64_t *result, uint64_t *a2)
{
  if (*a2 != result[32])
  {
    v3 = result;
    result = (*(*result + 208))(result);
    v4 = *a2;
    if (*a2)
    {
      if (v4 != v3[30] && !*(v4 + 224))
      {
        if ((v5 = *(*(v4 + 288) + 8), (v5[144] & 1) == 0) && (result = (*(*v5 + 328))(*(*(v4 + 288) + 8)), !result) || v5[145] == 1)
        {
          v7 = *a2;
          v6 = a2[1];
          if (v6)
          {
            atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
          }

          v8 = v3[33];
          v3[32] = v7;
          v3[33] = v6;
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
          }

          md::LabelPool::setLocalLabel(v3[6], (v3[6] + 720), (v4 + 288));
          v9 = *(v4 + 288);
          v10 = v3[3];

          return md::Label::setPreviouslySelected(v9, v10, 1);
        }
      }
    }
  }

  return result;
}

void md::StandardLabeler::getLabelMarkers(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v16, *(a1[3] + 8), *(a1[3] + 16));
  v3 = a1[13];
  for (i = a1[14]; v3 != i; v3 += 2)
  {
    v5 = a1[3];
    v6 = *(*v3 + 272);
    if (v6)
    {
      (*(*v6 + 264))(v6);
    }

    else
    {
      v9 = -8388609;
      v7 = 2139095039;
      v8 = 2139095039;
      v10 = -8388609;
    }

    v11 = 0;
    v18 = __PAIR64__(v8, v7);
    v12 = &v18;
    v13 = 1;
    v19[0] = v9;
    v19[1] = v10;
    while (*(v5 + 1512 + 4 * v11) > *v12 && *(v5 + 1504 + 4 * v11) < *&v19[v11])
    {
      v14 = v13;
      v13 = 0;
      v12 = &v18 + 1;
      v11 = 1;
      if ((v14 & 1) == 0)
      {
        v15 = *v3;
        if ((*(*v3 + 1152) & 0xFD) == 1)
        {
          v18 = 0;
          LOBYTE(v19[0]) = 0;
          v23 = 0;
          v25 = 0;
          v26 = 0;
          v24 = 0;
          v28 = 0;
          v29 = 0;
          v27 = 0;
          v20 = 0u;
          v21 = 0u;
          v22 = 0;
          md::Label::populateFeatureInfo(v15, &v18, 0);
          operator new();
        }

        break;
      }
    }
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }
}

void sub_1B2C1B290(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  if (a37 < 0)
  {
    v40 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v40, a32);
  }

  if (a30 < 0)
  {
    v41 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v41, a25);
  }

  std::vector<unsigned long long,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v38 + 32));
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::LabelMarker>,geo::allocator_adapter<std::shared_ptr<md::LabelMarker>,mdm::zone_mallocator>>::push_back[abi:nn200100](std::__shared_weak_count *result, __int128 *a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = (shared_owners - result->__vftable) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = shared_weak_owners - result->__vftable;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v23 = result + 1;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelMarker>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
    v17 = v3->__shared_owners_ - v3->__vftable;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v3->__vftable, v17);
    v19 = v3->__vftable;
    v3->__vftable = v18;
    v3->__shared_owners_ = v7;
    v20 = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v16;
    v21.__shared_weak_owners_ = v19;
    v22 = v20;
    v21.__vftable = v19;
    v21.__shared_owners_ = v19;
    result = std::__split_buffer<std::shared_ptr<md::LabelMarker>,geo::allocator_adapter<std::shared_ptr<md::LabelMarker>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *shared_owners = *a2;
    *(shared_owners + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = shared_owners + 16;
  }

  v3->__shared_owners_ = v7;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelMarker>>(uint64_t a1, uint64_t a2)
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

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<md::LabelMarker>,geo::allocator_adapter<std::shared_ptr<md::LabelMarker>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 16;
    a1 = *(shared_weak_owners - 8);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 16;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMarker>>(v5, v4);
  }

  return v1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelMarker>>(uint64_t a1, void *a2)
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

uint64_t md::StandardLabeler::isLabelHitAtPixel(uint64_t a1, uint64_t a2, float *a3, int a4)
{
  if (*(a2 + 224))
  {
    return 0;
  }

  v18 = v7;
  v19 = v6;
  v20 = v4;
  v21 = v5;
  v11 = *(*(a1 + 24) + 176);
  v12 = *(a2 + 288);
  if (a4)
  {
    v13 = 15.0;
    if (*(v12 + 1156))
    {
      v14 = 0;
    }

    else
    {
      result = *(v12 + 272);
      if (!result)
      {
        return result;
      }

      result = (*(*result + 648))(result);
      if (!result)
      {
        return result;
      }

      v12 = *(a2 + 288);
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
    v13 = 22.0;
  }

  v17 = 0;
  v15 = *a3;
  v16 = a3[1];
  *(v12 + 1292) = 0;
  result = *(v12 + 272);
  if (result)
  {
    result = (*(*result + 640))(result, &v17, v14, v15, v16, v13 * v11);
    if (result)
    {
      *(v12 + 1292) = (*(*result + 664))(result);
      return 1;
    }
  }

  return result;
}

void md::StandardLabeler::roadMarkerForSelectionAtPixel(std::__shared_weak_count *a1@<X0>, float *a2@<X1>, uint64_t *a3@<X8>)
{
  v15[9] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  md::StandardLabeler::labelAtPixel(&v13, a1, a2, 0, v15);
  if (!v13)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = -1;
    v11 = -1;
    v12 = 0;
    md::StandardLabeler::hitRoadFeatureAtPixel(a1, a2, &v13, &v7, 0);
    if (v7)
    {
      std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v6, a1[1].~__shared_weak_count_0, a1[1].__on_zero_shared);
      operator new();
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }
}

void sub_1B2C1B9D8(mdm::zone_mallocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (*(v20 - 81) < 0)
  {
    v22 = *(v20 - 104);
    v23 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v23, v22);
  }

  if (*(v18 + 119) < 0)
  {
    v24 = v19[1];
    v25 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v25, v24);
  }

  v26 = *v19;
  *v19 = 0;
  if (v26)
  {
    std::default_delete<md::MarkerFeatureHandle>::operator()[abi:nn200100](v26);
  }

  v27 = *(v18 + 80);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(v18 + 64);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  v29 = *(v18 + 40);
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v30);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void md::StandardLabeler::hitRoadFeatureAtPixel(std::__shared_weak_count *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a1;
  v76 = *MEMORY[0x1E69E9840];
  v71 = 0uLL;
  v72 = 0;
  if (a5 == 1)
  {
    v6 = BYTE4(a1[1].__vftable[92].~__shared_weak_count);
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[2].__vftable;
  on_zero_shared = v7->__on_zero_shared;
  get_deleter = v7->__get_deleter;
  if (v6)
  {
    if (on_zero_shared != get_deleter)
    {
      *(&v74 + 1) = 0;
      operator new();
    }
  }

  else
  {
    for (; on_zero_shared != get_deleter; on_zero_shared = (on_zero_shared + 16))
    {
      v10 = a1[1].__vftable;
      if ((BYTE5(v10[91].__on_zero_shared_weak) & 1) == 0)
      {
        *(&v74 + 1) = 0;
        operator new();
      }

      if ((HIBYTE(v10[91].__on_zero_shared_weak) & 1) == 0)
      {
        *(&v74 + 1) = 0;
        operator new();
      }
    }
  }

  v11 = *(&v71 + 1);
  v12 = v71;
  i = a4;
  if (*(&v71 + 1) == v71)
  {
    goto LABEL_95;
  }

  if (!a5)
  {
    v43 = v71;
    do
    {
      if (v43[5] < *(v12 + 5))
      {
        v12 = v43;
      }

      v43 += 6;
    }

    while (v43 != *(&v71 + 1));
    v45 = *v12;
    v44 = v12[1];
    if (v44)
    {
      atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
    }

    v46 = *(a4 + 8);
    *a4 = v45;
    *(a4 + 8) = v44;
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v46);
    }

    *(a4 + 16) = *(v12 + 4);
    v47 = *(v12 + 20);
    *(a4 + 36) = *(v12 + 9);
    *(a4 + 20) = v47;
    goto LABEL_95;
  }

  v14 = 0;
  v68 = 0;
  v69 = 0uLL;
  do
  {
    if ((*(*v12 + 148) & 0xFE) == 4)
    {
      if (v14 >= *(&v69 + 1))
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v68) >> 4);
        v18 = v17 + 1;
        if (v17 + 1 > 0x555555555555555)
        {
          goto LABEL_104;
        }

        if (0x5555555555555556 * ((*(&v69 + 1) - v68) >> 4) > v18)
        {
          v18 = 0x5555555555555556 * ((*(&v69 + 1) - v68) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(&v69 + 1) - v68) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v19 = 0x555555555555555;
        }

        else
        {
          v19 = v18;
        }

        v75 = &v70;
        if (v19)
        {
          v20 = mdm::zone_mallocator::instance(a1);
          v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureHitResult>(v20, v19);
        }

        else
        {
          v21 = 0;
        }

        v22 = &v21[48 * v17];
        *&v73 = v21;
        *(&v73 + 1) = v22;
        *(&v74 + 1) = &v21[48 * v19];
        *v22 = *v12;
        v23 = v12[1];
        *(v22 + 1) = v23;
        if (v23)
        {
          atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
        }

        v24 = *(v12 + 1);
        *(v22 + 4) = v12[4];
        *(v22 + 1) = v24;
        *(v22 + 5) = v12[5];
        *&v74 = v22 + 48;
        v25 = (v68 + v22 - v69);
        std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>,md::LabelFeatureHitResult*>(v68, v69, v25);
        v26 = v68;
        v27 = *(&v69 + 1);
        v68 = v25;
        v67 = v74;
        v69 = v74;
        *&v74 = v26;
        *(&v74 + 1) = v27;
        *&v73 = v26;
        *(&v73 + 1) = v26;
        a1 = std::__split_buffer<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator> &>::~__split_buffer(&v73);
        v14 = v67;
      }

      else
      {
        *v14 = *v12;
        v15 = v12[1];
        *(v14 + 8) = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v16 = *(v12 + 1);
        *(v14 + 32) = v12[4];
        *(v14 + 16) = v16;
        *(v14 + 40) = v12[5];
        v14 += 48;
      }

      *&v69 = v14;
    }

    v12 += 6;
  }

  while (v12 != v11);
  v28 = v68;
  if (v68 == v14)
  {
    j = *(&v71 + 1);
  }

  else
  {
    v29 = v14 - v68;
    v30 = v72;
    v31 = v71;
    if (v72 - v71 >= v14 - v68)
    {
      v48 = *(&v71 + 1) - v71;
      if (*(&v71 + 1) - v71 >= v29)
      {
        j = std::__copy_impl::operator()[abi:nn200100]<md::LabelFeatureHitResult *,md::LabelFeatureHitResult *,md::LabelFeatureHitResult *>(v68, v14, v71);
        v63 = *(&v71 + 1);
        for (i = a4; v63 != j; v63 -= 48)
        {
          v64 = *(v63 - 40);
          if (v64)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v64);
          }
        }

        *(&v71 + 1) = j;
        goto LABEL_73;
      }

      v49 = v68 + v48;
      std::__copy_impl::operator()[abi:nn200100]<md::LabelFeatureHitResult *,md::LabelFeatureHitResult *,md::LabelFeatureHitResult *>(v68, (v68 + v48), v71);
      for (j = *(&v71 + 1); v49 != v14; j += 48)
      {
        *j = *v49;
        v50 = *(v49 + 1);
        *(j + 8) = v50;
        if (v50)
        {
          atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
        }

        v51 = *(v49 + 1);
        *(j + 32) = *(v49 + 4);
        *(j + 16) = v51;
        *(j + 40) = *(v49 + 5);
        v49 += 48;
      }
    }

    else
    {
      v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 4);
      if (v71)
      {
        v33 = *(&v71 + 1);
        v34 = v71;
        if (*(&v71 + 1) != v71)
        {
          do
          {
            a1 = *(v33 - 40);
            if (a1)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](a1);
            }

            v33 -= 48;
          }

          while (v33 != v31);
          v34 = v71;
        }

        *(&v71 + 1) = v31;
        v35 = mdm::zone_mallocator::instance(a1);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureHitResult>(v35, v34);
        v30 = 0;
        v71 = 0uLL;
        v72 = 0;
      }

      if (v32 > 0x555555555555555)
      {
        goto LABEL_104;
      }

      v36 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 4);
      v37 = 2 * v36;
      if (2 * v36 <= v32)
      {
        v37 = v32;
      }

      v38 = v36 >= 0x2AAAAAAAAAAAAAALL ? 0x555555555555555 : v37;
      if (v38 > 0x555555555555555)
      {
LABEL_104:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v39 = mdm::zone_mallocator::instance(a1);
      j = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureHitResult>(v39, v38);
      *&v71 = j;
      *(&v71 + 1) = j;
      v72 = j + 48 * v38;
      do
      {
        *j = *v28;
        v41 = v28[1];
        *(j + 8) = v41;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        v42 = *(v28 + 1);
        *(j + 32) = v28[4];
        *(j + 16) = v42;
        *(j + 40) = v28[5];
        v28 += 6;
        j += 48;
      }

      while (v28 != v14);
    }

    *(&v71 + 1) = j;
  }

  i = a4;
LABEL_73:
  v52 = v71;
  v53 = v71;
  if (v71 != j)
  {
    v53 = v71;
    while (*v53 != v5[8].__shared_owners_ || *(v53 + 16) != LODWORD(v5[9].__vftable) || *(v53 + 20) != HIDWORD(v5[9].__vftable) || *(v53 + 24) != LODWORD(v5[9].__shared_owners_) || *(v53 + 28) != HIDWORD(v5[9].__shared_owners_))
    {
      v53 += 48;
      if (v53 == j)
      {
        goto LABEL_89;
      }
    }
  }

  if (v53 == j || v53 + 48 == j)
  {
LABEL_89:
    v60 = *v71;
    v59 = *(v71 + 8);
    if (v59)
    {
      atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
    }

    v61 = *(i + 8);
    *i = v60;
    *(i + 8) = v59;
    if (v61)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v61);
    }

    *(i + 16) = *(v52 + 16);
    v57 = *(v52 + 20);
    v58 = *(v52 + 36);
  }

  else
  {
    v55 = *(v53 + 48);
    v54 = *(v53 + 56);
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = *(i + 8);
    *i = v55;
    *(i + 8) = v54;
    if (v56)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v56);
    }

    *(i + 16) = *(v53 + 64);
    v57 = *(v53 + 68);
    v58 = *(v53 + 84);
  }

  *(i + 36) = v58;
  *(i + 20) = v57;
  *&v73 = &v68;
  std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v73);
LABEL_95:
  if (*i)
  {
    md::LabelPool::labelForFeature(&v73, v5[2].__vftable, v5[1].__vftable, i, (i + 16), 0);
    v62 = *(a3 + 8);
    *a3 = v73;
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v62);
    }
  }

  *&v73 = &v71;
  std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v73);
}

void sub_1B2C1C650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char **a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  a15 = &a17;
  std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a15);
  a17 = &a21;
  std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a17);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::LabelFeatureMarker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E3A30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureHitResult>(v5, v3);
  }
}

void std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 40);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureHitResult>(uint64_t a1, void *a2)
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

uint64_t std::__copy_impl::operator()[abi:nn200100]<md::LabelFeatureHitResult *,md::LabelFeatureHitResult *,md::LabelFeatureHitResult *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(a3 + 8);
      *a3 = v7;
      *(a3 + 8) = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      *(a3 + 16) = *(v5 + 4);
      v9 = *(v5 + 20);
      *(a3 + 36) = *(v5 + 9);
      *(a3 + 20) = v9;
      *(a3 + 40) = v5[5];
      v5 += 6;
      a3 += 48;
    }

    while (v5 != a2);
  }

  return a3;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureHitResult>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 48 * a2, 0x10600400E78B8FBuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>,md::LabelFeatureHitResult*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *v5 = 0;
      *(v5 + 8) = 0;
      v6 = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 16) = v6;
      *(a3 + 40) = *(v5 + 40);
      v5 += 48;
      a3 += 48;
    }

    while (v5 != a2);
    do
    {
      v7 = *(v4 + 8);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v4 += 48;
    }

    while (v4 != a2);
  }
}

std::__shared_weak_count *std::__split_buffer<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 48;
    a1 = *(shared_weak_owners - 40);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 48;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureHitResult>(v5, v4);
  }

  return v1;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<md::LabelFeature> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_5,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_5>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1CC40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(void *a1, uint64_t a2, float *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v4;
  }

  v23 = a1 + 3;
  if (v8)
  {
    v9 = mdm::zone_mallocator::instance(a1);
    v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeatureHitResult>(v9, v8);
  }

  else
  {
    v10 = 0;
  }

  *(&v22 + 1) = &v10[48 * v8];
  v11 = *a3;
  v12 = *(a2 + 8);
  v13 = &v10[48 * v3];
  *v13 = *a2;
  *(v13 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a2 + 16);
  *(v13 + 4) = *(a2 + 32);
  *(v13 + 1) = v14;
  *(v13 + 5) = v11;
  *&v22 = v13 + 48;
  v15 = a1[1];
  v16 = &v13[*a1 - v15];
  std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>,md::LabelFeatureHitResult*>(*a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v22;
  *(a1 + 1) = v22;
  *&v22 = v17;
  *(&v22 + 1) = v18;
  v21[0] = v17;
  v21[1] = v17;
  std::__split_buffer<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator> &>::~__split_buffer(v21);
  return v20;
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_5,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_5>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3BD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_4,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_4>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1CF84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_4,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_4>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3B88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_3,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_3>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1D17C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_3,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_3>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3B40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_2,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_2>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1D374(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_2,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_2>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3AF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_1,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_1>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1D56C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_1,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_1>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3AB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_0,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_0>,void ()(std::shared_ptr<md::LabelFeature> const&)>::operator()(uint64_t a1, void *a2)
{
  v14 = xmmword_1B33B0640;
  v15 = 0;
  v13 = **(a1 + 8);
  if ((*(**a2 + 440))())
  {
    v4 = *(a1 + 32);
    v5 = *a2;
    v6 = a2[1];
    v10[0] = v5;
    v10[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v14;
    v12 = v15;
    v7 = v4[1];
    if (v7 >= v4[2])
    {
      v9 = std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>>::__emplace_back_slow_path<md::LabelFeatureSelection,float &>(v4, v10, &v13);
    }

    else
    {
      v8 = v13;
      *v7 = v5;
      *(v7 + 8) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = v11;
      *(v7 + 32) = v12;
      *(v7 + 40) = v8;
      v9 = v7 + 48;
    }

    v4[1] = v9;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }
}

void sub_1B2C1D764(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_0,std::allocator<md::StandardLabeler::hitLineFeaturesAtPixel(gm::Matrix<float,2,1> const&,std::vector<md::LabelFeatureHitResult,geo::allocator_adapter<md::LabelFeatureHitResult,mdm::zone_mallocator>> &,BOOL)::$_0>,void ()(std::shared_ptr<md::LabelFeature> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29E3A68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::StandardLabeler::adoptSelectedLabelMarker(void *a1, void *a2)
{
  v13[8] = *MEMORY[0x1E69E9840];
  if (*(*a2 + 224))
  {
    return 0;
  }

  v5 = a1[38];
  a1[37] = 0;
  a1[38] = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a1[40];
  a1[39] = 0;
  a1[40] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = a1[35];
  if (v7)
  {
    a1[35] = 0;
  }

  v8 = (*(**a2 + 424))(*a2);
  if (v8)
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset((a1 + 34), v8);
    v10 = *a2;
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = a1[38];
    v2 = 1;
    a1[37] = v10;
    a1[38] = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }
  }

  else
  {
    if (*(*a2 + 225) == 1 || (*(**a2 + 160))(*a2))
    {
      _ZNSt3__115allocate_sharedB8nn200100IN2md25LabelExternalPointFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v13);
    }

    v2 = 0;
  }

  return v2;
}

void sub_1B2C1DE0C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v5);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = *(a1 + 8);
  *(a1 + 8) = v7;
}

void std::__shared_ptr_emplace<md::PointLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A2C3F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TrafficIncidentLabelFeature>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A05878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelFeature>>(uint64_t a1, void *a2)
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

char *std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100](mdm::zone_mallocator *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v4 = mdm::zone_mallocator::instance(a1);
  result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(v4, a2);
  *a1 = result;
  *(a1 + 1) = result;
  *(a1 + 2) = &result[16 * a2];
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelFeature>>(uint64_t a1, uint64_t a2)
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

uint64_t md::StandardLabeler::releaseAdoptedSelectedLabelMarker(md::StandardLabeler *this)
{
  v2 = *(this + 30);
  if (v2)
  {
    atomic_store(0, (*(v2 + 288) + 1331));
  }

  v4 = 0;
  v5 = 0;
  (*(*this + 184))(this, &v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return (*(*this + 208))(this);
}

void sub_1B2C1E23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::ARWalkingFeatureSet::~ARWalkingFeatureSet(md::ARWalkingFeatureSet *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    v3 = *(this + 37);
    v4 = *(this + 36);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *(this + 36);
    }

    *(this + 37) = v2;
    operator delete(v4);
  }

  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 248);
  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::~__hash_table(this + 208);
  v6 = (this + 176);
  std::vector<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 144);
  std::vector<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 112);
  std::vector<std::shared_ptr<md::ARWalkingContinueLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingContinueLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v6 = (this + 80);
  std::vector<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 48));
  v6 = (this + 24);
  std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  *this = &unk_1F2A3ED40;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(v5, v3);
  }
}

void std::vector<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(v5, v3);
  }
}

void std::vector<std::shared_ptr<md::ARWalkingContinueLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingContinueLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(v5, v3);
  }
}

void std::vector<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v3 = **a1;
    v5 = mdm::zone_mallocator::instance(v4);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(v5, v3);
  }
}

void std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 24;
        std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3ED40;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A3ED40;

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(uint64_t a1, void *a2)
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

void std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingContinueLabelFeature> const,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,0>((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingContinueLabelFeature> const,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

md::HighPrecisionAltitudeRequestor *std::unique_ptr<md::HighPrecisionAltitudeRequestor>::reset[abi:nn200100](md::HighPrecisionAltitudeRequestor **a1, md::HighPrecisionAltitudeRequestor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    md::HighPrecisionAltitudeRequestor::~HighPrecisionAltitudeRequestor(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<md::VLAltitudeRequest> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__hash_table<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(uint64_t a1, void *a2)
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

void std::__hash_table<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,std::hash<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::equal_to<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,std::allocator<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>>::__deallocate_node(void (***a1)(void))
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      (*v1[2])();
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__function::__func<md::ARWalkingSupport::ARWalkingSupport(md::LabelManager *)::$_0,std::allocator<md::ARWalkingSupport::ARWalkingSupport(md::LabelManager *)::$_0>,void ()(std::shared_ptr<md::VLAltitudeRequest> const&)>::operator()(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = [[VKARWalkingElevationRequestFailureInfo alloc] initWithReason:1];
  v3 = *(v1 + 136);
  v7 = v2;
  if (v3 && *(v3 + 312))
  {
    v4 = v2;
    v8 = v4;
    v5 = *(v3 + 312);
    if (!v5)
    {
      v6 = std::__throw_bad_function_call[abi:nn200100]();

      _Unwind_Resume(v6);
    }

    (*(*v5 + 48))(v5, &v8);
  }
}

uint64_t std::__function::__func<md::ARWalkingSupport::ARWalkingSupport(md::LabelManager *)::$_0,std::allocator<md::ARWalkingSupport::ARWalkingSupport(md::LabelManager *)::$_0>,void ()(std::shared_ptr<md::VLAltitudeRequest> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E3C38;
  a2[1] = v2;
  return result;
}

void md::ARWalkingSupport::setMaxDelayPostLocalizationWithoutExistingFeatures(md::ARWalkingSupport *this, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 4) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "maxDelayPostLocalizationWithoutExistingFeatures:%f", &v5, 0xCu);
    }

    *(this + 4) = a2;
  }
}

id GEOGetVectorKitARWalkingSupportLog(void)
{
  if (GEOGetVectorKitARWalkingSupportLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitARWalkingSupportLog(void)::onceToken, &__block_literal_global_338);
  }

  v1 = GEOGetVectorKitARWalkingSupportLog(void)::log;

  return v1;
}

void ___ZL34GEOGetVectorKitARWalkingSupportLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "ARWalkingSupport");
  v1 = GEOGetVectorKitARWalkingSupportLog(void)::log;
  GEOGetVectorKitARWalkingSupportLog(void)::log = v0;
}

void md::ARWalkingSupport::setMaxDelayPostLocalizationWithExistingFeatures(md::ARWalkingSupport *this, double a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 5) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "maxDelayPostLocalizationWithExistingFeatures:%f", &v5, 0xCu);
    }

    *(this + 5) = a2;
  }
}

void md::ARWalkingSupport::shouldUseHighPrecisionAltitude(uint64_t this, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 9) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "Should use high precision altitude:%d", v5, 8u);
    }

    *(this + 9) = a2;
    md::ARWalkingSupport::setARWalkingFeatures(this, *(this + 448), 1);
  }
}

void md::ARWalkingSupport::setARWalkingFeatures(int8x8_t *this, VKARWalkingFeatureSet *a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if ((a3 & 1) != 0 || this[56] != v5)
  {
    if (this[11].i8[0] == 1)
    {
      geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v12, &this[7]);
    }

    else
    {
      v12 = &unk_1F2A3ED40;
      v13 = 0;
    }

    geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v9, v6);
    v11 = a3;
    if (this[11].i8[0] == 1)
    {
      geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&this[7], v10);
      v7 = v11;
    }

    else
    {
      geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&this[7], &v9);
      v7 = v11;
      this[11].i8[0] = 1;
    }

    this[10].i8[0] = v7;
    v9 = &unk_1F2A3ED40;

    md::ARWalkingSupport::updateFeatureSetState(this, v13, 5);
    if ((this[11].i8[0] & 1) == 0)
    {
      v8 = std::__throw_bad_optional_access[abi:nn200100]();
      v12 = &unk_1F2A3ED40;

      _Unwind_Resume(v8);
    }

    md::ARWalkingSupport::updateFeatureSetState(this, *&this[8], 1);
    v12 = &unk_1F2A3ED40;
  }
}

void md::ARWalkingSupport::updateFeatureSetState(int8x8_t *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (!v4 || [v4 state] == a3)
  {
    goto LABEL_25;
  }

  v6 = GEOGetVectorKitARWalkingSupportLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(&off_1E7B2FA68 + a3 - 1);
    buf[0] = 138412546;
    *&buf[1] = v7;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "Updating feature set state to %@ - %@", buf, 0x16u);
  }

  [v5 setState:a3];
  geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v24, v5);
  v8 = [v25 hash];
  v9 = v8;
  v10 = a1[114];
  if (!*&v10)
  {
    goto LABEL_23;
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

  v14 = *(*&a1[113] + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
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
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  v17 = v15[3];
  v18 = v25;
  v19 = v17;
  v20 = v18;
  v21 = v20;
  if (v19 != v20)
  {
    v22 = [v19 isEqual:v20];

    if (v22)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_24:
  v24 = &unk_1F2A3ED40;

LABEL_25:
}

void sub_1B2C1F738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::unique_ptr<std::__hash_node<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>>>>::~unique_ptr[abi:nn200100](va);

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*v2[2])();
    }

    operator delete(v2);
  }

  return a1;
}

void md::ARWalkingSupport::setHighPrecisionAltitudeDistanceThreshold(uint64_t a1, double *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a2 != *(a1 + 16))
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *a2;
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "high precision altitude distance threshold:%f", &v7, 0xCu);
    }

    v6 = *a2;
    *(a1 + 16) = *a2;
    *(a1 + 24) = v6 * v6;
    md::ARWalkingSupport::setARWalkingFeatures(a1, *(a1 + 448), 1);
  }
}

void md::ARWalkingSupport::setHighPrecisionZLevel(md::ARWalkingSupport *this, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(this + 48) != a2)
  {
    v4 = GEOGetVectorKitARWalkingSupportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "high precision zLevel:%d", v5, 8u);
    }

    *(this + 48) = a2;
    md::ARWalkingSupport::setARWalkingFeatures(this, *(this + 56), 1);
  }
}

void md::ARWalkingSupport::prepareContinueFeaturePlacementsForRegion(uint64_t a1, uint64_t **a2, uint64_t a3, void *a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v55 = (*a2)[25];
  md::LabelExternalPointFeature::incident(v55);
  objc_claimAutoreleasedReturnValue();
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v8 = (*a2)[38];
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = md::LabelPoint::mercatorPoint(*(v8 + 16));
      if (md::MultiRectRegion::contains(a3, v10))
      {
        v11 = *(v8 + 16);
        if (v9 >= v63)
        {
          v9 = std::vector<md::LabelIdentifier>::__emplace_back_slow_path<md::LabelIdentifier const&>(&v61, (v11 + 160));
        }

        else
        {
          *v9++ = *(v11 + 160);
        }

        v62 = v9;
      }

      v8 = *v8;
    }

    while (v8);
    v12 = v61;
    if (v61 != v9)
    {
      v54 = a3;
      v13 = v61;
      v56 = a1;
      v57 = v61;
      do
      {
        v14 = *v13;
        v60 = *v13;
        v15 = *a2;
        v16 = (*a2)[34];
        if (!v16)
        {
          goto LABEL_21;
        }

        v17 = v15 + 34;
        do
        {
          v18 = *(v16 + 32);
          v19 = v18 >= v14;
          v20 = v18 < v14;
          if (v19)
          {
            v17 = v16;
          }

          v16 = *(v16 + 8 * v20);
        }

        while (v16);
        if (v17 == v15 + 34 || *(v17 + 8) > v14 || (v21 = v17[5]) == 0 || (*(v21 + 136) & 1) == 0)
        {
LABEL_21:
          if (*(a1 + 9) == 1)
          {
            v22 = (*(*v15 + 112))(v15, &v60);
            *v64 = *v22;
            *&v64[16] = *(v22 + 16);
            *v65 = *(v22 + 24);
            *&v65[16] = *(v22 + 40);
            *&v65[19] = *(v22 + 43);
            v23 = *(a1 + 776);
            md::LabelPoint::coordinate(&buf, v64);
            *&v74.__r_.__value_.__l.__data_ = *&buf.__r_.__value_.__l.__data_;
            md::HighPrecisionAltitudeRequestor::requestAltitude(&v58, v23, &v74);
            v24 = v58;
            if (v58)
            {
              v25 = a4[1];
              if (!v25)
              {
                goto LABEL_46;
              }

              v26 = vcnt_s8(v25);
              v26.i16[0] = vaddlv_u8(v26);
              if (v26.u32[0] > 1uLL)
              {
                v27 = v60;
                if (v25 <= v60)
                {
                  v27 = v60 % v25;
                }
              }

              else
              {
                v27 = (v25 - 1) & v60;
              }

              v31 = *(*a4 + 8 * v27);
              if (!v31 || (v32 = *v31) == 0)
              {
LABEL_46:
                operator new();
              }

              while (1)
              {
                v33 = v32[1];
                if (v33 == v60)
                {
                  if (*(v32 + 4) == v60)
                  {
                    a1 = v56;
                    v12 = v57;
                    v30 = v59;
                    if (v59)
                    {
                      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v34 = v32[4];
                    v32[3] = v24;
                    v32[4] = v30;
                    if (v34)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
                    }

                    goto LABEL_51;
                  }
                }

                else
                {
                  if (v26.u32[0] > 1uLL)
                  {
                    if (v33 >= v25)
                    {
                      v33 %= v25;
                    }
                  }

                  else
                  {
                    v33 &= v25 - 1;
                  }

                  if (v33 != v27)
                  {
                    goto LABEL_46;
                  }
                }

                v32 = *v32;
                if (!v32)
                {
                  goto LABEL_46;
                }
              }
            }

            v28 = GEOGetVectorKitARWalkingSupportLog();
            v12 = v57;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              md::LabelIdentifier::to_string(&v74, v60);
              v29 = &v74;
              if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v29 = v74.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
              *(buf.__r_.__value_.__r.__words + 4) = v29;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v55;
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
              v76 = "false";
              v77 = 2080;
              v78 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/ARWalkingSupport.mm";
              v79 = 1024;
              v80 = 663;
              _os_log_impl(&dword_1B2754000, v28, OS_LOG_TYPE_ERROR, "Failed to request high precision altitude for placement:%s of Continue %@: Assertion with expression - %s : Failed in file - %s line - %i", &buf, 0x30u);
              if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v74.__r_.__value_.__l.__data_);
              }
            }

            v30 = v59;
LABEL_51:
            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v30);
            }
          }

          else
          {
            *v64 = 0;
            *&v64[8] = 0;
            a3 &= 0xFFFFFFFFFFFFFF00;
            md::ARWalkingContinueLabelFeature::setHighPrecisionAltitudeForPlacement(v15, v14, v64, 0, *&a3);
          }
        }

        ++v13;
      }

      while (v13 != v9);
      a3 = v54;
    }
  }

  else
  {
    v12 = 0;
    v9 = 0;
  }

  if (a4[3])
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v64);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v64[16], "[", 1);
    for (i = a4[2]; i; i = *i)
    {
      md::LabelIdentifier::to_string(&buf, *(i + 4));
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = buf.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v64[16], p_buf, size);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v64[16], ",", 1);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v64[16], "]", 1);
    v38 = GEOGetVectorKitARWalkingSupportLog();
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
LABEL_90:

      *v64 = *MEMORY[0x1E69E54D8];
      v53 = *(MEMORY[0x1E69E54D8] + 72);
      *&v64[*(*v64 - 24)] = *(MEMORY[0x1E69E54D8] + 64);
      *&v64[16] = v53;
      *v65 = MEMORY[0x1E69E5548] + 16;
      if (v70 < 0)
      {
        operator delete(__p);
      }

      *v65 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(&v65[8]);
      std::iostream::~basic_iostream();
      MEMORY[0x1B8C620C0](&v73);
      v12 = v61;
      if (!v61)
      {
        goto LABEL_75;
      }

LABEL_74:
      v62 = v12;
      operator delete(v12);
      goto LABEL_75;
    }

    if ((v72 & 0x10) != 0)
    {
      v50 = v71;
      if (v71 < v68)
      {
        v71 = v68;
        v50 = v68;
      }

      v51 = __src;
    }

    else
    {
      if ((v72 & 8) == 0)
      {
        v39 = 0;
        *(&buf.__r_.__value_.__s + 23) = 0;
LABEL_86:
        buf.__r_.__value_.__s.__data_[v39] = 0;
        v52 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v52 = buf.__r_.__value_.__r.__words[0];
        }

        LODWORD(v74.__r_.__value_.__l.__data_) = 136315394;
        *(v74.__r_.__value_.__r.__words + 4) = v52;
        WORD2(v74.__r_.__value_.__r.__words[1]) = 2112;
        *(&v74.__r_.__value_.__r.__words[1] + 6) = v55;
        _os_log_impl(&dword_1B2754000, v38, OS_LOG_TYPE_INFO, "Requesting high precision altitude for placements:%s of Continue %@", &v74, 0x16u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        goto LABEL_90;
      }

      v51 = *&v65[16];
      v50 = v66;
    }

    v39 = v50 - v51;
    if (v50 - v51 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    if (v39 >= 0x17)
    {
      operator new();
    }

    *(&buf.__r_.__value_.__s + 23) = v50 - v51;
    if (v39)
    {
      memmove(&buf, v51, v39);
    }

    goto LABEL_86;
  }

  v40 = *(a3 + 40);
  v41 = *(a3 + 48);
  v43 = *(a3 + 24);
  v42 = *(a3 + 32);
  v44 = GEOGetVectorKitARWalkingSupportLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = fmod((v43 + (v40 - v43) * 0.5) * 6.28318531, 6.28318531);
    v46 = fmod(v45 + 6.28318531, 6.28318531) * 57.2957795 + -180.0;
    v47 = exp((v42 + (v41 - v42) * 0.5) * 6.28318531 + -3.14159265);
    v48 = atan(v47);
    v49 = *(a3 + 16);
    *v64 = 134219011;
    *&v64[4] = v9 - v12;
    *&v64[12] = 2049;
    *&v64[14] = v48 * 114.591559 + -90.0;
    *&v64[22] = 2049;
    *v65 = v46;
    *&v65[8] = 2048;
    *&v65[10] = v49;
    *&v65[18] = 2112;
    *&v65[20] = v55;
    _os_log_impl(&dword_1B2754000, v44, OS_LOG_TYPE_INFO, "None of the %lu placements in the region(center:%{private}f,%{private}f count:%lu) need high precision altitude for Continue in %@", v64, 0x34u);
  }

  if (v12)
  {
    goto LABEL_74;
  }

LABEL_75:
}

void sub_1B2C20370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  a23 = *MEMORY[0x1E69E54D8];
  v44 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a23 + *(a23 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a25 = v44;
  a26 = MEMORY[0x1E69E5548] + 16;
  if (a39 < 0)
  {
    operator delete(__p);
  }

  a26 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a27);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a42);
  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,std::equal_to<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingContinueLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>>::__emplace_unique_key_args<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<md::ARWalkingContinueLabelFeature> const&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
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

void sub_1B2C207E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

md::LabelPoint *md::LabelPoint::geocentricPoint(md::LabelPoint *this)
{
  if ((*(this + 44) & 1) == 0)
  {
    v2 = *(this + 3) * 6.28318531;
    v3 = exp(*(this + 4) * 6.28318531 + -3.14159265);
    v4 = atan(v3) * 2.0 + -1.57079633;
    v5 = fmod(v2, 6.28318531);
    v6 = fmod(v5 + 6.28318531, 6.28318531) + -3.14159265;
    v7 = __sincos_stret(v4);
    v8 = 6378137.0 / sqrt(v7.__sinval * v7.__sinval * -0.00669437999 + 1.0);
    v9 = __sincos_stret(v6);
    *this = v8 * v7.__cosval * v9.__cosval;
    *(this + 1) = v8 * v7.__cosval * v9.__sinval;
    *(this + 2) = v7.__sinval * 0.99330562 * v8;
    *(this + 44) = 1;
  }

  return this;
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__emplace_unique_key_args<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
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

void sub_1B2C20B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::ARWalkingSupport::updateFeatureSet(md::ARWalkingSupport *this, md::ARWalkingFeatureSet *a2)
{
  v141 = *MEMORY[0x1E69E9840];
  if (*(a2 + 29) + *(a2 + 34))
  {
    v5 = a2;
    md::LabelLayoutContext::mercatorEyePos(*(*this + 424));
    v7 = v6;
    v8 = *(v5 + 33);
    v120 = v5;
    if (v8)
    {
      v119 = 0;
      v9 = (v5 + 248);
      v10 = (v5 + 264);
      v121 = v5 + 72;
      while ((md::HighPrecisionAltitudeRequest::resolveResults(v8[4]) & 1) == 0)
      {
        v22 = *v8;
LABEL_80:
        v8 = v22;
        if (!v22)
        {
          goto LABEL_83;
        }
      }

      v125 = 0;
      v126 = 0;
      v11 = *(v8[2] + 720);
      md::LabelExternalPointFeature::incident(v11);
      objc_claimAutoreleasedReturnValue();
      LOBYTE(__val) = 0;
      v130 = 0;
      v12 = v8[4];
      if (!v12)
      {
        goto LABEL_17;
      }

      *&v2 &= 0xFFFFFFFFFFFFFF00;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v13 == v14)
      {
        goto LABEL_17;
      }

      v15 = 0;
      v16 = 1.79769313e308;
      do
      {
        v17 = *v13++;
        v18 = v17;
        v19 = vabdd_f64(v7, v17);
        if (v15)
        {
          v20 = v15;
        }

        else
        {
          v20 = 1;
        }

        if (v19 < v16)
        {
          v2 = v18;
          v15 = v20;
        }

        v16 = fmin(v19, v16);
      }

      while (v13 != v14);
      if (v15)
      {
        __val = v2;
        v21 = 1;
        v130 = 1;
      }

      else
      {
LABEL_17:
        v21 = 0;
      }

      v23 = GEOGetVectorKitARWalkingSupportLog();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
LABEL_33:

        md::ARWalkingManeuverLabelFeature::updateWithHighPrecisionAltitude(v8[2], &__val, v8[4], v8[5]);
        v29 = v8[2];
        v30 = v8[3];
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v125 = v29;
        v126 = v30;
        v32 = *(v5 + 7);
        v31 = *(v5 + 8);
        if (v32 >= v31)
        {
          v34 = *(v5 + 6);
          v35 = (v32 - v34) >> 3;
          if ((v35 + 1) >> 61)
          {
            goto LABEL_197;
          }

          v36 = v31 - v34;
          v37 = v36 >> 2;
          if (v36 >> 2 <= (v35 + 1))
          {
            v37 = v35 + 1;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF8)
          {
            v38 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v37;
          }

          *v134 = v121;
          if (v38)
          {
            v39 = mdm::zone_mallocator::instance(v28);
            v40 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(v39, v38);
          }

          else
          {
            v40 = 0;
          }

          v42 = &v40[8 * v38];
          v41 = &v40[8 * v35];
          *v41 = v29;
          v33 = v41 + 8;
          v43 = *(v120 + 6);
          v44 = *(v120 + 7) - v43;
          v45 = &v41[-v44];
          memcpy(&v41[-v44], v43, v44);
          v46 = *(v120 + 6);
          *(v120 + 6) = v45;
          *(v120 + 7) = v33;
          v47 = *(v120 + 8);
          *(v120 + 8) = v42;
          v5 = v120;
          *&buf[16] = v46;
          *&buf[24] = v47;
          *buf = v46;
          *&buf[8] = v46;
          std::__split_buffer<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator> &>::~__split_buffer(buf);
        }

        else
        {
          *v32 = v29;
          v33 = v32 + 1;
        }

        *(v5 + 7) = v33;
        v48 = *(v8[2] + 720);
        md::LabelExternalPointFeature::incident(v48);
        objc_claimAutoreleasedReturnValue();
        v124 = v48;
        v49 = geo::linear_map<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>,md::VKARWalkingFeatureEqualTo,std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>,std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>::operator[](v5 + 3, &v124);
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v50 = v49[1];
        *v49 = v29;
        v49[1] = v30;
        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v50);
        }

        md::ARWalkingSupport::addLabelFeature(&v125, v5);
        v51 = *(v5 + 256);
        v52 = v8[1];
        v53 = vcnt_s8(v51);
        v53.i16[0] = vaddlv_u8(v53);
        if (v53.u32[0] > 1uLL)
        {
          if (v52 >= *&v51)
          {
            v52 %= *&v51;
          }
        }

        else
        {
          v52 &= *&v51 - 1;
        }

        v22 = *v8;
        v54 = *(*v9 + 8 * v52);
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54 != v8);
        if (v55 == v10)
        {
          goto LABEL_200;
        }

        v56 = v55[1];
        if (v53.u32[0] > 1uLL)
        {
          if (v56 >= *&v51)
          {
            v56 %= *&v51;
          }
        }

        else
        {
          v56 &= *&v51 - 1;
        }

        v57 = *v8;
        if (v56 != v52)
        {
LABEL_200:
          if (v22)
          {
            v58 = v22[1];
            if (v53.u32[0] > 1uLL)
            {
              if (v58 >= *&v51)
              {
                v58 %= *&v51;
              }
            }

            else
            {
              v58 &= *&v51 - 1;
            }

            v57 = *v8;
            if (v58 == v52)
            {
              goto LABEL_71;
            }
          }

          *(*v9 + 8 * v52) = 0;
          v57 = *v8;
        }

        if (!v57)
        {
LABEL_77:
          *v55 = v57;
          *v8 = 0;
          --*(v5 + 34);
          *buf = v8;
          *&buf[8] = v9;
          buf[16] = 1;
          *&buf[17] = 0;
          *&buf[20] = 0;
          std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::~unique_ptr[abi:nn200100](buf);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v30);
          }

          ++v119;
          goto LABEL_80;
        }

LABEL_71:
        v59 = *(v57 + 8);
        if (v53.u32[0] > 1uLL)
        {
          if (v59 >= *&v51)
          {
            v59 %= *&v51;
          }
        }

        else
        {
          v59 &= *&v51 - 1;
        }

        if (v59 != v52)
        {
          *(*v9 + 8 * v59) = v55;
          v57 = *v8;
        }

        goto LABEL_77;
      }

      v24 = *(v5 + 41);
      v25 = v8[4];
      if (v25)
      {
        md::HighPrecisionAltitudeRequest::to_string(__p, v8[4]);
        if (v128 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        if (v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v26 = "";
        if (v21)
        {
LABEL_24:
          std::to_string(&v132, __val);
          v27 = &v132;
          if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v27 = v132.__r_.__value_.__r.__words[0];
          }

          *buf = 134219010;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = v26;
          *&buf[22] = 2080;
          *&buf[24] = v27;
          *v134 = 2048;
          *&v134[2] = v7;
          v135 = 2112;
          v136 = *&v11;
          _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_INFO, "Updating Maneuver Feature for FeatureSet(version:%llu) with high precision altitude request:(%s) resolvedAltitude:%s eyeAltitude:%f feature:%@", buf, 0x34u);
          if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v132.__r_.__value_.__l.__data_);
          }

          goto LABEL_30;
        }
      }

      *buf = 134219010;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = v26;
      *&buf[22] = 2080;
      *&buf[24] = "NONE";
      *v134 = 2048;
      *&v134[2] = v7;
      v135 = 2112;
      v136 = *&v11;
      _os_log_impl(&dword_1B2754000, v23, OS_LOG_TYPE_INFO, "Updating Maneuver Feature for FeatureSet(version:%llu) with high precision altitude request:(%s) resolvedAltitude:%s eyeAltitude:%f feature:%@", buf, 0x34u);
LABEL_30:
      v5 = v120;
      if (v25 && v128 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_33;
    }

    v119 = 0;
LABEL_83:
    v60 = *(v5 + 28);
    if (v60)
    {
      v116 = (v5 + 224);
      v117 = (v5 + 208);
      while (1)
      {
        v62 = v60[2];
        v61 = v60[3];
        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v118 = v61;
        v63 = v60[6];
        if (v63)
        {
          v64 = 0;
          v123 = v62;
          while (1)
          {
            v65 = (v63 + 3);
            if (md::HighPrecisionAltitudeRequest::resolveResults(v63[3]))
            {
              break;
            }

            v76 = *v63;
LABEL_152:
            v63 = v76;
            if (!v76)
            {
              goto LABEL_155;
            }
          }

          v66 = *&v4 & 0xFFFFFFFFFFFFFF00;
          v67 = *v65;
          if (!*v65 || (*&v3 &= 0xFFFFFFFFFFFFFF00, v68 = v67[2], v69 = v67[3], v68 == v69))
          {
            LOBYTE(v70) = 0;
            goto LABEL_103;
          }

          v70 = 0;
          v71 = 1.79769313e308;
          do
          {
            v72 = *v68++;
            v73 = v72;
            v74 = vabdd_f64(v7, v72);
            if (v70)
            {
              v75 = v70;
            }

            else
            {
              v75 = 1;
            }

            if (v74 < v71)
            {
              v3 = v73;
              v70 = v75;
            }

            v71 = fmin(v74, v71);
          }

          while (v68 != v69);
          v4 = v3;
          if (!v70)
          {
LABEL_103:
            v4 = *&v66;
          }

          v77 = (v63 + 2);
          v78 = *((*(*v62 + 112))(v62, v63 + 2) + 40);
          if (v78 == 3.4028e38)
          {
            std::__throw_bad_optional_access[abi:nn200100]();
LABEL_197:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (v70)
          {
            v2 = v4;
          }

          else
          {
            *&v2 &= 0xFFFFFFFFFFFFFF00;
          }

          md::ARWalkingContinueLabelFeature::setHighPrecisionAltitudeForPlacement(v62, *v77, (v63 + 3), v70 & 1, v2);
          v79 = GEOGetVectorKitARWalkingSupportLog();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            md::LabelIdentifier::to_string(&v132, *v77);
            v80 = &v132;
            if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v80 = v132.__r_.__value_.__r.__words[0];
            }

            v122 = v80;
            v81 = *(v5 + 41);
            v82 = *v65;
            if (*v65)
            {
              md::HighPrecisionAltitudeRequest::to_string(&__val, *v65);
              if (v131 >= 0)
              {
                p_val = &__val;
              }

              else
              {
                p_val = *&__val;
              }
            }

            else
            {
              p_val = "";
            }

            v84 = v78;
            v85 = v123[25];
            md::LabelExternalPointFeature::incident(v85);
            objc_claimAutoreleasedReturnValue();
            *buf = 136316674;
            if (v70)
            {
              v86 = v4;
            }

            else
            {
              v86 = v84;
            }

            *&buf[4] = v122;
            *&buf[12] = 2048;
            *&buf[14] = v81;
            *&buf[22] = 2080;
            *&buf[24] = p_val;
            *v134 = 2048;
            *&v134[2] = v84;
            v135 = 2048;
            v136 = v86;
            v137 = 2048;
            v138 = v7;
            v139 = 2112;
            v140 = v85;
            _os_log_impl(&dword_1B2754000, v79, OS_LOG_TYPE_INFO, "Updating Continue placement:%s for FeatureSet(version:%llu) with high precision altitude request:(%s) previousAltitude:%f resolvedAltitude:%f eyeAltitude:%f feature:%@", buf, 0x48u);
            v5 = v120;
            if (v82 && v131 < 0)
            {
              operator delete(*&__val);
            }

            if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v132.__r_.__value_.__l.__data_);
            }

            v62 = v123;
          }

          v87 = v60[5];
          v88 = v63[1];
          v89 = vcnt_s8(v87);
          v89.i16[0] = vaddlv_u8(v89);
          if (v89.u32[0] > 1uLL)
          {
            if (v88 >= *&v87)
            {
              v88 %= *&v87;
            }
          }

          else
          {
            v88 &= *&v87 - 1;
          }

          v76 = *v63;
          v90 = v60[4];
          v91 = *(v90 + 8 * v88);
          do
          {
            v92 = v91;
            v91 = *v91;
          }

          while (v91 != v63);
          if (v92 == v60 + 6)
          {
            goto LABEL_201;
          }

          v93 = v92[1];
          if (v89.u32[0] > 1uLL)
          {
            if (v93 >= *&v87)
            {
              v93 %= *&v87;
            }
          }

          else
          {
            v93 &= *&v87 - 1;
          }

          v94 = *v63;
          if (v93 == v88)
          {
LABEL_144:
            if (v94)
            {
              goto LABEL_145;
            }
          }

          else
          {
LABEL_201:
            if (!v76)
            {
              goto LABEL_143;
            }

            v95 = v76[1];
            if (v89.u32[0] > 1uLL)
            {
              if (v95 >= *&v87)
              {
                v95 %= *&v87;
              }
            }

            else
            {
              v95 &= *&v87 - 1;
            }

            v94 = *v63;
            if (v95 != v88)
            {
LABEL_143:
              *(v90 + 8 * v88) = 0;
              v94 = *v63;
              goto LABEL_144;
            }

LABEL_145:
            v96 = v94[1];
            if (v89.u32[0] > 1uLL)
            {
              if (v96 >= *&v87)
              {
                v96 %= *&v87;
              }
            }

            else
            {
              v96 &= *&v87 - 1;
            }

            if (v96 != v88)
            {
              *(v60[4] + 8 * v96) = v92;
              v94 = *v63;
            }
          }

          *v92 = v94;
          *v63 = 0;
          --v60[7];
          std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>::operator()[abi:nn200100](1, v63);
          ++v64;
          goto LABEL_152;
        }

        v64 = 0;
LABEL_155:
        if (!v60[7])
        {
          break;
        }

        v97 = v64;
        v98 = *v60;
LABEL_185:
        if (v118)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v118);
        }

        v119 += v97;
        v60 = v98;
        if (!v98)
        {
          goto LABEL_188;
        }
      }

      v99 = *(v5 + 216);
      v100 = v60[1];
      v101 = vcnt_s8(v99);
      v101.i16[0] = vaddlv_u8(v101);
      if (v101.u32[0] > 1uLL)
      {
        if (v100 >= *&v99)
        {
          v100 %= *&v99;
        }
      }

      else
      {
        v100 &= *&v99 - 1;
      }

      v98 = *v60;
      v102 = *(*v117 + 8 * v100);
      do
      {
        v103 = v102;
        v102 = *v102;
      }

      while (v102 != v60);
      if (v103 == v116)
      {
        goto LABEL_202;
      }

      v104 = v103[1];
      if (v101.u32[0] > 1uLL)
      {
        if (v104 >= *&v99)
        {
          v104 %= *&v99;
        }
      }

      else
      {
        v104 &= *&v99 - 1;
      }

      v105 = *v60;
      if (v104 != v100)
      {
LABEL_202:
        if (v98)
        {
          v106 = v98[1];
          if (v101.u32[0] > 1uLL)
          {
            if (v106 >= *&v99)
            {
              v106 %= *&v99;
            }
          }

          else
          {
            v106 &= *&v99 - 1;
          }

          v105 = *v60;
          if (v106 == v100)
          {
            goto LABEL_177;
          }
        }

        *(*v117 + 8 * v100) = 0;
        v105 = *v60;
      }

      if (!v105)
      {
        v97 = v64;
LABEL_184:
        *v103 = v105;
        *v60 = 0;
        --*(v5 + 29);
        *buf = v60;
        *&buf[8] = v117;
        buf[16] = 1;
        *&buf[17] = 0;
        *&buf[20] = 0;
        std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>>>>::~unique_ptr[abi:nn200100](buf);
        goto LABEL_185;
      }

LABEL_177:
      v107 = v105[1];
      if (v101.u32[0] > 1uLL)
      {
        if (v107 >= *&v99)
        {
          v107 %= *&v99;
        }
      }

      else
      {
        v107 &= *&v99 - 1;
      }

      v97 = v64;
      if (v107 != v100)
      {
        *(*v117 + 8 * v107) = v103;
        v105 = *v60;
      }

      goto LABEL_184;
    }

LABEL_188:
    if (v119)
    {
      v108 = GEOGetVectorKitARWalkingSupportLog();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
      {
        v109 = *(v120 + 41);
        v110 = *(v120 + 29) + *(v120 + 34);
        *buf = 134218496;
        *&buf[4] = v109;
        *&buf[12] = 1024;
        *&buf[14] = v119;
        *&buf[18] = 2048;
        *&buf[20] = v110;
        _os_log_impl(&dword_1B2754000, v108, OS_LOG_TYPE_INFO, "FeatureSet(version:%llu) processed %d requests - awaiting %lu requests", buf, 0x1Cu);
      }

      v111 = *this;
      *(v111 + 3034) = 1;
      v112 = atomic_load((v111 + 3053));
      if (v112)
      {
        v113 = *(v111 + 136);
        if (v113)
        {
          v114 = *(v113 + 56);
          if (v114)
          {
            std::function<void ()(md::LabelManager const*,md::NeedsLayoutReason)>::operator()(v114, v111, 9);
          }
        }
      }
    }
  }
}

void sub_1B2C21744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (v40)
  {
    if (a29 < 0)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

void *geo::linear_map<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>,md::VKARWalkingFeatureEqualTo,std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>,std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>::operator[](void *a1, id *a2)
{
  j = *a1;
  for (i = a1[1]; j != i; i = a1[1])
  {
    if ([*a2 isEqual:*j])
    {
      if (j != a1[1])
      {
        return j + 1;
      }

      break;
    }

    j += 3;
  }

  v6 = *a2;
  for (j = *a1; ; j += 3)
  {
    v7 = a1[1];
    if (j == v7)
    {
      break;
    }

    if ([v6 isEqual:*j])
    {
      v7 = a1[1];
      if (j != v7)
      {
        goto LABEL_28;
      }

      break;
    }
  }

  v8 = a1[2];
  if (v7 >= v8)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>(v14);
    }

    v15 = (8 * ((v7 - *a1) >> 3));
    v16 = v6;
    v15[1] = 0;
    v15[2] = 0;
    *v15 = v16;
    v10 = 24 * v11 + 24;
    v17 = *a1;
    v18 = a1[1];
    v19 = v15 + *a1 - v18;
    if (*a1 != v18)
    {
      v20 = *a1;
      v21 = v19;
      do
      {
        v22 = *v20;
        *v20 = 0;
        *v21 = v22;
        *(v21 + 2) = *(v20 + 16);
        *(v20 + 8) = 0;
        *(v20 + 16) = 0;
        v20 += 24;
        v21 += 24;
      }

      while (v20 != v18);
      do
      {
        std::__destroy_at[abi:nn200100]<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>,0>(v17);
        v17 += 24;
      }

      while (v17 != v18);
    }

    v23 = *a1;
    *a1 = v19;
    *(a1 + 1) = v10;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v9 = v6;
    v7[1] = 0;
    v7[2] = 0;
    *v7 = v9;
    v10 = (v7 + 3);
    a1[1] = v10;
  }

  a1[1] = v10;
  j = (v10 - 24);
LABEL_28:

  return j + 1;
}

void md::ARWalkingSupport::addLabelFeature(void *a1, void *a2)
{
  v4 = (*(**a1 + 264))(*a1);
  if (v4 == 25)
  {
    v5 = *a1;
    v6 = a1[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = a2[19];
    v7 = a2[20];
    if (v8 >= v7)
    {
      v16 = a2[18];
      v17 = v8 - v16;
      v18 = (v8 - v16) >> 4;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = v7 - v16;
      if (v20 >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        v88 = v5;
        v22 = mdm::zone_mallocator::instance(v4);
        v23 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(v22, v21);
        v16 = a2[18];
        v17 = a2[19] - v16;
        v24 = v17 >> 4;
        v5 = v88;
      }

      else
      {
        v23 = 0;
        v24 = v18;
      }

      v46 = &v23[16 * v18];
      v47 = &v23[16 * v21];
      v48 = &v46[-16 * v24];
      *v46 = v5;
      v9 = v46 + 16;
      v49 = memcpy(v48, v16, v17);
      v50 = a2[18];
      a2[18] = v48;
      a2[19] = v9;
      a2[20] = v47;
      if (v50)
      {
        v51 = mdm::zone_mallocator::instance(v49);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(v51, v50);
      }
    }

    else
    {
      *v8 = v5;
      v9 = v8 + 16;
    }

    a2[19] = v9;
  }

  else
  {
    v10 = (*(**a1 + 264))(*a1);
    if (v10 == 24)
    {
      v11 = *a1;
      v12 = a1[1];
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v14 = a2[11];
      v13 = a2[12];
      if (v14 >= v13)
      {
        v31 = a2[10];
        v32 = v14 - v31;
        v33 = (v14 - v31) >> 4;
        v34 = v33 + 1;
        if ((v33 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v35 = v13 - v31;
        if (v35 >> 3 > v34)
        {
          v34 = v35 >> 3;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v36 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v34;
        }

        if (v36)
        {
          v89 = v11;
          v37 = mdm::zone_mallocator::instance(v10);
          v38 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(v37, v36);
          v31 = a2[10];
          v32 = a2[11] - v31;
          v39 = v32 >> 4;
          v11 = v89;
        }

        else
        {
          v38 = 0;
          v39 = v33;
        }

        v61 = &v38[16 * v33];
        v62 = &v38[16 * v36];
        v63 = &v61[-16 * v39];
        *v61 = v11;
        v15 = v61 + 16;
        v64 = memcpy(v63, v31, v32);
        v65 = a2[10];
        a2[10] = v63;
        a2[11] = v15;
        a2[12] = v62;
        if (v65)
        {
          v66 = mdm::zone_mallocator::instance(v64);
          geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(v66, v65);
        }
      }

      else
      {
        *v14 = v11;
        v15 = v14 + 16;
      }

      a2[11] = v15;
    }

    else
    {
      v25 = (*(**a1 + 264))(*a1);
      if (v25 == 26)
      {
        v26 = *a1;
        v27 = a1[1];
        if (v27)
        {
          atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
        }

        v29 = a2[15];
        v28 = a2[16];
        if (v29 >= v28)
        {
          v52 = a2[14];
          v53 = v29 - v52;
          v54 = (v29 - v52) >> 4;
          v55 = v54 + 1;
          if ((v54 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v56 = v28 - v52;
          if (v56 >> 3 > v55)
          {
            v55 = v56 >> 3;
          }

          if (v56 >= 0x7FFFFFFFFFFFFFF0)
          {
            v57 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            v90 = v26;
            v58 = mdm::zone_mallocator::instance(v25);
            v59 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(v58, v57);
            v52 = a2[14];
            v53 = a2[15] - v52;
            v60 = v53 >> 4;
            v26 = v90;
          }

          else
          {
            v59 = 0;
            v60 = v54;
          }

          v76 = &v59[16 * v54];
          v77 = &v59[16 * v57];
          v78 = &v76[-16 * v60];
          *v76 = v26;
          v30 = v76 + 16;
          v79 = memcpy(v78, v52, v53);
          v80 = a2[14];
          a2[14] = v78;
          a2[15] = v30;
          a2[16] = v77;
          if (v80)
          {
            v81 = mdm::zone_mallocator::instance(v79);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(v81, v80);
          }
        }

        else
        {
          *v29 = v26;
          v30 = v29 + 16;
        }

        a2[15] = v30;
      }

      else
      {
        v40 = (*(**a1 + 264))(*a1);
        if (v40 == 27)
        {
          v41 = *a1;
          v42 = a1[1];
          if (v42)
          {
            atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
          }

          v44 = a2[23];
          v43 = a2[24];
          if (v44 >= v43)
          {
            v67 = a2[22];
            v68 = v44 - v67;
            v69 = (v44 - v67) >> 4;
            v70 = v69 + 1;
            if ((v69 + 1) >> 60)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v71 = v43 - v67;
            if (v71 >> 3 > v70)
            {
              v70 = v71 >> 3;
            }

            if (v71 >= 0x7FFFFFFFFFFFFFF0)
            {
              v72 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v72 = v70;
            }

            if (v72)
            {
              v91 = v41;
              v73 = mdm::zone_mallocator::instance(v40);
              v74 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(v73, v72);
              v67 = a2[22];
              v68 = a2[23] - v67;
              v75 = v68 >> 4;
              v41 = v91;
            }

            else
            {
              v74 = 0;
              v75 = v69;
            }

            v82 = &v74[16 * v69];
            v83 = &v74[16 * v72];
            v84 = &v82[-16 * v75];
            *v82 = v41;
            v45 = v82 + 16;
            v85 = memcpy(v84, v67, v68);
            v86 = a2[22];
            a2[22] = v84;
            a2[23] = v45;
            a2[24] = v83;
            if (v86)
            {
              v87 = mdm::zone_mallocator::instance(v85);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(v87, v86);
            }
          }

          else
          {
            *v44 = v41;
            v45 = v44 + 16;
          }

          a2[23] = v45;
        }
      }
    }
  }
}

void sub_1B2C21E74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<md::ARWalkingContinueLabelFeature>,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingContinueLabelFeature> const,std::unordered_map<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *md::LabelIdentifier::to_string(std::string *retstr, unsigned int a2)
{
  if (a2)
  {
    return std::to_string(retstr, a2);
  }

  else
  {
    return std::string::basic_string[abi:nn200100]<0>(retstr, "UNKNOWN");
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingArrivalLabelFeature>>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingContinueLabelFeature>>(uint64_t a1, uint64_t a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>>(uint64_t a1, uint64_t a2)
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t gdc::Context::context<md::ARLogicContext>(void *a1)
{
  v1 = a1[1];
  if (!*&v1)
  {
    return 0;
  }

  v2 = vcnt_s8(v1);
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = 0x37F8C546A65FE3EELL;
    if (*&v1 <= 0x37F8C546A65FE3EEuLL)
    {
      v3 = 0x37F8C546A65FE3EEuLL % *&v1;
    }
  }

  else
  {
    v3 = (*&v1 - 1) & 0x37F8C546A65FE3EELL;
  }

  v4 = *(*a1 + 8 * v3);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == 0x37F8C546A65FE3EELL)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= *&v1)
      {
        v6 %= *&v1;
      }
    }

    else
    {
      v6 &= *&v1 - 1;
    }

    if (v6 != v3)
    {
      return 0;
    }

LABEL_16:
    result = 0;
    v5 = *v5;
    if (!v5)
    {
      return result;
    }
  }

  if (v5[2] != 0x37F8C546A65FE3EELL)
  {
    goto LABEL_16;
  }

  v8 = v5[5];
  if (*(v8 + 8) == 0x37F8C546A65FE3EELL)
  {
    return *(v8 + 32);
  }

  return 0;
}

void md::ARWalkingSupport::processSetFeatureRequest(double *a1, uint64_t a2)
{
  v210[9] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 112);
  v4 = *(*(*a1 + 424) + 336);
  v168 = &unk_1F2A3ED40;
  v169 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v178 = 0;
  v180 = 0;
  v179 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v186 = 0;
  v188 = 0;
  v187 = 0;
  *__n = 0u;
  v191 = 0u;
  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  v194 = 0u;
  v193 = 0u;
  v192 = 1065353216;
  v195 = 1065353216;
  v196 = 0;
  v197 = 0;
  v198 = 0;
  *&v199 = v3;
  *(&v199 + 1) = v4;
  v200 = atomic_fetch_add(&md::ARWalkingFeatureSet::nextVersion(void)::next, 1uLL) + 1;
  v145 = *(a2 + 24);
  v164[0] = md::LabelLayoutContext::geocentricEyePos(*(*a1 + 424));
  v164[1] = v5;
  v164[2] = v6;
  geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v168, *(a2 + 8));
  v7 = GEOGetVectorKitARWalkingSupportLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v200;
    v9 = *(&v199 + 1);
    v10 = *(a2 + 24);
    v11 = *(a2 + 8);
    v12 = [v11 features];
    v13 = [v12 count];
    v14 = *(a2 + 8);
    v15 = [v14 features];
    *buf = 134219010;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    *&buf[22] = 1024;
    *__p_8 = v10;
    *&__p_8[4] = 2048;
    *&__p_8[6] = v13;
    *&__p_8[14] = 2112;
    *&__p_8[16] = v15;
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Begin Preparing FeatureSet(version:%llu timestamp:%f) - force:%d features(%lu):%@", buf, 0x30u);
  }

  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = [v169 features];
  v149 = [obj countByEnumeratingWithState:&v159 objects:v167 count:16];
  if (v149)
  {
    v148 = *v160;
    v143 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v142 = 0x8400702uLL;
    do
    {
      for (i = 0; i != v149; ++i)
      {
        if (*v160 != v148)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v159 + 1) + 8 * i);
        v163 = v16;
        v158 = 0uLL;
        v17 = a1;
        for (j = *(a1 + 58); ; j += 3)
        {
          v19 = *(v17 + 59);
          if (j == v19)
          {
            j = *(v17 + 59);
            goto LABEL_14;
          }

          if ([v16 isEqual:{*j, v142}])
          {
            break;
          }

          v17 = a1;
        }

        v19 = *(a1 + 59);
LABEL_14:
        v20 = [v16 type];
        if (!v20)
        {
          v39 = v16;
          if (j == v19)
          {
            v154 = 0;
          }

          else
          {
            v40 = j[2];
            v154 = j[1];
            if (v40)
            {
              v153 = 0;
              atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
              goto LABEL_47;
            }
          }

          v40 = 0;
          v153 = 1;
LABEL_47:
          v151 = v40;
          v41 = v39;
          v157 = 0uLL;
          v156 = v41;
          if (v41)
          {
            objc_msgSend_coordinate(v41);
            v42 = *&v166;
            v43 = vmulq_f64(v165, v143);
          }

          else
          {
            v165 = 0uLL;
            v43 = 0uLL;
            v42 = 0.0;
            *&v166 = 0;
          }

          v147 = v43.f64[1];
          v44 = __sincos_stret(v43.f64[0]);
          v45 = 6378137.0 / sqrt(v44.__sinval * v44.__sinval * -0.00669437999 + 1.0);
          v46 = (v45 + v42) * v44.__cosval;
          v47 = __sincos_stret(v147);
          v210[0] = v46 * v47.__cosval;
          v210[1] = v46 * v47.__sinval;
          v210[2] = (v42 + v45 * 0.99330562) * v44.__sinval;
          v48 = gm::Matrix<double,3,1>::distanceToPoint<int,void>(v164, v210);
          v49 = v48;
          v50 = a1[2];
          if (v154)
          {
            v51 = *(v154 + 816);
            v52 = (v48 <= v50) & (v51 ^ 1);
          }

          else
          {
            v51 = 0;
            v52 = 0;
          }

          v53 = v145;
          if (!v154)
          {
            v53 = 1;
          }

          v54 = v53 | v52;
          v55 = *(a1 + 9) & (v53 | v52) & (v48 <= v50);
          v56 = GEOGetVectorKitARWalkingSupportLog();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v57 = *(a1 + 9);
            *buf = 134219776;
            *&buf[4] = v49;
            *&buf[12] = 1024;
            *&buf[14] = v57;
            *&buf[18] = 1024;
            *&buf[20] = v49 <= v50;
            *__p_8 = 1024;
            *&__p_8[2] = v51;
            *&__p_8[6] = 1024;
            *&__p_8[8] = v52;
            *&__p_8[12] = 1024;
            *&__p_8[14] = v54 & 1;
            *&__p_8[18] = 1024;
            *&__p_8[20] = v154 != 0;
            *&__p_8[24] = 1024;
            *&__p_8[26] = v55 & 1;
            _os_log_impl(&dword_1B2754000, v56, OS_LOG_TYPE_INFO, "Incoming Maneuver feature - distance:%f shouldUseHighPrecisionAltitude:%d featureWithinHighPrecisionThreshold:%d alreadyHasHighPrecisionAltitude:%d shouldRebuildExistingFeatureForUpdatedAltitude:%d shouldBuildNewFeature:%d hasExistingLabelFeature:%d shouldRequestHighPrecisionAltitude:%d", buf, 0x36u);
          }

          v58 = GEOGetVectorKitARWalkingSupportLog();
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_INFO);
          if (v54)
          {
            if (v59)
            {
              *buf = 138412290;
              *&buf[4] = v156;
              _os_log_impl(&dword_1B2754000, v58, OS_LOG_TYPE_INFO, "Building Maneuver LabelFeature for %@", buf, 0xCu);
            }

            operator new();
          }

          if (v59)
          {
            *buf = 138412290;
            *&buf[4] = v156;
            _os_log_impl(&dword_1B2754000, v58, OS_LOG_TYPE_INFO, "Reusing previous Maneuver LabelFeature for external feature %@", buf, 0xCu);
          }

          if (v151)
          {
            atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&v157 = v154;
          *(&v157 + 1) = v151;
          v60 = v156;
          v61 = v60;
          if (v156)
          {
            v62 = v60;
          }

          else
          {
            v62 = 0;
          }

          v63 = v62;
          v64 = *(v154 + 720);
          *(v154 + 720) = v61;

          if (v55)
          {
            v66 = *(a1 + 97);
            if (v156)
            {
              objc_msgSend_coordinate(v156);
              v67 = *buf;
            }

            else
            {
              memset(buf, 0, sizeof(buf));
              v67 = 0uLL;
            }

            v209 = v67;
            md::HighPrecisionAltitudeRequestor::requestAltitude(&v208, v66, &v209);
            v68 = v208;
            if (v208)
            {
              v69 = GEOGetVectorKitARWalkingSupportLog();
              if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v156;
                _os_log_impl(&dword_1B2754000, v69, OS_LOG_TYPE_INFO, "Requesting high precision altitude for Maneuver %@", buf, 0xCu);
              }

              *buf = &v157;
              v70 = std::__hash_table<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::__unordered_map_equal<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,std::hash<std::shared_ptr<md::ARWalkingManeuverLabelFeature>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__emplace_unique_key_args<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const&>,std::tuple<>>(&v193, v157, buf);
              if (*(&v68 + 1))
              {
                atomic_fetch_add_explicit((*(&v68 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v71 = v70[5];
              *(v70 + 2) = v68;
              if (v71)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v71);
              }
            }

            if (*(&v68 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v68 + 1));
            }
          }

          if ((v153 & 1) == 0)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v151);
          }

          v24 = *(&v157 + 1);
          v25 = v157;
          if (v157)
          {
            v72 = v154 == v157;
          }

          else
          {
            v72 = 1;
          }

          v73 = !v72;
          if (*(&v157 + 1))
          {
            atomic_fetch_add_explicit((*(&v157 + 1) + 8), 1uLL, memory_order_relaxed);
            *&v158 = v25;
            *(&v158 + 1) = v24;
            if (*(&v157 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v157 + 1));
            }
          }

          else
          {
            v158 = v157;
          }

          if ((v153 & 1) == 0)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v151);
          }

          if (v25)
          {
            if (v73)
            {
              v75 = v172;
              if (v172 >= *(&v172 + 1))
              {
                v77 = (v172 - *(&v171 + 1)) >> 3;
                if ((v77 + 1) >> 61)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v78 = (*(&v172 + 1) - *(&v171 + 1)) >> 2;
                if (v78 <= v77 + 1)
                {
                  v78 = v77 + 1;
                }

                if (*(&v172 + 1) - *(&v171 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
                {
                  v79 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v79 = v78;
                }

                *&__p_8[8] = &v173;
                if (v79)
                {
                  v80 = mdm::zone_mallocator::instance(v74);
                  v81 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelFeature *>(v80, v79);
                }

                else
                {
                  v81 = 0;
                }

                v83 = &v81[8 * v79];
                v82 = &v81[8 * v77];
                *v82 = v25;
                v76 = v82 + 8;
                v84 = &v82[-(v172 - *(&v171 + 1))];
                memcpy(v84, *(&v171 + 1), v172 - *(&v171 + 1));
                v85 = *(&v171 + 1);
                v86 = *(&v172 + 1);
                *(&v171 + 1) = v84;
                *&v172 = v76;
                *(&v172 + 1) = v83;
                *&buf[16] = v85;
                *__p_8 = v86;
                *&buf[8] = v85;
                *buf = v85;
                std::__split_buffer<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator> &>::~__split_buffer(buf);
              }

              else
              {
                *v172 = v25;
                v76 = (v75 + 8);
              }

              *&v172 = v76;
            }

LABEL_119:
            v87 = geo::linear_map<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>,md::VKARWalkingFeatureEqualTo,std::allocator<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>,std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>>::operator[](&v170, &v163);
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v88 = v87[1];
            *v87 = v25;
            v87[1] = v24;
            if (v88)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v88);
            }

            md::ARWalkingSupport::addLabelFeature(&v158, &v168);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v24);
          }

          continue;
        }

        if (v20 != 1)
        {
          if (v20 != 2)
          {
            continue;
          }

          v155 = v16;
          v21 = GEOGetVectorKitARWalkingSupportLog();
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
          if ((v145 & 1) != 0 || j == v19)
          {
            if (v22)
            {
              *buf = 138412290;
              *&buf[4] = v155;
              _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_INFO, "Building Continue LabelFeature for %@", buf, 0xCu);
            }

            operator new();
          }

          if (v22)
          {
            v23 = *j;
            *buf = 134218242;
            *&buf[4] = v23;
            *&buf[12] = 2112;
            *&buf[14] = v155;
            _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_INFO, "Reusing previous Continue LabelFeature for external feature (%p) %@", buf, 0x16u);
          }

          v25 = j[1];
          v24 = j[2];
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&v158 = v25;
          *(&v158 + 1) = v24;
          v26 = v155;
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = 0;
          }

          v29 = v28;
          v30 = *(v25 + 200);
          *(v25 + 200) = v27;
          goto LABEL_38;
        }

        v146 = v16;
        v31 = [v146 storeFronts];
        v32 = [v31 count] == 0;

        if (!v32)
        {
          v33 = GEOGetVectorKitARWalkingSupportLog();
          v34 = os_log_type_enabled(v33, OS_LOG_TYPE_INFO);
          if ((v145 & 1) != 0 || j == v19)
          {
            if (v34)
            {
              *buf = 138412290;
              *&buf[4] = v146;
              _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_INFO, "Building Arrival LabelFeature for %@", buf, 0xCu);
            }

            if (*(a1 + 10) == 1)
            {
              operator new();
            }

            operator new();
          }

          if (v34)
          {
            v35 = *j;
            *buf = 134218242;
            *&buf[4] = v35;
            *&buf[12] = 2112;
            *&buf[14] = v146;
            _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_INFO, "Reusing previous Arrival LabelFeature for external feature (%p) %@", buf, 0x16u);
          }

          v25 = j[1];
          v24 = j[2];
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&v158 = v25;
          *(&v158 + 1) = v24;
          v36 = v146;
          v27 = v36;
          if (v36)
          {
            v37 = v36;
          }

          else
          {
            v37 = 0;
          }

          v38 = v37;
          v30 = *(v25 + 744);
          *(v25 + 744) = v27;
LABEL_38:

          goto LABEL_119;
        }

        v65 = GEOGetVectorKitARWalkingSupportLog();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          *&buf[4] = v146;
          *&buf[12] = 2080;
          *&buf[14] = "false";
          *&buf[22] = 2080;
          *__p_8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/ARWalkingSupport.mm";
          *&__p_8[8] = 1024;
          *&__p_8[10] = 332;
          _os_log_impl(&dword_1B2754000, v65, OS_LOG_TYPE_ERROR, "Arrival features should have at least 1 storefront - dropping %@: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
        }
      }

      v149 = [obj countByEnumeratingWithState:&v159 objects:v167 count:16];
    }

    while (v149);
  }

  v89 = GEOGetVectorKitARWalkingSupportLog();
  if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
  {
    v90 = v200;
    v91 = v169;
    v92 = [v91 features];
    v93 = [v92 count];
    *buf = 134219776;
    *&buf[4] = v90;
    *&buf[12] = 2048;
    *&buf[14] = v93;
    *&buf[22] = 2048;
    *__p_8 = 0xAAAAAAAAAAAAAAABLL * ((*(&v170 + 1) - v170) >> 3);
    *&__p_8[8] = 2048;
    *&__p_8[10] = (v183 - v182) >> 4;
    *&__p_8[18] = 2048;
    *&__p_8[20] = (v175 - v174) >> 4;
    *&__p_8[28] = 2048;
    v203 = (v179 - v178) >> 4;
    v204 = 2048;
    v205 = *(&v194 + 1);
    v206 = 2048;
    v207 = *(&v191 + 1);
    _os_log_impl(&dword_1B2754000, v89, OS_LOG_TYPE_INFO, "Done preparing FeatureSet(version:%llu) external:%lu internal:%lu (arrival:%lu maneuver:%lu continue:%lu pendingManeuvers:%lu pendingContinues:%lu)", buf, 0x52u);
  }

  v94 = a1;
  if ((a1[54] & 1) == 0)
  {
    v97 = a1 + 12;
LABEL_138:
    *&v209 = &unk_1F2A3ED40;
    *(&v209 + 1) = 0;
    goto LABEL_139;
  }

  v95 = GEOGetVectorKitARWalkingSupportLog();
  if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
  {
    if ((a1[54] & 1) == 0)
    {
      goto LABEL_212;
    }

    v96 = *(a1 + 53);
    *buf = 134217984;
    *&buf[4] = v96;
    _os_log_impl(&dword_1B2754000, v95, OS_LOG_TYPE_INFO, "Dropped PendingFeatureSet(version:%llu)", buf, 0xCu);
  }

  v94 = a1;
  v97 = a1 + 12;
  if ((a1[54] & 1) == 0)
  {
    goto LABEL_138;
  }

  geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v209, (a1 + 12));
  if (a1[54])
  {
    md::ARWalkingFeatureSet::operator=(v97, &v168);
    goto LABEL_209;
  }

LABEL_139:
  geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v97, &v168);
  v94[15] = 0.0;
  v94[16] = 0.0;
  v94[17] = 0.0;
  if (*(&v170 + 1) != v170)
  {
    std::vector<std::pair<VKARWalkingFeature * {__strong},std::shared_ptr<md::LabelFeature>>>::__vallocate[abi:nn200100](v94 + 15, 0xAAAAAAAAAAAAAAABLL * ((*(&v170 + 1) - v170) >> 3));
  }

  v94[18] = 0.0;
  v94[19] = 0.0;
  v94[20] = 0.0;
  *(v94 + 168) = v173;
  v98 = *(&v171 + 1);
  v99 = v172 - *(&v171 + 1);
  if (v172 != *(&v171 + 1))
  {
    std::vector<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v94 + 18), v99 >> 3);
    v100 = *(v94 + 19);
    memmove(v100, v98, v99);
    *(v94 + 19) = &v100[v99];
  }

  v94[22] = 0.0;
  v94[23] = 0.0;
  v94[24] = 0.0;
  *(v94 + 200) = v177;
  v101 = v174;
  v102 = v175;
  if (v175 != v174)
  {
    std::vector<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingManeuverLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v94 + 22), (v175 - v174) >> 4);
    v103 = *(v94 + 23);
    do
    {
      *v103 = *v101;
      v104 = *(v101 + 1);
      v103[1] = v104;
      if (v104)
      {
        atomic_fetch_add_explicit((v104 + 8), 1uLL, memory_order_relaxed);
      }

      v101 += 16;
      v103 += 2;
    }

    while (v101 != v102);
    *(v94 + 23) = v103;
  }

  v94[26] = 0.0;
  v94[27] = 0.0;
  v94[28] = 0.0;
  *(v94 + 232) = v181;
  v105 = v178;
  v106 = v179;
  if (v179 != v178)
  {
    std::vector<std::shared_ptr<md::ARWalkingContinueLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingContinueLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v94 + 26), (v179 - v178) >> 4);
    v107 = *(v94 + 27);
    do
    {
      *v107 = *v105;
      v108 = *(v105 + 1);
      v107[1] = v108;
      if (v108)
      {
        atomic_fetch_add_explicit((v108 + 8), 1uLL, memory_order_relaxed);
      }

      v105 += 16;
      v107 += 2;
    }

    while (v105 != v106);
    *(v94 + 27) = v107;
  }

  v94[30] = 0.0;
  v94[31] = 0.0;
  v94[32] = 0.0;
  *(v94 + 264) = v185;
  v109 = v182;
  v110 = v183;
  if (v183 != v182)
  {
    std::vector<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingArrivalLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v94 + 30), (v183 - v182) >> 4);
    v111 = *(v94 + 31);
    do
    {
      *v111 = *v109;
      v112 = *(v109 + 1);
      v111[1] = v112;
      if (v112)
      {
        atomic_fetch_add_explicit((v112 + 8), 1uLL, memory_order_relaxed);
      }

      v109 += 16;
      v111 += 2;
    }

    while (v109 != v110);
    *(v94 + 31) = v111;
  }

  v94[34] = 0.0;
  v94[35] = 0.0;
  v94[36] = 0.0;
  *(v94 + 296) = v189;
  v113 = v186;
  v114 = v187;
  if (v187 != v186)
  {
    std::vector<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,geo::allocator_adapter<std::shared_ptr<md::ARWalkingStorefrontLabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v94 + 34), (v187 - v186) >> 4);
    v115 = *(v94 + 35);
    do
    {
      *v115 = *v113;
      v116 = v113[1];
      v115[1] = v116;
      if (v116)
      {
        atomic_fetch_add_explicit((v116 + 8), 1uLL, memory_order_relaxed);
      }

      v113 += 2;
      v115 += 2;
    }

    while (v113 != v114);
    *(v94 + 35) = v115;
  }

  v117 = v94 + 38;
  *(v94 + 19) = 0u;
  *(v94 + 20) = 0u;
  *(v94 + 84) = v192;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>((v94 + 38), __n[1]);
  v118 = v191;
  if (!v191)
  {
    goto LABEL_186;
  }

  do
  {
    v119 = v118[2];
    v120 = 0x9DDFEA08EB382D69 * ((8 * (v119 & 0x1FFFFFFF) + 8) ^ HIDWORD(v119));
    v121 = 0x9DDFEA08EB382D69 * (HIDWORD(v119) ^ (v120 >> 47) ^ v120);
    v122 = 0x9DDFEA08EB382D69 * (v121 ^ (v121 >> 47));
    v123 = v94[39];
    if (!*&v123)
    {
      goto LABEL_184;
    }

    v124 = vcnt_s8(v123);
    v124.i16[0] = vaddlv_u8(v124);
    if (v124.u32[0] > 1uLL)
    {
      v125 = 0x9DDFEA08EB382D69 * (v121 ^ (v121 >> 47));
      if (v122 >= *&v123)
      {
        v125 = v122 % *&v123;
      }
    }

    else
    {
      v125 = v122 & (*&v123 - 1);
    }

    v126 = *(*v117 + 8 * v125);
    if (!v126 || (v127 = *v126) == 0)
    {
LABEL_184:
      operator new();
    }

    while (1)
    {
      v128 = v127[1];
      if (v128 == v122)
      {
        break;
      }

      if (v124.u32[0] > 1uLL)
      {
        if (v128 >= *&v123)
        {
          v128 %= *&v123;
        }
      }

      else
      {
        v128 &= *&v123 - 1;
      }

      if (v128 != v125)
      {
        goto LABEL_184;
      }

LABEL_183:
      v127 = *v127;
      if (!v127)
      {
        goto LABEL_184;
      }
    }

    if (v127[2] != v119)
    {
      goto LABEL_183;
    }

    v118 = *v118;
    v94 = a1;
  }

  while (v118);
LABEL_186:
  v129 = v94 + 43;
  *(v94 + 43) = 0u;
  *(v94 + 45) = 0u;
  *(v94 + 94) = v195;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>((v94 + 43), *(&v193 + 1));
  v130 = v194;
  if (!v194)
  {
    goto LABEL_205;
  }

  while (2)
  {
    v131 = v130[2];
    v132 = 0x9DDFEA08EB382D69 * ((8 * (v131 & 0x1FFFFFFF) + 8) ^ HIDWORD(v131));
    v133 = 0x9DDFEA08EB382D69 * (HIDWORD(v131) ^ (v132 >> 47) ^ v132);
    v134 = 0x9DDFEA08EB382D69 * (v133 ^ (v133 >> 47));
    v135 = v94[44];
    if (!*&v135)
    {
      goto LABEL_203;
    }

    v136 = vcnt_s8(v135);
    v136.i16[0] = vaddlv_u8(v136);
    if (v136.u32[0] > 1uLL)
    {
      v137 = 0x9DDFEA08EB382D69 * (v133 ^ (v133 >> 47));
      if (v134 >= *&v135)
      {
        v137 = v134 % *&v135;
      }
    }

    else
    {
      v137 = v134 & (*&v135 - 1);
    }

    v138 = *(*v129 + 8 * v137);
    if (!v138 || (v139 = *v138) == 0)
    {
LABEL_203:
      operator new();
    }

    while (2)
    {
      v140 = v139[1];
      if (v140 != v134)
      {
        if (v136.u32[0] > 1uLL)
        {
          if (v140 >= *&v135)
          {
            v140 %= *&v135;
          }
        }

        else
        {
          v140 &= *&v135 - 1;
        }

        if (v140 != v137)
        {
          goto LABEL_203;
        }

        goto LABEL_202;
      }

      if (v139[2] != v131)
      {
LABEL_202:
        v139 = *v139;
        if (!v139)
        {
          goto LABEL_203;
        }

        continue;
      }

      break;
    }

    v130 = *v130;
    v94 = a1;
    if (v130)
    {
      continue;
    }

    break;
  }

LABEL_205:
  v94[48] = 0.0;
  v94[49] = 0.0;
  v94[50] = 0.0;
  v141 = v197 - v196;
  if (v197 != v196)
  {
    if (!((v141 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<VKARWalkingFeature * {__strong}>>(v141 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(v94 + 51) = v199;
  *(v94 + 53) = v200;
  *(v94 + 432) = 1;
LABEL_209:
  md::ARWalkingSupport::updateFeatureSetState(v94, *(&v209 + 1), 5);
  if ((v94[54] & 1) == 0)
  {
LABEL_212:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  md::ARWalkingSupport::updateFeatureSetState(v94, *(v94 + 13), 2);
  *&v209 = &unk_1F2A3ED40;

  md::ARWalkingFeatureSet::~ARWalkingFeatureSet(&v168);
}